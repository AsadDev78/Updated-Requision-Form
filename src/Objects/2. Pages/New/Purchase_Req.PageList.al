// page 50100 "PurcahseRequsition"
// {
//     PageType = List;
//     ApplicationArea = All;
//     UsageCategory = Lists;
//     SourceTable = Purchase_Req;
//     CardPageId = PurcahseCard;

//     layout
//     {
//         area(Content)
//         {
//             repeater(GroupName)
//             {
//                 field("Raised by"; Rec."Raised by")
//                 {
//                     ApplicationArea = All;
//                 }

//                 field("Document Date"; Rec."Document Date")
//                 {
//                     ApplicationArea = All;
//                 }

//                 field("PR No"; Rec."PR No")
//                 {
//                     ApplicationArea = All;
//                 }

//                 field("Due Date"; Rec."Due Date")
//                 {
//                     ApplicationArea = All;
//                 }

//                 field(Reason; Rec.Reason)
//                 {
//                     ApplicationArea = All;
//                 }

//                 field(Description; Rec.Description)
//                 {
//                     ApplicationArea = All;
//                 }

//                 field(Status; Rec.Status)
//                 {
//                     ApplicationArea = All;

//                 }

//                 field("Convert to Order"; Rec."Convert to Order")
//                 {
//                     ApplicationArea = All;
//                 }
//             }
//         }
//         area(Factboxes)
//         {

//         }
//     }

//     // actions
//     // {
//     //     area(Processing)
//     //     {
//     //         action(ActionName)
//     //         {
//     //             ApplicationArea = All;

//     //             trigger OnAction();
//     //             begin

//     //             end;
//     //         }
//     //     }
//     // }
// }