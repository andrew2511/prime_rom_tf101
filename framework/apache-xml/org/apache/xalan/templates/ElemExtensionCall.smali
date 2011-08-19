.class public Lorg/apache/xalan/templates/ElemExtensionCall;
.super Lorg/apache/xalan/templates/ElemLiteralResult;
.source "ElemExtensionCall.java"


# static fields
.field static final serialVersionUID:J = 0x2c02dca9933f0c58L


# instance fields
.field m_decl:Lorg/apache/xalan/templates/ElemExtensionDecl;

.field m_extns:Ljava/lang/String;

.field m_lang:Ljava/lang/String;

.field m_scriptSrc:Ljava/lang/String;

.field m_srcURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemLiteralResult;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionCall;->m_decl:Lorg/apache/xalan/templates/ElemExtensionDecl;

    return-void
.end method

.method private executeFallbacks(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 6
    .parameter "transformer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 154
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemExtensionCall;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    .local v1, child:Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_2
    if-eqz v1, :cond_21

    .line 157
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v2

    const/16 v3, 0x39

    if-ne v2, v3, :cond_19

    .line 161
    :try_start_c
    invoke-virtual {p1, v1}, Lorg/apache/xalan/transformer/TransformerImpl;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 162
    move-object v0, v1

    check-cast v0, Lorg/apache/xalan/templates/ElemFallback;

    move-object v2, v0

    invoke-virtual {v2, p1}, Lorg/apache/xalan/templates/ElemFallback;->executeFallback(Lorg/apache/xalan/transformer/TransformerImpl;)V
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_1c

    .line 166
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    .line 155
    :cond_19
    iget-object v1, v1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    goto :goto_2

    .line 166
    :catchall_1c
    move-exception v2

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    throw v2

    .line 171
    :cond_21
    return-void
.end method

.method private getElemExtensionDecl(Lorg/apache/xalan/templates/StylesheetRoot;Ljava/lang/String;)Lorg/apache/xalan/templates/ElemExtensionDecl;
    .registers 13
    .parameter "stylesheet"
    .parameter "namespace"

    .prologue
    .line 115
    const/4 v2, 0x0

    .line 116
    .local v2, decl:Lorg/apache/xalan/templates/ElemExtensionDecl;
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImportCount()I

    move-result v6

    .line 118
    .local v6, n:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_6
    if-ge v4, v6, :cond_36

    .line 120
    invoke-virtual {p1, v4}, Lorg/apache/xalan/templates/StylesheetRoot;->getGlobalImport(I)Lorg/apache/xalan/templates/StylesheetComposed;

    move-result-object v5

    .line 122
    .local v5, imported:Lorg/apache/xalan/templates/Stylesheet;
    invoke-virtual {v5}, Lorg/apache/xalan/templates/Stylesheet;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    .line 123
    .local v1, child:Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_10
    if-eqz v1, :cond_33

    .line 125
    const/16 v8, 0x55

    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v9

    if-ne v8, v9, :cond_2e

    .line 127
    move-object v0, v1

    check-cast v0, Lorg/apache/xalan/templates/ElemExtensionDecl;

    move-object v2, v0

    .line 129
    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemExtensionDecl;->getPrefix()Ljava/lang/String;

    move-result-object v7

    .line 130
    .local v7, prefix:Ljava/lang/String;
    invoke-virtual {v1, v7}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, declNamespace:Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2e

    move-object v8, v2

    .line 140
    .end local v1           #child:Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v3           #declNamespace:Ljava/lang/String;
    .end local v5           #imported:Lorg/apache/xalan/templates/Stylesheet;
    .end local v7           #prefix:Ljava/lang/String;
    :goto_2d
    return-object v8

    .line 123
    .restart local v1       #child:Lorg/apache/xalan/templates/ElemTemplateElement;
    .restart local v5       #imported:Lorg/apache/xalan/templates/Stylesheet;
    :cond_2e
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNextSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v1

    goto :goto_10

    .line 118
    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 140
    .end local v1           #child:Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v5           #imported:Lorg/apache/xalan/templates/Stylesheet;
    :cond_36
    const/4 v8, 0x0

    goto :goto_2d
.end method

.method private hasFallbackChildren()Z
    .registers 4

    .prologue
    .line 180
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionCall;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    .local v0, child:Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_2
    if-eqz v0, :cond_11

    .line 183
    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v1

    const/16 v2, 0x39

    if-ne v1, v2, :cond_e

    .line 184
    const/4 v1, 0x1

    .line 187
    :goto_d
    return v1

    .line 181
    :cond_e
    iget-object v0, v0, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    goto :goto_2

    .line 187
    :cond_11
    const/4 v1, 0x0

    goto :goto_d
.end method


# virtual methods
.method protected accept(Lorg/apache/xalan/templates/XSLTVisitor;)Z
    .registers 3
    .parameter "visitor"

    .prologue
    .line 311
    invoke-virtual {p1, p0}, Lorg/apache/xalan/templates/XSLTVisitor;->visitExtensionElement(Lorg/apache/xalan/templates/ElemExtensionCall;)Z

    move-result v0

    return v0
.end method

.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 4
    .parameter "sroot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemLiteralResult;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 94
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemExtensionCall;->getNamespace()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionCall;->m_extns:Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionCall;->m_extns:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lorg/apache/xalan/templates/ElemExtensionCall;->getElemExtensionDecl(Lorg/apache/xalan/templates/StylesheetRoot;Ljava/lang/String;)Lorg/apache/xalan/templates/ElemExtensionDecl;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionCall;->m_decl:Lorg/apache/xalan/templates/ElemExtensionDecl;

    .line 98
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemExtensionCall;->m_decl:Lorg/apache/xalan/templates/ElemExtensionDecl;

    if-nez v0, :cond_1e

    .line 99
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getExtensionNamespacesManager()Lorg/apache/xalan/extensions/ExtensionNamespacesManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemExtensionCall;->m_extns:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/xalan/extensions/ExtensionNamespacesManager;->registerExtension(Ljava/lang/String;)V

    .line 100
    :cond_1e
    return-void
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 13
    .parameter "transformer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 201
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getStylesheet()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xalan/templates/StylesheetRoot;->isSecureProcessing()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 202
    new-instance v2, Ljavax/xml/transform/TransformerException;

    const-string v3, "ER_EXTENSION_ELEMENT_NOT_ALLOWED_IN_SECURE_PROCESSING"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemExtensionCall;->getRawName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 209
    :cond_20
    :try_start_20
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/xml/serializer/SerializationHandler;->flushPending()V

    .line 211
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getExtensionsTable()Lorg/apache/xalan/extensions/ExtensionsTable;

    move-result-object v8

    .line 212
    .local v8, etable:Lorg/apache/xalan/extensions/ExtensionsTable;
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemExtensionCall;->m_extns:Ljava/lang/String;

    invoke-virtual {v8, v2}, Lorg/apache/xalan/extensions/ExtensionsTable;->get(Ljava/lang/String;)Lorg/apache/xalan/extensions/ExtensionHandler;

    move-result-object v1

    .line 214
    .local v1, nsh:Lorg/apache/xalan/extensions/ExtensionHandler;
    if-nez v1, :cond_64

    .line 216
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemExtensionCall;->hasFallbackChildren()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 218
    invoke-direct {p0, p1}, Lorg/apache/xalan/templates/ElemExtensionCall;->executeFallbacks(Lorg/apache/xalan/transformer/TransformerImpl;)V

    .line 268
    .end local v1           #nsh:Lorg/apache/xalan/extensions/ExtensionHandler;
    .end local v8           #etable:Lorg/apache/xalan/extensions/ExtensionsTable;
    :goto_3c
    return-void

    .line 222
    .restart local v1       #nsh:Lorg/apache/xalan/extensions/ExtensionHandler;
    .restart local v8       #etable:Lorg/apache/xalan/extensions/ExtensionsTable;
    :cond_3d
    new-instance v10, Ljavax/xml/transform/TransformerException;

    const-string v2, "ER_CALL_TO_EXT_FAILED"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemExtensionCall;->getNodeName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    .line 224
    .local v10, te:Ljavax/xml/transform/TransformerException;
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v2

    invoke-interface {v2, v10}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_59
    .catch Ljavax/xml/transform/TransformerException; {:try_start_20 .. :try_end_59} :catch_5a
    .catch Lorg/xml/sax/SAXException; {:try_start_20 .. :try_end_59} :catch_7f

    goto :goto_3c

    .line 261
    .end local v1           #nsh:Lorg/apache/xalan/extensions/ExtensionHandler;
    .end local v8           #etable:Lorg/apache/xalan/extensions/ExtensionsTable;
    .end local v10           #te:Ljavax/xml/transform/TransformerException;
    :catch_5a
    move-exception v2

    move-object v7, v2

    .line 263
    .local v7, e:Ljavax/xml/transform/TransformerException;
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v2

    invoke-interface {v2, v7}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    goto :goto_3c

    .line 232
    .end local v7           #e:Ljavax/xml/transform/TransformerException;
    .restart local v1       #nsh:Lorg/apache/xalan/extensions/ExtensionHandler;
    .restart local v8       #etable:Lorg/apache/xalan/extensions/ExtensionsTable;
    :cond_64
    :try_start_64
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemExtensionCall;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemExtensionCall;->getStylesheet()Lorg/apache/xalan/templates/Stylesheet;

    move-result-object v5

    move-object v3, p0

    move-object v4, p1

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lorg/apache/xalan/extensions/ExtensionHandler;->processElement(Ljava/lang/String;Lorg/apache/xalan/templates/ElemTemplateElement;Lorg/apache/xalan/transformer/TransformerImpl;Lorg/apache/xalan/templates/Stylesheet;Ljava/lang/Object;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_72} :catch_73
    .catch Ljavax/xml/transform/TransformerException; {:try_start_64 .. :try_end_72} :catch_5a
    .catch Lorg/xml/sax/SAXException; {:try_start_64 .. :try_end_72} :catch_7f

    goto :goto_3c

    .line 235
    :catch_73
    move-exception v2

    move-object v7, v2

    .line 238
    .local v7, e:Ljava/lang/Exception;
    :try_start_75
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemExtensionCall;->hasFallbackChildren()Z

    move-result v2

    if-eqz v2, :cond_87

    .line 239
    invoke-direct {p0, p1}, Lorg/apache/xalan/templates/ElemExtensionCall;->executeFallbacks(Lorg/apache/xalan/transformer/TransformerImpl;)V
    :try_end_7e
    .catch Ljavax/xml/transform/TransformerException; {:try_start_75 .. :try_end_7e} :catch_5a
    .catch Lorg/xml/sax/SAXException; {:try_start_75 .. :try_end_7e} :catch_7f

    goto :goto_3c

    .line 265
    .end local v1           #nsh:Lorg/apache/xalan/extensions/ExtensionHandler;
    .end local v7           #e:Ljava/lang/Exception;
    .end local v8           #etable:Lorg/apache/xalan/extensions/ExtensionsTable;
    :catch_7f
    move-exception v2

    move-object v9, v2

    .line 266
    .local v9, se:Lorg/xml/sax/SAXException;
    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-direct {v2, v9}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 242
    .end local v9           #se:Lorg/xml/sax/SAXException;
    .restart local v1       #nsh:Lorg/apache/xalan/extensions/ExtensionHandler;
    .restart local v7       #e:Ljava/lang/Exception;
    .restart local v8       #etable:Lorg/apache/xalan/extensions/ExtensionsTable;
    :cond_87
    :try_start_87
    instance-of v2, v7, Ljavax/xml/transform/TransformerException;

    if-eqz v2, :cond_a0

    .line 244
    move-object v0, v7

    check-cast v0, Ljavax/xml/transform/TransformerException;

    move-object v10, v0

    .line 245
    .restart local v10       #te:Ljavax/xml/transform/TransformerException;
    invoke-virtual {v10}, Ljavax/xml/transform/TransformerException;->getLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v2

    if-nez v2, :cond_98

    .line 246
    invoke-virtual {v10, p0}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    .line 248
    :cond_98
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v2

    invoke-interface {v2, v10}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    goto :goto_3c

    .line 250
    .end local v10           #te:Ljavax/xml/transform/TransformerException;
    :cond_a0
    instance-of v2, v7, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_b1

    .line 252
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v2

    new-instance v3, Ljavax/xml/transform/TransformerException;

    invoke-direct {v3, v7}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    goto :goto_3c

    .line 256
    :cond_b1
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v2

    new-instance v3, Ljavax/xml/transform/TransformerException;

    invoke-direct {v3, v7}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V
    :try_end_bd
    .catch Ljavax/xml/transform/TransformerException; {:try_start_87 .. :try_end_bd} :catch_5a
    .catch Lorg/xml/sax/SAXException; {:try_start_87 .. :try_end_bd} :catch_7f

    goto/16 :goto_3c
.end method

.method public getAttribute(Ljava/lang/String;Lorg/w3c/dom/Node;Lorg/apache/xalan/transformer/TransformerImpl;)Ljava/lang/String;
    .registers 7
    .parameter "rawName"
    .parameter "sourceNode"
    .parameter "transformer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 288
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemExtensionCall;->getLiteralResultAttribute(Ljava/lang/String;)Lorg/apache/xalan/templates/AVT;

    move-result-object v0

    .line 290
    .local v0, avt:Lorg/apache/xalan/templates/AVT;
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lorg/apache/xalan/templates/AVT;->getRawName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 292
    invoke-virtual {p3}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v1

    .line 294
    .local v1, xctxt:Lorg/apache/xpath/XPathContext;
    invoke-virtual {v1, p2}, Lorg/apache/xpath/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result v2

    invoke-virtual {v0, v1, v2, p0}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v2

    .line 299
    .end local v1           #xctxt:Lorg/apache/xpath/XPathContext;
    :goto_1c
    return-object v2

    :cond_1d
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method public getXSLToken()I
    .registers 2

    .prologue
    .line 70
    const/16 v0, 0x4f

    return v0
.end method
