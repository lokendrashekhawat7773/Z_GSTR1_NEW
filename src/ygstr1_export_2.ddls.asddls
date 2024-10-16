@AbapCatalog.sqlViewName: 'YEXPORTGST2'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'GSTR1'
define view YGSTR1_EXPORT_2 as select from YGSTR1_EXPORT_1 as A
inner join I_BillingDocument as B on (B.BillingDocument = A.BillingDocument)
{ 
 key A.BillingDocument,
  A.TransactionCurrency,
  A.Material,
  A.BaseUnit,
  B.CompanyCode,   
  @Semantics.quantity.unitOfMeasure: 'BaseUnit'
  sum(A.BillingQuantity) as BillingQuantity,
  @Semantics.amount.currencyCode: 'TransactionCurrency'  
  sum(A.NetAmount) as NetAmount,      
  @Semantics.amount.currencyCode: 'TransactionCurrency'  
  sum(A.FREIGHT_OCEAN) as FREIGHT_OCEAN,     
  @Semantics.amount.currencyCode: 'TransactionCurrency'  
  sum(A.EXPORT_INS) as EXPORT_INS    
       
} where ( B.DistributionChannel = '20') 
group by 
A.BillingDocument,
A.TransactionCurrency,
A.Material,
A.BaseUnit,
B.CompanyCode
