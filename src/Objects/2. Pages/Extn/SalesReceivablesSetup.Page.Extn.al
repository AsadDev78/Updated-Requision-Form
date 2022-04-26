pageextension 50125 SalesReceivablesSetupPageExt extends "Sales & Receivables Setup"
{
    layout
    {
        // Add changes to page layout here
        addafter("Customer Nos.")
        {
            field("PR. No"; Rec."PR. No")
            {
                Caption = 'PR Nos.';
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}