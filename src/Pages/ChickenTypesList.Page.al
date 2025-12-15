page 50102 "Chicken Types"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = ChickenType;
    Editable = true;
    Caption = 'Chicken Types';

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                Caption = 'General';
                field(Breed; Rec.Breed)
                {
                    ToolTip = 'Breed of the chicken';
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Type description.';
                    ApplicationArea = All;
                }
            }
        }
    }

}