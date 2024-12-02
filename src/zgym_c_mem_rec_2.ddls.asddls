@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Receptionist 2 Projection for MEM'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define root view entity ZGYM_C_MEM_REC_2
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
