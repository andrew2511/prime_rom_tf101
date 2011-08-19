.class public final Lcom/ecareme/pixwe/media/MediaClustering;
.super Ljava/lang/Object;
.source "MediaClustering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecareme/pixwe/media/MediaClustering$Cluster;
    }
.end annotation


# static fields
.field private static CLUSTER_SPLIT_MULTIPLIER:I = 0x0

.field private static final GEOGRAPHIC_DISTANCE_CUTOFF_IN_MILES:I = 0x14

.field private static final MAX_CLUSTER_SPLIT_TIME_IN_MS:J = 0x6ddd00L

.field private static final MAX_MAX_CLUSTER_SIZE:I = 0x32

.field private static final MAX_MIN_CLUSTER_SIZE:I = 0xf

.field private static final MIN_CLUSTER_SPLIT_TIME_IN_MS:J = 0xea60L

.field private static final MIN_MAX_CLUSTER_SIZE:I = 0x14

.field private static final MIN_MIN_CLUSTER_SIZE:I = 0x8

.field private static final MIN_PARTITION_CHANGE_FACTOR:I = 0x2

.field private static final NUM_CLUSTERS_TARGETED:I = 0x9

.field private static final PARTITION_CLUSTER_SPLIT_TIME_FACTOR:I = 0x2


# instance fields
.field private mClusterSplitTime:J

.field private mClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ecareme/pixwe/media/MediaClustering$Cluster;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrCluster:Lcom/ecareme/pixwe/media/MediaClustering$Cluster;

.field private mIsPicassaAlbum:Z

.field private mLargeClusterSplitTime:J

.field private mMaxClusterSize:I

.field private mMinClusterSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x3

    sput v0, Lcom/ecareme/pixwe/media/MediaClustering;->CLUSTER_SPLIT_MULTIPLIER:I

    .line 41
    return-void
.end method

.method constructor <init>(Z)V
    .locals 4
    .parameter "isPicassaAlbum"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mIsPicassaAlbum:Z

    .line 81
    const-wide/32 v0, 0x3763b0

    iput-wide v0, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mClusterSplitTime:J

    .line 82
    iget-wide v0, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mClusterSplitTime:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mLargeClusterSplitTime:J

    .line 83
    const/16 v0, 0xb

    iput v0, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mMinClusterSize:I

    .line 84
    const/16 v0, 0x23

    iput v0, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mMaxClusterSize:I

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mClusters:Ljava/util/ArrayList;

    .line 88
    iput-boolean p1, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mIsPicassaAlbum:Z

    .line 89
    new-instance v0, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;

    iget-boolean v1, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mIsPicassaAlbum:Z

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;-><init>(Z)V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mCurrCluster:Lcom/ecareme/pixwe/media/MediaClustering$Cluster;

    .line 90
    return-void
.end method

