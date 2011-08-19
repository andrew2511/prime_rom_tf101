.class public final Lcom/ecareme/pixwe/media/MediaBucketList;
.super Ljava/lang/Object;
.source "MediaBucketList.java"


# static fields
.field private static final FALSE:Ljava/lang/Boolean;

.field private static final TRUE:Ljava/lang/Boolean;


# instance fields
.field private mBuckets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ecareme/pixwe/media/MediaBucket;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/ecareme/pixwe/media/MediaItem;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mCount:I

.field private mDirtyAcceleratedLookup:Z

.field private mDirtyCount:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/ecareme/pixwe/media/MediaBucketList;->TRUE:Ljava/lang/Boolean;

    .line 24
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/ecareme/pixwe/media/MediaBucketList;->FALSE:Ljava/lang/Boolean;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/MediaBucketList;->mBuckets:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/MediaBucketList;->mCachedItems:Ljava/util/HashMap;

    .line 22
    return-void
.end method

.method public static getFirstItemSelection(Ljava/util/ArrayList;)Lcom/ecareme/pixwe/media/MediaItem;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ecareme/pixwe/media/MediaBucket;",
            ">;)",
            "Lcom/ecareme/pixwe/media/MediaItem;"
        }
    .end annotation

    .prologue
    .local p0, buckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaBucket;>;"
    const/4 v6, 0x0

    .line 37
    const/4 v2, 0x0

    .line 38
    .local v2, item:Lcom/ecareme/pixwe/media/MediaItem;
    if-eqz p0, :cond_0

    .line 39
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 40
    .local v4, numBuckets:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v4, :cond_1

    .line 51
    .end local v1           #i:I
    .end local v4           #numBuckets:I
    :cond_0
    :goto_1
    return-object v2

    .line 41
    .restart local v1       #i:I
    .restart local v4       #numBuckets:I
    :cond_1
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecareme/pixwe/media/MediaBucket;

    .line 42
    .local v0, bucket:Lcom/ecareme/pixwe/media/MediaBucket;
    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/ecareme/pixwe/media/MediaBucketList;->isSetSelection(Lcom/ecareme/pixwe/media/MediaBucket;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 43
    iget-object v3, v0, Lcom/ecareme/pixwe/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    .line 44
    .local v3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 45
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #item:Lcom/ecareme/pixwe/media/MediaItem;
    check-cast v2, Lcom/ecareme/pixwe/media/MediaItem;

    .line 46
    .restart local v2       #item:Lcom/ecareme/pixwe/media/MediaItem;
    goto :goto_1

    .line 40
    .end local v3           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getFirstSetSelection(Ljava/util/ArrayList;)Lcom/ecareme/pixwe/media/MediaSet;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ecareme/pixwe/media/MediaBucket;",
            ">;)",
            "Lcom/ecareme/pixwe/media/MediaSet;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, buckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaBucket;>;"
    const/4 v3, 0x0

    .line 58
    .local v3, set:Lcom/ecareme/pixwe/media/MediaSet;
    if-eqz p0, :cond_0

    .line 59
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 60
    .local v2, numBuckets:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 67
    .end local v1           #i:I
    .end local v2           #numBuckets:I
    :cond_0
    return-object v3

    .line 61
    .restart local v1       #i:I
    .restart local v2       #numBuckets:I
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecareme/pixwe/media/MediaBucket;

    .line 62
    .local v0, bucket:Lcom/ecareme/pixwe/media/MediaBucket;
    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/ecareme/pixwe/media/MediaBucketList;->isSetSelection(Lcom/ecareme/pixwe/media/MediaBucket;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 63
    iget-object v3, v0, Lcom/ecareme/pixwe/media/MediaBucket;->mediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    .line 60
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected static isMultipleItemSelection(Ljava/util/ArrayList;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ecareme/pixwe/media/MediaBucket;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, buckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaBucket;>;"
    const/4 v1, 0x0

    .line 346
    if-eqz p0, :cond_0

    .line 347
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 348
    .local v0, numBuckets:I
    if-nez v0, :cond_1

    .line 354
    .end local v0           #numBuckets:I
    .end local p0           #buckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaBucket;>;"
    :cond_0
    :goto_0
    return v1

    .line 351
    .restart local v0       #numBuckets:I
    .restart local p0       #buckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaBucket;>;"
    :cond_1
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #buckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaBucket;>;"
    check-cast p0, Lcom/ecareme/pixwe/media/MediaBucket;

    invoke-static {p0}, Lcom/ecareme/pixwe/media/MediaBucketList;->isMultipleSetSelection(Lcom/ecareme/pixwe/media/MediaBucket;)Z

    move-result v1

    goto :goto_0
.end method

.method protected static isMultipleSetSelection(Lcom/ecareme/pixwe/media/MediaBucket;)Z
    .locals 2
    .parameter "bucket"

    .prologue
    const/4 v1, 0x1

    .line 358
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isSetSelection(Lcom/ecareme/pixwe/media/MediaBucket;)Z
    .locals 1
    .parameter "bucket"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaBucket;->mediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isSetSelection(Ljava/util/ArrayList;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ecareme/pixwe/media/MediaBucket;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, buckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaBucket;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 325
    if-eqz p0, :cond_0

    .line 326
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 327
    .local v0, numBuckets:I
    if-nez v0, :cond_1

    .line 336
    .end local v0           #numBuckets:I
    .end local p0           #buckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaBucket;>;"
    :cond_0
    :goto_0
    return v1

    .line 329
    .restart local v0       #numBuckets:I
    .restart local p0       #buckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaBucket;>;"
    :cond_1
    if-ne v0, v2, :cond_2

    .line 330
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #buckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaBucket;>;"
    check-cast p0, Lcom/ecareme/pixwe/media/MediaBucket;

    invoke-static {p0}, Lcom/ecareme/pixwe/media/MediaBucketList;->isSetSelection(Lcom/ecareme/pixwe/media/MediaBucket;)Z

    move-result v1

    goto :goto_0

    .restart local p0       #buckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaBucket;>;"
    :cond_2
    move v1, v2

    .line 333
    goto :goto_0
.end method

.method private setDirty()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 319
    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/MediaBucketList;->mDirtyCount:Z

    .line 320
    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/MediaBucketList;->mDirtyAcceleratedLookup:Z

    .line 321
    return-void
.end method


# virtual methods
.method public add(ILcom/ecareme/pixwe/media/MediaFeed;Z)V
    .locals 24
    .parameter "slotId"
    .parameter "feed"
    .parameter "removeIfAlreadyAdded"

    .prologue
    .line 101
    const/16 v20, -0x1

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/ecareme/pixwe/media/MediaBucketList;->setDirty()V

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaBucketList;->mBuckets:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 106
    .local v16, selectedBuckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaBucket;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 107
    .local v14, numSelectedBuckets:I
    const/4 v10, 0x0

    .line 108
    .local v10, mediaSetToAdd:Lcom/ecareme/pixwe/media/MediaSet;
    const/16 v18, 0x0

    .line 109
    .local v18, selectedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    const/4 v2, 0x0

    .line 110
    .local v2, bucket:Lcom/ecareme/pixwe/media/MediaBucket;
    invoke-virtual/range {p2 .. p2}, Lcom/ecareme/pixwe/media/MediaFeed;->hasExpandedMediaSet()Z

    move-result v5

    .line 111
    .local v5, hasExpandedMediaSet:Z
    if-nez v5, :cond_6

    .line 112
    invoke-virtual/range {p2 .. p2}, Lcom/ecareme/pixwe/media/MediaFeed;->getMediaSets()Ljava/util/ArrayList;

    move-result-object v11

    .line 113
    .local v11, mediaSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaSet;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, p1

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 116
    move-object v0, v11

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #mediaSetToAdd:Lcom/ecareme/pixwe/media/MediaSet;
    check-cast v10, Lcom/ecareme/pixwe/media/MediaSet;

    .line 131
    .end local v11           #mediaSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaSet;>;"
    .restart local v10       #mediaSetToAdd:Lcom/ecareme/pixwe/media/MediaSet;
    :cond_2
    :goto_1
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    if-lt v6, v14, :cond_7

    .line 148
    :goto_3
    if-nez v2, :cond_3

    .line 150
    new-instance v2, Lcom/ecareme/pixwe/media/MediaBucket;

    .end local v2           #bucket:Lcom/ecareme/pixwe/media/MediaBucket;
    invoke-direct {v2}, Lcom/ecareme/pixwe/media/MediaBucket;-><init>()V

    .line 151
    .restart local v2       #bucket:Lcom/ecareme/pixwe/media/MediaBucket;
    iput-object v10, v2, Lcom/ecareme/pixwe/media/MediaBucket;->mediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    .line 152
    move-object/from16 v0, v18

    move-object v1, v2

    iput-object v0, v1, Lcom/ecareme/pixwe/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    .line 153
    move-object/from16 v0, v16

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_3
    if-eqz v5, :cond_5

    .line 156
    invoke-virtual/range {p2 .. p2}, Lcom/ecareme/pixwe/media/MediaFeed;->getNumSlots()I

    move-result v15

    .line 157
    .local v15, numSlots:I
    move/from16 v0, p1

    move v1, v15

    if-ge v0, v1, :cond_5

    .line 158
    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/MediaFeed;->getSetForSlot(I)Lcom/ecareme/pixwe/media/MediaSet;

    move-result-object v19

    .line 159
    .local v19, set:Lcom/ecareme/pixwe/media/MediaSet;
    if-eqz v19, :cond_5

    .line 160
    invoke-virtual/range {v19 .. v19}, Lcom/ecareme/pixwe/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v8

    .line 161
    .local v8, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    invoke-virtual/range {v19 .. v19}, Lcom/ecareme/pixwe/media/MediaSet;->getNumItems()I

    move-result v12

    .line 162
    .local v12, numItems:I
    move-object v0, v2

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    .line 163
    if-nez v18, :cond_4

    .line 164
    new-instance v18, Ljava/util/ArrayList;

    .end local v18           #selectedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    move-object/from16 v0, v18

    move v1, v12

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 165
    .restart local v18       #selectedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    move-object/from16 v0, v18

    move-object v1, v2

    iput-object v0, v1, Lcom/ecareme/pixwe/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    .line 167
    :cond_4
    const/4 v6, 0x0

    :goto_4
    if-lt v6, v12, :cond_a

    .line 191
    .end local v8           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    .end local v12           #numItems:I
    .end local v15           #numSlots:I
    .end local v19           #set:Lcom/ecareme/pixwe/media/MediaSet;
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/ecareme/pixwe/media/MediaBucketList;->setDirty()V

    goto :goto_0

    .line 118
    .end local v6           #i:I
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/ecareme/pixwe/media/MediaFeed;->getNumSlots()I

    move-result v15

    .line 119
    .restart local v15       #numSlots:I
    move/from16 v0, p1

    move v1, v15

    if-ge v0, v1, :cond_2

    .line 120
    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/MediaFeed;->getSetForSlot(I)Lcom/ecareme/pixwe/media/MediaSet;

    move-result-object v19

    .line 121
    .restart local v19       #set:Lcom/ecareme/pixwe/media/MediaSet;
    if-eqz v19, :cond_2

    .line 122
    invoke-virtual/range {v19 .. v19}, Lcom/ecareme/pixwe/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v8

    .line 123
    .restart local v8       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    invoke-virtual/range {v19 .. v19}, Lcom/ecareme/pixwe/media/MediaSet;->getNumItems()I

    move-result v20

    if-lez v20, :cond_2

    .line 124
    const/16 v20, 0x0

    move-object v0, v8

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ecareme/pixwe/media/MediaItem;

    iget-object v10, v3, Lcom/ecareme/pixwe/media/MediaItem;->mParentMediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    goto :goto_1

    .line 132
    .end local v8           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    .end local v15           #numSlots:I
    .end local v19           #set:Lcom/ecareme/pixwe/media/MediaSet;
    .restart local v6       #i:I
    :cond_7
    move-object/from16 v0, v16

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ecareme/pixwe/media/MediaBucket;

    .line 133
    .local v3, bucketCompare:Lcom/ecareme/pixwe/media/MediaBucket;
    move-object v0, v3

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaBucket;->mediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    if-eqz v10, :cond_9

    move-object v0, v3

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaBucket;->mediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    move-wide/from16 v20, v0

    move-object v0, v10

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-nez v20, :cond_9

    .line 135
    if-nez v5, :cond_8

    .line 138
    if-eqz p3, :cond_0

    .line 139
    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 143
    :cond_8
    move-object v2, v3

    .line 144
    goto/16 :goto_3

    .line 131
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 168
    .end local v3           #bucketCompare:Lcom/ecareme/pixwe/media/MediaBucket;
    .restart local v8       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    .restart local v12       #numItems:I
    .restart local v15       #numSlots:I
    .restart local v19       #set:Lcom/ecareme/pixwe/media/MediaSet;
    :cond_a
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ecareme/pixwe/media/MediaItem;

    .line 170
    .local v7, item:Lcom/ecareme/pixwe/media/MediaItem;
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 171
    .local v13, numPresentItems:I
    const/4 v4, 0x0

    .line 172
    .local v4, foundIndex:Z
    const/4 v9, 0x0

    .local v9, j:I
    :goto_5
    if-lt v9, v13, :cond_d

    .line 184
    :cond_b
    :goto_6
    if-nez v4, :cond_c

    .line 185
    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    .line 173
    :cond_d
    move-object/from16 v0, v18

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/ecareme/pixwe/media/MediaItem;

    .line 174
    .local v17, selectedItem:Lcom/ecareme/pixwe/media/MediaItem;
    if-eqz v17, :cond_e

    if-eqz v7, :cond_e

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mId:J

    move-wide/from16 v20, v0

    move-object v0, v7

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mId:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-nez v20, :cond_e

    .line 177
    const/4 v4, 0x1

    .line 178
    if-eqz p3, :cond_b

    .line 179
    move-object/from16 v0, v18

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_6

    .line 172
    :cond_e
    add-int/lit8 v9, v9, 0x1

    goto :goto_5
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaBucketList;->mBuckets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 315
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/MediaBucketList;->setDirty()V

    .line 316
    return-void
.end method

.method public exists(ILcom/ecareme/pixwe/media/MediaFeed;)Z
    .locals 24
    .parameter "slotId"
    .parameter "feed"

    .prologue
    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaBucketList;->mBuckets:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 196
    .local v16, selectedBuckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaBucket;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 197
    .local v14, numSelectedBuckets:I
    const/4 v10, 0x0

    .line 198
    .local v10, mediaSetToAdd:Lcom/ecareme/pixwe/media/MediaSet;
    const/4 v2, 0x0

    .line 199
    .local v2, bucket:Lcom/ecareme/pixwe/media/MediaBucket;
    const/16 v18, 0x0

    .line 200
    .local v18, selectedItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/ecareme/pixwe/media/MediaFeed;->hasExpandedMediaSet()Z

    move-result v5

    .line 201
    .local v5, hasExpandedMediaSet:Z
    if-nez v5, :cond_2

    .line 202
    invoke-virtual/range {p2 .. p2}, Lcom/ecareme/pixwe/media/MediaFeed;->getMediaSets()Ljava/util/ArrayList;

    move-result-object v11

    .line 203
    .local v11, mediaSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaSet;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, p1

    move/from16 v1, v20

    if-lt v0, v1, :cond_0

    .line 204
    const/16 v20, 0x0

    .line 273
    .end local v11           #mediaSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaSet;>;"
    .end local p0
    :goto_0
    return v20

    .line 206
    .restart local v11       #mediaSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaSet;>;"
    .restart local p0
    :cond_0
    move-object v0, v11

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #mediaSetToAdd:Lcom/ecareme/pixwe/media/MediaSet;
    check-cast v10, Lcom/ecareme/pixwe/media/MediaSet;

    .line 221
    .end local v11           #mediaSets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaSet;>;"
    .end local p0
    .restart local v10       #mediaSetToAdd:Lcom/ecareme/pixwe/media/MediaSet;
    :cond_1
    :goto_1
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    if-lt v6, v14, :cond_3

    .line 237
    :goto_3
    if-nez v2, :cond_6

    .line 238
    const/16 v20, 0x0

    goto :goto_0

    .line 208
    .end local v6           #i:I
    .restart local p0
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/ecareme/pixwe/media/MediaFeed;->getNumSlots()I

    move-result v15

    .line 209
    .local v15, numSlots:I
    move/from16 v0, p1

    move v1, v15

    if-ge v0, v1, :cond_1

    .line 210
    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/MediaFeed;->getSetForSlot(I)Lcom/ecareme/pixwe/media/MediaSet;

    move-result-object v19

    .line 211
    .local v19, set:Lcom/ecareme/pixwe/media/MediaSet;
    if-eqz v19, :cond_1

    .line 212
    invoke-virtual/range {v19 .. v19}, Lcom/ecareme/pixwe/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v8

    .line 213
    .local v8, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    invoke-virtual/range {v19 .. v19}, Lcom/ecareme/pixwe/media/MediaSet;->getNumItems()I

    move-result v20

    if-lez v20, :cond_1

    .line 214
    const/16 v20, 0x0

    move-object v0, v8

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/ecareme/pixwe/media/MediaItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mParentMediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    move-object v10, v0

    goto :goto_1

    .line 222
    .end local v8           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    .end local v15           #numSlots:I
    .end local v19           #set:Lcom/ecareme/pixwe/media/MediaSet;
    .restart local v6       #i:I
    :cond_3
    move-object/from16 v0, v16

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ecareme/pixwe/media/MediaBucket;

    .line 223
    .local v3, bucketCompare:Lcom/ecareme/pixwe/media/MediaBucket;
    move-object v0, v3

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaBucket;->mediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    if-eqz v10, :cond_5

    move-object v0, v3

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaBucket;->mediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    move-wide/from16 v20, v0

    move-object v0, v10

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-nez v20, :cond_5

    .line 225
    if-nez v5, :cond_4

    .line 228
    const/16 v20, 0x1

    goto :goto_0

    .line 231
    :cond_4
    move-object v2, v3

    .line 232
    goto :goto_3

    .line 221
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 241
    .end local v3           #bucketCompare:Lcom/ecareme/pixwe/media/MediaBucket;
    :cond_6
    if-eqz v5, :cond_a

    .line 242
    invoke-virtual/range {p2 .. p2}, Lcom/ecareme/pixwe/media/MediaFeed;->getNumSlots()I

    move-result v15

    .line 243
    .restart local v15       #numSlots:I
    move/from16 v0, p1

    move v1, v15

    if-ge v0, v1, :cond_a

    .line 244
    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/MediaFeed;->getSetForSlot(I)Lcom/ecareme/pixwe/media/MediaSet;

    move-result-object v19

    .line 245
    .restart local v19       #set:Lcom/ecareme/pixwe/media/MediaSet;
    if-eqz v19, :cond_a

    .line 246
    invoke-virtual/range {v19 .. v19}, Lcom/ecareme/pixwe/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v8

    .line 247
    .restart local v8       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    invoke-virtual/range {v19 .. v19}, Lcom/ecareme/pixwe/media/MediaSet;->getNumItems()I

    move-result v12

    .line 248
    .local v12, numItems:I
    move-object v0, v2

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    .line 249
    const/4 v6, 0x0

    if-ge v6, v12, :cond_a

    .line 250
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ecareme/pixwe/media/MediaItem;

    .line 252
    .local v7, item:Lcom/ecareme/pixwe/media/MediaItem;
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 253
    .local v13, numPresentItems:I
    const/4 v4, 0x0

    .line 254
    .local v4, foundIndex:Z
    const/4 v9, 0x0

    .local v9, j:I
    :goto_4
    if-lt v9, v13, :cond_7

    .line 263
    :goto_5
    if-nez v4, :cond_9

    .line 264
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 255
    :cond_7
    move-object/from16 v0, v18

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/ecareme/pixwe/media/MediaItem;

    .line 256
    .local v17, selectedItem:Lcom/ecareme/pixwe/media/MediaItem;
    if-eqz v17, :cond_8

    if-eqz v7, :cond_8

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mId:J

    move-wide/from16 v20, v0

    move-object v0, v7

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mId:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-nez v20, :cond_8

    .line 259
    const/4 v4, 0x1

    .line 260
    goto :goto_5

    .line 254
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 267
    .end local v17           #selectedItem:Lcom/ecareme/pixwe/media/MediaItem;
    :cond_9
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 273
    .end local v4           #foundIndex:Z
    .end local v7           #item:Lcom/ecareme/pixwe/media/MediaItem;
    .end local v8           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    .end local v9           #j:I
    .end local v12           #numItems:I
    .end local v13           #numPresentItems:I
    .end local v15           #numSlots:I
    .end local v19           #set:Lcom/ecareme/pixwe/media/MediaSet;
    :cond_a
    const/16 v20, 0x0

    goto/16 :goto_0
.end method

.method public find(Lcom/ecareme/pixwe/media/MediaItem;)Z
    .locals 14
    .parameter "item"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 277
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MediaBucketList;->mCachedItems:Ljava/util/HashMap;

    .line 278
    .local v1, cachedItems:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/ecareme/pixwe/media/MediaItem;Ljava/lang/Boolean;>;"
    iget-boolean v11, p0, Lcom/ecareme/pixwe/media/MediaBucketList;->mDirtyAcceleratedLookup:Z

    if-eqz v11, :cond_0

    .line 279
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 280
    iput-boolean v12, p0, Lcom/ecareme/pixwe/media/MediaBucketList;->mDirtyAcceleratedLookup:Z

    .line 282
    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 283
    .local v3, itemAdded:Ljava/lang/Boolean;
    if-nez v3, :cond_6

    .line 284
    iget-object v10, p0, Lcom/ecareme/pixwe/media/MediaBucketList;->mBuckets:Ljava/util/ArrayList;

    .line 285
    .local v10, selectedBuckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaBucket;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 286
    .local v8, numSelectedBuckets:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v8, :cond_1

    .line 306
    sget-object v11, Lcom/ecareme/pixwe/media/MediaBucketList;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v11, v12

    .line 309
    .end local v2           #i:I
    .end local v8           #numSelectedBuckets:I
    .end local v10           #selectedBuckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaBucket;>;"
    :goto_1
    return v11

    .line 287
    .restart local v2       #i:I
    .restart local v8       #numSelectedBuckets:I
    .restart local v10       #selectedBuckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaBucket;>;"
    :cond_1
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecareme/pixwe/media/MediaBucket;

    .line 288
    .local v0, bucket:Lcom/ecareme/pixwe/media/MediaBucket;
    iget-object v6, v0, Lcom/ecareme/pixwe/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    .line 289
    .local v6, mediaItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    if-nez v6, :cond_2

    .line 290
    iget-object v9, p1, Lcom/ecareme/pixwe/media/MediaItem;->mParentMediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    .line 291
    .local v9, parentMediaSet:Lcom/ecareme/pixwe/media/MediaSet;
    if-eqz v9, :cond_3

    iget-object v11, v0, Lcom/ecareme/pixwe/media/MediaBucket;->mediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    invoke-virtual {v9, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 292
    sget-object v11, Lcom/ecareme/pixwe/media/MediaBucketList;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v11, v13

    .line 293
    goto :goto_1

    .line 296
    .end local v9           #parentMediaSet:Lcom/ecareme/pixwe/media/MediaSet;
    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 297
    .local v7, numMediaItems:I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_2
    if-lt v5, v7, :cond_4

    .line 286
    .end local v5           #j:I
    .end local v7           #numMediaItems:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 298
    .restart local v5       #j:I
    .restart local v7       #numMediaItems:I
    :cond_4
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ecareme/pixwe/media/MediaItem;

    .line 299
    .local v4, itemCompare:Lcom/ecareme/pixwe/media/MediaItem;
    if-ne v4, p1, :cond_5

    .line 300
    sget-object v11, Lcom/ecareme/pixwe/media/MediaBucketList;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v11, v13

    .line 301
    goto :goto_1

    .line 297
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 309
    .end local v0           #bucket:Lcom/ecareme/pixwe/media/MediaBucket;
    .end local v2           #i:I
    .end local v4           #itemCompare:Lcom/ecareme/pixwe/media/MediaItem;
    .end local v5           #j:I
    .end local v6           #mediaItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    .end local v7           #numMediaItems:I
    .end local v8           #numSelectedBuckets:I
    .end local v10           #selectedBuckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaBucket;>;"
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    goto :goto_1
.end method

.method public get()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ecareme/pixwe/media/MediaBucket;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaBucketList;->mBuckets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public size()I
    .locals 7

    .prologue
    .line 75
    iget-boolean v6, p0, Lcom/ecareme/pixwe/media/MediaBucketList;->mDirtyCount:Z

    if-eqz v6, :cond_0

    .line 76
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MediaBucketList;->mBuckets:Ljava/util/ArrayList;

    .line 77
    .local v1, buckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaBucket;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 78
    .local v4, numBuckets:I
    const/4 v2, 0x0

    .line 79
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v4, :cond_1

    .line 94
    iput v2, p0, Lcom/ecareme/pixwe/media/MediaBucketList;->mCount:I

    .line 95
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/ecareme/pixwe/media/MediaBucketList;->mDirtyCount:Z

    .line 97
    .end local v1           #buckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaBucket;>;"
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #numBuckets:I
    :cond_0
    iget v6, p0, Lcom/ecareme/pixwe/media/MediaBucketList;->mCount:I

    return v6

    .line 80
    .restart local v1       #buckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaBucket;>;"
    .restart local v2       #count:I
    .restart local v3       #i:I
    .restart local v4       #numBuckets:I
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecareme/pixwe/media/MediaBucket;

    .line 81
    .local v0, bucket:Lcom/ecareme/pixwe/media/MediaBucket;
    const/4 v5, 0x0

    .line 82
    .local v5, numItems:I
    iget-object v6, v0, Lcom/ecareme/pixwe/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    if-nez v6, :cond_3

    iget-object v6, v0, Lcom/ecareme/pixwe/media/MediaBucket;->mediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    if-eqz v6, :cond_3

    .line 83
    iget-object v6, v0, Lcom/ecareme/pixwe/media/MediaBucket;->mediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    invoke-virtual {v6}, Lcom/ecareme/pixwe/media/MediaSet;->getNumItems()I

    move-result v5

    .line 86
    if-nez v5, :cond_2

    .line 87
    const/4 v5, 0x1

    .line 92
    :cond_2
    :goto_1
    add-int/2addr v2, v5

    .line 79
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 89
    :cond_3
    iget-object v6, v0, Lcom/ecareme/pixwe/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/ecareme/pixwe/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    .line 90
    iget-object v6, v0, Lcom/ecareme/pixwe/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    goto :goto_1
.end method
