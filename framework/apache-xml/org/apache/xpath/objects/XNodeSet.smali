.class public Lorg/apache/xpath/objects/XNodeSet;
.super Lorg/apache/xpath/axes/NodeSequence;
.source "XNodeSet.java"


# static fields
.field static final S_EQ:Lorg/apache/xpath/objects/EqualComparator; = null

.field static final S_GT:Lorg/apache/xpath/objects/GreaterThanComparator; = null

.field static final S_GTE:Lorg/apache/xpath/objects/GreaterThanOrEqualComparator; = null

.field static final S_LT:Lorg/apache/xpath/objects/LessThanComparator; = null

.field static final S_LTE:Lorg/apache/xpath/objects/LessThanOrEqualComparator; = null

.field static final S_NEQ:Lorg/apache/xpath/objects/NotEqualComparator; = null

.field static final serialVersionUID:J = 0x1a9717d4870bd173L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 444
    new-instance v0, Lorg/apache/xpath/objects/LessThanComparator;

    invoke-direct {v0}, Lorg/apache/xpath/objects/LessThanComparator;-><init>()V

    sput-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_LT:Lorg/apache/xpath/objects/LessThanComparator;

    .line 447
    new-instance v0, Lorg/apache/xpath/objects/LessThanOrEqualComparator;

    invoke-direct {v0}, Lorg/apache/xpath/objects/LessThanOrEqualComparator;-><init>()V

    sput-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_LTE:Lorg/apache/xpath/objects/LessThanOrEqualComparator;

    .line 450
    new-instance v0, Lorg/apache/xpath/objects/GreaterThanComparator;

    invoke-direct {v0}, Lorg/apache/xpath/objects/GreaterThanComparator;-><init>()V

    sput-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_GT:Lorg/apache/xpath/objects/GreaterThanComparator;

    .line 453
    new-instance v0, Lorg/apache/xpath/objects/GreaterThanOrEqualComparator;

    invoke-direct {v0}, Lorg/apache/xpath/objects/GreaterThanOrEqualComparator;-><init>()V

    sput-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_GTE:Lorg/apache/xpath/objects/GreaterThanOrEqualComparator;

    .line 457
    new-instance v0, Lorg/apache/xpath/objects/EqualComparator;

    invoke-direct {v0}, Lorg/apache/xpath/objects/EqualComparator;-><init>()V

    sput-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_EQ:Lorg/apache/xpath/objects/EqualComparator;

    .line 460
    new-instance v0, Lorg/apache/xpath/objects/NotEqualComparator;

    invoke-direct {v0}, Lorg/apache/xpath/objects/NotEqualComparator;-><init>()V

    sput-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_NEQ:Lorg/apache/xpath/objects/NotEqualComparator;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/apache/xpath/axes/NodeSequence;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(ILorg/apache/xml/dtm/DTMManager;)V
    .registers 4
    .parameter "n"
    .parameter "dtmMgr"

    .prologue
    .line 108
    new-instance v0, Lorg/apache/xpath/NodeSetDTM;

    invoke-direct {v0, p2}, Lorg/apache/xpath/NodeSetDTM;-><init>(Lorg/apache/xml/dtm/DTMManager;)V

    invoke-direct {p0, v0}, Lorg/apache/xpath/axes/NodeSequence;-><init>(Ljava/lang/Object;)V

    .line 109
    iput-object p2, p0, Lorg/apache/xpath/objects/XNodeSet;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    .line 111
    const/4 v0, -0x1

    if-eq v0, p1, :cond_18

    .line 113
    iget-object v0, p0, Lorg/apache/xpath/objects/XNodeSet;->m_obj:Ljava/lang/Object;

    check-cast v0, Lorg/apache/xpath/NodeSetDTM;

    invoke-virtual {v0, p1}, Lorg/apache/xpath/NodeSetDTM;->addNode(I)V

    .line 114
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/xpath/objects/XNodeSet;->m_last:I

    .line 118
    :goto_17
    return-void

    .line 117
    :cond_18
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xpath/objects/XNodeSet;->m_last:I

    goto :goto_17
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/DTMIterator;)V
    .registers 5
    .parameter "val"

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/apache/xpath/axes/NodeSequence;-><init>()V

    .line 56
    instance-of v2, p1, Lorg/apache/xpath/objects/XNodeSet;

    if-eqz v2, :cond_2a

    .line 58
    move-object v0, p1

    check-cast v0, Lorg/apache/xpath/objects/XNodeSet;

    move-object v1, v0

    .line 59
    .local v1, nodeSet:Lorg/apache/xpath/objects/XNodeSet;
    iget-object v2, v1, Lorg/apache/xpath/objects/XNodeSet;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-virtual {p0, v2}, Lorg/apache/xpath/objects/XNodeSet;->setIter(Lorg/apache/xml/dtm/DTMIterator;)V

    .line 60
    iget-object v2, v1, Lorg/apache/xpath/objects/XNodeSet;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    iput-object v2, p0, Lorg/apache/xpath/objects/XNodeSet;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    .line 61
    iget v2, v1, Lorg/apache/xpath/objects/XNodeSet;->m_last:I

    iput v2, p0, Lorg/apache/xpath/objects/XNodeSet;->m_last:I

    .line 64
    invoke-virtual {v1}, Lorg/apache/xpath/objects/XNodeSet;->hasCache()Z

    move-result v2

    if-nez v2, :cond_22

    .line 65
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/xpath/objects/XNodeSet;->setShouldCacheNodes(Z)V

    .line 68
    :cond_22
    invoke-virtual {v1}, Lorg/apache/xpath/objects/XNodeSet;->getIteratorCache()Lorg/apache/xpath/axes/NodeSequence$IteratorCache;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/xpath/objects/XNodeSet;->setObject(Ljava/lang/Object;)V

    .line 72
    .end local v1           #nodeSet:Lorg/apache/xpath/objects/XNodeSet;
    :goto_29
    return-void

    .line 71
    :cond_2a
    invoke-virtual {p0, p1}, Lorg/apache/xpath/objects/XNodeSet;->setIter(Lorg/apache/xml/dtm/DTMIterator;)V

    goto :goto_29
