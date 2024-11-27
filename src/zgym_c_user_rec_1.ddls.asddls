@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Receptionist Projection for user'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZGYM_C_USER_REC_1
  provider contract transactional_query
  as projection on ZGYM_I_USER
  
{
  key Id,
  key Ssn,
      @Consumption.valueHelpDefinition: [{ entity: {
      name: 'ZGYM_I_ROLES',
      element: 'Role'
      } }]
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
