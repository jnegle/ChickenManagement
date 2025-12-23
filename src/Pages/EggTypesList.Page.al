page 50103 "Egg Types"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = EggType;
    Editable = true;
    Caption = 'Egg Types';


    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Egg Type"; Rec."Egg Type")
                {
                    ToolTip = 'Type of the egg';
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Description.';
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Creation)
        {
            action(InsertDefaultEggTypes)
            {
                Caption = 'Insert Default Egg Types';
                ApplicationArea = All;
                ToolTip = 'Use this to create default egg type set';
                Image = Create;

                trigger OnAction()
                var
                    EggType: Record EggType;
                    EggTypeNotEmptyErr: Label 'There are already Egg Types in table';
                    EggTypeDescription: Dictionary of [Code[20], Text[100]];
                    DictKey: Code[20];
                begin
                    Clear(EggTypeDescription);
                    Clear(EggType);
                    EggTypeDescription.Add('Big', 'For Two Persons');
                    EggTypeDescription.Add('Middle', 'Normal Size');
                    EggTypeDescription.Add('Small', '<2cm');

                    if not EggType.IsEmpty() then
                        Error(EggTypeNotEmptyErr);

                    foreach DictKey in EggTypeDescription.Keys() do
                        EggType.InsertEggType(DictKey, EggTypeDescription.Get(DictKey));

                end;

            }

            action(DeletAll)
            {
                Caption = 'Delete All from Egg Types';
                ApplicationArea = All;
                Image = Delete;

                trigger OnAction()
                var
                    EggType: Record EggType;
                begin
                    if Confirm('Are you sure you want to delete all?') then
                        EggType.DeleteAll();
                end;

            }

        }
    }


}