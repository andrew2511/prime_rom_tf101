.class public Lorg/apache/xpath/axes/UnionPathIterator;
.super Lorg/apache/xpath/axes/LocPathIterator;
.source "UnionPathIterator.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/xml/dtm/DTMIterator;
.implements Ljava/io/Serializable;
.implements Lorg/apache/xpath/axes/PathComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;
    }
.end annotation


# static fields
.field static final serialVersionUID:J = -0x36445c0390868a5dL


# instance fields
.field protected m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

.field protected m_iterators:[Lorg/apache/xml/dtm/DTMIterator;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Lorg/apache/xpath/axes/LocPathIterator;-><init>()V

    .line 56
    iput-object v0, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    .line 57
    iput-object v0, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/apache/xpath/compiler/Compiler;I)V
    .registers 4
    .parameter "compiler"
    .parameter "opPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-direct {p0}, Lorg/apache/xpath/axes/LocPathIterator;-><init>()V

    .line 162
    invoke-static {p2}, Lorg/apache/xpath/compiler/OpMap;->getFirstChildPos(I)I

    move-result p2

    .line 164
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xpath/axes/UnionPathIterator;->loadLocationPaths(Lorg/apache/xpath/compiler/Compiler;II)V

    .line 165
    return-void
.end method

.method public static createUnionIterator(Lorg/apache/xpath/compiler/Compiler;I)Lorg/apache/xpath/axes/LocPathIterator;
    .registers 10
    .parameter "compiler"
    .parameter "opPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 186
    new-instance v5, Lorg/apache/xpath/axes/UnionPathIterator;

    invoke-direct {v5, p0, p1}, Lorg/apache/xpath/axes/UnionPathIterator;-><init>(Lorg/apache/xpath/compiler/Compiler;I)V

    .line 187
    .local v5, upi:Lorg/apache/xpath/axes/UnionPathIterator;
    iget-object v6, v5, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    array-length v3, v6

    .line 188
    .local v3, nPaths:I
    const/4 v1, 0x1

    .line 189
    .local v1, isAllChildIterators:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    if-ge v0, v3, :cond_18

    .line 191
    iget-object v6, v5, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    aget-object v2, v6, v0

    .line 193
    .local v2, lpi:Lorg/apache/xpath/axes/LocPathIterator;
    invoke-virtual {v2}, Lorg/apache/xpath/axes/LocPathIterator;->getAxis()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2c

    .line 195
    const/4 v1, 0x0

    .line 208
    .end local v2           #lpi:Lorg/apache/xpath/axes/LocPathIterator;
    :cond_18
    :goto_18
    if-eqz v1, :cond_39

    .line 210
    new-instance v4, Lorg/apache/xpath/axes/UnionChildIterator;

    invoke-direct {v4}, Lorg/apache/xpath/axes/UnionChildIterator;-><init>()V

    .line 212
    .local v4, uci:Lorg/apache/xpath/axes/UnionChildIterator;
    const/4 v0, 0x0

    :goto_20
    if-ge v0, v3, :cond_37

    .line 214
    iget-object v6, v5, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    aget-object v2, v6, v0

    .line 218
    .local v2, lpi:Lorg/apache/xpath/axes/PredicatedNodeTest;
    invoke-virtual {v4, v2}, Lorg/apache/xpath/axes/UnionChildIterator;->addNodeTest(Lorg/apache/xpath/axes/PredicatedNodeTest;)V

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 201
    .end local v4           #uci:Lorg/apache/xpath/axes/UnionChildIterator;
    .local v2, lpi:Lorg/apache/xpath/axes/LocPathIterator;
    :cond_2c
    invoke-static {v2}, Lorg/apache/xpath/axes/HasPositionalPredChecker;->check(Lorg/apache/xpath/axes/LocPathIterator;)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 203
    const/4 v1, 0x0

    .line 204
    goto :goto_18

    .line 189
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .end local v2           #lpi:Lorg/apache/xpath/axes/LocPathIterator;
    .restart local v4       #uci:Lorg/apache/xpath/axes/UnionChildIterator;
    :cond_37
    move-object v6, v4

    .line 224
    .end local v4           #uci:Lorg/apache/xpath/axes/UnionChildIterator;
    :goto_38
    return-object v6

    :cond_39
    move-object v6, v5

    goto :goto_38
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
    .line 262
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 263
    new-instance v1, Lorg/apache/xpath/axes/IteratorPool;

    invoke-direct {v1, p0}, Lorg/apache/xpath/axes/IteratorPool;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    iput-object v1, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_clones:Lorg/apache/xpath/axes/IteratorPool;
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_a} :catch_b

    .line 269
    return-void

    .line 265
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 267
    .local v0, cnfe:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public addIterator(Lorg/apache/xml/dtm/DTMIterator;)V
    .registers 6
    .parameter "expr"

    .prologue
    const/4 v3, 0x0

    .line 103
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    if-nez v2, :cond_1b

    .line 105
    const/4 v2, 0x1

    new-array v2, v2, [Lorg/apache/xml/dtm/DTMIterator;

    iput-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    .line 106
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    aput-object p1, v2, v3

    .line 119
    :goto_e
    invoke-interface {p1}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    .line 120
    instance-of v2, p1, Lorg/apache/xpath/Expression;

    if-eqz v2, :cond_1a

    .line 121
    check-cast p1, Lorg/apache/xpath/Expression;

    .end local p1
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 122
    :cond_1a
    return-void

    .line 110
    .restart local p1
    :cond_1b
    iget-object v0, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    .line 111
    .local v0, exprs:[Lorg/apache/xml/dtm/DTMIterator;
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    array-length v1, v2

    .line 113
    .local v1, len:I
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Lorg/apache/xml/dtm/DTMIterator;

    iput-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    .line 115
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    aput-object p1, v2, v1

    goto :goto_e
.end method

.method public callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .registers 7
    .parameter "owner"
    .parameter "visitor"

    .prologue
    .line 539
    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitUnionPath(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/axes/UnionPathIterator;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 541
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    if-eqz v2, :cond_1f

    .line 543
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    array-length v1, v2

    .line 544
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    if-ge v0, v1, :cond_1f

    .line 546
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    aget-object v2, v2, v0

    new-instance v3, Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;

    invoke-direct {v3, p0, v0}, Lorg/apache/xpath/axes/UnionPathIterator$iterOwner;-><init>(Lorg/apache/xpath/axes/UnionPathIterator;I)V

    invoke-virtual {v2, v3, p2}, Lorg/apache/xpath/axes/LocPathIterator;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 544
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 550
    .end local v0           #i:I
    .end local v1           #n:I
    :cond_1f
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 282
    invoke-super {p0}, Lorg/apache/xpath/axes/LocPathIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/UnionPathIterator;

    .line 283
    .local v0, clone:Lorg/apache/xpath/axes/UnionPathIterator;
    iget-object v3, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v3, :cond_25

    .line 285
    iget-object v3, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    array-length v2, v3

    .line 287
    .local v2, n:I
    new-array v3, v2, [Lorg/apache/xml/dtm/DTMIterator;

    iput-object v3, v0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    .line 289
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    if-ge v1, v2, :cond_25

    .line 291
    iget-object v4, v0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    iget-object v3, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    aget-object v3, v3, v1

    invoke-interface {v3}, Lorg/apache/xml/dtm/DTMIterator;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xml/dtm/DTMIterator;

    aput-object v3, v4, v1

    .line 289
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 295
    .end local v1           #i:I
    .end local v2           #n:I
    :cond_25
    return-object v0
.end method

.method protected createDTMIterator(Lorg/apache/xpath/compiler/Compiler;I)Lorg/apache/xpath/axes/LocPathIterator;
    .registers 5
    .parameter "compiler"
    .parameter "opPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 313
    invoke-virtual {p1}, Lorg/apache/xpath/compiler/Compiler;->getLocationPathDepth()I

    move-result v1

    if-gtz v1, :cond_e

    const/4 v1, 0x1

    :goto_7
    invoke-static {p1, p2, v1}, Lorg/apache/xpath/axes/WalkerFactory;->newDTMIterator(Lorg/apache/xpath/compiler/Compiler;IZ)Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/axes/LocPathIterator;

    .line 315
    .local v0, lpi:Lorg/apache/xpath/axes/LocPathIterator;
    return-object v0

    .line 313
    .end local v0           #lpi:Lorg/apache/xpath/axes/LocPathIterator;
    :cond_e
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .registers 9
    .parameter "expr"

    .prologue
    const/4 v6, 0x0

    .line 557
    invoke-super {p0, p1}, Lorg/apache/xpath/axes/LocPathIterator;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v4

    if-nez v4, :cond_9

    move v4, v6

    .line 580
    :goto_8
    return v4

    .line 560
    :cond_9
    move-object v0, p1

    check-cast v0, Lorg/apache/xpath/axes/UnionPathIterator;

    move-object v3, v0

    .line 562
    .local v3, upi:Lorg/apache/xpath/axes/UnionPathIterator;
    iget-object v4, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    if-eqz v4, :cond_35

    .line 564
    iget-object v4, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    array-length v2, v4

    .line 566
    .local v2, n:I
    iget-object v4, v3, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    if-eqz v4, :cond_1d

    iget-object v4, v3, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    array-length v4, v4

    if-eq v4, v2, :cond_1f

    :cond_1d
    move v4, v6

    .line 567
    goto :goto_8

    .line 569
    :cond_1f
    const/4 v1, 0x0

    .local v1, i:I
    :goto_20
    if-ge v1, v2, :cond_3b

    .line 571
    iget-object v4, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    aget-object v4, v4, v1

    iget-object v5, v3, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xpath/axes/LocPathIterator;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v4

    if-nez v4, :cond_32

    move v4, v6

    .line 572
    goto :goto_8

    .line 569
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 575
    .end local v1           #i:I
    .end local v2           #n:I
    :cond_35
    iget-object v4, v3, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    if-eqz v4, :cond_3b

    move v4, v6

    .line 577
    goto :goto_8

    .line 580
    :cond_3b
    const/4 v4, 0x1

    goto :goto_8
.end method

.method public detach()V
    .registers 4

    .prologue
    .line 133
    iget-boolean v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_allowDetach:Z

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v2, :cond_1b

    .line 134
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    array-length v1, v2

    .line 135
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    if-ge v0, v1, :cond_18

    .line 137
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lorg/apache/xml/dtm/DTMIterator;->detach()V

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 139
    :cond_18
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    .line 141
    .end local v0           #i:I
    .end local v1           #n:I
    :cond_1b
    return-void
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .registers 5
    .parameter "vars"
    .parameter "globalsSize"

    .prologue
    .line 455
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    array-length v1, v1

    if-ge v0, v1, :cond_10

    .line 457
    iget-object v1, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lorg/apache/xpath/axes/LocPathIterator;->fixupVariables(Ljava/util/Vector;I)V

    .line 455
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 460
    :cond_10
    return-void
.end method

.method public getAnalysisBits()I
    .registers 6

    .prologue
    .line 233
    const/4 v1, 0x0

    .line 235
    .local v1, bits:I
    iget-object v4, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    if-eqz v4, :cond_17

    .line 237
    iget-object v4, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    array-length v3, v4

    .line 239
    .local v3, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_9
    if-ge v2, v3, :cond_17

    .line 241
    iget-object v4, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lorg/apache/xpath/axes/LocPathIterator;->getAnalysisBits()I

    move-result v0

    .line 242
    .local v0, bit:I
    or-int/2addr v1, v0

    .line 239
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 246
    .end local v0           #bit:I
    .end local v2           #i:I
    .end local v3           #n:I
    :cond_17
    return v1
.end method

.method public getAxis()I
    .registers 2

    .prologue
    .line 488
    const/4 v0, -0x1

    return v0
.end method

.method protected loadLocationPaths(Lorg/apache/xpath/compiler/Compiler;II)V
    .registers 8
    .parameter "compiler"
    .parameter "opPos"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 334
    invoke-virtual {p1, p2}, Lorg/apache/xpath/compiler/Compiler;->getOp(I)I

    move-result v1

    .line 336
    .local v1, steptype:I
    const/16 v2, 0x1c

    if-ne v1, v2, :cond_21

    .line 338
    invoke-virtual {p1, p2}, Lorg/apache/xpath/compiler/Compiler;->getNextOpPos(I)I

    move-result v2

    add-int/lit8 v3, p3, 0x1

    invoke-virtual {p0, p1, v2, v3}, Lorg/apache/xpath/axes/UnionPathIterator;->loadLocationPaths(Lorg/apache/xpath/compiler/Compiler;II)V

    .line 340
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    invoke-virtual {p0, p1, p2}, Lorg/apache/xpath/axes/UnionPathIterator;->createDTMIterator(Lorg/apache/xpath/compiler/Compiler;I)Lorg/apache/xpath/axes/LocPathIterator;

    move-result-object v3

    aput-object v3, v2, p3

    .line 341
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    aget-object v2, v2, p3

    invoke-virtual {v2, p0}, Lorg/apache/xpath/axes/LocPathIterator;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 373
    :goto_20
    return-void

    .line 348
    :cond_21
    packed-switch v1, :pswitch_data_5a

    .line 370
    new-array v2, p3, [Lorg/apache/xpath/axes/LocPathIterator;

    iput-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    goto :goto_20

    .line 354
    :pswitch_29
    invoke-virtual {p1, p2}, Lorg/apache/xpath/compiler/Compiler;->getNextOpPos(I)I

    move-result v2

    add-int/lit8 v3, p3, 0x1

    invoke-virtual {p0, p1, v2, v3}, Lorg/apache/xpath/axes/UnionPathIterator;->loadLocationPaths(Lorg/apache/xpath/compiler/Compiler;II)V

    .line 356
    new-instance v0, Lorg/apache/xpath/axes/WalkingIterator;

    invoke-virtual {p1}, Lorg/apache/xpath/compiler/Compiler;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/xpath/axes/WalkingIterator;-><init>(Lorg/apache/xml/utils/PrefixResolver;)V

    .line 358
    .local v0, iter:Lorg/apache/xpath/axes/WalkingIterator;
    invoke-virtual {v0, p0}, Lorg/apache/xpath/axes/WalkingIterator;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 360
    invoke-virtual {p1}, Lorg/apache/xpath/compiler/Compiler;->getLocationPathDepth()I

    move-result v2

    if-gtz v2, :cond_48

    .line 361
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/apache/xpath/axes/WalkingIterator;->setIsTopLevel(Z)V

    .line 363
    :cond_48
    new-instance v2, Lorg/apache/xpath/axes/FilterExprWalker;

    invoke-direct {v2, v0}, Lorg/apache/xpath/axes/FilterExprWalker;-><init>(Lorg/apache/xpath/axes/WalkingIterator;)V

    iput-object v2, v0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    .line 365
    iget-object v2, v0, Lorg/apache/xpath/axes/WalkingIterator;->m_firstWalker:Lorg/apache/xpath/axes/AxesWalker;

    invoke-virtual {v2, p1, p2, v1}, Lorg/apache/xpath/axes/AxesWalker;->init(Lorg/apache/xpath/compiler/Compiler;II)V

    .line 367
    iget-object v2, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    aput-object v0, v2, p3

    goto :goto_20

    .line 348
    nop

    :pswitch_data_5a
    .packed-switch 0x16
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
    .end packed-switch
.end method

.method public nextNode()I
    .registers 9

    .prologue
    const/4 v7, -0x1

    .line 384
    iget-boolean v6, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_foundLast:Z

    if-eqz v6, :cond_7

    move v6, v7

    .line 440
    :goto_6
    return v6

    .line 389
    :cond_7
    const/4 v1, -0x1

    .line 391
    .local v1, earliestNode:I
    iget-object v6, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v6, :cond_48

    .line 393
    iget-object v6, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    array-length v4, v6

    .line 394
    .local v4, n:I
    const/4 v3, -0x1

    .line 396
    .local v3, iteratorUsed:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_11
    if-ge v2, v4, :cond_3c

    .line 398
    iget-object v6, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    aget-object v6, v6, v2

    invoke-interface {v6}, Lorg/apache/xml/dtm/DTMIterator;->getCurrentNode()I

    move-result v5

    .line 400
    .local v5, node:I
    if-ne v7, v5, :cond_20

    .line 396
    :cond_1d
    :goto_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 402
    :cond_20
    if-ne v7, v1, :cond_25

    .line 404
    move v3, v2

    .line 405
    move v1, v5

    goto :goto_1d

    .line 409
    :cond_25
    if-ne v5, v1, :cond_2f

    .line 413
    iget-object v6, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    aget-object v6, v6, v2

    invoke-interface {v6}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    goto :goto_1d

    .line 417
    :cond_2f
    invoke-virtual {p0, v5}, Lorg/apache/xpath/axes/UnionPathIterator;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    .line 419
    .local v0, dtm:Lorg/apache/xml/dtm/DTM;
    invoke-interface {v0, v5, v1}, Lorg/apache/xml/dtm/DTM;->isNodeAfter(II)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 421
    move v3, v2

    .line 422
    move v1, v5

    goto :goto_1d

    .line 428
    .end local v0           #dtm:Lorg/apache/xml/dtm/DTM;
    .end local v5           #node:I
    :cond_3c
    if-eq v7, v1, :cond_4c

    .line 430
    iget-object v6, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;

    aget-object v6, v6, v3

    invoke-interface {v6}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    .line 432
    invoke-virtual {p0}, Lorg/apache/xpath/axes/UnionPathIterator;->incrementCurrentPos()V

    .line 438
    .end local v2           #i:I
    .end local v3           #iteratorUsed:I
    .end local v4           #n:I
    :cond_48
    :goto_48
    iput v1, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_lastFetched:I

    move v6, v1

    .line 440
    goto :goto_6

    .line 435
    .restart local v2       #i:I
    .restart local v3       #iteratorUsed:I
    .restart local v4       #n:I
    :cond_4c
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_foundLast:Z

    goto :goto_48
.end method

.method public setRoot(ILjava/lang/Object;)V
    .registers 10
    .parameter "context"
    .parameter "environment"

    .prologue
    .line 69
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/axes/LocPathIterator;->setRoot(ILjava/lang/Object;)V

    .line 73
    :try_start_3
    iget-object v5, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    if-eqz v5, :cond_23

    .line 75
    iget-object v5, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    array-length v3, v5

    .line 76
    .local v3, n:I
    new-array v4, v3, [Lorg/apache/xml/dtm/DTMIterator;

    .line 78
    .local v4, newIters:[Lorg/apache/xml/dtm/DTMIterator;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    if-ge v1, v3, :cond_21

    .line 80
    iget-object v5, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_exprs:[Lorg/apache/xpath/axes/LocPathIterator;

    aget-object v5, v5, v1

    iget-object v6, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_execContext:Lorg/apache/xpath/XPathContext;

    invoke-virtual {v5, v6, p1}, Lorg/apache/xpath/axes/LocPathIterator;->asIterator(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v2

    .line 81
    .local v2, iter:Lorg/apache/xml/dtm/DTMIterator;
    aput-object v2, v4, v1

    .line 82
    invoke-interface {v2}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 84
    .end local v2           #iter:Lorg/apache/xml/dtm/DTMIterator;
    :cond_21
    iput-object v4, p0, Lorg/apache/xpath/axes/UnionPathIterator;->m_iterators:[Lorg/apache/xml/dtm/DTMIterator;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_23} :catch_24

    .line 91
    .end local v1           #i:I
    .end local v3           #n:I
    .end local v4           #newIters:[Lorg/apache/xml/dtm/DTMIterator;
    :cond_23
    return-void

    .line 87
    :catch_24
    move-exception v5

    move-object v0, v5

    .line 89
    .local v0, e:Ljava/lang/Exception;
    new-instance v5, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v5, v0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v5
.end method
