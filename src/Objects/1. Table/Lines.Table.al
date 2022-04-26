table 50102 ListTable
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; ID; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Item Type"; Text[10])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Item No."; Text[10])
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
        field(6; Location; Text[25])
        {
            DataClassification = ToBeClassified;
        }
        field(7; UOM; Text[10])
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
        field(10; "Vendor No."; Text[10])
        {
            DataClassification = ToBeClassified;
        }
        field(11; Amount; Integer)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; ID)
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