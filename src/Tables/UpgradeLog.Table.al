table 50127 "Chicken Type Upgrade Log"
{
    DataClassification = CustomerContent;
    Caption = 'Trigger Log';
    DataCaptionFields = "Entry No.", "Chicken Old Type", "Chicken New Type", "Time Stamp";
    // LookupPageId = TriggerLogList;
    // DrillDownPageId = TriggerLogList;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            DataClassification = CustomerContent;
        }
        field(2; "Chicken Old Type"; Text[100])
        {
            Caption = 'Object Name';
            DataClassification = CustomerContent;
        }

        field(3; "Chicken New Type"; Text[100])
        {
            Caption = 'Trigger Name';
            DataClassification = CustomerContent;
        }


        field(4; "Time Stamp"; DateTime)
        {
            Caption = 'Timestamp';
            DataClassification = CustomerContent;
        }

    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    procedure InsertLogEntry(OldChickenTypeCode: Text; ChickenTypeCode: Text)
    var
        EntryNo: Integer;
    begin
        //AutoIncrement EntryNumber
        if this.FindLast() then
            EntryNo := this."Entry No." + 1
        else
            EntryNo := 0;

        //Message('Entry no %1', this."Entry No.");
        //Message(ObjectName, TriggerName);

        this.Init();
        this."Entry No." := EntryNo;
        this."Chicken Old Type" := OldChickenTypeCode; //CopyStr(ObjectName, 0, 100);
        this."Chicken New Type" := ChickenTypeCode; //CopyStr(TriggerName, 0, 100);
        this."Time Stamp" := CurrentDateTime;
        this.Insert();
    end;

    procedure ClearLogEntries()
    begin
        if this.Count() > 0 then
            if Confirm('Are you sure you want to delete?') then
                this.DeleteAll();
    end;

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