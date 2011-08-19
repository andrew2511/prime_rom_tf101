.class public Lorg/apache/xalan/templates/ElemElement;
.super Lorg/apache/xalan/templates/ElemUse;
.source "ElemElement.java"


# static fields
.field static final serialVersionUID:J = -0x48147bf6a23adefL


# instance fields
.field protected m_name_avt:Lorg/apache/xalan/templates/AVT;

.field protected m_namespace_avt:Lorg/apache/xalan/templates/AVT;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemUse;-><init>()V

    .line 57
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemElement;->m_name_avt:Lorg/apache/xalan/templates/AVT;

    .line 92
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemElement;->m_namespace_avt:Lorg/apache/xalan/templates/AVT;

    return-void
.end method


# virtual methods
.method protected callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .registers 4
    .parameter "visitor"
    .parameter "callAttrs"

    .prologue
    .line 360
    if-eqz p2, :cond_14

    .line 362
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemElement;->m_name_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v0, :cond_b

    .line 363
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemElement;->m_name_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/AVT;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    .line 365
    :cond_b
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemElement;->m_namespace_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v0, :cond_14

    .line 366
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemElement;->m_namespace_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0, p1}, Lorg/apache/xalan/templates/AVT;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    .line 369
    :cond_14
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/templates/ElemUse;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    .line 370
    return-void
.end method

.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 6
    .parameter "sroot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemUse;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 132
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v0

    .line 133
    .local v0, cstate:Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;
    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    move-result-object v1

    .line 134
    .local v1, vnames:Ljava/util/Vector;
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemElement;->m_name_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v2, :cond_18

    .line 135
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemElement;->m_name_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    .line 136
    :cond_18
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemElement;->m_namespace_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v2, :cond_25

    .line 137
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemElement;->m_namespace_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/xalan/templates/AVT;->fixupVariables(Ljava/util/Vector;I)V

    .line 138
    :cond_25
    return-void
.end method

