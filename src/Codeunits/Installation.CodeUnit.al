codeunit 50112 InstallChickenTypes
{
    Subtype = Install;
    trigger OnInstallAppPerCompany()
    begin
        InsertDefaultChickenTypes();
    end;

    local procedure InsertDefaultChickenTypes()
    var
        ChickenType: Record ChickenType;
    begin
        if not ChickenType.IsEmpty() then
            exit
        else begin
            InsertChickenType('ChickenType01', 'Chicken Type 01');
            InsertChickenType('ChickenType02', 'Chicken Type 02');
            InsertChickenType('ChickenType03', 'Chicken Type 03');
        end;
    end;

    local procedure InsertChickenType(ChickenTypeCode: Code[20]; ChickenTypeDescription: Text[100])
    var
        ChickenType: Record ChickenType;
    begin
        Clear(ChickenType);
        ChickenType.Breed := ChickenTypeCode;
        ChickenType.Description := ChickenTypeDescription;
        ChickenType.Insert();
    end;
}