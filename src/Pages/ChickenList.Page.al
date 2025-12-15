page 50101 Chicken
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Chicken;
    Caption = 'Chicken List';
    Editable = false;
    CardPageId = "Chicken Card";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                Caption = 'General';
                field("No."; Rec.No)
                {
                    Tooltip = 'Chicken number.';
                    ApplicationArea = All;
                }
                // field(Name; Rec.Name)
                // {
                //     ToolTip = 'Enter the name of the chicken.';
                //     ApplicationArea = All;
                // }

                // field(DoB; Rec.DoB)
                // {
                //     ToolTip = 'Enter the date of birth of the chicken.';
                //     ApplicationArea = All;

                // }
                field(Breed; Rec.Breed)
                {
                    ToolTip = 'Select the breed of the chicken.';
                    ApplicationArea = All;

                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Chicken description.';
                    ApplicationArea = All;
                }

                // field(Picture; Rec.Picture)
                // {
                //     Tooltip = 'Picture of the chicken.';
                //     ApplicationArea = All;
                // }

                field(Blocked; Rec.Blocked)
                {
                    Tooltip = 'Specifies whether the chicken is blocked.';
                    ApplicationArea = All;

                }

                field("Last Date Modified"; Rec."Last Date Modified")
                {
                    ToolTip = 'Displays the last date when the chicken record was modified.';
                    ApplicationArea = All;
                    Editable = false;

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