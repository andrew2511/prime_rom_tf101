.class public abstract Lorg/apache/xpath/Expression;
.super Ljava/lang/Object;
.source "Expression.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/xpath/ExpressionNode;
.implements Lorg/apache/xpath/XPathVisitable;


# static fields
.field static final serialVersionUID:J = 0x7d9a61c8dacacd6L


# instance fields
.field private m_parent:Lorg/apache/xpath/ExpressionNode;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asIterator(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xml/dtm/DTMIterator;
    .registers 4
    .parameter "xctxt"
    .parameter "contextNode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 250
    :try_start_0
    invoke-virtual {p1, p2, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentNodeAndExpression(II)V

    .line 252
    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->iter()Lorg/apache/xml/dtm/DTMIterator;
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_f

    move-result-object v0

    .line 256
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    return-object v0

    :catchall_f
    move-exception v0

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    throw v0
.end method

.method public asIteratorRaw(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xml/dtm/DTMIterator;
    .registers 5
    .parameter "xctxt"
    .parameter "contextNode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 281
    :try_start_0
    invoke-virtual {p1, p2, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentNodeAndExpression(II)V

    .line 283
    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/objects/XNodeSet;

    .line 284
    .local v0, nodeset:Lorg/apache/xpath/objects/XNodeSet;
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->iterRaw()Lorg/apache/xml/dtm/DTMIterator;
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_11

    move-result-object v1

    .line 288
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    return-object v1

    .end local v0           #nodeset:Lorg/apache/xpath/objects/XNodeSet;
    :catchall_11
    move-exception v1

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNodeAndExpression()V

    throw v1
.end method

.method public asNode(Lorg/apache/xpath/XPathContext;)I
    .registers 4
    .parameter "xctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xpath/objects/XObject;->iter()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    .line 226
    .local v0, iter:Lorg/apache/xml/dtm/DTMIterator;
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v1

    return v1
.end method

.method public assertion(ZLjava/lang/String;)V
    .registers 7
    .parameter "b"
    .parameter "msg"

    .prologue
    .line 417
    if-nez p1, :cond_14

    .line 419
    const-string v1, "ER_INCORRECT_PROGRAMMER_ASSERTION"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, fMsg:Ljava/lang/String;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 425
    .end local v0           #fMsg:Ljava/lang/String;
    :cond_14
    return-void
.end method

.method public bool(Lorg/apache/xpath/XPathContext;)Z
    .registers 3
    .parameter "xctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->bool()Z

    move-result v0

    return v0
.end method

.method public canTraverseOutsideSubtree()Z
    .registers 2

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public abstract deepEquals(Lorg/apache/xpath/Expression;)Z
.end method

.method public error(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7
    .parameter "xctxt"
    .parameter "msg"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 447
    invoke-static {p2, p3}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 449
    .local v1, fmsg:Ljava/lang/String;
    if-eqz p1, :cond_12

    .line 451
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    .line 452
    .local v0, eh:Ljavax/xml/transform/ErrorListener;
    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-direct {v2, v1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    .line 454
    .local v2, te:Ljavax/xml/transform/TransformerException;
    invoke-interface {v0, v2}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V

    .line 456
    .end local v0           #eh:Ljavax/xml/transform/ErrorListener;
    .end local v2           #te:Ljavax/xml/transform/TransformerException;
    :cond_12
    return-void
.end method

.method public abstract execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation
.end method

.method public execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;
    .registers 4
    .parameter "xctxt"
    .parameter "currentNode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;I)Lorg/apache/xpath/objects/XObject;
    .registers 6
    .parameter "xctxt"
    .parameter "currentNode"
    .parameter "dtm"
    .parameter "expType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/xpath/XPathContext;Z)Lorg/apache/xpath/objects/XObject;
    .registers 4
    .parameter "xctxt"
    .parameter "destructiveOK"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    return-object v0
.end method

.method public executeCharsToContentHandler(Lorg/apache/xpath/XPathContext;Lorg/xml/sax/ContentHandler;)V
    .registers 4
    .parameter "xctxt"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 313
    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    .line 315
    .local v0, obj:Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v0, p2}, Lorg/apache/xpath/objects/XObject;->dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V

    .line 316
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->detach()V

    .line 317
    return-void
.end method

.method public exprAddChild(Lorg/apache/xpath/ExpressionNode;I)V
    .registers 5
    .parameter "n"
    .parameter "i"

    .prologue
    .line 489
    const/4 v0, 0x0

    const-string v1, "exprAddChild method not implemented!"

    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/Expression;->assertion(ZLjava/lang/String;)V

    .line 490
    return-void
.end method

.method public exprGetChild(I)Lorg/apache/xpath/ExpressionNode;
    .registers 3
    .parameter "i"

    .prologue
    .line 496
    const/4 v0, 0x0

    return-object v0
.end method

.method public exprGetNumChildren()I
    .registers 2

    .prologue
    .line 502
    const/4 v0, 0x0

    return v0
.end method

.method public exprGetParent()Lorg/apache/xpath/ExpressionNode;
    .registers 2

    .prologue
    .line 482
    iget-object v0, p0, Lorg/apache/xpath/Expression;->m_parent:Lorg/apache/xpath/ExpressionNode;

    return-object v0
.end method

.method public exprSetParent(Lorg/apache/xpath/ExpressionNode;)V
    .registers 4
    .parameter "n"

    .prologue
    .line 476
    if-eq p1, p0, :cond_b

    const/4 v0, 0x1

    :goto_3
    const-string v1, "Can not parent an expression to itself!"

    invoke-virtual {p0, v0, v1}, Lorg/apache/xpath/Expression;->assertion(ZLjava/lang/String;)V

    .line 477
    iput-object p1, p0, Lorg/apache/xpath/Expression;->m_parent:Lorg/apache/xpath/ExpressionNode;

    .line 478
    return-void

    .line 476
    :cond_b
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public abstract fixupVariables(Ljava/util/Vector;I)V
.end method

.method public getColumnNumber()I
    .registers 2

    .prologue
    .line 585
    iget-object v0, p0, Lorg/apache/xpath/Expression;->m_parent:Lorg/apache/xpath/ExpressionNode;

    if-nez v0, :cond_6

    .line 586
    const/4 v0, 0x0

    .line 587
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/apache/xpath/Expression;->m_parent:Lorg/apache/xpath/ExpressionNode;

    invoke-interface {v0}, Lorg/apache/xpath/ExpressionNode;->getColumnNumber()I

    move-result v0

    goto :goto_5
.end method

.method public getExpressionOwner()Lorg/apache/xpath/ExpressionNode;
    .registers 3

    .prologue
    .line 464
    invoke-virtual {p0}, Lorg/apache/xpath/Expression;->exprGetParent()Lorg/apache/xpath/ExpressionNode;

    move-result-object v0

    .line 465
    .local v0, parent:Lorg/apache/xpath/ExpressionNode;
    :goto_4
    if-eqz v0, :cond_f

    instance-of v1, v0, Lorg/apache/xpath/Expression;

    if-eqz v1, :cond_f

    .line 466
    invoke-interface {v0}, Lorg/apache/xpath/ExpressionNode;->exprGetParent()Lorg/apache/xpath/ExpressionNode;

    move-result-object v0

    goto :goto_4

    .line 467
    :cond_f
    return-object v0
.end method

.method public getLineNumber()I
    .registers 2

    .prologue
    .line 563
    iget-object v0, p0, Lorg/apache/xpath/Expression;->m_parent:Lorg/apache/xpath/ExpressionNode;

    if-nez v0, :cond_6

    .line 564
    const/4 v0, 0x0

    .line 565
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/apache/xpath/Expression;->m_parent:Lorg/apache/xpath/ExpressionNode;

    invoke-interface {v0}, Lorg/apache/xpath/ExpressionNode;->getLineNumber()I

    move-result v0

    goto :goto_5
.end method

.method public getPublicId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 520
    iget-object v0, p0, Lorg/apache/xpath/Expression;->m_parent:Lorg/apache/xpath/ExpressionNode;

    if-nez v0, :cond_6

    .line 521
    const/4 v0, 0x0

    .line 522
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/apache/xpath/Expression;->m_parent:Lorg/apache/xpath/ExpressionNode;

    invoke-interface {v0}, Lorg/apache/xpath/ExpressionNode;->getPublicId()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getSystemId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 541
    iget-object v0, p0, Lorg/apache/xpath/Expression;->m_parent:Lorg/apache/xpath/ExpressionNode;

    if-nez v0, :cond_6

    .line 542
    const/4 v0, 0x0

    .line 543
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/apache/xpath/Expression;->m_parent:Lorg/apache/xpath/ExpressionNode;

    invoke-interface {v0}, Lorg/apache/xpath/ExpressionNode;->getSystemId()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public isNodesetExpr()Z
    .registers 2

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method protected final isSameClass(Lorg/apache/xpath/Expression;)Z
    .registers 5
    .parameter "expr"

    .prologue
    const/4 v2, 0x0

    .line 367
    if-nez p1, :cond_5

    move v0, v2

    .line 370
    :goto_4
    return v0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_4

    :cond_11
    move v0, v2

    goto :goto_4
.end method

.method public isStableNumber()Z
    .registers 2

    .prologue
    .line 329
    const/4 v0, 0x0

    return v0
.end method

.method public num(Lorg/apache/xpath/XPathContext;)D
    .registers 4
    .parameter "xctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v0

    return-wide v0
.end method

.method public warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 8
    .parameter "xctxt"
    .parameter "msg"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 392
    invoke-static {p2, p3}, Lorg/apache/xalan/res/XSLMessages;->createXPATHWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, fmsg:Ljava/lang/String;
    if-eqz p1, :cond_16

    .line 396
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    .line 399
    .local v0, eh:Ljavax/xml/transform/ErrorListener;
    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {v0, v2}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    .line 401
    .end local v0           #eh:Ljavax/xml/transform/ErrorListener;
    :cond_16
    return-void
.end method

.method public xstr(Lorg/apache/xpath/XPathContext;)Lorg/apache/xml/utils/XMLString;
    .registers 3
    .parameter "xctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-virtual {p0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v0

    return-object v0
.end method
