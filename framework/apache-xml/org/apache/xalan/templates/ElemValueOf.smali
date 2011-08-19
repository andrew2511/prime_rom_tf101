.class public Lorg/apache/xalan/templates/ElemValueOf;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemValueOf.java"


# static fields
.field static final serialVersionUID:J = 0x30718f09b2e3a7e2L


# instance fields
.field private m_disableOutputEscaping:Z

.field private m_isDot:Z

.field private m_selectExpression:Lorg/apache/xpath/XPath;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    .line 61
    iput-boolean v1, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_isDot:Z

    .line 101
    iput-boolean v1, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_disableOutputEscaping:Z

    return-void
.end method


# virtual methods
.method public appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 6
    .parameter "newChild"

    .prologue
    .line 270
    const-string v0, "ER_CANNOT_ADD"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getNodeName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemValueOf;->getNodeName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/xalan/templates/ElemValueOf;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    const/4 v0, 0x0

    return-object v0
.end method

.method protected callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .registers 5
    .parameter "visitor"
    .parameter "callAttrs"

    .prologue
    .line 284
    if-eqz p2, :cond_d

    .line 285
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    invoke-virtual {v0}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 286
    :cond_d
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    .line 287
    return-void
.end method

.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 5
    .parameter "sroot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 180
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    move-result-object v0

    .line 182
    .local v0, vnames:Ljava/util/Vector;
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    if-eqz v1, :cond_1c

    .line 183
    iget-object v1, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    .line 185
    :cond_1c
    return-void
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 12
    .parameter "transformer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 215
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v6

    .line 216
    .local v6, xctxt:Lorg/apache/xpath/XPathContext;
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getResultTreeHandler()Lorg/apache/xml/serializer/SerializationHandler;

    move-result-object v3

    .line 221
    .local v3, rth:Lorg/apache/xml/serializer/SerializationHandler;
    :try_start_8
    invoke-virtual {v6, p0}, Lorg/apache/xpath/XPathContext;->pushNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    .line 223
    invoke-virtual {v6}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    .line 225
    .local v0, current:I
    invoke-virtual {v6, v0, v0}, Lorg/apache/xpath/XPathContext;->pushCurrentNodeAndExpression(II)V

    .line 227
    iget-boolean v7, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_disableOutputEscaping:Z

    if-eqz v7, :cond_1d

    .line 228
    const-string v7, "javax.xml.transform.disable-output-escaping"

    const-string v8, ""

    invoke-interface {v3, v7, v8}, Lorg/apache/xml/serializer/SerializationHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catch Lorg/xml/sax/SAXException; {:try_start_8 .. :try_end_1d} :catch_4b
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_1d} :catch_53

    .line 233
    :cond_1d
    :try_start_1d
    iget-object v7, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    invoke-virtual {v7}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v1

    .line 235
    .local v1, expr:Lorg/apache/xpath/Expression;
    invoke-virtual {v1, v6, v3}, Lorg/apache/xpath/Expression;->executeCharsToContentHandler(Lorg/apache/xpath/XPathContext;Lorg/xml/sax/ContentHandler;)V
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_38

    .line 239
    :try_start_26
    iget-boolean v7, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_disableOutputEscaping:Z

    if-eqz v7, :cond_31

    .line 240
    const-string v7, "javax.xml.transform.enable-output-escaping"

    const-string v8, ""

    invoke-interface {v3, v7, v8}, Lorg/apache/xml/serializer/SerializationHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_31
    invoke-virtual {v6}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    .line 244
    invoke-virtual {v6}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    .line 256
    return-void

    .line 239
    .end local v1           #expr:Lorg/apache/xpath/Expression;
    :catchall_38
    move-exception v7

    iget-boolean v8, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_disableOutputEscaping:Z

    if-eqz v8, :cond_44

    .line 240
    const-string v8, "javax.xml.transform.enable-output-escaping"

    const-string v9, ""

    invoke-interface {v3, v8, v9}, Lorg/apache/xml/serializer/SerializationHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_44
    invoke-virtual {v6}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    .line 244
    invoke-virtual {v6}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    throw v7
    :try_end_4b
    .catch Lorg/xml/sax/SAXException; {:try_start_26 .. :try_end_4b} :catch_4b
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_4b} :catch_53

    .line 247
    .end local v0           #current:I
    :catch_4b
    move-exception v7

    move-object v4, v7

    .line 249
    .local v4, se:Lorg/xml/sax/SAXException;
    new-instance v7, Ljavax/xml/transform/TransformerException;

    invoke-direct {v7, v4}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 251
    .end local v4           #se:Lorg/xml/sax/SAXException;
    :catch_53
    move-exception v7

    move-object v2, v7

    .line 252
    .local v2, re:Ljava/lang/RuntimeException;
    new-instance v5, Ljavax/xml/transform/TransformerException;

    invoke-direct {v5, v2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    .line 253
    .local v5, te:Ljavax/xml/transform/TransformerException;
    invoke-virtual {v5, p0}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    .line 254
    throw v5
.end method

.method public getDisableOutputEscaping()Z
    .registers 2

    .prologue
    .line 150
    iget-boolean v0, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_disableOutputEscaping:Z

    return v0
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 194
    const-string v0, "value-of"

    return-object v0
.end method

.method public getSelect()Lorg/apache/xpath/XPath;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    return-object v0
.end method

.method public getXSLToken()I
    .registers 2

    .prologue
    .line 162
    const/16 v0, 0x1e

    return v0
.end method

.method public setDisableOutputEscaping(Z)V
    .registers 2
    .parameter "v"

    .prologue
    .line 125
    iput-boolean p1, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_disableOutputEscaping:Z

    .line 126
    return-void
.end method

.method public setSelect(Lorg/apache/xpath/XPath;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 74
    if-eqz p1, :cond_13

    .line 76
    invoke-virtual {p1}, Lorg/apache/xpath/XPath;->getPatternString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, s:Ljava/lang/String;
    if-eqz v0, :cond_16

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    :goto_11
    iput-boolean v1, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_isDot:Z

    .line 81
    .end local v0           #s:Ljava/lang/String;
    :cond_13
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemValueOf;->m_selectExpression:Lorg/apache/xpath/XPath;

    .line 82
    return-void

    .line 78
    .restart local v0       #s:Ljava/lang/String;
    :cond_16
    const/4 v1, 0x0

    goto :goto_11
.end method
