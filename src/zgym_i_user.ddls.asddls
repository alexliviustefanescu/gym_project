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
  association [0..*] to ZGYM_I_MEM as _Membership on $projection.Id = _Membership.UserId
{
  key   id               as Id,
  key   ssn              as Ssn,
        role             as Role,
        name             as Name,
        dob              as Dob,
        email            as Email,
        country_code     as CountryCode,
        phone_number     as PhoneNumber,
        createdby        as Createdby,
        createdat        as Createdat,
        lastchangedby    as Lastchangedby,
        lastchangedat    as Lastchangedat,
        locallastchanged as Locallastchanged,
        
        _Membership
}