.end method

.method public constructor <init>(Lorg/apache/xml/dtm/DTMManager;)V
    .registers 3
    .parameter "dtmMgr"

    .prologue
    .line 97
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lorg/apache/xpath/objects/XNodeSet;-><init>(ILorg/apache/xml/dtm/DTMManager;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Lorg/apache/xpath/objects/XNodeSet;)V
    .registers 3
    .parameter "val"

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/apache/xpath/axes/NodeSequence;-><init>()V

    .line 82
    iget-object v0, p1, Lorg/apache/xpath/objects/XNodeSet;->m_iter:Lorg/apache/xml/dtm/DTMIterator;

    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XNodeSet;->setIter(Lorg/apache/xml/dtm/DTMIterator;)V

    .line 83
    iget-object v0, p1, Lorg/apache/xpath/objects/XNodeSet;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    iput-object v0, p0, Lorg/apache/xpath/objects/XNodeSet;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    .line 84
    iget v0, p1, Lorg/apache/xpath/objects/XNodeSet;->m_last:I

    iput v0, p0, Lorg/apache/xpath/objects/XNodeSet;->m_last:I

    .line 85
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XNodeSet;->hasCache()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 86
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/xpath/objects/XNodeSet;->setShouldCacheNodes(Z)V

    .line 87
    :cond_1a
    iget-object v0, p1, Lorg/apache/xpath/objects/XNodeSet;->m_obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XNodeSet;->setObject(Ljava/lang/Object;)V

    .line 88
    return-void
.end method


# virtual methods
.method public appendToFsb(Lorg/apache/xml/utils/FastStringBuffer;)V
    .registers 3
    .parameter "fsb"

    .prologue
    .line 266
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNodeSet;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/objects/XString;

    .line 267
    .local v0, xstring:Lorg/apache/xpath/objects/XString;
    invoke-virtual {v0, p1}, Lorg/apache/xpath/objects/XString;->appendToFsb(Lorg/apache/xml/utils/FastStringBuffer;)V

    .line 268
    return-void
.end method

