page 50104 "Egg Production List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Egg Production Header";
    CardPageId = "Egg Production Document";
    Caption = 'Egg Production';

    layout
    {
        area(Content)
        {
            repeater("Egg Production Headers")
            {
                Caption = 'Egg Production';

                field(Name; Rec."No.")
                {
                    Tooltip = 'No.';
                    ApplicationArea = All;
                }

                field("Gathered By"; Rec."Gathered By")
                {
                    ToolTip = 'Staff member who gathered the eggs.';
                    ApplicationArea = All;
                }

                field("Gatherer Name"; Rec."Gatherer Name")
                {
                    ToolTip = 'Name of Staff member who gathered the eggs.';
                    ApplicationArea = All;
                }

                field("Gathering Date"; Rec."Gathering Date")
                {
                    ToolTip = 'Date when the eggs were gathered.';
                    ApplicationArea = All;
                }

                field("Document Date"; Rec."Document Date")
                {
                    ToolTip = 'Date when egg production document was created.';
                    ApplicationArea = All;
                }
            }
        }
    }


}