.class public Lorg/apache/xpath/patterns/StepPattern;
.super Lorg/apache/xpath/patterns/NodeTest;
.source "StepPattern.java"

# interfaces
.implements Lorg/apache/xpath/axes/SubContextList;
.implements Lorg/apache/xpath/ExpressionOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xpath/patterns/StepPattern$PredOwner;
    }
.end annotation


# static fields
.field private static final DEBUG_MATCHES:Z = false

.field static final serialVersionUID:J = 0x7de50adb02c28e44L


# instance fields
.field protected m_axis:I

.field m_predicates:[Lorg/apache/xpath/Expression;

.field m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

.field m_targetString:Ljava/lang/String;


# direct methods
.method public constructor <init>(III)V
    .registers 4
    .parameter "whatToShow"
    .parameter "axis"
    .parameter "axisForPredicate"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lorg/apache/xpath/patterns/NodeTest;-><init>(I)V

    .line 78
    iput p2, p0, Lorg/apache/xpath/patterns/StepPattern;->m_axis:I

    .line 79
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;II)V
    .registers 6
    .parameter "whatToShow"
    .parameter "namespace"
    .parameter "name"
    .parameter "axis"
    .parameter "axisForPredicate"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/xpath/patterns/NodeTest;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 62
    iput p4, p0, Lorg/apache/xpath/patterns/StepPattern;->m_axis:I

    .line 63
    return-void
.end method

.method private final checkProximityPosition(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;II)Z
    .registers 16
    .parameter "xctxt"
    .parameter "predPos"
    .parameter "dtm"
    .parameter "context"
    .parameter "pos"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 434
    const/16 v6, 0xc

    :try_start_4
    invoke-interface {p3, v6}, Lorg/apache/xml/dtm/DTM;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    move-result-object v5

    .line 437
    .local v5, traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-virtual {v5, p4}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I
    :try_end_b
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4 .. :try_end_b} :catch_4f

    move-result v0

    .local v0, child:I
    :goto_c
    const/4 v6, -0x1

    if-eq v6, v0, :cond_87

    .line 442
    :try_start_f
    invoke-virtual {p1, v0}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 444
    sget-object v6, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    invoke-super {p0, p1, v0}, Lorg/apache/xpath/patterns/NodeTest;->execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_4a

    move-result-object v7

    if-eq v6, v7, :cond_7f

    .line 446
    const/4 v2, 0x1

    .line 450
    .local v2, pass:Z
    :try_start_1b
    invoke-virtual {p1, p0}, Lorg/apache/xpath/XPathContext;->pushSubContextList(Lorg/apache/xpath/axes/SubContextList;)V

    .line 452
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1f
    if-ge v1, p2, :cond_68

    .line 454
    invoke-virtual {p1, v1}, Lorg/apache/xpath/XPathContext;->pushPredicatePos(I)V
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_45

    .line 457
    :try_start_24
    iget-object v6, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v6, v6, v1

    invoke-virtual {v6, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_40

    move-result-object v3

    .line 461
    .local v3, pred:Lorg/apache/xpath/objects/XObject;
    const/4 v6, 0x2

    :try_start_2d
    invoke-virtual {v3}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v7

    if-ne v6, v7, :cond_5b

    .line 463
    new-instance v6, Ljava/lang/Error;

    const-string v7, "Why: Should never have been called"

    invoke-direct {v6, v7}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_3b
    .catchall {:try_start_2d .. :try_end_3b} :catchall_3b

    .line 474
    :catchall_3b
    move-exception v6

    :try_start_3c
    invoke-virtual {v3}, Lorg/apache/xpath/objects/XObject;->detach()V

    throw v6
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_40

    .line 479
    .end local v3           #pred:Lorg/apache/xpath/objects/XObject;
    :catchall_40
    move-exception v6

    :try_start_41
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V

    throw v6
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_45

    .line 485
    .end local v1           #i:I
    :catchall_45
    move-exception v6

    :try_start_46
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popSubContextList()V

    throw v6
    :try_end_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_4a

    .line 497
    .end local v2           #pass:Z
    :catchall_4a
    move-exception v6

    :try_start_4b
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    throw v6
    :try_end_4f
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4b .. :try_end_4f} :catch_4f

    .line 501
    .end local v0           #child:I
    .end local v5           #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    :catch_4f
    move-exception v6

    move-object v4, v6

    .line 505
    .local v4, se:Ljavax/xml/transform/TransformerException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-virtual {v4}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 465
    .end local v4           #se:Ljavax/xml/transform/TransformerException;
    .restart local v0       #child:I
    .restart local v1       #i:I
    .restart local v2       #pass:Z
    .restart local v3       #pred:Lorg/apache/xpath/objects/XObject;
    .restart local v5       #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    :cond_5b
    :try_start_5b
    invoke-virtual {v3}, Lorg/apache/xpath/objects/XObject;->boolWithSideEffects()Z
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_3b

    move-result v6

    if-nez v6, :cond_76

    .line 467
    const/4 v2, 0x0

    .line 474
    :try_start_62
    invoke-virtual {v3}, Lorg/apache/xpath/objects/XObject;->detach()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_40

    .line 479
    :try_start_65
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_45

    .line 485
    .end local v3           #pred:Lorg/apache/xpath/objects/XObject;
    :cond_68
    :try_start_68
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popSubContextList()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_4a

    .line 488
    if-eqz v2, :cond_6f

    .line 489
    add-int/lit8 p5, p5, -0x1

    .line 491
    :cond_6f
    if-ge p5, v8, :cond_7f

    .line 497
    :try_start_71
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V
    :try_end_74
    .catch Ljavax/xml/transform/TransformerException; {:try_start_71 .. :try_end_74} :catch_4f

    move v6, v9

    .line 508
    .end local v1           #i:I
    .end local v2           #pass:Z
    :goto_75
    return v6

    .line 474
    .restart local v1       #i:I
    .restart local v2       #pass:Z
    .restart local v3       #pred:Lorg/apache/xpath/objects/XObject;
    :cond_76
    :try_start_76
    invoke-virtual {v3}, Lorg/apache/xpath/objects/XObject;->detach()V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_40

    .line 479
    :try_start_79
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_45

    .line 452
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 497
    .end local v1           #i:I
    .end local v2           #pass:Z
    .end local v3           #pred:Lorg/apache/xpath/objects/XObject;
    :cond_7f
    :try_start_7f
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 438
    invoke-virtual {v5, p4, v0}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I
    :try_end_85
    .catch Ljavax/xml/transform/TransformerException; {:try_start_7f .. :try_end_85} :catch_4f

    move-result v0

    goto :goto_c

    .line 508
    :cond_87
    if-ne p5, v8, :cond_8b

    move v6, v8

    goto :goto_75

    :cond_8b
    move v6, v9

    goto :goto_75
