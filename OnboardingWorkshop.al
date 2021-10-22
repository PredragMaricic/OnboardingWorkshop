page 50101 "Shoe List"
{
    ApplicationArea = Basic, Suite, Assembly;
    DataCaptionFields = "Model Name";
    //Editable = false;
    PageType = List;
    CardPageId = 50102;
    RefreshOnActivate = true;
    UsageCategory = Lists;
    SourceTable = Shoe;
    PromotedActionCategories = 'New,Process,Report,Request Approval,Model Overview,Planning,Order/Return,Print/Send,Resselers,Materials';
    Caption = 'Shoe List';
    AboutTitle = 'Shoes';
    AboutText = 'Here you get an overview of your shoes and can perform various actions like designing new shoes.';

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                field("No."; "No.")
                {
                    ApplicationArea = All;
                }
                field("Model Name"; Rec."Model Name")
                {
                    ApplicationArea = All;
                }
                field(Picture; Picture)
                {
                    ApplicationArea = All;
                }
                field("Size"; Rec."Size")
                {
                    AboutTitle = 'Pay attention to shoe size';
                    AboutText = 'Pay special attention to the shoe size. Size matters and it is important with the right fit.';
                    ApplicationArea = All;
                }
                field(Season; Season)
                {
                    ApplicationArea = All;
                }
                field(Warehouse; Warehouse)
                {
                    ApplicationArea = All;
                }
                field("Production Cost "; "Production Cost")
                {
                    ApplicationArea = All;
                }
                field("Sell Price"; "Sell Price")
                {
                    ApplicationArea = All;
                }
            }
        }

    }
    actions
    {
        area(navigation)
        {
            group("Order")
            {
                Caption = 'Model Overview';
                Image = "Order";
                action("Model Overview")
                {
                    ApplicationArea = All;
                    Caption = 'Overview';
                    Image = FiledOverview;
                    Promoted = true;
                    PromotedCategory = Category5;
                    PromotedIsBig = true;
                    ShortCutKey = 'Alt+D';
                    ToolTip = 'View or edit dimensions, such as area, project, or department, that you can assign to sales and purchase documents to distribute costs and analyze transaction history.';
                    RunObject = Page "Shoe Card";
                }
                action(Statistics)
                {
                    ApplicationArea = Basic;
                    Caption = 'Statistics';
                    Image = Statistics;
                    Promoted = true;
                    PromotedCategory = Category5;
                    PromotedIsBig = true;
                    ShortCutKey = 'F7';
                    ToolTip = 'View statistical information, such as the value of posted entries, for the record.';
                    RunObject = Page "Item Statistics";
                }
                action("Co&mments")
                {
                    ApplicationArea = Suite;
                    Caption = 'Co&mments';
                    Image = ViewComments;
                    Promoted = true;
                    PromotedCategory = Category5;
                    RunObject = Page "Sales Comment Sheet";
                    ToolTip = 'View or add comments for the record.';
                }
                action(CFDIRelationDocuments)
                {
                    ApplicationArea = BasicMX, Suite;
                    Caption = 'CFDI Relation Documents';
                    Image = Allocations;
                    RunObject = Page "CFDI Relation Documents";
                    ToolTip = 'View or add CFDI relation documents for the record.';
                }
            }
            group(Materials)
            {
                Caption = 'Documents';
                Image = Documents;
                action("List of Raw Materials")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Raw Materials List';
                    Image = Shipment;
                    Promoted = true;
                    PromotedCategory = Category10;
                    RunObject = Page "Posted Sales Shipments";
                    RunPageView = SORTING("Order No.");
                    ToolTip = 'View related posted sales shipments.';
                }
                action("Order Raw Materials")
                {
                    ApplicationArea = All;
                    Caption = 'Order Sole Materials';
                    Image = Invoice;
                    Promoted = true;
                    PromotedCategory = Category10;
                    RunObject = Page "Posted Sales Invoices";
                    RunPageView = SORTING("Order No.");
                    ToolTip = 'View a list of ongoing sales invoices for the order.';

                }
                action("Order Synthetic Material")
                {
                    ApplicationArea = All;
                    Caption = 'Order Synthetic Material';
                    Image = CoupledUsers;
                    Promoted = true;
                    PromotedCategory = Category10;
                    RunObject = Page "Customer List";
                    ToolTip = 'Viewlist of  resselers. ';
                }
                action("Order Leather")
                {
                    ApplicationArea = All;
                    Caption = 'Order Leather';
                    Image = CoupledUsers;
                    Promoted = true;
                    PromotedCategory = Category10;
                    RunObject = Page "Customer List";
                    ToolTip = 'Viewlist of  resselers. ';
                }

            }
            group(Documents)
            {
                Caption = 'Documents';
                Image = Documents;
                action("S&hipments")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'S&hipments';
                    Image = Shipment;
                    Promoted = true;
                    PromotedCategory = Category9;
                    RunObject = Page "Posted Sales Shipments";
                    RunPageView = SORTING("Order No.");
                    ToolTip = 'View related posted sales shipments.';
                }
                action(PostedSalesInvoices)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Invoices';
                    Image = Invoice;
                    Promoted = true;
                    PromotedCategory = Category9;
                    RunObject = Page "Posted Sales Invoices";
                    RunPageView = SORTING("Order No.");
                    ToolTip = 'View a list of ongoing sales invoices for the order.';

                    AboutTitle = 'What has been invoiced?';
                    AboutText = 'Here you can look up what has already been invoiced on an order.';
                }
                action("Resseler List")
                {
                    ApplicationArea = All;
                    Caption = 'Resseler List';
                    Image = CoupledUsers;
                    Promoted = true;
                    PromotedCategory = Category9;
                    RunObject = Page "Customer List";
                    ToolTip = 'Viewlist of  resselers. ';
                }
                action("New Resseler")
                {
                    ApplicationArea = All;
                    Caption = 'New Resseler';
                    Image = User;
                    Promoted = true;
                    PromotedCategory = Category9;
                    RunObject = Page "Customer Card";
                    ToolTip = 'Create a new resseler. ';
                }

            }
            group("Shoe Warehouse")
            {
                Caption = 'Shoe Warehouse';
                Image = Warehouse;
                action("Warehouse Shipment Lines")
                {
                    ApplicationArea = Warehouse;
                    Caption = 'Warehouse Shipment Lines';
                    Image = ShipmentLines;
                    RunObject = Page "Whse. Shipment Lines";
                    RunPageView = SORTING("Source Type", "Source Subtype", "Source No.", "Source Line No.");
                    ToolTip = 'View ongoing warehouse shipments for the document, in advanced warehouse configurations.';
                }
                action("In&vt. Put-away/Pick Lines")
                {
                    ApplicationArea = Warehouse;
                    Caption = 'In&vt. Put-away/Pick Lines';
                    Image = PickLines;
                    RunObject = Page "Warehouse Activity List";
                    RunPageView = SORTING("Source Document", "Source No.", "Location Code");
                    ToolTip = 'View items that are inbound or outbound on inventory put-away or inventory pick documents for the transfer order.';
                }
            }
            group(ActionGroupCRM)
            {
                Caption = 'Dynamics 365 Sales';
                action(CRMGoToSalesOrderListInNAV)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Sales Order List';
                    Image = "Order";
                    ToolTip = 'Open the Sales Order List - Dynamics 365 Sales page in Business Central';

                    trigger OnAction()
                    var
                        CRMSalesorder: Record "CRM Salesorder";
                    begin
                        PAGE.Run(PAGE::"CRM Sales Order List", CRMSalesorder);
                    end;
                }
            }
        }
        area(processing)
        {
            group(Action12)
            {
                Caption = 'Release';
                Image = ReleaseDoc;
                action(Release)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Re&lease';
                    Image = ReleaseDoc;
                    Promoted = true;
                    PromotedCategory = Category6;
                    PromotedOnly = true;
                    ShortCutKey = 'Ctrl+F9';
                    ToolTip = 'Release the document to the next stage of processing. When a document is released, it will be included in all availability calculations from the expected receipt date of the items. You must reopen the document before you can make changes to it.';

                }
                action(Reopen)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Re&open';
                    Image = ReOpen;
                    Promoted = true;
                    PromotedCategory = Category6;
                    PromotedOnly = true;
                    ToolTip = 'Reopen the document to change it after it has been approved. Approved documents have the Released status and must be opened before they can be changed.';

                }
            }
            group("F&unctions")
            {
                Caption = 'Planning';
                Image = "Action";
                action("Pla&nning")
                {
                    ApplicationArea = All;
                    Caption = 'Pla&nning';
                    Image = Planning;
                    Promoted = true;
                    PromotedCategory = Category6;
                    RunObject = page "Planning Components";
                    ToolTip = 'Open a tool for manual supply planning that displays all new demand along with availability information and suggestions for supply. It provides the visibility and tools needed to plan for demand from sales lines and component lines and then create different types of supply orders directly.';

                }
                action("Order &Promising")
                {
                    ApplicationArea = All;
                    Caption = 'Order &Promising';
                    Image = OrderPromising;
                    Promoted = true;
                    PromotedCategory = Category6;
                    ToolTip = 'Calculate the shipment and delivery dates based on the item''s known and expected availability dates, and then promise the dates to the customer.';
                    RunObject = Page "Order Planning";
                }
                action("Send IC Sales Order Cnfmn.")
                {
                    ApplicationArea = All;
                    Caption = 'Send IC Sales Order Cnfmn.';
                    Image = IntercompanyOrder;
                    ToolTip = 'Send the document to the intercompany outbox or directly to the intercompany partner if automatic transaction sending is enabled.';

                }
                action("Delete Invoiced")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Delete Invoiced Sales Orders';
                    Image = Delete;
                    RunObject = Report "Delete Invoiced Sales Orders";
                    ToolTip = 'Delete orders that were not automatically deleted after completion. For example, when several sales orders were completed by a single invoice.';
                }
            }
            group("Request Approval")
            {
                Caption = 'Request Approval';
                action(SendApprovalRequest)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Send A&pproval Request';
                    Image = SendApprovalRequest;
                    ToolTip = 'Request approval of the document.';


                }
                action(CancelApprovalRequest)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Cancel Approval Re&quest';
                    Image = CancelApprovalRequest;
                    ToolTip = 'Cancel the approval request.';

                }
            }
            group(Action3)
            {
                Caption = 'Warehouse';
                Image = Warehouse;
                action("Create Inventor&y Put-away/Pick")
                {
                    ApplicationArea = Warehouse;
                    Caption = 'Create Inventor&y Put-away/Pick';
                    Ellipsis = true;
                    Image = CreatePutawayPick;
                    ToolTip = 'Create an inventory put-away or inventory pick to handle items on the document according to a basic warehouse configuration that does not require warehouse receipt or shipment documents.';

                }
                action("Create &Warehouse Shipment")
                {
                    AccessByPermission = TableData "Warehouse Shipment Header" = R;
                    ApplicationArea = Warehouse;
                    Caption = 'Create &Warehouse Shipment';
                    Image = NewShipment;
                    ToolTip = 'Create a warehouse shipment to start a pick a ship process according to an advanced warehouse configuration.';

                }
            }
            group("P&osting")
            {
                Caption = 'Order/Return';
                Image = Post;
                action(Return)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Return';
                    Ellipsis = true;
                    Image = PostOrder;
                    Promoted = true;
                    PromotedCategory = Category7;
                    PromotedIsBig = true;
                    ShortCutKey = 'F9';
                    RunObject = page "Return Receipt Lines";
                    ToolTip = 'Finalize the document or journal by posting the amounts and quantities to the related accounts in your company books.';

                }
                action(PostAndSend)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Post and Send';
                    Ellipsis = true;
                    Image = PostMail;
                    Promoted = true;
                    PromotedCategory = Category7;
                    PromotedIsBig = true;
                    ToolTip = 'Finalize and prepare to send the document according to the customer''s sending profile, such as attached to an email. The Send document to window opens where you can confirm or select a sending profile.';

                }
                action(Approvals)
                {
                    ApplicationArea = Basic;
                    Caption = 'Approvals';
                    Image = Approvals;
                    Promoted = true;
                    PromotedCategory = Category7;
                    ToolTip = 'View a list of the records that are waiting to be approved. For example, you can see who requested the record to be approved, when it was sent, and when it is due to be approved.';
                    RunObject = Page "Approval Entries";
                }
                action("Test Report")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Test Report';
                    Ellipsis = true;
                    Image = TestReport;
                    ToolTip = 'View a test report so that you can find and correct any errors before you perform the actual posting of the journal or document.';

                }
                action("Post &Batch")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Post &Batch';
                    Ellipsis = true;
                    Image = PostBatch;
                    Promoted = true;
                    PromotedCategory = Category7;
                    ToolTip = 'Post several documents at once. A report request window opens where you can specify which documents to post.';

                    trigger OnAction()
                    var
                        SalesHeader: Record "Sales Header";
                        SelectionFilterManagement: Codeunit SelectionFilterManagement;
                    begin
                        CurrPage.SetSelectionFilter(SalesHeader);
                        SalesHeader.SetFilter("No.", SelectionFilterManagement.GetSelectionFilterForSalesHeader(SalesHeader));
                        REPORT.RunModal(REPORT::"Batch Post Sales Orders", true, true, SalesHeader);
                        CurrPage.Update(false);
                    end;
                }
                action("Remove From Job Queue")
                {
                    ApplicationArea = All;
                    Caption = 'Remove From Job Queue';
                    Image = RemoveLine;
                    ToolTip = 'Remove the scheduled processing of this record from the job queue.';

                }
                action("Preview Posting")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Preview Posting';
                    Image = ViewPostedOrder;
                    Promoted = true;
                    PromotedCategory = Category7;
                    ShortCutKey = 'Ctrl+Alt+F9';
                    ToolTip = 'Review the different types of entries that will be created when you post the document or journal.';
                }
            }
            group("&Print")
            {
                Caption = '&Print';
                Image = Print;
                action("Work Order")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Work Order';
                    Ellipsis = true;
                    Image = Print;
                    ToolTip = 'Prepare to registers actual item quantities or time used in connection with the sales order. For example, the document can be used by staff who perform any kind of processing work in connection with the sales order. It can also be exported to Excel if you need to process the sales line data further.';

                }
                action("Pick Instruction")
                {
                    ApplicationArea = Warehouse;
                    Caption = 'Pick Instruction';
                    Image = Print;
                    ToolTip = 'Print a picking list that shows which items to pick and ship for the sales order. If an item is assembled to order, then the report includes rows for the assembly components that must be picked. Use this report as a pick instruction to employees in charge of picking sales items or assembly components for the sales order.';

                }
            }
            group("&Order Confirmation")
            {
                Caption = '&Order Confirmation';
                Image = Email;
                action("Email Confirmation")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Email Confirmation';
                    Ellipsis = true;
                    Image = Email;
                    Promoted = true;
                    PromotedCategory = Category8;
                    ToolTip = 'Send an order confirmation by email. The Send Email window opens prefilled for the customer so you can add or change information before you send the email.';
                }
                action("Print Confirmation")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Print Confirmation';
                    Ellipsis = true;
                    Image = Print;
                    Promoted = true;
                    PromotedCategory = Category8;
                    ToolTip = 'Print an order confirmation. A report request window opens where you can specify what to include on the print-out.';
                }
                action(AttachAsPDF)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Attach as PDF';
                    Image = PrintAttachment;
                    Promoted = true;
                    PromotedCategory = Category8;
                    Ellipsis = true;
                    ToolTip = 'Create a PDF file and attach it to the document.';
                }
            }
            group(Display)
            {
                Caption = 'Display';
                action(ReportFactBoxVisibility)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Show/Hide Power BI Reports';
                    Image = "Report";
                    ToolTip = 'Select if the Power BI FactBox is visible or not.';

                }
            }
        }
        area(reporting)
        {
            action("Model Reservation Availability")
            {
                ApplicationArea = Reservation;
                Caption = 'Sales Reservation Avail.';
                Image = "Report";
                Promoted = true;
                PromotedCategory = "Report";
                RunObject = Report "Sales Reservation Avail.";
                ToolTip = 'View, print, or save an overview of availability of items for shipment on sales documents, filtered on shipment status.';
            }
        }
    }
}
page 50102 "Shoe Card"
{
    ApplicationArea = Basic, Suite, Assembly;
    DataCaptionFields = "Model Name";
    //Editable = false;
    PageType = Card;
    UsageCategory = Administration;
    SourceTable = Shoe;
    AboutTitle = 'Shoe';
    AboutText = 'Here you get an overview of your shoes and can perform various actions like designing new shoes.';

    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; "No.")
                {
                    ApplicationArea = All;
                }
                field("Model Name"; Rec."Model Name")
                {
                    ApplicationArea = All;
                }
                field("Size"; Rec."Size")
                {
                    AboutTitle = 'Pay attention to shoe size';
                    AboutText = 'Pay special attention to the shoe size. Size matters and it is important with the right fit.';
                    ApplicationArea = All;
                }
                field(Picture; Picture)
                {
                    ApplicationArea = All;
                }
                field(Season; Season)
                {
                    ApplicationArea = All;
                }
                field(Warehouse; Warehouse)
                {
                    ApplicationArea = All;
                }

                field("Production Cost "; "Production Cost")
                {
                    ApplicationArea = All;
                }
                field("Sell Price"; "Sell Price")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}

