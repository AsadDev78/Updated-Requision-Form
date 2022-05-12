pageextension 50105 kjskjdjk extends "Purchase Order"
{
    layout
    {
        // Add changes to page layout here
        addafter("Document Date")
        {
            field(Region; Region)
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
        Region: Text[10];

}