@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'classes projection for cds view'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZGYM_C_CLASS_SUB
provider contract transactional_query as projection on ZGYM_I_CLASS
{
  @Consumption.valueHelpDefinition: 
      [{ entity: { name : 'ZGYM_I_USER' , element: 'Id' } ,
         additionalBinding: [{ element: 'ssn' }]
                               , distinctValues: true
                               }]
  key InstructorId,
    @Consumption.valueHelpDefinition: 
      [{ entity: { name : 'ZGYM_I_CLASS_TYPE' , element: 'Id' } ,
         additionalBinding: [{ element: 'ssn' }]
                               , distinctValues: true
                               }]
  key ClassId,
    @Consumption.valueHelpDefinition: 
      [{ entity: { name : 'ZGYM_I_USER' , element: 'Id' } ,
         additionalBinding: [{ element: 'ssn' }]
                               , distinctValues: true
                               }]
  key MemberId,
  Createdby,
  Createdat,
  Lastchangedby,
  Lastchangedat,
  Locallastchanged,
  /* Associations */
  _Classes.Tier as ClassTier,
  _Members,
  _Instructors
}

