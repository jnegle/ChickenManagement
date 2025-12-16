page 50107 Staff
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Staff;
    Editable = false;
    Caption = 'Staff List';
    CardPageId = "Staff Card";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                Caption = 'General';
                field("Staff No."; Rec."No.")
                {
                    ToolTip = 'Staff Number';
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