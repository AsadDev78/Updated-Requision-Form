table 50131 Purchase_Req
{

    DataClassification = ToBeClassified;
    DrillDownPageID = "Purchase_Req_Input";
    LookupPageID = "Purchase_Req_Input";


    fields
    {

        field(1; "No"; Code[10])
        {
            Caption = 'PR No.';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                if "No" <> xRec."No" then begin
                    SalesSetup.Get();
                    NoSeriesMgt.TestManual(SalesSetup."PR. No");
                    "No. Series" := '';
                end;
            end;
        }
        // field(4; "PR No"; Integer)
        // {
        //     DataClassification = ToBeClassified;
        // }
        field(2; "Raised by"; Text[40])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Document Date"; Date)
        {
            DataClassification = ToBeClassified;
        }

        field(5; "Due Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(6; Reason; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(7; Description; Text[120])
        {
            DataClassification = ToBeClassified;
        }
        field(8; Status; Enum "Requistion Status")
        {
            Caption = 'Status';
            DataClassification = ToBeClassified;

            // trigger OnValidate()
            // begin
            //     if (Status <> Status::All) and "Privacy Blocked" then
            //         if GuiAllowed then
            //             if Confirm(ConfirmBlockedPrivacyBlockedQst) then
            //                 "Privacy Blocked" := false
            //             else
            //                 Error('')
            //         else
            //             Error(CanNotChangeBlockedDueToPrivacyBlockedErr);
            // end;
        }
        field(9; "Convert to Order"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(10; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }

    }
    // fieldgroups
    // {
    //     fieldgroup(DropDown; Open, Close, Requested, Review, Status)
    //     {

    //     }
    // }
    keys
    {
        key(PK; "No")
        {
            Clustered = true;
        }
    }

    // var
    //     myInt: Integer;

    trigger OnInsert()
    var
    begin
        if "No" = '' then begin
            SalesSetup.Get();
            SalesSetup.TestField("PR. No");
            NoSeriesMgt.InitSeries(SalesSetup."PR. No", xRec."No. Series", 0D, "No", "No. Series");
        end;
    end;

    var
        SalesSetup: Record "Sales & Receivables Setup";
        NoSeriesMgt: Codeunit NoSeriesManagement;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;
}