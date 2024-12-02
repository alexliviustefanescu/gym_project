@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Receptionist Projection for user'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define root view entity ZGYM_C_USER_REC_1
  provider contract transactional_query
  as projection on ZGYM_I_USER
  association [1..*] to ZGYM_I_MEM as _Membership on $projection.Id = _Membership.UserId
{
  key Id,
  key Ssn,
      Role,
      Name,
      Dob,
      Email,
      PhoneNumber,
      CountryCode,
      Createdby,
      Createdat,
      Lastchangedby,
      Lastchangedat,
      Locallastchanged,

      _Membership
}
