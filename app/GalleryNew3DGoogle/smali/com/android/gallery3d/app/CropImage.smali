.class public Lcom/android/gallery3d/app/CropImage;
.super Lcom/android/gallery3d/app/AbstractGalleryActivity;
.source "CropImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/CropImage$LoadMediaItem;,
        Lcom/android/gallery3d/app/CropImage$LoadBitmapDataTask;,
        Lcom/android/gallery3d/app/CropImage$LoadDataTask;,
        Lcom/android/gallery3d/app/CropImage$SaveOutput;
    }
.end annotation


# static fields
.field public static final DOWNLOAD_BUCKET:Ljava/io/File;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapInIntent:Landroid/graphics/Bitmap;

.field private mBitmapTileProvider:Lcom/android/gallery3d/ui/BitmapTileProvider;

.field private mCropView:Lcom/android/gallery3d/ui/CropView;

.field private mDataHandler:Landroid/os/Handler;

.field private mDoFaceDetection:Z

.field private mLoadBitmapTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mMainHandler:Landroid/os/Handler;

.field private mMediaItem:Lcom/android/gallery3d/data/MediaItem;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

.field private mSaveTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I

.field private mUseRegionDecoder:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 114
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "download"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/gallery3d/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;-><init>()V

    .line 119
    iput v1, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/CropImage;->mDoFaceDetection:Z

    .line 136
    iput-boolean v1, p0, Lcom/android/gallery3d/app/CropImage;->mUseRegionDecoder:Z

    .line 833
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/CropImage;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/BitmapRegionDecoder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/CropImage;->onBitmapRegionDecoderAvailable(Landroid/graphics/BitmapRegionDecoder;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage;->mLoadBitmapTask:Lcom/android/gallery3d/util/Future;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/CropImage;->onBitmapAvailable(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/CropImage;->getCroppedImage(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/app/CropImage;->saveBitmapToUri(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/CropImage;->setAsWallpaper(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/CropImage;->saveToMediaProvider(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage;->mSaveTask:Lcom/android/gallery3d/util/Future;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/CropImage;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/Future;)Lcom/android/gallery3d/util/Future;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage;->mLoadTask:Lcom/android/gallery3d/util/Future;

    return-object p1
.end method

.method private convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1
    .parameter "extension"

    .prologue
    .line 438
    const-string v0, "png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_0
.end method

.method public static determineCompressFormat(Lcom/android/gallery3d/data/MediaObject;)Ljava/lang/String;
    .locals 3
    .parameter "obj"

    .prologue
    .line 263
    const-string v0, "JPEG"

    .line 264
    .local v0, compressFormat:Ljava/lang/String;
    instance-of v2, p0, Lcom/android/gallery3d/data/MediaItem;

    if-eqz v2, :cond_1

    .line 265
    check-cast p0, Lcom/android/gallery3d/data/MediaItem;

    .end local p0
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, mime:Ljava/lang/String;
    const-string v2, "png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 269
    :cond_0
    const-string v0, "PNG"

    .line 272
    .end local v1           #mime:Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private drawInTiles(Landroid/graphics/Canvas;Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 17
    .parameter "canvas"
    .parameter "decoder"
    .parameter "rect"
    .parameter "dest"
    .parameter "sample"

    .prologue
    .line 606
    move/from16 v0, p5

    mul-int/lit16 v0, v0, 0x200

    move v9, v0

    .line 607
    .local v9, tileSize:I
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 608
    .local v8, tileRect:Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 609
    .local v6, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v14, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 610
    move/from16 v0, p5

    move-object v1, v6

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 611
    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v14, v0

    int-to-float v14, v14

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    int-to-float v15, v15

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 612
    move/from16 v0, p5

    int-to-float v0, v0

    move v14, v0

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v14, v15

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v14, v15

    move/from16 v0, p5

    int-to-float v0, v0

    move v15, v0

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 614
    new-instance v7, Landroid/graphics/Paint;

    const/4 v14, 0x2

    invoke-direct {v7, v14}, Landroid/graphics/Paint;-><init>(I)V

    .line 615
    .local v7, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v10, v0

    .local v10, tx:I
    const/4 v12, 0x0

    .line 616
    .local v12, x:I
    :goto_0
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v14, v0

    if-ge v10, v14, :cond_2

    .line 617
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v11, v0

    .local v11, ty:I
    const/4 v13, 0x0

    .line 618
    .local v13, y:I
    :goto_1
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v14, v0

    if-ge v11, v14, :cond_1

    .line 619
    add-int v14, v10, v9

    add-int v15, v11, v9

    invoke-virtual {v8, v10, v11, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 620
    move-object v0, v8

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 624
    monitor-enter p2

    .line 625
    :try_start_0
    move-object/from16 v0, p2

    move-object v1, v8

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 626
    .local v5, bitmap:Landroid/graphics/Bitmap;
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    int-to-float v14, v12

    int-to-float v15, v13

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v14

    move v3, v15

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 628
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 618
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    add-int/2addr v11, v9

    add-int/lit16 v13, v13, 0x200

    goto :goto_1

    .line 626
    :catchall_0
    move-exception v14

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v14

    .line 616
    :cond_1
    add-int/2addr v10, v9

    add-int/lit16 v12, v12, 0x200

    goto :goto_0

    .line 632
    .end local v11           #ty:I
    .end local v13           #y:I
    :cond_2
    return-void
.end method

.method private getCroppedImage(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 23
    .parameter "rect"

    .prologue
    .line 477
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-lez v5, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-lez v5, :cond_6

    const/4 v5, 0x1

    :goto_0
    invoke-static {v5}, Lcom/android/gallery3d/util/Utils;->Assert(Z)V

    .line 479
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    .line 481
    .local v11, extras:Landroid/os/Bundle;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v13

    .line 482
    .local v13, outputX:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v14

    .line 483
    .local v14, outputY:I
    if-eqz v11, :cond_0

    .line 484
    const-string v5, "outputX"

    invoke-virtual {v11, v5, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 485
    const-string v5, "outputY"

    invoke-virtual {v11, v5, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 488
    :cond_0
    mul-int v5, v13, v14

    const v6, 0x4c4b40

    if-le v5, v6, :cond_1

    .line 489
    const-wide v7, 0x415312d000000000L

    int-to-double v9, v13

    div-double/2addr v7, v9

    int-to-double v9, v14

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    move-wide v0, v7

    double-to-float v0, v0

    move/from16 v19, v0

    .line 491
    .local v19, scale:F
    const-string v5, "CropImage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "scale down the cropped image: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    int-to-float v5, v13

    mul-float v5, v5, v19

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 493
    int-to-float v5, v14

    mul-float v5, v5, v19

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v14

    .line 498
    .end local v19           #scale:F
    :cond_1
    const/high16 v20, 0x3f80

    .line 499
    .local v20, scaleX:F
    const/high16 v21, 0x3f80

    .line 500
    .local v21, scaleY:F
    new-instance v9, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v9, v5, v6, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 501
    .local v9, dest:Landroid/graphics/Rect;
    if-eqz v11, :cond_2

    const-string v5, "scale"

    const/4 v6, 0x1

    invoke-virtual {v11, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 502
    :cond_2
    int-to-float v5, v13

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float v20, v5, v6

    .line 503
    int-to-float v5, v14

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float v21, v5, v6

    .line 504
    if-eqz v11, :cond_3

    const-string v5, "scaleUpIfNeeded"

    const/4 v6, 0x0

    invoke-virtual {v11, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_5

    .line 506
    :cond_3
    const/high16 v5, 0x3f80

    cmpl-float v5, v20, v5

    if-lez v5, :cond_4

    const/high16 v20, 0x3f80

    .line 507
    :cond_4
    const/high16 v5, 0x3f80

    cmpl-float v5, v21, v5

    if-lez v5, :cond_5

    const/high16 v21, 0x3f80

    .line 512
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v20

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v16

    .line 513
    .local v16, rectWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v21

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 514
    .local v15, rectHeight:I
    sub-int v5, v13, v16

    int-to-float v5, v5

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sub-int v6, v14, v15

    int-to-float v6, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int v7, v13, v16

    int-to-float v7, v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int v8, v14, v15

    int-to-float v8, v8

    const/high16 v10, 0x4000

    div-float/2addr v8, v10

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {v9, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    move-object v5, v0

    if-eqz v5, :cond_7

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    .line 521
    .local v22, source:Landroid/graphics/Bitmap;
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v14, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 523
    .local v17, result:Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 524
    .local v6, canvas:Landroid/graphics/Canvas;
    const/4 v5, 0x0

    move-object v0, v6

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    move-object v3, v9

    move-object v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object/from16 v5, v17

    .line 557
    .end local v6           #canvas:Landroid/graphics/Canvas;
    .end local v17           #result:Landroid/graphics/Bitmap;
    .end local v22           #source:Landroid/graphics/Bitmap;
    :goto_1
    return-object v5

    .line 477
    .end local v9           #dest:Landroid/graphics/Rect;
    .end local v11           #extras:Landroid/os/Bundle;
    .end local v13           #outputX:I
    .end local v14           #outputY:I
    .end local v15           #rectHeight:I
    .end local v16           #rectWidth:I
    .end local v20           #scaleX:F
    .end local v21           #scaleY:F
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 528
    .restart local v9       #dest:Landroid/graphics/Rect;
    .restart local v11       #extras:Landroid/os/Bundle;
    .restart local v13       #outputX:I
    .restart local v14       #outputY:I
    .restart local v15       #rectHeight:I
    .restart local v16       #rectWidth:I
    .restart local v20       #scaleX:F
    .restart local v21       #scaleY:F
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v18

    .line 529
    .local v18, rotation:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/CropView;->getImageWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/CropView;->getImageHeight()I

    move-result v6

    const/16 v7, 0x168

    sub-int v7, v7, v18

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/app/CropImage;->rotateRectangle(Landroid/graphics/Rect;III)V

    .line 531
    const/16 v5, 0x168

    sub-int v5, v5, v18

    invoke-static {v9, v13, v14, v5}, Lcom/android/gallery3d/app/CropImage;->rotateRectangle(Landroid/graphics/Rect;III)V

    .line 532
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/app/CropImage;->mUseRegionDecoder:Z

    move v5, v0

    if-eqz v5, :cond_9

    .line 533
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 534
    .local v12, options:Landroid/graphics/BitmapFactory$Options;
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v5}, Lcom/android/gallery3d/util/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v10

    .line 536
    .local v10, sample:I
    iput v10, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 537
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/2addr v5, v10

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-ne v5, v6, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/2addr v5, v10

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-ne v5, v6, :cond_8

    if-nez v18, :cond_8

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/CropImage;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    move-object v5, v0

    monitor-enter v5

    .line 542
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/CropImage;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p1

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    monitor-exit v5

    move-object v5, v6

    goto :goto_1

    .line 543
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 545
    :cond_8
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v14, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 547
    .restart local v17       #result:Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 548
    .restart local v6       #canvas:Landroid/graphics/Canvas;
    move-object v0, v6

    move v1, v13

    move v2, v14

    move/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/app/CropImage;->rotateCanvas(Landroid/graphics/Canvas;III)V

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/CropImage;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    move-object v7, v0

    move-object/from16 v5, p0

    move-object/from16 v8, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/gallery3d/app/CropImage;->drawInTiles(Landroid/graphics/Canvas;Landroid/graphics/BitmapRegionDecoder;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    move-object/from16 v5, v17

    .line 550
    goto/16 :goto_1

    .line 552
    .end local v6           #canvas:Landroid/graphics/Canvas;
    .end local v10           #sample:I
    .end local v12           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v17           #result:Landroid/graphics/Bitmap;
    :cond_9
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v14, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 553
    .restart local v17       #result:Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 554
    .restart local v6       #canvas:Landroid/graphics/Canvas;
    move-object v0, v6

    move v1, v13

    move v2, v14

    move/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/app/CropImage;->rotateCanvas(Landroid/graphics/Canvas;III)V

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    move-object v5, v0

    new-instance v7, Landroid/graphics/Paint;

    const/4 v8, 0x2

    invoke-direct {v7, v8}, Landroid/graphics/Paint;-><init>(I)V

    move-object v0, v6

    move-object v1, v5

    move-object/from16 v2, p1

    move-object v3, v9

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object/from16 v5, v17

    .line 557
    goto/16 :goto_1
.end method

.method private getFileExtension()Ljava/lang/String;
    .locals 4

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "outputFormat"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, requestFormat:Ljava/lang/String;
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-static {v2}, Lcom/android/gallery3d/app/CropImage;->determineCompressFormat(Lcom/android/gallery3d/data/MediaObject;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 449
    .local v0, outputFormat:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 450
    const-string v2, "png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "gif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string v2, "png"

    :goto_1
    return-object v2

    .end local v0           #outputFormat:Ljava/lang/String;
    :cond_1
    move-object v0, v1

    .line 445
    goto :goto_0

    .line 450
    .restart local v0       #outputFormat:Ljava/lang/String;
    :cond_2
    const-string v2, "jpg"

    goto :goto_1
.end method

.method private getMediaItemFromIntentData()Lcom/android/gallery3d/data/MediaItem;
    .locals 3

    .prologue
    .line 801
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 802
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Lcom/android/gallery3d/util/FutureTask;

    new-instance v2, Lcom/android/gallery3d/app/CropImage$LoadMediaItem;

    invoke-direct {v2, p0, v1}, Lcom/android/gallery3d/app/CropImage$LoadMediaItem;-><init>(Lcom/android/gallery3d/app/CropImage;Landroid/net/Uri;)V

    invoke-direct {v0, v2}, Lcom/android/gallery3d/util/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 804
    .local v0, task:Lcom/android/gallery3d/util/FutureTask;,"Lcom/android/gallery3d/util/FutureTask<Lcom/android/gallery3d/data/MediaItem;>;"
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mDataHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 805
    invoke-virtual {v0}, Lcom/android/gallery3d/util/FutureTask;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/gallery3d/data/MediaItem;

    return-object p0
.end method

.method private initializeData()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 700
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 702
    if-eqz v0, :cond_4

    .line 703
    const-string v1, "noFaceDetection"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 704
    const-string v1, "noFaceDetection"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v4

    :goto_0
    iput-boolean v1, p0, Lcom/android/gallery3d/app/CropImage;->mDoFaceDetection:Z

    .line 707
    :cond_0
    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    .line 709
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 710
    new-instance v0, Lcom/android/gallery3d/ui/BitmapTileProvider;

    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    const/16 v2, 0x140

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/BitmapTileProvider;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapTileProvider:Lcom/android/gallery3d/ui/BitmapTileProvider;

    .line 712
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapTileProvider:Lcom/android/gallery3d/ui/BitmapTileProvider;

    invoke-virtual {v0, v1, v3}, Lcom/android/gallery3d/ui/CropView;->setDataModel(Lcom/android/gallery3d/ui/TileImageView$Model;I)V

    .line 713
    iget-boolean v0, p0, Lcom/android/gallery3d/app/CropImage;->mDoFaceDetection:Z

    if-eqz v0, :cond_3

    .line 714
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->mBitmapInIntent:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/CropView;->detectFaces(Landroid/graphics/Bitmap;)V

    .line 718
    :goto_1
    iput v4, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    .line 762
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v1, v3

    .line 704
    goto :goto_0

    .line 716
    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/CropView;->initializeHighlightRectangle()V

    goto :goto_1

    .line 723
    :cond_4
    const/4 v0, 0x0

    const v1, 0x7f080006

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/CropImage;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v4, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 726
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->getMediaItemFromIntentData()Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    .line 727
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    if-eqz v0, :cond_1

    .line 729
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_5

    move v0, v4

    .line 731
    :goto_3
    if-eqz v0, :cond_6

    .line 732
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/app/CropImage$LoadDataTask;

    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/app/CropImage$LoadDataTask;-><init>(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/data/MediaItem;)V

    new-instance v2, Lcom/android/gallery3d/app/CropImage$4;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/CropImage$4;-><init>(Lcom/android/gallery3d/app/CropImage;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mLoadTask:Lcom/android/gallery3d/util/Future;

    goto :goto_2

    :cond_5
    move v0, v3

    .line 729
    goto :goto_3

    .line 746
    :cond_6
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/app/CropImage$LoadBitmapDataTask;

    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/app/CropImage$LoadBitmapDataTask;-><init>(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/data/MediaItem;)V

    new-instance v2, Lcom/android/gallery3d/app/CropImage$5;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/app/CropImage$5;-><init>(Lcom/android/gallery3d/app/CropImage;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mLoadBitmapTask:Lcom/android/gallery3d/util/Future;

    goto :goto_2
.end method

.method private onBitmapAvailable(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "bitmap"

    .prologue
    const/4 v2, 0x0

    .line 663
    if-nez p1, :cond_0

    .line 664
    const-string v1, "fail to load image"

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 665
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->finish()V

    .line 680
    :goto_0
    return-void

    .line 668
    :cond_0
    iput-boolean v2, p0, Lcom/android/gallery3d/app/CropImage;->mUseRegionDecoder:Z

    .line 669
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    .line 671
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 672
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 673
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    new-instance v2, Lcom/android/gallery3d/ui/BitmapTileProvider;

    const/16 v3, 0x200

    invoke-direct {v2, p1, v3}, Lcom/android/gallery3d/ui/BitmapTileProvider;-><init>(Landroid/graphics/Bitmap;I)V

    iget-object v3, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/gallery3d/ui/CropView;->setDataModel(Lcom/android/gallery3d/ui/TileImageView$Model;I)V

    .line 675
    iget-boolean v1, p0, Lcom/android/gallery3d/app/CropImage;->mDoFaceDetection:Z

    if-eqz v1, :cond_1

    .line 676
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/ui/CropView;->detectFaces(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 678
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/CropView;->initializeHighlightRectangle()V

    goto :goto_0
.end method

.method private onBitmapRegionDecoderAvailable(Landroid/graphics/BitmapRegionDecoder;)V
    .locals 6
    .parameter "regionDecoder"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 637
    if-nez p1, :cond_0

    .line 638
    const-string v3, "fail to load image"

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 639
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->finish()V

    .line 660
    :goto_0
    return-void

    .line 642
    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 643
    iput-boolean v3, p0, Lcom/android/gallery3d/app/CropImage;->mUseRegionDecoder:Z

    .line 644
    iput v3, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    .line 646
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 647
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v2

    .line 648
    .local v2, width:I
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v0

    .line 649
    .local v0, height:I
    const/4 v3, -0x1

    const v4, 0x75300

    invoke-static {v2, v0, v3, v4}, Lcom/android/gallery3d/util/BitmapUtils;->computeSampleSize(IIII)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 651
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v5, v5, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v3, v1}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 653
    iget-object v3, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    new-instance v4, Lcom/android/gallery3d/ui/TileImageViewAdapter;

    iget-object v5, p0, Lcom/android/gallery3d/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5, p1}, Lcom/android/gallery3d/ui/TileImageViewAdapter;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/BitmapRegionDecoder;)V

    iget-object v5, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/gallery3d/ui/CropView;->setDataModel(Lcom/android/gallery3d/ui/TileImageView$Model;I)V

    .line 655
    iget-boolean v3, p0, Lcom/android/gallery3d/app/CropImage;->mDoFaceDetection:Z

    if-eqz v3, :cond_1

    .line 656
    iget-object v3, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    iget-object v4, p0, Lcom/android/gallery3d/app/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/CropView;->detectFaces(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 658
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/CropView;->initializeHighlightRectangle()V

    goto :goto_0
.end method

.method private onSaveClicked()V
    .locals 7

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 457
    .local v1, extra:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/CropView;->getCropRectangle()Landroid/graphics/RectF;

    move-result-object v0

    .line 458
    .local v0, cropRect:Landroid/graphics/RectF;
    if-nez v0, :cond_0

    .line 474
    :goto_0
    return-void

    .line 459
    :cond_0
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    .line 460
    if-eqz v1, :cond_1

    const-string v3, "set-as-wallpaper"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f080016

    move v2, v3

    .line 463
    .local v2, messageId:I
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/CropImage;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {p0, v3, v4, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 465
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getThreadPool()Lcom/android/gallery3d/util/ThreadPool;

    move-result-object v3

    new-instance v4, Lcom/android/gallery3d/app/CropImage$SaveOutput;

    invoke-direct {v4, p0, v0}, Lcom/android/gallery3d/app/CropImage$SaveOutput;-><init>(Lcom/android/gallery3d/app/CropImage;Landroid/graphics/RectF;)V

    new-instance v5, Lcom/android/gallery3d/app/CropImage$3;

    invoke-direct {v5, p0}, Lcom/android/gallery3d/app/CropImage$3;-><init>(Lcom/android/gallery3d/app/CropImage;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/gallery3d/util/ThreadPool;->submit(Lcom/android/gallery3d/util/ThreadPool$Job;Lcom/android/gallery3d/util/FutureListener;)Lcom/android/gallery3d/util/Future;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/app/CropImage;->mSaveTask:Lcom/android/gallery3d/util/Future;

    goto :goto_0

    .line 460
    .end local v2           #messageId:I
    :cond_1
    const v3, 0x7f080010

    move v2, v3

    goto :goto_1
.end method

.method private static rotateCanvas(Landroid/graphics/Canvas;III)V
    .locals 2
    .parameter "canvas"
    .parameter "width"
    .parameter "height"
    .parameter "rotation"

    .prologue
    .line 563
    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    div-int/lit8 v1, p2, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 564
    int-to-float v0, p3

    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 565
    div-int/lit8 v0, p3, 0x5a

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 566
    neg-int v0, p1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    neg-int v1, p2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 570
    :goto_0
    return-void

    .line 568
    :cond_0
    neg-int v0, p2

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    neg-int v1, p1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method private static rotateRectangle(Landroid/graphics/Rect;III)V
    .locals 3
    .parameter "rect"
    .parameter "width"
    .parameter "height"
    .parameter "rotation"

    .prologue
    .line 574
    if-eqz p3, :cond_0

    const/16 v2, 0x168

    if-ne p3, v2, :cond_1

    .line 598
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 577
    .local v1, w:I
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 578
    .local v0, h:I
    sparse-switch p3, :sswitch_data_0

    .line 600
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 580
    :sswitch_0
    iget v2, p0, Landroid/graphics/Rect;->left:I

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 581
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p2, v2

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 582
    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 583
    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 587
    :sswitch_1
    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int v2, p1, v2

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 588
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p2, v2

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 589
    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 590
    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 594
    :sswitch_2
    iget v2, p0, Landroid/graphics/Rect;->top:I

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 595
    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int v2, p1, v2

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 596
    iget v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 597
    iget v2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 578
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method private saveBitmapToOutputStream(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
    .locals 4
    .parameter "jc"
    .parameter "bitmap"
    .parameter "format"
    .parameter "os"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 410
    new-instance v0, Lcom/android/gallery3d/util/InterruptableOutputStream;

    invoke-direct {v0, p4}, Lcom/android/gallery3d/util/InterruptableOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 411
    .local v0, ios:Lcom/android/gallery3d/util/InterruptableOutputStream;
    new-instance v1, Lcom/android/gallery3d/app/CropImage$2;

    invoke-direct {v1, p0, v0}, Lcom/android/gallery3d/app/CropImage$2;-><init>(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/util/InterruptableOutputStream;)V

    invoke-interface {p1, v1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    .line 417
    const/16 v1, 0x5a

    :try_start_0
    invoke-virtual {p2, p3, v1, p4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 418
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 420
    invoke-interface {p1, v2}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    .line 421
    invoke-static {p4}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    move v1, v3

    .line 423
    :goto_0
    return v1

    .line 420
    :cond_0
    invoke-interface {p1, v2}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    .line 421
    invoke-static {p4}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    move v1, v3

    .line 423
    goto :goto_0

    .line 420
    :catchall_0
    move-exception v1

    invoke-interface {p1, v2}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->setCancelListener(Lcom/android/gallery3d/util/ThreadPool$CancelListener;)V

    .line 421
    invoke-static {p4}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v1
.end method

.method private saveBitmapToUri(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z
    .locals 3
    .parameter "jc"
    .parameter "bitmap"
    .parameter "uri"

    .prologue
    .line 428
    :try_start_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/CropImage;->convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/gallery3d/app/CropImage;->saveBitmapToOutputStream(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 434
    :goto_0
    return v1

    .line 431
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 432
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v1, "CropImage"

    const-string v2, "cannot write output"

    invoke-static {v1, v2, v0}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 434
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private saveLocalImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 13
    .parameter "jc"
    .parameter "cropped"

    .prologue
    .line 376
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    check-cast v2, Lcom/android/gallery3d/data/LocalImage;

    .line 378
    .local v2, localImage:Lcom/android/gallery3d/data/LocalImage;
    new-instance v5, Ljava/io/File;

    iget-object v9, v2, Lcom/android/gallery3d/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 379
    .local v5, oldPath:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 381
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 382
    .local v1, filename:Ljava/lang/String;
    const/16 v9, 0x2e

    invoke-virtual {v1, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 383
    .local v7, pos:I
    if-ltz v7, :cond_0

    const/4 v9, 0x0

    invoke-virtual {v1, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 384
    :cond_0
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/gallery3d/app/CropImage;->saveMedia(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 385
    .local v6, output:Ljava/io/File;
    if-nez v6, :cond_1

    const/4 v9, 0x0

    .line 403
    :goto_0
    return-object v9

    .line 387
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long v3, v9, v11

    .line 388
    .local v3, now:J
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 389
    .local v8, values:Landroid/content/ContentValues;
    const-string v9, "title"

    iget-object v10, v2, Lcom/android/gallery3d/data/LocalImage;->caption:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string v9, "_display_name"

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string v9, "datetaken"

    iget-wide v10, v2, Lcom/android/gallery3d/data/LocalImage;->dateTakenInMs:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 392
    const-string v9, "date_modified"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 393
    const-string v9, "date_added"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 394
    const-string v9, "mime_type"

    const-string v10, "image/jpeg"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v9, "orientation"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 396
    const-string v9, "_data"

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string v9, "_size"

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 399
    iget-wide v9, v2, Lcom/android/gallery3d/data/LocalImage;->latitude:D

    iget-wide v11, v2, Lcom/android/gallery3d/data/LocalImage;->longitude:D

    invoke-static {v9, v10, v11, v12}, Lcom/android/gallery3d/util/Utils;->isValidLocation(DD)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 400
    const-string v9, "latitude"

    iget-wide v10, v2, Lcom/android/gallery3d/data/LocalImage;->latitude:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 401
    const-string v9, "longitude"

    iget-wide v10, v2, Lcom/android/gallery3d/data/LocalImage;->longitude:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 403
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    goto/16 :goto_0
.end method

.method private saveMedia(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 10
    .parameter "jc"
    .parameter "cropped"
    .parameter "directory"
    .parameter "filename"

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 288
    const/4 v0, 0x0

    .line 289
    .local v0, candidate:Ljava/io/File;
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->getFileExtension()Ljava/lang/String;

    move-result-object v2

    .line 290
    .local v2, fileExtension:Ljava/lang/String;
    const/4 v4, 0x1

    .local v4, i:I
    :goto_0
    const/16 v5, 0x3e8

    if-ge v4, v5, :cond_0

    .line 291
    new-instance v0, Ljava/io/File;

    .end local v0           #candidate:Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, p3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 294
    .restart local v0       #candidate:Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    .line 301
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_3

    .line 302
    :cond_1
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot create file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 295
    :catch_0
    move-exception v1

    .line 296
    .local v1, e:Ljava/io/IOException;
    const-string v5, "CropImage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to create new file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v5, v8

    .line 328
    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return-object v5

    .line 290
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 305
    :cond_3
    invoke-virtual {v0, v9, v7}, Ljava/io/File;->setReadable(ZZ)Z

    .line 306
    invoke-virtual {v0, v9, v7}, Ljava/io/File;->setWritable(ZZ)Z

    .line 309
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 311
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_2
    invoke-direct {p0, v2}, Lcom/android/gallery3d/app/CropImage;->convertExtensionToCompressFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v5

    invoke-direct {p0, p1, p2, v5, v3}, Lcom/android/gallery3d/app/CropImage;->saveBitmapToOutputStream(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 314
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 323
    invoke-interface {p1}, Lcom/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 324
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-object v5, v8

    .line 325
    goto :goto_1

    .line 314
    :catchall_0
    move-exception v5

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    throw v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 316
    .end local v3           #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 317
    .restart local v1       #e:Ljava/io/IOException;
    const-string v5, "CropImage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to save image: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/android/gallery3d/app/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-object v5, v8

    .line 320
    goto :goto_1

    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :cond_4
    move-object v5, v0

    .line 328
    goto :goto_1
.end method

.method private savePicasaImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 13
    .parameter "jc"
    .parameter "cropped"

    .prologue
    const/4 v12, 0x0

    .line 343
    sget-object v8, Lcom/android/gallery3d/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_0

    sget-object v8, Lcom/android/gallery3d/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    move-result v8

    if-nez v8, :cond_0

    .line 344
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "cannot create download folder"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 346
    :cond_0
    iget-object v5, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    check-cast v5, Lcom/android/gallery3d/data/PicasaImage;

    .line 347
    .local v5, picasaImage:Lcom/android/gallery3d/data/PicasaImage;
    invoke-virtual {v5}, Lcom/android/gallery3d/data/PicasaImage;->getPhotoEntry()Lcom/android/gallery3d/picasa/PhotoEntry;

    move-result-object v0

    .line 349
    .local v0, entry:Lcom/android/gallery3d/picasa/PhotoEntry;
    iget-object v1, v0, Lcom/android/gallery3d/picasa/PhotoEntry;->title:Ljava/lang/String;

    .line 350
    .local v1, filename:Ljava/lang/String;
    const/16 v8, 0x2e

    invoke-virtual {v1, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 351
    .local v6, pos:I
    if-ltz v6, :cond_1

    invoke-virtual {v1, v12, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 352
    :cond_1
    sget-object v8, Lcom/android/gallery3d/app/CropImage;->DOWNLOAD_BUCKET:Ljava/io/File;

    invoke-direct {p0, p1, p2, v8, v1}, Lcom/android/gallery3d/app/CropImage;->saveMedia(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 353
    .local v4, output:Ljava/io/File;
    if-nez v4, :cond_2

    const/4 v8, 0x0

    .line 371
    :goto_0
    return-object v8

    .line 355
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v2, v8, v10

    .line 356
    .local v2, now:J
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 357
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "title"

    iget-object v9, v0, Lcom/android/gallery3d/picasa/PhotoEntry;->title:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v8, "_display_name"

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v8, "datetaken"

    iget-wide v9, v0, Lcom/android/gallery3d/picasa/PhotoEntry;->dateTaken:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 360
    const-string v8, "date_modified"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 361
    const-string v8, "date_added"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 362
    const-string v8, "mime_type"

    const-string v9, "image/jpeg"

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v8, "orientation"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 364
    const-string v8, "_data"

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v8, "_size"

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 367
    iget-wide v8, v0, Lcom/android/gallery3d/picasa/PhotoEntry;->latitude:D

    iget-wide v10, v0, Lcom/android/gallery3d/picasa/PhotoEntry;->longitude:D

    invoke-static {v8, v9, v10, v11}, Lcom/android/gallery3d/util/Utils;->isValidLocation(DD)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 368
    const-string v8, "latitude"

    iget-wide v9, v0, Lcom/android/gallery3d/picasa/PhotoEntry;->latitude:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 369
    const-string v8, "longitude"

    iget-wide v9, v0, Lcom/android/gallery3d/picasa/PhotoEntry;->longitude:D

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 371
    :cond_3
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    goto/16 :goto_0
.end method

.method private saveToMediaProvider(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 3
    .parameter "jc"
    .parameter "cropped"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    instance-of v0, v0, Lcom/android/gallery3d/data/PicasaImage;

    if-eqz v0, :cond_0

    .line 333
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/CropImage;->savePicasaImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    .line 338
    :goto_0
    return-object v0

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    instance-of v0, v0, Lcom/android/gallery3d/data/LocalImage;

    if-eqz v0, :cond_1

    .line 335
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/app/CropImage;->saveLocalImage(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 337
    :cond_1
    const-string v0, "CropImage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no output for crop image "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mMediaItem:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAsWallpaper(Lcom/android/gallery3d/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z
    .locals 3
    .parameter "jc"
    .parameter "wallpaper"

    .prologue
    .line 277
    :try_start_0
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 278
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 279
    .local v0, e:Ljava/io/IOException;
    const-string v1, "CropImage"

    const-string v2, "fail to set wall paper"

    invoke-static {v1, v2, v0}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setCropParameters()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 683
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 684
    .local v2, extras:Landroid/os/Bundle;
    if-nez v2, :cond_1

    .line 697
    :cond_0
    :goto_0
    return-void

    .line 686
    :cond_1
    const-string v5, "aspectX"

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 687
    .local v0, aspectX:I
    const-string v5, "aspectY"

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 688
    .local v1, aspectY:I
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 689
    iget-object v5, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    int-to-float v6, v0

    int-to-float v7, v1

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/ui/CropView;->setAspectRatio(F)V

    .line 692
    :cond_2
    const-string v5, "spotlightX"

    invoke-virtual {v2, v5, v8}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v3

    .line 693
    .local v3, spotlightX:F
    const-string v5, "spotlightY"

    invoke-virtual {v2, v5, v8}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v4

    .line 694
    .local v4, spotlightY:F
    cmpl-float v5, v3, v8

    if-eqz v5, :cond_0

    cmpl-float v5, v4, v8

    if-eqz v5, :cond_0

    .line 695
    iget-object v5, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-virtual {v5, v3, v4}, Lcom/android/gallery3d/ui/CropView;->setSpotlightRatio(FF)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 148
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/CropImage;->requestWindowFeature(I)Z

    .line 149
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/CropImage;->requestWindowFeature(I)Z

    .line 152
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/CropImage;->setContentView(I)V

    .line 153
    new-instance v0, Lcom/android/gallery3d/ui/CropView;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/ui/CropView;-><init>(Lcom/android/gallery3d/app/GalleryActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    .line 154
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->mCropView:Lcom/android/gallery3d/ui/CropView;

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLRoot;->setContentPane(Lcom/android/gallery3d/ui/GLView;)V

    .line 156
    new-instance v0, Lcom/android/gallery3d/app/CropImage$1;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/CropImage$1;-><init>(Lcom/android/gallery3d/app/CropImage;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mMainHandler:Landroid/os/Handler;

    .line 180
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/data/DataManager;->getDataLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mDataHandler:Landroid/os/Handler;

    .line 181
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->setCropParameters()V

    .line 182
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 191
    invoke-super {p0, p1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 192
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0b0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 198
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 209
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 200
    :sswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/CropImage;->setResult(I)V

    .line 201
    invoke-virtual {p0}, Lcom/android/gallery3d/app/CropImage;->finish()V

    goto :goto_0

    .line 205
    :sswitch_1
    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->onSaveClicked()V

    goto :goto_0

    .line 198
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f070004 -> :sswitch_0
        0x7f070020 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 773
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onPause()V

    .line 775
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage;->mLoadTask:Lcom/android/gallery3d/util/Future;

    .line 776
    .local v1, loadTask:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Landroid/graphics/BitmapRegionDecoder;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/gallery3d/util/Future;->isDone()Z

    move-result v3

    if-nez v3, :cond_0

    .line 778
    invoke-interface {v1}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 779
    invoke-interface {v1}, Lcom/android/gallery3d/util/Future;->waitDone()V

    .line 780
    iget-object v3, p0, Lcom/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 783
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/CropImage;->mLoadBitmapTask:Lcom/android/gallery3d/util/Future;

    .line 784
    .local v0, loadBitmapTask:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Landroid/graphics/Bitmap;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->isDone()Z

    move-result v3

    if-nez v3, :cond_1

    .line 786
    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 787
    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->waitDone()V

    .line 788
    iget-object v3, p0, Lcom/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 791
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/CropImage;->mSaveTask:Lcom/android/gallery3d/util/Future;

    .line 792
    .local v2, saveTask:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<Landroid/content/Intent;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/android/gallery3d/util/Future;->isDone()Z

    move-result v3

    if-nez v3, :cond_2

    .line 794
    invoke-interface {v2}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 795
    invoke-interface {v2}, Lcom/android/gallery3d/util/Future;->waitDone()V

    .line 796
    iget-object v3, p0, Lcom/android/gallery3d/app/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 798
    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 766
    invoke-super {p0}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->onResume()V

    .line 767
    iget v0, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->initializeData()V

    .line 768
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/gallery3d/app/CropImage;->onSaveClicked()V

    .line 769
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "saveState"

    .prologue
    .line 186
    const-string v0, "state"

    iget v1, p0, Lcom/android/gallery3d/app/CropImage;->mState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 187
    return-void
.end method
