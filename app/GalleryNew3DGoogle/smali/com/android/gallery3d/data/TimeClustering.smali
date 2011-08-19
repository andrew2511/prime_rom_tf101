.class public Lcom/android/gallery3d/data/TimeClustering;
.super Lcom/android/gallery3d/data/Clustering;
.source "TimeClustering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/data/TimeClustering$DateComparator;
    }
.end annotation


# static fields
.field private static CLUSTER_SPLIT_MULTIPLIER:I

.field private static final sDateComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/gallery3d/data/SmallItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mClusterSplitTime:J

.field private mClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Cluster;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrCluster:Lcom/android/gallery3d/data/Cluster;

.field private mLargeClusterSplitTime:J

.field private mMaxClusterSize:I

.field private mMinClusterSize:I

.field private mNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    const/4 v0, 0x3

    sput v0, Lcom/android/gallery3d/data/TimeClustering;->CLUSTER_SPLIT_MULTIPLIER:I

    .line 81
    new-instance v0, Lcom/android/gallery3d/data/TimeClustering$DateComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/data/TimeClustering$DateComparator;-><init>(Lcom/android/gallery3d/data/TimeClustering$1;)V

    sput-object v0, Lcom/android/gallery3d/data/TimeClustering;->sDateComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/gallery3d/data/Clustering;-><init>()V

    .line 73
    const-wide/32 v0, 0x3763b0

    iput-wide v0, p0, Lcom/android/gallery3d/data/TimeClustering;->mClusterSplitTime:J

    .line 75
    iget-wide v0, p0, Lcom/android/gallery3d/data/TimeClustering;->mClusterSplitTime:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/gallery3d/data/TimeClustering;->mLargeClusterSplitTime:J

    .line 77
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/gallery3d/data/TimeClustering;->mMinClusterSize:I

    .line 78
    const/16 v0, 0x23

    iput v0, p0, Lcom/android/gallery3d/data/TimeClustering;->mMaxClusterSize:I

    .line 91
    iput-object p1, p0, Lcom/android/gallery3d/data/TimeClustering;->mContext:Landroid/content/Context;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Lcom/android/gallery3d/data/Cluster;

    invoke-direct {v0}, Lcom/android/gallery3d/data/Cluster;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/android/gallery3d/data/Cluster;

    .line 94
    return-void
.end method

