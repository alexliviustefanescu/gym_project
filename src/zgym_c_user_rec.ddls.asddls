@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Receptionist Projection for user'
@Metadata.ignorePropagatedAnnotations: true
define root view entity zgym_c_user_rec 
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
