.class public Lcom/ecareme/pixwe/media/CropImage;
.super Lcom/ecareme/pixwe/media/MonitoredActivity;
.source "CropImage.java"


# static fields
.field public static final CROP_MSG:I = 0xa

.field public static final CROP_MSG_INTERNAL:I = 0x64

.field private static final TAG:Ljava/lang/String; = "CropImage"

.field private static final mConnectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/media/MediaScannerConnection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApp:Lcom/ecareme/pixwe/app/App;

.field private mAspectX:I

.field private mAspectY:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCircleCrop:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field mCrop:Lcom/ecareme/pixwe/media/HighlightView;

.field private final mDecodingThreads:Lcom/ecareme/pixwe/media/BitmapManager$ThreadSet;

.field private mDoFaceDetection:Z

.field private final mHandler:Landroid/os/Handler;

.field private mImageView:Lcom/ecareme/pixwe/media/CropImageView;

.field private mItem:Lcom/ecareme/pixwe/media/MediaItem;

.field private mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private mOutputX:I

.field private mOutputY:I

.field mRunFaceDetection:Ljava/lang/Runnable;

.field private mSaveUri:Landroid/net/Uri;

.field mSaving:Z

.field private mScale:Z

.field private mScaleUp:Z

.field mWaitingToPick:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ecareme/pixwe/media/CropImage;->mConnectionMap:Ljava/util/HashMap;

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 66
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/MonitoredActivity;-><init>()V

    .line 72
    iput-object v2, p0, Lcom/ecareme/pixwe/media/CropImage;->mApp:Lcom/ecareme/pixwe/app/App;

    .line 75
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/ecareme/pixwe/media/CropImage;->mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 79
    iput-object v2, p0, Lcom/ecareme/pixwe/media/CropImage;->mSaveUri:Landroid/net/Uri;

    .line 82
    iput-boolean v1, p0, Lcom/ecareme/pixwe/media/CropImage;->mDoFaceDetection:Z

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/CropImage;->mCircleCrop:Z

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/CropImage;->mHandler:Landroid/os/Handler;

    .line 90
    iput-boolean v1, p0, Lcom/ecareme/pixwe/media/CropImage;->mScaleUp:Z

    .line 100
    new-instance v0, Lcom/ecareme/pixwe/media/BitmapManager$ThreadSet;

    invoke-direct {v0}, Lcom/ecareme/pixwe/media/BitmapManager$ThreadSet;-><init>()V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/CropImage;->mDecodingThreads:Lcom/ecareme/pixwe/media/BitmapManager$ThreadSet;

    .line 536
    new-instance v0, Lcom/ecareme/pixwe/media/CropImage$1;

    invoke-direct {v0, p0}, Lcom/ecareme/pixwe/media/CropImage$1;-><init>(Lcom/ecareme/pixwe/media/CropImage;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/CropImage;->mRunFaceDetection:Ljava/lang/Runnable;

    .line 66
    return-void
.end method

.method static synthetic access$0(Lcom/ecareme/pixwe/media/CropImage;)Lcom/ecareme/pixwe/media/CropImageView;
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/ecareme/pixwe/media/CropImage;->mImageView:Lcom/ecareme/pixwe/media/CropImageView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ecareme/pixwe/media/CropImage;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/ecareme/pixwe/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$10(Lcom/ecareme/pixwe/media/CropImage;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/ecareme/pixwe/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$11(Lcom/ecareme/pixwe/media/CropImage;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 448
    invoke-direct {p0, p1}, Lcom/ecareme/pixwe/media/CropImage;->saveOutput(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$2(Lcom/ecareme/pixwe/media/CropImage;)Z
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/CropImage;->mCircleCrop:Z

    return v0
.end method

.method static synthetic access$3(Lcom/ecareme/pixwe/media/CropImage;)I
    .locals 1
    .parameter

    .prologue
    .line 80
    iget v0, p0, Lcom/ecareme/pixwe/media/CropImage;->mAspectX:I

    return v0
.end method

.method static synthetic access$4(Lcom/ecareme/pixwe/media/CropImage;)I
    .locals 1
    .parameter

    .prologue
    .line 80
    iget v0, p0, Lcom/ecareme/pixwe/media/CropImage;->mAspectY:I

    return v0
.end method

.method static synthetic access$5(Lcom/ecareme/pixwe/media/CropImage;)Z
    .locals 1
    .parameter

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/CropImage;->mDoFaceDetection:Z

    return v0
.end method

.method static synthetic access$6(Lcom/ecareme/pixwe/media/CropImage;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/ecareme/pixwe/media/CropImage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/ecareme/pixwe/media/CropImage;->mConnectionMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$8(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    invoke-static {p0, p1, p2}, Lcom/ecareme/pixwe/media/CropImage;->performReturn(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9(Lcom/ecareme/pixwe/media/CropImage;)V
    .locals 0
    .parameter

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/CropImage;->onSaveClicked()V

    return-void
.end method

.method public static launchCropperOrFinish(Landroid/content/Context;Lcom/ecareme/pixwe/media/MediaItem;)V
    .locals 13
    .parameter "context"
    .parameter "item"

    .prologue
    .line 106
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 107
    .local v6, myExtras:Landroid/os/Bundle;
    if-eqz v6, :cond_0

    const-string v2, "crop"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    .line 108
    .local v9, cropValue:Ljava/lang/String;
    :goto_0
    iget-object v3, p1, Lcom/ecareme/pixwe/media/MediaItem;->mContentUri:Ljava/lang/String;

    .line 109
    .local v3, contentUri:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 170
    .end local p0
    :goto_1
    return-void

    .line 107
    .end local v3           #contentUri:Ljava/lang/String;
    .end local v9           #cropValue:Ljava/lang/String;
    .restart local p0
    :cond_0
    const/4 v2, 0x0

    move-object v9, v2

    goto :goto_0

    .line 111
    .restart local v3       #contentUri:Ljava/lang/String;
    .restart local v9       #cropValue:Ljava/lang/String;
    :cond_1
    if-eqz v9, :cond_3

    .line 112
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 113
    .local v10, newExtras:Landroid/os/Bundle;
    const-string v2, "circle"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 114
    const-string v2, "circleCrop"

    const-string v4, "true"

    invoke-virtual {v10, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_2
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 117
    .local v8, cropIntent:Landroid/content/Intent;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 118
    const-class v2, Lcom/ecareme/pixwe/media/CropImage;

    invoke-virtual {v8, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 119
    invoke-virtual {v8, v10}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 121
    invoke-virtual {v8, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 122
    check-cast p0, Landroid/app/Activity;

    .end local p0
    const/16 v2, 0xa

    invoke-virtual {p0, v8, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 124
    .end local v8           #cropIntent:Landroid/content/Intent;
    .end local v10           #newExtras:Landroid/os/Bundle;
    .restart local p0
    :cond_3
    const-string v2, "http://"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f060016

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v11, 0x7f060010

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 127
    invoke-static {p0, v2, v4, v11, v12}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v5

    .line 130
    .local v5, dialog:Landroid/app/ProgressDialog;
    new-instance v1, Lcom/ecareme/pixwe/media/CropImage$2;

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/ecareme/pixwe/media/CropImage$2;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/ecareme/pixwe/media/MediaItem;Landroid/app/ProgressDialog;Landroid/os/Bundle;)V

    .line 162
    .local v1, client:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;
    new-instance v7, Landroid/media/MediaScannerConnection;

    invoke-direct {v7, p0, v1}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    .line 163
    .local v7, connection:Landroid/media/MediaScannerConnection;
    sget-object v2, Lcom/ecareme/pixwe/media/CropImage;->mConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-virtual {v7}, Landroid/media/MediaScannerConnection;->connect()V

    goto :goto_1

    .line 167
    .end local v1           #client:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;
    .end local v5           #dialog:Landroid/app/ProgressDialog;
    .end local v7           #connection:Landroid/media/MediaScannerConnection;
    :cond_4
    invoke-static {p0, v6, v3}, Lcom/ecareme/pixwe/media/CropImage;->performReturn(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onSaveClicked()V
    .locals 25

    .prologue
    .line 351
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/CropImage;->mSaving:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/CropImage;->mCrop:Lcom/ecareme/pixwe/media/HighlightView;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 358
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ecareme/pixwe/media/CropImage;->mSaving:Z

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/CropImage;->mCrop:Lcom/ecareme/pixwe/media/HighlightView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/ecareme/pixwe/media/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v17

    .line 362
    .local v17, r:Landroid/graphics/Rect;
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v20

    .line 363
    .local v20, width:I
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v13

    .line 367
    .local v13, height:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/CropImage;->mCircleCrop:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_1
    move/from16 v0, v20

    move v1, v13

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 369
    .local v8, croppedImage:Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 370
    .local v7, canvas:Landroid/graphics/Canvas;
    new-instance v9, Landroid/graphics/Rect;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v0, v9

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v20

    move v4, v13

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 371
    .local v9, dstRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object v0, v7

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    move-object v3, v9

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 374
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/CropImage;->mCircleCrop:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    .line 380
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 381
    .local v6, c:Landroid/graphics/Canvas;
    new-instance v16, Landroid/graphics/Path;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Path;-><init>()V

    .line 382
    .local v16, p:Landroid/graphics/Path;
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x4000

    div-float v21, v21, v22

    move v0, v13

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x4000

    div-float v22, v22, v23

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    sget-object v24, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 383
    sget-object v21, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, v6

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 384
    const/16 v21, 0x0

    sget-object v22, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v6

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 388
    .end local v6           #c:Landroid/graphics/Canvas;
    .end local v16           #p:Landroid/graphics/Path;
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/CropImage;->mOutputX:I

    move/from16 v21, v0

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/CropImage;->mOutputY:I

    move/from16 v21, v0

    if-eqz v21, :cond_3

    .line 389
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/CropImage;->mScale:Z

    move/from16 v21, v0

    if-eqz v21, :cond_6

    .line 391
    move-object v15, v8

    .line 392
    .local v15, old:Landroid/graphics/Bitmap;
    new-instance v21, Landroid/graphics/Matrix;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/CropImage;->mOutputX:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/CropImage;->mOutputY:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/CropImage;->mScaleUp:Z

    move/from16 v24, v0

    move-object/from16 v0, v21

    move-object v1, v8

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ecareme/pixwe/media/Util;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 393
    if-eq v15, v8, :cond_3

    .line 394
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 431
    .end local v15           #old:Landroid/graphics/Bitmap;
    :cond_3
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/ecareme/pixwe/media/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    .line 432
    .local v14, myExtras:Landroid/os/Bundle;
    if-eqz v14, :cond_7

    const-string v21, "data"

    move-object v0, v14

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v21

    if-nez v21, :cond_4

    const-string v21, "return-data"

    move-object v0, v14

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 433
    :cond_4
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 434
    .local v12, extras:Landroid/os/Bundle;
    const-string v21, "data"

    move-object v0, v12

    move-object/from16 v1, v21

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 435
    const/16 v21, -0x1

    new-instance v22, Landroid/content/Intent;

    invoke-direct/range {v22 .. v22}, Landroid/content/Intent;-><init>()V

    const-string v23, "inline-data"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 436
    invoke-virtual/range {p0 .. p0}, Lcom/ecareme/pixwe/media/CropImage;->finish()V

    goto/16 :goto_0

    .line 367
    .end local v7           #canvas:Landroid/graphics/Canvas;
    .end local v8           #croppedImage:Landroid/graphics/Bitmap;
    .end local v9           #dstRect:Landroid/graphics/Rect;
    .end local v12           #extras:Landroid/os/Bundle;
    .end local v14           #myExtras:Landroid/os/Bundle;
    :cond_5
    sget-object v21, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto/16 :goto_1

    .line 406
    .restart local v7       #canvas:Landroid/graphics/Canvas;
    .restart local v8       #croppedImage:Landroid/graphics/Bitmap;
    .restart local v9       #dstRect:Landroid/graphics/Rect;
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/CropImage;->mOutputX:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/CropImage;->mOutputY:I

    move/from16 v22, v0

    sget-object v23, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v21 .. v23}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 407
    .local v5, b:Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    .end local v7           #canvas:Landroid/graphics/Canvas;
    invoke-direct {v7, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 409
    .restart local v7       #canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/CropImage;->mCrop:Lcom/ecareme/pixwe/media/HighlightView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/ecareme/pixwe/media/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v19

    .line 410
    .local v19, srcRect:Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    .end local v9           #dstRect:Landroid/graphics/Rect;
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/CropImage;->mOutputX:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/CropImage;->mOutputY:I

    move/from16 v24, v0

    move-object v0, v9

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 412
    .restart local v9       #dstRect:Landroid/graphics/Rect;
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v21

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v22

    sub-int v21, v21, v22

    div-int/lit8 v10, v21, 0x2

    .line 413
    .local v10, dx:I
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v21

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v22

    sub-int v21, v21, v22

    div-int/lit8 v11, v21, 0x2

    .line 416
    .local v11, dy:I
    const/16 v21, 0x0

    move/from16 v0, v21

    move v1, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    const/16 v22, 0x0

    move/from16 v0, v22

    move v1, v11

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v22

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 419
    const/16 v21, 0x0

    move v0, v10

    neg-int v0, v0

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    const/16 v22, 0x0

    move v0, v11

    neg-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move-object v0, v9

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object v0, v7

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    move-object v3, v9

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 425
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 426
    move-object v8, v5

    goto/16 :goto_2

    .line 438
    .end local v5           #b:Landroid/graphics/Bitmap;
    .end local v10           #dx:I
    .end local v11           #dy:I
    .end local v19           #srcRect:Landroid/graphics/Rect;
    .restart local v14       #myExtras:Landroid/os/Bundle;
    :cond_7
    move-object v5, v8

    .line 439
    .restart local v5       #b:Landroid/graphics/Bitmap;
    new-instance v18, Lcom/ecareme/pixwe/media/CropImage$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/ecareme/pixwe/media/CropImage$6;-><init>(Lcom/ecareme/pixwe/media/CropImage;Landroid/graphics/Bitmap;)V

    .line 444
    .local v18, save:Ljava/lang/Runnable;
    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/ecareme/pixwe/media/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f06000e

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/CropImage;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v18

    move-object/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ecareme/pixwe/media/Util;->startBackgroundJob(Lcom/ecareme/pixwe/media/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto/16 :goto_0
.end method

.method private static performReturn(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "myExtras"
    .parameter "contentUri"

    .prologue
    .line 173
    new-instance v8, Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v8, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 174
    .local v8, result:Landroid/content/Intent;
    const/4 v5, 0x0

    .line 175
    .local v5, resultSet:Z
    if-eqz p1, :cond_3

    .line 176
    const-string v1, "output"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 177
    .local v4, outputUri:Landroid/net/Uri;
    if-eqz v4, :cond_3

    .line 178
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 179
    .local v1, extras:Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 181
    .local v2, outputStream:Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 182
    .end local v2           #outputStream:Ljava/io/OutputStream;
    .local v3, outputStream:Ljava/io/OutputStream;
    if-eqz v3, :cond_0

    .line 183
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 184
    .local v2, inputStream:Ljava/io/InputStream;
    invoke-static {v2, v3}, Lcom/ecareme/pixwe/media/Utils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 185
    invoke-static {v2}, Lcom/ecareme/pixwe/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 187
    .end local v2           #inputStream:Ljava/io/InputStream;
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    const/4 v6, -0x1

    new-instance v7, Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v7, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    .line 187
    .end local v1           #extras:Landroid/os/Bundle;
    invoke-virtual {v2, v6, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 189
    const/4 v1, 0x1

    .line 193
    .end local v5           #resultSet:Z
    .local v1, resultSet:Z
    invoke-static {v3}, Lcom/ecareme/pixwe/media/Util;->closeSilently(Ljava/io/Closeable;)V

    move v9, v1

    .line 197
    .end local v1           #resultSet:Z
    .end local v3           #outputStream:Ljava/io/OutputStream;
    .end local v4           #outputUri:Landroid/net/Uri;
    .local v9, resultSet:Z
    :goto_0
    if-nez v9, :cond_1

    if-eqz p1, :cond_1

    const-string v1, "return-data"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .end local p1
    if-eqz p1, :cond_1

    .line 199
    const/4 p1, 0x0

    .line 201
    .local p1, bitmap:Landroid/graphics/Bitmap;
    const/16 v3, 0x400

    const/16 v4, 0x400

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p2

    :try_start_2
    invoke-static/range {v1 .. v7}, Lcom/ecareme/pixwe/media/UriTexture;->createFromUri(Landroid/content/Context;Ljava/lang/String;IIJLorg/apache/http/conn/ClientConnectionManager;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object p1

    .line 207
    .end local p2
    :goto_1
    if-eqz p1, :cond_1

    .line 208
    const-string p2, "data"

    invoke-virtual {v8, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 211
    .end local p1           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    if-nez v9, :cond_2

    .line 212
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object p1, v0

    const/4 p2, -0x1

    invoke-virtual {p1, p2, v8}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 213
    :cond_2
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 214
    return-void

    .line 190
    .end local v9           #resultSet:Z
    .local v1, extras:Landroid/os/Bundle;
    .local v2, outputStream:Ljava/io/OutputStream;
    .restart local v4       #outputUri:Landroid/net/Uri;
    .restart local v5       #resultSet:Z
    .restart local p0
    .local p1, myExtras:Landroid/os/Bundle;
    .restart local p2
    :catch_0
    move-exception v1

    .line 191
    .local v1, ex:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v1, "CropImage"

    .end local v1           #ex:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Cannot save to uri "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v4           #outputUri:Landroid/net/Uri;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 193
    invoke-static {v2}, Lcom/ecareme/pixwe/media/Util;->closeSilently(Ljava/io/Closeable;)V

    move v9, v5

    .end local v5           #resultSet:Z
    .restart local v9       #resultSet:Z
    goto :goto_0

    .line 192
    .end local v9           #resultSet:Z
    .restart local v5       #resultSet:Z
    :catchall_0
    move-exception p0

    move-object p1, p0

    move-object p0, v2

    .line 193
    .end local v2           #outputStream:Ljava/io/OutputStream;
    .end local p1           #myExtras:Landroid/os/Bundle;
    .local p0, outputStream:Ljava/io/OutputStream;
    :goto_3
    invoke-static {p0}, Lcom/ecareme/pixwe/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 194
    throw p1

    .line 202
    .end local v5           #resultSet:Z
    .restart local v9       #resultSet:Z
    .local p0, context:Landroid/content/Context;
    .local p1, bitmap:Landroid/graphics/Bitmap;
    :catch_1
    move-exception p2

    goto :goto_1

    .line 204
    :catch_2
    move-exception p2

    goto :goto_1

    .line 192
    .end local v9           #resultSet:Z
    .restart local v3       #outputStream:Ljava/io/OutputStream;
    .restart local v4       #outputUri:Landroid/net/Uri;
    .restart local v5       #resultSet:Z
    .local p1, myExtras:Landroid/os/Bundle;
    :catchall_1
    move-exception p0

    move-object p1, p0

    move-object p0, v3

    .end local v3           #outputStream:Ljava/io/OutputStream;
    .local p0, outputStream:Ljava/io/OutputStream;
    goto :goto_3

    .line 190
    .restart local v3       #outputStream:Ljava/io/OutputStream;
    .local p0, context:Landroid/content/Context;
    :catch_3
    move-exception v1

    move-object v2, v3

    .end local v3           #outputStream:Ljava/io/OutputStream;
    .restart local v2       #outputStream:Ljava/io/OutputStream;
    goto :goto_2

    .end local v2           #outputStream:Ljava/io/OutputStream;
    .end local v4           #outputUri:Landroid/net/Uri;
    :cond_3
    move v9, v5

    .end local v5           #resultSet:Z
    .restart local v9       #resultSet:Z
    goto :goto_0
.end method

.method private saveOutput(Landroid/graphics/Bitmap;)V
    .locals 28
    .parameter "croppedImage"

    .prologue
    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/CropImage;->mSaveUri:Landroid/net/Uri;

    move-object v4, v0

    if-eqz v4, :cond_2

    .line 450
    const/16 v26, 0x0

    .line 452
    .local v26, outputStream:Ljava/io/OutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/CropImage;->mSaveUri:Landroid/net/Uri;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v26

    .line 453
    if-eqz v26, :cond_0

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/CropImage;->mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

    move-object v4, v0

    const/16 v5, 0x4b

    move-object/from16 v0, p1

    move-object v1, v4

    move v2, v5

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    :cond_0
    invoke-static/range {v26 .. v26}, Lcom/ecareme/pixwe/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 462
    :goto_0
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 463
    .local v21, extras:Landroid/os/Bundle;
    const/4 v4, -0x1

    new-instance v5, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/CropImage;->mSaveUri:Landroid/net/Uri;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v5

    move-object/from16 v0, p0

    move v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 513
    .end local v26           #outputStream:Ljava/io/OutputStream;
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 514
    invoke-virtual/range {p0 .. p0}, Lcom/ecareme/pixwe/media/CropImage;->finish()V

    .line 515
    return-void

    .line 457
    .end local v21           #extras:Landroid/os/Bundle;
    .restart local v26       #outputStream:Ljava/io/OutputStream;
    :catch_0
    move-exception v4

    move-object/from16 v19, v4

    .line 458
    .local v19, ex:Ljava/io/IOException;
    :try_start_1
    const-string v4, "CropImage"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Cannot open file: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/CropImage;->mSaveUri:Landroid/net/Uri;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 460
    invoke-static/range {v26 .. v26}, Lcom/ecareme/pixwe/media/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 459
    .end local v19           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 460
    invoke-static/range {v26 .. v26}, Lcom/ecareme/pixwe/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 461
    throw v4

    .line 465
    .end local v26           #outputStream:Ljava/io/OutputStream;
    :cond_2
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 466
    .restart local v21       #extras:Landroid/os/Bundle;
    const-string v4, "rect"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/CropImage;->mCrop:Lcom/ecareme/pixwe/media/HighlightView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/ecareme/pixwe/media/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/CropImage;->mItem:Lcom/ecareme/pixwe/media/MediaItem;

    move-object v4, v0

    if-eqz v4, :cond_1

    .line 472
    new-instance v25, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/CropImage;->mItem:Lcom/ecareme/pixwe/media/MediaItem;

    move-object v4, v0

    iget-object v4, v4, Lcom/ecareme/pixwe/media/MediaItem;->mFilePath:Ljava/lang/String;

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 473
    .local v25, oldPath:Ljava/io/File;
    new-instance v18, Ljava/io/File;

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 475
    .local v18, directory:Ljava/io/File;
    const/16 v27, 0x0

    .line 476
    .local v27, x:I
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v22

    .line 477
    .local v22, fileName:Ljava/lang/String;
    const/4 v4, 0x0

    const-string v5, "."

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v22

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 483
    :cond_3
    add-int/lit8 v27, v27, 0x1

    .line 484
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 485
    .local v17, candidate:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v20

    .line 486
    .local v20, exists:Z
    if-nez v20, :cond_3

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/CropImage;->mItem:Lcom/ecareme/pixwe/media/MediaItem;

    move-object/from16 v23, v0

    .line 493
    .local v23, item:Lcom/ecareme/pixwe/media/MediaItem;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 494
    .local v5, title:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".jpg"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 495
    .local v13, finalFileName:Ljava/lang/String;
    const/4 v4, 0x1

    move v0, v4

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 496
    .local v16, degree:[I
    const/4 v10, 0x0

    .line 497
    .local v10, latitude:Ljava/lang/Double;
    const/4 v11, 0x0

    .line 498
    .local v11, longitude:Ljava/lang/Double;
    invoke-virtual/range {v23 .. v23}, Lcom/ecareme/pixwe/media/MediaItem;->isLatLongValid()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 499
    new-instance v10, Ljava/lang/Double;

    .end local v10           #latitude:Ljava/lang/Double;
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mLatitude:D

    move-wide v6, v0

    invoke-direct {v10, v6, v7}, Ljava/lang/Double;-><init>(D)V

    .line 500
    .restart local v10       #latitude:Ljava/lang/Double;
    new-instance v11, Ljava/lang/Double;

    .end local v11           #longitude:Ljava/lang/Double;
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mLongitude:D

    move-wide v6, v0

    invoke-direct {v11, v6, v7}, Ljava/lang/Double;-><init>(D)V

    .line 502
    .restart local v11       #longitude:Ljava/lang/Double;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    .line 503
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mDateAddedInSec:J

    move-wide v6, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mDateTakenInMs:J

    move-wide v8, v0

    .line 504
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    .line 505
    const/4 v15, 0x0

    move-object/from16 v14, p1

    .line 502
    invoke-static/range {v4 .. v16}, Lcom/ecareme/pixwe/media/ImageManager;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JJLjava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B[I)Landroid/net/Uri;

    move-result-object v24

    .line 506
    .local v24, newUri:Landroid/net/Uri;
    if-eqz v24, :cond_5

    .line 507
    const/4 v4, -0x1

    new-instance v5, Landroid/content/Intent;

    .end local v5           #title:Ljava/lang/String;
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {v24 .. v24}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v5

    move-object/from16 v0, p0

    move v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/CropImage;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_1

    .line 509
    .restart local v5       #title:Ljava/lang/String;
    :cond_5
    const/4 v4, -0x1

    new-instance v5, Landroid/content/Intent;

    .end local v5           #title:Ljava/lang/String;
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    move-object/from16 v0, p0

    move v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/CropImage;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method private startFaceDetection()V
    .locals 4

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/CropImage;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    :goto_0
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/ecareme/pixwe/media/CropImage;->mImageView:Lcom/ecareme/pixwe/media/CropImageView;

    iget-object v1, p0, Lcom/ecareme/pixwe/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/CropImageView;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 319
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ecareme/pixwe/media/CropImage$5;

    invoke-direct {v2, p0}, Lcom/ecareme/pixwe/media/CropImage$5;-><init>(Lcom/ecareme/pixwe/media/CropImage;)V

    .line 343
    iget-object v3, p0, Lcom/ecareme/pixwe/media/CropImage;->mHandler:Landroid/os/Handler;

    .line 319
    invoke-static {p0, v0, v1, v2, v3}, Lcom/ecareme/pixwe/media/Util;->startBackgroundJob(Lcom/ecareme/pixwe/media/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    .line 218
    invoke-super {p0, p1}, Lcom/ecareme/pixwe/media/MonitoredActivity;->onCreate(Landroid/os/Bundle;)V

    .line 219
    new-instance v0, Lcom/ecareme/pixwe/app/App;

    invoke-direct {v0, p0}, Lcom/ecareme/pixwe/app/App;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/CropImage;->mApp:Lcom/ecareme/pixwe/app/App;

    .line 220
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/media/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    .line 221
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/media/CropImage;->requestWindowFeature(I)Z

    .line 222
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/media/CropImage;->setContentView(I)V

    .line 224
    const v0, 0x7f090009

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/media/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/ecareme/pixwe/media/CropImageView;

    iput-object p1, p0, Lcom/ecareme/pixwe/media/CropImage;->mImageView:Lcom/ecareme/pixwe/media/CropImageView;

    .line 231
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 232
    .local v9, intent:Landroid/content/Intent;
    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 234
    .local v8, extras:Landroid/os/Bundle;
    if-eqz v8, :cond_2

    .line 235
    const-string v0, "circleCrop"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/CropImage;->mCircleCrop:Z

    .line 237
    const/4 v0, 0x1

    iput v0, p0, Lcom/ecareme/pixwe/media/CropImage;->mAspectX:I

    .line 238
    const/4 v0, 0x1

    iput v0, p0, Lcom/ecareme/pixwe/media/CropImage;->mAspectY:I

    .line 240
    :cond_0
    const-string v0, "output"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/ecareme/pixwe/media/CropImage;->mSaveUri:Landroid/net/Uri;

    .line 241
    iget-object v0, p0, Lcom/ecareme/pixwe/media/CropImage;->mSaveUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 242
    const-string v0, "outputFormat"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 243
    .local v10, outputFormatString:Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 244
    invoke-static {v10}, Landroid/graphics/Bitmap$CompressFormat;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/media/CropImage;->mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 247
    .end local v10           #outputFormatString:Ljava/lang/String;
    :cond_1
    const-string v0, "data"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/ecareme/pixwe/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 248
    const-string v0, "aspectX"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ecareme/pixwe/media/CropImage;->mAspectX:I

    .line 249
    const-string v0, "aspectY"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ecareme/pixwe/media/CropImage;->mAspectY:I

    .line 250
    const-string v0, "outputX"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ecareme/pixwe/media/CropImage;->mOutputX:I

    .line 251
    const-string v0, "outputY"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ecareme/pixwe/media/CropImage;->mOutputY:I

    .line 252
    const-string v0, "scale"

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/CropImage;->mScale:Z

    .line 253
    const-string v0, "scaleUpIfNeeded"

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/CropImage;->mScaleUp:Z

    .line 254
    const-string v0, "noFaceDetection"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "noFaceDetection"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/CropImage;->mDoFaceDetection:Z

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/ecareme/pixwe/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    .line 259
    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    .line 260
    .local v12, target:Landroid/net/Uri;
    invoke-virtual {v12}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v13

    .line 261
    .local v13, targetScheme:Ljava/lang/String;
    const/4 v11, 0x0

    .line 263
    .local v11, rotation:I
    const-string v0, "content"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 264
    const/4 v0, 0x0

    invoke-static {p0, v12, v0}, Lcom/ecareme/pixwe/media/LocalDataSource;->createMediaItemFromUri(Landroid/content/Context;Landroid/net/Uri;I)Lcom/ecareme/pixwe/media/MediaItem;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/media/CropImage;->mItem:Lcom/ecareme/pixwe/media/MediaItem;

    .line 267
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/ecareme/pixwe/media/CropImage;->mItem:Lcom/ecareme/pixwe/media/MediaItem;

    if-eqz v0, :cond_8

    .line 268
    iget-object v0, p0, Lcom/ecareme/pixwe/media/CropImage;->mItem:Lcom/ecareme/pixwe/media/MediaItem;

    iget-object v1, v0, Lcom/ecareme/pixwe/media/MediaItem;->mContentUri:Ljava/lang/String;

    const/16 v2, 0x400

    const/16 v3, 0x400

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/ecareme/pixwe/media/UriTexture;->createFromUri(Landroid/content/Context;Ljava/lang/String;IIJLorg/apache/http/conn/ClientConnectionManager;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 269
    iget-object v0, p0, Lcom/ecareme/pixwe/media/CropImage;->mItem:Lcom/ecareme/pixwe/media/MediaItem;

    iget v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mRotation:F
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    float-to-int v11, v0

    .line 282
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/ecareme/pixwe/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    int-to-float v0, v11

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    .line 283
    iget-object v0, p0, Lcom/ecareme/pixwe/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v11}, Lcom/ecareme/pixwe/media/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 287
    .end local v11           #rotation:I
    .end local v12           #target:Landroid/net/Uri;
    .end local v13           #targetScheme:Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lcom/ecareme/pixwe/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_9

    .line 288
    const-string v0, "CropImage"

    const-string v1, "Cannot load bitmap, exiting."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/CropImage;->finish()V

    .line 310
    :goto_2
    return-void

    .line 254
    :cond_6
    const/4 v0, 0x1

    goto :goto_0

    :cond_7
    const/4 v0, 0x1

    goto :goto_0

    .line 271
    .restart local v11       #rotation:I
    .restart local v12       #target:Landroid/net/Uri;
    .restart local v13       #targetScheme:Ljava/lang/String;
    :cond_8
    :try_start_1
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x400

    const/16 v3, 0x400

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/ecareme/pixwe/media/UriTexture;->createFromUri(Landroid/content/Context;Ljava/lang/String;IIJLorg/apache/http/conn/ClientConnectionManager;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/media/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 272
    const-string v0, "file"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 273
    new-instance v7, Landroid/media/ExifInterface;

    invoke-virtual {v12}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 274
    .local v7, exif:Landroid/media/ExifInterface;
    const-string v0, "Orientation"

    .line 275
    const/4 v1, 0x1

    .line 274
    invoke-virtual {v7, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/ecareme/pixwe/media/Shared;->exifOrientationToDegrees(I)F
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    float-to-int v11, v0

    goto :goto_1

    .line 294
    .end local v7           #exif:Landroid/media/ExifInterface;
    .end local v11           #rotation:I
    .end local v12           #target:Landroid/net/Uri;
    .end local v13           #targetScheme:Ljava/lang/String;
    :cond_9
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/CropImage;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 296
    const v0, 0x7f09000b

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/media/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ecareme/pixwe/media/CropImage$3;

    invoke-direct {v1, p0}, Lcom/ecareme/pixwe/media/CropImage$3;-><init>(Lcom/ecareme/pixwe/media/CropImage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    const v0, 0x7f09000a

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/media/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ecareme/pixwe/media/CropImage$4;

    invoke-direct {v1, p0}, Lcom/ecareme/pixwe/media/CropImage$4;-><init>(Lcom/ecareme/pixwe/media/CropImage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/CropImage;->startFaceDetection()V

    goto :goto_2

    .line 279
    .restart local v11       #rotation:I
    .restart local v12       #target:Landroid/net/Uri;
    .restart local v13       #targetScheme:Ljava/lang/String;
    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 278
    :catch_1
    move-exception v0

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/ecareme/pixwe/media/CropImage;->mApp:Lcom/ecareme/pixwe/app/App;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/app/App;->shutdown()V

    .line 533
    invoke-super {p0}, Lcom/ecareme/pixwe/media/MonitoredActivity;->onDestroy()V

    .line 534
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 525
    invoke-super {p0}, Lcom/ecareme/pixwe/media/MonitoredActivity;->onPause()V

    .line 526
    invoke-static {}, Lcom/ecareme/pixwe/media/BitmapManager;->instance()Lcom/ecareme/pixwe/media/BitmapManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ecareme/pixwe/media/CropImage;->mDecodingThreads:Lcom/ecareme/pixwe/media/BitmapManager$ThreadSet;

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/BitmapManager;->cancelThreadDecoding(Lcom/ecareme/pixwe/media/BitmapManager$ThreadSet;)V

    .line 527
    iget-object v0, p0, Lcom/ecareme/pixwe/media/CropImage;->mApp:Lcom/ecareme/pixwe/app/App;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/app/App;->onPause()V

    .line 528
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 519
    invoke-super {p0}, Lcom/ecareme/pixwe/media/MonitoredActivity;->onResume()V

    .line 520
    iget-object v0, p0, Lcom/ecareme/pixwe/media/CropImage;->mApp:Lcom/ecareme/pixwe/app/App;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/app/App;->onResume()V

    .line 521
    return-void
.end method
