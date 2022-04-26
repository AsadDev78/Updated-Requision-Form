page 50131 PurcahseCard
{

    Caption = 'Purchase Requsition Form';
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = "Purchase_Req";

    layout
    {

        area(Content)
        {

            group("General")
            {
                field("Raised by"; Rec."Raised by")
                {
                    Caption = 'Rasied by';
                    ApplicationArea = All;
                    ShowMandatory = true;
                    TableRelation = User;
                    LookupPageId = 50131;



                    trigger OnLookup(var Text: Text): Boolean
                    var
                        emplyRec: Record User;
                    begin
                        emplyRec.Reset();
                        if Page.RunModal(Page::"Users", emplyRec) = Action::LookupOK then
                            Rec."Raised by" := emplyRec."Full Name";
                        // Rec.Reason := emplyRec.Reason;
                        // Rec."Document Date" := emplyRec."Document Date";
                        // Rec.Description := emplyRec.Description;
                        // Rec."PR No" := emplyRec."PR No";
                        // Rec."Convert to Order" := "Convert to Order";
                        // Rec."Due Date" := "Due Date";

                    end;
                }
                // field(CompleteName; Rec."Middle Name")
                // {
                //     ApplicationArea = All;
                // }
                // field(No; Rec."No.")
                // {
                //     ApplicationArea = All;
                // }
                field("Document Date"; Rec."Document Date")
                {
                    Caption = 'Document Date';
                    ApplicationArea = All;
                    ShowMandatory = true;
                }
                field(No; Rec.No)
                {
                    Caption = 'PR No';
                    ApplicationArea = All;

                    // trigger OnLookup(var Text: Text): Boolean
                    // var
                    //     emplyRec: Record Purchase_Req;
                    // begin
                    //     emplyRec.Reset();
                    //     if Page.RunModal(Page::"Purchase_Req_Input", emplyRec) = Action::LookupOK then
                    //         Rec."PR No" := emplyRec.ID;


                    // end;

                }
                field("Due Date"; Rec."Due Date")
                {
                    Caption = 'Due Date';
                    ApplicationArea = All;
                    ShowMandatory = true;
                }
                field(Reason; Rec.Reason)
                {
                    Caption = 'Reason';
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    Caption = 'Description';
                    ApplicationArea = All;
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Status';

                }
                // field("Convert to Order"; Rec."Convert to Order")
                // {
                //     ApplicationArea = All;
                // }
            }
            part(Lines; "Lines")
            {
                SubPageLink = "SystemId" = field(SystemId);
                ApplicationArea = All;
            }
        }

    }

    actions
    {
        area(processing)
        {
            group(Approval)
            {
                Caption = 'Approval';
                action(Approve)
                {
                    ApplicationArea = Suite;
                    Caption = 'Approve';
                    Image = Approve;
                    Promoted = true;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    ToolTip = 'Approve the requested changes.';
                    // Visible = OpenApprovalEntriesExistForCurrUser;

                    trigger OnAction()
                    var
                        ApprovalsMgmt: Codeunit "Approvals Mgmt.";
                    begin
                        ApprovalsMgmt.ApproveRecordApprovalRequest(Rec.RecordId);
                    end;
                }
                action(Reject)
                {
                    ApplicationArea = Suite;
                    Caption = 'Reject';
                    Image = Reject;
                    Promoted = true;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    ToolTip = 'Reject the requested changes.';
                    // Visible = OpenApprovalEntriesExistForCurrUser;

                    trigger OnAction()
                    var
                        ApprovalsMgmt: Codeunit "Approvals Mgmt.";
                    begin
                        ApprovalsMgmt.RejectRecordApprovalRequest(Rec.RecordId);
                    end;

                }
                action(CopyDocument)
                {
                    ApplicationArea = Suite;
                    Caption = 'Copy Document';
                    Ellipsis = true;
                    // Enabled = "No." <> '';
                    Image = CopyDocument;
                    Promoted = true;
                    PromotedCategory = Process;
                    ToolTip = 'Copy document lines and header information from another purchase document to this document. You can copy a posted purchase invoice into a new purchase invoice to quickly create a similar document.';

                    trigger OnAction()
                    begin
                        // CopyDocument();
                        // if Get("Document Type", "No.") then;
                    end;
                }
                action("Send and &Print")
                {
                    ApplicationArea = Suite;
                    Caption = 'Send and &Print';
                    Ellipsis = true;
                    Image = PostPrint;
                    Promoted = true;
                    PromotedIsBig = true;
                    ShortCutKey = 'Shift+F9';
                    ToolTip = 'Finalize and prepare to print the document or journal. The values and quantities are posted to the related accounts. A report request window where you can specify what to include on the print-out.';

                    trigger OnAction()
                    begin
                        // PostDocument(CODEUNIT::"Purch.-Post + Print", "Navigate After Posting"::"Do Nothing");
                    end;
                }
            }
        }
    }

    // actions
    // {
    //     area(Processing)
    //     {
    //         action("Process")
    //         {
    //             Promoted = true;
    //             PromotedCategory = Process;
    //             ApplicationArea = All;

    //         }

    //     }
    //     area(Creation)
    //     {
    //         // Adds the action "My New document" to the New Document group in the Actions menu. 
    //         action("My New document")
    //         {
    //             ApplicationArea = All;
    //             RunObject = page "Customer Card";
    //             Image = "1099Form";
    //         }
    //     }
    // }
    //     var
    //         myInt: Integer;
}