.end method

.method private final getProximityPosition(Lorg/apache/xpath/XPathContext;IZ)I
    .registers 21
    .parameter "xctxt"
    .parameter "predPos"
    .parameter "findLast"

    .prologue
    .line 527
    const/4 v9, 0x0

    .line 528
    .local v9, pos:I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v4

    .line 529
    .local v4, context:I
    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v5

    .line 530
    .local v5, dtm:Lorg/apache/xml/dtm/DTM;
    invoke-interface {v5, v4}, Lorg/apache/xml/dtm/DTM;->getParent(I)I

    move-result v7

    .line 534
    .local v7, parent:I
    const/4 v14, 0x3

    :try_start_11
    invoke-interface {v5, v14}, Lorg/apache/xml/dtm/DTM;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    move-result-object v13

    .line 536
    .local v13, traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-virtual {v13, v7}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I
    :try_end_18
    .catch Ljavax/xml/transform/TransformerException; {:try_start_11 .. :try_end_18} :catch_90

    move-result v3

    .local v3, child:I
    :goto_19
    const/4 v14, -0x1

    if-eq v14, v3, :cond_b8

    .line 541
    :try_start_1c
    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 543
    sget-object v14, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v3

    invoke-super {v0, v1, v2}, Lorg/apache/xpath/patterns/NodeTest;->execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;
    :try_end_2c
    .catchall {:try_start_1c .. :try_end_2c} :catchall_8b

    move-result-object v15

    if-eq v14, v15, :cond_af

    .line 545
    const/4 v8, 0x1

    .line 549
    .local v8, pass:Z
    :try_start_30
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->pushSubContextList(Lorg/apache/xpath/axes/SubContextList;)V

    .line 551
    const/4 v6, 0x0

    .local v6, i:I
    :goto_38
    move v0, v6

    move/from16 v1, p2

    if-ge v0, v1, :cond_68

    .line 553
    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/apache/xpath/XPathContext;->pushPredicatePos(I)V
    :try_end_43
    .catchall {:try_start_30 .. :try_end_43} :catchall_86

    .line 556
    :try_start_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    move-object v14, v0

    aget-object v14, v14, v6

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    :try_end_50
    .catchall {:try_start_43 .. :try_end_50} :catchall_aa

    move-result-object v11

    .line 560
    .local v11, pred:Lorg/apache/xpath/objects/XObject;
    const/4 v14, 0x2

    :try_start_52
    invoke-virtual {v11}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v15

    if-ne v14, v15, :cond_78

    .line 562
    add-int/lit8 v14, v9, 0x1

    invoke-virtual {v11}, Lorg/apache/xpath/objects/XObject;->numWithSideEffects()D
    :try_end_5d
    .catchall {:try_start_52 .. :try_end_5d} :catchall_a5

    move-result-wide v15

    double-to-int v15, v15

    if-eq v14, v15, :cond_9c

    .line 564
    const/4 v8, 0x0

    .line 578
    :try_start_62
    invoke-virtual {v11}, Lorg/apache/xpath/objects/XObject;->detach()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_aa

    .line 583
    :try_start_65
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_86

    .line 589
    .end local v11           #pred:Lorg/apache/xpath/objects/XObject;
    :cond_68
    :goto_68
    :try_start_68
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popSubContextList()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_8b

    .line 592
    if-eqz v8, :cond_6f

    .line 593
    add-int/lit8 v9, v9, 0x1

    .line 595
    :cond_6f
    if-nez p3, :cond_af

    if-ne v3, v4, :cond_af

    .line 603
    :try_start_73
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V
    :try_end_76
    .catch Ljavax/xml/transform/TransformerException; {:try_start_73 .. :try_end_76} :catch_90

    move v10, v9

    .line 614
    .end local v6           #i:I
    .end local v8           #pass:Z
    .end local v9           #pos:I
    .local v10, pos:I
    :goto_77
    return v10

    .line 569
    .end local v10           #pos:I
    .restart local v6       #i:I
    .restart local v8       #pass:Z
    .restart local v9       #pos:I
    .restart local v11       #pred:Lorg/apache/xpath/objects/XObject;
    :cond_78
    :try_start_78
    invoke-virtual {v11}, Lorg/apache/xpath/objects/XObject;->boolWithSideEffects()Z
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_a5

    move-result v14

    if-nez v14, :cond_9c

    .line 571
    const/4 v8, 0x0

    .line 578
    :try_start_7f
    invoke-virtual {v11}, Lorg/apache/xpath/objects/XObject;->detach()V
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_aa

    .line 583
    :try_start_82
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_86

    goto :goto_68

    .line 589
    .end local v6           #i:I
    .end local v11           #pred:Lorg/apache/xpath/objects/XObject;
    :catchall_86
    move-exception v14

    :try_start_87
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popSubContextList()V

    throw v14
    :try_end_8b
    .catchall {:try_start_87 .. :try_end_8b} :catchall_8b

    .line 603
    .end local v8           #pass:Z
    :catchall_8b
    move-exception v14

    :try_start_8c
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    throw v14
    :try_end_90
    .catch Ljavax/xml/transform/TransformerException; {:try_start_8c .. :try_end_90} :catch_90

    .line 607
    .end local v3           #child:I
    .end local v13           #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    :catch_90
    move-exception v14

    move-object v12, v14

    .line 611
    .local v12, se:Ljavax/xml/transform/TransformerException;
    new-instance v14, Ljava/lang/RuntimeException;

    invoke-virtual {v12}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 578
    .end local v12           #se:Ljavax/xml/transform/TransformerException;
    .restart local v3       #child:I
    .restart local v6       #i:I
    .restart local v8       #pass:Z
    .restart local v11       #pred:Lorg/apache/xpath/objects/XObject;
    .restart local v13       #traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    :cond_9c
    :try_start_9c
    invoke-virtual {v11}, Lorg/apache/xpath/objects/XObject;->detach()V
    :try_end_9f
    .catchall {:try_start_9c .. :try_end_9f} :catchall_aa

    .line 583
    :try_start_9f
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V
    :try_end_a2
    .catchall {:try_start_9f .. :try_end_a2} :catchall_86

    .line 551
    add-int/lit8 v6, v6, 0x1

    goto :goto_38

    .line 578
    :catchall_a5
    move-exception v14

    :try_start_a6
    invoke-virtual {v11}, Lorg/apache/xpath/objects/XObject;->detach()V

    throw v14
    :try_end_aa
    .catchall {:try_start_a6 .. :try_end_aa} :catchall_aa

    .line 583
    .end local v11           #pred:Lorg/apache/xpath/objects/XObject;
    :catchall_aa
    move-exception v14

    :try_start_ab
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V

    throw v14
    :try_end_af
    .catchall {:try_start_ab .. :try_end_af} :catchall_86

    .line 603
    .end local v6           #i:I
    .end local v8           #pass:Z
    :cond_af
    :try_start_af
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 537
    invoke-virtual {v13, v7, v3}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I
    :try_end_b5
    .catch Ljavax/xml/transform/TransformerException; {:try_start_af .. :try_end_b5} :catch_90

    move-result v3

    goto/16 :goto_19

    :cond_b8
    move v10, v9

    .line 614
    .end local v9           #pos:I
    .restart local v10       #pos:I
    goto :goto_77
