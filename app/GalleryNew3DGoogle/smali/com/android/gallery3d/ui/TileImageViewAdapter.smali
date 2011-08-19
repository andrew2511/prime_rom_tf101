.class public Lcom/android/gallery3d/ui/TileImageViewAdapter;
.super Ljava/lang/Object;
.source "TileImageViewAdapter.java"

# interfaces
.implements Lcom/android/gallery3d/ui/TileImageView$Model;


# instance fields
.field protected mBackupImage:Landroid/graphics/Bitmap;

.field protected mFailedToLoad:Z

.field protected mImageHeight:I

.field protected mImageWidth:I

.field private final mIntersectRect:Landroid/graphics/Rect;

.field protected mLevelCount:I

.field protected mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

.field private final mRegionRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mIntersectRect:Landroid/graphics/Rect;

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mRegionRect:Landroid/graphics/Rect;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/BitmapRegionDecoder;)V
    .locals 1
    .parameter "backup"
    .parameter "regionDecoder"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mIntersectRect:Landroid/graphics/Rect;

    .line 39
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mRegionRect:Landroid/graphics/Rect;

    .line 71
    invoke-static {p1}, Lcom/android/gallery3d/util/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mBackupImage:Landroid/graphics/Bitmap;

    .line 72
    iput-object p2, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 73
    invoke-virtual {p2}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    .line 74
    invoke-virtual {p2}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageHeight:I

    .line 75
    invoke-direct {p0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->calculateLevelCount()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mLevelCount:I

    .line 76
    return-void
.end method

.method private calculateLevelCount()I
    .locals 5

    .prologue
    .line 79
    iget v1, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    .line 80
    .local v1, width:I
    iget v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageHeight:I

    .line 81
    .local v0, height:I
    const/4 v2, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4300

    div-float/2addr v3, v4

    invoke-static {v3}, Lcom/android/gallery3d/util/Utils;->floorLog2(F)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 45
    iput-object v1, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mBackupImage:Landroid/graphics/Bitmap;

    .line 46
    iput v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    .line 47
    iput v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageHeight:I

    .line 48
    iput v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mLevelCount:I

    .line 49
    iput-object v1, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 50
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mFailedToLoad:Z

    .line 51
    return-void
.end method

.method public getBackupImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mBackupImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    return v0
.end method

.method public getLevelCount()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mLevelCount:I

    return v0
.end method

.method public getTile(IIII)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "level"
    .parameter "x"
    .parameter "y"
    .parameter "length"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 86
    iget-object v4, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mRegionRect:Landroid/graphics/Rect;

    .line 87
    .local v4, region:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mIntersectRect:Landroid/graphics/Rect;

    .line 88
    .local v2, intersectRect:Landroid/graphics/Rect;
    shl-int v6, p4, p1

    add-int/2addr v6, p2

    shl-int v7, p4, p1

    add-int/2addr v7, p3

    invoke-virtual {v4, p2, p3, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 89
    iget v6, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    iget v7, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageHeight:I

    invoke-virtual {v2, v8, v8, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 92
    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v6

    invoke-static {v6}, Lcom/android/gallery3d/util/Utils;->Assert(Z)V

    .line 94
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 95
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v6, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 96
    iput-boolean v9, v3, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 97
    shl-int v6, v9, p1

    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 102
    iget-object v6, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    monitor-enter v6

    .line 103
    :try_start_0
    iget-object v7, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v7, v2, v3}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 104
    .local v0, bitmap:Landroid/graphics/Bitmap;
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v0

    .line 116
    :goto_0
    return-object v6

    .line 104
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 110
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 111
    .local v5, tile:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 112
    .local v1, canvas:Landroid/graphics/Canvas;
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    shr-int/2addr v6, p1

    int-to-float v6, v6

    iget v7, v2, Landroid/graphics/Rect;->top:I

    iget v8, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    shr-int/2addr v7, p1

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-virtual {v1, v0, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 115
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v6, v5

    .line 116
    goto :goto_0
.end method

.method public isFailedToLoad()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mFailedToLoad:Z

    return v0
.end method

.method public setBackupImage(Landroid/graphics/Bitmap;II)V
    .locals 2
    .parameter "backup"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-static {p1}, Lcom/android/gallery3d/util/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mBackupImage:Landroid/graphics/Bitmap;

    .line 55
    iput p2, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    .line 56
    iput p3, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageHeight:I

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 58
    iput v1, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mLevelCount:I

    .line 59
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mFailedToLoad:Z

    .line 60
    return-void
.end method

.method public setFailedToLoad()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mFailedToLoad:Z

    .line 137
    return-void
.end method

.method public setRegionDecoder(Landroid/graphics/BitmapRegionDecoder;)V
    .locals 1
    .parameter "decoder"

    .prologue
    .line 63
    invoke-static {p1}, Lcom/android/gallery3d/util/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapRegionDecoder;

    iput-object v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 64
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageWidth:I

    .line 65
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mImageHeight:I

    .line 66
    invoke-direct {p0}, Lcom/android/gallery3d/ui/TileImageViewAdapter;->calculateLevelCount()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mLevelCount:I

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/TileImageViewAdapter;->mFailedToLoad:Z

    .line 68
    return-void
.end method
