.class public Lorg/dom4j/datatype/SchemaParser;
.super Ljava/lang/Object;
.source "SchemaParser.java"


# static fields
.field private static final XSD_ALL:Lorg/dom4j/QName;

.field private static final XSD_ATTRIBUTE:Lorg/dom4j/QName;

.field private static final XSD_CHOICE:Lorg/dom4j/QName;

.field private static final XSD_COMPLEXTYPE:Lorg/dom4j/QName;

.field private static final XSD_ELEMENT:Lorg/dom4j/QName;

.field private static final XSD_INCLUDE:Lorg/dom4j/QName;

.field private static final XSD_NAMESPACE:Lorg/dom4j/Namespace;

.field private static final XSD_RESTRICTION:Lorg/dom4j/QName;

.field private static final XSD_SEQUENCE:Lorg/dom4j/QName;

.field private static final XSD_SIMPLETYPE:Lorg/dom4j/QName;


# instance fields
.field private dataTypeCache:Ljava/util/Map;

.field private documentFactory:Lorg/dom4j/datatype/DatatypeDocumentFactory;

.field private namedTypeResolver:Lorg/dom4j/datatype/NamedTypeResolver;

.field private targetNamespace:Lorg/dom4j/Namespace;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const-string v0, "xsd"

    .line 44
    const-string v1, "http://www.w3.org/2001/XMLSchema"

    .line 43
    invoke-static {v0, v1}, Lorg/dom4j/Namespace;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/SchemaParser;->XSD_NAMESPACE:Lorg/dom4j/Namespace;

    .line 48
    const-string v0, "element"

    sget-object v1, Lorg/dom4j/datatype/SchemaParser;->XSD_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-static {v0, v1}, Lorg/dom4j/QName;->get(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    .line 47
    sput-object v0, Lorg/dom4j/datatype/SchemaParser;->XSD_ELEMENT:Lorg/dom4j/QName;

    .line 50
    const-string v0, "attribute"

    .line 51
    sget-object v1, Lorg/dom4j/datatype/SchemaParser;->XSD_NAMESPACE:Lorg/dom4j/Namespace;

    .line 50
    invoke-static {v0, v1}, Lorg/dom4j/QName;->get(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/SchemaParser;->XSD_ATTRIBUTE:Lorg/dom4j/QName;

    .line 53
    const-string v0, "simpleType"

    .line 54
    sget-object v1, Lorg/dom4j/datatype/SchemaParser;->XSD_NAMESPACE:Lorg/dom4j/Namespace;

    .line 53
    invoke-static {v0, v1}, Lorg/dom4j/QName;->get(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/SchemaParser;->XSD_SIMPLETYPE:Lorg/dom4j/QName;

    .line 56
    const-string v0, "complexType"

    .line 57
    sget-object v1, Lorg/dom4j/datatype/SchemaParser;->XSD_NAMESPACE:Lorg/dom4j/Namespace;

    .line 56
    invoke-static {v0, v1}, Lorg/dom4j/QName;->get(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/SchemaParser;->XSD_COMPLEXTYPE:Lorg/dom4j/QName;

    .line 59
    const-string v0, "restriction"

    .line 60
    sget-object v1, Lorg/dom4j/datatype/SchemaParser;->XSD_NAMESPACE:Lorg/dom4j/Namespace;

    .line 59
    invoke-static {v0, v1}, Lorg/dom4j/QName;->get(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/SchemaParser;->XSD_RESTRICTION:Lorg/dom4j/QName;

    .line 62
    const-string v0, "sequence"

    .line 63
    sget-object v1, Lorg/dom4j/datatype/SchemaParser;->XSD_NAMESPACE:Lorg/dom4j/Namespace;

    .line 62
    invoke-static {v0, v1}, Lorg/dom4j/QName;->get(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/SchemaParser;->XSD_SEQUENCE:Lorg/dom4j/QName;

    .line 65
    const-string v0, "choice"

    sget-object v1, Lorg/dom4j/datatype/SchemaParser;->XSD_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-static {v0, v1}, Lorg/dom4j/QName;->get(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/SchemaParser;->XSD_CHOICE:Lorg/dom4j/QName;

    .line 67
    const-string v0, "all"

    sget-object v1, Lorg/dom4j/datatype/SchemaParser;->XSD_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-static {v0, v1}, Lorg/dom4j/QName;->get(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/SchemaParser;->XSD_ALL:Lorg/dom4j/QName;

    .line 70
    const-string v0, "include"

    sget-object v1, Lorg/dom4j/datatype/SchemaParser;->XSD_NAMESPACE:Lorg/dom4j/Namespace;

    invoke-static {v0, v1}, Lorg/dom4j/QName;->get(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    .line 69
    sput-object v0, Lorg/dom4j/datatype/SchemaParser;->XSD_INCLUDE:Lorg/dom4j/QName;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lorg/dom4j/datatype/DatatypeDocumentFactory;->singleton:Lorg/dom4j/datatype/DatatypeDocumentFactory;

    invoke-direct {p0, v0}, Lorg/dom4j/datatype/SchemaParser;-><init>(Lorg/dom4j/datatype/DatatypeDocumentFactory;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/datatype/DatatypeDocumentFactory;)V
    .locals 1
    .parameter "documentFactory"

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/datatype/SchemaParser;->dataTypeCache:Ljava/util/Map;

    .line 92
    iput-object p1, p0, Lorg/dom4j/datatype/SchemaParser;->documentFactory:Lorg/dom4j/datatype/DatatypeDocumentFactory;

    .line 93
    new-instance v0, Lorg/dom4j/datatype/NamedTypeResolver;

    invoke-direct {v0, p1}, Lorg/dom4j/datatype/NamedTypeResolver;-><init>(Lorg/dom4j/DocumentFactory;)V

    iput-object v0, p0, Lorg/dom4j/datatype/SchemaParser;->namedTypeResolver:Lorg/dom4j/datatype/NamedTypeResolver;

    .line 94
    return-void
.end method

.method private dataTypeForXsdAttribute(Lorg/dom4j/Element;)Lcom/sun/msv/datatype/xsd/XSDatatype;
    .locals 7
    .parameter "xsdAttribute"

    .prologue
    .line 357
    const-string v5, "type"

    invoke-interface {p1, v5}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 358
    .local v3, type:Ljava/lang/String;
    const/4 v0, 0x0

    .line 360
    .local v0, dataType:Lcom/sun/msv/datatype/xsd/XSDatatype;
    if-eqz v3, :cond_0

    .line 361
    invoke-direct {p0, v3}, Lorg/dom4j/datatype/SchemaParser;->getTypeByName(Ljava/lang/String;)Lcom/sun/msv/datatype/xsd/XSDatatype;

    move-result-object v0

    .line 377
    :goto_0
    return-object v0

    .line 364
    :cond_0
    sget-object v5, Lorg/dom4j/datatype/SchemaParser;->XSD_SIMPLETYPE:Lorg/dom4j/QName;

    invoke-interface {p1, v5}, Lorg/dom4j/Element;->element(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v4

    .line 366
    .local v4, xsdSimpleType:Lorg/dom4j/Element;
    if-nez v4, :cond_1

    .line 367
    const-string v5, "name"

    invoke-interface {p1, v5}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 368
    .local v2, name:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "The attribute: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 369
    const-string v6, " has no type attribute and does not contain a "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 370
    const-string v6, "<simpleType/> element"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 368
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, msg:Ljava/lang/String;
    new-instance v5, Lorg/dom4j/datatype/InvalidSchemaException;

    invoke-direct {v5, v1}, Lorg/dom4j/datatype/InvalidSchemaException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 374
    .end local v1           #msg:Ljava/lang/String;
    .end local v2           #name:Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v4}, Lorg/dom4j/datatype/SchemaParser;->loadXSDatatypeFromSimpleType(Lorg/dom4j/Element;)Lcom/sun/msv/datatype/xsd/XSDatatype;

    move-result-object v0

    goto :goto_0
.end method

.method private deriveSimpleType(Lcom/sun/msv/datatype/xsd/XSDatatype;Lorg/dom4j/Element;)Lcom/sun/msv/datatype/xsd/XSDatatype;
    .locals 11
    .parameter "baseType"
    .parameter "xsdRestriction"

    .prologue
    .line 458
    new-instance v4, Lcom/sun/msv/datatype/xsd/TypeIncubator;

    invoke-direct {v4, p1}, Lcom/sun/msv/datatype/xsd/TypeIncubator;-><init>(Lcom/sun/msv/datatype/xsd/XSDatatype;)V

    .line 459
    .local v4, incubator:Lcom/sun/msv/datatype/xsd/TypeIncubator;
    const/4 v0, 0x0

    .line 462
    .local v0, context:Lorg/relaxng/datatype/ValidationContext;
    :try_start_0
    invoke-interface {p2}, Lorg/dom4j/Element;->elementIterator()Ljava/util/Iterator;

    move-result-object v5

    .line 463
    .local v5, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    .line 462
    if-nez v9, :cond_0

    .line 474
    const/4 v7, 0x0

    .line 476
    .local v7, newTypeName:Ljava/lang/String;
    const-string v9, ""

    invoke-virtual {v4, v9, v7}, Lcom/sun/msv/datatype/xsd/TypeIncubator;->derive(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/msv/datatype/xsd/XSDatatypeImpl;

    move-result-object v9

    .line 481
    .end local v5           #iter:Ljava/util/Iterator;
    .end local v7           #newTypeName:Ljava/lang/String;
    :goto_1
    return-object v9

    .line 464
    .restart local v5       #iter:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/dom4j/Element;

    .line 465
    .local v2, element:Lorg/dom4j/Element;
    invoke-interface {v2}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v6

    .line 466
    .local v6, name:Ljava/lang/String;
    const-string v9, "value"

    invoke-interface {v2, v9}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 467
    .local v8, value:Ljava/lang/String;
    const-string v9, "fixed"

    invoke-static {v2, v9}, Lorg/dom4j/util/AttributeHelper;->booleanValue(Lorg/dom4j/Element;Ljava/lang/String;)Z

    move-result v3

    .line 470
    .local v3, fixed:Z
    invoke-virtual {v4, v6, v8, v3, v0}, Lcom/sun/msv/datatype/xsd/TypeIncubator;->addFacet(Ljava/lang/String;Ljava/lang/String;ZLorg/relaxng/datatype/ValidationContext;)V
    :try_end_0
    .catch Lorg/relaxng/datatype/DatatypeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 477
    .end local v2           #element:Lorg/dom4j/Element;
    .end local v3           #fixed:Z
    .end local v5           #iter:Ljava/util/Iterator;
    .end local v6           #name:Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 478
    .local v1, e:Lorg/relaxng/datatype/DatatypeException;
    new-instance v9, Ljava/lang/StringBuffer;

    const-string v10, "Invalid restriction: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/relaxng/datatype/DatatypeException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 479
    const-string v10, " when trying to build restriction: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 478
    invoke-direct {p0, v9}, Lorg/dom4j/datatype/SchemaParser;->onSchemaError(Ljava/lang/String;)V

    .line 481
    const/4 v9, 0x0

    goto :goto_1
.end method

.method private getDatatypeElementFactory(Lorg/dom4j/QName;)Lorg/dom4j/datatype/DatatypeElementFactory;
    .locals 2
    .parameter "name"

    .prologue
    .line 495
    iget-object v1, p0, Lorg/dom4j/datatype/SchemaParser;->documentFactory:Lorg/dom4j/datatype/DatatypeDocumentFactory;

    .line 496
    invoke-virtual {v1, p1}, Lorg/dom4j/datatype/DatatypeDocumentFactory;->getElementFactory(Lorg/dom4j/QName;)Lorg/dom4j/datatype/DatatypeElementFactory;

    move-result-object v0

    .line 498
    .local v0, factory:Lorg/dom4j/datatype/DatatypeElementFactory;
    if-nez v0, :cond_0

    .line 499
    new-instance v0, Lorg/dom4j/datatype/DatatypeElementFactory;

    .end local v0           #factory:Lorg/dom4j/datatype/DatatypeElementFactory;
    invoke-direct {v0, p1}, Lorg/dom4j/datatype/DatatypeElementFactory;-><init>(Lorg/dom4j/QName;)V

    .line 500
    .restart local v0       #factory:Lorg/dom4j/datatype/DatatypeElementFactory;
    invoke-virtual {p1, v0}, Lorg/dom4j/QName;->setDocumentFactory(Lorg/dom4j/DocumentFactory;)V

    .line 503
    :cond_0
    return-object v0
.end method

.method private getQName(Ljava/lang/String;)Lorg/dom4j/QName;
    .locals 2
    .parameter "name"

    .prologue
    .line 547
    iget-object v0, p0, Lorg/dom4j/datatype/SchemaParser;->targetNamespace:Lorg/dom4j/Namespace;

    if-nez v0, :cond_0

    .line 548
    iget-object v0, p0, Lorg/dom4j/datatype/SchemaParser;->documentFactory:Lorg/dom4j/datatype/DatatypeDocumentFactory;

    invoke-virtual {v0, p1}, Lorg/dom4j/datatype/DatatypeDocumentFactory;->createQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    .line 550
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/dom4j/datatype/SchemaParser;->documentFactory:Lorg/dom4j/datatype/DatatypeDocumentFactory;

    iget-object v1, p0, Lorg/dom4j/datatype/SchemaParser;->targetNamespace:Lorg/dom4j/Namespace;

    invoke-virtual {v0, p1, v1}, Lorg/dom4j/datatype/DatatypeDocumentFactory;->createQName(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    goto :goto_0
.end method

.method private getTypeByName(Ljava/lang/String;)Lcom/sun/msv/datatype/xsd/XSDatatype;
    .locals 5
    .parameter "type"

    .prologue
    .line 507
    iget-object v4, p0, Lorg/dom4j/datatype/SchemaParser;->dataTypeCache:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/msv/datatype/xsd/XSDatatype;

    .line 509
    .local v0, dataType:Lcom/sun/msv/datatype/xsd/XSDatatype;
    if-nez v0, :cond_3

    .line 512
    const/16 v4, 0x3a

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 514
    .local v1, idx:I
    if-ltz v1, :cond_0

    .line 515
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 518
    .local v2, localName:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lcom/sun/msv/datatype/xsd/DatatypeFactory;->getTypeByName(Ljava/lang/String;)Lcom/sun/msv/datatype/xsd/XSDatatype;
    :try_end_0
    .catch Lorg/relaxng/datatype/DatatypeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 523
    .end local v2           #localName:Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 525
    :try_start_1
    invoke-static {p1}, Lcom/sun/msv/datatype/xsd/DatatypeFactory;->getTypeByName(Ljava/lang/String;)Lcom/sun/msv/datatype/xsd/XSDatatype;
    :try_end_1
    .catch Lorg/relaxng/datatype/DatatypeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 530
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 532
    invoke-direct {p0, p1}, Lorg/dom4j/datatype/SchemaParser;->getQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v3

    .line 533
    .local v3, typeQName:Lorg/dom4j/QName;
    iget-object v4, p0, Lorg/dom4j/datatype/SchemaParser;->namedTypeResolver:Lorg/dom4j/datatype/NamedTypeResolver;

    iget-object v4, v4, Lorg/dom4j/datatype/NamedTypeResolver;->simpleTypeMap:Ljava/util/Map;

    .line 534
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 533
    .end local v0           #dataType:Lcom/sun/msv/datatype/xsd/XSDatatype;
    check-cast v0, Lcom/sun/msv/datatype/xsd/XSDatatype;

    .line 537
    .end local v3           #typeQName:Lorg/dom4j/QName;
    .restart local v0       #dataType:Lcom/sun/msv/datatype/xsd/XSDatatype;
    :cond_2
    if-eqz v0, :cond_3

    .line 539
    iget-object v4, p0, Lorg/dom4j/datatype/SchemaParser;->dataTypeCache:Ljava/util/Map;

    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    .end local v1           #idx:I
    :cond_3
    return-object v0

    .line 519
    .restart local v1       #idx:I
    .restart local v2       #localName:Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 526
    .end local v2           #localName:Ljava/lang/String;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method private declared-synchronized internalBuild(Lorg/dom4j/Document;)V
    .locals 14
    .parameter "schemaDocument"

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v10

    .line 115
    .local v10, root:Lorg/dom4j/Element;
    if-eqz v10, :cond_0

    .line 117
    sget-object v11, Lorg/dom4j/datatype/SchemaParser;->XSD_INCLUDE:Lorg/dom4j/QName;

    invoke-interface {v10, v11}, Lorg/dom4j/Element;->elementIterator(Lorg/dom4j/QName;)Ljava/util/Iterator;

    move-result-object v4

    .line 119
    .local v4, includeIter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_1

    .line 154
    sget-object v11, Lorg/dom4j/datatype/SchemaParser;->XSD_ELEMENT:Lorg/dom4j/QName;

    invoke-interface {v10, v11}, Lorg/dom4j/Element;->elementIterator(Lorg/dom4j/QName;)Ljava/util/Iterator;

    move-result-object v6

    .line 156
    .local v6, iter:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_4

    .line 161
    sget-object v11, Lorg/dom4j/datatype/SchemaParser;->XSD_SIMPLETYPE:Lorg/dom4j/QName;

    invoke-interface {v10, v11}, Lorg/dom4j/Element;->elementIterator(Lorg/dom4j/QName;)Ljava/util/Iterator;

    move-result-object v6

    .line 163
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_5

    .line 168
    sget-object v11, Lorg/dom4j/datatype/SchemaParser;->XSD_COMPLEXTYPE:Lorg/dom4j/QName;

    invoke-interface {v10, v11}, Lorg/dom4j/Element;->elementIterator(Lorg/dom4j/QName;)Ljava/util/Iterator;

    move-result-object v6

    .line 170
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_6

    .line 174
    iget-object v11, p0, Lorg/dom4j/datatype/SchemaParser;->namedTypeResolver:Lorg/dom4j/datatype/NamedTypeResolver;

    invoke-virtual {v11}, Lorg/dom4j/datatype/NamedTypeResolver;->resolveNamedTypes()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    .end local v4           #includeIter:Ljava/util/Iterator;
    .end local v6           #iter:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void

    .line 120
    .restart local v4       #includeIter:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/dom4j/Element;

    .line 122
    .local v3, includeElement:Lorg/dom4j/Element;
    const-string v11, "schemaLocation"

    invoke-interface {v3, v11}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, inclSchemaInstanceURI:Ljava/lang/String;
    invoke-interface {p1}, Lorg/dom4j/Document;->getEntityResolver()Lorg/xml/sax/EntityResolver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 126
    .local v9, resolver:Lorg/xml/sax/EntityResolver;
    if-nez v9, :cond_2

    .line 127
    :try_start_2
    const-string v7, "No EntityResolver available"

    .line 128
    .local v7, msg:Ljava/lang/String;
    new-instance v11, Lorg/dom4j/datatype/InvalidSchemaException;

    invoke-direct {v11, v7}, Lorg/dom4j/datatype/InvalidSchemaException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 143
    .end local v7           #msg:Ljava/lang/String;
    :catch_0
    move-exception v11

    move-object v0, v11

    .line 144
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuffer;

    const-string v13, "Failed to load schema: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    .line 144
    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 146
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuffer;

    const-string v13, "Caught: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 148
    new-instance v11, Lorg/dom4j/datatype/InvalidSchemaException;

    new-instance v12, Ljava/lang/StringBuffer;

    const-string v13, "Failed to load schema: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    .line 148
    invoke-direct {v11, v12}, Lorg/dom4j/datatype/InvalidSchemaException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #inclSchemaInstanceURI:Ljava/lang/String;
    .end local v3           #includeElement:Lorg/dom4j/Element;
    .end local v4           #includeIter:Ljava/util/Iterator;
    .end local v9           #resolver:Lorg/xml/sax/EntityResolver;
    .end local v10           #root:Lorg/dom4j/Element;
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 131
    .restart local v2       #inclSchemaInstanceURI:Ljava/lang/String;
    .restart local v3       #includeElement:Lorg/dom4j/Element;
    .restart local v4       #includeIter:Ljava/util/Iterator;
    .restart local v9       #resolver:Lorg/xml/sax/EntityResolver;
    .restart local v10       #root:Lorg/dom4j/Element;
    :cond_2
    const/4 v11, 0x0

    :try_start_4
    invoke-interface {v9, v11, v2}, Lorg/xml/sax/EntityResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object v5

    .line 134
    .local v5, inputSource:Lorg/xml/sax/InputSource;
    if-nez v5, :cond_3

    .line 135
    new-instance v11, Ljava/lang/StringBuffer;

    const-string v12, "Could not resolve the schema URI: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 135
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 137
    .restart local v7       #msg:Ljava/lang/String;
    new-instance v11, Lorg/dom4j/datatype/InvalidSchemaException;

    invoke-direct {v11, v7}, Lorg/dom4j/datatype/InvalidSchemaException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 140
    .end local v7           #msg:Ljava/lang/String;
    :cond_3
    new-instance v8, Lorg/dom4j/io/SAXReader;

    invoke-direct {v8}, Lorg/dom4j/io/SAXReader;-><init>()V

    .line 141
    .local v8, reader:Lorg/dom4j/io/SAXReader;
    invoke-virtual {v8, v5}, Lorg/dom4j/io/SAXReader;->read(Lorg/xml/sax/InputSource;)Lorg/dom4j/Document;

    move-result-object v1

    .line 142
    .local v1, inclSchemaDocument:Lorg/dom4j/Document;
    invoke-virtual {p0, v1}, Lorg/dom4j/datatype/SchemaParser;->build(Lorg/dom4j/Document;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 157
    .end local v1           #inclSchemaDocument:Lorg/dom4j/Document;
    .end local v2           #inclSchemaInstanceURI:Ljava/lang/String;
    .end local v3           #includeElement:Lorg/dom4j/Element;
    .end local v5           #inputSource:Lorg/xml/sax/InputSource;
    .end local v8           #reader:Lorg/dom4j/io/SAXReader;
    .end local v9           #resolver:Lorg/xml/sax/EntityResolver;
    .restart local v6       #iter:Ljava/util/Iterator;
    :cond_4
    :try_start_5
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/dom4j/Element;

    iget-object v12, p0, Lorg/dom4j/datatype/SchemaParser;->documentFactory:Lorg/dom4j/datatype/DatatypeDocumentFactory;

    invoke-direct {p0, v11, v12}, Lorg/dom4j/datatype/SchemaParser;->onDatatypeElement(Lorg/dom4j/Element;Lorg/dom4j/DocumentFactory;)V

    goto/16 :goto_1

    .line 164
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/dom4j/Element;

    invoke-direct {p0, v11}, Lorg/dom4j/datatype/SchemaParser;->onNamedSchemaSimpleType(Lorg/dom4j/Element;)V

    goto/16 :goto_2

    .line 171
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/dom4j/Element;

    invoke-direct {p0, v11}, Lorg/dom4j/datatype/SchemaParser;->onNamedSchemaComplexType(Lorg/dom4j/Element;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3
.end method

.method private loadXSDatatypeFromSimpleType(Lorg/dom4j/Element;)Lcom/sun/msv/datatype/xsd/XSDatatype;
    .locals 7
    .parameter "xsdSimpleType"

    .prologue
    .line 409
    sget-object v5, Lorg/dom4j/datatype/SchemaParser;->XSD_RESTRICTION:Lorg/dom4j/QName;

    invoke-interface {p1, v5}, Lorg/dom4j/Element;->element(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v3

    .line 411
    .local v3, xsdRestriction:Lorg/dom4j/Element;
    if-eqz v3, :cond_3

    .line 412
    const-string v5, "base"

    invoke-interface {v3, v5}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, base:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 415
    invoke-direct {p0, v0}, Lorg/dom4j/datatype/SchemaParser;->getTypeByName(Ljava/lang/String;)Lcom/sun/msv/datatype/xsd/XSDatatype;

    move-result-object v1

    .line 417
    .local v1, baseType:Lcom/sun/msv/datatype/xsd/XSDatatype;
    if-nez v1, :cond_0

    .line 418
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "Invalid base type: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 419
    const-string v6, " when trying to build restriction: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 420
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 418
    invoke-direct {p0, v5}, Lorg/dom4j/datatype/SchemaParser;->onSchemaError(Ljava/lang/String;)V

    .line 443
    .end local v0           #base:Ljava/lang/String;
    .end local v1           #baseType:Lcom/sun/msv/datatype/xsd/XSDatatype;
    :goto_0
    const/4 v5, 0x0

    :goto_1
    return-object v5

    .line 422
    .restart local v0       #base:Ljava/lang/String;
    .restart local v1       #baseType:Lcom/sun/msv/datatype/xsd/XSDatatype;
    :cond_0
    invoke-direct {p0, v1, v3}, Lorg/dom4j/datatype/SchemaParser;->deriveSimpleType(Lcom/sun/msv/datatype/xsd/XSDatatype;Lorg/dom4j/Element;)Lcom/sun/msv/datatype/xsd/XSDatatype;

    move-result-object v5

    goto :goto_1

    .line 427
    .end local v1           #baseType:Lcom/sun/msv/datatype/xsd/XSDatatype;
    :cond_1
    sget-object v5, Lorg/dom4j/datatype/SchemaParser;->XSD_SIMPLETYPE:Lorg/dom4j/QName;

    invoke-interface {p1, v5}, Lorg/dom4j/Element;->element(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v4

    .line 429
    .local v4, xsdSubType:Lorg/dom4j/Element;
    if-nez v4, :cond_2

    .line 430
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "The simpleType element: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 431
    const-string v6, " must contain a base attribute or simpleType"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 432
    const-string v6, " element"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 430
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 433
    .local v2, msg:Ljava/lang/String;
    invoke-direct {p0, v2}, Lorg/dom4j/datatype/SchemaParser;->onSchemaError(Ljava/lang/String;)V

    goto :goto_0

    .line 435
    .end local v2           #msg:Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v4}, Lorg/dom4j/datatype/SchemaParser;->loadXSDatatypeFromSimpleType(Lorg/dom4j/Element;)Lcom/sun/msv/datatype/xsd/XSDatatype;

    move-result-object v5

    goto :goto_1

    .line 439
    .end local v0           #base:Ljava/lang/String;
    .end local v4           #xsdSubType:Lorg/dom4j/Element;
    :cond_3
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "No <restriction>. Could not create XSDatatype for simpleType: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 440
    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 439
    invoke-direct {p0, v5}, Lorg/dom4j/datatype/SchemaParser;->onSchemaError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onChildElements(Lorg/dom4j/Element;Lorg/dom4j/datatype/DatatypeElementFactory;)V
    .locals 3
    .parameter "element"
    .parameter "fact"

    .prologue
    .line 311
    sget-object v2, Lorg/dom4j/datatype/SchemaParser;->XSD_ELEMENT:Lorg/dom4j/QName;

    invoke-interface {p1, v2}, Lorg/dom4j/Element;->elementIterator(Lorg/dom4j/QName;)Ljava/util/Iterator;

    move-result-object v0

    .line 313
    .local v0, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 317
    return-void

    .line 314
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Element;

    .line 315
    .local v1, xsdElement:Lorg/dom4j/Element;
    invoke-direct {p0, v1, p2}, Lorg/dom4j/datatype/SchemaParser;->onDatatypeElement(Lorg/dom4j/Element;Lorg/dom4j/DocumentFactory;)V

    goto :goto_0
.end method

.method private onDatatypeAttribute(Lorg/dom4j/Element;Lorg/dom4j/datatype/DatatypeElementFactory;Lorg/dom4j/Element;)V
    .locals 7
    .parameter "xsdElement"
    .parameter "elementFactory"
    .parameter "xsdAttribute"

    .prologue
    .line 331
    const-string v4, "name"

    invoke-interface {p3, v4}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 332
    .local v1, name:Ljava/lang/String;
    invoke-direct {p0, v1}, Lorg/dom4j/datatype/SchemaParser;->getQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v2

    .line 333
    .local v2, qname:Lorg/dom4j/QName;
    invoke-direct {p0, p3}, Lorg/dom4j/datatype/SchemaParser;->dataTypeForXsdAttribute(Lorg/dom4j/Element;)Lcom/sun/msv/datatype/xsd/XSDatatype;

    move-result-object v0

    .line 335
    .local v0, dataType:Lcom/sun/msv/datatype/xsd/XSDatatype;
    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {p2, v2, v0}, Lorg/dom4j/datatype/DatatypeElementFactory;->setAttributeXSDatatype(Lorg/dom4j/QName;Lcom/sun/msv/datatype/xsd/XSDatatype;)V

    .line 343
    :goto_0
    return-void

    .line 339
    :cond_0
    const-string v4, "type"

    invoke-interface {p3, v4}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 340
    .local v3, type:Ljava/lang/String;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "Warning: Couldn\'t find XSDatatype for type: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " attribute: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 340
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onDatatypeElement(Lorg/dom4j/Element;Lorg/dom4j/DocumentFactory;)V
    .locals 10
    .parameter "xsdElement"
    .parameter "parentFactory"

    .prologue
    .line 191
    const-string v9, "name"

    invoke-interface {p1, v9}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, name:Ljava/lang/String;
    const-string v9, "type"

    invoke-interface {p1, v9}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 193
    .local v6, type:Ljava/lang/String;
    invoke-direct {p0, v3}, Lorg/dom4j/datatype/SchemaParser;->getQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v4

    .line 195
    .local v4, qname:Lorg/dom4j/QName;
    invoke-direct {p0, v4}, Lorg/dom4j/datatype/SchemaParser;->getDatatypeElementFactory(Lorg/dom4j/QName;)Lorg/dom4j/datatype/DatatypeElementFactory;

    move-result-object v1

    .line 197
    .local v1, factory:Lorg/dom4j/datatype/DatatypeElementFactory;
    if-eqz v6, :cond_2

    .line 199
    invoke-direct {p0, v6}, Lorg/dom4j/datatype/SchemaParser;->getTypeByName(Ljava/lang/String;)Lcom/sun/msv/datatype/xsd/XSDatatype;

    move-result-object v0

    .line 201
    .local v0, dataType:Lcom/sun/msv/datatype/xsd/XSDatatype;
    if-eqz v0, :cond_1

    .line 202
    invoke-virtual {v1, v4, v0}, Lorg/dom4j/datatype/DatatypeElementFactory;->setChildElementXSDatatype(Lorg/dom4j/QName;Lcom/sun/msv/datatype/xsd/XSDatatype;)V

    .line 237
    .end local v0           #dataType:Lcom/sun/msv/datatype/xsd/XSDatatype;
    :cond_0
    :goto_0
    return-void

    .line 204
    .restart local v0       #dataType:Lcom/sun/msv/datatype/xsd/XSDatatype;
    :cond_1
    invoke-direct {p0, v6}, Lorg/dom4j/datatype/SchemaParser;->getQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v7

    .line 205
    .local v7, typeQName:Lorg/dom4j/QName;
    iget-object v9, p0, Lorg/dom4j/datatype/SchemaParser;->namedTypeResolver:Lorg/dom4j/datatype/NamedTypeResolver;

    invoke-virtual {v9, p1, v7, p2}, Lorg/dom4j/datatype/NamedTypeResolver;->registerTypedElement(Lorg/dom4j/Element;Lorg/dom4j/QName;Lorg/dom4j/DocumentFactory;)V

    goto :goto_0

    .line 213
    .end local v0           #dataType:Lcom/sun/msv/datatype/xsd/XSDatatype;
    .end local v7           #typeQName:Lorg/dom4j/QName;
    :cond_2
    sget-object v9, Lorg/dom4j/datatype/SchemaParser;->XSD_SIMPLETYPE:Lorg/dom4j/QName;

    invoke-interface {p1, v9}, Lorg/dom4j/Element;->element(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v8

    .line 215
    .local v8, xsdSimpleType:Lorg/dom4j/Element;
    if-eqz v8, :cond_3

    .line 216
    invoke-direct {p0, v8}, Lorg/dom4j/datatype/SchemaParser;->loadXSDatatypeFromSimpleType(Lorg/dom4j/Element;)Lcom/sun/msv/datatype/xsd/XSDatatype;

    move-result-object v0

    .line 218
    .restart local v0       #dataType:Lcom/sun/msv/datatype/xsd/XSDatatype;
    if-eqz v0, :cond_3

    .line 219
    invoke-virtual {v1, v4, v0}, Lorg/dom4j/datatype/DatatypeElementFactory;->setChildElementXSDatatype(Lorg/dom4j/QName;Lcom/sun/msv/datatype/xsd/XSDatatype;)V

    .line 223
    .end local v0           #dataType:Lcom/sun/msv/datatype/xsd/XSDatatype;
    :cond_3
    sget-object v9, Lorg/dom4j/datatype/SchemaParser;->XSD_COMPLEXTYPE:Lorg/dom4j/QName;

    invoke-interface {p1, v9}, Lorg/dom4j/Element;->element(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v5

    .line 225
    .local v5, schemaComplexType:Lorg/dom4j/Element;
    if-eqz v5, :cond_4

    .line 226
    invoke-direct {p0, v5, v1}, Lorg/dom4j/datatype/SchemaParser;->onSchemaComplexType(Lorg/dom4j/Element;Lorg/dom4j/datatype/DatatypeElementFactory;)V

    .line 229
    :cond_4
    sget-object v9, Lorg/dom4j/datatype/SchemaParser;->XSD_ATTRIBUTE:Lorg/dom4j/QName;

    invoke-interface {p1, v9}, Lorg/dom4j/Element;->elementIterator(Lorg/dom4j/QName;)Ljava/util/Iterator;

    move-result-object v2

    .line 231
    .local v2, iter:Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 234
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 233
    check-cast v9, Lorg/dom4j/Element;

    invoke-direct {p0, p1, v1, v9}, Lorg/dom4j/datatype/SchemaParser;->onDatatypeAttribute(Lorg/dom4j/Element;Lorg/dom4j/datatype/DatatypeElementFactory;Lorg/dom4j/Element;)V

    .line 235
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    .line 232
    if-nez v9, :cond_5

    goto :goto_0
.end method

.method private onNamedSchemaComplexType(Lorg/dom4j/Element;)V
    .locals 5
    .parameter "schemaComplexType"

    .prologue
    .line 246
    const-string v4, "name"

    invoke-interface {p1, v4}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v2

    .line 248
    .local v2, nameAttr:Lorg/dom4j/Attribute;
    if-nez v2, :cond_0

    .line 259
    :goto_0
    return-void

    .line 252
    :cond_0
    invoke-interface {v2}, Lorg/dom4j/Attribute;->getText()Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, name:Ljava/lang/String;
    invoke-direct {p0, v1}, Lorg/dom4j/datatype/SchemaParser;->getQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v3

    .line 255
    .local v3, qname:Lorg/dom4j/QName;
    invoke-direct {p0, v3}, Lorg/dom4j/datatype/SchemaParser;->getDatatypeElementFactory(Lorg/dom4j/QName;)Lorg/dom4j/datatype/DatatypeElementFactory;

    move-result-object v0

    .line 257
    .local v0, factory:Lorg/dom4j/datatype/DatatypeElementFactory;
    invoke-direct {p0, p1, v0}, Lorg/dom4j/datatype/SchemaParser;->onSchemaComplexType(Lorg/dom4j/Element;Lorg/dom4j/datatype/DatatypeElementFactory;)V

    .line 258
    iget-object v4, p0, Lorg/dom4j/datatype/SchemaParser;->namedTypeResolver:Lorg/dom4j/datatype/NamedTypeResolver;

    invoke-virtual {v4, v3, v0}, Lorg/dom4j/datatype/NamedTypeResolver;->registerComplexType(Lorg/dom4j/QName;Lorg/dom4j/DocumentFactory;)V

    goto :goto_0
.end method

.method private onNamedSchemaSimpleType(Lorg/dom4j/Element;)V
    .locals 5
    .parameter "schemaSimpleType"

    .prologue
    .line 387
    const-string v4, "name"

    invoke-interface {p1, v4}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v2

    .line 389
    .local v2, nameAttr:Lorg/dom4j/Attribute;
    if-nez v2, :cond_0

    .line 397
    :goto_0
    return-void

    .line 393
    :cond_0
    invoke-interface {v2}, Lorg/dom4j/Attribute;->getText()Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, name:Ljava/lang/String;
    invoke-direct {p0, v1}, Lorg/dom4j/datatype/SchemaParser;->getQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v3

    .line 395
    .local v3, qname:Lorg/dom4j/QName;
    invoke-direct {p0, p1}, Lorg/dom4j/datatype/SchemaParser;->loadXSDatatypeFromSimpleType(Lorg/dom4j/Element;)Lcom/sun/msv/datatype/xsd/XSDatatype;

    move-result-object v0

    .line 396
    .local v0, datatype:Lcom/sun/msv/datatype/xsd/XSDatatype;
    iget-object v4, p0, Lorg/dom4j/datatype/SchemaParser;->namedTypeResolver:Lorg/dom4j/datatype/NamedTypeResolver;

    invoke-virtual {v4, v3, v0}, Lorg/dom4j/datatype/NamedTypeResolver;->registerSimpleType(Lorg/dom4j/QName;Lcom/sun/msv/datatype/xsd/XSDatatype;)V

    goto :goto_0
.end method

.method private onSchemaComplexType(Lorg/dom4j/Element;Lorg/dom4j/datatype/DatatypeElementFactory;)V
    .locals 9
    .parameter "schemaComplexType"
    .parameter "elementFactory"

    .prologue
    .line 271
    sget-object v8, Lorg/dom4j/datatype/SchemaParser;->XSD_ATTRIBUTE:Lorg/dom4j/QName;

    invoke-interface {p1, v8}, Lorg/dom4j/Element;->elementIterator(Lorg/dom4j/QName;)Ljava/util/Iterator;

    move-result-object v1

    .line 273
    .local v1, iter:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_4

    .line 289
    sget-object v8, Lorg/dom4j/datatype/SchemaParser;->XSD_SEQUENCE:Lorg/dom4j/QName;

    invoke-interface {p1, v8}, Lorg/dom4j/Element;->element(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v6

    .line 291
    .local v6, schemaSequence:Lorg/dom4j/Element;
    if-eqz v6, :cond_1

    .line 292
    invoke-direct {p0, v6, p2}, Lorg/dom4j/datatype/SchemaParser;->onChildElements(Lorg/dom4j/Element;Lorg/dom4j/datatype/DatatypeElementFactory;)V

    .line 296
    :cond_1
    sget-object v8, Lorg/dom4j/datatype/SchemaParser;->XSD_CHOICE:Lorg/dom4j/QName;

    invoke-interface {p1, v8}, Lorg/dom4j/Element;->element(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v5

    .line 298
    .local v5, schemaChoice:Lorg/dom4j/Element;
    if-eqz v5, :cond_2

    .line 299
    invoke-direct {p0, v5, p2}, Lorg/dom4j/datatype/SchemaParser;->onChildElements(Lorg/dom4j/Element;Lorg/dom4j/datatype/DatatypeElementFactory;)V

    .line 303
    :cond_2
    sget-object v8, Lorg/dom4j/datatype/SchemaParser;->XSD_ALL:Lorg/dom4j/QName;

    invoke-interface {p1, v8}, Lorg/dom4j/Element;->element(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v4

    .line 305
    .local v4, schemaAll:Lorg/dom4j/Element;
    if-eqz v4, :cond_3

    .line 306
    invoke-direct {p0, v4, p2}, Lorg/dom4j/datatype/SchemaParser;->onChildElements(Lorg/dom4j/Element;Lorg/dom4j/datatype/DatatypeElementFactory;)V

    .line 308
    :cond_3
    return-void

    .line 274
    .end local v4           #schemaAll:Lorg/dom4j/Element;
    .end local v5           #schemaChoice:Lorg/dom4j/Element;
    .end local v6           #schemaSequence:Lorg/dom4j/Element;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/dom4j/Element;

    .line 275
    .local v7, xsdAttribute:Lorg/dom4j/Element;
    const-string v8, "name"

    invoke-interface {v7, v8}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, name:Ljava/lang/String;
    invoke-direct {p0, v2}, Lorg/dom4j/datatype/SchemaParser;->getQName(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v3

    .line 278
    .local v3, qname:Lorg/dom4j/QName;
    invoke-direct {p0, v7}, Lorg/dom4j/datatype/SchemaParser;->dataTypeForXsdAttribute(Lorg/dom4j/Element;)Lcom/sun/msv/datatype/xsd/XSDatatype;

    move-result-object v0

    .line 280
    .local v0, dataType:Lcom/sun/msv/datatype/xsd/XSDatatype;
    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p2, v3, v0}, Lorg/dom4j/datatype/DatatypeElementFactory;->setAttributeXSDatatype(Lorg/dom4j/QName;Lcom/sun/msv/datatype/xsd/XSDatatype;)V

    goto :goto_0
.end method

.method private onSchemaError(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 568
    new-instance v0, Lorg/dom4j/datatype/InvalidSchemaException;

    invoke-direct {v0, p1}, Lorg/dom4j/datatype/InvalidSchemaException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build(Lorg/dom4j/Document;)V
    .locals 1
    .parameter "schemaDocument"

    .prologue
    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/datatype/SchemaParser;->targetNamespace:Lorg/dom4j/Namespace;

    .line 104
    invoke-direct {p0, p1}, Lorg/dom4j/datatype/SchemaParser;->internalBuild(Lorg/dom4j/Document;)V

    .line 105
    return-void
.end method

.method public build(Lorg/dom4j/Document;Lorg/dom4j/Namespace;)V
    .locals 0
    .parameter "schemaDocument"
    .parameter "namespace"

    .prologue
    .line 108
    iput-object p2, p0, Lorg/dom4j/datatype/SchemaParser;->targetNamespace:Lorg/dom4j/Namespace;

    .line 109
    invoke-direct {p0, p1}, Lorg/dom4j/datatype/SchemaParser;->internalBuild(Lorg/dom4j/Document;)V

    .line 110
    return-void
.end method
