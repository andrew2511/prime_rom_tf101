.class public Lorg/apache/xalan/templates/ElemWithParam;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemWithParam.java"


# static fields
.field static final serialVersionUID:J = -0xedaaa5c88e4d871L


# instance fields
.field m_index:I

.field private m_qname:Lorg/apache/xml/utils/QName;

.field m_qnameID:I

.field private m_selectPattern:Lorg/apache/xpath/XPath;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    .line 61
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_selectPattern:Lorg/apache/xpath/XPath;

    .line 94
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_qname:Lorg/apache/xml/utils/QName;

    return-void
.end method


# virtual methods
.method public appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 7
    .parameter "elem"

    .prologue
    .line 251
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_selectPattern:Lorg/apache/xpath/XPath;

    if-eqz v0, :cond_28

    .line 253
    const-string v0, "ER_CANT_HAVE_CONTENT_AND_SELECT"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xsl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemWithParam;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/xalan/templates/ElemWithParam;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    const/4 v0, 0x0

    .line 257
    :goto_27
    return-object v0

    :cond_28
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v0

    goto :goto_27
.end method

.method protected callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .registers 5
    .parameter "visitor"
    .parameter "callAttrs"

    .prologue
    .line 234
    if-eqz p2, :cond_11

    iget-object v0, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_selectPattern:Lorg/apache/xpath/XPath;

    if-eqz v0, :cond_11

    .line 235
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_selectPattern:Lorg/apache/xpath/XPath;

    invoke-virtual {v0}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_selectPattern:Lorg/apache/xpath/XPath;

    invoke-virtual {v0, v1, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 236
    :cond_11
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    .line 237
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
    .line 152
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_selectPattern:Lorg/apache/xpath/XPath;

    if-nez v2, :cond_12

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getOptimizer()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 155
    invoke-static {p0}, Lorg/apache/xalan/templates/ElemVariable;->rewriteChildToExpression(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xpath/XPath;

    move-result-object v0

    .line 156
    .local v0, newSelect:Lorg/apache/xpath/XPath;
    if-eqz v0, :cond_12

    .line 157
    iput-object v0, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_selectPattern:Lorg/apache/xpath/XPath;

    .line 159
    .end local v0           #newSelect:Lorg/apache/xpath/XPath;
    :cond_12
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_qname:Lorg/apache/xml/utils/QName;

    invoke-virtual {v2, v3}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getQNameID(Lorg/apache/xml/utils/QName;)I

    move-result v2

    iput v2, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_qnameID:I

    .line 160
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 162
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    move-result-object v1

    .line 163
    .local v1, vnames:Ljava/util/Vector;
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_selectPattern:Lorg/apache/xpath/XPath;

    if-eqz v2, :cond_3a

    .line 164
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_selectPattern:Lorg/apache/xpath/XPath;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/xpath/XPath;->fixupVariables(Ljava/util/Vector;I)V

    .line 167
    :cond_3a
    return-void
.end method

.method public getName()Lorg/apache/xml/utils/QName;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_qname:Lorg/apache/xml/utils/QName;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 140
    const-string v0, "with-param"

    return-object v0
.end method

.method public getSelect()Lorg/apache/xpath/XPath;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_selectPattern:Lorg/apache/xpath/XPath;

    return-object v0
.end method

.method public getValue(Lorg/apache/xalan/transformer/TransformerImpl;I)Lorg/apache/xpath/objects/XObject;
    .registers 7
    .parameter "transformer"
    .parameter "sourceNode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v2

    .line 197
    .local v2, xctxt:Lorg/apache/xpath/XPathContext;
    invoke-virtual {v2, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 201
    :try_start_7
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_selectPattern:Lorg/apache/xpath/XPath;

    if-eqz v3, :cond_19

    .line 203
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_selectPattern:Lorg/apache/xpath/XPath;

    invoke-virtual {v3, v2, p2, p0}, Lorg/apache/xpath/XPath;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/utils/PrefixResolver;)Lorg/apache/xpath/objects/XObject;

    move-result-object v1

    .line 205
    .local v1, var:Lorg/apache/xpath/objects/XObject;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/apache/xpath/objects/XObject;->allowDetachToRelease(Z)V
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_2c

    .line 222
    :goto_15
    invoke-virtual {v2}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 225
    return-object v1

    .line 207
    .end local v1           #var:Lorg/apache/xpath/objects/XObject;
    :cond_19
    :try_start_19
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemWithParam;->getFirstChildElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v3

    if-nez v3, :cond_22

    .line 209
    sget-object v1, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    .restart local v1       #var:Lorg/apache/xpath/objects/XObject;
    goto :goto_15

    .line 215
    .end local v1           #var:Lorg/apache/xpath/objects/XObject;
    :cond_22
    invoke-virtual {p1, p0}, Lorg/apache/xalan/transformer/TransformerImpl;->transformToRTF(Lorg/apache/xalan/templates/ElemTemplateElement;)I

    move-result v0

    .line 217
    .local v0, df:I
    new-instance v1, Lorg/apache/xpath/objects/XRTreeFrag;

    invoke-direct {v1, v0, v2, p0}, Lorg/apache/xpath/objects/XRTreeFrag;-><init>(ILorg/apache/xpath/XPathContext;Lorg/apache/xpath/ExpressionNode;)V
    :try_end_2b
    .catchall {:try_start_19 .. :try_end_2b} :catchall_2c

    .restart local v1       #var:Lorg/apache/xpath/objects/XObject;
    goto :goto_15

    .line 222
    .end local v0           #df:I
    .end local v1           #var:Lorg/apache/xpath/objects/XObject;
    :catchall_2c
    move-exception v3

    invoke-virtual {v2}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    throw v3
.end method

.method public getXSLToken()I
    .registers 2

    .prologue
    .line 129
    const/4 v0, 0x2

    return v0
.end method

.method public setName(Lorg/apache/xml/utils/QName;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 106
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_qname:Lorg/apache/xml/utils/QName;

    .line 107
    return-void
.end method

.method public setParentElem(Lorg/apache/xalan/templates/ElemTemplateElement;)V
    .registers 3
    .parameter "p"

    .prologue
    .line 176
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->setParentElem(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/apache/xalan/templates/ElemTemplateElement;->m_hasVariableDecl:Z

    .line 178
    return-void
.end method

.method public setSelect(Lorg/apache/xpath/XPath;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 72
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemWithParam;->m_selectPattern:Lorg/apache/xpath/XPath;

    .line 73
    return-void
.end method
