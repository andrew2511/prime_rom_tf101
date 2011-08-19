.class public Lorg/apache/xpath/axes/AxesWalker;
.super Lorg/apache/xpath/axes/PredicatedNodeTest;
.source "AxesWalker.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/xpath/axes/PathComponent;
.implements Lorg/apache/xpath/ExpressionOwner;


# static fields
.field static final serialVersionUID:J = -0x292976585216b31fL


# instance fields
.field protected m_axis:I

.field private transient m_currentNode:I

.field private m_dtm:Lorg/apache/xml/dtm/DTM;

.field transient m_isFresh:Z

.field protected m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

.field m_prevWalker:Lorg/apache/xpath/axes/AxesWalker;

.field transient m_root:I

.field protected m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;


# direct methods
.method public constructor <init>(Lorg/apache/xpath/axes/LocPathIterator;I)V
    .registers 4
    .parameter "locPathIterator"
    .parameter "axis"

    .prologue
    const/4 v0, -0x1

    .line 52
    invoke-direct {p0, p1}, Lorg/apache/xpath/axes/PredicatedNodeTest;-><init>(Lorg/apache/xpath/axes/LocPathIterator;)V

    .line 567
    iput v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_root:I

    .line 572
    iput v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_currentNode:I

    .line 586
    iput v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_axis:I

    .line 53
    iput p2, p0, Lorg/apache/xpath/axes/AxesWalker;->m_axis:I

    .line 54
    return-void
.end method

.method static findClone(Lorg/apache/xpath/axes/AxesWalker;Ljava/util/Vector;)Lorg/apache/xpath/axes/AxesWalker;
    .registers 5
    .parameter "key"
    .parameter "cloneList"

    .prologue
    .line 159
    if-eqz p1, :cond_1c

    .line 162
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    .line 163
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    if-ge v0, v1, :cond_1c

    .line 165
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p0, v2, :cond_19

    .line 166
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/xpath/axes/AxesWalker;

    move-object v2, p0

    .line 169
    .end local v0           #i:I
    .end local v1           #n:I
    :goto_18
    return-object v2

    .line 163
    .restart local v0       #i:I
    .restart local v1       #n:I
    .restart local p0
    :cond_19
    add-int/lit8 v0, v0, 0x2

    goto :goto_7

    .line 169
    .end local v0           #i:I
    .end local v1           #n:I
    :cond_1c
    const/4 v2, 0x0

    goto :goto_18
.end method

.method private returnNextNode(I)I
    .registers 2
    .parameter "n"

    .prologue
    .line 312
    return p1
.end method


