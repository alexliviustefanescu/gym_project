@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'cds view for check ins and outs'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
  serviceQuality: #X,
  sizeCategory: #S,
  dataClass: #MIXED
}
/*+[hideWarning] { "IDS" : [ "CARDINALITY_CHECK" ]  } */
define root view entity ZGYM_I_CHECK_IN
  as select from zgym_check_in
  association [1..1] to ZGYM_I_USER as _Users on $projection.UserId = _Users.Id
{
  key user_id          as UserId,
  key check_in         as CheckIn,
  key check_date       as CheckDate,
      check_out        as CheckOut,
      location         as Location,
      room             as Room,
      createdby        as Createdby,
      createdat        as Createdat,
      lastchangedby    as Lastchangedby,
      lastchangedat    as Lastchangedat,
      locallastchanged as Locallastchanged,

      _Users
}
