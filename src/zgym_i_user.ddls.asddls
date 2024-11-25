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
{
  key   id               as Id,
  key   ssn              as Ssn,
        role             as Role,
        name             as Name,
        dob              as Dob,
        email            as Email,
        phone_number     as PhoneNumber,
        country_code     as CountryCode,
        createdby        as Createdby,
        createdat        as Createdat,
        lastchangedby    as Lastchangedby,
        lastchangedat    as Lastchangedat,
        locallastchanged as Locallastchanged
}
