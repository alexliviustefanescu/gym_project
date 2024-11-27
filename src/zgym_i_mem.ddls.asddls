@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'cds view for memberships'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
  serviceQuality: #X,
  sizeCategory: #S,
  dataClass: #MIXED
}
/*+[hideWarning] { "IDS" : [ "CARDINALITY_CHECK" ]  } */
define root view entity ZGYM_I_MEM
  as select from zgym_mem as Memberships
  association [1..1] to ZGYM_I_USER     as _Users           on $projection.UserId = _Users.Id
  association [1..1] to ZGYM_I_MEM_TYPE as _MembershipTypes on $projection.MembershipId = _MembershipTypes.Id

{
  key user_id          as UserId,
  key membership_id    as MembershipId,
  key start_date       as StartDate,
      end_date         as EndDate,
      type             as Type,
      status           as Status,
      createdby        as Createdby,
      createdat        as Createdat,
      lastchangedby    as Lastchangedby,
      lastchangedat    as Lastchangedat,
      locallastchanged as Locallastchanged,

      _Users,
      _MembershipTypes
}
