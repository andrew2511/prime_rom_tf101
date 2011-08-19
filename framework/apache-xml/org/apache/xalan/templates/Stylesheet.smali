.class public Lorg/apache/xalan/templates/Stylesheet;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "Stylesheet.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final STYLESHEET_EXT:Ljava/lang/String; = ".lxc"

.field static final serialVersionUID:J = 0x1cf09b35c6c706c0L


# instance fields
.field m_DecimalFormatDeclarations:Ljava/util/Stack;

.field private m_ExcludeResultPrefixs:Lorg/apache/xml/utils/StringVector;

.field private m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

.field private m_Id:Ljava/lang/String;

.field private m_NonXslTopLevel:Ljava/util/Hashtable;

.field private m_Version:Ljava/lang/String;

.field private m_XmlnsXsl:Ljava/lang/String;

.field private m_attributeSets:Ljava/util/Vector;

.field private m_href:Ljava/lang/String;

.field private m_imports:Ljava/util/Vector;

.field private m_includes:Ljava/util/Vector;

.field private m_isCompatibleMode:Z

.field private m_keyDeclarations:Ljava/util/Vector;

.field private m_output:Ljava/util/Vector;

.field private m_prefix_aliases:Ljava/util/Vector;

.field private m_publicId:Ljava/lang/String;

.field private m_stylesheetParent:Lorg/apache/xalan/templates/Stylesheet;

.field private m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

.field private m_systemId:Ljava/lang/String;

.field private m_templates:Ljava/util/Vector;

.field private m_topLevelVariables:Ljava/util/Vector;

.field private m_whitespacePreservingElements:Ljava/util/Vector;

.field private m_whitespaceStrippingElements:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lorg/apache/xalan/templates/Stylesheet;)V
    .registers 3
    .parameter "parent"

    .prologue
    .line 91
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    .line 408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_isCompatibleMode:Z

    .line 1191
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_href:Ljava/lang/String;

    .line 93
    if-eqz p1, :cond_13

    .line 95
    iput-object p1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_stylesheetParent:Lorg/apache/xalan/templates/Stylesheet;

    .line 96
    invoke-virtual {p1}, Lorg/apache/xalan/templates/Stylesheet;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    .line 98
    :cond_13
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 153
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_4

    .line 161
    return-void

    .line 155
    :catch_4
    move-exception v0

    .line 157
    .local v0, cnfe:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 178
    return-void
.end method


