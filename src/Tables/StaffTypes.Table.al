table 50105 StaffType
{
    DataClassification = CustomerContent;
    Caption = 'Staff Type';
    DataCaptionFields = "Staff Type", "Description";

    fields
    {
        field(1; "Staff Type"; Code[100])
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
        key(Key1; "Staff Type")
        {
            Clustered = true;
        }
    }
}
