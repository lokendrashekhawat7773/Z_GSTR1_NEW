@AbapCatalog.sqlViewName: 'YGSTR1B2CL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'B2CL_GSTR1_REPORT'
define view YGSTR1_N_B2CL as select distinct from YGST_DET1  as A
inner join I_BillingDocument as B on (B.BillingDocument = A.BillingDocument and B.CompanyCode = A.CompanyCode  )
left outer join I_BillingDocument as C on (C.BillingDocument = A.BillingDocument and C.CompanyCode = A.CompanyCode ) and ( C.CancelledBillingDocument <> '' or C.BillingDocumentIsCancelled <> ''  )
left outer join I_Customer as D on ( D.Customer = A.SoldToParty )
left outer join I_OperationalAcctgDocItem as E on E.AccountingDocument = A.AccountingDocument and E.FinancialAccountType = 'D' and E.FiscalYear = A.FiscalYear and E.CompanyCode = A.CompanyCode
left outer join I_ProductPlantBasic as F on ( F.Product = A.Material and F.Plant = A.Plant )
left outer join I_OperationalAcctgDocItem as G on G.AccountingDocument = A.AccountingDocument and G.FinancialAccountType = 'S' and G.FiscalYear  = A.FiscalYear and G.CompanyCode = A.CompanyCode
inner join I_JournalEntry as T on ( T.CompanyCode = E.CompanyCode and T.FiscalYear = E.FiscalYear and T.AccountingDocument = E.AccountingDocument )
inner join I_BusinessUserBasic as t1 on  ( t1.UserID = T.AccountingDocCreatedByUser )
{ 
 key A.BillingDocument,
     A.BillingDocumentItem,
     A.NetAmount,
     A.TaxAmount,
     A.TaxCode,
     A.SoldToParty,
     B.BillingDocumentType,
     B.BillingDocumentDate,
     B.Division,
     B.DistributionChannel,
     A.BaseUnit,
     A.Material,
     A.BillingQuantity,
     A.BillingQuantityUnit,
    // A.ConditionType,
     A.TransactionCurrency, 
     A.AccountingDocument,
     A.FiscalYear,     
    // A.PostingDate,  
     @Semantics.amount.currencyCode: 'TransactionCurrency'  
     sum(A.IGST) as IGST,
     @Semantics.amount.currencyCode: 'TransactionCurrency'  
    sum( A.CGST )   as CGST,
     @Semantics.amount.currencyCode: 'TransactionCurrency'  
     sum( A.SGST )  as SGST,
     @Semantics.amount.currencyCode: 'TransactionCurrency'  
     sum(A.UGST) as UGST,
   //  A.TCS,
     A.rATE,
     D.CustomerName as CustomerFullName,
     D.Region,
     D.TaxNumber3,
    // C.BillingDocumentIsCancelled,
     case //C.CancelledBillingDocument
     when C.CancelledBillingDocument is not null then 'X'
     else
     C.BillingDocumentIsCancelled end as BillingDocumentIsCancelled,
     C.CancelledBillingDocument,
     E.AccountingDocumentType,
     E.AccountingDocumentItem,
     E.PostingDate,
     E.BusinessPlace,
     E.CompanyCode,
     F.ConsumptionTaxCtrlCode,
     G.ProfitCenter,
     T.AccountingDocCreatedByUser,
     t1.PersonFullName
    
       
} where (D.TaxNumber3 = ''  and B.DistributionChannel != '20') 
           
  group by 
     A.BillingDocument,
     A.BillingDocumentItem,
     A.NetAmount,
     A.TaxAmount,
     A.TaxCode,
     A.SoldToParty,
     B.BillingDocumentType,
     B.BillingDocumentDate,
     B.Division,
     B.DistributionChannel,
     A.BaseUnit,
     A.Material,
     A.BillingQuantity,
     A.BillingQuantityUnit,
    // A.ConditionType,
     A.TransactionCurrency, 
     A.AccountingDocument,
     A.FiscalYear,
   //  A.IGST,
    // A.UGST,
   //  A.TCS,
     A.rATE,
     D.CustomerName,
     D.Region,
     D.TaxNumber3,
     C.BillingDocumentIsCancelled,
     C.CancelledBillingDocument,
     E.AccountingDocumentType,
     E.AccountingDocumentItem,
     E.PostingDate,
     E.BusinessPlace,
     E.CompanyCode,
     F.ConsumptionTaxCtrlCode,
     G.ProfitCenter,
     T.AccountingDocCreatedByUser,
     t1.PersonFullName
