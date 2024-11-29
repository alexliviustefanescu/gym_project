@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'subscr projection for cds schedule view'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZGYM_C_SCHEDULE_SUB
  provider contract transactional_query as projection on ZGYM_I_SCHEDULE
{
  @Consumption.valueHelpDefinition: 
      [{ entity: { name : 'ZGYM_I_CLASS' , element: 'ClassId' } ,
         distinctValues: true
                               }]
  key ClassId,
  @Consumption.valueHelpDefinition: 
      [{ entity: { name : 'ZGYM_I_USER' , element: 'Id' } ,
         additionalBinding: [{ element: 'ssn' }]
                               , distinctValues: true
                               }]
  key InstructorId,
  @Consumption.valueHelpDefinition: [{ entity: {
  name: 'ZGYM_I_DOW',
  element: 'DayOfWeek'
  } }]
  key DayOfWeek,
  key StartTime,
  RoomNumber,
  Createdby,
  Createdat,
  Lastchangedby,
  Lastchangedat,
  Locallastchanged,
  /* Associations */
  _Classes
}