.end method


# virtual methods
.method public calcScore()V
    .registers 2

    .prologue
    .line 304
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/StepPattern;->getPredicateCount()I

    move-result v0

    if-gtz v0, :cond_a

    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    if-eqz v0, :cond_16

    .line 306
    :cond_a
    sget-object v0, Lorg/apache/xpath/patterns/StepPattern;->SCORE_OTHER:Lorg/apache/xpath/objects/XNumber;

    iput-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_score:Lorg/apache/xpath/objects/XNumber;

    .line 311
    :goto_e
    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    if-nez v0, :cond_15

    .line 312
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/StepPattern;->calcTargetString()V

    .line 313
    :cond_15
    return-void

    .line 309
    :cond_16
    invoke-super {p0}, Lorg/apache/xpath/patterns/NodeTest;->calcScore()V

    goto :goto_e
.end method

.method public calcTargetString()V
    .registers 4

    .prologue
    .line 96
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/StepPattern;->getWhatToShow()I

    move-result v0

    .line 98
    .local v0, whatToShow:I
    sparse-switch v0, :sswitch_data_30

    .line 122
    const-string v1, "*"

    iput-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    .line 125
    :goto_b
    return-void

    .line 101
    :sswitch_c
    const-string v1, "#comment"

    iput-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    goto :goto_b

    .line 106
    :sswitch_11
    const-string v1, "#text"

    iput-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    goto :goto_b

    .line 109
    :sswitch_16
    const-string v1, "*"

    iput-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    goto :goto_b

    .line 113
    :sswitch_1b
    const-string v1, "/"

    iput-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    goto :goto_b

    .line 116
    :sswitch_20
    const-string v1, "*"

    iget-object v2, p0, Lorg/apache/xpath/patterns/StepPattern;->m_name:Ljava/lang/String;

    if-ne v1, v2, :cond_2b

    .line 117
    const-string v1, "*"

    iput-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    goto :goto_b

    .line 119
    :cond_2b
    iget-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_name:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    goto :goto_b

    .line 98
    :sswitch_data_30
    .sparse-switch
        -0x1 -> :sswitch_16
        0x1 -> :sswitch_20
        0x4 -> :sswitch_11
        0x8 -> :sswitch_11
        0xc -> :sswitch_11
        0x80 -> :sswitch_c
        0x100 -> :sswitch_1b
        0x500 -> :sswitch_1b
    .end sparse-switch
