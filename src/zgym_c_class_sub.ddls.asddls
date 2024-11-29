@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'classes projection for cds view'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZGYM_C_CLASS_SUB as select from ZGYM_I_CLASS
//provider contract transactional_query as projection on ZGYM_I_CLASS
{
key InstructorId,
key ClassId,
_Classes.Name as ClassName,
_Classes.Description as ClassDescription,
_Instructors.Name as InsName,
_Instructors.Email as InsEmail,
_Classes.MaxNumber - count( distinct MemberId ) as AvailableSlots
//  key InstructorId,
//  key ClassId,
//  key MemberId,
//  Createdby,
//  Createdat,
//  Lastchangedby,
//  Lastchangedat,
//  Locallastchanged,
//  /* Associations */
//  _Classes.Name as ClassName,
//  _Classes.MaxNumber,
//  _Classes.Description,
//  _Classes.Duration,
//  
////  COUNT( DISTINCT _Members.Id ) as MemberCount,
//  _Instructors.Name as InsName,
//  _Instructors.Email as InsEmail,
//  _Instructors.PhoneNumber as InsPhoneNumber,
//  _Members
}
group by
  InstructorId,
  ClassId,
  MemberId,
  _Classes.Name,
  _Classes.Description,
  _Instructors.Name,
  _Instructors.Email,
  _Classes.MaxNumber
//  _Classes.Name,
//  _Classes.MaxNumber,
//  _Classes.Description,
//  _Classes.Duration,
//  _Instructors,
//  _Members