page 50100 "Shoe Management Setup"
{
    ApplicationArea = All;
    PageType = Card;
    SourceTable = "Shoe Management Setup";
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Default Size"; Rec."Default Size")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}

table 50100 Shoe
{
    Caption = 'Shoe';
    DataPerCompany = true;

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Model Name"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(92; Picture; MediaSet)
        {
            Caption = 'Picture';
        }
        field(3; "Size"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Warehouse"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Season"; Enum "Shoe Season")
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Production Cost"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(7; "Sell Price"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PrimaryKey; "Model Name")
        {
            Clustered = TRUE;
        }
    }
    fieldgroups
    {

        fieldgroup(Brick; "No.", "Model Name", Picture)
        {
        }
    }
}

table 50101 "Shoe Management Setup"
{
    Caption = 'Shoe Management Setup';
    DataPerCompany = true;

    fields
    {
        field(1; "Key"; Text[10])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Default Size"; decimal)
        {
            DataClassification = ToBeClassified;
        }

    }
    keys
    {
        key(PrimaryKey; "Key")
        {
            Clustered = TRUE;
        }
    }
}

codeunit 50105 "Assisted Setup Shoe"
{
    Access = Internal;

    var
        AssistedSetupTxt: Label 'Set up the Shoe Extension';
        AssistedSetupHelpTxt: Label 'https://go.microsoft.com/fwlink/?linkid=', Locked = true;
        AssistedSetupDescriptionTxt: Label 'Start using the Shoe Extension to manage your business.';
        AlreadySetUpQst: Label 'This assisted setup guide has already been completed. Do you want to run it again?';

        VideoUrlShoeSetupTxt: Label 'Set up the Shoe Extension';


    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Guided Experience", 'OnRegisterAssistedSetup', '', false, false)]
    local procedure SetupInitialize()
    var
        BaseAppID: Codeunit "BaseApp ID";
        GuidedExperience: Codeunit "Guided Experience";
        AssistedSetupGroup: Enum "Assisted Setup Group";
        VideoCategory: Enum "Video Category";
    begin
        GuidedExperience.InsertAssistedSetup(AssistedSetupTxt, AssistedSetupTxt, AssistedSetupDescriptionTxt, 10,
        ObjectType::Page, Page::"Assisted Setup Shoe", AssistedSetupGroup::GettingStarted, VideoUrlShoeSetupTxt, VideoCategory::GettingStarted,
        AssistedSetupHelpTxt);

    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Guided Experience", 'OnReRunOfCompletedAssistedSetup', '', false, false)]
    local procedure OnReRunOfCompletedSetup(ExtensionId: Guid; ObjectType: ObjectType; ObjectID: Integer; var Handled: Boolean)
    begin
        if ExtensionId <> GetAppId() then
            exit;
        case ObjectID of
            Page::"Assisted Setup Shoe":
                begin
                    if Confirm(AlreadySetUpQst, true) then
                        Page.Run(PAGE::"Assisted Setup Shoe");
                    Handled := true;
                end;
        end;
    end;

    local procedure RunAssistedShoeSetup()
    var
        GuidedExperience: Codeunit "Guided Experience";
        GuidedExperienceType: Enum "Guided Experience Type";
    begin
        if GetExecutionContext() <> ExecutionContext::Normal then
            exit;

        if not GuiAllowed then
            exit;

        if GuidedExperience.IsAssistedSetupComplete(ObjectType::Page, Page::"Assisted Setup Shoe") then
            exit;

        Commit(); // Make sure all data is committed before we run the wizard

        GuidedExperience.Run(GuidedExperienceType::"Assisted Setup", ObjectType::Page, PAGE::"Assisted Company Setup Wizard");
    end;

    local procedure GetAppId(): Guid
    var
        ModuleInfo: ModuleInfo;
        EmptyGuid: Guid;
    begin
        if ModuleInfo.Id() = EmptyGuid then
            NavApp.GetCurrentModuleInfo(ModuleInfo);
        exit(ModuleInfo.Id());
    end;
}

