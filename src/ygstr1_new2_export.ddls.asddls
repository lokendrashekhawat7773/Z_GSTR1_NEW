@AbapCatalog.sqlViewName: 'YEXPORTNEW2'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'GSTR1'
define view YGSTR1_NEW2_EXPORT as select from YGSTR1_NEW_EXPORT as a 
inner join I_BillingDocument as B on (B.BillingDocument = a.BillingDocument)
{ 
 key a.BillingDocument,
     a.BillingDocumentItem,
      @Semantics.amount.currencyCode: 'TransactionCurrency' 
     sum(a.NetAmount) as NetAmount,
     a.TaxAmount,
     a.TaxCode,
     a.SoldToParty,
     a.AccountingDocument,
     B.BillingDocumentType,
     B.BillingDocumentDate,
     B.Division, 
     B.DistributionChannel, 
     B.CompanyCode,   
     a.BaseUnit,
     a.Material,
     a.Plant,
     a.PriceDetnExchangeRate,
     a.FiscalYear,
     @Semantics.quantity.unitOfMeasure: 'BaseUnit'
     sum(a.BillingQuantity)  as BillingQuantity,
     a.BillingQuantityUnit,
     a.TransactionCurrency,   
     @Semantics.amount.currencyCode: 'TransactionCurrency'  
     sum(a.IGST) as IGST,
     @Semantics.amount.currencyCode: 'TransactionCurrency'  
     sum(a.UGST) as UGST,
     a.rATE

}
           
group by  
     a.BillingDocument,
     a.BillingDocumentItem,
     a.BillingQuantityUnit,
     a.TaxAmount,
     a.TaxCode,
     a.SoldToParty,
     a.AccountingDocument,
     B.BillingDocumentType,
     B.BillingDocumentDate,
     B.Division,
     B.DistributionChannel,     
     B.CompanyCode,
     a.BaseUnit,
     a.Material,
     a.TransactionCurrency,        
     a.rATE,
     a.Plant,
     a.PriceDetnExchangeRate,
     a.FiscalYear
 