.end method

.method protected callSubtreeVisitors(Lorg/apache/xpath/XPathVisitor;)V
    .registers 6
    .parameter "visitor"

    .prologue
    .line 981
    iget-object v3, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    if-eqz v3, :cond_23

    .line 983
    iget-object v3, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    array-length v1, v3

    .line 984
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    if-ge v0, v1, :cond_23

    .line 986
    new-instance v2, Lorg/apache/xpath/patterns/StepPattern$PredOwner;

    invoke-direct {v2, p0, v0}, Lorg/apache/xpath/patterns/StepPattern$PredOwner;-><init>(Lorg/apache/xpath/patterns/StepPattern;I)V

    .line 987
    .local v2, predOwner:Lorg/apache/xpath/ExpressionOwner;
    iget-object v3, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lorg/apache/xpath/XPathVisitor;->visitPredicate(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/Expression;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 989
    iget-object v3, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2, p1}, Lorg/apache/xpath/Expression;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 984
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 993
    .end local v0           #i:I
    .end local v1           #n:I
    .end local v2           #predOwner:Lorg/apache/xpath/ExpressionOwner;
    :cond_23
    iget-object v3, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    if-eqz v3, :cond_2c

    .line 995
    iget-object v3, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    invoke-virtual {v3, p0, p1}, Lorg/apache/xpath/patterns/StepPattern;->callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V

    .line 997
    :cond_2c
    return-void
.end method

