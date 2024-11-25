@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'gym checkin projection for user cds view'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZC_GYM_I_CHECK_IN
  provider contract transactional_query
  as projection on ZGYM_I_CHECK_IN
{
  key UserId,
  key CheckIn,
  key CheckDate,
      CheckOut,
      Location,
      Room,
      Createdby,
      Createdat,
      Lastchangedby,
      Lastchangedat,
      Locallastchanged,
      _Users

}
