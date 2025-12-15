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


}