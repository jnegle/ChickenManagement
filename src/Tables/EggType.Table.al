table 50102 EggType
{
    DataClassification = CustomerContent;
    Caption = 'Egg Type';
    LookupPageId = "Egg Types";
    DrillDownPageId = "Egg Types";
    DataCaptionFields = "Egg Type", "Description";

    fields
    {
        field(1; "Egg Type"; Code[20])
        {
            DataClassification = CustomerContent;

        }

        field(2; Description; Text[100])
        {
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(Key1; "Egg Type")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}