.method private compute(Lcom/android/gallery3d/data/SmallItem;)V
    .locals 9
    .parameter "currentItem"

    .prologue
    .line 189
    if-eqz p1, :cond_7

    .line 190
    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 191
    .local v2, numClusters:I
    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/android/gallery3d/data/Cluster;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/Cluster;->size()I

    move-result v3

    .line 192
    .local v3, numCurrClusterItems:I
    const/4 v0, 0x0

    .line 193
    .local v0, geographicallySeparateItem:Z
    const/4 v1, 0x0

    .line 197
    .local v1, itemAddedToCurrentCluster:Z
    if-nez v3, :cond_1

    .line 198
    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/android/gallery3d/data/Cluster;

    invoke-virtual {v5, p1}, Lcom/android/gallery3d/data/Cluster;->addItem(Lcom/android/gallery3d/data/SmallItem;)V

    .line 242
    .end local v0           #geographicallySeparateItem:Z
    .end local v1           #itemAddedToCurrentCluster:Z
    .end local v2           #numClusters:I
    .end local v3           #numCurrClusterItems:I
    :cond_0
    :goto_0
    return-void

    .line 200
    .restart local v0       #geographicallySeparateItem:Z
    .restart local v1       #itemAddedToCurrentCluster:Z
    .restart local v2       #numClusters:I
    .restart local v3       #numCurrClusterItems:I
    :cond_1
    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/android/gallery3d/data/Cluster;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/Cluster;->getLastItem()Lcom/android/gallery3d/data/SmallItem;

    move-result-object v4

    .line 201
    .local v4, prevItem:Lcom/android/gallery3d/data/SmallItem;
    invoke-static {v4, p1}, Lcom/android/gallery3d/data/TimeClustering;->isGeographicallySeparated(Lcom/android/gallery3d/data/SmallItem;Lcom/android/gallery3d/data/SmallItem;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 202
    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/android/gallery3d/data/Cluster;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    const/4 v0, 0x1

    .line 217
    :goto_1
    if-nez v1, :cond_0

    .line 218
    new-instance v5, Lcom/android/gallery3d/data/Cluster;

    invoke-direct {v5}, Lcom/android/gallery3d/data/Cluster;-><init>()V

    iput-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/android/gallery3d/data/Cluster;

    .line 219
    if-eqz v0, :cond_2

    .line 220
    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/android/gallery3d/data/Cluster;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/gallery3d/data/Cluster;->mGeographicallySeparatedFromPrevCluster:Z

    .line 222
    :cond_2
    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/android/gallery3d/data/Cluster;

    invoke-virtual {v5, p1}, Lcom/android/gallery3d/data/Cluster;->addItem(Lcom/android/gallery3d/data/SmallItem;)V

    goto :goto_0

    .line 204
    :cond_3
    iget v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mMaxClusterSize:I

    if-le v3, v5, :cond_4

    .line 205
    invoke-direct {p0}, Lcom/android/gallery3d/data/TimeClustering;->splitAndAddCurrentCluster()V

    goto :goto_1

    .line 206
    :cond_4
    invoke-static {v4, p1}, Lcom/android/gallery3d/data/TimeClustering;->timeDistance(Lcom/android/gallery3d/data/SmallItem;Lcom/android/gallery3d/data/SmallItem;)J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/gallery3d/data/TimeClustering;->mClusterSplitTime:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_5

    .line 207
    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/android/gallery3d/data/Cluster;

    invoke-virtual {v5, p1}, Lcom/android/gallery3d/data/Cluster;->addItem(Lcom/android/gallery3d/data/SmallItem;)V

    .line 208
    const/4 v1, 0x1

    goto :goto_1

    .line 209
    :cond_5
    if-lez v2, :cond_6

    iget v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mMinClusterSize:I

    if-ge v3, v5, :cond_6

    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/android/gallery3d/data/Cluster;

    iget-boolean v5, v5, Lcom/android/gallery3d/data/Cluster;->mGeographicallySeparatedFromPrevCluster:Z

    if-nez v5, :cond_6

    .line 211
    invoke-direct {p0}, Lcom/android/gallery3d/data/TimeClustering;->mergeAndAddCurrentCluster()V

    goto :goto_1

    .line 213
    :cond_6
    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/android/gallery3d/data/Cluster;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 226
    .end local v0           #geographicallySeparateItem:Z
    .end local v1           #itemAddedToCurrentCluster:Z
    .end local v2           #numClusters:I
    .end local v3           #numCurrClusterItems:I
    .end local v4           #prevItem:Lcom/android/gallery3d/data/SmallItem;
    :cond_7
    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/android/gallery3d/data/Cluster;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/Cluster;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 227
    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 228
    .restart local v2       #numClusters:I
    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/android/gallery3d/data/Cluster;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/Cluster;->size()I

    move-result v3

    .line 231
    .restart local v3       #numCurrClusterItems:I
    iget v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mMaxClusterSize:I

    if-le v3, v5, :cond_8

    .line 232
    invoke-direct {p0}, Lcom/android/gallery3d/data/TimeClustering;->splitAndAddCurrentCluster()V

    .line 239
    :goto_2
    new-instance v5, Lcom/android/gallery3d/data/Cluster;

    invoke-direct {v5}, Lcom/android/gallery3d/data/Cluster;-><init>()V

    iput-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/android/gallery3d/data/Cluster;

    goto :goto_0

    .line 233
    :cond_8
    if-lez v2, :cond_9

    iget v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mMinClusterSize:I

    if-ge v3, v5, :cond_9

    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/android/gallery3d/data/Cluster;

    iget-boolean v5, v5, Lcom/android/gallery3d/data/Cluster;->mGeographicallySeparatedFromPrevCluster:Z

    if-nez v5, :cond_9

    .line 235
    invoke-direct {p0}, Lcom/android/gallery3d/data/TimeClustering;->mergeAndAddCurrentCluster()V

    goto :goto_2

    .line 237
    :cond_9
    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/android/gallery3d/data/Cluster;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private getPartitionIndexForCurrentCluster()I
    .locals 26

    .prologue
    .line 265
    const/4 v14, -0x1

    .line 266
    .local v14, partitionIndex:I
    const/high16 v10, 0x4000

    .line 267
    .local v10, largestChange:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/android/gallery3d/data/Cluster;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/gallery3d/data/Cluster;->getItems()Ljava/util/ArrayList;

    move-result-object v3

    .line 268
    .local v3, currClusterItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/SmallItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/android/gallery3d/data/Cluster;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/gallery3d/data/Cluster;->size()I

    move-result v13

    .line 269
    .local v13, numCurrClusterItems:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/data/TimeClustering;->mMinClusterSize:I

    move v11, v0

    .line 272
    .local v11, minClusterSize:I
    add-int/lit8 v22, v11, 0x1

    move v0, v13

    move/from16 v1, v22

    if-le v0, v1, :cond_3

    .line 273
    move v9, v11

    .local v9, i:I
    :goto_0
    sub-int v22, v13, v11

    move v0, v9

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    .line 274
    const/16 v22, 0x1

    sub-int v22, v9, v22

    move-object v0, v3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/gallery3d/data/SmallItem;

    .line 275
    .local v15, prevItem:Lcom/android/gallery3d/data/SmallItem;
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/data/SmallItem;

    .line 276
    .local v4, currItem:Lcom/android/gallery3d/data/SmallItem;
    add-int/lit8 v22, v9, 0x1

    move-object v0, v3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/gallery3d/data/SmallItem;

    .line 278
    .local v12, nextItem:Lcom/android/gallery3d/data/SmallItem;
    move-object v0, v12

    iget-wide v0, v0, Lcom/android/gallery3d/data/SmallItem;->dateInMs:J

    move-wide/from16 v18, v0

    .line 279
    .local v18, timeNext:J
    move-object v0, v4

    iget-wide v0, v0, Lcom/android/gallery3d/data/SmallItem;->dateInMs:J

    move-wide/from16 v16, v0

    .line 280
    .local v16, timeCurr:J
    move-object v0, v15

    iget-wide v0, v0, Lcom/android/gallery3d/data/SmallItem;->dateInMs:J

    move-wide/from16 v20, v0

    .line 282
    .local v20, timePrev:J
    const-wide/16 v22, 0x0

    cmp-long v22, v18, v22

    if-eqz v22, :cond_0

    const-wide/16 v22, 0x0

    cmp-long v22, v16, v22

    if-eqz v22, :cond_0

    const-wide/16 v22, 0x0

    cmp-long v22, v20, v22

    if-nez v22, :cond_1

    .line 273
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 284
    :cond_1
    sub-long v22, v18, v16

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    .line 285
    .local v5, diff1:J
    sub-long v22, v16, v20

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    .line 287
    .local v7, diff2:J
    move-wide v0, v5

    long-to-float v0, v0

    move/from16 v22, v0

    move-wide v0, v7

    long-to-float v0, v0

    move/from16 v23, v0

    const v24, 0x3c23d70a

    add-float v23, v23, v24

    div-float v22, v22, v23

    move-wide v0, v7

    long-to-float v0, v0

    move/from16 v23, v0

    move-wide v0, v5

    long-to-float v0, v0

    move/from16 v24, v0

    const v25, 0x3c23d70a

    add-float v24, v24, v25

    div-float v23, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 288
    .local v2, change:F
    cmpl-float v22, v2, v10

    if-lez v22, :cond_0

    .line 289
    invoke-static {v4, v15}, Lcom/android/gallery3d/data/TimeClustering;->timeDistance(Lcom/android/gallery3d/data/SmallItem;Lcom/android/gallery3d/data/SmallItem;)J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/gallery3d/data/TimeClustering;->mLargeClusterSplitTime:J

    move-wide/from16 v24, v0

    cmp-long v22, v22, v24

    if-lez v22, :cond_2

    .line 290
    move v14, v9

    .line 291
    move v10, v2

    goto :goto_1

    .line 292
    :cond_2
    invoke-static {v12, v4}, Lcom/android/gallery3d/data/TimeClustering;->timeDistance(Lcom/android/gallery3d/data/SmallItem;Lcom/android/gallery3d/data/SmallItem;)J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/gallery3d/data/TimeClustering;->mLargeClusterSplitTime:J

    move-wide/from16 v24, v0

    cmp-long v22, v22, v24

    if-lez v22, :cond_0

    .line 293
    add-int/lit8 v14, v9, 0x1

    .line 294
    move v10, v2

    goto :goto_1

    .line 299
    .end local v2           #change:F
    .end local v4           #currItem:Lcom/android/gallery3d/data/SmallItem;
    .end local v5           #diff1:J
    .end local v7           #diff2:J
    .end local v9           #i:I
    .end local v12           #nextItem:Lcom/android/gallery3d/data/SmallItem;
    .end local v15           #prevItem:Lcom/android/gallery3d/data/SmallItem;
    .end local v16           #timeCurr:J
    .end local v18           #timeNext:J
    .end local v20           #timePrev:J
    :cond_3
    return v14
.end method

.method private static isGeographicallySeparated(Lcom/android/gallery3d/data/SmallItem;Lcom/android/gallery3d/data/SmallItem;)Z
    .locals 11
    .parameter "itemA"
    .parameter "itemB"

    .prologue
    const/4 v10, 0x0

    .line 319
    iget-wide v0, p0, Lcom/android/gallery3d/data/SmallItem;->lat:D

    iget-wide v2, p0, Lcom/android/gallery3d/data/SmallItem;->lng:D

    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/util/Utils;->isValidLocation(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/android/gallery3d/data/SmallItem;->lat:D

    iget-wide v2, p1, Lcom/android/gallery3d/data/SmallItem;->lng:D

    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/util/Utils;->isValidLocation(DD)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v10

    .line 329
    :goto_0
    return v0

    .line 324
    :cond_1
    iget-wide v0, p0, Lcom/android/gallery3d/data/SmallItem;->lat:D

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/gallery3d/data/SmallItem;->lng:D

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    iget-wide v4, p1, Lcom/android/gallery3d/data/SmallItem;->lat:D

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    iget-wide v6, p1, Lcom/android/gallery3d/data/SmallItem;->lng:D

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/android/gallery3d/util/Utils;->fastDistanceMeters(DDDD)D

    move-result-wide v8

    .line 329
    .local v8, distance:D
    invoke-static {v8, v9}, Lcom/android/gallery3d/util/Utils;->toMile(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4034

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v10

    goto :goto_0
.end method

.method private mergeAndAddCurrentCluster()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 303
    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 304
    .local v2, numClusters:I
    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    sub-int v6, v2, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/data/Cluster;

    .line 305
    .local v4, prevCluster:Lcom/android/gallery3d/data/Cluster;
    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/android/gallery3d/data/Cluster;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/Cluster;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 306
    .local v0, currClusterItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/SmallItem;>;"
    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/android/gallery3d/data/Cluster;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/Cluster;->size()I

    move-result v3

    .line 307
    .local v3, numCurrClusterItems:I
    invoke-virtual {v4}, Lcom/android/gallery3d/data/Cluster;->size()I

    move-result v5

    iget v6, p0, Lcom/android/gallery3d/data/TimeClustering;->mMinClusterSize:I

    if-ge v5, v6, :cond_1

    .line 308
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 309
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/data/SmallItem;

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/data/Cluster;->addItem(Lcom/android/gallery3d/data/SmallItem;)V

    .line 308
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 311
    :cond_0
    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    sub-int v6, v2, v7

    invoke-virtual {v5, v6, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 315
    .end local v1           #i:I
    :goto_1
    return-void

    .line 313
    :cond_1
    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/android/gallery3d/data/Cluster;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private setTimeRange(JI)V
    .locals 7
    .parameter "timeRange"
    .parameter "numItems"

    .prologue
    .line 174
    if-eqz p3, :cond_0

    .line 175
    div-int/lit8 v6, p3, 0x9

    .line 178
    .local v6, meanItemsPerCluster:I
    div-int/lit8 v0, v6, 0x2

    iput v0, p0, Lcom/android/gallery3d/data/TimeClustering;->mMinClusterSize:I

    .line 179
    mul-int/lit8 v0, v6, 0x2

    iput v0, p0, Lcom/android/gallery3d/data/TimeClustering;->mMaxClusterSize:I

    .line 180
    int-to-long v0, p3

    div-long v0, p1, v0

    sget v2, Lcom/android/gallery3d/data/TimeClustering;->CLUSTER_SPLIT_MULTIPLIER:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/gallery3d/data/TimeClustering;->mClusterSplitTime:J

    .line 182
    .end local v6           #meanItemsPerCluster:I
    :cond_0
    iget-wide v0, p0, Lcom/android/gallery3d/data/TimeClustering;->mClusterSplitTime:J

    const-wide/32 v2, 0xea60

    const-wide/32 v4, 0x6ddd00

    invoke-static/range {v0 .. v5}, Lcom/android/gallery3d/util/Utils;->clamp(JJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/TimeClustering;->mClusterSplitTime:J

    .line 183
    iget-wide v0, p0, Lcom/android/gallery3d/data/TimeClustering;->mClusterSplitTime:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/gallery3d/data/TimeClustering;->mLargeClusterSplitTime:J

    .line 184
    iget v0, p0, Lcom/android/gallery3d/data/TimeClustering;->mMinClusterSize:I

    const/16 v1, 0x8

    const/16 v2, 0xf

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/util/Utils;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/TimeClustering;->mMinClusterSize:I

    .line 185
    iget v0, p0, Lcom/android/gallery3d/data/TimeClustering;->mMaxClusterSize:I

    const/16 v1, 0x14

    const/16 v2, 0x32

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/util/Utils;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/data/TimeClustering;->mMaxClusterSize:I

    .line 186
    return-void
.end method

.method private splitAndAddCurrentCluster()V
    .locals 7

    .prologue
    .line 245
    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/android/gallery3d/data/Cluster;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/Cluster;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 246
    .local v0, currClusterItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/SmallItem;>;"
    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/android/gallery3d/data/Cluster;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/Cluster;->size()I

    move-result v2

    .line 247
    .local v2, numCurrClusterItems:I
    invoke-direct {p0}, Lcom/android/gallery3d/data/TimeClustering;->getPartitionIndexForCurrentCluster()I

    move-result v4

    .line 248
    .local v4, secondPartitionStartIndex:I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 249
    new-instance v3, Lcom/android/gallery3d/data/Cluster;

    invoke-direct {v3}, Lcom/android/gallery3d/data/Cluster;-><init>()V

    .line 250
    .local v3, partitionedCluster:Lcom/android/gallery3d/data/Cluster;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 251
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/data/SmallItem;

    invoke-virtual {v3, v5}, Lcom/android/gallery3d/data/Cluster;->addItem(Lcom/android/gallery3d/data/SmallItem;)V

    .line 250
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    :cond_0
    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    new-instance v3, Lcom/android/gallery3d/data/Cluster;

    .end local v3           #partitionedCluster:Lcom/android/gallery3d/data/Cluster;
    invoke-direct {v3}, Lcom/android/gallery3d/data/Cluster;-><init>()V

    .line 255
    .restart local v3       #partitionedCluster:Lcom/android/gallery3d/data/Cluster;
    move v1, v4

    :goto_1
    if-ge v1, v2, :cond_1

    .line 256
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/data/SmallItem;

    invoke-virtual {v3, v5}, Lcom/android/gallery3d/data/Cluster;->addItem(Lcom/android/gallery3d/data/SmallItem;)V

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 258
    :cond_1
    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    .end local v1           #j:I
    .end local v3           #partitionedCluster:Lcom/android/gallery3d/data/Cluster;
    :goto_2
    return-void

    .line 260
    :cond_2
    iget-object v5, p0, Lcom/android/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/gallery3d/data/TimeClustering;->mCurrCluster:Lcom/android/gallery3d/data/Cluster;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private static timeDistance(Lcom/android/gallery3d/data/SmallItem;Lcom/android/gallery3d/data/SmallItem;)J
    .locals 4
    .parameter "a"
    .parameter "b"

    .prologue
    .line 334
    iget-wide v0, p0, Lcom/android/gallery3d/data/SmallItem;->dateInMs:J

    iget-wide v2, p1, Lcom/android/gallery3d/data/SmallItem;->dateInMs:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public getCluster(I)Ljava/util/ArrayList;
    .locals 5
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v4, p0, Lcom/android/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/gallery3d/data/Cluster;

    invoke-virtual {p0}, Lcom/android/gallery3d/data/Cluster;->getItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 161
    .local v1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/SmallItem;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 162
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 163
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/gallery3d/data/SmallItem;

    iget-object v4, p0, Lcom/android/gallery3d/data/SmallItem;->path:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_0
    return-object v3
.end method

.method public getClusterName(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/gallery3d/data/TimeClustering;->mNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getNumberOfClusters()I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public run(Lcom/android/gallery3d/data/MediaSet;)V
    .locals 20
    .parameter "baseSet"

    .prologue
    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v17

    .line 99
    .local v17, total:I
    move/from16 v0, v17

    new-array v0, v0, [Lcom/android/gallery3d/data/SmallItem;

    move-object v5, v0

    .line 100
    .local v5, buf:[Lcom/android/gallery3d/data/SmallItem;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [D

    move-object v8, v0

    .line 102
    .local v8, latLng:[D
    new-instance v18, Lcom/android/gallery3d/data/TimeClustering$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v17

    move-object v3, v8

    move-object v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/data/TimeClustering$1;-><init>(Lcom/android/gallery3d/data/TimeClustering;I[D[Lcom/android/gallery3d/data/SmallItem;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/MediaSet;->enumerateTotalMediaItems(Lcom/android/gallery3d/data/MediaSet$ItemConsumer;)V

    .line 115
    new-instance v7, Ljava/util/ArrayList;

    move-object v0, v7

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    .local v7, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/SmallItem;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    move v0, v6

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    .line 117
    aget-object v18, v5, v6

    if-eqz v18, :cond_0

    .line 118
    aget-object v18, v5, v6

    move-object v0, v7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 122
    :cond_1
    sget-object v18, Lcom/android/gallery3d/data/TimeClustering;->sDateComparator:Ljava/util/Comparator;

    move-object v0, v7

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 124
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 125
    .local v14, n:I
    const-wide/16 v12, 0x0

    .line 126
    .local v12, minTime:J
    const-wide/16 v10, 0x0

    .line 127
    .local v10, maxTime:J
    const/4 v6, 0x0

    .end local p1
    :goto_1
    if-ge v6, v14, :cond_4

    .line 128
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/data/SmallItem;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/gallery3d/data/SmallItem;->dateInMs:J

    move-wide v15, v0

    .line 129
    .local v15, t:J
    const-wide/16 v18, 0x0

    cmp-long v18, v15, v18

    if-nez v18, :cond_2

    .line 127
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 130
    :cond_2
    const-wide/16 v18, 0x0

    cmp-long v18, v12, v18

    if-nez v18, :cond_3

    .line 131
    move-wide v10, v15

    move-wide v12, v15

    goto :goto_2

    .line 133
    :cond_3
    move-wide v0, v12

    move-wide v2, v15

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 134
    move-wide v0, v10

    move-wide v2, v15

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    goto :goto_2

    .line 138
    .end local v15           #t:J
    :cond_4
    sub-long v18, v10, v12

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/data/TimeClustering;->setTimeRange(JI)V

    .line 140
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v14, :cond_5

    .line 141
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/data/SmallItem;

    invoke-direct/range {p0 .. p1}, Lcom/android/gallery3d/data/TimeClustering;->compute(Lcom/android/gallery3d/data/SmallItem;)V

    .line 140
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 144
    :cond_5
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/gallery3d/data/TimeClustering;->compute(Lcom/android/gallery3d/data/SmallItem;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 147
    .local v9, m:I
    move v0, v9

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/data/TimeClustering;->mNames:[Ljava/lang/String;

    .line 148
    const/4 v6, 0x0

    :goto_4
    if-ge v6, v9, :cond_6

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/TimeClustering;->mNames:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/TimeClustering;->mClusters:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/data/Cluster;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/TimeClustering;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/Cluster;->generateCaption(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v18, v6

    .line 148
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 151
    :cond_6
    return-void
.end method
