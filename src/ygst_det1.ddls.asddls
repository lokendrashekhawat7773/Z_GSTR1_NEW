@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'groupby YGST_DET'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity YGST_DET1 as select  from ygst_det
{
    key BillingDocument,
    BillingDocumentItem,
    BillingDocumentDate,
     @Semantics.amount.currencyCode: 'TransactionCurrency' 
    NetAmount,
    @Semantics.amount.currencyCode: 'TransactionCurrency' 
    TaxAmount,
    @Semantics.quantity.unitOfMeasure: 'BillingQuantityUnit' 
    BillingQuantity,
    BillingQuantityUnit,
    TransactionCurrency,
    TaxCode,
    SoldToParty,
    BaseUnit,    
    Material,
    Plant,
    AccountingDocument,
    CompanyCode,
    BillingDocumentType,
    FiscalYear,
    ConditionType,
    ConditionRateValue,
    rATE ,    
     @Semantics.amount.currencyCode: 'TransactionCurrency' 
    ConditionAmount,
    ConditionRateRatio,
    @DefaultAggregation: #SUM
    @Semantics.amount.currencyCode: 'TransactionCurrency' 
     sum( IGST1 )   as IGST,
    @DefaultAggregation: #SUM
     @Semantics.amount.currencyCode: 'TransactionCurrency' 
     sum( CGST1 )  as CGST,
    @DefaultAggregation: #SUM
     @Semantics.amount.currencyCode: 'TransactionCurrency' 
     sum( SGST1 )  as SGST,
    @DefaultAggregation: #SUM
    @Semantics.amount.currencyCode: 'TransactionCurrency' 
     sum( UGST1 )  as UGST
      
    
}
group by 
     BillingDocument,
    BillingDocumentItem,
    BillingDocumentDate,    
    NetAmount,   
    TaxAmount,    
    BillingQuantity,
    BillingQuantityUnit,
    TransactionCurrency,
    TaxCode,
    SoldToParty,
    BaseUnit,
    Material,
    Plant,
    AccountingDocument,
    CompanyCode,
    BillingDocumentType,
    FiscalYear,
    ConditionType,
    ConditionRateValue,   
    ConditionAmount,
    ConditionRateRatio,
    rATE

