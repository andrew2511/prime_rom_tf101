.class public final Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;
.super Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;
.source "DTMDefaultBaseIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TypedPrecedingIterator"
.end annotation


# instance fields
.field private final _nodeType:I

.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;


# direct methods
.method public constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;I)V
    .registers 3
    .parameter
    .parameter "type"

    .prologue
    .line 1416
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$PrecedingIterator;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;)V

    .line 1417
    iput p2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->_nodeType:I

    .line 1418
    return-void
.end method


# virtual methods
.method public next()I
    .registers 9

    .prologue
    const/16 v7, 0xe

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 1427
    iget v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->_currentNode:I

    .line 1428
    .local v1, node:I
    iget v2, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->_nodeType:I

    .line 1430
    .local v2, nodeType:I
    if-lt v2, v7, :cond_31

    .line 1432
    :cond_a
    add-int/lit8 v1, v1, 0x1

    .line 1434
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->_sp:I

    if-gez v3, :cond_17

    .line 1435
    const/4 v1, -0x1

    .line 1475
    :goto_11
    iput v1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->_currentNode:I

    .line 1477
    if-ne v1, v5, :cond_60

    move v3, v5

    :goto_16
    return v3

    .line 1437
    :cond_17
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->_stack:[I

    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->_sp:I

    aget v3, v3, v4

    if-lt v1, v3, :cond_28

    .line 1438
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->_sp:I

    sub-int/2addr v3, v6

    iput v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->_sp:I

    if-gez v3, :cond_a

    .line 1439
    const/4 v1, -0x1

    .line 1440
    goto :goto_11

    .line 1442
    :cond_28
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_exptype(I)I

    move-result v3

    if-ne v3, v2, :cond_a

    goto :goto_11

    .line 1450
    :cond_31
    add-int/lit8 v1, v1, 0x1

    .line 1452
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->_sp:I

    if-gez v3, :cond_39

    .line 1453
    const/4 v1, -0x1

    .line 1454
    goto :goto_11

    .line 1455
    :cond_39
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->_stack:[I

    iget v4, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->_sp:I

    aget v3, v3, v4

    if-lt v1, v3, :cond_4a

    .line 1456
    iget v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->_sp:I

    sub-int/2addr v3, v6

    iput v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->_sp:I

    if-gez v3, :cond_31

    .line 1457
    const/4 v1, -0x1

    .line 1458
    goto :goto_11

    .line 1461
    :cond_4a
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->_exptype(I)I

    move-result v0

    .line 1462
    .local v0, expType:I
    if-ge v0, v7, :cond_55

    .line 1463
    if-ne v0, v2, :cond_31

    goto :goto_11

    .line 1467
    :cond_55
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    iget-object v3, v3, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->m_expandedNameTable:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getType(I)S

    move-result v3

    if-ne v3, v2, :cond_31

    goto :goto_11

    .line 1477
    .end local v0           #expType:I
    :cond_60
    iget-object v3, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;

    invoke-virtual {v3, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators;->makeNodeHandle(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseIterators$TypedPrecedingIterator;->returnNode(I)I

    move-result v3

    goto :goto_16
.end method
