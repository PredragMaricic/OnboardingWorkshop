codeunit 50113 DeleteChecklistItems
{


    [EventSubscriber(ObjectType::Codeunit, Codeunit::LogInManagement, 'OnAfterLogInStart', '', true, true)]
    local procedure OnAfterLogInStart()
    begin

        DeleteChecklistItem();
        DeleteChecklistItemVideo();
        DeleteChecklistItemTour();
    end;

    procedure DeleteChecklistItem()
    var
        Checklist: Codeunit Checklist;
        GuidedExperienceType: Enum "Guided Experience Type";
    begin
        Checklist.Delete(GuidedExperienceType::"Application Feature",
            ObjectType::Page,
            Page::Camera);
    end;

    procedure DeleteChecklistItemVideo()
    var
        Checklist: Codeunit Checklist;
        GuidedExperienceType: Enum "Guided Experience Type";
    begin
        Checklist.Delete(GuidedExperienceType::Learn,
           'https://go.microsoft.com/fwlink/?linkid=2152979');
    end;

    procedure DeleteChecklistItemTour()
    var
        Checklist: Codeunit Checklist;
        SpotlightTourType: Enum "Spotlight Tour Type";
    begin
        Checklist.Delete(Page::"User Settings List",
           SpotlightTourType::"Open in Excel");
    end;


}