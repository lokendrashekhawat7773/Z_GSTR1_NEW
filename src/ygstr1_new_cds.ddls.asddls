@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'GSTR1_NEW_CDS'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity YGSTR1_NEW_CDS
as select distinct  from YGSTR1_DATA as YY1_SALES_DATA
association[0..*] to I_BillingDocumentItemPrcgElmnt as _I_BillingDocumentItemPrcgElmn on _I_BillingDocumentItemPrcgElmn.BillingDocumentItem = YY1_SALES_DATA.BillingDocumentItem
and _I_BillingDocumentItemPrcgElmn.BillingDocument = YY1_SALES_DATA.BillingDocument
and _I_BillingDocumentItemPrcgElmn.ConditionType = 'ZR00'
and _I_BillingDocumentItemPrcgElmn.ConditionInactiveReason = ''
association[0..*] to I_BillingDocumentItemPrcgElmnt as _I_BillingDocumentItemPrcgE_1 on _I_BillingDocumentItemPrcgE_1.BillingDocumentItem = YY1_SALES_DATA.BillingDocumentItem
and _I_BillingDocumentItemPrcgE_1.BillingDocument = YY1_SALES_DATA.BillingDocument
and _I_BillingDocumentItemPrcgE_1.ConditionType = 'JOIG'
association[0..*] to I_BillingDocumentItemPrcgElmnt as _I_BillingDocumentItemPrcgE_2 on _I_BillingDocumentItemPrcgE_2.BillingDocumentItem = YY1_SALES_DATA.BillingDocumentItem
and _I_BillingDocumentItemPrcgE_2.BillingDocument = YY1_SALES_DATA.BillingDocument
and _I_BillingDocumentItemPrcgE_2.ConditionType = 'JOSG'
association[0..*] to I_BillingDocumentItemPrcgElmnt as _I_BillingDocumentItemPrcgE_3 on _I_BillingDocumentItemPrcgE_3.BillingDocumentItem = YY1_SALES_DATA.BillingDocumentItem
and _I_BillingDocumentItemPrcgE_3.BillingDocument = YY1_SALES_DATA.BillingDocument
and _I_BillingDocumentItemPrcgE_3.ConditionType = 'JOCG'
association[0..*] to I_BillingDocumentItemPrcgElmnt as _I_BillingDocumentItemPrcgE_4 on _I_BillingDocumentItemPrcgE_4.BillingDocumentItem = YY1_SALES_DATA.BillingDocumentItem
and _I_BillingDocumentItemPrcgE_4.BillingDocument = YY1_SALES_DATA.BillingDocument
and _I_BillingDocumentItemPrcgE_4.ConditionType = 'JOUG'
association[0..*] to I_BillingDocumentItemPrcgElmnt as _I_BillingDocumentItemPrcgE_5 on _I_BillingDocumentItemPrcgE_5.BillingDocumentItem = YY1_SALES_DATA.BillingDocumentItem
and _I_BillingDocumentItemPrcgE_5.BillingDocument = YY1_SALES_DATA.BillingDocument
and _I_BillingDocumentItemPrcgE_5.ConditionType = 'ZEIG'
association[0..*] to I_BillingDocumentItemPrcgElmnt as _I_BillingDocumentItemPrcgE_6 on _I_BillingDocumentItemPrcgE_6.BillingDocumentItem = YY1_SALES_DATA.BillingDocumentItem
and _I_BillingDocumentItemPrcgE_6.BillingDocument = YY1_SALES_DATA.BillingDocument
and _I_BillingDocumentItemPrcgE_6.ConditionType = 'ZEIR'
association[0..1] to I_Customer as _I_Customer on _I_Customer.Customer = YY1_SALES_DATA.Customer
association[0..1] to I_Customer as _I_Customer_1 on _I_Customer_1.Customer = YY1_SALES_DATA.Customer_1
association[0..1] to I_Supplier as _I_Supplier on _I_Supplier.Supplier = YY1_SALES_DATA.Supplier
association[0..1] to I_Supplier as _I_Supplier_1 on _I_Supplier_1.Supplier = YY1_SALES_DATA.Supplier_1
//association[0..1] to I_ProductPlant as _I_ProductPlant on _I_ProductPlant.Plant = YY1_SALES_DATA.Plant
//and _I_ProductPlant.Product = YY1_SALES_DATA.Material
association[0..*] to I_BillingDocumentItemPrcgElmnt as _I_BillingDocumentItemPrcgE_7 on _I_BillingDocumentItemPrcgE_7.BillingDocumentItem = YY1_SALES_DATA.BillingDocumentItem
and _I_BillingDocumentItemPrcgE_7.BillingDocument = YY1_SALES_DATA.BillingDocument
and _I_BillingDocumentItemPrcgE_7.ConditionType = 'ZFOC'
association[0..*] to I_BillingDocumentItemPrcgElmnt as _I_BillingDocumentItemPrcgE_8 on _I_BillingDocumentItemPrcgE_8.BillingDocumentItem = YY1_SALES_DATA.BillingDocumentItem
and _I_BillingDocumentItemPrcgE_8.BillingDocument = YY1_SALES_DATA.BillingDocument
and _I_BillingDocumentItemPrcgE_8.ConditionType = 'ZFDO'
association[0..*] to I_BillingDocumentItemPrcgElmnt as _I_BillingDocumentItemPrcgE_9 on _I_BillingDocumentItemPrcgE_9.BillingDocumentItem = YY1_SALES_DATA.BillingDocumentItem
and _I_BillingDocumentItemPrcgE_9.BillingDocument = YY1_SALES_DATA.BillingDocument
and _I_BillingDocumentItemPrcgE_9.ConditionType = 'ZLDA'
association[0..*] to I_BillingDocumentItemPrcgElmnt as _I_BillingDocumentItemPrcgE10 on _I_BillingDocumentItemPrcgE10.BillingDocumentItem = YY1_SALES_DATA.BillingDocumentItem
and _I_BillingDocumentItemPrcgE10.BillingDocument = YY1_SALES_DATA.BillingDocument
and _I_BillingDocumentItemPrcgE10.ConditionType = 'ZTCS'
association[0..*] to yirn_det as _yirn_det on _yirn_det.Docno = YY1_SALES_DATA.BillingDocument
association[0..1] to I_DeliveryDocumentItem as _I_DeliveryDocumentItem on _I_DeliveryDocumentItem.DeliveryDocument = $projection.ReferenceSDDocument
and _I_DeliveryDocumentItem.DeliveryDocumentItem = $projection.ReferenceSDDocumentItem
association[0..*] to I_BillingDocumentItemPrcgElmnt as _I_BillingDocumentItemPrcgE11 on _I_BillingDocumentItemPrcgE11.BillingDocumentItem = _I_BillingDocumentItemPrcgE11.BillingDocumentItem
and _I_BillingDocumentItemPrcgE11.BillingDocument = _I_BillingDocumentItemPrcgE11.BillingDocument
and _I_BillingDocumentItemPrcgE11.ConditionType = 'ZINS'
association[0..*] to I_BillingDocumentItemPrcgElmnt as _I_BillingDocumentItemPrcgE12 on _I_BillingDocumentItemPrcgE12.BillingDocumentItem = YY1_SALES_DATA.BillingDocumentItem
and _I_BillingDocumentItemPrcgE12.BillingDocument = YY1_SALES_DATA.BillingDocument
and _I_BillingDocumentItemPrcgE12.ConditionType = 'ZEIN'
association[0..*] to I_BillingDocumentItemPrcgElmnt as _I_BillingDocumentItemPrcgE13 on _I_BillingDocumentItemPrcgE13.BillingDocumentItem = YY1_SALES_DATA.BillingDocumentItem
and _I_BillingDocumentItemPrcgE13.BillingDocument = YY1_SALES_DATA.BillingDocument
and _I_BillingDocumentItemPrcgE13.ConditionType = 'ZDIN'
association[0..*] to I_BillingDocumentItemPrcgElmnt as _I_BillingDocumentItemPrcgE14 on _I_BillingDocumentItemPrcgE14.BillingDocumentItem = YY1_SALES_DATA.BillingDocumentItem
and _I_BillingDocumentItemPrcgE14.BillingDocument = YY1_SALES_DATA.BillingDocument
and _I_BillingDocumentItemPrcgE14.ConditionType = 'ZEIN'
association[0..*] to I_BillingDocumentItemPrcgElmnt as _I_BillingDocumentItemPrcgE15 on _I_BillingDocumentItemPrcgE15.BillingDocumentItem = YY1_SALES_DATA.BillingDocumentItem
and _I_BillingDocumentItemPrcgE15.BillingDocument = YY1_SALES_DATA.BillingDocument
and _I_BillingDocumentItemPrcgE15.ConditionType = 'ZFFA'
association[0..*] to I_BillingDocumentItemPrcgElmnt as _I_BillingDocumentItemPrcgE16 on _I_BillingDocumentItemPrcgE16.BillingDocumentItem = YY1_SALES_DATA.BillingDocumentItem
and _I_BillingDocumentItemPrcgE16.BillingDocument = YY1_SALES_DATA.BillingDocument
and _I_BillingDocumentItemPrcgE16.ConditionType = 'ZAG4'
association[0..*] to I_BillingDocumentItemPrcgElmnt as _I_BillingDocumentItemPrcgE17 on _I_BillingDocumentItemPrcgE17.BillingDocumentItem = YY1_SALES_DATA.BillingDocumentItem
and _I_BillingDocumentItemPrcgE17.BillingDocument = YY1_SALES_DATA.BillingDocument
and _I_BillingDocumentItemPrcgE17.ConditionType = 'ZAG5'
association[0..*] to I_BillingDocumentItemPrcgElmnt as _I_BillingDocumentItemPrcgE18 on _I_BillingDocumentItemPrcgE18.BillingDocumentItem = YY1_SALES_DATA.BillingDocumentItem
and _I_BillingDocumentItemPrcgE18.BillingDocument = YY1_SALES_DATA.BillingDocument
and _I_BillingDocumentItemPrcgE18.ConditionType = 'JTC1'
association[0..*] to I_BillingDocumentItemPrcgElmnt as _I_BillingDocumentItemPrcgE19 on _I_BillingDocumentItemPrcgE19.BillingDocumentItem = YY1_SALES_DATA.BillingDocumentItem
and _I_BillingDocumentItemPrcgE19.BillingDocument = YY1_SALES_DATA.BillingDocument
and _I_BillingDocumentItemPrcgE19.ConditionType = 'ZDIS'
association[0..1] to I_Supplier as _I_Supplier_2 on _I_Supplier_2.Supplier = YY1_SALES_DATA.Supplier_2

