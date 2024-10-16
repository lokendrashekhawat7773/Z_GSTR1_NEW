@AbapCatalog.sqlViewName: 'YGSTR1EXPORT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'EXPORT_REPORT'
define view YGSTR1_N_EXPORT  as select distinct from YGSTR1_NEW2_EXPORT  as A
inner join I_BillingDocument as B on (B.BillingDocument = A.BillingDocument and B.CompanyCode = A.CompanyCode )
left outer join I_BillingDocument as C on (C.BillingDocument = A.BillingDocument and C.CompanyCode = A.CompanyCode )and ( C.BillingDocumentIsCancelled <> '' or C.CancelledBillingDocument <> '')
left outer join I_Customer as D on ( D.Customer = A.SoldToParty )
left outer join I_OperationalAcctgDocItem as E on E.AccountingDocument = A.AccountingDocument and E.FinancialAccountType = 'D'  and E.FiscalYear = A.FiscalYear and E.CompanyCode = A.CompanyCode
left outer join I_ProductPlantBasic as F on ( F.Product = A.Material and F.Plant = A.Plant  )
left outer join YGSTR1_EXPORT_2 as H on ( H.BillingDocument = A.BillingDocument and H.Material = A.Material and H.CompanyCode = A.CompanyCode )
inner join I_JournalEntry as T on ( T.CompanyCode = E.CompanyCode and T.FiscalYear = E.FiscalYear and T.AccountingDocument = E.AccountingDocument )
inner join I_BusinessUserBasic as t1 on  ( t1.UserID = T.AccountingDocCreatedByUser )
{ 
 key A.BillingDocument,
     A.BillingDocumentItem,
     @Semantics.amount.currencyCode: 'CompanyCodeCurrency' 
     sum(A.NetAmount) as NetAmount,     
     A.TaxAmount,
     A.TaxCode,
     A.SoldToParty,
     B.BillingDocumentType,
     B.BillingDocumentDate,
     B.Division, 
     B.DistributionChannel,    
     A.BaseUnit,
     A.Material,
     A.AccountingDocument,
     A.PriceDetnExchangeRate,
     A.FiscalYear,
     @Semantics.quantity.unitOfMeasure: 'BaseUnit'
     sum(A.BillingQuantity) as BillingQuantity,
     A.TransactionCurrency,     
     @Semantics.amount.currencyCode: 'TransactionCurrency'  
     sum(A.IGST) as IGST, 
     @Semantics.amount.currencyCode: 'TransactionCurrency'  
     sum(A.UGST) as UGST,     
     @Semantics.amount.currencyCode: 'TransactionCurrency'  
     sum(H.FREIGHT_OCEAN) as FREIGHT_OCEAN,     
     @Semantics.amount.currencyCode: 'TransactionCurrency'  
     sum(H.EXPORT_INS) as EXPORT_INS,
     A.BillingQuantityUnit,
     A.rATE,
     D.CustomerName as CustomerFullName,
     E.CompanyCodeCurrency,
     D.Region,
     D.TaxNumber3,
//   @Semantics.amount.currencyCode: 'CompanyCodeCurrency'
//     ( ( h.EXPORT_INS + h.FREIGHT_OCEAN + H.NetAmount ) * a.PriceDetnExchangeRate ) as Amt_INR,
 //    C.BillingDocumentIsCancelled,
     C.CancelledBillingDocument ,  
     E.AccountingDocumentType,
     E.AccountingDocumentItem,  
     E.PostingDate,
     E.BusinessPlace,
     E.CompanyCode,
     E.ProfitCenter,
     E.AmountInCompanyCodeCurrency,
     F.ConsumptionTaxCtrlCode,
     T.AccountingDocCreatedByUser,
     t1.PersonFullName,
     E.IN_GSTPlaceOfSupply     as PlaceofSupply,
     case //C.CancelledBillingDocument
      when C.CancelledBillingDocument is not null then 'X'
      else
      C.BillingDocumentIsCancelled end as BillingDocumentIsCancelled
       
} where ( B.DistributionChannel = '20') 
group by 
     A.BillingDocument,
     A.BillingDocumentItem,
     A.BillingQuantityUnit,
   //  A.NetAmount,
     A.TaxAmount,
     A.TaxCode,
     A.SoldToParty,
     B.BillingDocumentType,
     B.BillingDocumentDate,
     B.Division, 
     B.DistributionChannel,    
     A.BaseUnit,
     A.Material,
     A.AccountingDocument,
     A.PriceDetnExchangeRate,
     A.FiscalYear,
    // A.BillingQuantity,
     A.TransactionCurrency, 
     A.rATE,
     D.CustomerName,
     E.CompanyCodeCurrency,
     D.Region,
     D.TaxNumber3,
     E.PostingDate,
     E.BusinessPlace,
     E.CompanyCode,
     E.ProfitCenter,
     E.AccountingDocumentType,
     E.AccountingDocumentItem,
     E.AmountInCompanyCodeCurrency,
     F.ConsumptionTaxCtrlCode,
     T.AccountingDocCreatedByUser,
     t1.PersonFullName,
     C.BillingDocumentIsCancelled,
     C.CancelledBillingDocument , 
     E.IN_GSTPlaceOfSupply
