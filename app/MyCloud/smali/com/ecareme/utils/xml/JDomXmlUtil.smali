.class public final Lcom/ecareme/utils/xml/JDomXmlUtil;
.super Ljava/lang/Object;
.source "JDomXmlUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static composeElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom/Element;
    .locals 1
    .parameter "name"
    .parameter "text"

    .prologue
    .line 354
    new-instance v0, Lorg/jdom/Element;

    invoke-direct {v0, p0}, Lorg/jdom/Element;-><init>(Ljava/lang/String;)V

    .line 355
    .local v0, e:Lorg/jdom/Element;
    if-eqz p1, :cond_0

    .line 357
    invoke-virtual {v0, p1}, Lorg/jdom/Element;->setText(Ljava/lang/String;)Lorg/jdom/Element;

    .line 359
    :cond_0
    return-object v0
.end method

.method public static getSAXBuilder()Lorg/jdom/input/SAXBuilder;
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ecareme/utils/xml/JDomXmlUtil;->getSAXBuilder(Z)Lorg/jdom/input/SAXBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static getSAXBuilder(Z)Lorg/jdom/input/SAXBuilder;
    .locals 1
    .parameter "validate"

    .prologue
    .line 48
    if-eqz p0, :cond_0

    .line 50
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ecareme/utils/xml/JDomXmlUtil;->newSAXBuilder(Z)Lorg/jdom/input/SAXBuilder;

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ecareme/utils/xml/JDomXmlUtil;->newSAXBuilder(Z)Lorg/jdom/input/SAXBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method public static getValidateSAXBuilder()Lorg/jdom/input/SAXBuilder;
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ecareme/utils/xml/JDomXmlUtil;->getSAXBuilder(Z)Lorg/jdom/input/SAXBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static getXMLOutputter()Lorg/jdom/output/XMLOutputter;
    .locals 1

    .prologue
    .line 106
    const-string v0, "utf-8"

    invoke-static {v0}, Lcom/ecareme/utils/xml/JDomXmlUtil;->getXMLOutputter(Ljava/lang/String;)Lorg/jdom/output/XMLOutputter;

    move-result-object v0

    return-object v0
.end method

.method public static getXMLOutputter(Ljava/lang/String;)Lorg/jdom/output/XMLOutputter;
    .locals 2
    .parameter "encoding"

    .prologue
    .line 114
    new-instance v1, Lorg/jdom/output/XMLOutputter;

    invoke-direct {v1}, Lorg/jdom/output/XMLOutputter;-><init>()V

    .line 115
    .local v1, out:Lorg/jdom/output/XMLOutputter;
    invoke-static {}, Lorg/jdom/output/Format;->getPrettyFormat()Lorg/jdom/output/Format;

    move-result-object v0

    .line 116
    .local v0, f:Lorg/jdom/output/Format;
    invoke-virtual {v0, p0}, Lorg/jdom/output/Format;->setEncoding(Ljava/lang/String;)Lorg/jdom/output/Format;

    .line 117
    invoke-virtual {v1, v0}, Lorg/jdom/output/XMLOutputter;->setFormat(Lorg/jdom/output/Format;)V

    .line 118
    return-object v1
.end method

