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



                field("Item Type"; Rec.Type)
                {
                    ApplicationArea = All;
                    // TableRelation = "Purchase Line" WHERE(Type = Filter(> 0));
                    trigger onLookup(var Text: Text): Boolean
                    var
                        ItType: Record "Purchase Line";
                    begin
                        ItType.Reset();
                        if Page.RunModal(Page::"Purchase Lines", ItType) = Action::LookupOK then
                            Rec.Type := ItType.Type;

                    end;


                }

                field("Item No."; Rec."No.")
                {
                    ApplicationArea = All;
                    TableRelation = "Purchase Line";
                    trigger onLookup(var Text: Text): Boolean
                    var
                        ItType: Record "Purchase Line";
                        venRec: Record "Vendor";
                        ItmRec: Record "Item";
                    begin
                        ItType.Reset();
                        if Page.RunModal(Page::"Purchase Lines", ItType) = Action::LookupOK then
                            Rec."No." := ItType."No.";
                        Rec."Unit of Measure Code" := ItType."Unit of Measure Code";
                        Rec.Description := ItType.Description;
                        Rec."Buy-from Vendor No." := ItType."Buy-from Vendor No.";
                        // if venRec.Get(Rec."Buy-from Vendor No.") then
                        //     Rec."Vendor Name" := venRec.Name;
                        if ItmRec.Get(Rec."No.") then
                            Rec."Unit Cost" := ItmRec."Unit Cost";


                    end;



                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    TableRelation = "Purchase Line";

                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                    trigger onValidate()
                    begin
                        Rec.Amount := Rec."Unit Cost" * Rec.Quantity;
                    end;
                }
                field(Location; Rec."Location Code")
                {
                    ApplicationArea = All;
                    TableRelation = Location;
                    // trigger OnValidate()
                    // var
                    //     LocRec: Record "Location";
                    // begin
                    //     if LocRec.Get("Location Code") then
                    //         "Location Code" := LocRec.Code


                    // end;

                }
                field(UOM; Rec."Unit of Measure Code")
                {
                    ApplicationArea = All;
                }

                field("Vendor No."; Rec."Buy-from Vendor No.")
                {
                    ApplicationArea = All;
                }

                field("Unit Price"; Rec."Unit Cost")
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