page 50127 ChickenTypeUpgradeList
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Chicken Type Upgrade Log";
    Editable = false;
    Caption = 'Upgraded Chicken Types Log';

    layout
    {
        area(Content)
        {
            repeater(Log)
            {
                field("EntryNo"; Rec."Entry No.")
                {
                    ApplicationArea = All;
                    Caption = 'Entry Number';
                }

                field("Chicken Old Type"; Rec."Chicken Old Type")
                {
                    ApplicationArea = All;
                    Caption = 'Chicken Old Type';
                }

                field("Chicken New Type"; Rec."Chicken New Type")
                {
                    ApplicationArea = All;
                    Caption = 'Chicken New Type';
                }
                field("Timestamp"; Rec."Time Stamp")
                {
                    ApplicationArea = All;
                    Caption = 'Timestamp';
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