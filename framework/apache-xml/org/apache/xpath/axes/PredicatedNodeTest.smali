.class public abstract Lorg/apache/xpath/axes/PredicatedNodeTest;
.super Lorg/apache/xpath/patterns/NodeTest;
.source "PredicatedNodeTest.java"

# interfaces
.implements Lorg/apache/xpath/axes/SubContextList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xpath/axes/PredicatedNodeTest$PredOwner;
    }
.end annotation


# static fields
.field static final DEBUG_PREDICATECOUNTING:Z = false

.field static final serialVersionUID:J = -0x55f3d768b61b4e07L


# instance fields
.field protected transient m_foundLast:Z

.field protected m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

.field protected m_predCount:I

.field transient m_predicateIndex:I

.field private m_predicates:[Lorg/apache/xpath/Expression;

.field protected transient m_proximityPositions:[I


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 53
    invoke-direct {p0}, Lorg/apache/xpath/patterns/NodeTest;-><init>()V

    .line 109
    iput v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predCount:I

    .line 593
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    .line 602
    iput v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    .line 54
    return-void
.end method

.method constructor <init>(Lorg/apache/xpath/axes/LocPathIterator;)V
    .registers 4
    .parameter "locPathIterator"

    .prologue
    const/4 v1, -0x1

    .line 44
    invoke-direct {p0}, Lorg/apache/xpath/patterns/NodeTest;-><init>()V

    .line 109
    iput v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predCount:I

    .line 593
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    .line 602
    iput v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    .line 45
    iput-object p1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lorg/apache/xpath/axes/PredicatedNodeTest;)[Lorg/apache/xpath/Expression;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 69
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 70
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    .line 71
    invoke-virtual {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->resetProximityPositions()V
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_9} :catch_a

    .line 77
    return-void

    .line 73
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 75
    .local v0, cnfe:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public acceptNode(I)S
    .registers 7
    .parameter "n"

    .prologue
    const/4 v4, 0x3

    .line 464
    iget-object v3, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    invoke-virtual {v3}, Lorg/apache/xpath/axes/LocPathIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v2

    .line 468
    .local v2, xctxt:Lorg/apache/xpath/XPathContext;
    :try_start_7
    invoke-virtual {v2, p1}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 470
    invoke-virtual {p0, v2, p1}, Lorg/apache/xpath/axes/PredicatedNodeTest;->execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    .line 473
    .local v0, score:Lorg/apache/xpath/objects/XObject;
    sget-object v3, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    if-eq v0, v3, :cond_2c

    .line 475
    invoke-virtual {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getPredicateCount()I

    move-result v3

    if-lez v3, :cond_27

    .line 477
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/apache/xpath/axes/PredicatedNodeTest;->countProximityPosition(I)V

    .line 479
    invoke-virtual {p0, p1, v2}, Lorg/apache/xpath/axes/PredicatedNodeTest;->executePredicates(ILorg/apache/xpath/XPathContext;)Z
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_3d
    .catch Ljavax/xml/transform/TransformerException; {:try_start_7 .. :try_end_1f} :catch_31

    move-result v3

    if-nez v3, :cond_27

    .line 494
    invoke-virtual {v2}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    move v3, v4

    .line 497
    :goto_26
    return v3

    .line 483
    :cond_27
    const/4 v3, 0x1

    .line 494
    invoke-virtual {v2}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    goto :goto_26

    :cond_2c
    invoke-virtual {v2}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    move v3, v4

    .line 497
    goto :goto_26

    .line 486
    .end local v0           #score:Lorg/apache/xpath/objects/XObject;
    :catch_31
    move-exception v3

    move-object v1, v3

    .line 490
    .local v1, se:Ljavax/xml/transform/TransformerException;
    :try_start_33
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_3d

    .line 494
    .end local v1           #se:Ljavax/xml/transform/TransformerException;
    :catchall_3d
    move-exception v3

    invoke-virtual {v2}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    throw v3
.end method

.method public callPredicateVisitors(Lorg/apache/xpath/XPathVisitor;)V
    .registers 6
    .parameter "visitor"

    .prologue
    .line 550
    iget-object v3, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    if-eqz v3, :cond_23

    .line 552
    iget-object v3, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    array-length v1, v3

    .line 553
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    if-ge v0, v1, :cond_23

    .line 555
    new-instance v2, Lorg/apache/xpath/axes/PredicatedNodeTest$PredOwner;

    invoke-direct {v2, p0, v0}, Lorg/apache/xpath/axes/PredicatedNodeTest$PredOwner;-><init>(Lorg/apache/xpath/axes/PredicatedNodeTest;I)V

    .line 556
    .local v2, predOwner:Lorg/apache/xpath/ExpressionOwner;
    iget-object v3, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lorg/apache/xpath/XPathVisitor;->visitPredicate(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/Expression;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 558
    iget-object v3, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 553
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 563
    .end local v0           #i:I
    .end local v1           #n:I
    .end local v2           #predOwner:Lorg/apache/xpath/ExpressionOwner;
    :cond_23
    return-void
.end method

.method public canTraverseOutsideSubtree()Z
    .registers 4

    .prologue
    .line 532
    invoke-virtual {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getPredicateCount()I

    move-result v1

    .line 533
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v1, :cond_16

    .line 535
    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getPredicate(I)Lorg/apache/xpath/Expression;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xpath/Expression;->canTraverseOutsideSubtree()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 536
    const/4 v2, 0x1

    .line 538
    :goto_12
    return v2

    .line 533
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 538
    :cond_16
    const/4 v2, 0x0

    goto :goto_12
.end method

.method public clone()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 90
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xpath/axes/PredicatedNodeTest;

    .line 92
    .local v1, clone:Lorg/apache/xpath/axes/PredicatedNodeTest;
    iget-object v2, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    if-eqz v2, :cond_22

    iget-object v2, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    iget-object v3, v1, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    if-ne v2, v3, :cond_22

    .line 95
    iget-object v2, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, v1, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    .line 97
    iget-object v2, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    iget-object v3, v1, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    iget-object v4, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    array-length v4, v4

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    :cond_22
    iget-object v2, v1, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    if-ne v2, p0, :cond_2c

    .line 103
    move-object v0, v1

    check-cast v0, Lorg/apache/xpath/axes/LocPathIterator;

    move-object v2, v0

    iput-object v2, v1, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    .line 105
    :cond_2c
    return-object v1
.end method

.method protected countProximityPosition(I)V
    .registers 4
    .parameter "i"

    .prologue
    .line 286
    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    .line 287
    .local v0, pp:[I
    if-eqz v0, :cond_d

    array-length v1, v0

    if-ge p1, v1, :cond_d

    .line 288
    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 289
    :cond_d
    return-void
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .registers 9
    .parameter "expr"

    .prologue
    const/4 v6, 0x0

    .line 570
    invoke-super {p0, p1}, Lorg/apache/xpath/patterns/NodeTest;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v4

    if-nez v4, :cond_9

    move v4, v6

    .line 589
    :goto_8
    return v4

    .line 573
    :cond_9
    move-object v0, p1

    check-cast v0, Lorg/apache/xpath/axes/PredicatedNodeTest;

    move-object v3, v0

    .line 574
    .local v3, pnt:Lorg/apache/xpath/axes/PredicatedNodeTest;
    iget-object v4, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    if-eqz v4, :cond_35

    .line 577
    iget-object v4, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    array-length v2, v4

    .line 578
    .local v2, n:I
    iget-object v4, v3, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    if-eqz v4, :cond_1d

    iget-object v4, v3, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    array-length v4, v4

    if-eq v4, v2, :cond_1f

    :cond_1d
    move v4, v6

    .line 579
    goto :goto_8

    .line 580
    :cond_1f
    const/4 v1, 0x0

    .local v1, i:I
    :goto_20
    if-ge v1, v2, :cond_3b

    .line 582
    iget-object v4, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v4, v4, v1

    iget-object v5, v3, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v4

    if-nez v4, :cond_32

    move v4, v6

    .line 583
    goto :goto_8

    .line 580
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 586
    .end local v1           #i:I
    .end local v2           #n:I
    :cond_35
    iget-object v4, v3, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    if-eqz v4, :cond_3b

    move v4, v6

    .line 587
    goto :goto_8

    .line 589
    :cond_3b
    const/4 v4, 0x1

    goto :goto_8
.end method

.method executePredicates(ILorg/apache/xpath/XPathContext;)Z
    .registers 14
    .parameter "context"
    .parameter "xctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 325
    invoke-virtual {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getPredicateCount()I

    move-result v1

    .line 327
    .local v1, nPredicates:I
    if-nez v1, :cond_b

    move v6, v9

    .line 404
    :goto_a
    return v6

    .line 330
    :cond_b
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v5

    .line 334
    .local v5, savedResolver:Lorg/apache/xml/utils/PrefixResolver;
    const/4 v6, 0x0

    :try_start_10
    iput v6, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    .line 335
    invoke-virtual {p2, p0}, Lorg/apache/xpath/XPathContext;->pushSubContextList(Lorg/apache/xpath/axes/SubContextList;)V

    .line 336
    iget-object v6, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    invoke-virtual {v6}, Lorg/apache/xpath/axes/LocPathIterator;->getPrefixResolver()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v6

    invoke-virtual {p2, v6}, Lorg/apache/xpath/XPathContext;->pushNamespaceContext(Lorg/apache/xml/utils/PrefixResolver;)V

    .line 337
    invoke-virtual {p2, p1}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 339
    const/4 v0, 0x0

    .local v0, i:I
    :goto_22
    if-ge v0, v1, :cond_7d

    .line 342
    iget-object v6, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v6, v6, v0

    invoke-virtual {v6, p2}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v2

    .line 345
    .local v2, pred:Lorg/apache/xpath/objects/XObject;
    const/4 v6, 0x2

    invoke-virtual {v2}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v7

    if-ne v6, v7, :cond_6a

    .line 357
    iget v6, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    invoke-virtual {p0, v6}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getProximityPosition(I)I

    move-result v4

    .line 358
    .local v4, proxPos:I
    invoke-virtual {v2}, Lorg/apache/xpath/objects/XObject;->num()D
    :try_end_3c
    .catchall {:try_start_10 .. :try_end_3c} :catchall_8a

    move-result-wide v6

    double-to-int v3, v6

    .line 359
    .local v3, predIndex:I
    if-eq v4, v3, :cond_4d

    .line 398
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 399
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    .line 400
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popSubContextList()V

    .line 401
    iput v8, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    move v6, v10

    goto :goto_a

    .line 385
    :cond_4d
    :try_start_4d
    iget-object v6, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lorg/apache/xpath/Expression;->isStableNumber()Z

    move-result v6

    if-eqz v6, :cond_5e

    sub-int v6, v1, v9

    if-ne v0, v6, :cond_5e

    .line 387
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_foundLast:Z

    .line 393
    .end local v3           #predIndex:I
    .end local v4           #proxPos:I
    :cond_5e
    iget v6, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    invoke-virtual {p0, v6}, Lorg/apache/xpath/axes/PredicatedNodeTest;->countProximityPosition(I)V

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 390
    :cond_6a
    invoke-virtual {v2}, Lorg/apache/xpath/objects/XObject;->bool()Z
    :try_end_6d
    .catchall {:try_start_4d .. :try_end_6d} :catchall_8a

    move-result v6

    if-nez v6, :cond_5e

    .line 398
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 399
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    .line 400
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popSubContextList()V

    .line 401
    iput v8, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    move v6, v10

    goto :goto_a

    .line 398
    .end local v2           #pred:Lorg/apache/xpath/objects/XObject;
    :cond_7d
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 399
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    .line 400
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popSubContextList()V

    .line 401
    iput v8, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    move v6, v9

    .line 404
    goto :goto_a

    .line 398
    .end local v0           #i:I
    :catchall_8a
    move-exception v6

    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 399
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popNamespaceContext()V

    .line 400
    invoke-virtual {p2}, Lorg/apache/xpath/XPathContext;->popSubContextList()V

    .line 401
    iput v8, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    throw v6
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .registers 6
    .parameter "vars"
    .parameter "globalsSize"

    .prologue
    .line 419
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/patterns/NodeTest;->fixupVariables(Ljava/util/Vector;I)V

    .line 421
    invoke-virtual {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getPredicateCount()I

    move-result v1

    .line 423
    .local v1, nPredicates:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    if-ge v0, v1, :cond_14

    .line 425
    iget-object v2, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    .line 423
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 427
    :cond_14
    return-void
.end method

.method public abstract getLastPos(Lorg/apache/xpath/XPathContext;)I
.end method

.method public getLocPathIterator()Lorg/apache/xpath/axes/LocPathIterator;
    .registers 2

    .prologue
    .line 508
    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    return-object v0
.end method

.method public getPredicate(I)Lorg/apache/xpath/Expression;
    .registers 3
    .parameter "index"

    .prologue
    .line 188
    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPredicateCount()I
    .registers 3

    .prologue
    .line 118
    const/4 v0, -0x1

    iget v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predCount:I

    if-ne v0, v1, :cond_f

    .line 119
    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    .line 121
    :goto_a
    return v0

    .line 119
    :cond_b
    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    array-length v0, v0

    goto :goto_a

    .line 121
    :cond_f
    iget v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predCount:I

    goto :goto_a
.end method

.method public getPredicateIndex()I
    .registers 2

    .prologue
    .line 308
    iget v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    return v0
.end method

.method public getProximityPosition()I
    .registers 2

    .prologue
    .line 200
    iget v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicateIndex:I

    invoke-virtual {p0, v0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getProximityPosition(I)I

    move-result v0

    return v0
.end method

.method protected getProximityPosition(I)I
    .registers 3
    .parameter "predicateIndex"

    .prologue
    .line 235
    if-ltz p1, :cond_7

    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    aget v0, v0, p1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getProximityPosition(Lorg/apache/xpath/XPathContext;)I
    .registers 3
    .parameter "xctxt"

    .prologue
    .line 212
    invoke-virtual {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getProximityPosition()I

    move-result v0

    return v0
.end method

.method protected initPredicateInfo(Lorg/apache/xpath/compiler/Compiler;I)V
    .registers 6
    .parameter "compiler"
    .parameter "opPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-virtual {p1, p2}, Lorg/apache/xpath/compiler/Compiler;->getFirstPredicateOpPos(I)I

    move-result v1

    .line 165
    .local v1, pos:I
    if-lez v1, :cond_20

    .line 167
    invoke-virtual {p1, v1}, Lorg/apache/xpath/compiler/Compiler;->getCompiledPredicates(I)[Lorg/apache/xpath/Expression;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    .line 168
    iget-object v2, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    if-eqz v2, :cond_20

    .line 170
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    iget-object v2, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    array-length v2, v2

    if-ge v0, v2, :cond_20

    .line 172
    iget-object v2, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 176
    .end local v0           #i:I
    :cond_20
    return-void
.end method

.method public initProximityPosition(I)V
    .registers 4
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 274
    return-void
.end method

.method public isReverseAxes()Z
    .registers 2

    .prologue
    .line 298
    const/4 v0, 0x0

    return v0
.end method

.method protected nodeToString(I)Ljava/lang/String;
    .registers 5
    .parameter "n"

    .prologue
    .line 439
    const/4 v1, -0x1

    if-eq v1, p1, :cond_31

    .line 441
    iget-object v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    invoke-virtual {v1}, Lorg/apache/xpath/axes/LocPathIterator;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    .line 442
    .local v0, dtm:Lorg/apache/xml/dtm/DTM;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, p1}, Lorg/apache/xml/dtm/DTM;->getNodeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 446
    .end local v0           #dtm:Lorg/apache/xml/dtm/DTM;
    :goto_30
    return-object v1

    :cond_31
    const-string v1, "null"

    goto :goto_30
.end method

.method public resetProximityPositions()V
    .registers 5

    .prologue
    .line 243
    invoke-virtual {p0}, Lorg/apache/xpath/axes/PredicatedNodeTest;->getPredicateCount()I

    move-result v2

    .line 244
    .local v2, nPredicates:I
    if-lez v2, :cond_1e

    .line 246
    iget-object v3, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    if-nez v3, :cond_e

    .line 247
    new-array v3, v2, [I

    iput-object v3, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_proximityPositions:[I

    .line 249
    :cond_e
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    if-ge v1, v2, :cond_1e

    .line 253
    :try_start_11
    invoke-virtual {p0, v1}, Lorg/apache/xpath/axes/PredicatedNodeTest;->initProximityPosition(I)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_17

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 255
    :catch_17
    move-exception v0

    .line 258
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v3, v0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 262
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i:I
    :cond_1e
    return-void
.end method

.method public setLocPathIterator(Lorg/apache/xpath/axes/LocPathIterator;)V
    .registers 2
    .parameter "li"

    .prologue
    .line 519
    iput-object p1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_lpi:Lorg/apache/xpath/axes/LocPathIterator;

    .line 520
    if-eq p0, p1, :cond_7

    .line 521
    invoke-virtual {p1, p0}, Lorg/apache/xpath/axes/LocPathIterator;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 522
    :cond_7
    return-void
.end method

.method public setPredicateCount(I)V
    .registers 5
    .parameter "count"

    .prologue
    .line 136
    if-lez p1, :cond_13

    .line 138
    new-array v1, p1, [Lorg/apache/xpath/Expression;

    .line 139
    .local v1, newPredicates:[Lorg/apache/xpath/Expression;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, p1, :cond_10

    .line 141
    iget-object v2, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 143
    :cond_10
    iput-object v1, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    .line 148
    .end local v0           #i:I
    .end local v1           #newPredicates:[Lorg/apache/xpath/Expression;
    :goto_12
    return-void

    .line 146
    :cond_13
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/xpath/axes/PredicatedNodeTest;->m_predicates:[Lorg/apache/xpath/Expression;

    goto :goto_12
.end method
