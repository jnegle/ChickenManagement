table 50101 ChickenType
{
    DataClassification = CustomerContent;
    DataCaptionFields = "Breed", "Description";
    LookupPageId = "Chicken Types";

    fields
    {
        field(1; Breed; Code[50])
        {
            DataClassification = CustomerContent;
            Caption = 'Breed';

        }

        field(2; Description; Text[255])
        {
            DataClassification = CustomerContent;
            Caption = 'Description';
        }
    }

    keys
    {
        key(Key1; Breed)
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