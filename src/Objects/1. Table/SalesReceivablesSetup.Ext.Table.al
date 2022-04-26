tableextension 50125 SalesReceivablesSetupExt extends "Sales & Receivables Setup"
{
    fields
    {
        field(50200; "PR. No"; Code[20])
        {
            Caption = 'PR No.';
            TableRelation = "No. Series";
        }
    }

    var
        myInt: Integer;
}