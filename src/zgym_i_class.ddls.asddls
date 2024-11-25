@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'cds view for classes'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
  serviceQuality: #X,
  sizeCategory: #S,
  dataClass: #MIXED
}
define root view entity ZGYM_I_CLASS
  as select from zgym_class
  association [1..1] to ZGYM_I_USER       as _Instructors on  $projection.InstructorId = _Instructors.Id
                                                          and _Instructors.Role        = 'INS'
  association [1..1] to ZGYM_I_USER       as _Members     on  $projection.MemberId = _Members.Id
                                                          and _Members.Role        = 'MEM'
  association [1..1] to ZGYM_I_CLASS_TYPE as _Classes     on  $projection.ClassId = _Classes.Id
{
  key instructor_id    as InstructorId,
  key class_id         as ClassId,
  key member_id        as MemberId,
      createdby        as Createdby,
      createdat        as Createdat,
      lastchangedby    as Lastchangedby,
      lastchangedat    as Lastchangedat,
      locallastchanged as Locallastchanged,

      _Instructors,
      _Members,
      _Classes
}
