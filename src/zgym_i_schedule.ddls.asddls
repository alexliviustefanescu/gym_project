@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'cds view for class schedules'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
  serviceQuality: #X,
  sizeCategory: #S,
  dataClass: #MIXED
}
define view entity ZGYM_I_SCHEDULE
  as select from zgym_schedule
  association [1..*] to ZGYM_I_CLASS as _Classes on  $projection.ClassId      = _Classes.ClassId
                                                 and $projection.InstructorId = _Classes.InstructorId
{
  key class_id         as ClassId,
  key instructur_id    as InstructorId,
      day_of_week      as DayOfWeek,
      start_time       as StartTime,
      room_number      as RoomNumber,
      createdby        as Createdby,
      createdat        as Createdat,
      lastchangedby    as Lastchangedby,
      lastchangedat    as Lastchangedat,
      locallastchanged as Locallastchanged,

      _Classes
}
