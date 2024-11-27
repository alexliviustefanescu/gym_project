@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'DayOfWeek cds'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel : { resultSet.sizeCategory: #XS }
define view entity ZGYM_I_DOW as select from zgym_dow_vh
{
  key weekday as DayOfWeek
}