.method private getPartitionIndexForCurrentCluster()I
    .locals 20

    .prologue
    .line 216
    const/4 v14, -0x1

    .line 217
    .local v14, partitionIndex:I
    const/high16 v10, 0x4000

    .line 218
    .local v10, largestChange:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaClustering;->mCurrCluster:Lcom/ecareme/pixwe/media/MediaClustering$Cluster;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->getItems()Ljava/util/ArrayList;

    move-result-object v3

    .line 219
    .local v3, currClusterItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaClustering;->mCurrCluster:Lcom/ecareme/pixwe/media/MediaClustering$Cluster;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->mNumItemsLoaded:I

    move v13, v0

    .line 220
    .local v13, numCurrClusterItems:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/MediaClustering;->mMinClusterSize:I

    move v11, v0

    .line 223
    .local v11, minClusterSize:I
    add-int/lit8 v16, v11, 0x1

    move v0, v13

    move/from16 v1, v16

    if-le v0, v1, :cond_0

    .line 224
    move v9, v11

    .local v9, i:I
    :goto_0
    sub-int v16, v13, v11

    move v0, v9

    move/from16 v1, v16

    if-lt v0, v1, :cond_1

    .line 245
    .end local v9           #i:I
    :cond_0
    return v14

    .line 225
    .restart local v9       #i:I
    :cond_1
    const/16 v16, 0x1

    sub-int v16, v9, v16

    move-object v0, v3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/ecareme/pixwe/media/MediaItem;

    .line 226
    .local v15, prevItem:Lcom/ecareme/pixwe/media/MediaItem;
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ecareme/pixwe/media/MediaItem;

    .line 227
    .local v4, currItem:Lcom/ecareme/pixwe/media/MediaItem;
    add-int/lit8 v16, v9, 0x1

    move-object v0, v3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/ecareme/pixwe/media/MediaItem;

    .line 229
    .local v12, nextItem:Lcom/ecareme/pixwe/media/MediaItem;
    invoke-virtual {v15}, Lcom/ecareme/pixwe/media/MediaItem;->isDateTakenValid()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-virtual {v4}, Lcom/ecareme/pixwe/media/MediaItem;->isDateModifiedValid()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-virtual {v12}, Lcom/ecareme/pixwe/media/MediaItem;->isDateModifiedValid()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 230
    move-object v0, v12

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mDateTakenInMs:J

    move-wide/from16 v16, v0

    move-object v0, v4

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mDateTakenInMs:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    .line 231
    .local v5, diff1:J
    move-object v0, v4

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mDateTakenInMs:J

    move-wide/from16 v16, v0

    move-object v0, v15

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mDateTakenInMs:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    .line 232
    .local v7, diff2:J
    move-wide v0, v5

    long-to-float v0, v0

    move/from16 v16, v0

    move-wide v0, v7

    long-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x3c23d70a

    add-float v17, v17, v18

    div-float v16, v16, v17

    move-wide v0, v7

    long-to-float v0, v0

    move/from16 v17, v0

    move-wide v0, v5

    long-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x3c23d70a

    add-float v18, v18, v19

    div-float v17, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 233
    .local v2, change:F
    cmpl-float v16, v2, v10

    if-lez v16, :cond_2

    .line 234
    invoke-static {v4, v15}, Lcom/ecareme/pixwe/media/MediaClustering;->timeDistance(Lcom/ecareme/pixwe/media/MediaItem;Lcom/ecareme/pixwe/media/MediaItem;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaClustering;->mLargeClusterSplitTime:J

    move-wide/from16 v18, v0

    cmp-long v16, v16, v18

    if-lez v16, :cond_3

    .line 235
    move v14, v9

    .line 236
    move v10, v2

    .line 224
    .end local v2           #change:F
    .end local v5           #diff1:J
    .end local v7           #diff2:J
    :cond_2
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 237
    .restart local v2       #change:F
    .restart local v5       #diff1:J
    .restart local v7       #diff2:J
    :cond_3
    invoke-static {v12, v4}, Lcom/ecareme/pixwe/media/MediaClustering;->timeDistance(Lcom/ecareme/pixwe/media/MediaItem;Lcom/ecareme/pixwe/media/MediaItem;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaClustering;->mLargeClusterSplitTime:J

    move-wide/from16 v18, v0

    cmp-long v16, v16, v18

    if-lez v16, :cond_2

    .line 238
    add-int/lit8 v14, v9, 0x1

    .line 239
    move v10, v2

    goto :goto_1
.end method

.method private static isGeographicallySeparated(Lcom/ecareme/pixwe/media/MediaItem;Lcom/ecareme/pixwe/media/MediaItem;)Z
    .locals 9
    .parameter "a"
    .parameter "b"

    .prologue
    .line 387
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/MediaItem;->isLatLongValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/MediaItem;->isLatLongValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-wide v0, p0, Lcom/ecareme/pixwe/media/MediaItem;->mLatitude:D

    iget-wide v2, p0, Lcom/ecareme/pixwe/media/MediaItem;->mLongitude:D

    .line 389
    iget-wide v4, p1, Lcom/ecareme/pixwe/media/MediaItem;->mLatitude:D

    iget-wide v6, p1, Lcom/ecareme/pixwe/media/MediaItem;->mLongitude:D

    .line 388
    invoke-static/range {v0 .. v7}, Lcom/ecareme/pixwe/media/LocationMediaFilter;->distanceBetween(DDDD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/media/LocationMediaFilter;->toMile(D)D

    move-result-wide v0

    .line 389
    const-wide/high16 v2, 0x3fe0

    .line 388
    add-double/2addr v0, v2

    double-to-int v8, v0

    .line 390
    .local v8, distance:I
    const/16 v0, 0x14

    if-le v8, v0, :cond_0

    .line 391
    const/4 v0, 0x1

    .line 394
    .end local v8           #distance:I
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mergeAndAddCurrentCluster()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 249
    iget-object v5, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 250
    .local v2, numClusters:I
    iget-object v5, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mClusters:Ljava/util/ArrayList;

    sub-int v6, v2, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;

    .line 251
    .local v4, prevCluster:Lcom/ecareme/pixwe/media/MediaClustering$Cluster;
    iget-object v5, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mCurrCluster:Lcom/ecareme/pixwe/media/MediaClustering$Cluster;

    invoke-virtual {v5}, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 252
    .local v0, currClusterItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    iget-object v5, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mCurrCluster:Lcom/ecareme/pixwe/media/MediaClustering$Cluster;

    iget v3, v5, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->mNumItemsLoaded:I

    .line 253
    .local v3, numCurrClusterItems:I
    iget v5, v4, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->mNumItemsLoaded:I

    iget v6, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mMinClusterSize:I

    if-ge v5, v6, :cond_1

    .line 254
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 257
    iget-object v5, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mClusters:Ljava/util/ArrayList;

    sub-int v6, v2, v7

    invoke-virtual {v5, v6, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 261
    .end local v1           #i:I
    :goto_1
    return-void

    .line 255
    .restart local v1       #i:I
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ecareme/pixwe/media/MediaItem;

    invoke-virtual {v4, v5}, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->addItem(Lcom/ecareme/pixwe/media/MediaItem;)V

    .line 254
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    .end local v1           #i:I
    :cond_1
    iget-object v5, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mClusters:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mCurrCluster:Lcom/ecareme/pixwe/media/MediaClustering$Cluster;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private splitAndAddCurrentCluster()V
    .locals 7

    .prologue
    .line 196
    iget-object v5, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mCurrCluster:Lcom/ecareme/pixwe/media/MediaClustering$Cluster;

    invoke-virtual {v5}, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 197
    .local v0, currClusterItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    iget-object v5, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mCurrCluster:Lcom/ecareme/pixwe/media/MediaClustering$Cluster;

    iget v2, v5, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->mNumItemsLoaded:I

    .line 198
    .local v2, numCurrClusterItems:I
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/MediaClustering;->getPartitionIndexForCurrentCluster()I

    move-result v4

    .line 199
    .local v4, secondPartitionStartIndex:I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 200
    new-instance v3, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;

    iget-boolean v5, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mIsPicassaAlbum:Z

    invoke-direct {v3, v5}, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;-><init>(Z)V

    .line 201
    .local v3, partitionedCluster:Lcom/ecareme/pixwe/media/MediaClustering$Cluster;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    if-lt v1, v4, :cond_0

    .line 204
    iget-object v5, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v3, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;

    .end local v3           #partitionedCluster:Lcom/ecareme/pixwe/media/MediaClustering$Cluster;
    iget-boolean v5, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mIsPicassaAlbum:Z

    invoke-direct {v3, v5}, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;-><init>(Z)V

    .line 206
    .restart local v3       #partitionedCluster:Lcom/ecareme/pixwe/media/MediaClustering$Cluster;
    move v1, v4

    :goto_1
    if-lt v1, v2, :cond_1

    .line 209
    iget-object v5, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    .end local v1           #j:I
    .end local v3           #partitionedCluster:Lcom/ecareme/pixwe/media/MediaClustering$Cluster;
    :goto_2
    return-void

    .line 202
    .restart local v1       #j:I
    .restart local v3       #partitionedCluster:Lcom/ecareme/pixwe/media/MediaClustering$Cluster;
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ecareme/pixwe/media/MediaItem;

    invoke-virtual {v3, v5}, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->addItem(Lcom/ecareme/pixwe/media/MediaItem;)V

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ecareme/pixwe/media/MediaItem;

    invoke-virtual {v3, v5}, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->addItem(Lcom/ecareme/pixwe/media/MediaItem;)V

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 211
    .end local v1           #j:I
    .end local v3           #partitionedCluster:Lcom/ecareme/pixwe/media/MediaClustering$Cluster;
    :cond_2
    iget-object v5, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mClusters:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mCurrCluster:Lcom/ecareme/pixwe/media/MediaClustering$Cluster;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public static timeDistance(Lcom/ecareme/pixwe/media/MediaItem;Lcom/ecareme/pixwe/media/MediaItem;)J
    .locals 4
    .parameter "a"
    .parameter "b"

    .prologue
    .line 377
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 378
    :cond_0
    const-wide/16 v0, 0x0

    .line 380
    :goto_0
    return-wide v0

    :cond_1
    iget-wide v0, p0, Lcom/ecareme/pixwe/media/MediaItem;->mDateTakenInMs:J

    iget-wide v2, p1, Lcom/ecareme/pixwe/media/MediaItem;->mDateTakenInMs:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method public addItemForClustering(Lcom/ecareme/pixwe/media/MediaItem;)V
    .locals 1
    .parameter "mediaItem"

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ecareme/pixwe/media/MediaClustering;->compute(Lcom/ecareme/pixwe/media/MediaItem;Z)V

    .line 120
    return-void
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 93
    iget-object v3, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 94
    .local v2, numClusters:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 98
    iget-object v3, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mCurrCluster:Lcom/ecareme/pixwe/media/MediaClustering$Cluster;

    if-eqz v3, :cond_0

    .line 99
    iget-object v3, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mCurrCluster:Lcom/ecareme/pixwe/media/MediaClustering$Cluster;

    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->clear()V

    .line 101
    :cond_0
    return-void

    .line 95
    :cond_1
    iget-object v3, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;

    .line 96
    .local v0, cluster:Lcom/ecareme/pixwe/media/MediaClustering$Cluster;
    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->clear()V

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public compute(Lcom/ecareme/pixwe/media/MediaItem;Z)V
    .locals 9
    .parameter "currentItem"
    .parameter "processAllItems"

    .prologue
    .line 140
    if-eqz p1, :cond_0

    .line 141
    iget-object v5, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 142
    .local v2, numClusters:I
    iget-object v5, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mCurrCluster:Lcom/ecareme/pixwe/media/MediaClustering$Cluster;

    iget v3, v5, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->mNumItemsLoaded:I

    .line 143
    .local v3, numCurrClusterItems:I
    const/4 v0, 0x0

    .line 144
    .local v0, geographicallySeparateItem:Z
    const/4 v1, 0x0

    .line 148
    .local v1, itemAddedToCurrentCluster:Z
    if-nez v3, :cond_2

    .line 149
    iget-object v5, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mCurrCluster:Lcom/ecareme/pixwe/media/MediaClustering$Cluster;

    invoke-virtual {v5, p1}, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->addItem(Lcom/ecareme/pixwe/media/MediaItem;)V

    .line 178
    .end local v0           #geographicallySeparateItem:Z
    .end local v1           #itemAddedToCurrentCluster:Z
    .end local v2           #numClusters:I
    .end local v3           #numCurrClusterItems:I
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    iget-object v5, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mCurrCluster:Lcom/ecareme/pixwe/media/MediaClustering$Cluster;

    iget v5, v5, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->mNumItemsLoaded:I

    if-lez v5, :cond_1

    .line 179
    iget-object v5, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 180
    .restart local v2       #numClusters:I
    iget-object v5, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mCurrCluster:Lcom/ecareme/pixwe/media/MediaClustering$Cluster;

    iget v3, v5, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->mNumItemsLoaded:I

    .line 183
    .restart local v3       #numCurrClusterItems:I
    iget v5, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mMaxClusterSize:I

    if-le v3, v5, :cond_8

    .line 184
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/MediaClustering;->splitAndAddCurrentCluster()V

    .line 191
    :goto_1
    new-instance v5, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;

    iget-boolean v6, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mIsPicassaAlbum:Z

    invoke-direct {v5, v6}, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;-><init>(Z)V

    iput-object v5, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mCurrCluster:Lcom/ecareme/pixwe/media/MediaClustering$Cluster;

    .line 193
    .end local v2           #numClusters:I
    .end local v3           #numCurrClusterItems:I
    :cond_1
    return-void

    .line 151
    .restart local v0       #geographicallySeparateItem:Z
    .restart local v1       #itemAddedToCurrentCluster:Z
    .restart local v2       #numClusters:I
    .restart local v3       #numCurrClusterItems:I
    :cond_2
    iget-object v5, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mCurrCluster:Lcom/ecareme/pixwe/media/MediaClustering$Cluster;

    invoke-virtual {v5}, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->getLastItem()Lcom/ecareme/pixwe/media/MediaItem;

    move-result-object v4

    .line 152
    .local v4, prevItem:Lcom/ecareme/pixwe/media/MediaItem;
    invoke-static {v4, p1}, Lcom/ecareme/pixwe/media/MediaClustering;->isGeographicallySeparated(Lcom/ecareme/pixwe/media/MediaItem;Lcom/ecareme/pixwe/media/MediaItem;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 153
    iget-object v5, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mClusters:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mCurrCluster:Lcom/ecareme/pixwe/media/MediaClustering$Cluster;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    const/4 v0, 0x1

    .line 168
    :goto_2
    if-nez v1, :cond_0

    .line 169
    new-instance v5, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;

    iget-boolean v6, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mIsPicassaAlbum:Z

    invoke-direct {v5, v6}, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;-><init>(Z)V

    iput-object v5, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mCurrCluster:Lcom/ecareme/pixwe/media/MediaClustering$Cluster;

    .line 170
    if-eqz v0, :cond_3

    .line 171
    iget-object v5, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mCurrCluster:Lcom/ecareme/pixwe/media/MediaClustering$Cluster;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->access$1(Lcom/ecareme/pixwe/media/MediaClustering$Cluster;Z)V

    .line 173
    :cond_3
    iget-object v5, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mCurrCluster:Lcom/ecareme/pixwe/media/MediaClustering$Cluster;

    invoke-virtual {v5, p1}, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->addItem(Lcom/ecareme/pixwe/media/MediaItem;)V

    goto :goto_0

    .line 155
    :cond_4
    iget v5, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mMaxClusterSize:I

    if-le v3, v5, :cond_5

    .line 156
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/MediaClustering;->splitAndAddCurrentCluster()V

    goto :goto_2

    .line 157
    :cond_5
    invoke-static {v4, p1}, Lcom/ecareme/pixwe/media/MediaClustering;->timeDistance(Lcom/ecareme/pixwe/media/MediaItem;Lcom/ecareme/pixwe/media/MediaItem;)J

    move-result-wide v5

    iget-wide v7, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mClusterSplitTime:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_6

    .line 158
    iget-object v5, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mCurrCluster:Lcom/ecareme/pixwe/media/MediaClustering$Cluster;

    invoke-virtual {v5, p1}, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->addItem(Lcom/ecareme/pixwe/media/MediaItem;)V

    .line 159
    const/4 v1, 0x1

    goto :goto_2

    .line 160
    :cond_6
    if-lez v2, :cond_7

    iget v5, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mMinClusterSize:I

    if-ge v3, v5, :cond_7

    .line 161
    iget-object v5, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mCurrCluster:Lcom/ecareme/pixwe/media/MediaClustering$Cluster;

    invoke-static {v5}, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->access$0(Lcom/ecareme/pixwe/media/MediaClustering$Cluster;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 162
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/MediaClustering;->mergeAndAddCurrentCluster()V

    goto :goto_2

    .line 164
    :cond_7
    iget-object v5, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mClusters:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mCurrCluster:Lcom/ecareme/pixwe/media/MediaClustering$Cluster;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 185
    .end local v0           #geographicallySeparateItem:Z
    .end local v1           #itemAddedToCurrentCluster:Z
    .end local v4           #prevItem:Lcom/ecareme/pixwe/media/MediaItem;
    :cond_8
    if-lez v2, :cond_9

    iget v5, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mMinClusterSize:I

    if-ge v3, v5, :cond_9

    .line 186
    iget-object v5, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mCurrCluster:Lcom/ecareme/pixwe/media/MediaClustering$Cluster;

    invoke-static {v5}, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->access$0(Lcom/ecareme/pixwe/media/MediaClustering$Cluster;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 187
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/MediaClustering;->mergeAndAddCurrentCluster()V

    goto :goto_1

    .line 189
    :cond_9
    iget-object v5, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mClusters:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mCurrCluster:Lcom/ecareme/pixwe/media/MediaClustering$Cluster;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method public declared-synchronized getClusters()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ecareme/pixwe/media/MediaClustering$Cluster;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mCurrCluster:Lcom/ecareme/pixwe/media/MediaClustering$Cluster;

    iget v1, v2, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->mNumItemsLoaded:I

    .line 265
    .local v1, numCurrClusterItems:I
    if-nez v1, :cond_0

    .line 266
    iget-object v2, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mClusters:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    :goto_0
    monitor-exit p0

    return-object v2

    .line 268
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v0, mergedClusters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaClustering$Cluster;>;"
    iget-object v2, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 270
    if-lez v1, :cond_1

    .line 271
    iget-object v2, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mCurrCluster:Lcom/ecareme/pixwe/media/MediaClustering$Cluster;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    move-object v2, v0

    .line 273
    goto :goto_0

    .line 264
    .end local v0           #mergedClusters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaClustering$Cluster;>;"
    .end local v1           #numCurrClusterItems:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getClustersForDisplay()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ecareme/pixwe/media/MediaClustering$Cluster;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mClusters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public removeItemFromClustering(Lcom/ecareme/pixwe/media/MediaItem;)V
    .locals 4
    .parameter "mediaItem"

    .prologue
    .line 124
    iget-object v3, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mCurrCluster:Lcom/ecareme/pixwe/media/MediaClustering$Cluster;

    invoke-virtual {v3, p1}, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->removeItem(Lcom/ecareme/pixwe/media/MediaItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v3, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 128
    .local v2, numClusters:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 129
    iget-object v3, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;

    .line 130
    .local v0, cluster:Lcom/ecareme/pixwe/media/MediaClustering$Cluster;
    invoke-virtual {v0, p1}, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->removeItem(Lcom/ecareme/pixwe/media/MediaItem;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 131
    iget v3, v0, Lcom/ecareme/pixwe/media/MediaClustering$Cluster;->mNumItemsLoaded:I

    if-nez v3, :cond_0

    .line 132
    iget-object v3, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public setTimeRange(JI)V
    .locals 7
    .parameter "timeRange"
    .parameter "numItems"

    .prologue
    .line 104
    if-eqz p3, :cond_0

    .line 105
    div-int/lit8 v6, p3, 0x9

    .line 108
    .local v6, meanItemsPerCluster:I
    div-int/lit8 v0, v6, 0x2

    iput v0, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mMinClusterSize:I

    .line 109
    mul-int/lit8 v0, v6, 0x2

    iput v0, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mMaxClusterSize:I

    .line 110
    int-to-long v0, p3

    div-long v0, p1, v0

    sget v2, Lcom/ecareme/pixwe/media/MediaClustering;->CLUSTER_SPLIT_MULTIPLIER:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mClusterSplitTime:J

    .line 112
    .end local v6           #meanItemsPerCluster:I
    :cond_0
    iget-wide v0, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mClusterSplitTime:J

    const-wide/32 v2, 0xea60

    const-wide/32 v4, 0x6ddd00

    invoke-static/range {v0 .. v5}, Lcom/ecareme/pixwe/media/Shared;->clamp(JJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mClusterSplitTime:J

    .line 113
    iget-wide v0, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mClusterSplitTime:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mLargeClusterSplitTime:J

    .line 114
    iget v0, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mMinClusterSize:I

    const/16 v1, 0x8

    const/16 v2, 0xf

    invoke-static {v0, v1, v2}, Lcom/ecareme/pixwe/media/Shared;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mMinClusterSize:I

    .line 115
    iget v0, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mMaxClusterSize:I

    const/16 v1, 0x14

    const/16 v2, 0x32

    invoke-static {v0, v1, v2}, Lcom/ecareme/pixwe/media/Shared;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/ecareme/pixwe/media/MediaClustering;->mMaxClusterSize:I

    .line 116
    return-void
.end method
