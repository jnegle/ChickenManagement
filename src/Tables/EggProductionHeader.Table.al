table 50103 "Egg Production Header"
{
    DataClassification = CustomerContent;
    LookupPageId = "Egg Production List";
    DrillDownPageId = "Egg Production List";
    Caption = 'Egg Production Header';
    DataCaptionFields = "No.", "Gathered By", "Gatherer Name", "Gathering Date";

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;

        }

        field(2; "Gathered By"; Code[20])
        {
            Caption = 'Gathered By';
            DataClassification = CustomerContent;
            TableRelation = Staff;

            // trigger OnValidate()
            // begin
            //     CalcFields("Gatherer Name");
            // end;

        }
        field(3; "Gatherer Name"; Text[100])
        {
            Caption = 'Gatherer Name';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = Lookup(Staff.Name where("No." = field("Gathered By")));
        }

        field(4; "Gathering Date"; Date)
        {
            Caption = 'Gathering Date';
            DataClassification = CustomerContent;

        }

        field(5; "Document Date"; Date)
        {
            Caption = 'Document Date';
            DataClassification = CustomerContent;
        }

    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }



}