.method constructNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 9
    .parameter "nodeName"
    .parameter "prefix"
    .parameter "nodeNamespace"
    .parameter "transformer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 314
    :try_start_0
    invoke-virtual {p4}, Lorg/apache/xalan/transformer/TransformerImpl;->getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v0

    .line 316
    .local v0, rhandler:Lorg/apache/xml/serializer/SerializationHandler;
    if-nez p1, :cond_19

    .line 318
    const/4 v2, 0x0

    .line 335
    .local v2, shouldAddAttrs:Z
    :goto_7
    invoke-virtual {p4, p0, v2}, Lorg/apache/xalan/transformer/TransformerImpl;->executeChildTemplates(Lorg/apache/xalan/templates/ElemTemplateElement;Z)V

    .line 338
    if-eqz p1, :cond_18

    .line 340
    invoke-static {p1}, Lorg/apache/xml/utils/QName;->getLocalPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p3, v3, p1}, Lorg/apache/xml/serializer/SerializationHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    if-eqz p2, :cond_18

    .line 344
    invoke-interface {v0, p2}, Lorg/apache/xml/serializer/SerializationHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 352
    :cond_18
    return-void

    .line 322
    .end local v2           #shouldAddAttrs:Z
    :cond_19
    if-eqz p2, :cond_1f

    .line 324
    const/4 v3, 0x1

    invoke-interface {v0, p2, p3, v3}, Lorg/apache/xml/serializer/SerializationHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 327
    :cond_1f
    invoke-static {p1}, Lorg/apache/xml/utils/QName;->getLocalPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p3, v3, p1}, Lorg/apache/xml/serializer/SerializationHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-super {p0, p4}, Lorg/apache/xalan/templates/ElemUse;->execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    :try_end_29
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_29} :catch_2b

    .line 332
    const/4 v2, 0x1

    .restart local v2       #shouldAddAttrs:Z
    goto :goto_7

    .line 348
    .end local v0           #rhandler:Lorg/apache/xml/serializer/SerializationHandler;
    .end local v2           #shouldAddAttrs:Z
    :catch_2b
    move-exception v3

    move-object v1, v3

    .line 350
    .local v1, se:Lorg/xml/sax/SAXException;
    new-instance v3, Ljavax/xml/transform/TransformerException;

    invoke-direct {v3, v1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 15
    .parameter "transformer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 205
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getSerializationHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v4

    .line 206
    .local v4, rhandler:Lorg/apache/xml/serializer/SerializationHandler;
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v6

    .line 207
    .local v6, xctxt:Lorg/apache/xpath/XPathContext;
    invoke-virtual {v6}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v5

    .line 210
    .local v5, sourceNode:I
    iget-object v7, p0, Lorg/apache/xalan/templates/ElemElement;->m_name_avt:Lorg/apache/xalan/templates/AVT;

    if-nez v7, :cond_3e

    const/4 v7, 0x0

    move-object v1, v7

    .line 212
    .local v1, nodeName:Ljava/lang/String;
    :goto_14
    const/4 v3, 0x0

    .line 213
    .local v3, prefix:Ljava/lang/String;
    const-string v2, ""

    .line 216
    .local v2, nodeNamespace:Ljava/lang/String;
    if-eqz v1, :cond_46

    iget-object v7, p0, Lorg/apache/xalan/templates/ElemElement;->m_name_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v7}, Lorg/apache/xalan/templates/AVT;->isSimple()Z

    move-result v7

    if-nez v7, :cond_46

    invoke-static {v1}, Lorg/apache/xml/utils/XML11Char;->isXML11ValidQName(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_46

    .line 218
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    move-result-object v7

    const-string v8, "WG_ILLEGAL_ATTRIBUTE_VALUE"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "name"

    aput-object v10, v9, v11

    aput-object v1, v9, v12

    invoke-virtual {v7, p0, v8, v9}, Lorg/apache/xalan/transformer/MsgMgr;->warn(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    const/4 v1, 0x0

    .line 287
    :cond_3a
    :goto_3a
    invoke-virtual {p0, v1, v3, v2, p1}, Lorg/apache/xalan/templates/ElemElement;->constructNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xalan/transformer/TransformerImpl;)V

    .line 288
    return-void

    .line 210
    .end local v1           #nodeName:Ljava/lang/String;
    .end local v2           #nodeNamespace:Ljava/lang/String;
    .end local v3           #prefix:Ljava/lang/String;
    :cond_3e
    iget-object v7, p0, Lorg/apache/xalan/templates/ElemElement;->m_name_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v7, v6, v5, p0}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    goto :goto_14

    .line 225
    .restart local v1       #nodeName:Ljava/lang/String;
    .restart local v2       #nodeNamespace:Ljava/lang/String;
    .restart local v3       #prefix:Ljava/lang/String;
    :cond_46
    if-eqz v1, :cond_3a

    .line 227
    invoke-static {v1}, Lorg/apache/xml/utils/QName;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 229
    iget-object v7, p0, Lorg/apache/xalan/templates/ElemElement;->m_namespace_avt:Lorg/apache/xalan/templates/AVT;

    if-eqz v7, :cond_9f

    .line 231
    iget-object v7, p0, Lorg/apache/xalan/templates/ElemElement;->m_namespace_avt:Lorg/apache/xalan/templates/AVT;

    invoke-virtual {v7, v6, v5, p0}, Lorg/apache/xalan/templates/AVT;->evaluate(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Ljava/lang/String;

    move-result-object v2

    .line 232
    if-eqz v2, :cond_66

    if-eqz v3, :cond_70

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_70

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_70

    .line 234
    :cond_66
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    move-result-object v7

    const-string v8, "ER_NULL_URI_NAMESPACE"

    invoke-virtual {v7, p0, v8}, Lorg/apache/xalan/transformer/MsgMgr;->error(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;)V

    goto :goto_3a

    .line 240
    :cond_70
    invoke-virtual {p0, v4, v3, v2}, Lorg/apache/xalan/templates/ElemElement;->resolvePrefix(Lorg/apache/xml/serializer/SerializationHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 241
    if-nez v3, :cond_78

    .line 242
    const-string v3, ""

    .line 244
    :cond_78
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_9a

    .line 245
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Lorg/apache/xml/utils/QName;->getLocalPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3a

    .line 247
    :cond_9a
    invoke-static {v1}, Lorg/apache/xml/utils/QName;->getLocalPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3a

    .line 258
    :cond_9f
    :try_start_9f
    invoke-virtual {p0, v3}, Lorg/apache/xalan/templates/ElemElement;->getNamespaceForPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 264
    if-nez v2, :cond_ae

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_ae

    .line 265
    const-string v2, ""

    goto :goto_3a

    .line 266
    :cond_ae
    if-nez v2, :cond_3a

    .line 268
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    move-result-object v7

    const-string v8, "WG_COULD_NOT_RESOLVE_PREFIX"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    invoke-virtual {v7, p0, v8, v9}, Lorg/apache/xalan/transformer/MsgMgr;->warn(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_bf} :catch_c2

    .line 272
    const/4 v1, 0x0

    goto/16 :goto_3a

    .line 276
    :catch_c2
    move-exception v7

    move-object v0, v7

    .line 278
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getMsgMgr()Lorg/apache/xalan/transformer/MsgMgr;

    move-result-object v7

    const-string v8, "WG_COULD_NOT_RESOLVE_PREFIX"

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v3, v9, v11

    invoke-virtual {v7, p0, v8, v9}, Lorg/apache/xalan/transformer/MsgMgr;->warn(Ljavax/xml/transform/SourceLocator;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    const/4 v1, 0x0

    goto/16 :goto_3a
.end method

.method public getName()Lorg/apache/xalan/templates/AVT;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemElement;->m_name_avt:Lorg/apache/xalan/templates/AVT;

    return-object v0
.end method

.method public getNamespace()Lorg/apache/xalan/templates/AVT;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemElement;->m_namespace_avt:Lorg/apache/xalan/templates/AVT;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 159
    const-string v0, "element"

    return-object v0
.end method

.method public getXSLToken()I
    .registers 2

    .prologue
    .line 149
    const/16 v0, 0x2e

    return v0
.end method

.method protected resolvePrefix(Lorg/apache/xml/serializer/SerializationHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "rhandler"
    .parameter "prefix"
    .parameter "nodeNamespace"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 185
    return-object p2
.end method

.method public setName(Lorg/apache/xalan/templates/AVT;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 69
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemElement;->m_name_avt:Lorg/apache/xalan/templates/AVT;

    .line 70
    return-void
.end method

.method public setNamespace(Lorg/apache/xalan/templates/AVT;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 105
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemElement;->m_namespace_avt:Lorg/apache/xalan/templates/AVT;

    .line 106
    return-void
.end method