# virtual methods
.method public callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .registers 4
    .parameter "owner"
    .parameter "visitor"

    .prologue
    .line 522
    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitStep(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/patterns/NodeTest;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 524
    invoke-virtual {p0, p2}, Lorg/apache/xpath/axes/AxesWalker;->callPredicateVisitors(Lorg/apache/xpath/XPathVisitor;)V

    .line 525
    iget-object v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

    if-eqz v0, :cond_12

    .line 527
    iget-object v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

    invoke-virtual {v0, p0, p2}, Lorg/apache/xpath/axes/AxesWalker;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 530
    :cond_12
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-super {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/AxesWalker;

    .line 97
    .local v0, clone:Lorg/apache/xpath/axes/AxesWalker;
    return-object v0
.end method

.method cloneDeep(Lorg/apache/xpath/axes/WalkingIterator;Ljava/util/Vector;)Lorg/apache/xpath/axes/AxesWalker;
    .registers 6
    .parameter "cloneOwner"
    .parameter "cloneList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-static {p0, p2}, Lorg/apache/xpath/axes/AxesWalker;->findClone(Lorg/apache/xpath/axes/AxesWalker;Ljava/util/Vector;)Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v0

    .line 117
    .local v0, clone:Lorg/apache/xpath/axes/AxesWalker;
    if-eqz v0, :cond_8

    move-object v1, v0

    .line 145
    .end local v0           #clone:Lorg/apache/xpath/axes/AxesWalker;
    .local v1, clone:Lorg/apache/xpath/axes/AxesWalker;
    :goto_7
    return-object v1

    .line 119
    .end local v1           #clone:Lorg/apache/xpath/axes/AxesWalker;
    .restart local v0       #clone:Lorg/apache/xpath/axes/AxesWalker;
    :cond_8
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #clone:Lorg/apache/xpath/axes/AxesWalker;
    check-cast v0, Lorg/apache/xpath/axes/AxesWalker;

    .line 120
    .restart local v0       #clone:Lorg/apache/xpath/axes/AxesWalker;
    invoke-virtual {v0, p1}, Lorg/apache/xpath/axes/AxesWalker;->setLocPathIterator(Lorg/apache/xpath/axes/LocPathIterator;)V

    .line 121
    if-eqz p2, :cond_19

    .line 123
    invoke-virtual {p2, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 124
    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 127
    :cond_19
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/xpath/axes/WalkingIterator;->m_lastUsedWalker:Lorg/apache/xpath/axes/AxesWalker;

    if-ne v2, p0, :cond_23

    .line 128
    iput-object v0, p1, Lorg/apache/xpath/axes/WalkingIterator;->m_lastUsedWalker:Lorg/apache/xpath/axes/AxesWalker;

    .line 130
    :cond_23
    iget-object v2, p0, Lorg/apache/xpath/axes/AxesWalker;->m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

    if-eqz v2, :cond_2f

    .line 131
    iget-object v2, p0, Lorg/apache/xpath/axes/AxesWalker;->m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

    invoke-virtual {v2, p1, p2}, Lorg/apache/xpath/axes/AxesWalker;->cloneDeep(Lorg/apache/xpath/axes/WalkingIterator;Ljava/util/Vector;)Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/xpath/axes/AxesWalker;->m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

    .line 135
    :cond_2f
    if-eqz p2, :cond_3f

    .line 137
    iget-object v2, p0, Lorg/apache/xpath/axes/AxesWalker;->m_prevWalker:Lorg/apache/xpath/axes/AxesWalker;

    if-eqz v2, :cond_3d

    .line 138
    iget-object v2, p0, Lorg/apache/xpath/axes/AxesWalker;->m_prevWalker:Lorg/apache/xpath/axes/AxesWalker;

    invoke-virtual {v2, p1, p2}, Lorg/apache/xpath/axes/AxesWalker;->cloneDeep(Lorg/apache/xpath/axes/WalkingIterator;Ljava/util/Vector;)Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/xpath/axes/AxesWalker;->m_prevWalker:Lorg/apache/xpath/axes/AxesWalker;

    :cond_3d
    :goto_3d
    move-object v1, v0

    .line 145
    .end local v0           #clone:Lorg/apache/xpath/axes/AxesWalker;
    .restart local v1       #clone:Lorg/apache/xpath/axes/AxesWalker;
    goto :goto_7

    .line 142
    .end local v1           #clone:Lorg/apache/xpath/axes/AxesWalker;
    .restart local v0       #clone:Lorg/apache/xpath/axes/AxesWalker;
    :cond_3f
    iget-object v2, p0, Lorg/apache/xpath/axes/AxesWalker;->m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

    if-eqz v2, :cond_3d

    .line 143
    iget-object v2, v0, Lorg/apache/xpath/axes/AxesWalker;->m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

    iput-object v0, v2, Lorg/apache/xpath/axes/AxesWalker;->m_prevWalker:Lorg/apache/xpath/axes/AxesWalker;

    goto :goto_3d
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .registers 7
    .parameter "expr"

    .prologue
    const/4 v4, 0x0

    .line 554
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/PredicatedNodeTest;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v2

    if-nez v2, :cond_9

    move v2, v4

    .line 561
    :goto_8
    return v2

    .line 557
    :cond_9
    move-object v0, p1

    check-cast v0, Lorg/apache/xpath/axes/AxesWalker;

    move-object v1, v0

    .line 558
    .local v1, walker:Lorg/apache/xpath/axes/AxesWalker;
    iget v2, p0, Lorg/apache/xpath/axes/AxesWalker;->m_axis:I

    iget v3, v1, Lorg/apache/xpath/axes/AxesWalker;->m_axis:I

    if-eq v2, v3, :cond_15

    move v2, v4

    .line 559
    goto :goto_8

    .line 561
    :cond_15
    const/4 v2, 0x1

    goto :goto_8
.end method

.method public detach()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 179
    iput v1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_currentNode:I

    .line 180
    iput-object v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    .line 181
    iput-object v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_isFresh:Z

    .line 183
    iput v1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_root:I

    .line 184
    return-void
.end method

.method public getAnalysisBits()I
    .registers 3

    .prologue
    .line 205
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->getAxis()I

    move-result v0

    .line 206
    .local v0, axis:I
    invoke-static {v0}, Lorg/apache/xpath/axes/WalkerFactory;->getAnalysisBitFromAxes(I)I

    move-result v1

    .line 207
    .local v1, bit:I
    return v1
.end method

.method public getAxis()I
    .registers 2

    .prologue
    .line 508
    iget v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_axis:I

    return v0
.end method

.method public final getCurrentNode()I
    .registers 2

    .prologue
    .line 252
    iget v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_currentNode:I

    return v0
.end method

.method public getDTM(I)Lorg/apache/xml/dtm/DTM;
    .registers 3
    .parameter "node"

    .prologue
    .line 485
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xpath/axes/WalkingIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    return-object v0
.end method

.method public getExpression()Lorg/apache/xpath/Expression;
    .registers 2

    .prologue
    .line 537
    iget-object v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

    return-object v0
.end method

.method public getLastPos(Lorg/apache/xpath/XPathContext;)I
    .registers 11
    .parameter "xctxt"

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 415
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->getProximityPosition()I

    move-result v3

    .line 421
    .local v3, pos:I
    :try_start_6
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xpath/axes/AxesWalker;
    :try_end_c
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_6 .. :try_end_c} :catch_2b

    .line 428
    .local v5, walker:Lorg/apache/xpath/axes/AxesWalker;
    iget v6, p0, Lorg/apache/xpath/axes/AxesWalker;->m_predicateIndex:I

    invoke-virtual {v5, v6}, Lorg/apache/xpath/axes/AxesWalker;->setPredicateCount(I)V

    .line 429
    invoke-virtual {v5, v8}, Lorg/apache/xpath/axes/AxesWalker;->setNextWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    .line 430
    invoke-virtual {v5, v8}, Lorg/apache/xpath/axes/AxesWalker;->setPrevWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    .line 432
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object v1

    .line 433
    .local v1, lpi:Lorg/apache/xpath/axes/WalkingIterator;
    invoke-virtual {v1}, Lorg/apache/xpath/axes/WalkingIterator;->getLastUsedWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v4

    .line 437
    .local v4, savedWalker:Lorg/apache/xpath/axes/AxesWalker;
    :try_start_1f
    invoke-virtual {v1, v5}, Lorg/apache/xpath/axes/WalkingIterator;->setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    .line 441
    :goto_22
    invoke-virtual {v5}, Lorg/apache/xpath/axes/AxesWalker;->nextNode()I
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_34

    move-result v2

    .local v2, next:I
    if-eq v7, v2, :cond_2f

    .line 443
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 423
    .end local v1           #lpi:Lorg/apache/xpath/axes/WalkingIterator;
    .end local v2           #next:I
    .end local v4           #savedWalker:Lorg/apache/xpath/axes/AxesWalker;
    .end local v5           #walker:Lorg/apache/xpath/axes/AxesWalker;
    :catch_2b
    move-exception v6

    move-object v0, v6

    .local v0, cnse:Ljava/lang/CloneNotSupportedException;
    move v6, v7

    .line 454
    .end local v0           #cnse:Ljava/lang/CloneNotSupportedException;
    :goto_2e
    return v6

    .line 450
    .restart local v1       #lpi:Lorg/apache/xpath/axes/WalkingIterator;
    .restart local v2       #next:I
    .restart local v4       #savedWalker:Lorg/apache/xpath/axes/AxesWalker;
    .restart local v5       #walker:Lorg/apache/xpath/axes/AxesWalker;
    :cond_2f
    invoke-virtual {v1, v4}, Lorg/apache/xpath/axes/WalkingIterator;->setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    move v6, v3

    .line 454
    goto :goto_2e

    .line 450
    .end local v2           #next:I
    :catchall_34
    move-exception v6

    invoke-virtual {v1, v4}, Lorg/apache/xpath/axes/WalkingIterator;->setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    throw v6
.end method

.method protected getNextNode()I
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 322
    iget-boolean v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_foundLast:Z

    if-eqz v0, :cond_7

    move v0, v3

    .line 341
    :goto_6
    return v0

    .line 325
    :cond_7
    iget-boolean v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_isFresh:Z

    if-eqz v0, :cond_22

    .line 327
    iget-object v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    iget v1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_root:I

    invoke-virtual {v0, v1}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I

    move-result v0

    iput v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_currentNode:I

    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_isFresh:Z

    .line 338
    :cond_18
    :goto_18
    iget v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_currentNode:I

    if-ne v3, v0, :cond_1f

    .line 339
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_foundLast:Z

    .line 341
    :cond_1f
    iget v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_currentNode:I

    goto :goto_6

    .line 333
    :cond_22
    iget v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_currentNode:I

    if-eq v3, v0, :cond_18

    .line 335
    iget-object v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    iget v1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_root:I

    iget v2, p0, Lorg/apache/xpath/axes/AxesWalker;->m_currentNode:I

    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I

    move-result v0

    iput v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_currentNode:I

    goto :goto_18
.end method

.method public getNextWalker()Lorg/apache/xpath/axes/AxesWalker;
    .registers 2

    .prologue
    .line 274
    iget-object v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

    return-object v0
.end method

.method public getPrevWalker()Lorg/apache/xpath/axes/AxesWalker;
    .registers 2

    .prologue
    .line 298
    iget-object v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_prevWalker:Lorg/apache/xpath/axes/AxesWalker;

    return-object v0
.end method

.method public getRoot()I
    .registers 2

    .prologue
    .line 196
    iget v0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_root:I

    return v0
.end method

.method public init(Lorg/apache/xpath/compiler/Compiler;II)V
    .registers 4
    .parameter "compiler"
    .parameter "opPos"
    .parameter "stepType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/axes/AxesWalker;->initPredicateInfo(Lorg/apache/xpath/compiler/Compiler;I)V

    .line 78
    return-void
.end method

.method public isDocOrdered()Z
    .registers 2

    .prologue
    .line 497
    const/4 v0, 0x1

    return v0
.end method

.method public nextNode()I
    .registers 6

    .prologue
    .line 355
    const/4 v0, -0x1

    .line 356
    .local v0, nextNode:I
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xpath/axes/WalkingIterator;->getLastUsedWalker()Lorg/apache/xpath/axes/AxesWalker;

    move-result-object v2

    .line 360
    .local v2, walker:Lorg/apache/xpath/axes/AxesWalker;
    :cond_9
    :goto_9
    if-nez v2, :cond_c

    .line 399
    :goto_b
    return v0

    .line 363
    :cond_c
    invoke-virtual {v2}, Lorg/apache/xpath/axes/AxesWalker;->getNextNode()I

    move-result v0

    .line 365
    const/4 v3, -0x1

    if-ne v3, v0, :cond_16

    .line 368
    iget-object v2, v2, Lorg/apache/xpath/axes/AxesWalker;->m_prevWalker:Lorg/apache/xpath/axes/AxesWalker;

    goto :goto_9

    .line 372
    :cond_16
    invoke-virtual {v2, v0}, Lorg/apache/xpath/axes/AxesWalker;->acceptNode(I)S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    .line 377
    iget-object v3, v2, Lorg/apache/xpath/axes/AxesWalker;->m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

    if-nez v3, :cond_29

    .line 379
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/xpath/axes/WalkingIterator;->setLastUsedWalker(Lorg/apache/xpath/axes/AxesWalker;)V

    goto :goto_b

    .line 386
    :cond_29
    move-object v1, v2

    .line 388
    .local v1, prev:Lorg/apache/xpath/axes/AxesWalker;
    iget-object v2, v2, Lorg/apache/xpath/axes/AxesWalker;->m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

    .line 390
    invoke-virtual {v2, v0}, Lorg/apache/xpath/axes/AxesWalker;->setRoot(I)V

    .line 392
    iput-object v1, v2, Lorg/apache/xpath/axes/AxesWalker;->m_prevWalker:Lorg/apache/xpath/axes/AxesWalker;

    goto :goto_9
.end method

.method public setDefaultDTM(Lorg/apache/xml/dtm/DTM;)V
    .registers 2
    .parameter "dtm"

    .prologue
    .line 474
    iput-object p1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    .line 475
    return-void
.end method

.method public setExpression(Lorg/apache/xpath/Expression;)V
    .registers 2
    .parameter "exp"

    .prologue
    .line 545
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 546
    check-cast p1, Lorg/apache/xpath/axes/AxesWalker;

    .end local p1
    iput-object p1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

    .line 547
    return-void
.end method

.method public setNextWalker(Lorg/apache/xpath/axes/AxesWalker;)V
    .registers 2
    .parameter "walker"

    .prologue
    .line 263
    iput-object p1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_nextWalker:Lorg/apache/xpath/axes/AxesWalker;

    .line 264
    return-void
.end method

.method public setPrevWalker(Lorg/apache/xpath/axes/AxesWalker;)V
    .registers 2
    .parameter "walker"

    .prologue
    .line 286
    iput-object p1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_prevWalker:Lorg/apache/xpath/axes/AxesWalker;

    .line 287
    return-void
.end method

.method public setRoot(I)V
    .registers 6
    .parameter "root"

    .prologue
    .line 219
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->wi()Lorg/apache/xpath/axes/WalkingIterator;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xpath/axes/WalkingIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    .line 220
    .local v0, xctxt:Lorg/apache/xpath/XPathContext;
    invoke-virtual {v0, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    .line 221
    iget-object v1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_dtm:Lorg/apache/xml/dtm/DTM;

    iget v2, p0, Lorg/apache/xpath/axes/AxesWalker;->m_axis:I

    invoke-interface {v1, v2}, Lorg/apache/xml/dtm/DTM;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;

    .line 222
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_isFresh:Z

    .line 223
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_foundLast:Z

    .line 224
    iput p1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_root:I

    .line 225
    iput p1, p0, Lorg/apache/xpath/axes/AxesWalker;->m_currentNode:I

    .line 227
    const/4 v1, -0x1

    if-ne v1, p1, :cond_32

    .line 229
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ER_SETTING_WALKER_ROOT_TO_NULL"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/xalan/res/XSLMessages;->createXPATHMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 233
    :cond_32
    invoke-virtual {p0}, Lorg/apache/xpath/axes/AxesWalker;->resetProximityPositions()V

    .line 234
    return-void
.end method

.method public final wi()Lorg/apache/xpath/axes/WalkingIterator;
    .registers 1

    .prologue
    .line 58
    iget-object p0, p0, Lorg/apache/xpath/axes/AxesWalker;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    .end local p0
    check-cast p0, Lorg/apache/xpath/axes/WalkingIterator;

    return-object p0
.end method
