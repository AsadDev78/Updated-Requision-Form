page 50121 Purchase_Req_Input
{
    CardPageID = "PurcahseCard";
    Editable = false;
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = purchase_Req;

    layout
    {
        area(Content)
        {
            repeater(control1)
            {
                field("Raised by"; Rec."Raised by")
                {
                    ApplicationArea = All;

                }
                field(Reason; Rec.Reason)
                {
                    ApplicationArea = All;

                }
                field("Document Date"; Rec."Document Date")
                {
                    ApplicationArea = All;

                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;

                }
                // field("PR No"; Rec."PR No")
                // {
                //     ApplicationArea = All;

                // }
                field("Convert to Order"; Rec."Convert to Order")
                {
                    ApplicationArea = All;

                }
                field("Due Date"; Rec."Due Date")
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}