select
    PatientPK,
    PatientPKHash,
    SiteCode,
    FacilityName,
    HtsNumber,
    Emr,
    Project,
    PartnerPatientPk,
    KnowledgeOfHivStatus,
    PartnerPersonID,
    CCCNumber,
    IpvScreeningOutcome,
    ScreenedForIpv,
    PnsConsent,
    RelationsipToIndexClient,
    LinkedToCare,
    MaritalStatus,
    PnsApproach,
    FacilityLinkedTo,
    Gender,
    CurrentlyLivingWithIndexClient,
    Age,
    DateElicited,
    Dob,
    LinkDateLinkedToCare,
    dateDiff(yy,Dob,DateElicited) as AgeAtElicitation
from dbo.HTS_PartnerNotificationServices