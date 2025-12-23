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

    procedure InsertEggType(EggTypeCode: Code[20]; EggTypeDescription: Text[50])
    var
        EggType: Record EggType;
    begin
        clear(EggType);
        EggType.Init();
        EggType."Egg Type" := EggTypeCode;
        EggType.Description := EggTypeDescription;
        if not EggType.Get(EggTypeCode) then
            EggType.Insert();
    end;



}