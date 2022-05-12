table 50125 Purchase_Req_Lines
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Doc No"; Integer)
        {
            Caption = 'Doc No';
            AutoIncrement = true;
            DataClassification = CustomerContent;


            // trigger OnValidate()
            // begin
            //     if "No" <> xRec."No" then begin
            //         SalesSetup.Get();
            //         NoSeriesMgt.TestManual(SalesSetup."PR. No");
            //         "No. Series" := '';
            //     end;
            // end;
        }
        field(2; "Item Type"; Enum "Purchase Line Type")
        {


        }
        field(3; "Item No"; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(4; Description; Text[120])
        {
            DataClassification = ToBeClassified;
        }
        field(5; Quantity; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Location Code"; Text[25])
        {
            DataClassification = ToBeClassified;
        }
        field(7; "Unit of Measure Code"; Text[10])
        {
            DataClassification = ToBeClassified;
        }
        field(8; "Department Code"; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(9; "Vendor Name"; Text[120])
        {
            DataClassification = ToBeClassified;
        }
        field(10; "Vendor No"; Text[10])
        {
            DataClassification = ToBeClassified;
        }
        field(11; Amount; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(12; "Unit Cost"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Doc No")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

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