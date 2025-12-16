page 50105 "Egg Production ListPart"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Egg Production Line";
    AutoSplitKey = true;
    DelayedInsert = true;
    Caption = 'Egg Production ListPart';


    layout
    {
        area(Content)
        {
            repeater("Egg Production Lines")
            {
                Caption = 'Egg Production Lines';
                field(Chicken; Rec.Chicken)
                {
                    ToolTip = 'Chicken No.';
                    ApplicationArea = All;
                }

                field("Chicken Description"; Rec."Chicken Description")
                {
                    ToolTip = 'Chicken Description.';
                    ApplicationArea = All;
                }
                field("Egg Production Date"; Rec."Egg Production Date")
                {
                    ToolTip = 'Egg Production Date.';
                    ApplicationArea = All;
                }
                field("Egg Type"; Rec."Egg Type")
                {
                    ToolTip = 'Egg Type.';
                    ApplicationArea = All;
                }
                field("Egg Type Description"; Rec."Egg Type Description")
                {
                    ToolTip = 'Egg Type Description.';
                    ApplicationArea = All;
                }

                field("Quantity"; Rec."Quantity")
                {
                    ToolTip = 'Quantity of eggs produced.';
                    ApplicationArea = All;
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}