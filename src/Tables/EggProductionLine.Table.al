table 50106 "Egg Production Line"
{
    DataClassification = CustomerContent;
    Caption = 'Egg Production Line';
    DataCaptionFields = "Document No.", "Line No.";
    DrillDownPageId = "Egg Production Line";

    fields
    {
        field(1; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            DataClassification = CustomerContent;

        }

        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = CustomerContent;

        }

        field(3; "Quantity"; Integer)
        {
            Caption = 'Quantity';
            DataClassification = CustomerContent;

        }
        field(4; Chicken; Code[20])
        {
            Caption = 'Chicken';
            DataClassification = CustomerContent;
            TableRelation = Chicken;
            trigger OnValidate()
            begin
                CalcFields("Chicken Breed");
                CalcFields("Chicken Description");
            end;

        }
        field(5; "Chicken Breed"; Code[50])
        {
            Caption = 'Chicken Description';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup(Chicken.Breed where(No = field(Chicken)));
        }


        field(6; "Chicken Description"; Text[255])
        {
            Caption = 'Chicken Description';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup(ChickenType.Description where(Breed = field("Chicken Breed")));
        }

        field(7; "Egg Production Date"; Date)
        {
            Caption = 'Egg Production Date';
            DataClassification = CustomerContent;

        }
        field(8; "Egg Type"; Code[20])
        {
            Caption = 'Egg Type';
            DataClassification = CustomerContent;
            TableRelation = EggType;
            trigger OnValidate()
            begin
                CalcFields("Egg Type Description");
            end;

        }

        field(9; "Egg Type Description"; Text[100])
        {
            Caption = 'Egg Type Description';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup(EggType.Description where("Egg Type" = field("Egg Type")));
        }

    }
    keys
    {
        key(Key1; "Document No.", "Line No.")
        {
            Clustered = true;
        }
    }

}