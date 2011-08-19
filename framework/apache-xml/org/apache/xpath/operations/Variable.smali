.class public Lorg/apache/xpath/operations/Variable;
.super Lorg/apache/xpath/Expression;
.source "Variable.java"

# interfaces
.implements Lorg/apache/xpath/axes/PathComponent;


# static fields
.field static final PSUEDOVARNAMESPACE:Ljava/lang/String; = "http://xml.apache.org/xalan/psuedovar"

.field static final serialVersionUID:J = -0x3c28ed22ed41f899L


# instance fields
.field private m_fixUpWasCalled:Z

.field protected m_index:I

.field protected m_isGlobal:Z

.field protected m_qname:Lorg/apache/xml/utils/QName;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Lorg/apache/xpath/Expression;-><init>()V

    .line 47
    iput-boolean v0, p0, Lorg/apache/xpath/operations/Variable;->m_fixUpWasCalled:Z

    .line 105
    iput-boolean v0, p0, Lorg/apache/xpath/operations/Variable;->m_isGlobal:Z

    return-void
.end method


# virtual methods
.method public callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .registers 3
    .parameter "owner"
    .parameter "visitor"

    .prologue
    .line 348
    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitVariableRef(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/operations/Variable;)Z

    .line 349
    return-void
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .registers 6
    .parameter "expr"

    .prologue
    const/4 v3, 0x0

    .line 355
    invoke-virtual {p0, p1}, Lorg/apache/xpath/operations/Variable;->isSameClass(Lorg/apache/xpath/Expression;)Z

    move-result v1

    if-nez v1, :cond_9

    move v1, v3

    .line 366
    .end local p1
    :goto_8
    return v1

    .line 358
    .restart local p1
    :cond_9
    iget-object v2, p0, Lorg/apache/xpath/operations/Variable;->m_qname:Lorg/apache/xml/utils/QName;

    move-object v0, p1

    check-cast v0, Lorg/apache/xpath/operations/Variable;

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xpath/operations/Variable;->m_qname:Lorg/apache/xml/utils/QName;

    invoke-virtual {v2, v1}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    move v1, v3

    .line 359
    goto :goto_8

    .line 363
    :cond_19
    invoke-virtual {p0}, Lorg/apache/xpath/operations/Variable;->getElemVariable()Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v1

    check-cast p1, Lorg/apache/xpath/operations/Variable;

    .end local p1
    invoke-virtual {p1}, Lorg/apache/xpath/operations/Variable;->getElemVariable()Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v2

    if-eq v1, v2, :cond_27

    move v1, v3

    .line 364
    goto :goto_8

    .line 366
    :cond_27
    const/4 v1, 0x1

    goto :goto_8
.end method

