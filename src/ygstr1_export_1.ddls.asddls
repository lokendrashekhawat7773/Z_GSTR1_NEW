@AbapCatalog.sqlViewName: 'YEXPORT1'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'GSTR1'
define view YGSTR1_EXPORT_1 as select from I_BillingDocumentItem as A
inner join I_BillingDocument as B on (B.BillingDocument = A.BillingDocument)
inner join I_BillingDocItemPrcgElmntBasic as C on (C.BillingDocument = A.BillingDocument and C.BillingDocumentItem = A.BillingDocumentItem  )
 and (  C.ConditionType = 'ZFOC'
 or C.ConditionType = 'ZEIN' ) 

{
   key A.BillingDocument,
     A.NetAmount,
     A.TaxAmount,
     @Semantics.quantity.unitOfMeasure: 'BaseUnit'
     A.BillingQuantity, 
     A.TransactionCurrency,  
     A.BaseUnit,
     A.Material, 
    C.ConditionType,
      @Semantics.amount.currencyCode: 'TransactionCurrency'   
    case C.ConditionType
    when 'ZFOC' then sum(C.ConditionAmount)  end as FREIGHT_OCEAN,
      @Semantics.amount.currencyCode: 'TransactionCurrency'   
    case C.ConditionType
    when 'ZEIN' then sum(C.ConditionAmount)  end as EXPORT_INS

} where ( B.BillingDocumentType = 'F2' or B.BillingDocumentType = 'CBRE' or B.BillingDocumentType = 'L2' or B.BillingDocumentType = 'G2' )
        and ( B.DistributionChannel = '20')
  group by A.BillingDocument,
     A.NetAmount,
     A.TaxAmount,
     A.BillingQuantity, 
     A.TransactionCurrency,
     C.ConditionType,
     A.BaseUnit,
     A.Material
  
