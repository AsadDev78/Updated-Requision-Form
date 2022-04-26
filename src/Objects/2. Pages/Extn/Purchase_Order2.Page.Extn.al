pageextension 50104 MyExtension2 extends "Purchase Order Subform"
{
    layout
    {
        addafter("Invoice Disc. Pct.")
        {
            field("Balance LCY"; Balance)
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        Balance: Integer;
}