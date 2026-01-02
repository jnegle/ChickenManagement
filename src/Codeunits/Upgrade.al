codeunit 50125 UpgradeChickenTypes
{
    Subtype = Upgrade;

    trigger OnCheckPreconditionsPerCompany()
    begin

        if NavApp.GetCurrentModuleInfo(myAppInfo) then begin
            if myAppInfo.DataVersion.Major <> 1 then
                error('Major version is not 1');
        end;
    end;

    trigger OnUpgradePerCompany()
    begin
        //NavApp.GetCurrentModuleInfo(myAppInfo);
        //Message('App major version nr: %1', myAppInfo.DataVersion.Major.ToText());
        ChangeChickenType('ChickenType01', 'Type 01', 'Chicken Type 01');
        ChangeChickenType('ChickenType02', 'Type 02', 'Chicken Type 02');
        ChangeChickenType('ChickenType03', 'Type 03', 'Chicken Type 03');
    end;

    local procedure ChangeChickenType(OldChickenTypeCode: Code[20]; ChickenTypeCode: Code[20]; ChickenTypeDescription: Text[100])
    begin
        Clear(ChickenType);
        if ChickenType.Get(OldChickenTypeCode) then begin
            ChickenType.Rename(ChickenTypeCode);
            ChickenType.Description := ChickenTypeDescription;
            if ChickenType.Modify() then begin
                ChickenTypeUpgradeLog.InsertLogEntry(OldChickenTypeCode, ChickenTypeCode);
            end
            else
                ChickenTypeUpgradeLog.InsertLogEntry(OldChickenTypeCode, ChickenTypeCode + ' Failed');
        end
    end;

    var
        myAppInfo: ModuleInfo;
        ChickenType: Record ChickenType;
        ChickenTypeUpgradeLog: Record "Chicken Type Upgrade Log";
}