table 50104 Staff
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(2; Name; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(3; Position; Code[100])
        {
            DataClassification = ToBeClassified;
            TableRelation = StaffType;
        }

        field(4; HireDate; Date)
        {
            DataClassification = ToBeClassified;
        }

        field(5; Salary; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(6; Active; Boolean)
        {
            DataClassification = ToBeClassified;
        }

        field(7; "Eggs Gathered"; Integer)
        {
            DataClassification = ToBeClassified;
            // FieldClass = FlowField;
            // CalcFormula = Sum("Egg Production Header"."Total Eggs" where("Gathered By" = field("No.")));
        }

        field(8; "Gathering Period"; Date)
        {
            FieldClass = FlowFilter;
        }

    }

    keys
    {
        key(Key1; "No.")
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