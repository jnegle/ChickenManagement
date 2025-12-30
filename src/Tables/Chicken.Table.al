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

            trigger OnValidate()
            begin
                CalcFields(Description);
            end;
        }

        field(5; Description; Text[255])
        {
            Caption = 'Chicken Breed Description';
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

        field(9; "Number of Eggs Produced"; Integer)
        {
            Caption = 'Number of Eggs Produced';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = sum("Egg Production Line".Quantity where(Chicken = field(No),
                                "Egg Production Date" = field("Date Filter"),
                                "Egg Type" = field("Egg Type Filter")));
        }

        field(10; "Date Filter"; Date)
        {
            Caption = 'My Date Filter';
            FieldClass = FlowFilter;
        }

        field(11; "Egg Type Filter"; Code[20])
        {
            Caption = 'Egg Type Filter';
            FieldClass = FlowFilter;
            TableRelation = EggType;
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
        fieldgroup(DropDown; No, Name, Description, Breed) { }
        fieldgroup(Brick; Description, Picture) { }
    }

    var
    //TriggerLog: Record TriggerLog;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    var
        EggProductionLine: Record "Egg Production Line";
        ChickenHasEggsErr: Label 'The Chicken %1 %2 has eggs, you can''t delete it.', Comment = '%1 = Chicken No. ; %2 = Chicken Description';
        LoopNr: Integer;
    begin
        Clear(EggProductionLine);
        EggProductionLine.SetRange(EggProductionLine.Chicken, Rec.No);
        //Message('Trying to delete %1', Rec.No);
        //TriggerLog.InsertLogEntry('Chicken Table', 'OnDelete ' + Rec.No);
        if not EggProductionLine.IsEmpty() then begin
            Rec.CalcFields(Rec.Description);
            Error(ChickenHasEggsErr, Rec.No, Rec.Description);
        end;




    end;

    trigger OnRename()
    begin

    end;

}