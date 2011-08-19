.class public Lcom/ecareme/pixwe/media/MediaSet;
.super Ljava/lang/Object;
.source "MediaSet.java"


# static fields
.field public static final TYPE_FOLDER:I = 0x1

.field public static final TYPE_SMART:I = 0x0

.field public static final TYPE_USERDEFINED:I = 0x2


# instance fields
.field public isOwner:Z

.field public isShared:Z

.field private mCurrentLocation:I

.field public mDataSource:Lcom/ecareme/pixwe/media/DataSource;

.field public mEditUri:Ljava/lang/String;

.field public mFlagForDelete:Z

.field public mHasImages:Z

.field public mHasVideos:Z

.field public mId:J

.field public mIsLocal:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ecareme/pixwe/media/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsLookup:Lcom/ecareme/pixwe/media/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ecareme/pixwe/media/LongSparseArray",
            "<",
            "Lcom/ecareme/pixwe/media/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsLookupVideo:Lcom/ecareme/pixwe/media/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ecareme/pixwe/media/LongSparseArray",
            "<",
            "Lcom/ecareme/pixwe/media/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field public mLatLongDetermined:Z

.field public mMaxAddedTimestamp:J

.field public mMaxLatLatitude:D

.field public mMaxLatLongitude:D

.field public mMaxLonLatitude:D

.field public mMaxLonLongitude:D

.field public mMaxTimestamp:J

.field public mMinAddedTimestamp:J

.field public mMinLatLatitude:D

.field public mMinLatLongitude:D

.field public mMinLonLatitude:D

.field public mMinLonLongitude:D

.field public mMinTimestamp:J

.field public mName:Ljava/lang/String;

.field public mNoCountTitleString:Ljava/lang/String;

.field private mNumExpectedItems:I

.field private mNumExpectedItemsCountAccurate:Z

.field public mNumItemsLoaded:I

.field public mPicasaAlbumId:J

.field public mReverseGeocodedLocation:Ljava/lang/String;

.field public mReverseGeocodedLocationComputed:Z

.field public mReverseGeocodedLocationRequestMade:Z

.field public mSort:Ljava/lang/String;

.field public mSyncPending:Z

.field public mTitleString:Ljava/lang/String;

.field public mTruncTitleString:Ljava/lang/String;

