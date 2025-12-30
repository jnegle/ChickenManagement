permissionset 50100 ChickenManagement
{
    Assignable = true;
    Caption = 'ChickenManagement', MaxLength = 30;
    Permissions =
        table "Egg Production Header" = X,
        tabledata "Egg Production Header" = RMID,
        table "Egg Production Line" = X,
        tabledata "Egg Production Line" = RMID,
        table Staff = X,
        tabledata Staff = RMID,
        table StaffType = X,
        tabledata StaffType = RMID,
        table EggType = X,
        tabledata EggType = RMID,
        table Chicken = X,
        tabledata Chicken = RMID,
        table ChickenType = X,
        tabledata ChickenType = RMID,
        page "Chicken Card" = X,
        page "Chicken Management Rolecenter" = X,
        page "Chicken Types" = X,
        page "Egg Production Document" = X,
        page "Egg Production Line" = X,
        page "Egg Production List" = X,
        page "Egg Production ListPart" = X,
        page "Staff Card" = X,
        page Staff = X,
        page "Egg Types" = X,
        page Chicken = X,
        codeunit InstallChickenTypes = X;
}
