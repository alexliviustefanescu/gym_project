@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'cds view for users'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
  serviceQuality: #X,
  sizeCategory: #S,
  dataClass: #MIXED
}
define root view entity ZGYM_I_USER
  as select from zgym_user
  association [1..*] to ZGYM_I_MEM as _Membership
  on $projection.Id = _Membership.UserId
{
  key   id               as Id,
  key   ssn              as Ssn,
        @Consumption.valueHelpDefinition: [{ entity: {
          name: 'ZGYM_I_ROLES',
          element: 'Role'
        }}]
        role             as Role,
        name             as Name,
        dob              as Dob,
        email            as Email,
        @Consumption.valueHelpDefinition: [{ entity: {
          name: 'ZGYM_I_CNTRY_CODE',
          element: 'Ccode'
        }}]
        country_code     as CountryCode,
        phone_number     as PhoneNumber,
        createdby        as Createdby,
        createdat        as Createdat,
        lastchangedby    as Lastchangedby,
        lastchangedat    as Lastchangedat,
        locallastchanged as Locallastchanged,
        _Membership

}
