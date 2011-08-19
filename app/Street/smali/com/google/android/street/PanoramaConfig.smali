.class public Lcom/google/android/street/PanoramaConfig;
.super Ljava/lang/Object;
.source "PanoramaConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/street/PanoramaConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCopyright:Ljava/lang/String;

.field public mDepthMap:Lcom/google/android/street/DepthMap;

.field public mDisabled:Z

.field public mImageHeight:I

.field public mImageWidth:I

.field public mInfoLevel:I

.field public mInfoValue:I

.field public mLastModifiedTime:J

.field public mLatLng:Lcom/google/android/street/MapPoint;

.field public mLinks:[Lcom/google/android/street/PanoramaLink;

.field public mMaxVisiblePitchDeg:F

.field public mMinVisiblePitchDeg:F

.field public mNumZoomLevels:I

.field public mOriginalZoomLevel:I

.field public mPanoId:Ljava/lang/String;

.field public mPanoYawDeg:F

.field public mProjectionType:I

.field public mRootImageKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/street/PanoramaImageKey;",
            ">;"
        }
    .end annotation
.end field

.field public mSceneType:I

.field public mStreetRange:Ljava/lang/String;

.field public mText:Ljava/lang/String;

.field public mTileHeight:I

.field public mTileWidth:I