.field public mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ecareme/pixwe/media/MediaSet;-><init>(Lcom/ecareme/pixwe/media/DataSource;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Lcom/ecareme/pixwe/media/DataSource;)V
    .locals 9
    .parameter "dataSource"

    .prologue
    const-wide v7, 0x7fffffffffffffffL

    const-wide/16 v1, 0x0

    const-wide/16 v5, -0x1

    const/16 v4, 0x10

    const/4 v3, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide v7, p0, Lcom/ecareme/pixwe/media/MediaSet;->mMinTimestamp:J

    .line 44
    iput-wide v1, p0, Lcom/ecareme/pixwe/media/MediaSet;->mMaxTimestamp:J

    .line 45
    iput-wide v7, p0, Lcom/ecareme/pixwe/media/MediaSet;->mMinAddedTimestamp:J

    .line 46
    iput-wide v1, p0, Lcom/ecareme/pixwe/media/MediaSet;->mMaxAddedTimestamp:J

    .line 49
    const-wide v1, 0x4056800000000000L

    iput-wide v1, p0, Lcom/ecareme/pixwe/media/MediaSet;->mMinLatLatitude:D

    .line 52
    const-wide v1, -0x3fa9800000000000L

    iput-wide v1, p0, Lcom/ecareme/pixwe/media/MediaSet;->mMaxLatLatitude:D

    .line 56
    const-wide v1, 0x4066800000000000L

    iput-wide v1, p0, Lcom/ecareme/pixwe/media/MediaSet;->mMinLonLongitude:D

    .line 59
    const-wide v1, -0x3f99800000000000L

    iput-wide v1, p0, Lcom/ecareme/pixwe/media/MediaSet;->mMaxLonLongitude:D

    .line 66
    iput-boolean v3, p0, Lcom/ecareme/pixwe/media/MediaSet;->mLatLongDetermined:Z

    .line 67
    iput-boolean v3, p0, Lcom/ecareme/pixwe/media/MediaSet;->mReverseGeocodedLocationComputed:Z

    .line 68
    iput-boolean v3, p0, Lcom/ecareme/pixwe/media/MediaSet;->mReverseGeocodedLocationRequestMade:Z

    .line 74
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ecareme/pixwe/media/MediaSet;->mEditUri:Ljava/lang/String;

    .line 75
    iput-wide v5, p0, Lcom/ecareme/pixwe/media/MediaSet;->mPicasaAlbumId:J

    .line 76
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ecareme/pixwe/media/MediaSet;->mIsLocal:Z

    .line 79
    iput-boolean v3, p0, Lcom/ecareme/pixwe/media/MediaSet;->mSyncPending:Z

    .line 88
    iput v3, p0, Lcom/ecareme/pixwe/media/MediaSet;->mNumItemsLoaded:I

    .line 93
    iput v3, p0, Lcom/ecareme/pixwe/media/MediaSet;->mNumExpectedItems:I

    .line 94
    iput-boolean v3, p0, Lcom/ecareme/pixwe/media/MediaSet;->mNumExpectedItemsCountAccurate:Z

    .line 95
    iput v3, p0, Lcom/ecareme/pixwe/media/MediaSet;->mCurrentLocation:I

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/ecareme/pixwe/media/MediaSet;->mItems:Ljava/util/ArrayList;

    .line 103
    new-instance v1, Lcom/ecareme/pixwe/media/LongSparseArray;

    invoke-direct {v1}, Lcom/ecareme/pixwe/media/LongSparseArray;-><init>()V

    iput-object v1, p0, Lcom/ecareme/pixwe/media/MediaSet;->mItemsLookup:Lcom/ecareme/pixwe/media/LongSparseArray;

    .line 104
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MediaSet;->mItemsLookup:Lcom/ecareme/pixwe/media/LongSparseArray;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/LongSparseArray;->clear()V

    .line 105
    new-instance v1, Lcom/ecareme/pixwe/media/LongSparseArray;

    invoke-direct {v1}, Lcom/ecareme/pixwe/media/LongSparseArray;-><init>()V

    iput-object v1, p0, Lcom/ecareme/pixwe/media/MediaSet;->mItemsLookupVideo:Lcom/ecareme/pixwe/media/LongSparseArray;

    .line 106
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MediaSet;->mItemsLookupVideo:Lcom/ecareme/pixwe/media/LongSparseArray;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/LongSparseArray;->clear()V

    .line 107
    iput-object p1, p0, Lcom/ecareme/pixwe/media/MediaSet;->mDataSource:Lcom/ecareme/pixwe/media/DataSource;

    .line 109
    new-instance v0, Lcom/ecareme/pixwe/media/MediaItem;

    invoke-direct {v0}, Lcom/ecareme/pixwe/media/MediaItem;-><init>()V

    .line 110
    .local v0, item:Lcom/ecareme/pixwe/media/MediaItem;
    iput-wide v5, v0, Lcom/ecareme/pixwe/media/MediaItem;->mId:J

    .line 111
    iput-object p0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mParentMediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    .line 112
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MediaSet;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    iput v4, p0, Lcom/ecareme/pixwe/media/MediaSet;->mNumExpectedItems:I

    .line 114
    return-void
.end method


