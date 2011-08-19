.class public Lorg/apache/xalan/templates/ElemForEach;
.super Lorg/apache/xalan/templates/ElemTemplateElement;
.source "ElemForEach.java"

# interfaces
.implements Lorg/apache/xpath/ExpressionOwner;


# static fields
.field static final DEBUG:Z = false

.field static final serialVersionUID:J = 0x5384bb05f6cb70caL


# instance fields
.field public m_doc_cache_off:Z

.field protected m_selectExpression:Lorg/apache/xpath/Expression;

.field protected m_sortElems:Ljava/util/Vector;

.field protected m_xpath:Lorg/apache/xpath/XPath;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Lorg/apache/xalan/templates/ElemTemplateElement;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xalan/templates/ElemForEach;->m_doc_cache_off:Z

    .line 86
    iput-object v1, p0, Lorg/apache/xalan/templates/ElemForEach;->m_selectExpression:Lorg/apache/xpath/Expression;

    .line 93
    iput-object v1, p0, Lorg/apache/xalan/templates/ElemForEach;->m_xpath:Lorg/apache/xpath/XPath;

    .line 191
    iput-object v1, p0, Lorg/apache/xalan/templates/ElemForEach;->m_sortElems:Ljava/util/Vector;

    .line 80
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 491
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 492
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemForEach;->m_xpath:Lorg/apache/xpath/XPath;

    .line 493
    return-void
.end method