.method public bool()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 189
    invoke-virtual {p0, v2}, Lorg/apache/xpath/objects/XNodeSet;->item(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    move v0, v2

    goto :goto_9
.end method

.method public boolWithSideEffects()Z
    .registers 3

    .prologue
    .line 200
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNodeSet;->nextNode()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public compare(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/Comparator;)Z
    .registers 28
    .parameter "obj2"
    .parameter "comparator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 476
    const/16 v17, 0x0

    .line 477
    .local v17, result:Z
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v20

    .line 479
    .local v20, type:I
    const/16 v21, 0x4

    move/from16 v0, v21

    move/from16 v1, v20

    if-ne v0, v1, :cond_82

    .line 494
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xpath/objects/XNodeSet;->iterRaw()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v6

    .line 495
    .local v6, list1:Lorg/apache/xml/dtm/DTMIterator;
    check-cast p1, Lorg/apache/xpath/objects/XNodeSet;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/objects/XNodeSet;->iterRaw()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v7

    .line 497
    .local v7, list2:Lorg/apache/xml/dtm/DTMIterator;
    const/4 v12, 0x0

    .line 499
    .local v12, node2Strings:Ljava/util/Vector;
    :cond_19
    :goto_19
    const/16 v21, -0x1

    invoke-interface {v6}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v10

    .local v10, node1:I
    move/from16 v0, v21

    move v1, v10

    if-eq v0, v1, :cond_7b

    .line 501
    move-object/from16 v0, p0

    move v1, v10

    invoke-virtual {v0, v1}, Lorg/apache/xpath/objects/XNodeSet;->getStringFromNode(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v18

    .line 503
    .local v18, s1:Lorg/apache/xml/utils/XMLString;
    if-nez v12, :cond_5c

    .line 507
    :goto_2d
    const/16 v21, -0x1

    invoke-interface {v7}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v11

    .local v11, node2:I
    move/from16 v0, v21

    move v1, v11

    if-eq v0, v1, :cond_19

    .line 509
    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Lorg/apache/xpath/objects/XNodeSet;->getStringFromNode(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v19

    .line 511
    .local v19, s2:Lorg/apache/xml/utils/XMLString;
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/apache/xpath/objects/Comparator;->compareStrings(Lorg/apache/xml/utils/XMLString;Lorg/apache/xml/utils/XMLString;)Z

    move-result v21

    if-eqz v21, :cond_4e

    .line 513
    const/16 v17, 0x1

    .line 515
    goto :goto_19

    .line 518
    :cond_4e
    if-nez v12, :cond_55

    .line 519
    new-instance v12, Ljava/util/Vector;

    .end local v12           #node2Strings:Ljava/util/Vector;
    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    .line 521
    .restart local v12       #node2Strings:Ljava/util/Vector;
    :cond_55
    move-object v0, v12

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2d

    .line 526
    .end local v11           #node2:I
    .end local v19           #s2:Lorg/apache/xml/utils/XMLString;
    :cond_5c
    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v8

    .line 528
    .local v8, n:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_61
    if-ge v5, v8, :cond_19

    .line 530
    invoke-virtual {v12, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xml/utils/XMLString;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lorg/apache/xpath/objects/Comparator;->compareStrings(Lorg/apache/xml/utils/XMLString;Lorg/apache/xml/utils/XMLString;)Z

    move-result v21

    if-eqz v21, :cond_78

    .line 532
    const/16 v17, 0x1

    .line 534
    goto :goto_19

    .line 528
    :cond_78
    add-int/lit8 v5, v5, 0x1

    goto :goto_61

    .line 539
    .end local v5           #i:I
    .end local v8           #n:I
    .end local v18           #s1:Lorg/apache/xml/utils/XMLString;
    :cond_7b
    invoke-interface {v6}, Lorg/apache/xml/dtm/DTMIterator;->reset()V

    .line 540
    invoke-interface {v7}, Lorg/apache/xml/dtm/DTMIterator;->reset()V

    .line 632
    .end local v6           #list1:Lorg/apache/xml/dtm/DTMIterator;
    .end local v7           #list2:Lorg/apache/xml/dtm/DTMIterator;
    .end local v10           #node1:I
    .end local v12           #node2Strings:Ljava/util/Vector;
    :goto_81
    return v17

    .line 542
    .restart local p1
    :cond_82
    const/16 v21, 0x1

    move/from16 v0, v21

    move/from16 v1, v20

    if-ne v0, v1, :cond_a6

    .line 551
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xpath/objects/XNodeSet;->bool()Z

    move-result v21

    if-eqz v21, :cond_a1

    const-wide/high16 v21, 0x3ff0

    move-wide/from16 v13, v21

    .line 552
    .local v13, num1:D
    :goto_94
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v15

    .line 554
    .local v15, num2:D
    move-object/from16 v0, p2

    move-wide v1, v13

    move-wide v3, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/xpath/objects/Comparator;->compareNumbers(DD)Z

    move-result v17

    .line 555
    goto :goto_81

    .line 551
    .end local v13           #num1:D
    .end local v15           #num2:D
    :cond_a1
    const-wide/16 v21, 0x0

    move-wide/from16 v13, v21

    goto :goto_94

    .line 556
    :cond_a6
    const/16 v21, 0x2

    move/from16 v0, v21

    move/from16 v1, v20

    if-ne v0, v1, :cond_d8

    .line 566
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xpath/objects/XNodeSet;->iterRaw()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v6

    .line 567
    .restart local v6       #list1:Lorg/apache/xml/dtm/DTMIterator;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v15

    .line 570
    .restart local v15       #num2:D
    :cond_b6
    const/16 v21, -0x1

    invoke-interface {v6}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v9

    .local v9, node:I
    move/from16 v0, v21

    move v1, v9

    if-eq v0, v1, :cond_d4

    .line 572
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lorg/apache/xpath/objects/XNodeSet;->getNumberFromNode(I)D

    move-result-wide v13

    .line 574
    .restart local v13       #num1:D
    move-object/from16 v0, p2

    move-wide v1, v13

    move-wide v3, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/xpath/objects/Comparator;->compareNumbers(DD)Z

    move-result v21

    if-eqz v21, :cond_b6

    .line 576
    const/16 v17, 0x1

    .line 581
    .end local v13           #num1:D
    :cond_d4
    invoke-interface {v6}, Lorg/apache/xml/dtm/DTMIterator;->reset()V

    goto :goto_81

    .line 583
    .end local v6           #list1:Lorg/apache/xml/dtm/DTMIterator;
    .end local v9           #node:I
    .end local v15           #num2:D
    :cond_d8
    const/16 v21, 0x5

    move/from16 v0, v21

    move/from16 v1, v20

    if-ne v0, v1, :cond_10d

    .line 585
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v19

    .line 586
    .restart local v19       #s2:Lorg/apache/xml/utils/XMLString;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xpath/objects/XNodeSet;->iterRaw()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v6

    .line 589
    .restart local v6       #list1:Lorg/apache/xml/dtm/DTMIterator;
    :cond_e8
    const/16 v21, -0x1

    invoke-interface {v6}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v9

    .restart local v9       #node:I
    move/from16 v0, v21

    move v1, v9

    if-eq v0, v1, :cond_108

    .line 591
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lorg/apache/xpath/objects/XNodeSet;->getStringFromNode(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v18

    .line 593
    .restart local v18       #s1:Lorg/apache/xml/utils/XMLString;
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/apache/xpath/objects/Comparator;->compareStrings(Lorg/apache/xml/utils/XMLString;Lorg/apache/xml/utils/XMLString;)Z

    move-result v21

    if-eqz v21, :cond_e8

    .line 595
    const/16 v17, 0x1

    .line 600
    .end local v18           #s1:Lorg/apache/xml/utils/XMLString;
    :cond_108
    invoke-interface {v6}, Lorg/apache/xml/dtm/DTMIterator;->reset()V

    goto/16 :goto_81

    .line 602
    .end local v6           #list1:Lorg/apache/xml/dtm/DTMIterator;
    .end local v9           #node:I
    .end local v19           #s2:Lorg/apache/xml/utils/XMLString;
    :cond_10d
    const/16 v21, 0x3

    move/from16 v0, v21

    move/from16 v1, v20

    if-ne v0, v1, :cond_142

    .line 611
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/objects/XObject;->xstr()Lorg/apache/xml/utils/XMLString;

    move-result-object v19

    .line 612
    .restart local v19       #s2:Lorg/apache/xml/utils/XMLString;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xpath/objects/XNodeSet;->iterRaw()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v6

    .line 615
    .restart local v6       #list1:Lorg/apache/xml/dtm/DTMIterator;
    :cond_11d
    const/16 v21, -0x1

    invoke-interface {v6}, Lorg/apache/xml/dtm/DTMIterator;->nextNode()I

    move-result v9

    .restart local v9       #node:I
    move/from16 v0, v21

    move v1, v9

    if-eq v0, v1, :cond_13d

    .line 617
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lorg/apache/xpath/objects/XNodeSet;->getStringFromNode(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v18

    .line 618
    .restart local v18       #s1:Lorg/apache/xml/utils/XMLString;
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/apache/xpath/objects/Comparator;->compareStrings(Lorg/apache/xml/utils/XMLString;Lorg/apache/xml/utils/XMLString;)Z

    move-result v21

    if-eqz v21, :cond_11d

    .line 620
    const/16 v17, 0x1

    .line 625
    .end local v18           #s1:Lorg/apache/xml/utils/XMLString;
    :cond_13d
    invoke-interface {v6}, Lorg/apache/xml/dtm/DTMIterator;->reset()V

    goto/16 :goto_81

    .line 629
    .end local v6           #list1:Lorg/apache/xml/dtm/DTMIterator;
    .end local v9           #node:I
    .end local v19           #s2:Lorg/apache/xml/utils/XMLString;
    :cond_142
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xpath/objects/XNodeSet;->num()D

    move-result-wide v21

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v23

    move-object/from16 v0, p2

    move-wide/from16 v1, v21

    move-wide/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/xpath/objects/Comparator;->compareNumbers(DD)Z

    move-result v17

    goto/16 :goto_81
.end method

.method public dispatchCharactersEvents(Lorg/xml/sax/ContentHandler;)V
    .registers 5
    .parameter "ch"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 239
    invoke-virtual {p0, v2}, Lorg/apache/xpath/objects/XNodeSet;->item(I)I

    move-result v0

    .line 241
    .local v0, node:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    .line 243
    iget-object v1, p0, Lorg/apache/xpath/objects/XNodeSet;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    invoke-virtual {v1, v0}, Lorg/apache/xml/dtm/DTMManager;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    invoke-interface {v1, v0, p1, v2}, Lorg/apache/xml/dtm/DTM;->dispatchCharactersEvents(ILorg/xml/sax/ContentHandler;Z)V

    .line 246
    :cond_11
    return-void
.end method

.method public equals(Lorg/apache/xpath/objects/XObject;)Z
    .registers 4
    .parameter "obj2"

    .prologue
    .line 705
    :try_start_0
    sget-object v1, Lorg/apache/xpath/objects/XNodeSet;->S_EQ:Lorg/apache/xpath/objects/EqualComparator;

    invoke-virtual {p0, p1, v1}, Lorg/apache/xpath/objects/XNodeSet;->compare(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/Comparator;)Z
    :try_end_5
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    .line 707
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 709
    .local v0, te:Ljavax/xml/transform/TransformerException;
    new-instance v1, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v1, v0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getFresh()Lorg/apache/xpath/objects/XObject;
    .registers 4

    .prologue
    .line 409
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNodeSet;->hasCache()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 410
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNodeSet;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/xpath/objects/XObject;
    :try_end_c
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_c} :catch_10

    move-object v1, p0

    .line 412
    :goto_d
    return-object v1

    .restart local p0
    :cond_e
    move-object v1, p0

    goto :goto_d

    .line 414
    .end local p0
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 416
    .local v0, cnse:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getNumberFromNode(I)D
    .registers 5
    .parameter "n"

    .prologue
    .line 150
    iget-object v1, p0, Lorg/apache/xpath/objects/XNodeSet;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    invoke-virtual {v1, p1}, Lorg/apache/xml/dtm/DTMManager;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v0

    .line 151
    .local v0, xstr:Lorg/apache/xml/utils/XMLString;
    invoke-interface {v0}, Lorg/apache/xml/utils/XMLString;->toDouble()D

    move-result-wide v1

    return-wide v1
.end method

.method public getStringFromNode(I)Lorg/apache/xml/utils/XMLString;
    .registers 3
    .parameter "n"

    .prologue
    .line 215
    const/4 v0, -0x1

    if-eq v0, p1, :cond_e

    .line 217
    iget-object v0, p0, Lorg/apache/xpath/objects/XNodeSet;->m_dtmMgr:Lorg/apache/xml/dtm/DTMManager;

    invoke-virtual {v0, p1}, Lorg/apache/xml/dtm/DTMManager;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/xml/dtm/DTM;->getStringValue(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v0

    .line 221
    :goto_d
    return-object v0

    :cond_e
    sget-object v0, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    goto :goto_d
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 127
    const/4 v0, 0x4

    return v0
.end method

.method public getTypeString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 138
    const-string v0, "#NODESET"

    return-object v0
.end method

.method public greaterThan(Lorg/apache/xpath/objects/XObject;)Z
    .registers 3
    .parameter "obj2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 674
    sget-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_GT:Lorg/apache/xpath/objects/GreaterThanComparator;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/objects/XNodeSet;->compare(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/Comparator;)Z

    move-result v0

    return v0
.end method

.method public greaterThanOrEqual(Lorg/apache/xpath/objects/XObject;)Z
    .registers 3
    .parameter "obj2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 689
    sget-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_GTE:Lorg/apache/xpath/objects/GreaterThanOrEqualComparator;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/objects/XNodeSet;->compare(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/Comparator;)Z

    move-result v0

    return v0
.end method

.method public iter()Lorg/apache/xml/dtm/DTMIterator;
    .registers 4

    .prologue
    .line 389
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNodeSet;->hasCache()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 390
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNodeSet;->cloneWithReset()Lorg/apache/xml/dtm/DTMIterator;
    :try_end_9
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_9} :catch_d

    move-result-object v1

    .line 392
    :goto_a
    return-object v1

    :cond_b
    move-object v1, p0

    goto :goto_a

    .line 394
    :catch_d
    move-exception v1

    move-object v0, v1

    .line 396
    .local v0, cnse:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public iterRaw()Lorg/apache/xml/dtm/DTMIterator;
    .registers 1

    .prologue
    .line 373
    return-object p0
.end method

.method public lessThan(Lorg/apache/xpath/objects/XObject;)Z
    .registers 3
    .parameter "obj2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 646
    sget-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_LT:Lorg/apache/xpath/objects/LessThanComparator;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/objects/XNodeSet;->compare(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/Comparator;)Z

    move-result v0

    return v0
.end method

.method public lessThanOrEqual(Lorg/apache/xpath/objects/XObject;)Z
    .registers 3
    .parameter "obj2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 660
    sget-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_LTE:Lorg/apache/xpath/objects/LessThanOrEqualComparator;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/objects/XNodeSet;->compare(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/Comparator;)Z

    move-result v0

    return v0
.end method

.method public mutableNodeset()Lorg/apache/xpath/NodeSetDTM;
    .registers 3

    .prologue
    .line 429
    iget-object v1, p0, Lorg/apache/xpath/objects/XNodeSet;->m_obj:Ljava/lang/Object;

    instance-of v1, v1, Lorg/apache/xpath/NodeSetDTM;

    if-eqz v1, :cond_b

    .line 431
    iget-object v0, p0, Lorg/apache/xpath/objects/XNodeSet;->m_obj:Ljava/lang/Object;

    check-cast v0, Lorg/apache/xpath/NodeSetDTM;

    .line 440
    .local v0, mnl:Lorg/apache/xpath/NodeSetDTM;
    :goto_a
    return-object v0

    .line 435
    .end local v0           #mnl:Lorg/apache/xpath/NodeSetDTM;
    :cond_b
    new-instance v0, Lorg/apache/xpath/NodeSetDTM;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNodeSet;->iter()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xpath/NodeSetDTM;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    .line 436
    .restart local v0       #mnl:Lorg/apache/xpath/NodeSetDTM;
    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XNodeSet;->setObject(Ljava/lang/Object;)V

    .line 437
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/xpath/objects/XNodeSet;->setCurrentPos(I)V

    goto :goto_a
.end method

.method public nodelist()Lorg/w3c/dom/NodeList;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 346
    new-instance v1, Lorg/apache/xml/dtm/ref/DTMNodeList;

    invoke-direct {v1, p0}, Lorg/apache/xml/dtm/ref/DTMNodeList;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    .line 351
    .local v1, nodelist:Lorg/apache/xml/dtm/ref/DTMNodeList;
    invoke-virtual {v1}, Lorg/apache/xml/dtm/ref/DTMNodeList;->getDTMIterator()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/objects/XNodeSet;

    .line 352
    .local v0, clone:Lorg/apache/xpath/objects/XNodeSet;
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XNodeSet;->getVector()Lorg/apache/xml/utils/NodeVector;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/xpath/objects/XNodeSet;->SetVector(Lorg/apache/xml/utils/NodeVector;)V

    .line 353
    return-object v1
.end method

.method public nodeset()Lorg/w3c/dom/traversal/NodeIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 334
    new-instance v0, Lorg/apache/xml/dtm/ref/DTMNodeIterator;

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNodeSet;->iter()Lorg/apache/xml/dtm/DTMIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/dtm/ref/DTMNodeIterator;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    return-object v0
.end method

.method public notEquals(Lorg/apache/xpath/objects/XObject;)Z
    .registers 3
    .parameter "obj2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 724
    sget-object v0, Lorg/apache/xpath/objects/XNodeSet;->S_NEQ:Lorg/apache/xpath/objects/NotEqualComparator;

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/objects/XNodeSet;->compare(Lorg/apache/xpath/objects/XObject;Lorg/apache/xpath/objects/Comparator;)Z

    move-result v0

    return v0
.end method

.method public num()D
    .registers 4

    .prologue
    .line 163
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/xpath/objects/XNodeSet;->item(I)I

    move-result v0

    .line 164
    .local v0, node:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XNodeSet;->getNumberFromNode(I)D

    move-result-wide v1

    :goto_c
    return-wide v1

    :cond_d
    const-wide/high16 v1, 0x7ff8

    goto :goto_c
.end method

.method public numWithSideEffects()D
    .registers 4

    .prologue
    .line 176
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNodeSet;->nextNode()I

    move-result v0

    .line 178
    .local v0, node:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XNodeSet;->getNumberFromNode(I)D

    move-result-wide v1

    :goto_b
    return-wide v1

    :cond_c
    const-wide/high16 v1, 0x7ff8

    goto :goto_b
.end method

.method public object()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 291
    iget-object v0, p0, Lorg/apache/xpath/objects/XNodeSet;->m_obj:Ljava/lang/Object;

    if-nez v0, :cond_6

    move-object v0, p0

    .line 294
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/apache/xpath/objects/XNodeSet;->m_obj:Ljava/lang/Object;

    goto :goto_5
.end method

.method public release(Lorg/apache/xml/dtm/DTMIterator;)V
    .registers 2
    .parameter "iter"

    .prologue
    .line 378
    return-void
.end method

.method public str()Ljava/lang/String;
    .registers 3

    .prologue
    .line 279
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/xpath/objects/XNodeSet;->item(I)I

    move-result v0

    .line 280
    .local v0, node:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XNodeSet;->getStringFromNode(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_10
    return-object v1

    :cond_11
    const-string v1, ""

    goto :goto_10
.end method

.method public xstr()Lorg/apache/xml/utils/XMLString;
    .registers 3

    .prologue
    .line 255
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/xpath/objects/XNodeSet;->item(I)I

    move-result v0

    .line 256
    .local v0, node:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XNodeSet;->getStringFromNode(I)Lorg/apache/xml/utils/XMLString;

    move-result-object v1

    :goto_c
    return-object v1

    :cond_d
    sget-object v1, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    goto :goto_c
.end method
