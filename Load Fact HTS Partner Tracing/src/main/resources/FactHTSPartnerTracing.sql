select
    patient.PatientKey,
    facility.FacilityKey,
    partner.PartnerKey,
    agency.AgencyKey,
    outcome.TraceOutcomeKey,
    trace_type.TraceTypeKey,
    booking.DateKey as BookingDateKey,
    current_date() as LoadDate
from source_data
    left join DimPatient as patient on patient.PatientPKHash = source_data.PatientPKHash
    and patient.SiteCode = source_data.SiteCode
    left join DimFacility as facility on facility.MFLCode = source_data.SiteCode
    left join MFL_partner_agency_combination on MFL_partner_agency_combination.MFL_Code = source_data.SiteCode
    left join DimPartner as partner on partner.PartnerName = MFL_partner_agency_combination.SDP
    left join DimAgency as agency on agency.AgencyName = MFL_partner_agency_combination.Agency
    left join DimDate as booking on booking.Date = source_data.BookingDate
    left join DimHTSTraceOutcome as outcome on outcome.TraceOutcome = source_data.TraceOutcome
    left join DimHTSTraceType as trace_type on trace_type.TraceType = source_data.TraceType;