@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'cds view for membership type'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
  serviceQuality: #X,
  sizeCategory: #S,
  dataClass: #MIXED
}
define root view entity ZGYM_I_MEM_TYPE
  as select from zgym_mem_type
{
  key id               as Id,
      name             as Name,
      @Semantics.amount.currencyCode : 'Currency'
      price            as Price,
      currency         as Currency,
      type             as Type,
      tier             as Tier,
      description      as Description,
      createdby        as Createdby,
      createdat        as Createdat,
      lastchangedby    as Lastchangedby,
      lastchangedat    as Lastchangedat,
      locallastchanged as Locallastchanged
}
