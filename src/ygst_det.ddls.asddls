@AbapCatalog.sqlViewName: 'YGSDET'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'gst_det'
define view ygst_det as select from I_BillingDocumentItem as A
inner join I_BillingDocument as B on (B.BillingDocument = A.BillingDocument)
left outer join I_BillingDocItemPrcgElmntBasic as C 
on (C.BillingDocument = A.BillingDocument and C.BillingDocumentItem = A.BillingDocumentItem  )
and ( C.ConditionType = 'JOIG'  )

left outer join I_BillingDocItemPrcgElmntBasic as d 
on (  d.BillingDocument = A.BillingDocument and d.BillingDocumentItem = A.BillingDocumentItem  )
and ( d.ConditionType = 'JOCG'  )

left outer join I_BillingDocItemPrcgElmntBasic as e
on (  e.BillingDocument = A.BillingDocument and e.BillingDocumentItem = A.BillingDocumentItem  )
and ( e.ConditionType = 'JOSG'  )

left outer join I_BillingDocItemPrcgElmntBasic as f 
on (  f.BillingDocument = A.BillingDocument and C.BillingDocumentItem = A.BillingDocumentItem  )
and ( f.ConditionType = 'JOUG'  )




 // or C.ConditionType = 'JTC1' //or C.ConditionType = 'ZTCS' ) 

{
   key A.BillingDocument,
     A.BillingDocumentItem,
     A.BillingDocumentDate,
     A.NetAmount,
     A.TaxAmount,
     @Semantics.quantity.unitOfMeasure: 'BaseUnit'
     A.BillingQuantity, 
     A.BillingQuantityUnit,
     A.TransactionCurrency,  
     A.TaxCode,
     A.SoldToParty,
     A.BaseUnit,
     A.Material,
      A.Plant,
     B.AccountingDocument,
     B.CompanyCode,
     B.BillingDocumentType,
     B.FiscalYear,
 //  @Semantics.amount.currencyCode: 'TransactionCurrency'  
    C.ConditionType,
    C.ConditionRateValue,
    C.ConditionAmount,
    C.ConditionRateRatio,
    
    
//    case C.ConditionType
//    when 'JOIG' then
     sum( C.ConditionAmount)   as IGST1,
    @Semantics.amount.currencyCode: 'TransactionCurrency'   
    sum( d.ConditionAmount )  as CGST1,
     @Semantics.amount.currencyCode: 'TransactionCurrency'   
    sum( e.ConditionAmount )  as SGST1,
    @Semantics.amount.currencyCode: 'TransactionCurrency'   
     sum( f.ConditionAmount )  as UGST1,
    @Semantics.amount.currencyCode: 'TransactionCurrency'   
 //   case C.ConditionType
  //  when 'JTC1' then sum(C.ConditionAmount)  end as TCS,

   // when 'ZTCS' then sum(C.ConditionAmount)     end as TCS,
    
     
    case C.ConditionType
    when 'JOIG' then (C.ConditionRateRatio )   
    when 'JOCG' then (C.ConditionRateRatio * 2 ) 
    when 'JOSG' then (C.ConditionRateRatio * 2 ) 
    end as rATE

}
    where (B.BillingDocumentType = 'F2' or B.BillingDocumentType = 'S1' or B.BillingDocumentType = 'JSTO' or
           B.BillingDocumentType = 'G2' or B.BillingDocumentType = 'L2' or B.BillingDocumentType = 'S2' or
           B.BillingDocumentType = 'S3') 
    group by A.BillingDocument,
     A.BillingDocumentItem,
     A.BillingDocumentDate,
     A.NetAmount,
     A.TaxAmount,
     A.BillingQuantityUnit,
     A.BillingQuantity, 
     A.TransactionCurrency,
     C.ConditionType,
     C.ConditionRateRatio,
     C.ConditionAmount,
     C.ConditionRateValue,
     A.TaxCode,
     A.SoldToParty,
     A.BaseUnit,
     A.Material,
     A.Plant,
     B.FiscalYear,
     B.CompanyCode,
     B.BillingDocumentType,
     B.AccountingDocument
     
