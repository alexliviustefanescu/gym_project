@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Receptionist Projection for membership'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define root view entity ZGYM_C_MEM_REC_1
  provider contract transactional_query
  as projection on ZGYM_I_MEM
{
  key UserId,
  key MembershipId,
  key StartDate,
  EndDate,
  Type,
  Status,
  Createdby,
  Createdat,
  Lastchangedby,
  Lastchangedat,
  Locallastchanged,
  /* Associations */
  _MembershipTypes.Name,
  _MembershipTypes.Description,
  _Users
}
