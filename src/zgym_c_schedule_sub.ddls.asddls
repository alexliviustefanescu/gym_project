@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'subscr projection for cds schedule view'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZGYM_C_SCHEDULE_SUB
  provider contract transactional_query as projection on ZGYM_I_SCHEDULE
{
  key ClassId,
  key InstructorId,
  key DayOfWeek,
  key StartTime,
  RoomNumber,
  Createdby,
  Createdat,
  Lastchangedby,
  Lastchangedat,
  Locallastchanged,
  /* Associations */
  _Classes
}