# virtual methods
.method protected accept(Lorg/apache/xalan/templates/XSLTVisitor;)Z
    .registers 3
    .parameter "visitor"

    .prologue
    .line 1512
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/XSLTVisitor;->visitStylesheet(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    move-result v0

    return v0
.end method

.method protected callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .registers 12
    .parameter "visitor"
    .parameter "callAttrs"

    .prologue
    .line 1389
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getImportCount()I

    move-result v4

    .line 1390
    .local v4, s:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_5
    if-ge v3, v4, :cond_11

    .line 1392
    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/Stylesheet;->getImport(I)Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v8

    invoke-virtual {v8, p1}, Lorg/apache/xalan/templates/StylesheetComposed;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    .line 1390
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1395
    :cond_11
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getIncludeCount()I

    move-result v4

    .line 1396
    const/4 v3, 0x0

    :goto_16
    if-ge v3, v4, :cond_22

    .line 1398
    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/Stylesheet;->getInclude(I)Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v8

    invoke-virtual {v8, p1}, Lorg/apache/xalan/templates/Stylesheet;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    .line 1396
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1401
    :cond_22
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getOutputCount()I

    move-result v4

    .line 1402
    const/4 v3, 0x0

    :goto_27
    if-ge v3, v4, :cond_33

    .line 1404
    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/Stylesheet;->getOutput(I)Lorg/apache/xalan/templates/OutputProperties;

    move-result-object v8

    invoke-virtual {p1, v8}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    .line 1402
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 1409
    :cond_33
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getAttributeSetCount()I

    move-result v4

    .line 1410
    const/4 v3, 0x0

    :goto_38
    if-ge v3, v4, :cond_4a

    .line 1412
    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/Stylesheet;->getAttributeSet(I)Lorg/apache/xalan/templates/ElemAttributeSet;

    move-result-object v0

    .line 1413
    .local v0, attrSet:Lorg/apache/xalan/templates/ElemAttributeSet;
    invoke-virtual {p1, v0}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    move-result v8

    if-eqz v8, :cond_47

    .line 1415
    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/ElemAttributeSet;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    .line 1410
    :cond_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 1420
    .end local v0           #attrSet:Lorg/apache/xalan/templates/ElemAttributeSet;
    :cond_4a
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getDecimalFormatCount()I

    move-result v4

    .line 1421
    const/4 v3, 0x0

    :goto_4f
    if-ge v3, v4, :cond_5b

    .line 1423
    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/Stylesheet;->getDecimalFormat(I)Lorg/apache/xalan/templates/DecimalFormatProperties;

    move-result-object v8

    invoke-virtual {p1, v8}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    .line 1421
    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    .line 1428
    :cond_5b
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getKeyCount()I

    move-result v4

    .line 1429
    const/4 v3, 0x0

    :goto_60
    if-ge v3, v4, :cond_6c

    .line 1431
    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/Stylesheet;->getKey(I)Lorg/apache/xalan/templates/KeyDeclaration;

    move-result-object v8

    invoke-virtual {p1, v8}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    .line 1429
    add-int/lit8 v3, v3, 0x1

    goto :goto_60

    .line 1436
    :cond_6c
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getNamespaceAliasCount()I

    move-result v4

    .line 1437
    const/4 v3, 0x0

    :goto_71
    if-ge v3, v4, :cond_7d

    .line 1439
    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/Stylesheet;->getNamespaceAlias(I)Lorg/apache/xalan/templates/NamespaceAlias;

    move-result-object v8

    invoke-virtual {p1, v8}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    .line 1437
    add-int/lit8 v3, v3, 0x1

    goto :goto_71

    .line 1444
    :cond_7d
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getTemplateCount()I

    move-result v4

    .line 1445
    const/4 v3, 0x0

    :goto_82
    if-ge v3, v4, :cond_9c

    .line 1449
    :try_start_84
    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/Stylesheet;->getTemplate(I)Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v6

    .line 1450
    .local v6, template:Lorg/apache/xalan/templates/ElemTemplate;
    invoke-virtual {p1, v6}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    move-result v8

    if-eqz v8, :cond_91

    .line 1452
    invoke-virtual {v6, p1}, Lorg/apache/xalan/templates/ElemTemplate;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V
    :try_end_91
    .catch Ljavax/xml/transform/TransformerException; {:try_start_84 .. :try_end_91} :catch_94

    .line 1445
    :cond_91
    add-int/lit8 v3, v3, 0x1

    goto :goto_82

    .line 1455
    .end local v6           #template:Lorg/apache/xalan/templates/ElemTemplate;
    :catch_94
    move-exception v8

    move-object v5, v8

    .line 1457
    .local v5, te:Ljavax/xml/transform/TransformerException;
    new-instance v8, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v8, v5}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v8

    .line 1463
    .end local v5           #te:Ljavax/xml/transform/TransformerException;
    :cond_9c
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getVariableOrParamCount()I

    move-result v4

    .line 1464
    const/4 v3, 0x0

    :goto_a1
    if-ge v3, v4, :cond_b3

    .line 1466
    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/Stylesheet;->getVariableOrParam(I)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v7

    .line 1467
    .local v7, var:Lorg/apache/xalan/templates/ElemVariable;
    invoke-virtual {p1, v7}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelVariableOrParamDecl(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    move-result v8

    if-eqz v8, :cond_b0

    .line 1469
    invoke-virtual {v7, p1}, Lorg/apache/xalan/templates/ElemVariable;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    .line 1464
    :cond_b0
    add-int/lit8 v3, v3, 0x1

    goto :goto_a1

    .line 1475
    .end local v7           #var:Lorg/apache/xalan/templates/ElemVariable;
    :cond_b3
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getStripSpaceCount()I

    move-result v4

    .line 1476
    const/4 v3, 0x0

    :goto_b8
    if-ge v3, v4, :cond_c4

    .line 1478
    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/Stylesheet;->getStripSpace(I)Lorg/apache/xalan/templates/WhiteSpaceInfo;

    move-result-object v8

    invoke-virtual {p1, v8}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    .line 1476
    add-int/lit8 v3, v3, 0x1

    goto :goto_b8

    .line 1481
    :cond_c4
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getPreserveSpaceCount()I

    move-result v4

    .line 1482
    const/4 v3, 0x0

    :goto_c9
    if-ge v3, v4, :cond_d5

    .line 1484
    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/Stylesheet;->getPreserveSpace(I)Lorg/apache/xalan/templates/WhiteSpaceInfo;

    move-result-object v8

    invoke-virtual {p1, v8}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    .line 1482
    add-int/lit8 v3, v3, 0x1

    goto :goto_c9

    .line 1487
    :cond_d5
    iget-object v8, p0, Lorg/apache/xalan/templates/Stylesheet;->m_NonXslTopLevel:Ljava/util/Hashtable;

    if-eqz v8, :cond_f5

    .line 1489
    iget-object v8, p0, Lorg/apache/xalan/templates/Stylesheet;->m_NonXslTopLevel:Ljava/util/Hashtable;

    invoke-virtual {v8}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 1490
    .local v2, elements:Ljava/util/Enumeration;
    :cond_df
    :goto_df
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_f5

    .line 1492
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 1493
    .local v1, elem:Lorg/apache/xalan/templates/ElemTemplateElement;
    invoke-virtual {p1, v1}, Lorg/apache/xalan/templates/XSLTVisitor;->visitTopLevelInstruction(Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    move-result v8

    if-eqz v8, :cond_df

    .line 1495
    invoke-virtual {v1, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    goto :goto_df

    .line 1500
    .end local v1           #elem:Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v2           #elements:Ljava/util/Enumeration;
    :cond_f5
    return-void
.end method

.method public containsExcludeResultPrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "prefix"
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 351
    iget-object v1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExcludeResultPrefixs:Lorg/apache/xml/utils/StringVector;

    if-eqz v1, :cond_7

    if-nez p2, :cond_9

    :cond_7
    move v1, v2

    .line 362
    :goto_8
    return v1

    .line 356
    :cond_9
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    iget-object v1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExcludeResultPrefixs:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v1}, Lorg/apache/xml/utils/StringVector;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 358
    iget-object v1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExcludeResultPrefixs:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v1, v0}, Lorg/apache/xml/utils/StringVector;->elementAt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/xalan/templates/Stylesheet;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 359
    const/4 v1, 0x1

    goto :goto_8

    .line 356
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_27
    move v1, v2

    .line 362
    goto :goto_8
.end method

.method public containsExtensionElementURI(Ljava/lang/String;)Z
    .registers 3
    .parameter "uri"

    .prologue
    .line 271
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    if-nez v0, :cond_6

    .line 272
    const/4 v0, 0x0

    .line 274
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/StringVector;->contains(Ljava/lang/String;)Z

    move-result v0

    goto :goto_5
.end method

.method public getAttributeSet(I)Lorg/apache/xalan/templates/ElemAttributeSet;
    .registers 3
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 885
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_attributeSets:Ljava/util/Vector;

    if-nez v0, :cond_a

    .line 886
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 888
    :cond_a
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_attributeSets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/xalan/templates/ElemAttributeSet;

    return-object p0
.end method

.method public getAttributeSetCount()I
    .registers 2

    .prologue
    .line 899
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_attributeSets:Ljava/util/Vector;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_attributeSets:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getCompatibleMode()Z
    .registers 2

    .prologue
    .line 429
    iget-boolean v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_isCompatibleMode:Z

    return v0
.end method

.method public getDecimalFormat(I)Lorg/apache/xalan/templates/DecimalFormatProperties;
    .registers 3
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 615
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_DecimalFormatDeclarations:Ljava/util/Stack;

    if-nez v0, :cond_a

    .line 616
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 618
    :cond_a
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_DecimalFormatDeclarations:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/xalan/templates/DecimalFormatProperties;

    return-object p0
.end method

.method public getDecimalFormat(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/DecimalFormatProperties;
    .registers 7
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    .line 584
    iget-object v3, p0, Lorg/apache/xalan/templates/Stylesheet;->m_DecimalFormatDeclarations:Ljava/util/Stack;

    if-nez v3, :cond_7

    move-object v3, v4

    .line 597
    :goto_6
    return-object v3

    .line 587
    :cond_7
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getDecimalFormatCount()I

    move-result v2

    .line 589
    .local v2, n:I
    const/4 v3, 0x1

    sub-int v1, v2, v3

    .local v1, i:I
    :goto_e
    if-ltz v1, :cond_23

    .line 591
    invoke-virtual {p0, v1}, Lorg/apache/xalan/templates/Stylesheet;->getDecimalFormat(I)Lorg/apache/xalan/templates/DecimalFormatProperties;

    move-result-object v0

    .line 593
    .local v0, dfp:Lorg/apache/xalan/templates/DecimalFormatProperties;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/DecimalFormatProperties;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    move-object v3, v0

    .line 594
    goto :goto_6

    .line 589
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .end local v0           #dfp:Lorg/apache/xalan/templates/DecimalFormatProperties;
    :cond_23
    move-object v3, v4

    .line 597
    goto :goto_6
.end method

.method public getDecimalFormatCount()I
    .registers 2

    .prologue
    .line 629
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_DecimalFormatDeclarations:Ljava/util/Stack;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_DecimalFormatDeclarations:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getExcludeResultPrefix(I)Ljava/lang/String;
    .registers 3
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExcludeResultPrefixs:Lorg/apache/xml/utils/StringVector;

    if-nez v0, :cond_a

    .line 321
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 323
    :cond_a
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExcludeResultPrefixs:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/StringVector;->elementAt(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExcludeResultPrefixCount()I
    .registers 2

    .prologue
    .line 334
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExcludeResultPrefixs:Lorg/apache/xml/utils/StringVector;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExcludeResultPrefixs:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/StringVector;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getExtensionElementPrefix(I)Ljava/lang/String;
    .registers 3
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    if-nez v0, :cond_a

    .line 243
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 245
    :cond_a
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v0, p1}, Lorg/apache/xml/utils/StringVector;->elementAt(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionElementPrefixCount()I
    .registers 2

    .prologue
    .line 256
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    invoke-virtual {v0}, Lorg/apache/xml/utils/StringVector;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getHref()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1208
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_href:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 395
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_Id:Ljava/lang/String;

    return-object v0
.end method

.method public getImport(I)Lorg/apache/xalan/templates/StylesheetComposed;
    .registers 3
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 480
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_imports:Ljava/util/Vector;

    if-nez v0, :cond_a

    .line 481
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 483
    :cond_a
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_imports:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/xalan/templates/StylesheetComposed;

    return-object p0
.end method

.method public getImportCount()I
    .registers 2

    .prologue
    .line 494
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_imports:Ljava/util/Vector;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_imports:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getInclude(I)Lorg/apache/xalan/templates/Stylesheet;
    .registers 3
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 531
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_includes:Ljava/util/Vector;

    if-nez v0, :cond_a

    .line 532
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 534
    :cond_a
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_includes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/xalan/templates/Stylesheet;

    return-object p0
.end method

.method public getIncludeCount()I
    .registers 2

    .prologue
    .line 545
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_includes:Ljava/util/Vector;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_includes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getKey(I)Lorg/apache/xalan/templates/KeyDeclaration;
    .registers 3
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 831
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_keyDeclarations:Ljava/util/Vector;

    if-nez v0, :cond_a

    .line 832
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 834
    :cond_a
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_keyDeclarations:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/xalan/templates/KeyDeclaration;

    return-object p0
.end method

.method public getKeyCount()I
    .registers 2

    .prologue
    .line 845
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_keyDeclarations:Ljava/util/Vector;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_keyDeclarations:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getNamespaceAlias(I)Lorg/apache/xalan/templates/NamespaceAlias;
    .registers 3
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 1133
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_prefix_aliases:Ljava/util/Vector;

    if-nez v0, :cond_a

    .line 1134
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1136
    :cond_a
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_prefix_aliases:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/xalan/templates/NamespaceAlias;

    return-object p0
.end method

.method public getNamespaceAliasCount()I
    .registers 2

    .prologue
    .line 1147
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_prefix_aliases:Ljava/util/Vector;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_prefix_aliases:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1357
    const-string v0, "stylesheet"

    return-object v0
.end method

.method public getNodeType()S
    .registers 2

    .prologue
    .line 1335
    const/16 v0, 0x9

    return v0
.end method

.method public getNonXslTopLevel(Lorg/apache/xml/utils/QName;)Ljava/lang/Object;
    .registers 3
    .parameter "name"

    .prologue
    .line 1182
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_NonXslTopLevel:Ljava/util/Hashtable;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_NonXslTopLevel:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getOutput(I)Lorg/apache/xalan/templates/OutputProperties;
    .registers 3
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 779
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_output:Ljava/util/Vector;

    if-nez v0, :cond_a

    .line 780
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 782
    :cond_a
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_output:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/xalan/templates/OutputProperties;

    return-object p0
.end method

.method public getOutputCount()I
    .registers 2

    .prologue
    .line 793
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_output:Ljava/util/Vector;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_output:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getParam(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/ElemParam;
    .registers 7
    .parameter "qname"

    .prologue
    .line 1030
    iget-object v3, p0, Lorg/apache/xalan/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    if-eqz v3, :cond_28

    .line 1032
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getVariableOrParamCount()I

    move-result v1

    .line 1034
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    if-ge v0, v1, :cond_28

    .line 1036
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/Stylesheet;->getVariableOrParam(I)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v2

    .line 1037
    .local v2, var:Lorg/apache/xalan/templates/ElemVariable;
    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemVariable;->getXSLToken()I

    move-result v3

    const/16 v4, 0x29

    if-ne v3, v4, :cond_25

    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1039
    check-cast v2, Lorg/apache/xalan/templates/ElemParam;

    .end local v2           #var:Lorg/apache/xalan/templates/ElemVariable;
    move-object v3, v2

    .line 1043
    .end local v0           #i:I
    .end local v1           #n:I
    :goto_24
    return-object v3

    .line 1034
    .restart local v0       #i:I
    .restart local v1       #n:I
    .restart local v2       #var:Lorg/apache/xalan/templates/ElemVariable;
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1043
    .end local v0           #i:I
    .end local v1           #n:I
    .end local v2           #var:Lorg/apache/xalan/templates/ElemVariable;
    :cond_28
    const/4 v3, 0x0

    goto :goto_24
.end method

.method public getPreserveSpace(I)Lorg/apache/xalan/templates/WhiteSpaceInfo;
    .registers 3
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 725
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespacePreservingElements:Ljava/util/Vector;

    if-nez v0, :cond_a

    .line 726
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 728
    :cond_a
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespacePreservingElements:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/xalan/templates/WhiteSpaceInfo;

    return-object p0
.end method

.method public getPreserveSpaceCount()I
    .registers 2

    .prologue
    .line 739
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespacePreservingElements:Ljava/util/Vector;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespacePreservingElements:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getStripSpace(I)Lorg/apache/xalan/templates/WhiteSpaceInfo;
    .registers 3
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 670
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespaceStrippingElements:Ljava/util/Vector;

    if-nez v0, :cond_a

    .line 671
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 673
    :cond_a
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespaceStrippingElements:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/xalan/templates/WhiteSpaceInfo;

    return-object p0
.end method

.method public getStripSpaceCount()I
    .registers 2

    .prologue
    .line 684
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespaceStrippingElements:Ljava/util/Vector;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespaceStrippingElements:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getStylesheet()Lorg/apache/xalan/templates/Stylesheet;
    .registers 1

    .prologue
    .line 109
    return-object p0
.end method

.method public getStylesheetComposed()Lorg/apache/xalan/templates/StylesheetComposed;
    .registers 3

    .prologue
    .line 1318
    move-object v0, p0

    .line 1320
    .local v0, sheet:Lorg/apache/xalan/templates/Stylesheet;
    :goto_1
    invoke-virtual {v0}, Lorg/apache/xalan/templates/Stylesheet;->isAggregatedType()Z

    move-result v1

    if-nez v1, :cond_c

    .line 1322
    invoke-virtual {v0}, Lorg/apache/xalan/templates/Stylesheet;->getStylesheetParent()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v0

    goto :goto_1

    .line 1325
    :cond_c
    check-cast v0, Lorg/apache/xalan/templates/StylesheetComposed;

    .end local v0           #sheet:Lorg/apache/xalan/templates/Stylesheet;
    return-object v0
.end method

.method public getStylesheetParent()Lorg/apache/xalan/templates/Stylesheet;
    .registers 2

    .prologue
    .line 1295
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_stylesheetParent:Lorg/apache/xalan/templates/Stylesheet;

    return-object v0
.end method

.method public getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;
    .registers 2

    .prologue
    .line 1266
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    return-object v0
.end method

.method public getTemplate(I)Lorg/apache/xalan/templates/ElemTemplate;
    .registers 3
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 1081
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    if-nez v0, :cond_a

    .line 1082
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1084
    :cond_a
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/xalan/templates/ElemTemplate;

    return-object p0
.end method

.method public getTemplateCount()I
    .registers 2

    .prologue
    .line 1095
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getVariable(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/ElemVariable;
    .registers 7
    .parameter "qname"

    .prologue
    .line 962
    iget-object v3, p0, Lorg/apache/xalan/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    if-eqz v3, :cond_26

    .line 964
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getVariableOrParamCount()I

    move-result v1

    .line 966
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    if-ge v0, v1, :cond_26

    .line 968
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/Stylesheet;->getVariableOrParam(I)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v2

    .line 969
    .local v2, var:Lorg/apache/xalan/templates/ElemVariable;
    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemVariable;->getXSLToken()I

    move-result v3

    const/16 v4, 0x49

    if-ne v3, v4, :cond_23

    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    move-object v3, v2

    .line 975
    .end local v0           #i:I
    .end local v1           #n:I
    .end local v2           #var:Lorg/apache/xalan/templates/ElemVariable;
    :goto_22
    return-object v3

    .line 966
    .restart local v0       #i:I
    .restart local v1       #n:I
    .restart local v2       #var:Lorg/apache/xalan/templates/ElemVariable;
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 975
    .end local v0           #i:I
    .end local v1           #n:I
    .end local v2           #var:Lorg/apache/xalan/templates/ElemVariable;
    :cond_26
    const/4 v3, 0x0

    goto :goto_22
.end method

.method public getVariableOrParam(I)Lorg/apache/xalan/templates/ElemVariable;
    .registers 3
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 991
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    if-nez v0, :cond_a

    .line 992
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 994
    :cond_a
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/xalan/templates/ElemVariable;

    return-object p0
.end method

.method public getVariableOrParam(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/ElemVariable;
    .registers 6
    .parameter "qname"

    .prologue
    .line 934
    iget-object v3, p0, Lorg/apache/xalan/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    if-eqz v3, :cond_1e

    .line 936
    invoke-virtual {p0}, Lorg/apache/xalan/templates/Stylesheet;->getVariableOrParamCount()I

    move-result v1

    .line 938
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    if-ge v0, v1, :cond_1e

    .line 940
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/Stylesheet;->getVariableOrParam(I)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v2

    .line 942
    .local v2, var:Lorg/apache/xalan/templates/ElemVariable;
    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    move-object v3, v2

    .line 947
    .end local v0           #i:I
    .end local v1           #n:I
    .end local v2           #var:Lorg/apache/xalan/templates/ElemVariable;
    :goto_1a
    return-object v3

    .line 938
    .restart local v0       #i:I
    .restart local v1       #n:I
    .restart local v2       #var:Lorg/apache/xalan/templates/ElemVariable;
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 947
    .end local v0           #i:I
    .end local v1           #n:I
    .end local v2           #var:Lorg/apache/xalan/templates/ElemVariable;
    :cond_1e
    const/4 v3, 0x0

    goto :goto_1a
.end method

.method public getVariableOrParamCount()I
    .registers 2

    .prologue
    .line 1005
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 440
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_Version:Ljava/lang/String;

    return-object v0
.end method

.method public getXSLToken()I
    .registers 2

    .prologue
    .line 1347
    const/16 v0, 0x19

    return v0
.end method

.method public getXmlnsXsl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_XmlnsXsl:Ljava/lang/String;

    return-object v0
.end method

.method public isAggregatedType()Z
    .registers 2

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public isRoot()Z
    .registers 2

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public replaceTemplate(Lorg/apache/xalan/templates/ElemTemplate;I)V
    .registers 4
    .parameter "v"
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 1375
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    if-nez v0, :cond_a

    .line 1376
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1378
    :cond_a
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/Stylesheet;->replaceChild(Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 1379
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 1380
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/ElemTemplate;->setStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V

    .line 1381
    return-void
.end method

.method public setAttributeSet(Lorg/apache/xalan/templates/ElemAttributeSet;)V
    .registers 3
    .parameter "attrSet"

    .prologue
    .line 863
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_attributeSets:Ljava/util/Vector;

    if-nez v0, :cond_b

    .line 865
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_attributeSets:Ljava/util/Vector;

    .line 868
    :cond_b
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_attributeSets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 869
    return-void
.end method

.method public setDecimalFormat(Lorg/apache/xalan/templates/DecimalFormatProperties;)V
    .registers 3
    .parameter "edf"

    .prologue
    .line 563
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_DecimalFormatDeclarations:Ljava/util/Stack;

    if-nez v0, :cond_b

    .line 564
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_DecimalFormatDeclarations:Ljava/util/Stack;

    .line 568
    :cond_b
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_DecimalFormatDeclarations:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    return-void
.end method

.method public setExcludeResultPrefixes(Lorg/apache/xml/utils/StringVector;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 297
    iput-object p1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExcludeResultPrefixs:Lorg/apache/xml/utils/StringVector;

    .line 298
    return-void
.end method

.method public setExtensionElementPrefixes(Lorg/apache/xml/utils/StringVector;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 225
    iput-object p1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_ExtensionElementURIs:Lorg/apache/xml/utils/StringVector;

    .line 226
    return-void
.end method

.method public setHref(Ljava/lang/String;)V
    .registers 2
    .parameter "baseIdent"

    .prologue
    .line 1218
    iput-object p1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_href:Ljava/lang/String;

    .line 1219
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 384
    iput-object p1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_Id:Ljava/lang/String;

    .line 385
    return-void
.end method

.method public setImport(Lorg/apache/xalan/templates/StylesheetComposed;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 458
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_imports:Ljava/util/Vector;

    if-nez v0, :cond_b

    .line 459
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_imports:Ljava/util/Vector;

    .line 463
    :cond_b
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_imports:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 464
    return-void
.end method

.method public setInclude(Lorg/apache/xalan/templates/Stylesheet;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 512
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_includes:Ljava/util/Vector;

    if-nez v0, :cond_b

    .line 513
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_includes:Ljava/util/Vector;

    .line 515
    :cond_b
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_includes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 516
    return-void
.end method

.method public setKey(Lorg/apache/xalan/templates/KeyDeclaration;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 812
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_keyDeclarations:Ljava/util/Vector;

    if-nez v0, :cond_b

    .line 813
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_keyDeclarations:Ljava/util/Vector;

    .line 815
    :cond_b
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_keyDeclarations:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 816
    return-void
.end method

.method public setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V
    .registers 4
    .parameter "locator"

    .prologue
    .line 1229
    if-eqz p1, :cond_1e

    .line 1231
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getPublicId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_publicId:Ljava/lang/String;

    .line 1232
    invoke-interface {p1}, Ljavax/xml/transform/SourceLocator;->getSystemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_systemId:Ljava/lang/String;

    .line 1234
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_systemId:Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 1238
    :try_start_12
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_systemId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/xml/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_href:Ljava/lang/String;
    :try_end_1b
    .catch Ljavax/xml/transform/TransformerException; {:try_start_12 .. :try_end_1b} :catch_1f

    .line 1247
    :cond_1b
    :goto_1b
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    .line 1249
    :cond_1e
    return-void

    .line 1240
    :catch_1f
    move-exception v0

    goto :goto_1b
.end method

.method public setNamespaceAlias(Lorg/apache/xalan/templates/NamespaceAlias;)V
    .registers 3
    .parameter "na"

    .prologue
    .line 1113
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_prefix_aliases:Ljava/util/Vector;

    if-nez v0, :cond_b

    .line 1114
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_prefix_aliases:Ljava/util/Vector;

    .line 1116
    :cond_b
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_prefix_aliases:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1117
    return-void
.end method

.method public setNonXslTopLevel(Lorg/apache/xml/utils/QName;Ljava/lang/Object;)V
    .registers 4
    .parameter "name"
    .parameter "obj"

    .prologue
    .line 1166
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_NonXslTopLevel:Ljava/util/Hashtable;

    if-nez v0, :cond_b

    .line 1167
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_NonXslTopLevel:Ljava/util/Hashtable;

    .line 1169
    :cond_b
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_NonXslTopLevel:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    return-void
.end method

.method public setOutput(Lorg/apache/xalan/templates/OutputProperties;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 758
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_output:Ljava/util/Vector;

    if-nez v0, :cond_b

    .line 760
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_output:Ljava/util/Vector;

    .line 763
    :cond_b
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_output:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 764
    return-void
.end method

.method public setParam(Lorg/apache/xalan/templates/ElemParam;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 1016
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/Stylesheet;->setVariable(Lorg/apache/xalan/templates/ElemVariable;)V

    .line 1017
    return-void
.end method

.method public setPreserveSpaces(Lorg/apache/xalan/templates/WhiteSpaceInfo;)V
    .registers 3
    .parameter "wsi"

    .prologue
    .line 704
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespacePreservingElements:Ljava/util/Vector;

    if-nez v0, :cond_b

    .line 706
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespacePreservingElements:Ljava/util/Vector;

    .line 709
    :cond_b
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespacePreservingElements:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 710
    return-void
.end method

.method public setStripSpaces(Lorg/apache/xalan/templates/WhiteSpaceInfo;)V
    .registers 3
    .parameter "wsi"

    .prologue
    .line 649
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespaceStrippingElements:Ljava/util/Vector;

    if-nez v0, :cond_b

    .line 651
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespaceStrippingElements:Ljava/util/Vector;

    .line 654
    :cond_b
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_whitespaceStrippingElements:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 655
    return-void
.end method

.method public setStylesheetParent(Lorg/apache/xalan/templates/Stylesheet;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 1306
    iput-object p1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_stylesheetParent:Lorg/apache/xalan/templates/Stylesheet;

    .line 1307
    return-void
.end method

.method public setStylesheetRoot(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 1277
    iput-object p1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_stylesheetRoot:Lorg/apache/xalan/templates/StylesheetRoot;

    .line 1278
    return-void
.end method

.method public setTemplate(Lorg/apache/xalan/templates/ElemTemplate;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 1061
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    if-nez v0, :cond_b

    .line 1062
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    .line 1064
    :cond_b
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_templates:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1065
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/ElemTemplate;->setStylesheet(Lorg/apache/xalan/templates/Stylesheet;)V

    .line 1066
    return-void
.end method

.method public setVariable(Lorg/apache/xalan/templates/ElemVariable;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 917
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    if-nez v0, :cond_b

    .line 918
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    .line 920
    :cond_b
    iget-object v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_topLevelVariables:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 921
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 418
    iput-object p1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_Version:Ljava/lang/String;

    .line 419
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_14

    const/4 v0, 0x1

    :goto_11
    iput-boolean v0, p0, Lorg/apache/xalan/templates/Stylesheet;->m_isCompatibleMode:Z

    .line 420
    return-void

    .line 419
    :cond_14
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public setXmlnsXsl(Ljava/lang/String;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 196
    iput-object p1, p0, Lorg/apache/xalan/templates/Stylesheet;->m_XmlnsXsl:Ljava/lang/String;

    .line 197
    return-void
.end method
