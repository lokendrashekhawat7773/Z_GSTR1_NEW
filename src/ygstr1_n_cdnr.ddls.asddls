@AbapCatalog.sqlViewName: 'YGSTR1CDNR'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'YGSTR1_N_CDS'
define view YGSTR1_N_CDNR as select distinct from YGSTR1_CDNR_NEW  as A
inner join I_BillingDocument as B on (B.BillingDocument = A.BillingDocument and B.CompanyCode = A.CompanyCode)
//left outer join I_BillingDocument as C on (C.BillingDocument = A.BillingDocument ) and ( C.CancelledBillingDocument <> '' or C.BillingDocumentIsCancelled <> '' )
left outer join I_Customer as D on ( D.Customer = A.SoldToParty )
left outer join I_OperationalAcctgDocItem as E on E.AccountingDocument = A.AccountingDocument and E.FinancialAccountType = 'D'  and E.CompanyCode = A.CompanyCode
left outer join I_ProductPlantBasic as F on ( F.Product = A.Material and F.Plant = A.Plant )
left outer join I_JournalEntry as G on ( G.AccountingDocument = A.AccountingDocument ) and  ( G.IsReversed <> ' ' or G.ReverseDocument <> ' ' )
inner join I_JournalEntry as T on ( T.CompanyCode = E.CompanyCode and T.FiscalYear = E.FiscalYear and T.AccountingDocument = E.AccountingDocument )
inner join I_BusinessUserBasic as t1 on  ( t1.UserID = T.AccountingDocCreatedByUser )
{ 
 key A.BillingDocument,
     A.NetAmount,
     A.TaxAmount,
     A.TaxCode,
     A.SoldToParty,
     B.BillingDocumentType,
     B.BillingDocumentDate,
     B.Division,
     B.DistributionChannel,
     B.FiscalYear,
     A.BaseUnit,
     A.Material,
     A.BillingQuantity,
     A.BillingQuantityUnit,
    // A.ConditionType,
     A.AccountingDocument,
  //   A.PostingDate,
     A.TransactionCurrency,   
     @Semantics.amount.currencyCode: 'TransactionCurrency'  
     sum(A.IGST) as IGST,
     @Semantics.amount.currencyCode: 'TransactionCurrency'  
    sum( A.CGST )  as  CGST,
     @Semantics.amount.currencyCode: 'TransactionCurrency'  
    sum( A.SGST )  as  SGST,
    @Semantics.amount.currencyCode: 'TransactionCurrency'  
     A.UGST,
   //  A.TCS,     
     A.rATE,
     D.CustomerName as CustomerFullName,
     D.Region,
     D.TaxNumber3,
     ( G.IsReversed ) as BillingDocumentIsCancelled,
    ( G.ReverseDocument ) as CancelledBillingDocument , 
  //   C.BillingDocumentIsCancelled,
  //   C.CancelledBillingDocument,
     E.PostingDate,
     E.BusinessPlace,
     E.CompanyCode,
     F.ConsumptionTaxCtrlCode,
     T.AccountingDocCreatedByUser,
     t1.PersonFullName
    
       
} where (D.TaxNumber3 = '' or D.TaxNumber3 <> '') 
          and  B.DistributionChannel != '20'

          group by
          
          A.BillingDocument,
     A.NetAmount,
     A.TaxAmount,
     A.TaxCode,
     A.SoldToParty,
     B.BillingDocumentType,
     B.BillingDocumentDate,
     B.Division,
     B.DistributionChannel,
     B.FiscalYear,
     A.BaseUnit,
     A.Material,
     A.BillingQuantity,
     A.BillingQuantityUnit,
    // A.ConditionType,
     A.AccountingDocument,
  //   A.PostingDate,
     A.TransactionCurrency,
 //    A.IGST,
      A.UGST,
   //  A.TCS,     
     A.rATE,
     D.CustomerName,
     D.Region,
     D.TaxNumber3,
     G.ReverseDocument,
     G.IsReversed,
 //    C.BillingDocumentIsCancelled,
  //   C.CancelledBillingDocument,
     E.PostingDate,
     E.BusinessPlace,
     E.CompanyCode,
     F.ConsumptionTaxCtrlCode,
     T.AccountingDocCreatedByUser,
     t1.PersonFullName