# virtual methods
.method public appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 5
    .parameter "newChild"

    .prologue
    .line 436
    invoke-virtual {p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->getXSLToken()I

    move-result v1

    .line 438
    .local v1, type:I
    const/16 v2, 0x40

    if-ne v2, v1, :cond_11

    .line 440
    move-object v0, p1

    check-cast v0, Lorg/apache/xalan/templates/ElemSort;

    move-object v2, v0

    invoke-virtual {p0, v2}, Lorg/apache/xalan/templates/ElemForEach;->setSortElem(Lorg/apache/xalan/templates/ElemSort;)V

    move-object v2, p1

    .line 445
    :goto_10
    return-object v2

    :cond_11
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->appendChild(Lorg/apache/xalan/templates/ElemTemplateElement;)Lorg/apache/xalan/templates/ElemTemplateElement;

    move-result-object v2

    goto :goto_10
.end method

.method public callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V
    .registers 6
    .parameter "visitor"
    .parameter "callAttributes"

    .prologue
    .line 454
    if-eqz p2, :cond_b

    iget-object v2, p0, Lorg/apache/xalan/templates/ElemForEach;->m_selectExpression:Lorg/apache/xpath/Expression;

    if-eqz v2, :cond_b

    .line 455
    iget-object v2, p0, Lorg/apache/xalan/templates/ElemForEach;->m_selectExpression:Lorg/apache/xpath/Expression;

    invoke-virtual {v2, p0, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 457
    :cond_b
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemForEach;->getSortElemCount()I

    move-result v1

    .line 459
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    if-ge v0, v1, :cond_1c

    .line 461
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/ElemForEach;->getSortElem(I)Lorg/apache/xalan/templates/ElemSort;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/xalan/templates/ElemSort;->callVisitors(Lorg/apache/xalan/templates/XSLTVisitor;)V

    .line 459
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 464
    :cond_1c
    invoke-super {p0, p1, p2}, Lorg/apache/xalan/templates/ElemTemplateElement;->callChildVisitors(Lorg/apache/xalan/templates/XSLTVisitor;Z)V

    .line 465
    return-void
.end method

.method public compose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 7
    .parameter "sroot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 134
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemForEach;->getSortElemCount()I

    move-result v1

    .line 136
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    if-ge v0, v1, :cond_14

    .line 138
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/ElemForEach;->getSortElem(I)Lorg/apache/xalan/templates/ElemSort;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/xalan/templates/ElemSort;->compose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 141
    :cond_14
    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getVariableNames()Ljava/util/Vector;

    move-result-object v2

    .line 143
    .local v2, vnames:Ljava/util/Vector;
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemForEach;->m_selectExpression:Lorg/apache/xpath/Expression;

    if-eqz v3, :cond_2e

    .line 144
    iget-object v3, p0, Lorg/apache/xalan/templates/ElemForEach;->m_selectExpression:Lorg/apache/xpath/Expression;

    invoke-virtual {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->getComposeState()Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    .line 151
    :goto_2d
    return-void

    .line 148
    :cond_2e
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemForEach;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v3

    iget-object v3, v3, Lorg/apache/xalan/templates/StylesheetRoot;->m_selectDefault:Lorg/apache/xpath/XPath;

    invoke-virtual {v3}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/xalan/templates/ElemForEach;->m_selectExpression:Lorg/apache/xpath/Expression;

    goto :goto_2d
.end method

.method public endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 5
    .parameter "sroot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-virtual {p0}, Lorg/apache/xalan/templates/ElemForEach;->getSortElemCount()I

    move-result v1

    .line 160
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v1, :cond_11

    .line 162
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/ElemForEach;->getSortElem(I)Lorg/apache/xalan/templates/ElemSort;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/xalan/templates/ElemSort;->endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 165
    :cond_11
    invoke-super {p0, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->endCompose(Lorg/apache/xalan/templates/StylesheetRoot;)V

    .line 166
    return-void
.end method

.method public execute(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 3
    .parameter "transformer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 259
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/xalan/transformer/TransformerImpl;->pushCurrentTemplateRuleIsNull(Z)V

    .line 262
    :try_start_4
    invoke-virtual {p0, p1}, Lorg/apache/xalan/templates/ElemForEach;->transformSelectedNodes(Lorg/apache/xalan/transformer/TransformerImpl;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_b

    .line 266
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popCurrentTemplateRuleIsNull()V

    .line 268
    return-void

    .line 266
    :catchall_b
    move-exception v0

    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popCurrentTemplateRuleIsNull()V

    throw v0
.end method

.method public getExpression()Lorg/apache/xpath/Expression;
    .registers 2

    .prologue
    .line 472
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemForEach;->m_selectExpression:Lorg/apache/xpath/Expression;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 246
    const-string v0, "for-each"

    return-object v0
.end method

.method public getSelect()Lorg/apache/xpath/Expression;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemForEach;->m_selectExpression:Lorg/apache/xpath/Expression;

    return-object v0
.end method

.method public getSortElem(I)Lorg/apache/xalan/templates/ElemSort;
    .registers 3
    .parameter "i"

    .prologue
    .line 211
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemForEach;->m_sortElems:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/xalan/templates/ElemSort;

    return-object p0
.end method

.method public getSortElemCount()I
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemForEach;->m_sortElems:Ljava/util/Vector;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemForEach;->m_sortElems:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_5
.end method

.method protected getTemplateMatch()Lorg/apache/xalan/templates/ElemTemplateElement;
    .registers 1

    .prologue
    .line 278
    return-object p0
.end method

.method public getXSLToken()I
    .registers 2

    .prologue
    .line 236
    const/16 v0, 0x1c

    return v0
.end method

.method public setExpression(Lorg/apache/xpath/Expression;)V
    .registers 2
    .parameter "exp"

    .prologue
    .line 480
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 481
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemForEach;->m_selectExpression:Lorg/apache/xpath/Expression;

    .line 482
    return-void
.end method

.method public setSelect(Lorg/apache/xpath/XPath;)V
    .registers 3
    .parameter "xpath"

    .prologue
    .line 102
    invoke-virtual {p1}, Lorg/apache/xpath/XPath;->getExpression()Lorg/apache/xpath/Expression;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemForEach;->m_selectExpression:Lorg/apache/xpath/Expression;

    .line 106
    iput-object p1, p0, Lorg/apache/xalan/templates/ElemForEach;->m_xpath:Lorg/apache/xpath/XPath;

    .line 107
    return-void
.end method

.method public setSortElem(Lorg/apache/xalan/templates/ElemSort;)V
    .registers 3
    .parameter "sortElem"

    .prologue
    .line 222
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemForEach;->m_sortElems:Ljava/util/Vector;

    if-nez v0, :cond_b

    .line 223
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/ElemForEach;->m_sortElems:Ljava/util/Vector;

    .line 225
    :cond_b
    iget-object v0, p0, Lorg/apache/xalan/templates/ElemForEach;->m_sortElems:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 226
    return-void
.end method

.method public sortNodes(Lorg/apache/xpath/XPathContext;Ljava/util/Vector;Lorg/apache/xml/dtm/DTMIterator;)Lorg/apache/xml/dtm/DTMIterator;
    .registers 6
    .parameter "xctxt"
    .parameter "keys"
    .parameter "sourceNodes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 298
    new-instance v0, Lorg/apache/xalan/transformer/NodeSorter;

    invoke-direct {v0, p1}, Lorg/apache/xalan/transformer/NodeSorter;-><init>(Lorg/apache/xpath/XPathContext;)V

    .line 299
    .local v0, sorter:Lorg/apache/xalan/transformer/NodeSorter;
    const/4 v1, 0x1

    invoke-interface {p3, v1}, Lorg/apache/xml/dtm/DTMIterator;->setShouldCacheNodes(Z)V

    .line 300
    const/4 v1, -0x1

    invoke-interface {p3, v1}, Lorg/apache/xml/dtm/DTMIterator;->runTo(I)V

    .line 301
    invoke-virtual {p1, p3}, Lorg/apache/xpath/XPathContext;->pushContextNodeList(Lorg/apache/xml/dtm/DTMIterator;)V

    .line 305
    :try_start_10
    invoke-virtual {v0, p3, p2, p1}, Lorg/apache/xalan/transformer/NodeSorter;->sort(Lorg/apache/xml/dtm/DTMIterator;Ljava/util/Vector;Lorg/apache/xpath/XPathContext;)V

    .line 306
    const/4 v1, 0x0

    invoke-interface {p3, v1}, Lorg/apache/xml/dtm/DTMIterator;->setCurrentPos(I)V
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_1b

    .line 310
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    .line 313
    return-object p3

    .line 310
    :catchall_1b
    move-exception v1

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    throw v1
.end method

.method public transformSelectedNodes(Lorg/apache/xalan/transformer/TransformerImpl;)V
    .registers 15
    .parameter "transformer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 328
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v10

    .line 329
    .local v10, xctxt:Lorg/apache/xpath/XPathContext;
    invoke-virtual {v10}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v7

    .line 330
    .local v7, sourceNode:I
    iget-object v11, p0, Lorg/apache/xalan/templates/ElemForEach;->m_selectExpression:Lorg/apache/xpath/Expression;

    invoke-virtual {v11, v10, v7}, Lorg/apache/xpath/Expression;->asIterator(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v8

    .line 336
    .local v8, sourceNodes:Lorg/apache/xml/dtm/DTMIterator;
    :try_start_e
    iget-object v11, p0, Lorg/apache/xalan/templates/ElemForEach;->m_sortElems:Ljava/util/Vector;

    if-nez v11, :cond_6a

    const/4 v11, 0x0

    move-object v5, v11

    .line 341
    .local v5, keys:Ljava/util/Vector;
    :goto_14
    if-eqz v5, :cond_1a

    .line 342
    invoke-virtual {p0, v10, v5, v8}, Lorg/apache/xalan/templates/ElemForEach;->sortNodes(Lorg/apache/xpath/XPathContext;Ljava/util/Vector;Lorg/apache/xml/dtm/DTMIterator;)Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v8

    .line 344
    :cond_1a
    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 346
    invoke-virtual {v10}, Lorg/apache/xpath/XPathContext;->getCurrentNodeStack()Lorg/apache/xml/utils/IntStack;

    move-result-object v2

    .line 348
    .local v2, currentNodes:Lorg/apache/xml/utils/IntStack;
    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Lorg/apache/xpath/XPathContext;->pushCurrentExpressionNode(I)V

    .line 350
    invoke-virtual {v10}, Lorg/apache/xpath/XPathContext;->getCurrentExpressionNodeStack()Lorg/apache/xml/utils/IntStack;

    move-result-object v1

    .line 352
    .local v1, currentExpressionNodes:Lorg/apache/xml/utils/IntStack;
    invoke-virtual {v10}, Lorg/apache/xpath/XPathContext;->pushSAXLocatorNull()V

    .line 353
    invoke-virtual {v10, v8}, Lorg/apache/xpath/XPathContext;->pushContextNodeList(Lorg/apache/xml/dtm/DTMIterator;)V

    .line 354
    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Lorg/apache/xalan/transformer/TransformerImpl;->pushElemTemplateElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 358
    invoke-virtual {v10, v7}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v4

    .line 359
    .local v4, dtm:Lorg/apache/xml/dtm/DTM;
    const/high16 v11, -0x1

    and-int v3, v7, v11

    .line 362
    .local v3, docID:I
    :cond_3c
    :goto_3c
    const/4 v11, -0x1

    invoke-interface {v8}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v0

    .local v0, child:I
    if-eq v11, v0, :cond_98

    .line 364
    invoke-virtual {v2, v0}, Lorg/apache/xml/utils/IntStack;->setTop(I)V

    .line 365
    invoke-virtual {v1, v0}, Lorg/apache/xml/utils/IntStack;->setTop(I)V

    .line 367
    const/high16 v11, -0x1

    and-int/2addr v11, v0

    if-eq v11, v3, :cond_56

    .line 369
    invoke-virtual {v10, v0}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v4

    .line 370
    const/high16 v11, -0x1

    and-int v3, v0, v11

    .line 374
    :cond_56
    invoke-interface {v4, v0}, Lorg/apache/xml/dtm/DTM;->getNodeType(I)S

    move-result v6

    .line 379
    .local v6, nodeType:I
    iget-object v9, p0, Lorg/apache/xalan/templates/ElemForEach;->m_firstChild:Lorg/apache/xalan/templates/ElemTemplateElement;

    .local v9, t:Lorg/apache/xalan/templates/ElemTemplateElement;
    :goto_5c
    if-eqz v9, :cond_70

    .line 382
    invoke-virtual {v10, v9}, Lorg/apache/xpath/XPathContext;->setSAXLocator(Ljavax/xml/transform/SourceLocator;)V

    .line 383
    invoke-virtual {p1, v9}, Lorg/apache/xalan/transformer/TransformerImpl;->setCurrentElement(Lorg/apache/xalan/templates/ElemTemplateElement;)V

    .line 384
    invoke-virtual {v9, p1}, Lorg/apache/xalan/templates/ElemTemplateElement;->execute(Lorg/apache/xalan/transformer/TransformerImpl;)V

    .line 380
    iget-object v9, v9, Lorg/apache/xalan/templates/ElemTemplateElement;->m_nextSibling:Lorg/apache/xalan/templates/ElemTemplateElement;

    goto :goto_5c

    .line 336
    .end local v0           #child:I
    .end local v1           #currentExpressionNodes:Lorg/apache/xml/utils/IntStack;
    .end local v2           #currentNodes:Lorg/apache/xml/utils/IntStack;
    .end local v3           #docID:I
    .end local v4           #dtm:Lorg/apache/xml/dtm/DTM;
    .end local v5           #keys:Ljava/util/Vector;
    .end local v6           #nodeType:I
    .end local v9           #t:Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_6a
    invoke-virtual {p1, p0, v7}, Lorg/apache/xalan/transformer/TransformerImpl;->processSortKeys(Lorg/apache/xalan/templates/ElemForEach;I)Ljava/util/Vector;

    move-result-object v11

    move-object v5, v11

    goto :goto_14

    .line 397
    .restart local v0       #child:I
    .restart local v1       #currentExpressionNodes:Lorg/apache/xml/utils/IntStack;
    .restart local v2       #currentNodes:Lorg/apache/xml/utils/IntStack;
    .restart local v3       #docID:I
    .restart local v4       #dtm:Lorg/apache/xml/dtm/DTM;
    .restart local v5       #keys:Ljava/util/Vector;
    .restart local v6       #nodeType:I
    .restart local v9       #t:Lorg/apache/xalan/templates/ElemTemplateElement;
    :cond_70
    iget-boolean v11, p0, Lorg/apache/xalan/templates/ElemForEach;->m_doc_cache_off:Z

    if-eqz v11, :cond_3c

    .line 405
    invoke-virtual {v10}, Lorg/apache/xpath/XPathContext;->getSourceTreeManager()Lorg/apache/xpath/SourceTreeManager;

    move-result-object v11

    invoke-interface {v4}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    move-result v12

    invoke-virtual {v11, v12}, Lorg/apache/xpath/SourceTreeManager;->removeDocumentFromCache(I)V

    .line 406
    const/4 v11, 0x0

    invoke-virtual {v10, v4, v11}, Lorg/apache/xpath/XPathContext;->release(Lorg/apache/xml/dtm/DTM;Z)Z
    :try_end_83
    .catchall {:try_start_e .. :try_end_83} :catchall_84

    goto :goto_3c

    .line 412
    .end local v0           #child:I
    .end local v1           #currentExpressionNodes:Lorg/apache/xml/utils/IntStack;
    .end local v2           #currentNodes:Lorg/apache/xml/utils/IntStack;
    .end local v3           #docID:I
    .end local v4           #dtm:Lorg/apache/xml/dtm/DTM;
    .end local v5           #keys:Ljava/util/Vector;
    .end local v6           #nodeType:I
    .end local v9           #t:Lorg/apache/xalan/templates/ElemTemplateElement;
    :catchall_84
    move-exception v11

    invoke-virtual {v10}, Lorg/apache/xpath/XPathContext;->popSAXLocator()V

    .line 413
    invoke-virtual {v10}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    .line 414
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    .line 415
    invoke-virtual {v10}, Lorg/apache/xpath/XPathContext;->popCurrentExpressionNode()V

    .line 416
    invoke-virtual {v10}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 417
    invoke-interface {v8}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    throw v11

    .line 412
    .restart local v0       #child:I
    .restart local v1       #currentExpressionNodes:Lorg/apache/xml/utils/IntStack;
    .restart local v2       #currentNodes:Lorg/apache/xml/utils/IntStack;
    .restart local v3       #docID:I
    .restart local v4       #dtm:Lorg/apache/xml/dtm/DTM;
    .restart local v5       #keys:Ljava/util/Vector;
    :cond_98
    invoke-virtual {v10}, Lorg/apache/xpath/XPathContext;->popSAXLocator()V

    .line 413
    invoke-virtual {v10}, Lorg/apache/xpath/XPathContext;->popContextNodeList()V

    .line 414
    invoke-virtual {p1}, Lorg/apache/xalan/transformer/TransformerImpl;->popElemTemplateElement()V

    .line 415
    invoke-virtual {v10}, Lorg/apache/xpath/XPathContext;->popCurrentExpressionNode()V

    .line 416
    invoke-virtual {v10}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 417
    invoke-interface {v8}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    .line 419
    return-void
.end method
