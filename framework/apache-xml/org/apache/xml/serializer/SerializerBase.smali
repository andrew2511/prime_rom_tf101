.class public abstract Lorg/apache/xml/serializer/SerializerBase;
.super Ljava/lang/Object;
.source "SerializerBase.java"

# interfaces
.implements Lorg/apache/xml/serializer/SerializationHandler;
.implements Lorg/apache/xml/serializer/SerializerConstants;


# static fields
.field public static final PKG_NAME:Ljava/lang/String;

.field public static final PKG_PATH:Ljava/lang/String;


# instance fields
.field protected m_CdataElems:Ljava/util/Hashtable;

.field private m_OutputProps:Ljava/util/HashMap;

.field private m_OutputPropsDefault:Ljava/util/HashMap;

.field protected m_StringOfCDATASections:Ljava/lang/String;

.field protected m_attrBuff:[C

.field protected m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

.field protected m_cdataTagOpen:Z

.field protected m_charsBuff:[C

.field protected m_doIndent:Z

.field m_docIsEmpty:Z

.field protected m_doctypePublic:Ljava/lang/String;

.field protected m_doctypeSystem:Ljava/lang/String;

.field protected m_elemContext:Lorg/apache/xml/serializer/ElemContext;

.field protected m_inEntityRef:Z

.field protected m_inExternalDTD:Z

.field protected m_indentAmount:I

.field protected m_mediatype:Ljava/lang/String;

.field protected m_needToCallStartDocument:Z

.field m_needToOutputDocTypeDecl:Z

.field protected m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

.field protected m_shouldNotWriteXMLHeader:Z

.field protected m_sourceLocator:Ljavax/xml/transform/SourceLocator;

.field private m_standalone:Ljava/lang/String;

.field protected m_standaloneWasSpecified:Z

.field protected m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

.field private m_transformer:Ljavax/xml/transform/Transformer;

.field protected m_version:Ljava/lang/String;

.field protected m_writer:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/16 v6, 0x2e

    .line 70
    const-class v5, Lorg/apache/xml/serializer/SerializerBase;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, fullyQualifiedName:Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 72
    .local v3, lastDot:I
    if-gez v3, :cond_30

    .line 73
    const-string v5, ""

    sput-object v5, Lorg/apache/xml/serializer/SerializerBase;->PKG_NAME:Ljava/lang/String;

    .line 78
    :goto_12
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 79
    .local v4, sb:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_18
    sget-object v5, Lorg/apache/xml/serializer/SerializerBase;->PKG_NAME:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_3c

    .line 80
    sget-object v5, Lorg/apache/xml/serializer/SerializerBase;->PKG_NAME:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 81
    .local v0, ch:C
    if-ne v0, v6, :cond_38

    .line 82
    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 79
    :goto_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 75
    .end local v0           #ch:C
    .end local v2           #i:I
    .end local v4           #sb:Ljava/lang/StringBuffer;
    :cond_30
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lorg/apache/xml/serializer/SerializerBase;->PKG_NAME:Ljava/lang/String;

    goto :goto_12

    .line 84
    .restart local v0       #ch:C
    .restart local v2       #i:I
    .restart local v4       #sb:Ljava/lang/StringBuffer;
    :cond_38
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2d

    .line 86
    .end local v0           #ch:C
    :cond_3c
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lorg/apache/xml/serializer/SerializerBase;->PKG_PATH:Ljava/lang/String;

    .line 87
    return-void
.end method

.method constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-boolean v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    .line 129
    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    .line 136
    new-instance v0, Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-direct {v0}, Lorg/apache/xml/serializer/AttributesImplSerializer;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    .line 141
    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inEntityRef:Z

    .line 144
    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inExternalDTD:Z

    .line 160
    iput-boolean v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    .line 165
    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_shouldNotWriteXMLHeader:Z

    .line 175
    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_standaloneWasSpecified:Z

    .line 180
    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doIndent:Z

    .line 184
    iput v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_indentAmount:I

    .line 189
    iput-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_version:Ljava/lang/String;

    .line 223
    iput-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    .line 231
    new-instance v0, Lorg/apache/xml/serializer/ElemContext;

    invoke-direct {v0}, Lorg/apache/xml/serializer/ElemContext;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    .line 239
    const/16 v0, 0x3c

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    .line 247
    const/16 v0, 0x1e

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attrBuff:[C

    .line 1353
    iput-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_StringOfCDATASections:Ljava/lang/String;

    .line 1355
    iput-boolean v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_docIsEmpty:Z

    .line 1428
    iput-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_CdataElems:Ljava/util/Hashtable;

    .line 51
    return-void
.end method

.method private addCDATAElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "uri"
    .parameter "localName"

    .prologue
    .line 1431
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_CdataElems:Ljava/util/Hashtable;

    if-nez v1, :cond_b

    .line 1432
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_CdataElems:Ljava/util/Hashtable;

    .line 1435
    :cond_b
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_CdataElems:Ljava/util/Hashtable;

    invoke-virtual {v1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 1436
    .local v0, h:Ljava/util/Hashtable;
    if-nez v0, :cond_1f

    .line 1437
    new-instance v0, Ljava/util/Hashtable;

    .end local v0           #h:Ljava/util/Hashtable;
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 1438
    .restart local v0       #h:Ljava/util/Hashtable;
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_CdataElems:Ljava/util/Hashtable;

    invoke-virtual {v1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1440
    :cond_1f
    invoke-virtual {v0, p1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1442
    return-void
.end method

.method private flushMyWriter()V
    .registers 2

    .prologue
    .line 1027
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    if-eqz v0, :cond_9

    .line 1031
    :try_start_4
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_a

    .line 1038
    :cond_9
    :goto_9
    return-void

    .line 1033
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method private getElementURI()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1520
    const/4 v1, 0x0

    .line 1526
    .local v1, uri:Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v2, v2, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/xml/serializer/SerializerBase;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1528
    .local v0, prefix:Ljava/lang/String;
    if-nez v0, :cond_18

    .line 1530
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1534
    :goto_13
    if-nez v1, :cond_17

    .line 1539
    const-string v1, ""

    .line 1542
    :cond_17
    return-object v1

    .line 1532
    :cond_18
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {v2, v0}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_13
.end method

.method static getFirstCharLocName(Ljava/lang/String;)C
    .registers 4
    .parameter "name"

    .prologue
    .line 1690
    const/16 v2, 0x7d

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1691
    .local v1, i:I
    if-gez v1, :cond_e

    .line 1692
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1695
    .local v0, first:C
    :goto_d
    return v0

    .line 1694
    .end local v0           #first:C
    :cond_e
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .restart local v0       #first:C
    goto :goto_d
.end method

.method protected static getLocalName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "qname"

    .prologue
    .line 308
    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 309
    .local v0, col:I
    if-lez v0, :cond_f

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_e
    return-object v1

    :cond_f
    move-object v1, p0

    goto :goto_e
.end method

.method protected static final getPrefixPart(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "qname"

    .prologue
    .line 821
    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 822
    .local v0, col:I
    if-lez v0, :cond_e

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_d
    return-object v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private getProp(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5
    .parameter "name"
    .parameter "defaultVal"

    .prologue
    .line 1635
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputProps:Ljava/util/HashMap;

    if-nez v1, :cond_12

    .line 1636
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputProps:Ljava/util/HashMap;

    .line 1637
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputPropsDefault:Ljava/util/HashMap;

    .line 1641
    :cond_12
    if-eqz p2, :cond_1d

    .line 1642
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputPropsDefault:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1646
    .local v0, val:Ljava/lang/String;
    :goto_1c
    return-object v0

    .line 1644
    .end local v0           #val:Ljava/lang/String;
    :cond_1d
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputProps:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .restart local v0       #val:Ljava/lang/String;
    goto :goto_1c
.end method

.method private resetSerializerBase()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1251
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v0}, Lorg/apache/xml/serializer/AttributesImplSerializer;->clear()V

    .line 1252
    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_CdataElems:Ljava/util/Hashtable;

    .line 1253
    iput-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_cdataTagOpen:Z

    .line 1254
    iput-boolean v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_docIsEmpty:Z

    .line 1255
    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doctypePublic:Ljava/lang/String;

    .line 1256
    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doctypeSystem:Ljava/lang/String;

    .line 1257
    iput-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doIndent:Z

    .line 1258
    new-instance v0, Lorg/apache/xml/serializer/ElemContext;

    invoke-direct {v0}, Lorg/apache/xml/serializer/ElemContext;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    .line 1259
    iput v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_indentAmount:I

    .line 1260
    iput-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inEntityRef:Z

    .line 1261
    iput-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inExternalDTD:Z

    .line 1262
    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_mediatype:Ljava/lang/String;

    .line 1263
    iput-boolean v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    .line 1264
    iput-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToOutputDocTypeDecl:Z

    .line 1265
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputProps:Ljava/util/HashMap;

    if-eqz v0, :cond_30

    .line 1266
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputProps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1267
    :cond_30
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputPropsDefault:Ljava/util/HashMap;

    if-eqz v0, :cond_39

    .line 1268
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputPropsDefault:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1269
    :cond_39
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    if-eqz v0, :cond_42

    .line 1270
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {v0}, Lorg/apache/xml/serializer/NamespaceMappings;->reset()V

    .line 1271
    :cond_42
    iput-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_shouldNotWriteXMLHeader:Z

    .line 1272
    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    .line 1273
    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_standalone:Ljava/lang/String;

    .line 1274
    iput-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_standaloneWasSpecified:Z

    .line 1275
    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_StringOfCDATASections:Ljava/lang/String;

    .line 1276
    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    .line 1277
    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_transformer:Ljavax/xml/transform/Transformer;

    .line 1278
    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_version:Ljava/lang/String;

    .line 1281
    return-void
.end method

.method private static final subPartMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .parameter "p"
    .parameter "t"

    .prologue
    .line 807
    if-eq p0, p1, :cond_a

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v6, 0x0

    .line 446
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_1a

    .line 448
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->patchName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 449
    .local v3, patchedName:Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/xml/serializer/SerializerBase;->getLocalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 450
    .local v2, localName:Ljava/lang/String;
    invoke-virtual {p0, v3, v6}, Lorg/apache/xml/serializer/SerializerBase;->getNamespaceURI(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 452
    .local v1, uri:Ljava/lang/String;
    const-string v4, "CDATA"

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/serializer/SerializerBase;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 454
    .end local v1           #uri:Ljava/lang/String;
    .end local v2           #localName:Ljava/lang/String;
    .end local v3           #patchedName:Ljava/lang/String;
    :cond_1a
    return-void
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "uri"
    .parameter "localName"
    .parameter "rawName"
    .parameter "type"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1308
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_10

    .line 1310
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/serializer/SerializerBase;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1312
    :cond_10
    return-void
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8
    .parameter "uri"
    .parameter "localName"
    .parameter "rawName"
    .parameter "type"
    .parameter "value"
    .parameter "XSLAttribute"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 372
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_9

    .line 374
    invoke-virtual/range {p0 .. p6}, Lorg/apache/xml/serializer/SerializerBase;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 377
    :cond_9
    return-void
.end method

.method public addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 15
    .parameter "uri"
    .parameter "localName"
    .parameter "rawName"
    .parameter "type"
    .parameter "value"
    .parameter "XSLAttribute"

    .prologue
    .line 412
    if-eqz p2, :cond_a

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_19

    .line 413
    :cond_a
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v0, p3}, Lorg/apache/xml/serializer/AttributesImplSerializer;->getIndex(Ljava/lang/String;)I

    move-result v6

    .line 417
    .local v6, index:I
    :goto_10
    if-ltz v6, :cond_20

    .line 423
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v0, v6, p5}, Lorg/apache/xml/serializer/AttributesImplSerializer;->setValue(ILjava/lang/String;)V

    .line 424
    const/4 v7, 0x0

    .line 432
    .local v7, was_added:Z
    :goto_18
    return v7

    .line 415
    .end local v6           #index:I
    .end local v7           #was_added:Z
    :cond_19
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xml/serializer/AttributesImplSerializer;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .restart local v6       #index:I
    goto :goto_10

    .line 429
    :cond_20
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/xml/serializer/AttributesImplSerializer;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const/4 v7, 0x1

    .restart local v7       #was_added:Z
    goto :goto_18
.end method

.method public addAttributes(Lorg/xml/sax/Attributes;)V
    .registers 11
    .parameter "atts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 484
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v8

    .line 486
    .local v8, nAtts:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_5
    if-ge v7, v8, :cond_27

    .line 488
    invoke-interface {p1, v7}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v1

    .line 490
    .local v1, uri:Ljava/lang/String;
    if-nez v1, :cond_f

    .line 491
    const-string v1, ""

    .line 493
    :cond_f
    invoke-interface {p1, v7}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v7}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v7}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v7}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/serializer/SerializerBase;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 486
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 502
    .end local v1           #uri:Ljava/lang/String;
    :cond_27
    return-void
.end method

.method public addXSLAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "name"
    .parameter "value"
    .parameter "uri"

    .prologue
    .line 466
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-boolean v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    if-eqz v0, :cond_17

    .line 468
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->patchName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 469
    .local v3, patchedName:Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/xml/serializer/SerializerBase;->getLocalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 471
    .local v2, localName:Ljava/lang/String;
    const-string v4, "CDATA"

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p3

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lorg/apache/xml/serializer/SerializerBase;->addAttributeAlways(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 473
    .end local v2           #localName:Ljava/lang/String;
    .end local v3           #patchedName:Ljava/lang/String;
    :cond_17
    return-void
.end method

.method public asContentHandler()Lorg/xml/sax/ContentHandler;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 515
    return-object p0
.end method

.method public asDOM3Serializer()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1584
    new-instance v0, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;

    invoke-direct {v0, p0}, Lorg/apache/xml/serializer/dom3/DOM3SerializerImpl;-><init>(Lorg/apache/xml/serializer/SerializationHandler;)V

    return-object v0
.end method

.method public asDOMSerializer()Lorg/apache/xml/serializer/DOMSerializer;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 794
    return-object p0
.end method

.method public characters(Lorg/w3c/dom/Node;)V
    .registers 6
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 951
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushPending()V

    .line 952
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 953
    .local v0, data:Ljava/lang/String;
    if-eqz v0, :cond_25

    .line 955
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 956
    .local v1, length:I
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    array-length v2, v2

    if-le v1, v2, :cond_1b

    .line 958
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [C

    iput-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    .line 960
    :cond_1b
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    invoke-virtual {v0, v3, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 961
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    invoke-virtual {p0, v2, v3, v1}, Lorg/apache/xml/serializer/SerializerBase;->characters([CII)V

    .line 963
    .end local v1           #length:I
    :cond_25
    return-void
.end method

.method public close()V
    .registers 1

    .prologue
    .line 543
    return-void
.end method

.method public comment(Ljava/lang/String;)V
    .registers 5
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 256
    iput-boolean v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_docIsEmpty:Z

    .line 258
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 259
    .local v0, length:I
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    array-length v1, v1

    if-le v0, v1, :cond_14

    .line 261
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    .line 263
    :cond_14
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 264
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_charsBuff:[C

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/xml/serializer/SerializerBase;->comment([CII)V

    .line 265
    return-void
.end method

.method public documentIsEmpty()Z
    .registers 2

    .prologue
    .line 1454
    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_docIsEmpty:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget v0, v0, Lorg/apache/xml/serializer/ElemContext;->m_currentElemDepth:I

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public endEntity(Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 527
    const-string v0, "[dtd]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 528
    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inExternalDTD:Z

    .line 529
    :cond_b
    iput-boolean v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_inEntityRef:Z

    .line 531
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_14

    .line 532
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->fireEndEntity(Ljava/lang/String;)V

    .line 533
    :cond_14
    return-void
.end method

.method public entityReference(Ljava/lang/String;)V
    .registers 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 904
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushPending()V

    .line 906
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->startEntity(Ljava/lang/String;)V

    .line 907
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->endEntity(Ljava/lang/String;)V

    .line 909
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_10

    .line 910
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->fireEntityReference(Ljava/lang/String;)V

    .line 911
    :cond_10
    return-void
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .registers 2
    .parameter "exc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 970
    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .registers 4
    .parameter "exc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 977
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/apache/xml/serializer/ElemContext;->m_startTagOpen:Z

    .line 979
    return-void
.end method

.method protected fireCDATAEvent([CII)V
    .registers 6
    .parameter "chars"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1048
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_e

    .line 1050
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushMyWriter()V

    .line 1051
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    const/16 v1, 0xa

    invoke-interface {v0, v1, p1, p2, p3}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(I[CII)V

    .line 1053
    :cond_e
    return-void
.end method

.method protected fireCharEvent([CII)V
    .registers 6
    .parameter "chars"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_d

    .line 116
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushMyWriter()V

    .line 117
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    const/4 v1, 0x5

    invoke-interface {v0, v1, p1, p2, p3}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(I[CII)V

    .line 119
    :cond_d
    return-void
.end method

.method protected fireCommentEvent([CII)V
    .registers 7
    .parameter "chars"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1064
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_13

    .line 1066
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushMyWriter()V

    .line 1067
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    const/16 v1, 0x8

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v0, v1, v2}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(ILjava/lang/String;)V

    .line 1069
    :cond_13
    return-void
.end method

.method protected fireEndDoc()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1104
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_d

    .line 1106
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushMyWriter()V

    .line 1107
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(I)V

    .line 1109
    :cond_d
    return-void
.end method

.method protected fireEndElem(Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_10

    .line 100
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushMyWriter()V

    .line 101
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    const/4 v1, 0x4

    const/4 p0, 0x0

    check-cast p0, Lorg/xml/sax/Attributes;

    .end local p0
    invoke-interface {v0, v1, p1, p0}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(ILjava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 103
    :cond_10
    return-void
.end method

.method public fireEndEntity(Ljava/lang/String;)V
    .registers 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1079
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_7

    .line 1080
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushMyWriter()V

    .line 1082
    :cond_7
    return-void
.end method

.method protected fireEntityReference(Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1165
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_11

    .line 1167
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushMyWriter()V

    .line 1168
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    const/16 v1, 0x9

    const/4 p0, 0x0

    check-cast p0, Lorg/xml/sax/Attributes;

    .end local p0
    invoke-interface {v0, v1, p1, p0}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(ILjava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 1170
    :cond_11
    return-void
.end method

.method protected fireEscapingEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "name"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1150
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_d

    .line 1152
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushMyWriter()V

    .line 1153
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    const/4 v1, 0x7

    invoke-interface {v0, v1, p1, p2}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(ILjava/lang/String;Ljava/lang/String;)V

    .line 1155
    :cond_d
    return-void
.end method

.method protected fireStartDoc()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1090
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_d

    .line 1092
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushMyWriter()V

    .line 1093
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(I)V

    .line 1095
    :cond_d
    return-void
.end method

.method protected fireStartElem(Ljava/lang/String;)V
    .registers 5
    .parameter "elemName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1121
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_f

    .line 1123
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushMyWriter()V

    .line 1124
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-interface {v0, v1, p1, v2}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(ILjava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 1127
    :cond_f
    return-void
.end method

.method protected fireStartEntity(Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 995
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_e

    .line 997
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->flushMyWriter()V

    .line 998
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    const/16 v1, 0x9

    invoke-interface {v0, v1, p1}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(ILjava/lang/String;)V

    .line 1000
    :cond_e
    return-void
.end method

.method public getDoctypePublic()Ljava/lang/String;
    .registers 2

    .prologue
    .line 603
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doctypePublic:Ljava/lang/String;

    return-object v0
.end method

.method public getDoctypeSystem()Ljava/lang/String;
    .registers 2

    .prologue
    .line 625
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doctypeSystem:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 561
    const-string v0, "encoding"

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/SerializerBase;->getOutputProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndent()Z
    .registers 2

    .prologue
    .line 691
    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_doIndent:Z

    return v0
.end method

.method public getIndentAmount()I
    .registers 2

    .prologue
    .line 740
    iget v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_indentAmount:I

    return v0
.end method

.method public getMediaType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 701
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_mediatype:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaceMappings()Lorg/apache/xml/serializer/NamespaceMappings;
    .registers 2

    .prologue
    .line 833
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    return-object v0
.end method

.method public getNamespaceURI(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 12
    .parameter "qname"
    .parameter "isElement"

    .prologue
    const/4 v8, 0x0

    .line 858
    const-string v2, ""

    .line 859
    .local v2, uri:Ljava/lang/String;
    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 860
    .local v0, col:I
    if-lez v0, :cond_45

    invoke-virtual {p1, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 862
    .local v1, prefix:Ljava/lang/String;
    :goto_10
    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    if-eqz p2, :cond_49

    .line 864
    :cond_1a
    iget-object v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    if-eqz v3, :cond_49

    .line 866
    iget-object v3, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {v3, v1}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 867
    if-nez v2, :cond_49

    const-string v3, "xmlns"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    .line 869
    new-instance v3, Ljava/lang/RuntimeException;

    sget-object v4, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v5, "ER_NAMESPACE_PREFIX"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 860
    .end local v1           #prefix:Ljava/lang/String;
    :cond_45
    const-string v3, ""

    move-object v1, v3

    goto :goto_10

    .line 876
    .restart local v1       #prefix:Ljava/lang/String;
    :cond_49
    return-object v2
.end method

.method public getNamespaceURIFromPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "prefix"

    .prologue
    .line 888
    const/4 v0, 0x0

    .line 889
    .local v0, uri:Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    if-eqz v1, :cond_b

    .line 890
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {v1, p1}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 891
    :cond_b
    return-object v0
.end method

.method public getOmitXMLDeclaration()Z
    .registers 2

    .prologue
    .line 591
    iget-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_shouldNotWriteXMLHeader:Z

    return v0
.end method

.method getOutputPropDefaultKeys()Ljava/util/Set;
    .registers 2

    .prologue
    .line 1628
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputPropsDefault:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getOutputPropKeys()Ljava/util/Set;
    .registers 2

    .prologue
    .line 1631
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputProps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getOutputProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "name"

    .prologue
    .line 1552
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->getOutputPropertyNonDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1554
    .local v0, val:Ljava/lang/String;
    if-nez v0, :cond_a

    .line 1555
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/SerializerBase;->getOutputPropertyDefault(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1556
    :cond_a
    return-object v0
.end method

.method public getOutputPropertyDefault(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "name"

    .prologue
    .line 1592
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/xml/serializer/SerializerBase;->getProp(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutputPropertyNonDefault(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "name"

    .prologue
    .line 1569
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/xml/serializer/SerializerBase;->getProp(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "namespaceURI"

    .prologue
    .line 844
    iget-object v1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {v1, p1}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 845
    .local v0, prefix:Ljava/lang/String;
    return-object v0
.end method

.method public getStandalone()Ljava/lang/String;
    .registers 2

    .prologue
    .line 682
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_standalone:Ljava/lang/String;

    return-object v0
.end method

.method public getTransformer()Ljavax/xml/transform/Transformer;
    .registers 2

    .prologue
    .line 939
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_transformer:Ljavax/xml/transform/Transformer;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 710
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_version:Ljava/lang/String;

    return-object v0
.end method

.method final inTemporaryOutputState()Z
    .registers 2

    .prologue
    .line 1297
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->getEncoding()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected initCDATA()V
    .registers 1

    .prologue
    .line 553
    return-void
.end method

.method initCdataElems(Ljava/lang/String;)V
    .registers 12
    .parameter "s"

    .prologue
    const/4 v9, 0x0

    .line 1358
    if-eqz p1, :cond_64

    .line 1360
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 1363
    .local v6, max:I
    const/4 v4, 0x0

    .line 1366
    .local v4, inCurly:Z
    const/4 v2, 0x0

    .line 1368
    .local v2, foundURI:Z
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1369
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    .line 1370
    .local v7, uri:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1377
    .local v5, localName:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_11
    if-ge v3, v6, :cond_53

    .line 1380
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1382
    .local v1, c:C
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_3b

    .line 1384
    if-nez v4, :cond_37

    .line 1386
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-lez v8, :cond_34

    .line 1388
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1389
    if-nez v2, :cond_2d

    .line 1390
    const-string v7, ""

    .line 1391
    :cond_2d
    invoke-direct {p0, v7, v5}, Lorg/apache/xml/serializer/SerializerBase;->addCDATAElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1393
    const/4 v2, 0x0

    .line 1377
    :cond_34
    :goto_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 1398
    :cond_37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_34

    .line 1400
    :cond_3b
    const/16 v8, 0x7b

    if-ne v8, v1, :cond_41

    .line 1401
    const/4 v4, 0x1

    goto :goto_34

    .line 1402
    :cond_41
    const/16 v8, 0x7d

    if-ne v8, v1, :cond_4f

    .line 1405
    const/4 v2, 0x1

    .line 1406
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1407
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1408
    const/4 v4, 0x0

    goto :goto_34

    .line 1413
    :cond_4f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_34

    .line 1418
    .end local v1           #c:C
    :cond_53
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-lez v8, :cond_64

    .line 1421
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1422
    if-nez v2, :cond_61

    .line 1423
    const-string v7, ""

    .line 1424
    :cond_61
    invoke-direct {p0, v7, v5}, Lorg/apache/xml/serializer/SerializerBase;->addCDATAElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    .end local v0           #buf:Ljava/lang/StringBuffer;
    .end local v2           #foundURI:Z
    .end local v3           #i:I
    .end local v4           #inCurly:Z
    .end local v5           #localName:Ljava/lang/String;
    .end local v6           #max:I
    .end local v7           #uri:Ljava/lang/String;
    :cond_64
    return-void
.end method

.method protected isCdataSection()Z
    .registers 7

    .prologue
    .line 1473
    const/4 v0, 0x0

    .line 1475
    .local v0, b:Z
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_StringOfCDATASections:Ljava/lang/String;

    if-eqz v4, :cond_3e

    .line 1477
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v4, v4, Lorg/apache/xml/serializer/ElemContext;->m_elementLocalName:Ljava/lang/String;

    if-nez v4, :cond_17

    .line 1479
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v4, v4, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    invoke-static {v4}, Lorg/apache/xml/serializer/SerializerBase;->getLocalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1480
    .local v2, localName:Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iput-object v2, v4, Lorg/apache/xml/serializer/ElemContext;->m_elementLocalName:Ljava/lang/String;

    .line 1483
    .end local v2           #localName:Ljava/lang/String;
    :cond_17
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v4, v4, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    if-nez v4, :cond_3f

    .line 1485
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->getElementURI()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    .line 1499
    :cond_25
    :goto_25
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_CdataElems:Ljava/util/Hashtable;

    iget-object v5, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v5, v5, Lorg/apache/xml/serializer/ElemContext;->m_elementLocalName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    .line 1500
    .local v1, h:Ljava/util/Hashtable;
    if-eqz v1, :cond_3e

    .line 1502
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v4, v4, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1503
    .local v3, obj:Ljava/lang/Object;
    if-eqz v3, :cond_3e

    .line 1504
    const/4 v0, 0x1

    .line 1508
    .end local v1           #h:Ljava/util/Hashtable;
    .end local v3           #obj:Ljava/lang/Object;
    :cond_3e
    return v0

    .line 1487
    :cond_3f
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v4, v4, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_25

    .line 1488
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v4, v4, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    if-nez v4, :cond_58

    .line 1489
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v5, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v5, v5, Lorg/apache/xml/serializer/ElemContext;->m_elementLocalName:Ljava/lang/String;

    iput-object v5, v4, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    goto :goto_25

    .line 1492
    :cond_58
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v4, v4, Lorg/apache/xml/serializer/ElemContext;->m_elementLocalName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    iget-object v5, v5, Lorg/apache/xml/serializer/ElemContext;->m_elementName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_25

    .line 1495
    iget-object v4, p0, Lorg/apache/xml/serializer/SerializerBase;->m_elemContext:Lorg/apache/xml/serializer/ElemContext;

    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->getElementURI()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/apache/xml/serializer/ElemContext;->m_elementURI:Ljava/lang/String;

    goto :goto_25
.end method

.method public namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "uri"
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 780
    return-void
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1321
    return-void
.end method

.method protected patchName(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "qname"

    .prologue
    const/16 v6, 0x3a

    .line 281
    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 283
    .local v1, lastColon:I
    if-lez v1, :cond_3f

    .line 284
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 285
    .local v0, firstColon:I
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 286
    .local v3, prefix:Ljava/lang/String;
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 289
    .local v2, localName:Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-virtual {v5, v3}, Lorg/apache/xml/serializer/NamespaceMappings;->lookupNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 290
    .local v4, uri:Ljava/lang/String;
    if-eqz v4, :cond_27

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_27

    move-object v5, v2

    .line 297
    .end local v0           #firstColon:I
    .end local v2           #localName:Ljava/lang/String;
    .end local v3           #prefix:Ljava/lang/String;
    .end local v4           #uri:Ljava/lang/String;
    :goto_26
    return-object v5

    .line 293
    .restart local v0       #firstColon:I
    .restart local v2       #localName:Ljava/lang/String;
    .restart local v3       #prefix:Ljava/lang/String;
    .restart local v4       #uri:Ljava/lang/String;
    :cond_27
    if-eq v0, v1, :cond_3f

    .line 294
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_26

    .end local v0           #firstColon:I
    .end local v2           #localName:Ljava/lang/String;
    .end local v3           #prefix:Ljava/lang/String;
    .end local v4           #uri:Ljava/lang/String;
    :cond_3f
    move-object v5, p1

    .line 297
    goto :goto_26
.end method

.method public reset()Z
    .registers 2

    .prologue
    .line 1241
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;->resetSerializerBase()V

    .line 1242
    const/4 v0, 0x1

    return v0
.end method

.method public setDTDEntityExpansion(Z)V
    .registers 2
    .parameter "expand"

    .prologue
    .line 1343
    return-void
.end method

.method public setDoctype(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "doctypeSystem"
    .parameter "doctypePublic"

    .prologue
    .line 645
    const-string v0, "doctype-system"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xml/serializer/SerializerBase;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const-string v0, "doctype-public"

    invoke-virtual {p0, v0, p2}, Lorg/apache/xml/serializer/SerializerBase;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    return-void
.end method

.method public setDoctypePublic(Ljava/lang/String;)V
    .registers 3
    .parameter "doctypePublic"

    .prologue
    .line 612
    const-string v0, "doctype-public"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xml/serializer/SerializerBase;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    return-void
.end method

.method public setDoctypeSystem(Ljava/lang/String;)V
    .registers 3
    .parameter "doctypeSystem"

    .prologue
    .line 634
    const-string v0, "doctype-system"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xml/serializer/SerializerBase;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 2
    .parameter "locator"

    .prologue
    .line 340
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 3
    .parameter "encoding"

    .prologue
    .line 570
    const-string v0, "encoding"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xml/serializer/SerializerBase;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    return-void
.end method

.method public setIndent(Z)V
    .registers 4
    .parameter "doIndent"

    .prologue
    .line 761
    if-eqz p1, :cond_b

    const-string v1, "yes"

    move-object v0, v1

    .line 762
    .local v0, val:Ljava/lang/String;
    :goto_5
    const-string v1, "indent"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xml/serializer/SerializerBase;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    return-void

    .line 761
    .end local v0           #val:Ljava/lang/String;
    :cond_b
    const-string v1, "no"

    move-object v0, v1

    goto :goto_5
.end method

.method public setIndentAmount(I)V
    .registers 2
    .parameter "m_indentAmount"

    .prologue
    .line 749
    iput p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_indentAmount:I

    .line 750
    return-void
.end method

.method public setMediaType(Ljava/lang/String;)V
    .registers 3
    .parameter "mediaType"

    .prologue
    .line 732
    const-string v0, "media-type"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xml/serializer/SerializerBase;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    return-void
.end method

.method public setNamespaceMappings(Lorg/apache/xml/serializer/NamespaceMappings;)V
    .registers 2
    .parameter "mappings"

    .prologue
    .line 1236
    iput-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_prefixMap:Lorg/apache/xml/serializer/NamespaceMappings;

    .line 1237
    return-void
.end method

.method public setOmitXMLDeclaration(Z)V
    .registers 4
    .parameter "b"

    .prologue
    .line 580
    if-eqz p1, :cond_b

    const-string v1, "yes"

    move-object v0, v1

    .line 581
    .local v0, val:Ljava/lang/String;
    :goto_5
    const-string v1, "omit-xml-declaration"

    invoke-virtual {p0, v1, v0}, Lorg/apache/xml/serializer/SerializerBase;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    return-void

    .line 580
    .end local v0           #val:Ljava/lang/String;
    :cond_b
    const-string v1, "no"

    move-object v0, v1

    goto :goto_5
.end method

.method public setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "val"

    .prologue
    .line 1601
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xml/serializer/SerializerBase;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1603
    return-void
.end method

.method public setOutputPropertyDefault(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "val"

    .prologue
    .line 1610
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xml/serializer/SerializerBase;->setProp(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1612
    return-void
.end method

.method setProp(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8
    .parameter "name"
    .parameter "val"
    .parameter "defaultVal"

    .prologue
    .line 1657
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputProps:Ljava/util/HashMap;

    if-nez v2, :cond_12

    .line 1658
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputProps:Ljava/util/HashMap;

    .line 1659
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputPropsDefault:Ljava/util/HashMap;

    .line 1662
    :cond_12
    if-eqz p3, :cond_1a

    .line 1663
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputPropsDefault:Ljava/util/HashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1681
    :goto_19
    return-void

    .line 1665
    :cond_1a
    const-string v2, "cdata-section-elements"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    if-eqz p2, :cond_50

    .line 1666
    invoke-virtual {p0, p2}, Lorg/apache/xml/serializer/SerializerBase;->initCdataElems(Ljava/lang/String;)V

    .line 1667
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputProps:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1669
    .local v1, oldVal:Ljava/lang/String;
    if-nez v1, :cond_4e

    .line 1670
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1673
    .local v0, newVal:Ljava/lang/String;
    :goto_48
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputProps:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    .line 1672
    .end local v0           #newVal:Ljava/lang/String;
    :cond_4e
    move-object v0, p2

    .restart local v0       #newVal:Ljava/lang/String;
    goto :goto_48

    .line 1676
    .end local v0           #newVal:Ljava/lang/String;
    .end local v1           #oldVal:Ljava/lang/String;
    :cond_50
    iget-object v2, p0, Lorg/apache/xml/serializer/SerializerBase;->m_OutputProps:Ljava/util/HashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19
.end method

.method public setSourceLocator(Ljavax/xml/transform/SourceLocator;)V
    .registers 2
    .parameter "locator"

    .prologue
    .line 1225
    iput-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_sourceLocator:Ljavax/xml/transform/SourceLocator;

    .line 1226
    return-void
.end method

.method public setStandalone(Ljava/lang/String;)V
    .registers 3
    .parameter "standalone"

    .prologue
    .line 658
    const-string v0, "standalone"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xml/serializer/SerializerBase;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    return-void
.end method

.method protected setStandaloneInternal(Ljava/lang/String;)V
    .registers 3
    .parameter "standalone"

    .prologue
    .line 667
    const-string v0, "yes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 668
    const-string v0, "yes"

    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_standalone:Ljava/lang/String;

    .line 672
    :goto_c
    return-void

    .line 670
    :cond_d
    const-string v0, "no"

    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_standalone:Ljava/lang/String;

    goto :goto_c
.end method

.method public setTransformer(Ljavax/xml/transform/Transformer;)V
    .registers 3
    .parameter "t"

    .prologue
    .line 920
    iput-object p1, p0, Lorg/apache/xml/serializer/SerializerBase;->m_transformer:Ljavax/xml/transform/Transformer;

    .line 925
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_transformer:Ljavax/xml/transform/Transformer;

    instance-of v0, v0, Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_transformer:Ljavax/xml/transform/Transformer;

    check-cast v0, Lorg/apache/xml/serializer/SerializerTrace;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializerTrace;->hasTraceListeners()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 927
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_transformer:Ljavax/xml/transform/Transformer;

    check-cast v0, Lorg/apache/xml/serializer/SerializerTrace;

    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    .line 931
    :goto_18
    return-void

    .line 929
    :cond_19
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    goto :goto_18
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 3
    .parameter "version"

    .prologue
    .line 720
    const-string v0, "version"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xml/serializer/SerializerBase;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    return-void
.end method

.method public startDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1190
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->startDocumentInternal()V

    .line 1191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_needToCallStartDocument:Z

    .line 1192
    return-void
.end method

.method protected startDocumentInternal()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1213
    iget-object v0, p0, Lorg/apache/xml/serializer/SerializerBase;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_7

    .line 1214
    invoke-virtual {p0}, Lorg/apache/xml/serializer/SerializerBase;->fireStartDoc()V

    .line 1215
    :cond_7
    return-void
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1334
    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .registers 2
    .parameter "exc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 986
    return-void
.end method
