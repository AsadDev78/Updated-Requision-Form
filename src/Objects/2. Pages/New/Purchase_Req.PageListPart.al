page 50104 "Lines"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Purchase Line";
    //AutoSplitKey = true;

    layout
    {
        area(Content)
        {
            repeater(Lines)
            {
                Caption = 'Lines';

                // field(ID; ID)
                // {
                //     ApplicationArea = All;
                // }

                field("Item Type"; Rec.Type)
                {
                    ApplicationArea = All;
                }

                field("Item No."; "No.")
                {
                    ApplicationArea = All;
                    TableRelation = "Purchase Line";

                    // trigger OnValidate()
                    // var
                    //     emplyRec: Record Employee;

                    // begin
                    //     if emplyRec.Get("First Name") then
                    //         "Job Title" := emplyRec."Job Title"
                    //     // OnAfterValidateBuyFromVendorNo(Rec, xRec);
                    //     // CurrPage.Update();
                    // end;

                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                }
                field(Location; Rec."Location Code")
                {
                    ApplicationArea = All;
                }
                field(UOM; Rec."Unit of Measure Code")
                {
                    ApplicationArea = All;
                }

                // field("Department Code"; Rec.code)
                // {
                //     ApplicationArea = All;
                // }
                // field("Vendor Name"; "Vendor Name")
                // {
                //     ApplicationArea = All;
                // }
                field("Vendor No."; Rec."Buy-from Vendor No.")
                {
                    ApplicationArea = All;
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                }

            }
        }
    }
    trigger OnAfterGetCurrRecord()
    var
        myInt: Integer;
    begin

    end;
}