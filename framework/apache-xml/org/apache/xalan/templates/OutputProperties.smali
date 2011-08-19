.class public Lorg/apache/xalan/templates/OutputProperties;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "OutputProperties.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final serialVersionUID:J = -0x60cd2713ce100890L


# instance fields
.field private m_properties:Ljava/util/Properties;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 58
    const-string v0, "xml"

    invoke-direct {p0, v0}, Lorg/apache/xalan/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "method"

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    .line 668
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    .line 83
    new-instance v0, Ljava/util/Properties;

    invoke-static {p1}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->getDefaultMethodProperties(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    iput-object v0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .registers 3
    .parameter "defaults"

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    .line 668
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    .line 68
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0, p1}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    iput-object v0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    .line 69
    return-void
.end method

.method public static getDefaultMethodProperties(Ljava/lang/String;)Ljava/util/Properties;
    .registers 2
    .parameter "method"

    .prologue
    .line 687
    invoke-static {p0}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->getDefaultMethodProperties(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method public static getQNameProperties(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Vector;
    .registers 11
    .parameter "key"
    .parameter "props"

    .prologue
    .line 485
    invoke-virtual {p1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 487
    .local v6, s:Ljava/lang/String;
    if-eqz v6, :cond_60

    .line 489
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 490
    .local v7, v:Ljava/util/Vector;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    .line 491
    .local v4, l:I
    const/4 v3, 0x0

    .line 492
    .local v3, inCurly:Z
    new-instance v0, Lorg/apache/xml/utils/FastStringBuffer;

    invoke-direct {v0}, Lorg/apache/xml/utils/FastStringBuffer;-><init>()V

    .line 497
    .local v0, buf:Lorg/apache/xml/utils/FastStringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_16
    if-ge v2, v4, :cond_4a

    .line 499
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 501
    .local v1, c:C
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_3b

    .line 503
    if-nez v3, :cond_40

    .line 505
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    move-result v8

    if-lez v8, :cond_38

    .line 507
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/xml/utils/QName;->getQNameFromString(Ljava/lang/String;)Lorg/apache/xml/utils/QName;

    move-result-object v5

    .line 508
    .local v5, qname:Lorg/apache/xml/utils/QName;
    invoke-virtual {v7, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 509
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->reset()V

    .line 497
    .end local v5           #qname:Lorg/apache/xml/utils/QName;
    :cond_38
    :goto_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 514
    :cond_3b
    const/16 v8, 0x7b

    if-ne v8, v1, :cond_44

    .line 515
    const/4 v3, 0x1

    .line 519
    :cond_40
    :goto_40
    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/FastStringBuffer;->append(C)V

    goto :goto_38

    .line 516
    :cond_44
    const/16 v8, 0x7d

    if-ne v8, v1, :cond_40

    .line 517
    const/4 v3, 0x0

    goto :goto_40

    .line 522
    .end local v1           #c:C
    :cond_4a
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->length()I

    move-result v8

    if-lez v8, :cond_5e

    .line 524
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/xml/utils/QName;->getQNameFromString(Ljava/lang/String;)Lorg/apache/xml/utils/QName;

    move-result-object v5

    .line 525
    .restart local v5       #qname:Lorg/apache/xml/utils/QName;
    invoke-virtual {v7, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 526
    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->reset()V

    .end local v5           #qname:Lorg/apache/xml/utils/QName;
    :cond_5e
    move-object v8, v7

    .line 532
    .end local v0           #buf:Lorg/apache/xml/utils/FastStringBuffer;
    .end local v2           #i:I
    .end local v3           #inCurly:Z
    .end local v4           #l:I
    .end local v7           #v:Ljava/util/Vector;
    :goto_5f
    return-object v8

    :cond_60
    const/4 v8, 0x0

    goto :goto_5f
.end method

.method public static getQNameProperty(Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/xml/utils/QName;
    .registers 4
    .parameter "key"
    .parameter "props"

    .prologue
    .line 388
    invoke-virtual {p1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, s:Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 391
    invoke-static {v0}, Lorg/apache/xml/utils/QName;->getQNameFromString(Ljava/lang/String;)Lorg/apache/xml/utils/QName;

    move-result-object v1

    .line 393
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public static isLegalPropertyKey(Ljava/lang/String;)Z
    .registers 5
    .parameter "key"

    .prologue
    const/16 v3, 0x7b

    const/4 v2, 0x0

    const/16 v1, 0x7d

    .line 649
    const-string v0, "cdata-section-elements"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    const-string v0, "doctype-public"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    const-string v0, "doctype-system"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    const-string v0, "encoding"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    const-string v0, "indent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    const-string v0, "media-type"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    const-string v0, "method"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    const-string v0, "omit-xml-declaration"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    const-string v0, "standalone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    const-string v0, "version"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_79

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_79

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-nez v0, :cond_79

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_79

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v0, v1, :cond_79

    :cond_77
    const/4 v0, 0x1

    :goto_78
    return v0

    :cond_79
    move v0, v2

    goto :goto_78
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 99
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/OutputProperties;

    .line 101
    .local v0, cloned:Lorg/apache/xalan/templates/OutputProperties;
    iget-object v2, v0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-virtual {v2}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/Properties;

    iput-object p0, v0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;
    :try_end_10
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_10} :catch_12

    move-object v2, v0

    .line 107
    .end local v0           #cloned:Lorg/apache/xalan/templates/OutputProperties;
    :goto_11
    return-object v2

    .line 105
    :catch_12
    move-exception v2

    move-object v1, v2

    .line 107
    .local v1, e:Ljava/lang/CloneNotSupportedException;
    const/4 v2, 0x0

    goto :goto_11
.end method

.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 2
    .parameter "sroot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 555
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 557
    return-void
.end method

.method public copyFrom(Ljava/util/Properties;)V
    .registers 3
    .parameter "src"

    .prologue
    .line 579
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/OutputProperties;->copyFrom(Ljava/util/Properties;Z)V

    .line 580
    return-void
.end method

.method public copyFrom(Ljava/util/Properties;Z)V
    .registers 11
    .parameter "src"
    .parameter "shouldResetDefaults"

    .prologue
    .line 595
    invoke-virtual {p1}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 597
    .local v1, keys:Ljava/util/Enumeration;
    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_76

    .line 599
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 601
    .local v0, key:Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/xalan/templates/OutputProperties;->isLegalPropertyKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 602
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "ER_OUTPUT_PROPERTY_NOT_RECOGNIZED"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 604
    :cond_28
    iget-object v4, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-virtual {v4, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 605
    .local v2, oldValue:Ljava/lang/Object;
    if-nez v2, :cond_49

    .line 607
    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 609
    .local v3, val:Ljava/lang/String;
    if-eqz p2, :cond_43

    const-string v4, "method"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 611
    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/OutputProperties;->setMethodDefaults(Ljava/lang/String;)V

    .line 614
    :cond_43
    iget-object v4, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-virtual {v4, v0, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 616
    .end local v3           #val:Ljava/lang/String;
    :cond_49
    const-string v4, "cdata-section-elements"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 618
    iget-object v5, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v2, Ljava/lang/String;

    .end local v2           #oldValue:Ljava/lang/Object;
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v0, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 621
    .end local v0           #key:Ljava/lang/String;
    :cond_76
    return-void
.end method

.method public copyFrom(Lorg/apache/xalan/templates/OutputProperties;)V
    .registers 3
    .parameter "opsrc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 636
    invoke-virtual {p1}, Lorg/apache/xalan/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/OutputProperties;->copyFrom(Ljava/util/Properties;)V

    .line 637
    return-void
.end method

.method public getBooleanProperty(Ljava/lang/String;)Z
    .registers 3
    .parameter "key"

    .prologue
    .line 228
    iget-object v0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-static {p1, v0}, Lorg/apache/xml/serializer/OutputPropertyUtils;->getBooleanProperty(Ljava/lang/String;Ljava/util/Properties;)Z

    move-result v0

    return v0
.end method

.method public getBooleanProperty(Lorg/apache/xml/utils/QName;)Z
    .registers 3
    .parameter "key"

    .prologue
    .line 212
    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->toNamespacedString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/OutputProperties;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getIntProperty(Ljava/lang/String;)I
    .registers 3
    .parameter "key"

    .prologue
    .line 284
    iget-object v0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-static {p1, v0}, Lorg/apache/xml/serializer/OutputPropertyUtils;->getIntProperty(Ljava/lang/String;Ljava/util/Properties;)I

    move-result v0

    return v0
.end method

.method public getIntProperty(Lorg/apache/xml/utils/QName;)I
    .registers 3
    .parameter "key"

    .prologue
    .line 268
    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->toNamespacedString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/OutputProperties;->getIntProperty(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getProperties()Ljava/util/Properties;
    .registers 2

    .prologue
    .line 566
    iget-object v0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "key"

    .prologue
    .line 169
    const-string v0, "{http://xml.apache.org/xslt}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{http://xml.apache.org/xalan}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lorg/apache/xml/serializer/OutputPropertiesFactory;->S_BUILTIN_OLD_EXTENSIONS_UNIVERSAL_LEN:I

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 172
    :cond_21
    iget-object v0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Lorg/apache/xml/utils/QName;)Ljava/lang/String;
    .registers 4
    .parameter "key"

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->toNamespacedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQNameProperties(Ljava/lang/String;)Ljava/util/Vector;
    .registers 3
    .parameter "key"

    .prologue
    .line 467
    iget-object v0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-static {p1, v0}, Lorg/apache/xalan/templates/OutputProperties;->getQNameProperties(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public getQNameProperties(Lorg/apache/xml/utils/QName;)Ljava/util/Vector;
    .registers 3
    .parameter "key"

    .prologue
    .line 451
    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->toNamespacedString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/OutputProperties;->getQNameProperties(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public getQNameProperty(Ljava/lang/String;)Lorg/apache/xml/utils/QName;
    .registers 3
    .parameter "key"

    .prologue
    .line 371
    iget-object v0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-static {p1, v0}, Lorg/apache/xalan/templates/OutputProperties;->getQNameProperty(Ljava/lang/String;Ljava/util/Properties;)Lorg/apache/xml/utils/QName;

    move-result-object v0

    return-object v0
.end method

.method public getQNameProperty(Lorg/apache/xml/utils/QName;)Lorg/apache/xml/utils/QName;
    .registers 3
    .parameter "key"

    .prologue
    .line 356
    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->toNamespacedString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/OutputProperties;->getQNameProperty(Ljava/lang/String;)Lorg/apache/xml/utils/QName;

    move-result-object v0

    return-object v0
.end method

.method public recompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 2
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 543
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/StylesheetRoot;->recomposeOutput(Lorg/apache/xalan/templates/OutputProperties;)V

    .line 544
    return-void
.end method

.method public setBooleanProperty(Ljava/lang/String;Z)V
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 196
    iget-object v0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    if-eqz p2, :cond_a

    const-string v1, "yes"

    :goto_6
    invoke-virtual {v0, p1, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    return-void

    .line 196
    :cond_a
    const-string v1, "no"

    goto :goto_6
.end method

.method public setBooleanProperty(Lorg/apache/xml/utils/QName;Z)V
    .registers 6
    .parameter "key"
    .parameter "value"

    .prologue
    .line 184
    iget-object v0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->toNamespacedString()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_e

    const-string v2, "yes"

    :goto_a
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    return-void

    .line 184
    :cond_e
    const-string v2, "no"

    goto :goto_a
.end method

.method public setIntProperty(Ljava/lang/String;I)V
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 252
    iget-object v0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    return-void
.end method

.method public setIntProperty(Lorg/apache/xml/utils/QName;I)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 240
    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->toNamespacedString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/xalan/templates/OutputProperties;->setIntProperty(Ljava/lang/String;I)V

    .line 241
    return-void
.end method

.method public setMethodDefaults(Ljava/lang/String;)V
    .registers 7
    .parameter "method"

    .prologue
    .line 309
    iget-object v3, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    const-string v4, "method"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, defaultMethod:Ljava/lang/String;
    if-eqz v0, :cond_18

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const-string v3, "xml"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 322
    :cond_18
    iget-object v2, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    .line 323
    .local v2, savedProps:Ljava/util/Properties;
    invoke-static {p1}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->getDefaultMethodProperties(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v1

    .line 325
    .local v1, newDefaults:Ljava/util/Properties;
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3, v1}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    iput-object v3, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    .line 326
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/apache/xalan/templates/OutputProperties;->copyFrom(Ljava/util/Properties;Z)V

    .line 328
    .end local v1           #newDefaults:Ljava/util/Properties;
    .end local v2           #savedProps:Ljava/util/Properties;
    :cond_29
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 132
    const-string v0, "method"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 134
    invoke-virtual {p0, p2}, Lorg/apache/xalan/templates/OutputProperties;->setMethodDefaults(Ljava/lang/String;)V

    .line 137
    :cond_b
    const-string v0, "{http://xml.apache.org/xslt}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{http://xml.apache.org/xalan}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lorg/apache/xml/serializer/OutputPropertiesFactory;->S_BUILTIN_OLD_EXTENSIONS_UNIVERSAL_LEN:I

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 141
    :cond_2c
    iget-object v0, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    return-void
.end method

.method public setProperty(Lorg/apache/xml/utils/QName;Ljava/lang/String;)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 120
    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->toNamespacedString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/xalan/templates/OutputProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public setQNameProperties(Ljava/lang/String;Ljava/util/Vector;)V
    .registers 9
    .parameter "key"
    .parameter "v"

    .prologue
    const/16 v4, 0x9

    .line 420
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v3

    .line 423
    .local v3, s:I
    new-instance v0, Lorg/apache/xml/utils/FastStringBuffer;

    invoke-direct {v0, v4, v4}, Lorg/apache/xml/utils/FastStringBuffer;-><init>(II)V

    .line 425
    .local v0, fsb:Lorg/apache/xml/utils/FastStringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v3, :cond_28

    .line 427
    invoke-virtual {p2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xml/utils/QName;

    .line 429
    .local v2, qname:Lorg/apache/xml/utils/QName;
    invoke-virtual {v2}, Lorg/apache/xml/utils/QName;->toNamespacedString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/xml/utils/FastStringBuffer;->append(Ljava/lang/String;)V

    .line 431
    const/4 v4, 0x1

    sub-int v4, v3, v4

    if-ge v1, v4, :cond_25

    .line 432
    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Lorg/apache/xml/utils/FastStringBuffer;->append(C)V

    .line 425
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 435
    .end local v2           #qname:Lorg/apache/xml/utils/QName;
    :cond_28
    iget-object v4, p0, Lorg/apache/xalan/templates/OutputProperties;->m_properties:Ljava/util/Properties;

    invoke-virtual {v0}, Lorg/apache/xml/utils/FastStringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    return-void
.end method

.method public setQNameProperties(Lorg/apache/xml/utils/QName;Ljava/util/Vector;)V
    .registers 4
    .parameter "key"
    .parameter "v"

    .prologue
    .line 406
    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->toNamespacedString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/xalan/templates/OutputProperties;->setQNameProperties(Ljava/lang/String;Ljava/util/Vector;)V

    .line 407
    return-void
.end method

.method public setQNameProperty(Ljava/lang/String;Lorg/apache/xml/utils/QName;)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 341
    invoke-virtual {p2}, Lorg/apache/xml/utils/QName;->toNamespacedString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xalan/templates/OutputProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    return-void
.end method

.method public setQNameProperty(Lorg/apache/xml/utils/QName;Lorg/apache/xml/utils/QName;)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 298
    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->toNamespacedString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/xalan/templates/OutputProperties;->setQNameProperty(Ljava/lang/String;Lorg/apache/xml/utils/QName;)V

    .line 299
    return-void
.end method
