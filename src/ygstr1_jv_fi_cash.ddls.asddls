@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'YGSTR1_JV_DOCUMENT'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity YGSTR1_JV_FI_CASH
  as select distinct from    I_OperationalAcctgDocItem as a
    left outer join I_JournalEntry            as b on  b.CompanyCode        = a.CompanyCode
                                                   and b.FiscalYear         = a.FiscalYear
                                                   and b.AccountingDocument = a.AccountingDocument
   left outer join I_JournalEntry   as       f on f.CompanyCode        = a.CompanyCode
                                                   and f.FiscalYear         = a.FiscalYear
                                                   and f.AccountingDocument = a.AccountingDocument    
                                                   and ( f.IsReversed <> ' ' or f.IsReversal <> ' ' )
  left outer join I_OperationalAcctgDocItem as C on  C.CompanyCode       = a.CompanyCode
                                                 and C.FiscalYear         = a.FiscalYear
                                                 and C.AccountingDocument = a.AccountingDocument    
                                                 and (  C.FinancialAccountType = 'S'  and C.SpecialGLCode = 'A' )                                                          
   left outer join I_Customer            as    G on  G.Customer = C.Customer
   inner join I_BusinessUserBasic as t on t.UserID = f.AccountingDocCreatedByUser
   left outer join YTAX_CODECDS          as    E on  E.Taxcode = a.TaxCode                                              
                                                   
{
  key a.CompanyCode,
  key a.FiscalYear,
  key a.AccountingDocument,
      a.AccountingDocumentItem,
      a.PostingDate,
      a.ProfitCenter,
      a.AccountingDocumentType,
      a.CompanyCodeCurrency,
      a.TransactionCurrency,
      @Semantics.amount.currencyCode: 'TransactionCurrency'
      case a.TransactionTypeDetermination when 'JOC' then
      ( a.AmountInTransactionCurrency )  end as CGST,
      @Semantics.amount.currencyCode: 'CompanyCodeCurrency'
      case a.TransactionTypeDetermination when 'JOS' then
      ( a.AmountInTransactionCurrency )  end as SGST,
      @Semantics.amount.currencyCode: 'TransactionCurrency'
      case a.TransactionTypeDetermination when 'JOI' then
      ( a.AmountInTransactionCurrency )  end as IGST,
      //a.TaxBaseAmountInTransCrcy,
      @Semantics.amount.currencyCode: 'CompanyCodeCurrency'
      a.TaxBaseAmountInCoCodeCrcy,
     // @Semantics.amount.currencyCode: 'CompanyCodeCurrency'
   //   a.OriglTaxBaseAmountInCoCodeCrcy,
      @EndUserText.label: 'Line Item ID'
      a.AccountingDocumentItemType,
      a.TaxItemGroup,
      a.FinancialAccountType,
      a.TransactionTypeDetermination,
      a.TaxCode,
      a.BillingDocument,
      a.IN_HSNOrSACCode,
      a.Product,
      C.Customer,
      C.BusinessPlace,
      b.DocumentReferenceID,
      b.TransactionCode,
      E.gstrate,
      E.Taxcodedescription,
      f.IsReversal,
      f.IsReversed,
      f.ReversalReferenceDocument,
      f.AccountingDocCreatedByUser,
      t.PersonFullName,
      G.TaxNumber3,
      G.Region,
      G.CustomerName
      
}
where
  (
    a.AccountingDocumentType =    'SK'   
  )
  and(
        b.TransactionCode        like 'FB%'
    
  )
  and(
       b.TransactionCode != 'FB60'
    or b.TransactionCode != 'FB65'
  ) 
  and
         ( a.AccountingDocumentItemType = 'T' )
       and  
        ( a.TransactionTypeDetermination = 'JOC' or
          a.TransactionTypeDetermination = 'JOS' or
          a.TransactionTypeDetermination = 'JOI'  )
  
/*  group by
      a.CompanyCode,
      a.FiscalYear,
      a.AccountingDocument,
      a.AccountingDocumentItem,
      a.PostingDate,
      a.AccountingDocumentType,
      a.CompanyCodeCurrency,
      a.TransactionCurrency,
      a.AccountingDocumentItemType,
      a.TaxItemGroup,
      a.FinancialAccountType,
      a.TransactionTypeDetermination,
      a.TaxBaseAmountInCoCodeCrcy,
      a.TaxCode,
      a.BillingDocument,
      a.IN_HSNOrSACCode,
      a.Product,
      a.Customer,
      b.DocumentReferenceID,
      b.TransactionCode,
      f.IsReversal,
      f.IsReversed  */
