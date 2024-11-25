@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'cds view for gym class types'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
  serviceQuality: #X,
  sizeCategory: #S,
  dataClass: #MIXED
}
define root view entity ZGYM_I_CLASS_TYPE
  as select from zgym_class_type
{
  key id               as Id,
      name             as Name,
      description      as Description,
      duration         as Duration,
      max_number       as MaxNumber,
      createdby        as Createdby,
      createdat        as Createdat,
      lastchangedby    as Lastchangedby,
      lastchangedat    as Lastchangedat,
      locallastchanged as Locallastchanged
}