.field private mTiltMatrix:[F

.field public mTiltPitchDeg:F

.field public mTiltPitchRad:F

.field public mTiltYawDeg:F

.field public mTiltYawRad:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 631
    new-instance v0, Lcom/google/android/street/PanoramaConfig$1;

    invoke-direct {v0}, Lcom/google/android/street/PanoramaConfig$1;-><init>()V

    sput-object v0, Lcom/google/android/street/PanoramaConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 8
    .parameter "source"

    .prologue
    const/4 v7, 0x0

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    invoke-static {}, Lcom/google/android/street/PanoramaConfig;->getCurrentTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/street/PanoramaConfig;->mLastModifiedTime:J

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/4 v6, 0x6

    if-eq v5, v6, :cond_0

    .line 311
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "unknown version"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 313
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, p0, Lcom/google/android/street/PanoramaConfig;->mDisabled:Z

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/google/android/street/PanoramaConfig;->mInfoLevel:I

    .line 317
    iput v7, p0, Lcom/google/android/street/PanoramaConfig;->mInfoValue:I

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/google/android/street/PanoramaConfig;->mImageWidth:I

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/google/android/street/PanoramaConfig;->mImageHeight:I

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/google/android/street/PanoramaConfig;->mTileWidth:I

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/google/android/street/PanoramaConfig;->mTileHeight:I

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/street/PanoramaConfig;->mPanoId:Ljava/lang/String;

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 324
    .local v3, latE6:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 325
    .local v4, lngE6:I
    new-instance v5, Lcom/google/android/street/MapPoint;

    invoke-direct {v5, v3, v4}, Lcom/google/android/street/MapPoint;-><init>(II)V

    iput-object v5, p0, Lcom/google/android/street/PanoramaConfig;->mLatLng:Lcom/google/android/street/MapPoint;

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/google/android/street/PanoramaConfig;->mNumZoomLevels:I

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/street/PanoramaConfig;->mCopyright:Ljava/lang/String;

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/street/PanoramaConfig;->mText:Ljava/lang/String;

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/street/PanoramaConfig;->mStreetRange:Ljava/lang/String;

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/google/android/street/PanoramaConfig;->mSceneType:I

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/google/android/street/PanoramaConfig;->mProjectionType:I

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    iput v5, p0, Lcom/google/android/street/PanoramaConfig;->mPanoYawDeg:F

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    iput v5, p0, Lcom/google/android/street/PanoramaConfig;->mTiltYawDeg:F

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    iput v5, p0, Lcom/google/android/street/PanoramaConfig;->mTiltPitchDeg:F

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    iput v5, p0, Lcom/google/android/street/PanoramaConfig;->mMinVisiblePitchDeg:F

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    iput v5, p0, Lcom/google/android/street/PanoramaConfig;->mMaxVisiblePitchDeg:F

    .line 337
    sget-object v5, Lcom/google/android/street/PanoramaLink;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/android/street/PanoramaLink;

    iput-object v5, p0, Lcom/google/android/street/PanoramaConfig;->mLinks:[Lcom/google/android/street/PanoramaLink;

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/street/PanoramaConfig;->mLastModifiedTime:J

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 340
    .local v0, compressedDepthMap:[B
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 342
    .local v1, compressedPanoMap:[B
    :try_start_0
    new-instance v5, Lcom/google/android/street/DepthMap;

    invoke-direct {v5, v0, v1}, Lcom/google/android/street/DepthMap;-><init>([B[B)V

    iput-object v5, p0, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/street/PanoramaConfig;->finishInit()V

    .line 347
    return-void

    .end local v0           #compressedDepthMap:[B
    .end local v1           #compressedPanoMap:[B
    .end local v3           #latE6:I
    .end local v4           #lngE6:I
    :cond_1
    move v5, v7

    .line 313
    goto/16 :goto_0

    .line 343
    .restart local v0       #compressedDepthMap:[B
    .restart local v1       #compressedPanoMap:[B
    .restart local v3       #latE6:I
    .restart local v4       #lngE6:I
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 344
    .local v2, e:Ljava/io/IOException;
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    goto :goto_1
.end method

.method public constructor <init>(Lcom/google/mobile/common/io/protocol/ProtoBuf;)V
    .locals 13
    .parameter "proto"

    .prologue
    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    invoke-static {}, Lcom/google/android/street/PanoramaConfig;->getCurrentTime()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/google/android/street/PanoramaConfig;->mLastModifiedTime:J

    .line 354
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/mobile/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 356
    .local v1, dp:Lcom/google/mobile/common/io/protocol/ProtoBuf;
    const/16 v10, 0x21

    invoke-virtual {p1, v10}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/mobile/common/io/protocol/ProtoBuf;

    move-result-object v8

    .line 358
    .local v8, pp:Lcom/google/mobile/common/io/protocol/ProtoBuf;
    const/16 v10, 0x31

    invoke-virtual {p1, v10}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/mobile/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 360
    .local v0, ap:Lcom/google/mobile/common/io/protocol/ProtoBuf;
    const/16 v10, 0x3a

    invoke-virtual {p1, v10}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/mobile/common/io/protocol/ProtoBuf;

    move-result-object v5

    .line 363
    .local v5, m:Lcom/google/mobile/common/io/protocol/ProtoBuf;
    const/4 v10, 0x2

    invoke-virtual {v1, v10}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v10

    iput-boolean v10, p0, Lcom/google/android/street/PanoramaConfig;->mDisabled:Z

    .line 367
    const/4 v10, 0x3

    invoke-virtual {v1, v10}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v10

    iput v10, p0, Lcom/google/android/street/PanoramaConfig;->mInfoLevel:I

    .line 369
    const/16 v10, 0x11

    const/4 v11, 0x0

    const v12, 0x186a0

    invoke-static {v1, v10, v11, v12}, Lcom/google/android/street/PanoramaConfig;->getInt(Lcom/google/mobile/common/io/protocol/ProtoBuf;III)I

    move-result v10

    iput v10, p0, Lcom/google/android/street/PanoramaConfig;->mInfoValue:I

    .line 373
    iget v10, p0, Lcom/google/android/street/PanoramaConfig;->mInfoLevel:I

    if-eqz v10, :cond_0

    .line 374
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "infoLevel="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/google/android/street/PanoramaConfig;->mInfoLevel:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", infoValue="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/google/android/street/PanoramaConfig;->mInfoValue:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/street/Street;->log(Ljava/lang/String;)V

    .line 377
    :cond_0
    const/4 v10, 0x4

    const/4 v11, 0x1

    const v12, 0x8000

    invoke-static {v1, v10, v11, v12}, Lcom/google/android/street/PanoramaConfig;->getInt(Lcom/google/mobile/common/io/protocol/ProtoBuf;III)I

    move-result v10

    iput v10, p0, Lcom/google/android/street/PanoramaConfig;->mImageWidth:I

    .line 380
    const/4 v10, 0x5

    const/4 v11, 0x1

    const v12, 0x8000

    invoke-static {v1, v10, v11, v12}, Lcom/google/android/street/PanoramaConfig;->getInt(Lcom/google/mobile/common/io/protocol/ProtoBuf;III)I

    move-result v10

    iput v10, p0, Lcom/google/android/street/PanoramaConfig;->mImageHeight:I

    .line 383
    const/4 v10, 0x6

    const/4 v11, 0x1

    const/16 v12, 0xb40

    invoke-static {v1, v10, v11, v12}, Lcom/google/android/street/PanoramaConfig;->getInt(Lcom/google/mobile/common/io/protocol/ProtoBuf;III)I

    move-result v10

    iput v10, p0, Lcom/google/android/street/PanoramaConfig;->mTileWidth:I

    .line 386
    const/4 v10, 0x7

    const/4 v11, 0x1

    const/16 v12, 0xb40

    invoke-static {v1, v10, v11, v12}, Lcom/google/android/street/PanoramaConfig;->getInt(Lcom/google/mobile/common/io/protocol/ProtoBuf;III)I

    move-result v10

    iput v10, p0, Lcom/google/android/street/PanoramaConfig;->mTileHeight:I

    .line 389
    const/16 v10, 0x8

    invoke-virtual {v1, v10}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/google/android/street/PanoramaConfig;->mPanoId:Ljava/lang/String;

    .line 391
    const/16 v10, 0x9

    const/4 v11, 0x1

    const/16 v12, 0xe

    invoke-static {v1, v10, v11, v12}, Lcom/google/android/street/PanoramaConfig;->getInt(Lcom/google/mobile/common/io/protocol/ProtoBuf;III)I

    move-result v10

    iput v10, p0, Lcom/google/android/street/PanoramaConfig;->mNumZoomLevels:I

    .line 394
    const/16 v10, 0xa

    invoke-virtual {v1, v10}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/mobile/common/io/protocol/ProtoBuf;

    move-result-object v6

    .line 396
    .local v6, mapPointProto:Lcom/google/mobile/common/io/protocol/ProtoBuf;
    new-instance v10, Lcom/google/android/street/MapPoint;

    invoke-direct {v10, v6}, Lcom/google/android/street/MapPoint;-><init>(Lcom/google/mobile/common/io/protocol/ProtoBuf;)V

    iput-object v10, p0, Lcom/google/android/street/PanoramaConfig;->mLatLng:Lcom/google/android/street/MapPoint;

    .line 398
    const/16 v10, 0xb

    invoke-virtual {v1, v10}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/google/android/street/PanoramaConfig;->mCopyright:Ljava/lang/String;

    .line 400
    const/16 v10, 0xc

    invoke-virtual {v1, v10}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/google/android/street/PanoramaConfig;->mText:Ljava/lang/String;

    .line 402
    const/16 v10, 0xd

    invoke-virtual {v1, v10}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/google/android/street/PanoramaConfig;->mStreetRange:Ljava/lang/String;

    .line 404
    const/16 v10, 0x3d

    invoke-virtual {v1, v10}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v10

    iput v10, p0, Lcom/google/android/street/PanoramaConfig;->mSceneType:I

    .line 409
    const/16 v10, 0x22

    invoke-virtual {v8, v10}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v10

    invoke-static {v10}, Lcom/google/android/street/PanoramaConfig;->convertYawE6(I)F

    move-result v10

    iput v10, p0, Lcom/google/android/street/PanoramaConfig;->mPanoYawDeg:F

    .line 411
    const/16 v10, 0x23

    invoke-virtual {v8, v10}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v10

    invoke-static {v10}, Lcom/google/android/street/PanoramaConfig;->convertYawE6(I)F

    move-result v10

    iput v10, p0, Lcom/google/android/street/PanoramaConfig;->mTiltYawDeg:F

    .line 413
    const/16 v10, 0x24

    invoke-virtual {v8, v10}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v10

    int-to-float v10, v10

    const v11, 0x358637bd

    mul-float/2addr v10, v11

    const v11, -0x3d4c3333

    const v12, 0x42b3cccd

    invoke-static {v10, v11, v12}, Lcom/google/android/street/PanoramaConfig;->clamp(FFF)F

    move-result v10

    iput v10, p0, Lcom/google/android/street/PanoramaConfig;->mTiltPitchDeg:F

    .line 422
    const/4 v10, 0x0

    iput v10, p0, Lcom/google/android/street/PanoramaConfig;->mProjectionType:I

    .line 423
    const/16 v10, 0x26

    invoke-virtual {v8, v10}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 424
    const/16 v10, 0x26

    invoke-virtual {v8, v10}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 436
    :cond_1
    :goto_0
    const/16 v10, 0x28

    const v11, -0x55d4a80

    invoke-static {v8, v10, v11}, Lcom/google/android/street/PanoramaConfig;->getVisiblePitch(Lcom/google/mobile/common/io/protocol/ProtoBuf;II)F

    move-result v10

    iput v10, p0, Lcom/google/android/street/PanoramaConfig;->mMinVisiblePitchDeg:F

    .line 439
    const/16 v10, 0x29

    const v11, 0x55d4a80

    invoke-static {v8, v10, v11}, Lcom/google/android/street/PanoramaConfig;->getVisiblePitch(Lcom/google/mobile/common/io/protocol/ProtoBuf;II)F

    move-result v10

    iput v10, p0, Lcom/google/android/street/PanoramaConfig;->mMaxVisiblePitchDeg:F

    .line 443
    iget v10, p0, Lcom/google/android/street/PanoramaConfig;->mMinVisiblePitchDeg:F

    iget v11, p0, Lcom/google/android/street/PanoramaConfig;->mMaxVisiblePitchDeg:F

    cmpl-float v10, v10, v11

    if-lez v10, :cond_2

    .line 444
    iget v9, p0, Lcom/google/android/street/PanoramaConfig;->mMinVisiblePitchDeg:F

    .line 445
    .local v9, temp:F
    iget v10, p0, Lcom/google/android/street/PanoramaConfig;->mMaxVisiblePitchDeg:F

    iput v10, p0, Lcom/google/android/street/PanoramaConfig;->mMinVisiblePitchDeg:F

    .line 446
    iput v9, p0, Lcom/google/android/street/PanoramaConfig;->mMaxVisiblePitchDeg:F

    .line 454
    .end local v9           #temp:F
    :cond_2
    const/16 v10, 0x34

    invoke-virtual {v0, v10}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v7

    .line 456
    .local v7, numLinks:I
    new-array v10, v7, [Lcom/google/android/street/PanoramaLink;

    iput-object v10, p0, Lcom/google/android/street/PanoramaConfig;->mLinks:[Lcom/google/android/street/PanoramaLink;

    .line 457
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v7, :cond_3

    .line 458
    const/16 v10, 0x34

    invoke-virtual {v0, v10, v3}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/mobile/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 460
    .local v4, linkProto:Lcom/google/mobile/common/io/protocol/ProtoBuf;
    iget-object v10, p0, Lcom/google/android/street/PanoramaConfig;->mLinks:[Lcom/google/android/street/PanoramaLink;

    new-instance v11, Lcom/google/android/street/PanoramaLink;

    invoke-direct {v11, v4}, Lcom/google/android/street/PanoramaLink;-><init>(Lcom/google/mobile/common/io/protocol/ProtoBuf;)V

    aput-object v11, v10, v3

    .line 457
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 426
    .end local v3           #i:I
    .end local v4           #linkProto:Lcom/google/mobile/common/io/protocol/ProtoBuf;
    .end local v7           #numLinks:I
    :pswitch_0
    const/4 v10, 0x0

    iput v10, p0, Lcom/google/android/street/PanoramaConfig;->mProjectionType:I

    goto :goto_0

    .line 429
    :pswitch_1
    const/4 v10, 0x1

    iput v10, p0, Lcom/google/android/street/PanoramaConfig;->mProjectionType:I

    goto :goto_0

    .line 466
    .restart local v3       #i:I
    .restart local v7       #numLinks:I
    :cond_3
    if-eqz v5, :cond_4

    const/16 v10, 0x3b

    invoke-virtual {v5, v10}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v10, 0x3c

    invoke-virtual {v5, v10}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 469
    :try_start_0
    new-instance v10, Lcom/google/android/street/DepthMap;

    const/16 v11, 0x3b

    invoke-virtual {v5, v11}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v11

    const/16 v12, 0x3c

    invoke-virtual {v5, v12}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/google/android/street/DepthMap;-><init>([B[B)V

    iput-object v10, p0, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/street/PanoramaConfig;->finishInit()V

    .line 478
    return-void

    .line 472
    :catch_0
    move-exception v10

    move-object v2, v10

    .line 473
    .local v2, e:Ljava/io/IOException;
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    goto :goto_2

    .line 424
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static clamp(FFF)F
    .locals 1
    .parameter "value"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 767
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move v0, p1

    :goto_0
    return v0

    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    move v0, p0

    goto :goto_0
.end method

.method static clamp(III)I
    .locals 1
    .parameter "value"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 763
    if-ge p0, p1, :cond_0

    move v0, p1

    :goto_0
    return v0

    :cond_0
    if-le p0, p2, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    move v0, p0

    goto :goto_0
.end method

.method public static convertYawE6(I)F
    .locals 2
    .parameter "yawE6"

    .prologue
    .line 790
    const v0, 0x15752a00

    rem-int v0, p0, v0

    int-to-float v0, v0

    const v1, 0x358637bd

    mul-float/2addr v0, v1

    return v0
.end method

.method public static getClosestLinkIndex([Lcom/google/android/street/PanoramaLink;FF)I
    .locals 7
    .parameter "links"
    .parameter "yawDeg"
    .parameter "maxAngle"

    .prologue
    .line 743
    const/4 v4, -0x1

    .line 744
    .local v4, result:I
    move v5, p2

    .line 745
    .local v5, resultDiff:F
    if-eqz p0, :cond_2

    .line 746
    array-length v3, p0

    .line 747
    .local v3, linkCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 748
    aget-object v2, p0, v1

    .line 749
    .local v2, link:Lcom/google/android/street/PanoramaLink;
    iget v6, v2, Lcom/google/android/street/PanoramaLink;->mYawDeg:F

    sub-float v6, p1, v6

    invoke-static {v6}, Lcom/google/android/street/StreetMath;->normalizeDegrees(F)F

    move-result v0

    .line 750
    .local v0, diff:F
    const/high16 v6, 0x4334

    cmpl-float v6, v0, v6

    if-lez v6, :cond_0

    .line 751
    const/high16 v6, 0x43b4

    sub-float v0, v6, v0

    .line 753
    :cond_0
    cmpg-float v6, v0, v5

    if-gez v6, :cond_1

    .line 754
    move v5, v0

    .line 755
    move v4, v1

    .line 747
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 759
    .end local v0           #diff:F
    .end local v1           #i:I
    .end local v2           #link:Lcom/google/android/street/PanoramaLink;
    .end local v3           #linkCount:I
    :cond_2
    return v4
.end method

.method private static getCurrentTime()J
    .locals 2

    .prologue
    .line 550
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method static getInt(Lcom/google/mobile/common/io/protocol/ProtoBuf;III)I
    .locals 1
    .parameter "proto"
    .parameter "tag"
    .parameter "lowerBound"
    .parameter "upperBound"

    .prologue
    .line 773
    invoke-virtual {p0, p1}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    invoke-static {v0, p2, p3}, Lcom/google/android/street/PanoramaConfig;->clamp(III)I

    move-result v0

    return v0
.end method

.method static getVisiblePitch(Lcom/google/mobile/common/io/protocol/ProtoBuf;II)F
    .locals 3
    .parameter "proto"
    .parameter "tag"
    .parameter "defaultValue"

    .prologue
    .line 779
    const v1, -0x55d4a80

    const v2, 0x55d4a80

    invoke-static {p0, p1, v1, v2}, Lcom/google/android/street/PanoramaConfig;->getInt(Lcom/google/mobile/common/io/protocol/ProtoBuf;III)I

    move-result v0

    .line 782
    .local v0, pitchE6:I
    if-nez v0, :cond_0

    .line 783
    move v0, p2

    .line 785
    :cond_0
    int-to-float v1, v0

    const v2, 0x358637bd

    mul-float/2addr v1, v2

    return v1
.end method

.method public static parseMetadataProto(Ljava/io/InputStream;)Lcom/google/android/street/PanoramaConfig;
    .locals 5
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 285
    .local v2, t0:J
    new-instance v1, Lcom/google/mobile/common/io/protocol/ProtoBuf;

    sget-object v4, Lcom/google/mobile/googlenav/proto/GmmMessageTypes;->STREET_VIEW_METADATA_PROTO:Lcom/google/mobile/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v4}, Lcom/google/mobile/common/io/protocol/ProtoBuf;-><init>(Lcom/google/mobile/common/io/protocol/ProtoBufType;)V

    .line 287
    .local v1, proto:Lcom/google/mobile/common/io/protocol/ProtoBuf;
    invoke-virtual {v1, p0}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;)Lcom/google/mobile/common/io/protocol/ProtoBuf;

    .line 288
    new-instance v0, Lcom/google/android/street/PanoramaConfig;

    invoke-direct {v0, v1}, Lcom/google/android/street/PanoramaConfig;-><init>(Lcom/google/mobile/common/io/protocol/ProtoBuf;)V

    .line 295
    .local v0, panoramaConfig:Lcom/google/android/street/PanoramaConfig;
    return-object v0
.end method

.method public static persistentKeyForPanoId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "panoId"

    .prologue
    .line 545
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "config_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public addLatencyToTransitions()Z
    .locals 1

    .prologue
    .line 563
    iget v0, p0, Lcom/google/android/street/PanoramaConfig;->mInfoLevel:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 628
    const/4 v0, 0x0

    return v0
.end method

.method public finishInit()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 486
    iget v0, p0, Lcom/google/android/street/PanoramaConfig;->mTiltYawDeg:F

    invoke-static {v0}, Lcom/google/android/street/StreetMath;->degreesToRadians(F)F

    move-result v0

    iput v0, p0, Lcom/google/android/street/PanoramaConfig;->mTiltYawRad:F

    .line 487
    iget v0, p0, Lcom/google/android/street/PanoramaConfig;->mTiltYawRad:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 488
    iget v0, p0, Lcom/google/android/street/PanoramaConfig;->mTiltYawRad:F

    const v1, 0x40c90fdb

    add-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/street/PanoramaConfig;->mTiltYawRad:F

    .line 490
    :cond_0
    iget v0, p0, Lcom/google/android/street/PanoramaConfig;->mTiltPitchDeg:F

    invoke-static {v0}, Lcom/google/android/street/StreetMath;->degreesToRadians(F)F

    move-result v0

    iput v0, p0, Lcom/google/android/street/PanoramaConfig;->mTiltPitchRad:F

    .line 494
    iget v0, p0, Lcom/google/android/street/PanoramaConfig;->mImageWidth:I

    iget v1, p0, Lcom/google/android/street/PanoramaConfig;->mImageHeight:I

    iget v3, p0, Lcom/google/android/street/PanoramaConfig;->mTileWidth:I

    iget v4, p0, Lcom/google/android/street/PanoramaConfig;->mTileHeight:I

    invoke-static {v0, v1, v3, v4}, Lcom/google/android/street/StreetMath;->naturalZoomLevels(IIII)I

    move-result v0

    iput v0, p0, Lcom/google/android/street/PanoramaConfig;->mOriginalZoomLevel:I

    .line 499
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/street/PanoramaConfig;->mRootImageKeys:Ljava/util/List;

    .line 500
    iget v0, p0, Lcom/google/android/street/PanoramaConfig;->mProjectionType:I

    packed-switch v0, :pswitch_data_0

    .line 520
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unrecognized projection type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 502
    :pswitch_0
    iget-object v6, p0, Lcom/google/android/street/PanoramaConfig;->mRootImageKeys:Ljava/util/List;

    new-instance v0, Lcom/google/android/street/PanoramaImageKey;

    iget-object v1, p0, Lcom/google/android/street/PanoramaConfig;->mPanoId:Ljava/lang/String;

    const/4 v4, -0x1

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/street/PanoramaImageKey;-><init>(Ljava/lang/String;IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    :goto_0
    return-void

    .line 506
    :pswitch_1
    iget-object v6, p0, Lcom/google/android/street/PanoramaConfig;->mRootImageKeys:Ljava/util/List;

    new-instance v0, Lcom/google/android/street/PanoramaImageKey;

    iget-object v1, p0, Lcom/google/android/street/PanoramaConfig;->mPanoId:Ljava/lang/String;

    const/4 v4, 0x1

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/street/PanoramaImageKey;-><init>(Ljava/lang/String;IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    iget-object v6, p0, Lcom/google/android/street/PanoramaConfig;->mRootImageKeys:Ljava/util/List;

    new-instance v0, Lcom/google/android/street/PanoramaImageKey;

    iget-object v1, p0, Lcom/google/android/street/PanoramaConfig;->mPanoId:Ljava/lang/String;

    const/4 v4, 0x2

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/street/PanoramaImageKey;-><init>(Ljava/lang/String;IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    iget-object v6, p0, Lcom/google/android/street/PanoramaConfig;->mRootImageKeys:Ljava/util/List;

    new-instance v0, Lcom/google/android/street/PanoramaImageKey;

    iget-object v1, p0, Lcom/google/android/street/PanoramaConfig;->mPanoId:Ljava/lang/String;

    const/4 v4, 0x3

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/street/PanoramaImageKey;-><init>(Ljava/lang/String;IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    iget-object v6, p0, Lcom/google/android/street/PanoramaConfig;->mRootImageKeys:Ljava/util/List;

    new-instance v0, Lcom/google/android/street/PanoramaImageKey;

    iget-object v1, p0, Lcom/google/android/street/PanoramaConfig;->mPanoId:Ljava/lang/String;

    const/4 v4, 0x4

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/street/PanoramaImageKey;-><init>(Ljava/lang/String;IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    iget-object v6, p0, Lcom/google/android/street/PanoramaConfig;->mRootImageKeys:Ljava/util/List;

    new-instance v0, Lcom/google/android/street/PanoramaImageKey;

    iget-object v1, p0, Lcom/google/android/street/PanoramaConfig;->mPanoId:Ljava/lang/String;

    const/4 v4, 0x5

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/street/PanoramaImageKey;-><init>(Ljava/lang/String;IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    iget-object v6, p0, Lcom/google/android/street/PanoramaConfig;->mRootImageKeys:Ljava/util/List;

    new-instance v0, Lcom/google/android/street/PanoramaImageKey;

    iget-object v1, p0, Lcom/google/android/street/PanoramaConfig;->mPanoId:Ljava/lang/String;

    const/4 v4, 0x6

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/street/PanoramaImageKey;-><init>(Ljava/lang/String;IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 500
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getClosestLink(F)Lcom/google/android/street/PanoramaLink;
    .locals 1
    .parameter "yawDeg"

    .prologue
    .line 643
    const/high16 v0, 0x42f0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/street/PanoramaConfig;->getClosestLink(FF)Lcom/google/android/street/PanoramaLink;

    move-result-object v0

    return-object v0
.end method

.method public getClosestLink(FF)Lcom/google/android/street/PanoramaLink;
    .locals 3
    .parameter "yawDeg"
    .parameter "maxAngle"

    .prologue
    .line 647
    const/4 v1, 0x0

    .line 648
    .local v1, result:Lcom/google/android/street/PanoramaLink;
    invoke-virtual {p0, p1, p2}, Lcom/google/android/street/PanoramaConfig;->getClosestLinkIndex(FF)I

    move-result v0

    .line 649
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 650
    iget-object v2, p0, Lcom/google/android/street/PanoramaConfig;->mLinks:[Lcom/google/android/street/PanoramaLink;

    aget-object v1, v2, v0

    .line 652
    :cond_0
    return-object v1
.end method

.method public getClosestLinkIndex(FF)I
    .locals 1
    .parameter "yawDeg"
    .parameter "maxAngle"

    .prologue
    .line 660
    iget-object v0, p0, Lcom/google/android/street/PanoramaConfig;->mLinks:[Lcom/google/android/street/PanoramaLink;

    invoke-static {v0, p1, p2}, Lcom/google/android/street/PanoramaConfig;->getClosestLinkIndex([Lcom/google/android/street/PanoramaLink;FF)I

    move-result v0

    return v0
.end method

.method public getPersistentKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/google/android/street/PanoramaConfig;->mPanoId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/street/PanoramaConfig;->persistentKeyForPanoId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTiltMatrix()[F
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 667
    iget-object v0, p0, Lcom/google/android/street/PanoramaConfig;->mTiltMatrix:[F

    if-nez v0, :cond_0

    .line 668
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/street/PanoramaConfig;->mTiltMatrix:[F

    .line 675
    iget v0, p0, Lcom/google/android/street/PanoramaConfig;->mTiltYawDeg:F

    iget v5, p0, Lcom/google/android/street/PanoramaConfig;->mPanoYawDeg:F

    sub-float v2, v0, v5

    .line 676
    .local v2, tiltYawDeg:F
    iget-object v0, p0, Lcom/google/android/street/PanoramaConfig;->mTiltMatrix:[F

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 677
    iget-object v5, p0, Lcom/google/android/street/PanoramaConfig;->mTiltMatrix:[F

    iget v7, p0, Lcom/google/android/street/PanoramaConfig;->mTiltPitchDeg:F

    move v6, v1

    move v8, v4

    move v9, v3

    move v10, v3

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 678
    iget-object v5, p0, Lcom/google/android/street/PanoramaConfig;->mTiltMatrix:[F

    neg-float v7, v2

    move v6, v1

    move v8, v3

    move v9, v4

    move v10, v3

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 681
    .end local v2           #tiltYawDeg:F
    :cond_0
    iget-object v0, p0, Lcom/google/android/street/PanoramaConfig;->mTiltMatrix:[F

    return-object v0
.end method

.method public getTransitionLatency()I
    .locals 1

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/google/android/street/PanoramaConfig;->addLatencyToTransitions()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/street/PanoramaConfig;->mInfoValue:I

    if-nez v0, :cond_1

    const/16 v0, 0x7d0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/street/PanoramaConfig;->mInfoValue:I

    goto :goto_0
.end method

.method public isExpired()Z
    .locals 6

    .prologue
    .line 554
    invoke-static {}, Lcom/google/android/street/PanoramaConfig;->getCurrentTime()J

    move-result-wide v0

    .line 555
    .local v0, now:J
    iget-wide v2, p0, Lcom/google/android/street/PanoramaConfig;->mLastModifiedTime:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x6ddd00

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public serviceTemporarilyUnavailable()Z
    .locals 1

    .prologue
    .line 573
    iget v0, p0, Lcom/google/android/street/PanoramaConfig;->mInfoLevel:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public someRequestsWillBeDenied()Z
    .locals 1

    .prologue
    .line 577
    iget v0, p0, Lcom/google/android/street/PanoramaConfig;->mInfoLevel:I

    and-int/lit8 v0, v0, 0x41

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/street/PanoramaConfig;->mPanoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " text=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/street/PanoramaConfig;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public vehicleToWorld(FFF[F)V
    .locals 11
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "result"

    .prologue
    const/4 v10, 0x3

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 731
    const/4 v2, 0x4

    new-array v9, v2, [F

    aput p1, v9, v1

    const/4 v2, 0x1

    aput p2, v9, v2

    const/4 v2, 0x2

    aput p3, v9, v2

    aput v4, v9, v10

    .line 732
    .local v9, vector:[F
    const/16 v2, 0x10

    new-array v0, v2, [F

    .line 733
    .local v0, matrix:[F
    iget v2, p0, Lcom/google/android/street/PanoramaConfig;->mPanoYawDeg:F

    const/high16 v5, 0x4334

    add-float/2addr v2, v5

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 734
    invoke-virtual {p0}, Lcom/google/android/street/PanoramaConfig;->getTiltMatrix()[F

    move-result-object v4

    move-object v2, v0

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    move-object v2, v9

    move v3, v1

    move-object v4, v0

    move v5, v1

    move-object v6, v9

    move v7, v1

    .line 735
    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 736
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v10, :cond_0

    .line 737
    aget v1, v9, v8

    aput v1, p4, v8

    .line 736
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 739
    :cond_0
    return-void
.end method

.method public vehicleToWorldYawPitch(FF[F)V
    .locals 3
    .parameter "yaw"
    .parameter "pitch"
    .parameter "worldYawPitch"

    .prologue
    const/4 v2, 0x0

    .line 707
    iget v0, p0, Lcom/google/android/street/PanoramaConfig;->mPanoYawDeg:F

    invoke-static {v0}, Lcom/google/android/street/StreetMath;->degreesToUnit(F)F

    move-result v0

    add-float/2addr v0, p1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    aput v0, p3, v2

    .line 708
    const/4 v0, 0x1

    aget v1, p3, v2

    invoke-static {v1}, Lcom/google/android/street/StreetMath;->unitToRadians(F)F

    move-result v1

    iget v2, p0, Lcom/google/android/street/PanoramaConfig;->mTiltYawDeg:F

    invoke-static {v2}, Lcom/google/android/street/StreetMath;->degreesToRadians(F)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/FloatMath;->cos(F)F

    move-result v1

    iget v2, p0, Lcom/google/android/street/PanoramaConfig;->mTiltPitchRad:F

    invoke-static {v2}, Lcom/google/android/street/StreetMath;->radiansToUnit(F)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v1, p2

    aput v1, p3, v0

    .line 712
    return-void
.end method

.method public worldToVehicleYawPitch(FF[F)V
    .locals 3
    .parameter "yaw"
    .parameter "pitch"
    .parameter "vehicleYawPitch"

    .prologue
    .line 719
    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/street/PanoramaConfig;->mPanoYawDeg:F

    invoke-static {v1}, Lcom/google/android/street/StreetMath;->degreesToUnit(F)F

    move-result v1

    sub-float v1, p1, v1

    const/high16 v2, 0x3f00

    sub-float/2addr v1, v2

    aput v1, p3, v0

    .line 720
    const/4 v0, 0x1

    invoke-static {p1}, Lcom/google/android/street/StreetMath;->unitToRadians(F)F

    move-result v1

    iget v2, p0, Lcom/google/android/street/PanoramaConfig;->mTiltYawDeg:F

    invoke-static {v2}, Lcom/google/android/street/StreetMath;->degreesToRadians(F)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/FloatMath;->cos(F)F

    move-result v1

    iget v2, p0, Lcom/google/android/street/PanoramaConfig;->mTiltPitchRad:F

    invoke-static {v2}, Lcom/google/android/street/StreetMath;->radiansToUnit(F)F

    move-result v2

    mul-float/2addr v1, v2

    sub-float v1, p2, v1

    aput v1, p3, v0

    .line 723
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v2, 0x0

    .line 593
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 594
    iget-boolean v0, p0, Lcom/google/android/street/PanoramaConfig;->mDisabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 595
    iget v0, p0, Lcom/google/android/street/PanoramaConfig;->mInfoLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 598
    iget v0, p0, Lcom/google/android/street/PanoramaConfig;->mImageWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 599
    iget v0, p0, Lcom/google/android/street/PanoramaConfig;->mImageHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 600
    iget v0, p0, Lcom/google/android/street/PanoramaConfig;->mTileWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 601
    iget v0, p0, Lcom/google/android/street/PanoramaConfig;->mTileHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 602
    iget-object v0, p0, Lcom/google/android/street/PanoramaConfig;->mPanoId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Lcom/google/android/street/PanoramaConfig;->mLatLng:Lcom/google/android/street/MapPoint;

    invoke-virtual {v0}, Lcom/google/android/street/MapPoint;->getLatE6()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 604
    iget-object v0, p0, Lcom/google/android/street/PanoramaConfig;->mLatLng:Lcom/google/android/street/MapPoint;

    invoke-virtual {v0}, Lcom/google/android/street/MapPoint;->getLngE6()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 605
    iget v0, p0, Lcom/google/android/street/PanoramaConfig;->mNumZoomLevels:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 606
    iget-object v0, p0, Lcom/google/android/street/PanoramaConfig;->mCopyright:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/google/android/street/PanoramaConfig;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 608
    iget-object v0, p0, Lcom/google/android/street/PanoramaConfig;->mStreetRange:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 609
    iget v0, p0, Lcom/google/android/street/PanoramaConfig;->mSceneType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 610
    iget v0, p0, Lcom/google/android/street/PanoramaConfig;->mProjectionType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 611
    iget v0, p0, Lcom/google/android/street/PanoramaConfig;->mPanoYawDeg:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 612
    iget v0, p0, Lcom/google/android/street/PanoramaConfig;->mTiltYawDeg:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 613
    iget v0, p0, Lcom/google/android/street/PanoramaConfig;->mTiltPitchDeg:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 614
    iget v0, p0, Lcom/google/android/street/PanoramaConfig;->mMinVisiblePitchDeg:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 615
    iget v0, p0, Lcom/google/android/street/PanoramaConfig;->mMaxVisiblePitchDeg:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 616
    iget-object v0, p0, Lcom/google/android/street/PanoramaConfig;->mLinks:[Lcom/google/android/street/PanoramaLink;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 617
    iget-wide v0, p0, Lcom/google/android/street/PanoramaConfig;->mLastModifiedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 618
    iget-object v0, p0, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    if-eqz v0, :cond_1

    .line 619
    iget-object v0, p0, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    invoke-virtual {v0}, Lcom/google/android/street/DepthMap;->getCompressedDepthMap()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 620
    iget-object v0, p0, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    invoke-virtual {v0}, Lcom/google/android/street/DepthMap;->getCompressedPanoMap()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 625
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 594
    goto/16 :goto_0

    .line 622
    :cond_1
    new-array v0, v2, [B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 623
    new-array v0, v2, [B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_1
.end method
