@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'admin projection for user cds view'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZGYM_C_USER_ADMIN
  provider contract transactional_query
  as projection on ZGYM_I_USER
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
      Locallastchanged
}
