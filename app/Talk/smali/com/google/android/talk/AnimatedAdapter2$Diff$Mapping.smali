.class public Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;
.super Ljava/lang/Object;
.source "AnimatedAdapter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/AnimatedAdapter2$Diff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Mapping"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;
    }
.end annotation


# instance fields
.field mMainMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTransitions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;",
            ">;"
        }
    .end annotation
.end field

.field mTransitionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/android/talk/AnimatedAdapter2$Diff;


# direct methods
.method private constructor <init>(Lcom/google/android/talk/AnimatedAdapter2$Diff;Lcom/google/android/talk/AnimatedAdapter2$Diff$EditList;)V
    .locals 18
    .parameter
    .parameter "r"

    .prologue
    .line 817
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->this$1:Lcom/google/android/talk/AnimatedAdapter2$Diff;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 756
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mMainMap:Ljava/util/ArrayList;

    .line 759
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mTransitions:Ljava/util/HashMap;

    .line 762
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mTransitionsList:Ljava/util/ArrayList;

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mTransitions:Ljava/util/HashMap;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mMainMap:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 823
    const/4 v13, -0x1

    .line 825
    .local v13, key:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/talk/AnimatedAdapter2$Diff;->access$500(Lcom/google/android/talk/AnimatedAdapter2$Diff;)[J

    move-result-object v3

    array-length v3, v3

    if-ge v10, v3, :cond_0

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mMainMap:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 825
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 828
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/talk/AnimatedAdapter2$Diff$EditList;->size()I

    move-result v14

    .line 829
    .local v14, rSize:I
    const/4 v10, 0x0

    :goto_1
    if-ge v10, v14, :cond_4

    .line 830
    move-object/from16 v0, p2

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/google/android/talk/AnimatedAdapter2$Diff$EditList;->getDelta(I)Lcom/google/android/talk/AnimatedAdapter2$Diff$Delta;

    move-result-object v8

    .line 831
    .local v8, d:Lcom/google/android/talk/AnimatedAdapter2$Diff$Delta;
    iget-object v3, v8, Lcom/google/android/talk/AnimatedAdapter2$Diff$Delta;->mOrig:Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;

    invoke-virtual {v3}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, v8, Lcom/google/android/talk/AnimatedAdapter2$Diff$Delta;->mRev:Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;

    invoke-virtual {v3}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 829
    :cond_1
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 833
    :cond_2
    iget-object v3, v8, Lcom/google/android/talk/AnimatedAdapter2$Diff$Delta;->mOrig:Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;

    invoke-virtual {v3}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;->getCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mMainMap:Ljava/util/ArrayList;

    move-object v3, v0

    iget-object v4, v8, Lcom/google/android/talk/AnimatedAdapter2$Diff$Delta;->mRev:Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;

    invoke-virtual {v4}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;->getStart()I

    move-result v4

    add-int/lit8 v13, v13, -0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 838
    new-instance v2, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;

    const/4 v4, -0x1

    iget-object v3, v8, Lcom/google/android/talk/AnimatedAdapter2$Diff$Delta;->mOrig:Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;->valueAt(I)J

    move-result-wide v5

    const/4 v7, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;-><init>(Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;IJZ)V

    .line 839
    .local v2, t:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mTransitions:Ljava/util/HashMap;

    move-object v3, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mTransitionsList:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 841
    .end local v2           #t:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;
    :cond_3
    iget-object v3, v8, Lcom/google/android/talk/AnimatedAdapter2$Diff$Delta;->mRev:Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;

    invoke-virtual {v3}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mMainMap:Ljava/util/ArrayList;

    move-object v3, v0

    iget-object v4, v8, Lcom/google/android/talk/AnimatedAdapter2$Diff$Delta;->mRev:Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;

    invoke-virtual {v4}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;->getStart()I

    move-result v4

    add-int/lit8 v13, v13, -0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 846
    new-instance v2, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;

    const/4 v4, 0x0

    iget-object v3, v8, Lcom/google/android/talk/AnimatedAdapter2$Diff$Delta;->mRev:Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;->valueAt(I)J

    move-result-wide v5

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;-><init>(Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;IJZ)V

    .line 847
    .restart local v2       #t:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mTransitions:Ljava/util/HashMap;

    move-object v3, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mTransitionsList:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 855
    .end local v2           #t:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;
    .end local v8           #d:Lcom/google/android/talk/AnimatedAdapter2$Diff$Delta;
    :cond_4
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 857
    .local v12, inserts:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    .line 859
    .local v9, deleteCount:I
    const/4 v10, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mMainMap:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v10, v3, :cond_7

    .line 860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mMainMap:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 861
    .local v17, value:I
    if-gez v17, :cond_5

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mTransitions:Ljava/util/HashMap;

    move-object v3, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;

    .line 863
    .restart local v2       #t:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;
    iget-boolean v3, v2, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;->mAnimatingOut:Z

    if-nez v3, :cond_6

    .line 864
    sub-int v15, v10, v9

    .line 865
    .local v15, rowPosition:I
    iget-wide v3, v2, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;->mRowId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    iput v15, v2, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;->mRowPosition:I

    .line 859
    .end local v2           #t:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;
    .end local v15           #rowPosition:I
    :cond_5
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 868
    .restart local v2       #t:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 873
    .end local v2           #t:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;
    .end local v17           #value:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mTransitions:Ljava/util/HashMap;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_8
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 874
    .local v16, transformKey:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mTransitions:Ljava/util/HashMap;

    move-object v3, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;

    .line 875
    .restart local v2       #t:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;
    iget-boolean v3, v2, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;->mAnimatingOut:Z

    if-eqz v3, :cond_8

    .line 876
    iget-wide v3, v2, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;->mRowId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 877
    iget-wide v3, v2, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;->mRowId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 878
    .restart local v15       #rowPosition:I
    iput v15, v2, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;->mRowPosition:I

    goto :goto_5

    .line 882
    .end local v2           #t:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;
    .end local v15           #rowPosition:I
    .end local v16           #transformKey:I
    :cond_9
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/talk/AnimatedAdapter2$Diff;Lcom/google/android/talk/AnimatedAdapter2$Diff$EditList;Lcom/google/android/talk/AnimatedAdapter2$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 754
    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;-><init>(Lcom/google/android/talk/AnimatedAdapter2$Diff;Lcom/google/android/talk/AnimatedAdapter2$Diff$EditList;)V

    return-void
.end method


# virtual methods
.method public getAddingCount()I
    .locals 5

    .prologue
    .line 896
    const/4 v0, 0x0

    .line 897
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mTransitionsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 898
    iget-object v3, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mTransitions:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mTransitionsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;

    .line 899
    .local v1, d:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;
    iget-boolean v3, v1, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;->mAnimatingOut:Z

    if-nez v3, :cond_0

    .line 900
    add-int/lit8 v0, v0, 0x1

    .line 897
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 903
    .end local v1           #d:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;
    :cond_1
    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mMainMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDeletingRowId(I)J
    .locals 4
    .parameter "position"

    .prologue
    .line 787
    iget-object v2, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mMainMap:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 788
    .local v1, value:I
    if-gez v1, :cond_0

    .line 789
    iget-object v2, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mTransitions:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;

    .line 790
    .local v0, t:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;
    iget-wide v2, v0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;->mRowId:J

    .line 792
    .end local v0           #t:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getDeletionCount()I
    .locals 5

    .prologue
    .line 885
    const/4 v0, 0x0

    .line 886
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mTransitionsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 887
    iget-object v3, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mTransitions:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mTransitionsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;

    .line 888
    .local v1, d:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;
    iget-boolean v3, v1, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;->mAnimatingOut:Z

    if-eqz v3, :cond_0

    .line 889
    add-int/lit8 v0, v0, 0x1

    .line 886
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 892
    .end local v1           #d:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;
    :cond_1
    return v0
.end method

.method public getStatus(I)Lcom/google/android/talk/AnimatedAdapter2$Status;
    .locals 4
    .parameter "position"

    .prologue
    .line 765
    iget-object v2, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mMainMap:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 766
    .local v1, value:I
    if-gez v1, :cond_1

    .line 767
    iget-object v2, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mTransitions:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;

    .line 768
    .local v0, t:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;
    iget-boolean v2, v0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;->mAnimatingOut:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/android/talk/AnimatedAdapter2$Status;->Deleted:Lcom/google/android/talk/AnimatedAdapter2$Status;

    .line 770
    .end local v0           #t:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;
    :goto_0
    return-object v2

    .line 768
    .restart local v0       #t:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;
    :cond_0
    sget-object v2, Lcom/google/android/talk/AnimatedAdapter2$Status;->Added:Lcom/google/android/talk/AnimatedAdapter2$Status;

    goto :goto_0

    .line 770
    .end local v0           #t:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;
    :cond_1
    sget-object v2, Lcom/google/android/talk/AnimatedAdapter2$Status;->Normal:Lcom/google/android/talk/AnimatedAdapter2$Status;

    goto :goto_0
.end method

.method public isAddedOrDeleted(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 778
    invoke-virtual {p0, p1}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->getStatus(I)Lcom/google/android/talk/AnimatedAdapter2$Status;

    move-result-object v0

    .line 779
    .local v0, s:Lcom/google/android/talk/AnimatedAdapter2$Status;
    sget-object v1, Lcom/google/android/talk/AnimatedAdapter2$Status;->Added:Lcom/google/android/talk/AnimatedAdapter2$Status;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/android/talk/AnimatedAdapter2$Status;->Deleted:Lcom/google/android/talk/AnimatedAdapter2$Status;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public translate(I)I
    .locals 4
    .parameter "position"

    .prologue
    .line 796
    iget-object v2, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mMainMap:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 797
    .local v1, value:I
    if-gez v1, :cond_0

    .line 798
    iget-object v2, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->mTransitions:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;

    .line 799
    .local v0, t:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;
    iget v2, v0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;->mRowPosition:I

    .line 801
    .end local v0           #t:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping$TransformationData;
    :goto_0
    return v2

    :cond_0
    move v2, v1

    goto :goto_0
.end method
