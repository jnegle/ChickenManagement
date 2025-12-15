table 50100 Chicken
{
    DataClassification = CustomerContent;
    Caption = 'Chicken';
    DataCaptionFields = "No", "Name", "Breed";

    fields
    {
        field(1; No; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'No';
        }
        field(2; Name; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Name';
        }

        field(3; DoB; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Date of Birthday';
        }

        field(4; Breed; Code[50])
        {
            DataClassification = CustomerContent;
            TableRelation = ChickenType;
            Caption = 'Breed';
        }

        field(5; Description; Text[255])
        {
            //DataClassification = CustomerContent;
            //TableRelation = ChickenType.Description;
            Caption = 'Description';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup(ChickenType.Description where(Breed = field(Breed)));
        }

        field(6; Picture; MediaSet)
        {
            DataClassification = CustomerContent;
            Caption = 'Picture';
        }

        field(7; Blocked; Boolean)
        {
            DataClassification = CustomerContent;
            Caption = 'Blocked';
        }

        field(8; "Last Date Modified"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Last Date Modified';
        }


    }

    keys
    {
        key(Key1; No)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; Description, Breed) { }
        fieldgroup(Brick; Description, Picture) { }
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