{
@EndUserText.label: 'Billing Document'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
key YY1_SALES_DATA.BillingDocument as BillingDocument,

@EndUserText.label: 'Basic Condition'
@ObjectModel.foreignKey.association: '_PricingConditionType'
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgElmn.ConditionType as ConditionType,

@EndUserText.label: 'Basic Value Per'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgElmn.ConditionRateValue as ConditionRateValue,

@EndUserText.label: 'Basic Value'
@Semantics.amount.currencyCode: 'TransactionCurrency'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null

@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgElmn.ConditionAmount as ConditionAmount,

@EndUserText.label: 'Document Currency'
@ObjectModel.foreignKey.association: '_Currency'
@ObjectModel.text.association: null
@ObjectModel.text.element: null
@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgElmn.TransactionCurrency as TransactionCurrency,

@EndUserText.label: 'Application'
@ObjectModel.foreignKey.association: '_ConditionApplication'
@ObjectModel.text.association: null
@ObjectModel.text.element: null
@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgElmn.ConditionApplication as ConditionApplication,

@EndUserText.label: 'Billing Type'
@ObjectModel.foreignKey.association: '_BillingDocumentType'
@ObjectModel.text.association: null
@ObjectModel.text.element: null
@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.BillingDocumentType as BillingDocumentType,

@EndUserText.label: 'Created On'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null
@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.CreationDate as CreationDate,

@EndUserText.label: 'Created By'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.CreatedByUser as CreatedByUser,

@EndUserText.label: 'Billing Date'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.BillingDocumentDate as BillingDocumentDate,

@EndUserText.label: 'Item'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: [ 'BillingDocumentItemText' ]


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.BillingDocumentItem as BillingDocumentItem,

@EndUserText.label: 'Material'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.Material as Material,

@EndUserText.label: 'Bill to Customer'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.Customer as Customer,

@EndUserText.label: 'Bill to Address Number'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.AddressID as AddressID,

@EndUserText.label: 'Item Description'
@Semantics.text: true
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.BillingDocumentItemText as BillingDocumentItemText,

@EndUserText.label: 'Bill to Partner Function'
@ObjectModel.foreignKey.association: '_PartnerFunction'
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.PartnerFunction as PartnerFunction,

@EndUserText.label: 'Bill to Name of Customer'
@Semantics.text: true
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.CustomerName as CustomerName,

@EndUserText.label: 'Bill to Customer Name'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.CustomerFullName as CustomerFullName,

@EndUserText.label: 'Ship to Partner Function'
@ObjectModel.foreignKey.association: '_PartnerFunction_1'
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.PartnerFunction_1 as PartnerFunction_1,

@EndUserText.label: 'Ship to Customer'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.Customer_1 as Customer_1,

@EndUserText.label: 'Ship to Address Number'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.AddressID_1 as AddressID_1,

@EndUserText.label: 'Plant'
@ObjectModel.foreignKey.association: '_Plant'
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.Plant as Plant,

@EndUserText.label: 'Billed Quantity'
@Semantics.quantity.unitOfMeasure: 'BillingQuantityUnit'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.BillingQuantity as BillingQuantity,

@EndUserText.label: 'Sales Unit'
@ObjectModel.foreignKey.association: '_BillingQuantityUnit'
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.BillingQuantityUnit as BillingQuantityUnit,

@EndUserText.label: 'Net Value'
@Semantics.amount.currencyCode: 'TransactionCurrency'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.NetAmount as NetAmount,

@EndUserText.label: 'Tax Amount'
@Semantics.amount.currencyCode: 'TransactionCurrency'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.TaxAmount as TaxAmount,

@EndUserText.label: 'Delivery Document'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.ReferenceSDDocument as ReferenceSDDocument,

@EndUserText.label: 'Delivery Item'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.ReferenceSDDocumentItem as ReferenceSDDocumentItem,

@EndUserText.label: 'Sales Document'
@ObjectModel.foreignKey.association: '_SalesDocument'
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.SalesDocument as SalesDocument,

@EndUserText.label: 'Sales Document Item'
@ObjectModel.foreignKey.association: '_SalesDocumentItem'
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.SalesDocumentItem as SalesDocumentItem,

@EndUserText.label: 'Document Currency'
@ObjectModel.foreignKey.association: '_TransactionCurrency'
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.TransactionCurrency as TransactionCurrency_1,

@EndUserText.label: 'JOIG'
@ObjectModel.foreignKey.association: '_PricingConditionType_1'
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_1.ConditionType as ConditionType_1,

@EndUserText.label: 'JOIG %'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_1.ConditionRateValue as ConditionRateValue_1,

@EndUserText.label: 'JOIG Value'
@Semantics.amount.currencyCode: 'TransactionCurrency'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_1.ConditionAmount as ConditionAmount_1,

@EndUserText.label: 'JOSG'
@ObjectModel.foreignKey.association: '_PricingConditionType_2'
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_2.ConditionType as ConditionType_2,

@EndUserText.label: 'JOSG %'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_2.ConditionRateValue as ConditionRateValue_2,

@EndUserText.label: 'JOSG Value'
@Semantics.amount.currencyCode: 'TransactionCurrency'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_2.ConditionAmount as ConditionAmount_2,

@EndUserText.label: 'JOSG Tax Code'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_2.TaxCode as TaxCode_1,

@EndUserText.label: 'JOIG Tax Code'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_1.TaxCode as TaxCode_2,

@EndUserText.label: 'JOCG'
@ObjectModel.foreignKey.association: '_PricingConditionType_3'
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_3.ConditionType as ConditionType_3,

@EndUserText.label: 'JOCG %'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_3.ConditionRateValue as ConditionRateValue_3,

@EndUserText.label: 'JOCG Tax Code'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_3.TaxCode as TaxCode_3,

@EndUserText.label: 'JOCG Value'
@Semantics.amount.currencyCode: 'TransactionCurrency'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_3.ConditionAmount as ConditionAmount_3,

@EndUserText.label: 'JOUG'
@ObjectModel.foreignKey.association: '_PricingConditionType_4'
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_4.ConditionType as ConditionType_4,

@EndUserText.label: 'JOUG %'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_4.ConditionRateValue as ConditionRateValue_4,

@EndUserText.label: 'JOUG Tax Code'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_4.TaxCode as TaxCode_4,

@EndUserText.label: 'JOUG Value'
@Semantics.amount.currencyCode: 'TransactionCurrency'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_4.ConditionAmount as ConditionAmount_4,

@EndUserText.label: 'ZEIG'
@ObjectModel.foreignKey.association: '_PricingConditionType_5'
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_5.ConditionType as ConditionType_5,

@EndUserText.label: 'ZEIG %'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_5.ConditionRateValue as ConditionRateValue_5,

@EndUserText.label: 'ZEIG Tax Code'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_5.TaxCode as TaxCode_5,

@EndUserText.label: 'ZEIG Value'
@Semantics.amount.currencyCode: 'TransactionCurrency'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_5.ConditionAmount as ConditionAmount_5,

@EndUserText.label: 'ZEIR'
@ObjectModel.foreignKey.association: '_PricingConditionType_6'
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_6.ConditionType as ConditionType_6,

@EndUserText.label: 'ZEIR %'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_6.ConditionRateValue as ConditionRateValue_6,

@EndUserText.label: 'ZEIR Tax Code'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_6.TaxCode as TaxCode,

@EndUserText.label: 'ZEIR Value'
@Semantics.amount.currencyCode: 'TransactionCurrency'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_6.ConditionAmount as ConditionAmount_6,

@EndUserText.label: 'Application'
@ObjectModel.foreignKey.association: '_ConditionApplication_1'
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_1.ConditionApplication as ConditionApplication_1,

@EndUserText.label: 'Application'
@ObjectModel.foreignKey.association: '_ConditionApplication_2'
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_2.ConditionApplication as ConditionApplication_2,

@EndUserText.label: 'Application'
@ObjectModel.foreignKey.association: '_ConditionApplication_3'
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_3.ConditionApplication as ConditionApplication_3,

@EndUserText.label: 'Application'
@ObjectModel.foreignKey.association: '_ConditionApplication_4'
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_4.ConditionApplication as ConditionApplication_4,

@EndUserText.label: 'Application'
@ObjectModel.foreignKey.association: '_ConditionApplication_5'
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_5.ConditionApplication as ConditionApplication_5,

@EndUserText.label: 'Application'
@ObjectModel.foreignKey.association: '_ConditionApplication_6'
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_6.ConditionApplication as ConditionApplication_6,

@EndUserText.label: 'Bill to Customer'
@Semantics.text: true
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_Customer.CustomerName as CustomerName_1,

@EndUserText.label: 'Bill to Customer Name'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_Customer.CustomerFullName as CustomerFullName_1,

@EndUserText.label: 'Bill to GST'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_Customer.TaxNumber3 as TaxNumber3,

@EndUserText.label: 'Bill to Country/Region Key'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_Customer.Country as Country,

@EndUserText.label: 'Bill to Postal Code'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_Customer.PostalCode as PostalCode,

@EndUserText.label: 'Bill to City'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_Customer.CityName as CityName,

@EndUserText.label: 'Bill to Street'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_Customer.StreetName as StreetName,

@EndUserText.label: 'Bill to Region'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_Customer.Region as Region,

@EndUserText.label: 'Ship to Name of Customer'
@Semantics.text: true
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_Customer_1.CustomerName as CustomerName_2,

@EndUserText.label: 'Ship to Customer Name'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_Customer_1.CustomerFullName as CustomerFullName_2,

@EndUserText.label: 'Ship to GST'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_Customer_1.TaxNumber3 as TaxNumber3_1,

@EndUserText.label: 'Ship to Country/Region Key'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_Customer_1.Country as Country_1,

@EndUserText.label: 'Ship to City'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_Customer_1.CityName as CityName_1,

@EndUserText.label: 'Ship to Postal Code'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_Customer_1.PostalCode as PostalCode_1,

@EndUserText.label: 'Ship to Street'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_Customer_1.StreetName as StreetName_1,

@EndUserText.label: 'Ship to Region'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_Customer_1.Region as Region_1,

@EndUserText.label: 'Ship to City Code'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_Customer_1.CityCode as CityCode,

@EndUserText.label: 'Ship to County Code'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_Customer_1.County as County,

@EndUserText.label: 'Transporter Partner Function'
@ObjectModel.foreignKey.association: '_PartnerFunction_2'
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.PartnerFunction_2 as PartnerFunction_2,

@EndUserText.label: 'Transporter Code'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.Supplier as Supplier,

@EndUserText.label: 'Agent Code'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.Supplier_1 as Supplier_1,

@EndUserText.label: 'Agent Partner Function'
@ObjectModel.foreignKey.association: '_PartnerFunction_3'
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.PartnerFunction_3 as PartnerFunction_3,

@EndUserText.label: 'Transporter Name'
@Semantics.text: true
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_Supplier.SupplierName as SupplierName,

@EndUserText.label: 'Transporter Full Name'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_Supplier.SupplierFullName as SupplierFullName,

@EndUserText.label: 'Transporter GST'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_Supplier.TaxNumber3 as TaxNumber3_2,

@EndUserText.label: 'Transporter Region'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_Supplier.Region as Region_2,

@EndUserText.label: 'Transporter City'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_Supplier.CityName as CityName_2,

@EndUserText.label: 'Transporter Postal Code'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_Supplier.PostalCode as PostalCode_2,

@EndUserText.label: 'Transporter Street'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_Supplier.StreetName as StreetName_2,

@EndUserText.label: 'Transporter Country/Region Key'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_Supplier.Country as Country_2,

@EndUserText.label: 'Agent Name 1'
@Semantics.text: true
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_Supplier_1.SupplierName as SupplierName_1,

@EndUserText.label: 'Agent Full Name 1'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_Supplier_1.SupplierFullName as SupplierFullName_1,

@EndUserText.label: 'Agent GST'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_Supplier_1.TaxNumber3 as TaxNumber3_3,

@EndUserText.label: 'Agent Region'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_Supplier_1.Region as Region_3,

@EndUserText.label: 'Agent City'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_Supplier_1.CityName as CityName_3,

@EndUserText.label: 'Agent Postal Code'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_Supplier_1.PostalCode as PostalCode_3,

@EndUserText.label: 'Agent Street'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_Supplier_1.StreetName as StreetName_3,

@EndUserText.label: 'Agent Country/Region Key'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_Supplier_1.Country as Country_3,

@EndUserText.label: 'Control code'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
//_I_ProductPlant.ConsumptionTaxCtrlCode as ConsumptionTaxCtrlCode,



YY1_SALES_DATA.SalesOrganization as SalesOrganization,

@EndUserText.label: 'Distribution Channel'
@ObjectModel.foreignKey.association: '_DistributionChannel'
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.DistributionChannel as DistributionChannel,

@EndUserText.label: 'Division'
@ObjectModel.foreignKey.association: '_Division'
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.Division as Division,

@EndUserText.label: 'Product'
@ObjectModel.foreignKey.association: '_Product'
@ObjectModel.text.association: '_ProductText'
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.Product as Product,

@EndUserText.label: 'LR Date'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.YY1_LRDate_BDH as YY1_LRDate_BDH,

@EndUserText.label: 'LR Number'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.YY1_LRNumber_BDH as YY1_LRNumber_BDH,

@EndUserText.label: 'Remarks'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.YY1_Remarks_BDH as YY1_Remarks_BDH,

@EndUserText.label: 'RFID Number'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
//YY1_SALES_DATA.YY1_RFIDNumber_BDH as YY1_RFIDNumber_BDH,  //field not added
//
//@EndUserText.label: 'Port State Code'
//@ObjectModel.foreignKey.association: null
//@ObjectModel.text.association: null
//@ObjectModel.text.element: null
//
//
//@Consumption.hidden: false
//@Analytics.excludeFromRuntimeExtensibility: false
//@Consumption.filter.mandatory: false
//@Consumption.filter.multipleSelections: false
//@Consumption.filter.selectionType: null
//@Aggregation.default: null
//YY1_SALES_DATA.YY1_PortStateCode_BDH as YY1_PortStateCode_BDH,  // field not added
//
//@EndUserText.label: 'PreCarrier By/Transport Mode'
//@ObjectModel.text.association: null
//@ObjectModel.text.element: null
//
//
//@Consumption.hidden: false
//@Analytics.excludeFromRuntimeExtensibility: false
//@Consumption.filter.mandatory: false
//@Consumption.filter.multipleSelections: false
//@Consumption.filter.selectionType: null
//@Aggregation.default: null
YY1_SALES_DATA.YY1_PreCarrierByTransp_BDH as YY1_PreCarrierByTransp_BDH,

@EndUserText.label: 'Place of Receipt by PreCarrier'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.YY1_PreCarrier_BDH as YY1_PreCarrier_BDH,

@EndUserText.label: 'Port Pin Code'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
//YY1_SALES_DATA.YY1_PortPinCode_BDH as YY1_PortPinCode_BDH,
//
//@EndUserText.label: 'Vessel/Flight No'
//@ObjectModel.foreignKey.association: null
//@ObjectModel.text.association: null
//@ObjectModel.text.element: null
//
//
//@Consumption.hidden: false
//@Analytics.excludeFromRuntimeExtensibility: false
//@Consumption.filter.mandatory: false
//@Consumption.filter.multipleSelections: false
//@Consumption.filter.selectionType: null
//@Aggregation.default: null
//YY1_SALES_DATA.YY1_VesselFlightNo_BDH as YY1_VesselFlightNo_BDH,
//
//@EndUserText.label: 'LC Date'
//@ObjectModel.foreignKey.association: null
//@ObjectModel.text.association: null
//@ObjectModel.text.element: null
//
//
//@Consumption.hidden: false
//@Analytics.excludeFromRuntimeExtensibility: false
//@Consumption.filter.mandatory: false
//@Consumption.filter.multipleSelections: false
//@Consumption.filter.selectionType: null
//@Aggregation.default: null
YY1_SALES_DATA.YY1_LCDate_BDH as YY1_LCDate_BDH,

@EndUserText.label: 'LC No.'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.YY1_LCNo_BDH as YY1_LCNo_BDH,

@EndUserText.label: 'Line Seal Number'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
//YY1_SALES_DATA.YY1_LineSealNumber_BDH as YY1_LineSealNumber_BDH,
//
//@EndUserText.label: 'EPCG/MIES No'
//@ObjectModel.foreignKey.association: null
//@ObjectModel.text.association: null
//@ObjectModel.text.element: null
//
//
//@Consumption.hidden: false
//@Analytics.excludeFromRuntimeExtensibility: false
//@Consumption.filter.mandatory: false
//@Consumption.filter.multipleSelections: false
//@Consumption.filter.selectionType: null
//@Aggregation.default: null
//YY1_SALES_DATA.YY1_EPCGMIESNo_BDH as YY1_EPCGMIESNo_BDH,
//
//@EndUserText.label: 'Vehicle Number'
//@ObjectModel.foreignKey.association: null
//@ObjectModel.text.association: null
//@ObjectModel.text.element: null
//
//
//@Consumption.hidden: false
//@Analytics.excludeFromRuntimeExtensibility: false
//@Consumption.filter.mandatory: false
//@Consumption.filter.multipleSelections: false
//@Consumption.filter.selectionType: null
//@Aggregation.default: null
YY1_SALES_DATA.YY1_VehicleNumber_BDH as YY1_VehicleNumber_BDH,

@EndUserText.label: 'Port of Discharge'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.YY1_PortofDischarge_BDH as YY1_PortofDischarge_BDH,

@EndUserText.label: 'Remarks 1'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.YY1_Remakrs1_BDH as YY1_Remakrs1_BDH,

@EndUserText.label: 'Port of Loading'

@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.YY1_PortofLoading_BDH as YY1_PortofLoading_BDH,

@EndUserText.label: 'Container Number'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.YY1_VehicleContainerNu_BDH as YY1_VehicleContainerNu_BDH,

@EndUserText.label: 'Material freight grp'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
//_I_ProductPlant.MaterialFreightGroup as MaterialFreightGroup,


_I_BillingDocumentItemPrcgE_7.ConditionType as ConditionType_7,

@EndUserText.label: 'Value'
@Semantics.amount.currencyCode: 'TransactionCurrency'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_7.ConditionAmount as ConditionAmount_7,

@EndUserText.label: 'Application'
@ObjectModel.foreignKey.association: '_ConditionApplication_7'
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_7.ConditionApplication as ConditionApplication_7,

@EndUserText.label: 'Condition Type'
@ObjectModel.foreignKey.association: '_PricingConditionType_8'
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_8.ConditionType as ConditionType_8,

@EndUserText.label: 'Value'
@Semantics.amount.currencyCode: 'TransactionCurrency'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_8.ConditionAmount as ConditionAmount_8,

@EndUserText.label: 'Value'
@Semantics.amount.currencyCode: 'TransactionCurrency'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_9.ConditionAmount as ConditionAmount_9,

@EndUserText.label: 'Payment Method'
@ObjectModel.foreignKey.association: '_PaymentMethod'
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_9._BillingDocument.PaymentMethod as PaymentMethod,

@EndUserText.label: 'Terms of Payment'
@ObjectModel.foreignKey.association: '_CustomerPaymentTerms'
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_9._BillingDocument.CustomerPaymentTerms as CustomerPaymentTerms,

@EndUserText.label: 'Payment Reference'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_9._BillingDocument.PaymentReference as PaymentReference,

@EndUserText.label: 'Selling Rate At'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_9._BillingDocument._ExchangeRateType.SellingRateAvgExchangeRateType as SellingRateAvgExchangeRateType,

@EndUserText.label: 'Fixed Exchange Rate'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_9._BillingDocument._ExchangeRateType.FixedExchangeRateIsUsed as FixedExchangeRateIsUsed,

@EndUserText.label: 'Application'
@ObjectModel.foreignKey.association: '_ConditionApplication_8'
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_8.ConditionApplication as ConditionApplication_8,

@EndUserText.label: 'Dest. Country/Region'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_9._BillingDocument.Country as Country_4,

@EndUserText.label: 'Payment Method Name'
@Semantics.text: true
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.PaymentMethodName as PaymentMethodName,

@EndUserText.label: 'Payment Method'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: [ 'PaymentMethodName' ]


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.PaymentMethod as PaymentMethod_1,

@EndUserText.label: 'Clearing Status'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.InvoiceClearingStatus as InvoiceClearingStatus,

@EndUserText.label: 'Terms of Payment'
@ObjectModel.foreignKey.association: '_CustomerPaymentTerms_1'
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.CustomerPaymentTerms as CustomerPaymentTerms_1,

@EndUserText.label: 'Billing Document'
@ObjectModel.foreignKey.association: '_BillingDocument'
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.BillingDocument_1 as BillingDocument_1,

@EndUserText.label: 'AckNo'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_yirn_det.AckNo as AckNo,

@EndUserText.label: 'AckDate'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_yirn_det.AckDate as AckDate,

@EndUserText.label: 'IrnStatus'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_yirn_det.IrnStatus as IrnStatus,

@EndUserText.label: 'IRN No'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_yirn_det.Irn as Irn,

@EndUserText.label: 'E Way Bill No'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_yirn_det.Ebillno as Ebillno,

@EndUserText.label: 'E Way Bill  Date'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_yirn_det.EgenDat as EgenDat,

@EndUserText.label: 'Accounting Exchange Rate'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA._BillingDocument.AccountingExchangeRate as AccountingExchangeRate,

@EndUserText.label: 'Lot No'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
//_I_DeliveryDocumentItem.YY1_LotNo_DLI as YY1_LotNo_DLI,   /// field not added
//
//@EndUserText.label: 'NetAmount In INR'
//@ObjectModel.foreignKey.association: null
//@ObjectModel.text.association: null
//@ObjectModel.text.element: null
//
//
//@Consumption.hidden: false
//@Analytics.excludeFromRuntimeExtensibility: false
//@Consumption.filter.mandatory: false
//@Consumption.filter.multipleSelections: false
//@Consumption.filter.selectionType: null
//@Aggregation.default: null
cast( (
YY1_SALES_DATA._BillingDocument.AccountingExchangeRate * 
cast( YY1_SALES_DATA.NetAmount as abap.dec( 13,3 ) ) ) as abap.dec( 13, 3 ) ) as NetAmountInINR,

@EndUserText.label: 'Insurance'
@Semantics.amount.currencyCode: 'TransactionCurrency'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE11.ConditionAmount as InsuranceAmt,

@EndUserText.label: 'EPCG Date'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
//YY1_SALES_DATA.YY1_EPCGDate_BDH as YY1_EPCGDate_BDH,  //// field not added
//
//@EndUserText.label: 'EPCG/MIES No'
//@ObjectModel.foreignKey.association: null
//@ObjectModel.text.association: null
//@ObjectModel.text.element: null
//
//
//@Consumption.hidden: false
//@Analytics.excludeFromRuntimeExtensibility: false
//@Consumption.filter.mandatory: false
//@Consumption.filter.multipleSelections: false
//@Consumption.filter.selectionType: null
//@Aggregation.default: null
//YY1_SALES_DATA.YY1_EPCGMIESNo_BDH_1 as YY1_EPCGMIESNo_BDH_1, // field not added
//
//@EndUserText.label: 'Condition Basis'
//@ObjectModel.foreignKey.association: null
//@ObjectModel.text.association: null
//@ObjectModel.text.element: null
//
//
//@Consumption.hidden: false
//@Analytics.excludeFromRuntimeExtensibility: false
//@Consumption.filter.mandatory: false
//@Consumption.filter.multipleSelections: false
//@Consumption.filter.selectionType: null
//@Aggregation.default: null
_I_BillingDocumentItemPrcgElmn.ConditionBaseValue as ConditionBaseValue,

@EndUserText.label: 'Value'
@Semantics.amount.currencyCode: 'TransactionCurrency'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE12.ConditionAmount as ConditionAmount10,

@EndUserText.label: 'Export Insurance'
@Semantics.amount.currencyCode: 'TransactionCurrency'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE12.ConditionAmount as ConditionAmount11,

@EndUserText.label: 'Cndn Bs Amt'
@Semantics.amount.currencyCode: 'TransactionCurrency'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE11.ConditionBaseAmount as ConditionBaseAmount,

@EndUserText.label: 'Domestic Insurance'
@Semantics.amount.currencyCode: 'TransactionCurrency'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE13.ConditionAmount as ConditionAmount12,

@EndUserText.label: 'Canceled Bill. Doc.'
@ObjectModel.foreignKey.association: '_CancelledBillingDocument'
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.CancelledBillingDocument as CancelledBillingDocument,

@EndUserText.label: 'Canceled'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.BillingDocumentIsCancelled as BillingDocumentIsCancelled,

@EndUserText.label: 'Export Insurance'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE14.ConditionRateValue as ConditionRateValue_7,

@EndUserText.label: 'Freight Fixed Amt'
@Semantics.amount.currencyCode: 'TransactionCurrency'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE15.ConditionAmount as ConditionAmount13,

@EndUserText.label: 'Agent Commision % 1'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE16.ConditionRateValue as ConditionRateValue_8,

@EndUserText.label: 'Agent Commision Value 1'
@Semantics.amount.currencyCode: 'TransactionCurrency'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE16.ConditionAmount as ConditionAmount14,

@EndUserText.label: 'Agent Commision % 2'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE17.ConditionRateValue as ConditionRateValue_9,

@EndUserText.label: 'Agent Commision Value 2'
@Semantics.amount.currencyCode: 'TransactionCurrency'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE17.ConditionAmount as ConditionAmount15,

@EndUserText.label: 'TCS % (Waste)'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE10.ConditionRateValue as ConditionRateValue10,

@EndUserText.label: 'TCS Amount ( Waste)'
@Semantics.amount.currencyCode: 'TransactionCurrency'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE10.ConditionAmount as ConditionAmount16,

@EndUserText.label: 'TCS Amount'
@Semantics.amount.currencyCode: 'TransactionCurrency'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE18.ConditionAmount as ConditionAmount17,

@EndUserText.label: 'TCS % Extra'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE18.ConditionBaseValue as ConditionBaseValue_1,

@EndUserText.label: 'Customer Group'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.CustomerGroup as CustomerGroup,

@EndUserText.label: 'TCS %'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE18.ConditionRateValue as ConditionRateValue11,

@EndUserText.label: 'Cash Discount'
@Semantics.amount.currencyCode: 'TransactionCurrency'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE19.ConditionAmount as ConditionAmount18,

@EndUserText.label: 'Cash Discount %'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE19.ConditionRateValue as ConditionRateValue12,

@EndUserText.label: 'Bill to PAN'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
left (cast( _I_Customer.TaxNumber3 as abap.sstring( 15 ) ) , 12 ) as billtopan,

@EndUserText.label: 'Agent Full Name 2'
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_Supplier_2.SupplierFullName as SupplierFullName_2,

@EndUserText.label: 'Agent Name 2'
@Semantics.text: true
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: false
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_Supplier_2.SupplierName as SupplierName_2,

@EndUserText.label: '_PricingConditionType'

@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgElmn._PricingConditionType as _PricingConditionType,

@EndUserText.label: '_Currency'

@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgElmn._Currency as _Currency,

@EndUserText.label: '_ConditionApplication'

@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgElmn._ConditionApplication as _ConditionApplication,

@EndUserText.label: '_BillingDocumentType'

@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA._BillingDocumentType as _BillingDocumentType,

@EndUserText.label: '_PartnerFunction'

@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA._PartnerFunction as _PartnerFunction,

@EndUserText.label: '_PartnerFunction'

@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA._PartnerFunction_1 as _PartnerFunction_1,

@EndUserText.label: '_Plant'

@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA._Plant as _Plant,

@EndUserText.label: '_BillingQuantityUnit'

@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA._BillingQuantityUnit as _BillingQuantityUnit,

@EndUserText.label: '_SalesDocument'

@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA._SalesDocument as _SalesDocument,

@EndUserText.label: '_SalesDocumentItem'

@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA._SalesDocumentItem as _SalesDocumentItem,

@EndUserText.label: '_TransactionCurrency'

@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA._TransactionCurrency as _TransactionCurrency,

@EndUserText.label: '_PricingConditionType'

@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_1._PricingConditionType as _PricingConditionType_1,

@EndUserText.label: '_PricingConditionType'

@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_2._PricingConditionType as _PricingConditionType_2,

@EndUserText.label: '_PricingConditionType'

@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_3._PricingConditionType as _PricingConditionType_3,

@EndUserText.label: '_PricingConditionType'

@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_4._PricingConditionType as _PricingConditionType_4,

@EndUserText.label: '_PricingConditionType'

@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_5._PricingConditionType as _PricingConditionType_5,

@EndUserText.label: '_PricingConditionType'

@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_6._PricingConditionType as _PricingConditionType_6,

@EndUserText.label: '_ConditionApplication'

@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_1._ConditionApplication as _ConditionApplication_1,

@EndUserText.label: '_ConditionApplication'

@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_2._ConditionApplication as _ConditionApplication_2,

@EndUserText.label: '_ConditionApplication'

@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_3._ConditionApplication as _ConditionApplication_3,

@EndUserText.label: '_ConditionApplication'

@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_4._ConditionApplication as _ConditionApplication_4,

@EndUserText.label: '_ConditionApplication'

@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_5._ConditionApplication as _ConditionApplication_5,

@EndUserText.label: '_ConditionApplication'

@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_6._ConditionApplication as _ConditionApplication_6,

@EndUserText.label: '_PartnerFunction'

@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA._PartnerFunction_2 as _PartnerFunction_2,

@EndUserText.label: '_PartnerFunction'

@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA._PartnerFunction_3 as _PartnerFunction_3,

@EndUserText.label: '_SalesOrganization'

@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA._SalesOrganization as _SalesOrganization,

@EndUserText.label: '_DistributionChannel'

@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA._DistributionChannel as _DistributionChannel,

@EndUserText.label: '_Division'

@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA._Division as _Division,

@EndUserText.label: '_Product'

@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA._Product as _Product,

@EndUserText.label: '_ProductText'

@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA._ProductText as _ProductText,

@EndUserText.label: '_YY1_PreCarrierByTransp_BDH'

@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.YY1_PreCarrierByTransp_BDH as PreCarrierByTransp_BDH,

@EndUserText.label: '_YY1_PortofLoading_BDH'

@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA.YY1_PortofLoading_BDH as PortofLoading_BDH,

@EndUserText.label: '_PricingConditionType'

@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_7._PricingConditionType as _PricingConditionType_7,

@EndUserText.label: '_ConditionApplication'

@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_7._ConditionApplication as _ConditionApplication_7,

@EndUserText.label: '_PricingConditionType'

@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_8._PricingConditionType as _PricingConditionType_8,

@EndUserText.label: '_PaymentMethod'

@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_9._BillingDocument._PaymentMethod as _PaymentMethod,

@EndUserText.label: '_CustomerPaymentTerms'

@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_9._BillingDocument._CustomerPaymentTerms as _CustomerPaymentTerms,

@EndUserText.label: '_ConditionApplication'

@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgE_8._ConditionApplication as _ConditionApplication_8,

@EndUserText.label: '_CustomerPaymentTerms'

@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA._CustomerPaymentTerms as _CustomerPaymentTerms_1,

@EndUserText.label: '_BillingDocument'

@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA._BillingDocument as _BillingDocument,

@EndUserText.label: 'Billing Document Item Pricing Element'

@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.filter.selectionType: null
@Aggregation.default: null
_I_BillingDocumentItemPrcgElmn as _I_BillingDocumentItemPrcgElmn,

@EndUserText.label: '_CancelledBillingDocument'

@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA._CancelledBillingDocument as _CancelledBillingDocument,

@Analytics.hidden: true
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: true
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA./SAP/1_BILLINGDOCUMENTTYPE as /SAP/2_BILLINGDOCUMENTTYPE,

@Analytics.hidden: true
@ObjectModel.foreignKey.association: null
@ObjectModel.text.association: null
@ObjectModel.text.element: null


@Consumption.hidden: true
@Analytics.excludeFromRuntimeExtensibility: false
@Consumption.filter.mandatory: false
@Consumption.filter.multipleSelections: false
@Consumption.filter.selectionType: null
@Aggregation.default: null
YY1_SALES_DATA./SAP/1_SALESORGANIZATION as /SAP/2_SALESORGANIZATION
}