.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 3
    .parameter "xctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/operations/Variable;->execute(Lorg/apache/xpath/XPathContext;Z)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/xpath/XPathContext;Z)Lorg/apache/xpath/objects/XObject;
    .registers 9
    .parameter "xctxt"
    .parameter "destructiveOK"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v1

    .line 211
    .local v1, xprefixResolver:Lorg/apache/xml/utils/PrefixResolver;
    iget-boolean v2, p0, Lorg/apache/xpath/operations/Variable;->m_fixUpWasCalled:Z

    if-eqz v2, :cond_3e

    .line 213
    iget-boolean v2, p0, Lorg/apache/xpath/operations/Variable;->m_isGlobal:Z

    if-eqz v2, :cond_33

    .line 214
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v2

    iget v3, p0, Lorg/apache/xpath/operations/Variable;->m_index:I

    invoke-virtual {v2, p1, v3, p2}, Lorg/apache/xpath/VariableStack;->getGlobalVariable(Lorg/apache/xpath/XPathContext;IZ)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    .line 222
    .local v0, result:Lorg/apache/xpath/objects/XObject;
    :goto_16
    if-nez v0, :cond_32

    .line 225
    const-string v2, "WG_ILLEGAL_VARIABLE_REFERENCE"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/apache/xpath/operations/Variable;->m_qname:Lorg/apache/xml/utils/QName;

    invoke-virtual {v5}, Lorg/apache/xml/utils/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v2, v3}, Lorg/apache/xpath/operations/Variable;->warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    new-instance v0, Lorg/apache/xpath/objects/XNodeSet;

    .end local v0           #result:Lorg/apache/xpath/objects/XObject;
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getDTMManager()Lorg/apache/xml/dtm/DTMManager;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMManager;)V

    .line 234
    .restart local v0       #result:Lorg/apache/xpath/objects/XObject;
    :cond_32
    return-object v0

    .line 216
    .end local v0           #result:Lorg/apache/xpath/objects/XObject;
    :cond_33
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v2

    iget v3, p0, Lorg/apache/xpath/operations/Variable;->m_index:I

    invoke-virtual {v2, p1, v3, p2}, Lorg/apache/xpath/VariableStack;->getLocalVariable(Lorg/apache/xpath/XPathContext;IZ)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    .restart local v0       #result:Lorg/apache/xpath/objects/XObject;
    goto :goto_16

    .line 219
    .end local v0           #result:Lorg/apache/xpath/objects/XObject;
    :cond_3e
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getVarStack()Lorg/apache/xpath/VariableStack;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/xpath/operations/Variable;->m_qname:Lorg/apache/xml/utils/QName;

    invoke-virtual {v2, p1, v3}, Lorg/apache/xpath/VariableStack;->getVariableOrParam(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/utils/QName;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    .restart local v0       #result:Lorg/apache/xpath/objects/XObject;
    goto :goto_16
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .registers 12
    .parameter "vars"
    .parameter "globalsSize"

    .prologue
    const/4 v6, 0x1

    .line 119
    iput-boolean v6, p0, Lorg/apache/xpath/operations/Variable;->m_fixUpWasCalled:Z

    .line 120
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    .line 122
    .local v3, sz:I
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v5

    sub-int v0, v5, v6

    .local v0, i:I
    :goto_d
    if-ltz v0, :cond_2c

    .line 124
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xml/utils/QName;

    .line 126
    .local v2, qn:Lorg/apache/xml/utils/QName;
    iget-object v5, p0, Lorg/apache/xpath/operations/Variable;->m_qname:Lorg/apache/xml/utils/QName;

    invoke-virtual {v2, v5}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 129
    if-ge v0, p2, :cond_24

    .line 131
    iput-boolean v6, p0, Lorg/apache/xpath/operations/Variable;->m_isGlobal:Z

    .line 132
    iput v0, p0, Lorg/apache/xpath/operations/Variable;->m_index:I

    .line 139
    :goto_23
    return-void

    .line 136
    :cond_24
    sub-int v5, v0, p2

    iput v5, p0, Lorg/apache/xpath/operations/Variable;->m_index:I

    goto :goto_23

    .line 122
    :cond_29
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 143
    .end local v2           #qn:Lorg/apache/xml/utils/QName;
    :cond_2c
    const-string v5, "ER_COULD_NOT_FIND_VAR"

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/apache/xpath/operations/Variable;->m_qname:Lorg/apache/xml/utils/QName;

    invoke-virtual {v8}, Lorg/apache/xml/utils/QName;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, msg:Ljava/lang/String;
    new-instance v4, Ljavax/xml/transform/TransformerException;

    invoke-direct {v4, v1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    .line 148
    .local v4, te:Ljavax/xml/transform/TransformerException;
    new-instance v5, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v5, v4}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v5
.end method

.method public getAnalysisBits()I
    .registers 5

    .prologue
    .line 326
    invoke-virtual {p0}, Lorg/apache/xpath/operations/Variable;->getElemVariable()Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v1

    .line 327
    .local v1, vvar:Lorg/apache/xalan/templates/ElemVariable;
    if-eqz v1, :cond_1d

    .line 329
    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemVariable;->getSelect()Lorg/apache/xpath/XPath;

    move-result-object v2

    .line 330
    .local v2, xpath:Lorg/apache/xpath/XPath;
    if-eqz v2, :cond_1d

    .line 332
    invoke-virtual {v2}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v0

    .line 333
    .local v0, expr:Lorg/apache/xpath/Expression;
    if-eqz v0, :cond_1d

    instance-of v3, v0, Lorg/apache/xpath/axes/PathComponent;

    if-eqz v3, :cond_1d

    .line 335
    check-cast v0, Lorg/apache/xpath/axes/PathComponent;

    .end local v0           #expr:Lorg/apache/xpath/Expression;
    invoke-interface {v0}, Lorg/apache/xpath/axes/PathComponent;->getAnalysisBits()I

    move-result v3

    .line 339
    .end local v2           #xpath:Lorg/apache/xpath/XPath;
    :goto_1c
    return v3

    :cond_1d
    const/high16 v3, 0x400

    goto :goto_1c
.end method

.method public getElemVariable()Lorg/apache/xalan/templates/ElemVariable;
    .registers 9

    .prologue
    .line 269
    const/4 v4, 0x0

    .line 270
    .local v4, vvar:Lorg/apache/xalan/templates/ElemVariable;
    invoke-virtual {p0}, Lorg/apache/xpath/operations/Variable;->getExpressionOwner()Lorg/apache/xpath/ExpressionNode;

    move-result-object v1

    .line 272
    .local v1, owner:Lorg/apache/xpath/ExpressionNode;
    if-eqz v1, :cond_4d

    instance-of v6, v1, Lorg/apache/xalan/templates/ElemTemplateElement;

    if-eqz v6, :cond_4d

    .line 275
    move-object v0, v1

    check-cast v0, Lorg/apache/xalan/templates/ElemTemplateElement;

    move-object v2, v0

    .line 278
    .local v2, prev:Lorg/apache/xalan/templates/ElemTemplateElement;
    instance-of v6, v2, Lorg/apache/xalan/templates/Stylesheet;

    if-nez v6, :cond_41

    .line 280
    :goto_13
    if-eqz v2, :cond_41

    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v6

    instance-of v6, v6, Lorg/apache/xalan/templates/Stylesheet;

    if-nez v6, :cond_41

    .line 282
    move-object v3, v2

    .line 284
    .local v3, savedprev:Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_1e
    :goto_1e
    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemTemplateElement;->getPreviousSiblingElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v2

    if-eqz v2, :cond_3c

    .line 286
    instance-of v6, v2, Lorg/apache/xalan/templates/ElemVariable;

    if-eqz v6, :cond_1e

    .line 288
    move-object v0, v2

    check-cast v0, Lorg/apache/xalan/templates/ElemVariable;

    move-object v4, v0

    .line 290
    invoke-virtual {v4}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/xpath/operations/Variable;->m_qname:Lorg/apache/xml/utils/QName;

    invoke-virtual {v6, v7}, Lorg/apache/xml/utils/QName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    move-object v5, v4

    .line 303
    .end local v2           #prev:Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v3           #savedprev:Lorg/apache/xalan/templates/ElemTemplateElement;
    .end local v4           #vvar:Lorg/apache/xalan/templates/ElemVariable;
    .local v5, vvar:Lorg/apache/xalan/templates/ElemVariable;
    :goto_39
    return-object v5

    .line 294
    .end local v5           #vvar:Lorg/apache/xalan/templates/ElemVariable;
    .restart local v2       #prev:Lorg/apache/xalan/templates/ElemTemplateElement;
    .restart local v3       #savedprev:Lorg/apache/xalan/templates/ElemTemplateElement;
    .restart local v4       #vvar:Lorg/apache/xalan/templates/ElemVariable;
    :cond_3a
    const/4 v4, 0x0

    goto :goto_1e

    .line 297
    :cond_3c
    invoke-virtual {v3}, Lorg/apache/xalan/templates/ElemTemplateElement;->getParentElem()Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v2

    .line 298
    goto :goto_13

    .line 300
    .end local v3           #savedprev:Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_41
    if-eqz v2, :cond_4d

    .line 301
    invoke-virtual {v2}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/xpath/operations/Variable;->m_qname:Lorg/apache/xml/utils/QName;

    invoke-virtual {v6, v7}, Lorg/apache/xalan/templates/StylesheetRoot;->getVariableOrParamComposed(Lorg/apache/xml/utils/QName;)Lorg/apache/xalan/templates/ElemVariable;

    move-result-object v4

    .end local v2           #prev:Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_4d
    move-object v5, v4

    .line 303
    .end local v4           #vvar:Lorg/apache/xalan/templates/ElemVariable;
    .restart local v5       #vvar:Lorg/apache/xalan/templates/ElemVariable;
    goto :goto_39
.end method

.method public getGlobal()Z
    .registers 2

    .prologue
    .line 98
    iget-boolean v0, p0, Lorg/apache/xpath/operations/Variable;->m_isGlobal:Z

    return v0
.end method

.method public getIndex()I
    .registers 2

    .prologue
    .line 78
    iget v0, p0, Lorg/apache/xpath/operations/Variable;->m_index:I

    return v0
.end method

.method public getQName()Lorg/apache/xml/utils/QName;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lorg/apache/xpath/operations/Variable;->m_qname:Lorg/apache/xml/utils/QName;

    return-object v0
.end method

.method public isPsuedoVarRef()Z
    .registers 4

    .prologue
    .line 377
    iget-object v1, p0, Lorg/apache/xpath/operations/Variable;->m_qname:Lorg/apache/xml/utils/QName;

    invoke-virtual {v1}, Lorg/apache/xml/utils/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, ns:Ljava/lang/String;
    if-eqz v0, :cond_20

    const-string v1, "http://xml.apache.org/xalan/psuedovar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 380
    iget-object v1, p0, Lorg/apache/xpath/operations/Variable;->m_qname:Lorg/apache/xml/utils/QName;

    invoke-virtual {v1}, Lorg/apache/xml/utils/QName;->getLocalName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 381
    const/4 v1, 0x1

    .line 383
    :goto_1f
    return v1

    :cond_20
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method public isStableNumber()Z
    .registers 2

    .prologue
    .line 317
    const/4 v0, 0x1

    return v0
.end method

.method public setIndex(I)V
    .registers 2
    .parameter "index"

    .prologue
    .line 68
    iput p1, p0, Lorg/apache/xpath/operations/Variable;->m_index:I

    .line 69
    return-void
.end method

.method public setIsGlobal(Z)V
    .registers 2
    .parameter "isGlobal"

    .prologue
    .line 88
    iput-boolean p1, p0, Lorg/apache/xpath/operations/Variable;->m_isGlobal:Z

    .line 89
    return-void
.end method

.method public setQName(Lorg/apache/xml/utils/QName;)V
    .registers 2
    .parameter "qname"

    .prologue
    .line 160
    iput-object p1, p0, Lorg/apache/xpath/operations/Variable;->m_qname:Lorg/apache/xml/utils/QName;

    .line 161
    return-void
.end method