page 50106 "Assisted Setup Shoe"
{
    Caption = 'Shoe Extension Setup';
    DeleteAllowed = false;
    InsertAllowed = false;
    LinksAllowed = false;
    PageType = NavigatePage;
    ShowFilter = false;

    layout
    {
        area(content)
        {
            group(MediaStandard)
            {
                ShowCaption = false;
                Editable = false;
                Visible = TopBannerVisible;

                field(MediaResources; MediaResources."Media Reference")
                {
                    ApplicationArea = All;
                    Editable = false;
                    ShowCaption = false;
                }
            }

            group(Step1)
            {
                Caption = '';
                Visible = IntroVisible;
                group("Para1.1")
                {
                    Caption = 'Welcome to Shoe Extension Setup';
                    group("Para1.1.1")
                    {
                        Caption = '';
                        InstructionalText = 'With the Shoe Extension yuu can completely monitor your business from one place. The feature covers the whole business process from planning phase, defining different models, ordering materials, to direct communication to your resellers.';
                    }

                }
                group("Para1.2")
                {
                    Caption = 'Let''s go!';
                    InstructionalText = 'Choose Next to get started and import a list of your shoe models together with relevant information.';
                }
            }
            group(Step2)
            {

                Caption = 'Before we start';
                InstructionalText = 'By enabling this extension you consent to sharing your data with an external system. Your use of this extension may be subject to additional licensing terms from AMC. To enable the service you must read and accept the terms of use.';

                Visible = ConsentVisible;
                field(AcceptConsent; ConsentAccepted)
                {
                    ApplicationArea = Basic, Suite;
                    Editable = true;
                    Caption = 'I understand and accept the terms';
                    ToolTip = 'Acknowledge that you have read and accept the terms.';

                    trigger OnValidate()
                    begin
                        if not ConsentAccepted then
                            ShowIntroStep();
                        NextEnabled := ConsentAccepted;
                    end;
                }

            }
            group(Step3)
            {
                Caption = 'Import Configuration Package';
                Visible = ImportConfigPackVisible;
                group("Para3.1")
                {
                    Caption = 'Want to get started. Let''s import all models. Please choose actions below';
                    InstructionalText = 'Configuration Package allows you to start using the extension on the fastest way. All your models will be imported and avilable in the Shoe list.';

                }
            }
            group(Step4)
            {
                Caption = '';
                Visible = DoneVisible;
                group("Para5.1")
                {
                    Caption = 'That''s it!';
                    InstructionalText = 'Choose Finish to start using your new feature. Enjoy !';
                }
            }
        }
    }
    actions
    {

        area(Navigation)
        {


        }
        area(Processing)
        {
            action(Back)
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Back';
                Enabled = BackEnabled;
                Visible = BackEnabled;
                Image = PreviousRecord;
                InFooterBar = true;

                trigger OnAction()
                begin
                    NextStep(true);
                end;
            }
            action(Next)
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Next';
                Enabled = NextEnabled;
                Image = NextRecord;
                InFooterBar = true;

                trigger OnAction()
                begin
                    NextStep(false);
                end;
            }
            action("Finish")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Finish';
                Image = Close;
                InFooterBar = true;
                Visible = FinishEnabled;

                ToolTip = 'Choose Finish to complete the Shoe Extension setup.';

                trigger OnAction();
                var
                    GuidedExperience: Codeunit "Guided Experience";
                begin
                    GuidedExperience.CompleteAssistedSetup(ObjectType::Page, PAGE::"Assisted Setup Shoe");
                    CurrPage.Close();
                end;
            }
            action(ImportPackage)
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Import shoes models';
                Enabled = ImportConfigPackVisible;
                Visible = ImportConfigPackVisible;
                Ellipsis = true;
                Image = Import;
                InFooterBar = true;
                ToolTip = 'Import a .rapidstart package file.';

                trigger OnAction()
                begin
                    //ConfigXMLExchange.ImportPackageXMLFromClient;
                    ImportPack();

                end;
            }

        }
    }

    trigger OnInit();
    begin
        LoadTopBanners();
    end;

    trigger OnOpenPage()
    var
        GuidedExperience: Codeunit "Guided Experience";
    begin

        GuidedExperience.ResetAssistedSetup(ObjectType::Page, PAGE::"Assisted Setup Shoe");
        IsComplete := GuidedExperience.IsAssistedSetupComplete(ObjectType::Page, PAGE::"Assisted Setup Shoe");
        ConsentAccepted := IsComplete;
        ShowIntroStep;

    end;

    local procedure LoadTopBanners();
    begin
        if MediaRepository.GET('AssistedSetup-NoText-400px.png', FORMAT(CURRENTCLIENTTYPE))
      then
            if MediaResources.GET(MediaRepository."Media Resources Ref")
        then
                TopBannerVisible := MediaResources."Media Reference".HASVALUE;
    end;

    local procedure NextStep(Backwards: Boolean)
    begin
        if Backwards then
            Step := Step - 1
        else
            Step := Step + 1;

        case Step of
            Step::Intro:
                ShowIntroStep;
            Step::Consent:
                ShowConsentStep();
            Step::"Import Config Pack":
                begin
                    ShowImportConfigPack;

                end;
            Step::Done:
                ShowDoneStep;
        end;
        CurrPage.Update(true);
    end;

    local procedure ShowDoneStep()
    begin
        ResetWizardControls;
        DoneVisible := true;
        NextEnabled := false;
        FinishEnabled := true;
        ConsentVisible := false;
        BackEnabled := true;
    end;

    local procedure ShowConsentStep()
    begin
        ResetWizardControls;
        //Co := true;
        NextEnabled := ConsentAccepted;
        ConsentVisible := true;
    end;

    local procedure ShowImportConfigPack()
    begin
        ResetWizardControls;
        ImportConfigPackVisible := true;
        ConsentVisible := false;
        //NextEnabled := true;
    end;

    local procedure ResetWizardControls()
    begin
        // Buttons
        BackEnabled := true;
        NextEnabled := true;
        FinishEnabled := false;

        // Tabs
        ImportConfigPackVisible := false;
        IntroVisible := false;
        ConsentVisible := false;
    end;

    local procedure ShowIntroStep()
    begin
        ResetWizardControls;
        IntroVisible := true;
        BackEnabled := false;
    end;

    local procedure ImportPack()

    var
        InStr: InStream;
        OutStr: OutStream;
        FileName: Text;
        TempBlob: Codeunit "Temp Blob";
        ConfigPackageImport: Codeunit "Config. Package - Import";
        ConfigSetupTemp: Record "Config. Setup" temporary;
    begin

        if UploadIntoStream('Config. Package Selection', '', '', FileName, InStr) then begin
            TempBlob.CreateOutStream(OutStr);
            CopyStream(OutStr, InStr);
            ConfigPackageImport.ImportRapidStartPackageStream(TempBlob, ConfigSetupTemp);

        end;
    end;


    var
        MediaRepository: Record "Media Repository";
        MediaResources: Record "Media Resources";
        ConfigXMLExchange: Codeunit "Config. XML Exchange";
        Notification: Notification;
        Step: Option Intro,Consent,"Import Config Pack",Done;
        TopBannerVisible: Boolean;
        IsComplete: Boolean;
        BackEnabled: Boolean;
        NextEnabled: Boolean;
        FinishEnabled: Boolean;
        ConsentAccepted: Boolean;
        IntroVisible: Boolean;
        DoneVisible: Boolean;
        ImportConfigPackVisible: Boolean;
        ConsentVisible: Boolean;

        DocLbl: Label 'https://go.microsoft.com/fwlink/?linkid=2130800', Locked = true;
        TermsOfUseLbl: Label ' https://go.microsoft.com/fwlink/?linkid=2130900', Locked = true;

}

enum 50109 "Shoe Season"
{
    Extensible = true;
    AssignmentCompatibility = true;

    value(0; "Spring/Summer")
    {
        Caption = 'Spring/Summer';
    }
    value(1; "Autumn/Winter")
    {
        Caption = 'Autumn/Winter';
    }
}