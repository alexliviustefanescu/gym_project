@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'admin projection for cds view schedule'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZGYM_C_CLASS_TYPE_ADMIN
  provider contract transactional_query as projection on ZGYM_I_CLASS_TYPE
{
  key Id,
  Name,
  Description,
  Duration,
  MaxNumber,
  Tier,
  Createdby,
  Createdat,
  Lastchangedby,
  Lastchangedat,
  Locallastchanged
}
