.class public Lcom/google/android/talk/AnimatedAdapter2$Diff;
.super Ljava/lang/Object;
.source "AnimatedAdapter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/AnimatedAdapter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Diff"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;,
        Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;,
        Lcom/google/android/talk/AnimatedAdapter2$Diff$Delta;,
        Lcom/google/android/talk/AnimatedAdapter2$Diff$EditList;,
        Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;
    }
.end annotation


# instance fields
.field private mCutoffTime:J

.field private mNewValues:[J

.field private mOldValues:[J

.field final synthetic this$0:Lcom/google/android/talk/AnimatedAdapter2;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/AnimatedAdapter2;[J[J)V
    .locals 0
    .parameter
    .parameter "orig"
    .parameter "rev"

    .prologue
    .line 567
    iput-object p1, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff;->this$0:Lcom/google/android/talk/AnimatedAdapter2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 568
    iput-object p2, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff;->mOldValues:[J

    .line 569
    iput-object p3, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff;->mNewValues:[J

    .line 570
    return-void
.end method

.method static synthetic access$500(Lcom/google/android/talk/AnimatedAdapter2$Diff;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 562
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff;->mNewValues:[J

    return-object v0
.end method

.method private computePath()Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;
    .locals 22

    .prologue
    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AnimatedAdapter2$Diff;->mOldValues:[J

    move-object v3, v0

    array-length v14, v3

    .line 585
    .local v14, N:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AnimatedAdapter2$Diff;->mNewValues:[J

    move-object v3, v0

    array-length v13, v3

    .line 587
    .local v13, M:I
    add-int v3, v14, v13

    add-int/lit8 v17, v3, 0x1

    .line 588
    .local v17, max:I
    mul-int/lit8 v3, v17, 0x2

    add-int/lit8 v20, v3, 0x1

    .line 589
    .local v20, size:I
    add-int/lit8 v3, v20, 0x1

    div-int/lit8 v18, v3, 0x2

    .line 590
    .local v18, middle:I
    move/from16 v0, v20

    new-array v0, v0, [Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;

    move-object/from16 v21, v0

    .line 592
    .local v21, v:[Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;
    add-int/lit8 v8, v18, 0x1

    new-instance v2, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;-><init>(Lcom/google/android/talk/AnimatedAdapter2$Diff;IILcom/google/android/talk/AnimatedAdapter2$Diff$Node;Z)V

    aput-object v2, v21, v8

    .line 593
    const/4 v15, 0x0

    .local v15, d:I
    :goto_0
    move v0, v15

    move/from16 v1, v17

    if-ge v0, v1, :cond_7

    .line 594
    move v0, v15

    neg-int v0, v0

    move/from16 v16, v0

    .local v16, k:I
    :goto_1
    move/from16 v0, v16

    move v1, v15

    if-gt v0, v1, :cond_5

    .line 595
    add-int v19, v18, v16

    .line 596
    .local v19, shift:I
    const/4 v6, 0x0

    .line 599
    .local v6, prev:Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;
    neg-int v3, v15

    move/from16 v0, v16

    move v1, v3

    if-eq v0, v1, :cond_0

    move/from16 v0, v16

    move v1, v15

    if-eq v0, v1, :cond_1

    const/4 v3, 0x1

    sub-int v3, v19, v3

    aget-object v3, v21, v3

    iget v3, v3, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;->x:I

    add-int/lit8 v4, v19, 0x1

    aget-object v4, v21, v4

    iget v4, v4, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;->x:I

    if-ge v3, v4, :cond_1

    .line 600
    :cond_0
    add-int/lit8 v3, v19, 0x1

    aget-object v3, v21, v3

    iget v4, v3, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;->x:I

    .line 601
    .local v4, i:I
    add-int/lit8 v3, v19, 0x1

    aget-object v6, v21, v3

    .line 607
    :goto_2
    const/4 v3, 0x1

    sub-int v3, v19, v3

    const/4 v5, 0x0

    aput-object v5, v21, v3

    .line 609
    sub-int v5, v4, v16

    .line 610
    .local v5, j:I
    new-instance v2, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;-><init>(Lcom/google/android/talk/AnimatedAdapter2$Diff;IILcom/google/android/talk/AnimatedAdapter2$Diff$Node;Z)V

    .line 612
    .local v2, node:Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;
    :goto_3
    if-ge v4, v14, :cond_2

    if-ge v5, v13, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AnimatedAdapter2$Diff;->mOldValues:[J

    move-object v3, v0

    aget-wide v8, v3, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AnimatedAdapter2$Diff;->mNewValues:[J

    move-object v3, v0

    aget-wide v10, v3, v5

    cmp-long v3, v8, v10

    if-nez v3, :cond_2

    .line 613
    add-int/lit8 v4, v4, 0x1

    .line 614
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 604
    .end local v2           #node:Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;
    .end local v4           #i:I
    .end local v5           #j:I
    :cond_1
    const/4 v3, 0x1

    sub-int v3, v19, v3

    aget-object v3, v21, v3

    iget v3, v3, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;->x:I

    add-int/lit8 v4, v3, 0x1

    .line 605
    .restart local v4       #i:I
    const/4 v3, 0x1

    sub-int v3, v19, v3

    aget-object v6, v21, v3

    goto :goto_2

    .line 616
    .restart local v2       #node:Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;
    .restart local v5       #j:I
    :cond_2
    iget v3, v2, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;->x:I

    if-le v4, v3, :cond_3

    .line 617
    new-instance v7, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;

    const/4 v12, 0x1

    move-object/from16 v8, p0

    move v9, v4

    move v10, v5

    move-object v11, v2

    invoke-direct/range {v7 .. v12}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;-><init>(Lcom/google/android/talk/AnimatedAdapter2$Diff;IILcom/google/android/talk/AnimatedAdapter2$Diff$Node;Z)V

    .end local v2           #node:Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;
    .local v7, node:Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;
    move-object v2, v7

    .line 620
    .end local v7           #node:Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;
    .restart local v2       #node:Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;
    :cond_3
    aput-object v2, v21, v19

    .line 622
    if-lt v4, v14, :cond_4

    if-lt v5, v13, :cond_4

    .line 623
    aget-object v3, v21, v19

    .line 631
    .end local v2           #node:Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;
    .end local v4           #i:I
    .end local v5           #j:I
    .end local v6           #prev:Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;
    .end local v16           #k:I
    .end local v19           #shift:I
    :goto_4
    return-object v3

    .line 594
    .restart local v2       #node:Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;
    .restart local v4       #i:I
    .restart local v5       #j:I
    .restart local v6       #prev:Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;
    .restart local v16       #k:I
    .restart local v19       #shift:I
    :cond_4
    add-int/lit8 v16, v16, 0x2

    goto/16 :goto_1

    .line 626
    .end local v2           #node:Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;
    .end local v4           #i:I
    .end local v5           #j:I
    .end local v6           #prev:Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;
    .end local v19           #shift:I
    :cond_5
    add-int v3, v18, v15

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    aput-object v4, v21, v3

    .line 627
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/talk/AnimatedAdapter2$Diff;->mCutoffTime:J

    move-wide v10, v0

    cmp-long v3, v8, v10

    if-lez v3, :cond_6

    .line 628
    new-instance v3, Lcom/google/android/talk/AnimatedAdapter2$TooLongException;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/android/talk/AnimatedAdapter2$TooLongException;-><init>(Lcom/google/android/talk/AnimatedAdapter2$1;)V

    throw v3

    .line 593
    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 631
    .end local v16           #k:I
    :cond_7
    const/4 v3, 0x0

    goto :goto_4
.end method

.method private expandPath(Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;)Lcom/google/android/talk/AnimatedAdapter2$Diff$EditList;
    .locals 10
    .parameter "path"

    .prologue
    .line 635
    new-instance v1, Lcom/google/android/talk/AnimatedAdapter2$Diff$EditList;

    invoke-direct {v1, p0}, Lcom/google/android/talk/AnimatedAdapter2$Diff$EditList;-><init>(Lcom/google/android/talk/AnimatedAdapter2$Diff;)V

    .line 636
    .local v1, diffs:Lcom/google/android/talk/AnimatedAdapter2$Diff$EditList;
    iget-boolean v6, p1, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;->isSnake:Z

    if-eqz v6, :cond_0

    .line 637
    iget-object p1, p1, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;->prev:Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;

    .line 639
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    iget-object v6, p1, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;->prev:Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;

    if-eqz v6, :cond_2

    iget-object v6, p1, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;->prev:Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;

    iget v6, v6, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;->y:I

    if-ltz v6, :cond_2

    .line 640
    iget-boolean v6, p1, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;->isSnake:Z

    if-eqz v6, :cond_1

    .line 641
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "bad diffpath: found snake when looking for diff"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 643
    :cond_1
    iget v2, p1, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;->x:I

    .line 644
    .local v2, i:I
    iget v4, p1, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;->y:I

    .line 646
    .local v4, j:I
    iget-object p1, p1, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;->prev:Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;

    .line 647
    iget v3, p1, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;->x:I

    .line 648
    .local v3, ianchor:I
    iget v5, p1, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;->y:I

    .line 650
    .local v5, janchor:I
    new-instance v0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Delta;

    new-instance v6, Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;

    iget-object v7, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff;->mOldValues:[J

    sub-int v8, v2, v3

    invoke-direct {v6, p0, v7, v3, v8}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;-><init>(Lcom/google/android/talk/AnimatedAdapter2$Diff;[JII)V

    new-instance v7, Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;

    iget-object v8, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff;->mNewValues:[J

    sub-int v9, v4, v5

    invoke-direct {v7, p0, v8, v5, v9}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;-><init>(Lcom/google/android/talk/AnimatedAdapter2$Diff;[JII)V

    const/4 v8, 0x0

    invoke-direct {v0, p0, v6, v7, v8}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Delta;-><init>(Lcom/google/android/talk/AnimatedAdapter2$Diff;Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;Lcom/google/android/talk/AnimatedAdapter2$1;)V

    .line 653
    .local v0, delta:Lcom/google/android/talk/AnimatedAdapter2$Diff$Delta;
    invoke-virtual {v1, v0}, Lcom/google/android/talk/AnimatedAdapter2$Diff$EditList;->insert(Lcom/google/android/talk/AnimatedAdapter2$Diff$Delta;)V

    .line 654
    iget-boolean v6, p1, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;->isSnake:Z

    if-eqz v6, :cond_0

    .line 655
    iget-object p1, p1, Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;->prev:Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;

    goto :goto_0

    .line 658
    .end local v0           #delta:Lcom/google/android/talk/AnimatedAdapter2$Diff$Delta;
    .end local v2           #i:I
    .end local v3           #ianchor:I
    .end local v4           #j:I
    .end local v5           #janchor:I
    :cond_2
    return-object v1
.end method


# virtual methods
.method public compute(J)Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;
    .locals 5
    .parameter "maxDiffTime"

    .prologue
    const/4 v4, 0x0

    .line 573
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    const-wide v1, 0x7fffffffffffffffL

    :goto_0
    iput-wide v1, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff;->mCutoffTime:J

    .line 575
    :try_start_0
    new-instance v1, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    invoke-direct {p0}, Lcom/google/android/talk/AnimatedAdapter2$Diff;->computePath()Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/talk/AnimatedAdapter2$Diff;->expandPath(Lcom/google/android/talk/AnimatedAdapter2$Diff$Node;)Lcom/google/android/talk/AnimatedAdapter2$Diff$EditList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;-><init>(Lcom/google/android/talk/AnimatedAdapter2$Diff;Lcom/google/android/talk/AnimatedAdapter2$Diff$EditList;Lcom/google/android/talk/AnimatedAdapter2$1;)V
    :try_end_0
    .catch Lcom/google/android/talk/AnimatedAdapter2$TooLongException; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    :goto_1
    return-object v1

    .line 573
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p1

    goto :goto_0

    .line 576
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 577
    .local v0, ex:Lcom/google/android/talk/AnimatedAdapter2$TooLongException;
    const-string v1, "talk"

    invoke-virtual {v0}, Lcom/google/android/talk/AnimatedAdapter2$TooLongException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v4

    .line 578
    goto :goto_1
.end method
