page 50110 "Chicken Management Rolecenter"
{
    PageType = RoleCenter;
    ApplicationArea = All;
    UsageCategory = Administration;


    layout
    {
        area(RoleCenter)
        {
            group(GroupName)
            {
                part(HeadlineOrderProcessor; "Headline RC Order Processor")
                {
                    ApplicationArea = All;
                }
                part(OverdueCustomers; "Overdue Customers")
                {
                    ApplicationArea = All;
                }

                part(O365Activities; "O365 Activities")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Sections)
        {
            group(MasterData)
            {
                Caption = 'Master Data';
                Image = RegisteredDocs;
                action(ChickenList)
                {
                    Caption = 'Chickens';
                    ApplicationArea = All;
                    RunObject = page "Chicken";
                }

                action(ChickenTypes)
                {
                    Caption = 'Chicken Types';
                    ApplicationArea = All;
                    RunObject = page "Chicken Types";
                }
            }
            group(Documents)
            {
                action(EggProduction)
                {
                    Caption = 'Egg Production';
                    ApplicationArea = All;
                    RunObject = page "Egg Production List";
                }
                action(EggTypes)
                {
                    Caption = 'Egg Types';
                    ApplicationArea = All;
                    RunObject = page "Egg Types";
                }
            }
        }

        area(Embedding)
        {
            action(eChickenList)
            {
                Caption = 'Chickens';
                ApplicationArea = All;
                RunObject = page "Chicken";
            }
            action(eChickenTypes)
            {
                Caption = 'Chicken Types';
                ApplicationArea = All;
                RunObject = page "Chicken Types";
            }
            action(eEggProduction)
            {
                Caption = 'Egg Production';
                ApplicationArea = All;
                RunObject = page "Egg Production Document";
            }
            action(eEggTypes)
            {
                Caption = 'Egg Types';
                ApplicationArea = All;
                RunObject = page "Egg Types";
            }
        }
    }

    // var
    //     myInt: Integer;
}