.method public callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .registers 4
    .parameter "owner"
    .parameter "visitor"

    .prologue
    .line 969
    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitMatchPattern(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/patterns/StepPattern;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 971
    invoke-virtual {p0, p2}, Lorg/apache/xpath/patterns/StepPattern;->callSubtreeVisitors(Lorg/apache/xpath/XPathVisitor;)V

    .line 973
    :cond_9
    return-void
.end method

.method public canTraverseOutsideSubtree()Z
    .registers 4

    .prologue
    .line 241
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/StepPattern;->getPredicateCount()I

    move-result v1

    .line 243
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v1, :cond_16

    .line 245
    invoke-virtual {p0, v0}, Lorg/apache/xpath/patterns/StepPattern;->getPredicate(I)Lorg/apache/xpath/Expression;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xpath/Expression;->canTraverseOutsideSubtree()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 246
    const/4 v2, 0x1

    .line 249
    :goto_12
    return v2

    .line 243
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 249
    :cond_16
    const/4 v2, 0x0

    goto :goto_12
.end method

.method public deepEquals(Lorg/apache/xpath/Expression;)Z
    .registers 9
    .parameter "expr"

    .prologue
    const/4 v6, 0x0

    .line 1022
    invoke-super {p0, p1}, Lorg/apache/xpath/patterns/NodeTest;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v4

    if-nez v4, :cond_9

    move v4, v6

    .line 1049
    :goto_8
    return v4

    .line 1025
    :cond_9
    move-object v0, p1

    check-cast v0, Lorg/apache/xpath/patterns/StepPattern;

    move-object v3, v0

    .line 1027
    .local v3, sp:Lorg/apache/xpath/patterns/StepPattern;
    iget-object v4, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    if-eqz v4, :cond_35

    .line 1029
    iget-object v4, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    array-length v2, v4

    .line 1030
    .local v2, n:I
    iget-object v4, v3, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    if-eqz v4, :cond_1d

    iget-object v4, v3, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    array-length v4, v4

    if-eq v4, v2, :cond_1f

    :cond_1d
    move v4, v6

    .line 1031
    goto :goto_8

    .line 1032
    :cond_1f
    const/4 v1, 0x0

    .local v1, i:I
    :goto_20
    if-ge v1, v2, :cond_3b

    .line 1034
    iget-object v4, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v4, v4, v1

    iget-object v5, v3, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xpath/Expression;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v4

    if-nez v4, :cond_32

    move v4, v6

    .line 1035
    goto :goto_8

    .line 1032
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 1038
    .end local v1           #i:I
    .end local v2           #n:I
    :cond_35
    iget-object v4, v3, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    if-eqz v4, :cond_3b

    move v4, v6

    .line 1039
    goto :goto_8

    .line 1041
    :cond_3b
    iget-object v4, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    if-eqz v4, :cond_4b

    .line 1043
    iget-object v4, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    iget-object v5, v3, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    invoke-virtual {v4, v5}, Lorg/apache/xpath/patterns/StepPattern;->deepEquals(Lorg/apache/xpath/Expression;)Z

    move-result v4

    if-nez v4, :cond_51

    move v4, v6

    .line 1044
    goto :goto_8

    .line 1046
    :cond_4b
    iget-object v4, v3, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    if-eqz v4, :cond_51

    move v4, v6

    .line 1047
    goto :goto_8

    .line 1049
    :cond_51
    const/4 v4, 0x1

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
    .line 363
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getCurrentNode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xpath/patterns/StepPattern;->execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/xpath/XPathContext;I)Lorg/apache/xpath/objects/XObject;
    .registers 6
    .parameter "xctxt"
    .parameter "currentNode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 334
    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->getDTM(I)Lorg/apache/xml/dtm/DTM;

    move-result-object v0

    .line 336
    .local v0, dtm:Lorg/apache/xml/dtm/DTM;
    if-eqz v0, :cond_f

    .line 338
    invoke-interface {v0, p2}, Lorg/apache/xml/dtm/DTM;->getExpandedTypeID(I)I

    move-result v1

    .line 340
    .local v1, expType:I
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/xpath/patterns/StepPattern;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v2

    .line 343
    .end local v1           #expType:I
    :goto_e
    return-object v2

    :cond_f
    sget-object v2, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    goto :goto_e
.end method

