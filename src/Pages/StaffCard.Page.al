page 50108 "Staff Card"
{
    PageType = Card;
    ApplicationArea = All;
    SourceTable = Staff;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("No."; Rec."No.")
                {
                    ToolTip = 'No.';
                    ApplicationArea = All;

                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Name of the staff member.';
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