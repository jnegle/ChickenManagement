page 50106 "Egg Production Document"
{
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = "Egg Production Header";

    layout
    {
        area(Content)
        {
            group("Egg Production Header")
            {
                Caption = 'Egg Production Header';
                field(Name; Rec."No.")
                {
                    Tooltip = 'No.';
                    ApplicationArea = All;
                }
                field("Gathered By"; Rec."Gathered By")
                {
                    ToolTip = 'Staff member code.';
                    ApplicationArea = All;
                }
                field("Gatherer Name"; Rec."Gatherer Name")
                {
                    ToolTip = 'Staff member name.';
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

            //group("Egg Lines")
            //{
            part("Egg Production Lines"; "Egg Production ListPart")
            {
                Caption = 'Egg Production Lines';
                SubPageLink = "Document No." = field("No.");
            }
            //}

        }
    }

}