@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Receptionist Projection for user'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZGYM_C_USER_REC_2
  provider contract transactional_query
  as projection on ZGYM_I_USER
{
  key Id,
  key Ssn,
      Role,
      Name,
      Dob,
      Email,
      CountryCode,
      PhoneNumber,
      Createdby,
      Createdat,
      Lastchangedby,
      Lastchangedat,
      Locallastchanged,
      /* Associations */
      _Membership
}