# virtual methods
.method public addItem(Lcom/ecareme/pixwe/media/MediaItem;)V
    .locals 18
    .parameter "itemToAdd"

    .prologue
    .line 189
    if-nez p1, :cond_1

    .line 263
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 192
    .restart local p1
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/ecareme/pixwe/media/MediaItem;->getMediaType()I

    move-result v14

    if-nez v14, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mItemsLookup:Lcom/ecareme/pixwe/media/LongSparseArray;

    move-object v14, v0

    move-object v12, v14

    .line 194
    .local v12, lookup:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<Lcom/ecareme/pixwe/media/MediaItem;>;"
    :goto_1
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mId:J

    move-wide v14, v0

    invoke-virtual {v12, v14, v15}, Lcom/ecareme/pixwe/media/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/ecareme/pixwe/media/MediaItem;

    .line 195
    .local v13, lookupItem:Lcom/ecareme/pixwe/media/MediaItem;
    if-eqz v13, :cond_2

    iget-object v14, v13, Lcom/ecareme/pixwe/media/MediaItem;->mFilePath:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mFilePath:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 196
    const/4 v13, 0x0

    .line 198
    :cond_2
    if-nez v13, :cond_b

    move-object/from16 v7, p1

    .line 199
    .local v7, item:Lcom/ecareme/pixwe/media/MediaItem;
    :goto_2
    const/4 v14, 0x0

    iput-boolean v14, v7, Lcom/ecareme/pixwe/media/MediaItem;->mFlagForDelete:Z

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mItems:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-nez v14, :cond_c

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mItems:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    .end local p1
    :goto_3
    iget-wide v14, v7, Lcom/ecareme/pixwe/media/MediaItem;->mId:J

    const-wide/16 v16, -0x1

    cmp-long v14, v14, v16

    if-eqz v14, :cond_4

    .line 212
    if-nez v13, :cond_3

    .line 213
    iget-wide v14, v7, Lcom/ecareme/pixwe/media/MediaItem;->mId:J

    invoke-virtual {v12, v14, v15, v7}, Lcom/ecareme/pixwe/media/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 215
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mNumItemsLoaded:I

    move v14, v0

    add-int/lit8 v14, v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/MediaSet;->mNumItemsLoaded:I

    .line 216
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mCurrentLocation:I

    move v14, v0

    add-int/lit8 v14, v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/MediaSet;->mCurrentLocation:I

    .line 218
    :cond_4
    invoke-virtual {v7}, Lcom/ecareme/pixwe/media/MediaItem;->isDateTakenValid()Z

    move-result v14

    if-eqz v14, :cond_f

    .line 219
    iget-wide v5, v7, Lcom/ecareme/pixwe/media/MediaItem;->mDateTakenInMs:J

    .line 220
    .local v5, dateTaken:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mMinTimestamp:J

    move-wide v14, v0

    cmp-long v14, v5, v14

    if-gez v14, :cond_5

    .line 221
    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/ecareme/pixwe/media/MediaSet;->mMinTimestamp:J

    .line 223
    :cond_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mMaxTimestamp:J

    move-wide v14, v0

    cmp-long v14, v5, v14

    if-lez v14, :cond_6

    .line 224
    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/ecareme/pixwe/media/MediaSet;->mMaxTimestamp:J

    .line 238
    .end local v5           #dateTaken:J
    :cond_6
    :goto_4
    invoke-virtual {v7}, Lcom/ecareme/pixwe/media/MediaItem;->isLatLongValid()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 241
    iget-wide v8, v7, Lcom/ecareme/pixwe/media/MediaItem;->mLatitude:D

    .line 242
    .local v8, itemLatitude:D
    iget-wide v10, v7, Lcom/ecareme/pixwe/media/MediaItem;->mLongitude:D

    .line 243
    .local v10, itemLongitude:D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mMinLatLatitude:D

    move-wide v14, v0

    cmpl-double v14, v14, v8

    if-lez v14, :cond_7

    .line 244
    move-wide v0, v8

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/ecareme/pixwe/media/MediaSet;->mMinLatLatitude:D

    .line 245
    move-wide v0, v10

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/ecareme/pixwe/media/MediaSet;->mMinLatLongitude:D

    .line 246
    const/4 v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ecareme/pixwe/media/MediaSet;->mLatLongDetermined:Z

    .line 248
    :cond_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mMaxLatLatitude:D

    move-wide v14, v0

    cmpg-double v14, v14, v8

    if-gez v14, :cond_8

    .line 249
    move-wide v0, v8

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/ecareme/pixwe/media/MediaSet;->mMaxLatLatitude:D

    .line 250
    move-wide v0, v10

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/ecareme/pixwe/media/MediaSet;->mMaxLatLongitude:D

    .line 251
    const/4 v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ecareme/pixwe/media/MediaSet;->mLatLongDetermined:Z

    .line 253
    :cond_8
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mMinLonLongitude:D

    move-wide v14, v0

    cmpl-double v14, v14, v10

    if-lez v14, :cond_9

    .line 254
    move-wide v0, v8

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/ecareme/pixwe/media/MediaSet;->mMinLonLatitude:D

    .line 255
    move-wide v0, v10

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/ecareme/pixwe/media/MediaSet;->mMinLonLongitude:D

    .line 256
    const/4 v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ecareme/pixwe/media/MediaSet;->mLatLongDetermined:Z

    .line 258
    :cond_9
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mMaxLonLongitude:D

    move-wide v14, v0

    cmpg-double v14, v14, v10

    if-gez v14, :cond_0

    .line 259
    move-wide v0, v8

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/ecareme/pixwe/media/MediaSet;->mMaxLonLatitude:D

    .line 260
    move-wide v0, v10

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/ecareme/pixwe/media/MediaSet;->mMaxLonLongitude:D

    .line 261
    const/4 v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ecareme/pixwe/media/MediaSet;->mLatLongDetermined:Z

    goto/16 :goto_0

    .line 193
    .end local v7           #item:Lcom/ecareme/pixwe/media/MediaItem;
    .end local v8           #itemLatitude:D
    .end local v10           #itemLongitude:D
    .end local v12           #lookup:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<Lcom/ecareme/pixwe/media/MediaItem;>;"
    .end local v13           #lookupItem:Lcom/ecareme/pixwe/media/MediaItem;
    .restart local p1
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mItemsLookupVideo:Lcom/ecareme/pixwe/media/LongSparseArray;

    move-object v14, v0

    move-object v12, v14

    goto/16 :goto_1

    .restart local v12       #lookup:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<Lcom/ecareme/pixwe/media/MediaItem;>;"
    .restart local v13       #lookupItem:Lcom/ecareme/pixwe/media/MediaItem;
    :cond_b
    move-object v7, v13

    .line 198
    goto/16 :goto_2

    .line 202
    .restart local v7       #item:Lcom/ecareme/pixwe/media/MediaItem;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mItems:Ljava/util/ArrayList;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/ecareme/pixwe/media/MediaItem;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mId:J

    move-wide v14, v0

    const-wide/16 v16, -0x1

    cmp-long v14, v14, v16

    if-nez v14, :cond_d

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mItems:Ljava/util/ArrayList;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 205
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mItems:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mCurrentLocation:I

    move v15, v0

    if-le v14, v15, :cond_e

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mItems:Ljava/util/ArrayList;

    move-object v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mCurrentLocation:I

    move v15, v0

    invoke-virtual {v14, v15, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 208
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mItems:Ljava/util/ArrayList;

    move-object v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mCurrentLocation:I

    move v15, v0

    invoke-virtual {v14, v15, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 226
    :cond_f
    invoke-virtual {v7}, Lcom/ecareme/pixwe/media/MediaItem;->isDateAddedValid()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 227
    iget-wide v14, v7, Lcom/ecareme/pixwe/media/MediaItem;->mDateAddedInSec:J

    const-wide/16 v16, 0x3e8

    mul-long v3, v14, v16

    .line 228
    .local v3, dateAdded:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mMinAddedTimestamp:J

    move-wide v14, v0

    cmp-long v14, v3, v14

    if-gez v14, :cond_10

    .line 229
    move-wide v0, v3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/ecareme/pixwe/media/MediaSet;->mMinAddedTimestamp:J

    .line 231
    :cond_10
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mMaxAddedTimestamp:J

    move-wide v14, v0

    cmp-long v14, v3, v14

    if-lez v14, :cond_6

    .line 232
    move-wide v0, v3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/ecareme/pixwe/media/MediaSet;->mMaxAddedTimestamp:J

    goto/16 :goto_4
.end method

.method public areAddedTimestampsAvailable()Z
    .locals 4

    .prologue
    .line 339
    iget-wide v0, p0, Lcom/ecareme/pixwe/media/MediaSet;->mMinAddedTimestamp:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/ecareme/pixwe/media/MediaSet;->mMaxAddedTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public areTimestampsAvailable()Z
    .locals 4

    .prologue
    .line 332
    iget-wide v0, p0, Lcom/ecareme/pixwe/media/MediaSet;->mMinTimestamp:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/ecareme/pixwe/media/MediaSet;->mMaxTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkForDeletedItems()V
    .locals 7

    .prologue
    .line 382
    iget-object v2, p0, Lcom/ecareme/pixwe/media/MediaSet;->mItems:Ljava/util/ArrayList;

    .line 383
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 384
    .local v3, itemsToDelete:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    monitor-enter v2

    .line 385
    :try_start_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 386
    .local v4, numItems:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v4, :cond_0

    .line 384
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 394
    .local v5, numItemsToDelete:I
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v5, :cond_2

    .line 397
    return-void

    .line 387
    .end local v5           #numItemsToDelete:I
    :cond_0
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecareme/pixwe/media/MediaItem;

    .line 388
    .local v1, item:Lcom/ecareme/pixwe/media/MediaItem;
    iget-boolean v6, v1, Lcom/ecareme/pixwe/media/MediaItem;->mFlagForDelete:Z

    if-eqz v6, :cond_1

    .line 389
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 384
    .end local v0           #i:I
    .end local v1           #item:Lcom/ecareme/pixwe/media/MediaItem;
    .end local v4           #numItems:I
    :catchall_0
    move-exception v6

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 395
    .restart local v0       #i:I
    .restart local v4       #numItems:I
    .restart local v5       #numItemsToDelete:I
    :cond_2
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ecareme/pixwe/media/MediaItem;

    invoke-virtual {p0, v6}, Lcom/ecareme/pixwe/media/MediaSet;->removeItem(Lcom/ecareme/pixwe/media/MediaItem;)Z

    .line 394
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 150
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MediaSet;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 151
    new-instance v0, Lcom/ecareme/pixwe/media/MediaItem;

    invoke-direct {v0}, Lcom/ecareme/pixwe/media/MediaItem;-><init>()V

    .line 152
    .local v0, item:Lcom/ecareme/pixwe/media/MediaItem;
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/ecareme/pixwe/media/MediaItem;->mId:J

    .line 153
    iput-object p0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mParentMediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    .line 154
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MediaSet;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    const/16 v1, 0x10

    iput v1, p0, Lcom/ecareme/pixwe/media/MediaSet;->mNumExpectedItems:I

    .line 156
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/MediaSet;->refresh()V

    .line 157
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MediaSet;->mItemsLookup:Lcom/ecareme/pixwe/media/LongSparseArray;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/LongSparseArray;->clear()V

    .line 158
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MediaSet;->mItemsLookupVideo:Lcom/ecareme/pixwe/media/LongSparseArray;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/LongSparseArray;->clear()V

    .line 159
    return-void
.end method

.method public generateTitle(Z)V
    .locals 6
    .parameter "truncateTitle"

    .prologue
    .line 165
    iget-object v2, p0, Lcom/ecareme/pixwe/media/MediaSet;->mName:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 166
    const-string v2, ""

    iput-object v2, p0, Lcom/ecareme/pixwe/media/MediaSet;->mName:Ljava/lang/String;

    .line 168
    :cond_0
    iget-boolean v2, p0, Lcom/ecareme/pixwe/media/MediaSet;->mNumExpectedItemsCountAccurate:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/ecareme/pixwe/media/MediaSet;->mNumExpectedItems:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 169
    .local v1, size:Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ecareme/pixwe/media/MediaSet;->mName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ecareme/pixwe/media/MediaSet;->mTitleString:Ljava/lang/String;

    .line 170
    if-eqz p1, :cond_3

    .line 171
    iget-object v2, p0, Lcom/ecareme/pixwe/media/MediaSet;->mName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 172
    .local v0, length:I
    const/16 v2, 0x10

    if-le v0, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ecareme/pixwe/media/MediaSet;->mName:Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0xc

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ecareme/pixwe/media/MediaSet;->mName:Ljava/lang/String;

    const/4 v4, 0x4

    sub-int v4, v0, v4

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/ecareme/pixwe/media/MediaSet;->mTruncTitleString:Ljava/lang/String;

    .line 174
    iget-object v2, p0, Lcom/ecareme/pixwe/media/MediaSet;->mName:Ljava/lang/String;

    iput-object v2, p0, Lcom/ecareme/pixwe/media/MediaSet;->mNoCountTitleString:Ljava/lang/String;

    .line 178
    .end local v0           #length:I
    :goto_2
    return-void

    .line 168
    .end local v1           #size:Ljava/lang/String;
    :cond_1
    const-string v2, ""

    move-object v1, v2

    goto :goto_0

    .line 172
    .restart local v0       #length:I
    .restart local v1       #size:Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ecareme/pixwe/media/MediaSet;->mName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 176
    .end local v0           #length:I
    :cond_3
    iget-object v2, p0, Lcom/ecareme/pixwe/media/MediaSet;->mTitleString:Ljava/lang/String;

    iput-object v2, p0, Lcom/ecareme/pixwe/media/MediaSet;->mTruncTitleString:Ljava/lang/String;

    goto :goto_2
.end method

.method public getItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ecareme/pixwe/media/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaSet;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNumExpectedItems()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/ecareme/pixwe/media/MediaSet;->mNumExpectedItems:I

    return v0
.end method

.method public getNumItems()I
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaSet;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isPicassaAlbum()Z
    .locals 4

    .prologue
    .line 367
    iget-wide v0, p0, Lcom/ecareme/pixwe/media/MediaSet;->mPicasaAlbumId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPicassaSet()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 351
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/MediaSet;->isPicassaAlbum()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 360
    :goto_0
    return v2

    .line 354
    :cond_0
    iget-object v2, p0, Lcom/ecareme/pixwe/media/MediaSet;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 355
    .local v1, numItems:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, v1, :cond_1

    move v2, v3

    .line 360
    goto :goto_0

    .line 356
    :cond_1
    iget-object v2, p0, Lcom/ecareme/pixwe/media/MediaSet;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ecareme/pixwe/media/MediaItem;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/MediaItem;->isPicassaItem()Z

    move-result v2

    if-nez v2, :cond_2

    .line 357
    const/4 v2, 0x0

    goto :goto_0

    .line 355
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public isTruncated()Z
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaSet;->mTitleString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaSet;->mTitleString:Ljava/lang/String;

    iget-object v1, p0, Lcom/ecareme/pixwe/media/MediaSet;->mTruncTitleString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lookupContainsItem(Lcom/ecareme/pixwe/media/MediaItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 311
    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/MediaItem;->getMediaType()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/ecareme/pixwe/media/MediaSet;->mItemsLookup:Lcom/ecareme/pixwe/media/LongSparseArray;

    move-object v1, v2

    .line 313
    .local v1, lookupTable:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<Lcom/ecareme/pixwe/media/MediaItem;>;"
    :goto_0
    iget-wide v2, p1, Lcom/ecareme/pixwe/media/MediaItem;->mId:J

    invoke-virtual {v1, v2, v3}, Lcom/ecareme/pixwe/media/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecareme/pixwe/media/MediaItem;

    .line 314
    .local v0, lookUp:Lcom/ecareme/pixwe/media/MediaItem;
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/ecareme/pixwe/media/MediaItem;->mFilePath:Ljava/lang/String;

    iget-object v3, p1, Lcom/ecareme/pixwe/media/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 315
    const/4 v2, 0x1

    .line 317
    :goto_1
    return v2

    .line 312
    .end local v0           #lookUp:Lcom/ecareme/pixwe/media/MediaItem;
    .end local v1           #lookupTable:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<Lcom/ecareme/pixwe/media/MediaItem;>;"
    :cond_0
    iget-object v2, p0, Lcom/ecareme/pixwe/media/MediaSet;->mItemsLookupVideo:Lcom/ecareme/pixwe/media/LongSparseArray;

    move-object v1, v2

    goto :goto_0

    .line 317
    .restart local v0       #lookUp:Lcom/ecareme/pixwe/media/MediaItem;
    .restart local v1       #lookupTable:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<Lcom/ecareme/pixwe/media/MediaItem;>;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public refresh()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 371
    iput v4, p0, Lcom/ecareme/pixwe/media/MediaSet;->mNumItemsLoaded:I

    .line 372
    iput v4, p0, Lcom/ecareme/pixwe/media/MediaSet;->mCurrentLocation:I

    .line 373
    iget-object v2, p0, Lcom/ecareme/pixwe/media/MediaSet;->mItems:Ljava/util/ArrayList;

    .line 374
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 375
    .local v3, numItems:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 379
    return-void

    .line 376
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecareme/pixwe/media/MediaItem;

    .line 377
    .local v1, item:Lcom/ecareme/pixwe/media/MediaItem;
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/ecareme/pixwe/media/MediaItem;->mFlagForDelete:Z

    .line 375
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public removeDuplicate(Lcom/ecareme/pixwe/media/MediaItem;)V
    .locals 7
    .parameter "itemToRemove"

    .prologue
    const/4 v6, 0x1

    .line 287
    iget-object v4, p0, Lcom/ecareme/pixwe/media/MediaSet;->mItems:Ljava/util/ArrayList;

    monitor-enter v4

    .line 288
    :try_start_0
    iget-object v5, p0, Lcom/ecareme/pixwe/media/MediaSet;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 289
    .local v3, numItems:I
    const/4 v0, 0x0

    .line 290
    .local v0, foundItem:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 287
    :goto_1
    monitor-exit v4

    .line 305
    return-void

    .line 291
    :cond_0
    iget-object v5, p0, Lcom/ecareme/pixwe/media/MediaSet;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ecareme/pixwe/media/MediaItem;

    .line 292
    .local v2, item:Lcom/ecareme/pixwe/media/MediaItem;
    if-ne v2, p1, :cond_1

    .line 293
    if-nez v0, :cond_2

    .line 294
    const/4 v0, 0x1

    .line 290
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 296
    :cond_2
    iget-object v5, p0, Lcom/ecareme/pixwe/media/MediaSet;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 297
    iget v5, p0, Lcom/ecareme/pixwe/media/MediaSet;->mNumExpectedItems:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/ecareme/pixwe/media/MediaSet;->mNumExpectedItems:I

    .line 298
    iget v5, p0, Lcom/ecareme/pixwe/media/MediaSet;->mNumItemsLoaded:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/ecareme/pixwe/media/MediaSet;->mNumItemsLoaded:I

    .line 299
    iget v5, p0, Lcom/ecareme/pixwe/media/MediaSet;->mCurrentLocation:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/ecareme/pixwe/media/MediaSet;->mCurrentLocation:I

    goto :goto_1

    .line 287
    .end local v0           #foundItem:Z
    .end local v1           #i:I
    .end local v2           #item:Lcom/ecareme/pixwe/media/MediaItem;
    .end local v3           #numItems:I
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public removeItem(Lcom/ecareme/pixwe/media/MediaItem;)Z
    .locals 5
    .parameter "itemToRemove"

    .prologue
    const/4 v4, 0x1

    .line 272
    iget-object v1, p0, Lcom/ecareme/pixwe/media/MediaSet;->mItems:Ljava/util/ArrayList;

    monitor-enter v1

    .line 273
    :try_start_0
    iget-object v2, p0, Lcom/ecareme/pixwe/media/MediaSet;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 274
    iget v2, p0, Lcom/ecareme/pixwe/media/MediaSet;->mNumExpectedItems:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/ecareme/pixwe/media/MediaSet;->mNumExpectedItems:I

    .line 275
    iget v2, p0, Lcom/ecareme/pixwe/media/MediaSet;->mNumItemsLoaded:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/ecareme/pixwe/media/MediaSet;->mNumItemsLoaded:I

    .line 276
    iget v2, p0, Lcom/ecareme/pixwe/media/MediaSet;->mCurrentLocation:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/ecareme/pixwe/media/MediaSet;->mCurrentLocation:I

    .line 277
    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/MediaItem;->getMediaType()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/ecareme/pixwe/media/MediaSet;->mItemsLookup:Lcom/ecareme/pixwe/media/LongSparseArray;

    move-object v0, v2

    .line 279
    .local v0, lookup:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<Lcom/ecareme/pixwe/media/MediaItem;>;"
    :goto_0
    iget-wide v2, p1, Lcom/ecareme/pixwe/media/MediaItem;->mId:J

    invoke-virtual {v0, v2, v3}, Lcom/ecareme/pixwe/media/LongSparseArray;->remove(J)V

    .line 280
    monitor-exit v1

    move v1, v4

    .line 282
    .end local v0           #lookup:Lcom/ecareme/pixwe/media/LongSparseArray;,"Lcom/ecareme/pixwe/media/LongSparseArray<Lcom/ecareme/pixwe/media/MediaItem;>;"
    :goto_1
    return v1

    .line 278
    :cond_0
    iget-object v2, p0, Lcom/ecareme/pixwe/media/MediaSet;->mItemsLookupVideo:Lcom/ecareme/pixwe/media/LongSparseArray;

    move-object v0, v2

    goto :goto_0

    .line 282
    :cond_1
    monitor-exit v1

    const/4 v1, 0x0

    goto :goto_1

    .line 272
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setContainsValidItems()Z
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/ecareme/pixwe/media/MediaSet;->mNumExpectedItems:I

    if-nez v0, :cond_0

    .line 136
    const/4 v0, 0x0

    .line 137
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setNumExpectedItems(I)V
    .locals 1
    .parameter "numExpectedItems"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/ecareme/pixwe/media/MediaSet;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 126
    iput p1, p0, Lcom/ecareme/pixwe/media/MediaSet;->mNumExpectedItems:I

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/MediaSet;->mNumExpectedItemsCountAccurate:Z

    .line 128
    return-void
.end method

.method public updateNumExpectedItems()V
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/ecareme/pixwe/media/MediaSet;->mNumItemsLoaded:I

    iput v0, p0, Lcom/ecareme/pixwe/media/MediaSet;->mNumExpectedItems:I

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/MediaSet;->mNumExpectedItemsCountAccurate:Z

    .line 143
    return-void
.end method
