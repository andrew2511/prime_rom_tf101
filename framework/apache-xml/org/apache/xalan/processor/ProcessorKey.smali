.class Lorg/apache/xalan/processor/ProcessorKey;
.super Lorg/apache/xalan/processor/XSLTElementProcessor;
.source "ProcessorKey.java"


# static fields
.field static final serialVersionUID:J = 0x3b781b9f8fa66243L


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/apache/xalan/processor/XSLTElementProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .registers 23
    .parameter "handler"
    .parameter "rawName"
    .parameter "attributes"
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/processor/ProcessorKey;->getElemDef()Lorg/apache/xalan/processor/XSLTElementDef;

    move-result-object v11

    .line 96
    .local v11, def:Lorg/apache/xalan/processor/XSLTElementDef;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v16, processedDefs:Ljava/util/List;
    invoke-interface/range {p3 .. p3}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v15

    .line 99
    .local v15, nAttrs:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_e
    if-ge v13, v15, :cond_93

    .line 101
    move-object/from16 v0, p3

    move v1, v13

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v5

    .line 102
    .local v5, attrUri:Ljava/lang/String;
    move-object/from16 v0, p3

    move v1, v13

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    .line 103
    .local v6, attrLocalName:Ljava/lang/String;
    invoke-virtual {v11, v5, v6}, Lorg/apache/xalan/processor/XSLTElementDef;->getAttributeDef(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v3

    .line 105
    .local v3, attrDef:Lorg/apache/xalan/processor/XSLTAttributeDef;
    if-nez v3, :cond_56

    .line 109
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    move v1, v13

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v5

    .end local v5           #attrUri:Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "attribute is not allowed on the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " element!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 99
    :goto_53
    add-int/lit8 v13, v13, 0x1

    goto :goto_e

    .line 115
    .restart local v5       #attrUri:Ljava/lang/String;
    :cond_56
    move-object/from16 v0, p3

    move v1, v13

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v17

    .line 117
    .local v17, valueString:Ljava/lang/String;
    const-string v4, "key("

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_77

    .line 119
    const-string v4, "ER_INVALID_KEY_CALL"

    const/4 v7, 0x0

    invoke-static {v4, v7}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 123
    :cond_77
    move-object/from16 v0, v16

    move-object v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    move-object/from16 v0, p3

    move v1, v13

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p3

    move v1, v13

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v4, p1

    move-object/from16 v9, p4

    invoke-virtual/range {v3 .. v9}, Lorg/apache/xalan/processor/XSLTAttributeDef;->setAttrValue(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;)Z

    goto :goto_53

    .line 130
    .end local v3           #attrDef:Lorg/apache/xalan/processor/XSLTAttributeDef;
    .end local v5           #attrUri:Ljava/lang/String;
    .end local v6           #attrLocalName:Ljava/lang/String;
    .end local v17           #valueString:Ljava/lang/String;
    :cond_93
    invoke-virtual {v11}, Lorg/apache/xalan/processor/XSLTElementDef;->getAttributes()[Lorg/apache/xalan/processor/XSLTAttributeDef;

    move-result-object v10

    .line 131
    .local v10, attrDefs:[Lorg/apache/xalan/processor/XSLTAttributeDef;
    array-length v14, v10

    .line 133
    .local v14, nAttrDefs:I
    const/4 v13, 0x0

    :goto_99
    if-ge v13, v14, :cond_e1

    .line 135
    aget-object v3, v10, v13

    .line 136
    .restart local v3       #attrDef:Lorg/apache/xalan/processor/XSLTAttributeDef;
    invoke-virtual {v3}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getDefault()Ljava/lang/String;

    move-result-object v12

    .line 138
    .local v12, defVal:Ljava/lang/String;
    if-eqz v12, :cond_b4

    .line 140
    move-object/from16 v0, v16

    move-object v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b4

    .line 142
    move-object v0, v3

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/processor/XSLTAttributeDef;->setDefAttrValue(Lorg/apache/xalan/processor/StylesheetHandler;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 146
    :cond_b4
    invoke-virtual {v3}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getRequired()Z

    move-result v4

    if-eqz v4, :cond_de

    .line 148
    move-object/from16 v0, v16

    move-object v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_de

    .line 149
    const-string v4, "ER_REQUIRES_ATTRIB"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v3}, Lorg/apache/xalan/processor/XSLTAttributeDef;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/apache/xalan/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 133
    :cond_de
    add-int/lit8 v13, v13, 0x1

    goto :goto_99

    .line 155
    .end local v3           #attrDef:Lorg/apache/xalan/processor/XSLTAttributeDef;
    .end local v12           #defVal:Ljava/lang/String;
    :cond_e1
    return-void
.end method

.method public startElement(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 9
    .parameter "handler"
    .parameter "uri"
    .parameter "localName"
    .parameter "rawName"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Lorg/apache/xalan/templates/KeyDeclaration;

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->nextUid()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/xalan/templates/KeyDeclaration;-><init>(Lorg/apache/xalan/templates/Stylesheet;I)V

    .line 71
    .local v0, kd:Lorg/apache/xalan/templates/KeyDeclaration;
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getOriginatingNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/KeyDeclaration;->setDOMBackPointer(Lorg/w3c/dom/Node;)V

    .line 72
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getLocator()Lorg/apache/xml/utils/SAXSourceLocator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/xalan/templates/KeyDeclaration;->setLocaterInfo(Ljavax/xml/transform/SourceLocator;)V

    .line 73
    invoke-virtual {p0, p1, p4, p5, v0}, Lorg/apache/xalan/processor/ProcessorKey;->setPropertiesFromAttributes(Lorg/apache/xalan/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 74
    invoke-virtual {p1}, Lorg/apache/xalan/processor/StylesheetHandler;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/xalan/templates/Stylesheet;->setKey(Lorg/apache/xalan/templates/KeyDeclaration;)V

    .line 75
    return-void
.end method