.method public execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;I)Lorg/apache/xpath/objects/XObject;
    .registers 8
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
    .line 386
    iget v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_whatToShow:I

    const/high16 v2, 0x1

    if-ne v1, v2, :cond_14

    .line 388
    iget-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    if-eqz v1, :cond_11

    .line 390
    iget-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    invoke-virtual {v1, p1}, Lorg/apache/xpath/patterns/StepPattern;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v1

    .line 413
    :goto_10
    return-object v1

    .line 393
    :cond_11
    sget-object v1, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    goto :goto_10

    .line 398
    :cond_14
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/xpath/patterns/NodeTest;->execute(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    .line 400
    .local v0, score:Lorg/apache/xpath/objects/XObject;
    sget-object v1, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    if-ne v0, v1, :cond_1f

    .line 401
    sget-object v1, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    goto :goto_10

    .line 403
    :cond_1f
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/StepPattern;->getPredicateCount()I

    move-result v1

    if-eqz v1, :cond_2e

    .line 405
    invoke-virtual {p0, p1, p3, p2}, Lorg/apache/xpath/patterns/StepPattern;->executePredicates(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/dtm/DTM;I)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 406
    sget-object v1, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    goto :goto_10

    .line 409
    :cond_2e
    iget-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    if-eqz v1, :cond_39

    .line 410
    iget-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    invoke-virtual {v1, p1, p3, p2}, Lorg/apache/xpath/patterns/StepPattern;->executeRelativePathPattern(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/dtm/DTM;I)Lorg/apache/xpath/objects/XObject;

    move-result-object v1

    goto :goto_10

    :cond_39
    move-object v1, v0

    .line 413
    goto :goto_10
.end method

.method protected final executePredicates(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/dtm/DTM;I)Z
    .registers 15
    .parameter "xctxt"
    .parameter "dtm"
    .parameter "currentNode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 713
    const/4 v9, 0x1

    .line 714
    .local v9, result:Z
    const/4 v7, 0x0

    .line 715
    .local v7, positionAlreadySeen:Z
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/StepPattern;->getPredicateCount()I

    move-result v6

    .line 719
    .local v6, n:I
    :try_start_7
    invoke-virtual {p1, p0}, Lorg/apache/xpath/XPathContext;->pushSubContextList(Lorg/apache/xpath/axes/SubContextList;)V

    .line 721
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    if-ge v2, v6, :cond_2f

    .line 723
    invoke-virtual {p1, v2}, Lorg/apache/xpath/XPathContext;->pushPredicatePos(I)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_49

    .line 727
    :try_start_10
    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_6a

    move-result-object v8

    .line 731
    .local v8, pred:Lorg/apache/xpath/objects/XObject;
    const/4 v0, 0x2

    :try_start_19
    invoke-virtual {v8}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v1

    if-ne v0, v1, :cond_4e

    .line 733
    invoke-virtual {v8}, Lorg/apache/xpath/objects/XObject;->num()D
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_65

    move-result-wide v0

    double-to-int v5, v0

    .line 735
    .local v5, pos:I
    if-eqz v7, :cond_36

    .line 737
    if-ne v5, v10, :cond_33

    move v9, v10

    .line 763
    :goto_29
    :try_start_29
    invoke-virtual {v8}, Lorg/apache/xpath/objects/XObject;->detach()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_6a

    .line 768
    :try_start_2c
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_49

    .line 774
    .end local v5           #pos:I
    .end local v8           #pred:Lorg/apache/xpath/objects/XObject;
    :cond_2f
    :goto_2f
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popSubContextList()V

    .line 777
    return v9

    .line 737
    .restart local v5       #pos:I
    .restart local v8       #pred:Lorg/apache/xpath/objects/XObject;
    :cond_33
    const/4 v0, 0x0

    move v9, v0

    goto :goto_29

    .line 743
    :cond_36
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    .line 745
    :try_start_3b
    invoke-direct/range {v0 .. v5}, Lorg/apache/xpath/patterns/StepPattern;->checkProximityPosition(Lorg/apache/xpath/XPathContext;ILorg/apache/xml/dtm/DTM;II)Z
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_65

    move-result v0

    if-nez v0, :cond_5c

    .line 747
    const/4 v9, 0x0

    .line 763
    :try_start_42
    invoke-virtual {v8}, Lorg/apache/xpath/objects/XObject;->detach()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_6a

    .line 768
    :try_start_45
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_49

    goto :goto_2f

    .line 774
    .end local v2           #i:I
    .end local v5           #pos:I
    .end local v8           #pred:Lorg/apache/xpath/objects/XObject;
    :catchall_49
    move-exception v0

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popSubContextList()V

    throw v0

    .line 754
    .restart local v2       #i:I
    .restart local v8       #pred:Lorg/apache/xpath/objects/XObject;
    :cond_4e
    :try_start_4e
    invoke-virtual {v8}, Lorg/apache/xpath/objects/XObject;->boolWithSideEffects()Z
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_65

    move-result v0

    if-nez v0, :cond_5c

    .line 756
    const/4 v9, 0x0

    .line 763
    :try_start_55
    invoke-virtual {v8}, Lorg/apache/xpath/objects/XObject;->detach()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_6a

    .line 768
    :try_start_58
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_49

    goto :goto_2f

    .line 763
    :cond_5c
    :try_start_5c
    invoke-virtual {v8}, Lorg/apache/xpath/objects/XObject;->detach()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_6a

    .line 768
    :try_start_5f
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_49

    .line 721
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 763
    :catchall_65
    move-exception v0

    :try_start_66
    invoke-virtual {v8}, Lorg/apache/xpath/objects/XObject;->detach()V

    throw v0
    :try_end_6a
    .catchall {:try_start_66 .. :try_end_6a} :catchall_6a

    .line 768
    .end local v8           #pred:Lorg/apache/xpath/objects/XObject;
    :catchall_6a
    move-exception v0

    :try_start_6b
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popPredicatePos()V

    throw v0
    :try_end_6f
    .catchall {:try_start_6b .. :try_end_6f} :catchall_49
.end method

.method protected final executeRelativePathPattern(Lorg/apache/xpath/XPathContext;Lorg/apache/xml/dtm/DTM;I)Lorg/apache/xpath/objects/XObject;
    .registers 9
    .parameter "xctxt"
    .parameter "dtm"
    .parameter "currentNode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 669
    sget-object v2, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;

    .line 670
    .local v2, score:Lorg/apache/xpath/objects/XObject;
    move v0, p3

    .line 673
    .local v0, context:I
    iget v4, p0, Lorg/apache/xpath/patterns/StepPattern;->m_axis:I

    invoke-interface {p2, v4}, Lorg/apache/xml/dtm/DTM;->getAxisTraverser(I)Lorg/apache/xml/dtm/DTMAxisTraverser;

    move-result-object v3

    .line 675
    .local v3, traverser:Lorg/apache/xml/dtm/DTMAxisTraverser;
    invoke-virtual {v3, v0}, Lorg/apache/xml/dtm/DTMAxisTraverser;->first(I)I

    move-result v1

    .local v1, relative:I
    :goto_d
    const/4 v4, -0x1

    if-eq v4, v1, :cond_1e

    .line 680
    :try_start_10
    invoke-virtual {p1, v1}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 682
    invoke-virtual {p0, p1}, Lorg/apache/xpath/patterns/StepPattern;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v2

    .line 684
    sget-object v4, Lorg/apache/xpath/patterns/NodeTest;->SCORE_NONE:Lorg/apache/xpath/objects/XNumber;
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_27

    if-eq v2, v4, :cond_1f

    .line 689
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 693
    :cond_1e
    return-object v2

    .line 689
    :cond_1f
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 676
    invoke-virtual {v3, v0, v1}, Lorg/apache/xml/dtm/DTMAxisTraverser;->next(II)I

    move-result v1

    goto :goto_d

    .line 689
    :catchall_27
    move-exception v4

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    throw v4
.end method

.method public fixupVariables(Ljava/util/Vector;I)V
    .registers 5
    .parameter "vars"
    .parameter "globalsSize"

    .prologue
    .line 161
    invoke-super {p0, p1, p2}, Lorg/apache/xpath/patterns/NodeTest;->fixupVariables(Ljava/util/Vector;I)V

    .line 163
    iget-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    if-eqz v1, :cond_17

    .line 165
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    iget-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    array-length v1, v1

    if-ge v0, v1, :cond_17

    .line 167
    iget-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lorg/apache/xpath/Expression;->fixupVariables(Ljava/util/Vector;I)V

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 171
    .end local v0           #i:I
    :cond_17
    iget-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    if-eqz v1, :cond_20

    .line 173
    iget-object v1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    invoke-virtual {v1, p1, p2}, Lorg/apache/xpath/patterns/StepPattern;->fixupVariables(Ljava/util/Vector;I)V

    .line 175
    :cond_20
    return-void
.end method

.method public getAxis()I
    .registers 2

    .prologue
    .line 933
    iget v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_axis:I

    return v0
.end method

.method public getExpression()Lorg/apache/xpath/Expression;
    .registers 2

    .prologue
    .line 1005
    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    return-object v0
.end method

.method public getLastPos(Lorg/apache/xpath/XPathContext;)I
    .registers 4
    .parameter "xctxt"

    .prologue
    .line 645
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getPredicatePos()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/xpath/patterns/StepPattern;->getProximityPosition(Lorg/apache/xpath/XPathContext;IZ)I

    move-result v0

    return v0
.end method

.method public getMatchScore(Lorg/apache/xpath/XPathContext;I)D
    .registers 6
    .parameter "xctxt"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 896
    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentNode(I)V

    .line 897
    invoke-virtual {p1, p2}, Lorg/apache/xpath/XPathContext;->pushCurrentExpressionNode(I)V

    .line 901
    :try_start_6
    invoke-virtual {p0, p1}, Lorg/apache/xpath/patterns/StepPattern;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v0

    .line 903
    .local v0, score:Lorg/apache/xpath/objects/XObject;
    invoke-virtual {v0}, Lorg/apache/xpath/objects/XObject;->num()D
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_15

    move-result-wide v1

    .line 907
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 908
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentExpressionNode()V

    return-wide v1

    .line 907
    .end local v0           #score:Lorg/apache/xpath/objects/XObject;
    :catchall_15
    move-exception v1

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentNode()V

    .line 908
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->popCurrentExpressionNode()V

    throw v1
.end method

.method public getPredicate(I)Lorg/apache/xpath/Expression;
    .registers 3
    .parameter "i"

    .prologue
    .line 262
    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getPredicateCount()I
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    array-length v0, v0

    goto :goto_5
.end method

.method public getPredicates()[Lorg/apache/xpath/Expression;
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    return-object v0
.end method

.method public getProximityPosition(Lorg/apache/xpath/XPathContext;)I
    .registers 4
    .parameter "xctxt"

    .prologue
    .line 629
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getPredicatePos()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/xpath/patterns/StepPattern;->getProximityPosition(Lorg/apache/xpath/XPathContext;IZ)I

    move-result v0

    return v0
.end method

.method public getRelativePathPattern()Lorg/apache/xpath/patterns/StepPattern;
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    return-object v0
.end method

.method public getTargetString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lorg/apache/xpath/patterns/StepPattern;->m_targetString:Ljava/lang/String;

    return-object v0
.end method

.method public setAxis(I)V
    .registers 2
    .parameter "axis"

    .prologue
    .line 922
    iput p1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_axis:I

    .line 923
    return-void
.end method

.method public setExpression(Lorg/apache/xpath/Expression;)V
    .registers 2
    .parameter "exp"

    .prologue
    .line 1013
    invoke-virtual {p1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 1014
    check-cast p1, Lorg/apache/xpath/patterns/StepPattern;

    .end local p1
    iput-object p1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    .line 1015
    return-void
.end method

.method public setPredicates([Lorg/apache/xpath/Expression;)V
    .registers 4
    .parameter "predicates"

    .prologue
    .line 286
    iput-object p1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    .line 287
    if-eqz p1, :cond_10

    .line 289
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    array-length v1, p1

    if-ge v0, v1, :cond_10

    .line 291
    aget-object v1, p1, v0

    invoke-virtual {v1, p0}, Lorg/apache/xpath/Expression;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 295
    .end local v0           #i:I
    :cond_10
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/StepPattern;->calcScore()V

    .line 296
    return-void
.end method

.method public setRelativePathPattern(Lorg/apache/xpath/patterns/StepPattern;)V
    .registers 2
    .parameter "expr"

    .prologue
    .line 187
    iput-object p1, p0, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    .line 188
    invoke-virtual {p1, p0}, Lorg/apache/xpath/patterns/StepPattern;->exprSetParent(Lorg/apache/xpath/ExpressionNode;)V

    .line 190
    invoke-virtual {p0}, Lorg/apache/xpath/patterns/StepPattern;->calcScore()V

    .line 191
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x2

    .line 790
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 792
    .local v0, buf:Ljava/lang/StringBuffer;
    move-object v2, p0

    .local v2, pat:Lorg/apache/xpath/patterns/StepPattern;
    :goto_7
    if-eqz v2, :cond_f0

    .line 794
    if-eq v2, p0, :cond_10

    .line 795
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 797
    :cond_10
    iget v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_axis:I

    invoke-static {v3}, Lorg/apache/xml/dtm/Axis;->getNames(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 798
    const-string v3, "::"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 800
    const/16 v3, 0x5000

    iget v4, v2, Lorg/apache/xpath/patterns/StepPattern;->m_whatToShow:I

    if-ne v3, v4, :cond_47

    .line 802
    const-string v3, "doc()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 861
    :goto_29
    iget-object v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    if-eqz v3, :cond_ec

    .line 863
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2e
    iget-object v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    array-length v3, v3

    if-ge v1, v3, :cond_ec

    .line 865
    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 866
    iget-object v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_predicates:[Lorg/apache/xpath/Expression;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 867
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 863
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 804
    .end local v1           #i:I
    :cond_47
    const/high16 v3, 0x1

    iget v4, v2, Lorg/apache/xpath/patterns/StepPattern;->m_whatToShow:I

    if-ne v3, v4, :cond_53

    .line 806
    const-string v3, "function()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_29

    .line 808
    :cond_53
    const/4 v3, -0x1

    iget v4, v2, Lorg/apache/xpath/patterns/StepPattern;->m_whatToShow:I

    if-ne v3, v4, :cond_5e

    .line 810
    const-string v3, "node()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_29

    .line 812
    :cond_5e
    const/4 v3, 0x4

    iget v4, v2, Lorg/apache/xpath/patterns/StepPattern;->m_whatToShow:I

    if-ne v3, v4, :cond_69

    .line 814
    const-string v3, "text()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_29

    .line 816
    :cond_69
    const/16 v3, 0x40

    iget v4, v2, Lorg/apache/xpath/patterns/StepPattern;->m_whatToShow:I

    if-ne v3, v4, :cond_83

    .line 818
    const-string v3, "processing-instruction("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 820
    iget-object v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_name:Ljava/lang/String;

    if-eqz v3, :cond_7d

    .line 822
    iget-object v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 825
    :cond_7d
    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_29

    .line 827
    :cond_83
    const/16 v3, 0x80

    iget v4, v2, Lorg/apache/xpath/patterns/StepPattern;->m_whatToShow:I

    if-ne v3, v4, :cond_8f

    .line 829
    const-string v3, "comment()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_29

    .line 831
    :cond_8f
    iget-object v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_name:Ljava/lang/String;

    if-eqz v3, :cond_b6

    .line 833
    iget v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_whatToShow:I

    if-ne v5, v3, :cond_9c

    .line 835
    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 838
    :cond_9c
    iget-object v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_namespace:Ljava/lang/String;

    if-eqz v3, :cond_af

    .line 840
    const-string v3, "{"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 841
    iget-object v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_namespace:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 842
    const-string v3, "}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 845
    :cond_af
    iget-object v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_29

    .line 847
    :cond_b6
    iget v3, v2, Lorg/apache/xpath/patterns/StepPattern;->m_whatToShow:I

    if-ne v5, v3, :cond_c1

    .line 849
    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_29

    .line 851
    :cond_c1
    const/16 v3, 0x500

    iget v4, v2, Lorg/apache/xpath/patterns/StepPattern;->m_whatToShow:I

    if-ne v3, v4, :cond_ce

    .line 854
    const-string v3, "doc-root()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_29

    .line 858
    :cond_ce
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lorg/apache/xpath/patterns/StepPattern;->m_whatToShow:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_29

    .line 792
    :cond_ec
    iget-object v2, v2, Lorg/apache/xpath/patterns/StepPattern;->m_relativePathPattern:Lorg/apache/xpath/patterns/StepPattern;

    goto/16 :goto_7

    .line 872
    :cond_f0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