.method public static isIdenticalNode(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .parameter "n1"
    .parameter "n2"

    .prologue
    .line 329
    :try_start_0
    instance-of v1, p0, Lorg/jdom/Element;

    if-eqz v1, :cond_0

    .line 331
    check-cast p0, Lorg/jdom/Element;

    .end local p0
    check-cast p1, Lorg/jdom/Element;

    .end local p1
    invoke-static {p0, p1}, Lcom/ecareme/utils/xml/JDomXmlUtil;->isIdenticalNode(Lorg/jdom/Element;Lorg/jdom/Element;)Z

    move-result v1

    .line 348
    :goto_0
    return v1

    .line 333
    .restart local p0
    .restart local p1
    :cond_0
    instance-of v1, p0, Lorg/jdom/Attribute;

    if-eqz v1, :cond_1

    .line 335
    check-cast p0, Lorg/jdom/Attribute;

    .end local p0
    check-cast p1, Lorg/jdom/Attribute;

    .end local p1
    invoke-static {p0, p1}, Lcom/ecareme/utils/xml/JDomXmlUtil;->isIdenticalNode(Lorg/jdom/Attribute;Lorg/jdom/Attribute;)Z

    move-result v1

    goto :goto_0

    .line 337
    .restart local p0
    .restart local p1
    :cond_1
    instance-of v1, p0, Lorg/jdom/Namespace;

    if-eqz v1, :cond_2

    .line 339
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 343
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 346
    .end local p0
    .end local p1
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 348
    .local v0, cce:Ljava/lang/ClassCastException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isIdenticalNode(Lorg/jdom/Attribute;Lorg/jdom/Attribute;)Z
    .locals 3
    .parameter "a1"
    .parameter "a2"

    .prologue
    const/4 v2, 0x0

    .line 232
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v0, v2

    .line 240
    :goto_0
    return v0

    .line 236
    :cond_1
    invoke-virtual {p0}, Lorg/jdom/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jdom/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/jdom/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jdom/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/jdom/Attribute;->getAttributeType()I

    move-result v0

    invoke-virtual {p1}, Lorg/jdom/Attribute;->getAttributeType()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 238
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 240
    goto :goto_0
.end method

.method public static isIdenticalNode(Lorg/jdom/Element;Lorg/jdom/Element;)Z
    .locals 7
    .parameter "e1"
    .parameter "e2"

    .prologue
    .line 248
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 250
    :cond_0
    const/4 p0, 0x0

    .line 322
    .end local p0
    .end local p1
    :goto_0
    return p0

    .line 253
    .restart local p0
    .restart local p1
    :cond_1
    invoke-virtual {p0}, Lorg/jdom/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jdom/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 255
    const/4 p0, 0x0

    goto :goto_0

    .line 259
    :cond_2
    invoke-virtual {p0}, Lorg/jdom/Element;->getAttributes()Ljava/util/List;

    move-result-object v1

    .line 260
    .local v1, e1Attrs:Ljava/util/List;
    invoke-virtual {p1}, Lorg/jdom/Element;->getAttributes()Ljava/util/List;

    move-result-object v2

    .line 261
    .local v2, e2Attrs:Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 263
    const/4 p0, 0x0

    goto :goto_0

    .line 265
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i:Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v1           #e1Attrs:Ljava/util/List;
    .end local v2           #e2Attrs:Ljava/util/List;
    .local v4, j:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    .line 276
    invoke-virtual {p0}, Lorg/jdom/Element;->getContent()Ljava/util/List;

    move-result-object v1

    .line 277
    .local v1, e1Content:Ljava/util/List;
    invoke-virtual {p1}, Lorg/jdom/Element;->getContent()Ljava/util/List;

    move-result-object v2

    .line 278
    .local v2, e2Content:Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .end local v3           #i:Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .end local v4           #j:Ljava/util/Iterator;
    if-eq v3, v4, :cond_6

    .line 280
    const/4 p0, 0x0

    goto :goto_0

    .line 267
    .end local v1           #e1Content:Ljava/util/List;
    .end local v2           #e2Content:Ljava/util/List;
    .restart local v3       #i:Ljava/util/Iterator;
    .restart local v4       #j:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom/Attribute;

    .line 268
    .local v1, a1:Lorg/jdom/Attribute;
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom/Attribute;

    .line 269
    .local v2, a2:Lorg/jdom/Attribute;
    invoke-static {v1, v2}, Lcom/ecareme/utils/xml/JDomXmlUtil;->isIdenticalNode(Lorg/jdom/Attribute;Lorg/jdom/Attribute;)Z

    move-result v1

    .end local v1           #a1:Lorg/jdom/Attribute;
    if-nez v1, :cond_4

    .line 271
    const/4 p0, 0x0

    goto :goto_0

    .line 282
    .end local v3           #i:Ljava/util/Iterator;
    .end local v4           #j:Ljava/util/Iterator;
    .local v1, e1Content:Ljava/util/List;
    .local v2, e2Content:Ljava/util/List;
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, j:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_8

    .line 307
    invoke-virtual {p0}, Lorg/jdom/Element;->getAdditionalNamespaces()Ljava/util/List;

    move-result-object p0

    .line 308
    .local p0, e1ns:Ljava/util/List;
    invoke-virtual {p1}, Lorg/jdom/Element;->getAdditionalNamespaces()Ljava/util/List;

    move-result-object p1

    .line 309
    .local p1, e2ns:Ljava/util/List;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .end local v1           #i:Ljava/util/Iterator;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .end local v2           #j:Ljava/util/Iterator;
    if-eq v1, v2, :cond_a

    .line 311
    const/4 p0, 0x0

    goto :goto_0

    .line 284
    .restart local v1       #i:Ljava/util/Iterator;
    .restart local v2       #j:Ljava/util/Iterator;
    .local p0, e1:Lorg/jdom/Element;
    .local p1, e2:Lorg/jdom/Element;
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 285
    .local v3, o1:Ljava/lang/Object;
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 286
    .local v4, o2:Ljava/lang/Object;
    instance-of v5, v3, Lorg/jdom/Element;

    if-eqz v5, :cond_9

    .line 290
    :try_start_0
    move-object v0, v3

    check-cast v0, Lorg/jdom/Element;

    move-object v5, v0

    move-object v0, v4

    check-cast v0, Lorg/jdom/Element;

    move-object v6, v0

    invoke-static {v5, v6}, Lcom/ecareme/utils/xml/JDomXmlUtil;->isIdenticalNode(Lorg/jdom/Element;Lorg/jdom/Element;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_9

    .line 292
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 295
    :catch_0
    move-exception p0

    .line 297
    .local p0, cce:Ljava/lang/ClassCastException;
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 300
    .local p0, e1:Lorg/jdom/Element;
    :cond_9
    invoke-static {v3, v4}, Lcom/ecareme/utils/xml/JDomXmlUtil;->isIdenticalNode(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .end local v3           #o1:Ljava/lang/Object;
    if-nez v3, :cond_7

    .line 302
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 313
    .end local v1           #i:Ljava/util/Iterator;
    .end local v2           #j:Ljava/util/Iterator;
    .end local v4           #o2:Ljava/lang/Object;
    .local p0, e1ns:Ljava/util/List;
    .local p1, e2ns:Ljava/util/List;
    :cond_a
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .local p0, i:Ljava/util/Iterator;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .local p1, j:Ljava/util/Iterator;
    :cond_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_c

    .line 322
    const/4 p0, 0x1

    goto/16 :goto_0

    .line 315
    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom/Namespace;

    .line 316
    .local v1, ns1:Lorg/jdom/Namespace;
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom/Namespace;

    .line 317
    .local v2, ns2:Lorg/jdom/Namespace;
    invoke-static {v1, v2}, Lcom/ecareme/utils/xml/JDomXmlUtil;->isIdenticalNode(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .end local v1           #ns1:Lorg/jdom/Namespace;
    if-nez v1, :cond_b

    .line 319
    const/4 p0, 0x0

    goto/16 :goto_0
.end method

.method private static newSAXBuilder(Z)Lorg/jdom/input/SAXBuilder;
    .locals 5
    .parameter "validate"

    .prologue
    .line 60
    new-instance v0, Lorg/jdom/input/SAXBuilder;

    invoke-direct {v0}, Lorg/jdom/input/SAXBuilder;-><init>()V

    .line 62
    .local v0, builder:Lorg/jdom/input/SAXBuilder;
    const/4 v2, 0x0

    .line 65
    .local v2, isXerces:Z
    :try_start_0
    new-instance v3, Ljava/io/StringReader;

    const-string v4, "<root/>"

    invoke-direct {v3, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lorg/jdom/input/SAXBuilder;->build(Ljava/io/Reader;)Lorg/jdom/Document;

    .line 66
    invoke-virtual {v0, p0}, Lorg/jdom/input/SAXBuilder;->setValidation(Z)V
    :try_end_0
    .catch Lorg/jdom/JDOMException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 67
    const/4 v2, 0x1

    .line 75
    :goto_0
    const-string v3, "http://xml.org/sax/features/validation"

    invoke-virtual {v0, v3, p0}, Lorg/jdom/input/SAXBuilder;->setFeature(Ljava/lang/String;Z)V

    .line 76
    if-eqz v2, :cond_0

    .line 78
    const-string v3, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v0, v3, p0}, Lorg/jdom/input/SAXBuilder;->setFeature(Ljava/lang/String;Z)V

    .line 79
    const-string v3, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    invoke-virtual {v0, v3, p0}, Lorg/jdom/input/SAXBuilder;->setFeature(Ljava/lang/String;Z)V

    .line 80
    const-string v3, "http://apache.org/xml/features/nonvalidating/load-dtd-grammar"

    invoke-virtual {v0, v3, p0}, Lorg/jdom/input/SAXBuilder;->setFeature(Ljava/lang/String;Z)V

    .line 82
    :cond_0
    return-object v0

    .line 69
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 71
    .local v1, e:Lorg/jdom/JDOMException;
    new-instance v0, Lorg/jdom/input/SAXBuilder;

    .end local v0           #builder:Lorg/jdom/input/SAXBuilder;
    invoke-direct {v0, p0}, Lorg/jdom/input/SAXBuilder;-><init>(Z)V

    .restart local v0       #builder:Lorg/jdom/input/SAXBuilder;
    goto :goto_0

    .line 73
    .end local v1           #e:Lorg/jdom/JDOMException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public static readXML(Ljava/io/File;)Lorg/jdom/Document;
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-static {}, Lcom/ecareme/utils/xml/JDomXmlUtil;->getSAXBuilder()Lorg/jdom/input/SAXBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/jdom/input/SAXBuilder;->build(Ljava/io/File;)Lorg/jdom/Document;

    move-result-object v0

    return-object v0
.end method

.method public static readXML(Ljava/io/InputStream;)Lorg/jdom/Document;
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-static {}, Lcom/ecareme/utils/xml/JDomXmlUtil;->getSAXBuilder()Lorg/jdom/input/SAXBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/jdom/input/SAXBuilder;->build(Ljava/io/InputStream;)Lorg/jdom/Document;

    move-result-object v0

    return-object v0
.end method

.method public static readXML(Ljava/io/Reader;)Lorg/jdom/Document;
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-static {}, Lcom/ecareme/utils/xml/JDomXmlUtil;->getSAXBuilder()Lorg/jdom/input/SAXBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/jdom/input/SAXBuilder;->build(Ljava/io/Reader;)Lorg/jdom/Document;

    move-result-object v0

    return-object v0
.end method

.method public static readXML(Ljava/lang/String;)Lorg/jdom/Document;
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-static {}, Lcom/ecareme/utils/xml/JDomXmlUtil;->getSAXBuilder()Lorg/jdom/input/SAXBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/jdom/input/SAXBuilder;->build(Ljava/lang/String;)Lorg/jdom/Document;

    move-result-object v0

    return-object v0
.end method

.method public static writeXML(Lorg/jdom/Document;Ljava/io/File;)V
    .locals 1
    .parameter "doc"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    const-string v0, "utf-8"

    invoke-static {p0, p1, v0}, Lcom/ecareme/utils/xml/JDomXmlUtil;->writeXML(Lorg/jdom/Document;Ljava/io/File;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public static writeXML(Lorg/jdom/Document;Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .parameter "doc"
    .parameter "out"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-static {p1}, Lcom/ecareme/utils/FileUtils;->ensureParentDir(Ljava/io/File;)Z

    .line 224
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-static {p0, v0, p2}, Lcom/ecareme/utils/xml/JDomXmlUtil;->writeXML(Lorg/jdom/Document;Ljava/io/Writer;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public static writeXML(Lorg/jdom/Document;Ljava/io/OutputStream;)V
    .locals 1
    .parameter "doc"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    const-string v0, "utf-8"

    invoke-static {p0, p1, v0}, Lcom/ecareme/utils/xml/JDomXmlUtil;->writeXML(Lorg/jdom/Document;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public static writeXML(Lorg/jdom/Document;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .parameter "doc"
    .parameter "out"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-static {p0, v0, p2}, Lcom/ecareme/utils/xml/JDomXmlUtil;->writeXML(Lorg/jdom/Document;Ljava/io/Writer;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public static writeXML(Lorg/jdom/Document;Ljava/io/Writer;)V
    .locals 1
    .parameter "doc"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    const-string v0, "utf-8"

    invoke-static {p0, p1, v0}, Lcom/ecareme/utils/xml/JDomXmlUtil;->writeXML(Lorg/jdom/Document;Ljava/io/Writer;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public static writeXML(Lorg/jdom/Document;Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .parameter "doc"
    .parameter "out"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    invoke-static {p2}, Lcom/ecareme/utils/xml/JDomXmlUtil;->getXMLOutputter(Ljava/lang/String;)Lorg/jdom/output/XMLOutputter;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/jdom/output/XMLOutputter;->output(Lorg/jdom/Document;Ljava/io/Writer;)V

    .line 203
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 204
    return-void
.end method
