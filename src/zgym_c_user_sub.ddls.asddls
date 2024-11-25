@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'subscriber projection for cds view user'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZGYM_C_USER_SUB
  provider contract transactional_query as projection on ZGYM_I_USER
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
