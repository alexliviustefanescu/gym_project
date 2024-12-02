@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'mem types projection views for admin'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define root view entity ZGYM_C_MEM_TYPE_ADMIN
  provider contract transactional_query
  as projection on ZGYM_I_MEM_TYPE
{
  key Id,
      Name,
      Price,
      Currency,
      Type,
      Tier,
      Description,
      Createdby,
      Createdat,
      Lastchangedby,
      Lastchangedat,
      Locallastchanged
}
