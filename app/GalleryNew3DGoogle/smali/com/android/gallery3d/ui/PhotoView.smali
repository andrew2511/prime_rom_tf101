.class public Lcom/android/gallery3d/ui/PhotoView;
.super Lcom/android/gallery3d/ui/GLView;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;,
        Lcom/android/gallery3d/ui/PhotoView$ImageData;,
        Lcom/android/gallery3d/ui/PhotoView$Model;,
        Lcom/android/gallery3d/ui/PhotoView$MyDownUpListener;,
        Lcom/android/gallery3d/ui/PhotoView$MyScaleListener;,
        Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;,
        Lcom/android/gallery3d/ui/PhotoView$PositionController;,
        Lcom/android/gallery3d/ui/PhotoView$PhotoTapListener;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/android/gallery3d/app/GalleryActivity;

.field private final mDownUpDetector:Lcom/android/gallery3d/ui/DownUpDetector;

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

.field private mIgnoreUpEvent:Z

.field private mImageRotation:I

.field private mLoadingSpinner:Lcom/android/gallery3d/ui/ProgressSpinner;

.field private mLoadingState:I

.field private mLoadingText:Lcom/android/gallery3d/ui/StringTexture;

.field private mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

.field private mNoThumbnailText:Lcom/android/gallery3d/ui/StringTexture;

.field private mOpenedItemPath:Lcom/android/gallery3d/data/Path;

.field private mPhotoTapListener:Lcom/android/gallery3d/ui/PhotoView$PhotoTapListener;

.field private final mPositionController:Lcom/android/gallery3d/ui/PhotoView$PositionController;

.field private final mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private final mScreenNails:[Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;

.field private mShowVideoPlayIcon:Z

.field private mTempPoints:[F

.field private mTempRect:Landroid/graphics/RectF;

.field private mTileView:Lcom/android/gallery3d/ui/TileImageView;

.field private mTransitionMode:I

.field private mVideoPlayIcon:Lcom/android/gallery3d/ui/Texture;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/GalleryActivity;)V
    .locals 9
    .parameter "activity"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v5, -0x1

    const/high16 v4, 0x41a0

    const/4 v6, 0x0

    .line 109
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 77
    new-array v3, v8, [Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;

    iput-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mScreenNails:[Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;

    .line 90
    iput v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mTransitionMode:I

    .line 91
    new-instance v3, Lcom/android/gallery3d/ui/TileImageView;

    invoke-direct {v3}, Lcom/android/gallery3d/ui/TileImageView;-><init>()V

    iput-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    .line 99
    iput v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mLoadingState:I

    .line 101
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mTempRect:Landroid/graphics/RectF;

    .line 102
    const/16 v3, 0x8

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mTempPoints:[F

    .line 904
    iput-boolean v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mIgnoreUpEvent:Z

    .line 110
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {p0, v3}, Lcom/android/gallery3d/ui/PhotoView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 111
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    .line 112
    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 114
    .local v0, context:Landroid/content/Context;
    new-instance v3, Lcom/android/gallery3d/ui/ProgressSpinner;

    invoke-direct {v3, v0}, Lcom/android/gallery3d/ui/ProgressSpinner;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mLoadingSpinner:Lcom/android/gallery3d/ui/ProgressSpinner;

    .line 115
    const v3, 0x7f08000a

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4, v5}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mLoadingText:Lcom/android/gallery3d/ui/StringTexture;

    .line 118
    const v3, 0x7f08000c

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4, v5}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FI)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v3

    iput-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mNoThumbnailText:Lcom/android/gallery3d/ui/StringTexture;

    .line 122
    new-instance v3, Lcom/android/gallery3d/ui/PhotoView$1;

    invoke-interface {p1}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/gallery3d/ui/PhotoView$1;-><init>(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/GLRoot;)V

    iput-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    .line 146
    new-instance v3, Landroid/view/GestureDetector;

    new-instance v4, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;

    invoke-direct {v4, p0, v6}, Lcom/android/gallery3d/ui/PhotoView$MyGestureListener;-><init>(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/PhotoView$1;)V

    const/4 v5, 0x1

    invoke-direct {v3, v0, v4, v6, v5}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 148
    new-instance v3, Landroid/view/ScaleGestureDetector;

    new-instance v4, Lcom/android/gallery3d/ui/PhotoView$MyScaleListener;

    invoke-direct {v4, p0, v6}, Lcom/android/gallery3d/ui/PhotoView$MyScaleListener;-><init>(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/PhotoView$1;)V

    invoke-direct {v3, v0, v4}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 149
    new-instance v3, Lcom/android/gallery3d/ui/DownUpDetector;

    new-instance v4, Lcom/android/gallery3d/ui/PhotoView$MyDownUpListener;

    invoke-direct {v4, p0, v6}, Lcom/android/gallery3d/ui/PhotoView$MyDownUpListener;-><init>(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/PhotoView$1;)V

    invoke-direct {v3, v4}, Lcom/android/gallery3d/ui/DownUpDetector;-><init>(Lcom/android/gallery3d/ui/DownUpDetector$DownUpListener;)V

    iput-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mDownUpDetector:Lcom/android/gallery3d/ui/DownUpDetector;

    .line 151
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mScreenNails:[Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;

    array-length v2, v3

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 152
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mScreenNails:[Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;

    new-instance v4, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;

    invoke-direct {v4, p0, v6}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;-><init>(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/PhotoView$1;)V

    aput-object v4, v3, v1

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    :cond_0
    new-instance v3, Lcom/android/gallery3d/ui/PhotoView$PositionController;

    invoke-direct {v3, p0}, Lcom/android/gallery3d/ui/PhotoView$PositionController;-><init>(Lcom/android/gallery3d/ui/PhotoView;)V

    iput-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PhotoView$PositionController;

    .line 156
    new-instance v3, Lcom/android/gallery3d/ui/ResourceTexture;

    const v4, 0x7f02001b

    invoke-direct {v3, v0, v4}, Lcom/android/gallery3d/ui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mVideoPlayIcon:Lcom/android/gallery3d/ui/Texture;

    .line 157
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/ui/PhotoView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->onTransitionComplete()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/PhotoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mLoadingState:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/gallery3d/ui/PhotoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mLoadingState:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/app/GalleryActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/gallery3d/ui/PhotoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTransitionMode:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/gallery3d/ui/PhotoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mTransitionMode:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/SynchronizedHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/gallery3d/ui/PhotoView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->isDown()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/data/Path;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mOpenedItemPath:Lcom/android/gallery3d/data/Path;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/Path;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mOpenedItemPath:Lcom/android/gallery3d/data/Path;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$PositionController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PhotoView$PositionController;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$PhotoTapListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPhotoTapListener:Lcom/android/gallery3d/ui/PhotoView$PhotoTapListener;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/gallery3d/ui/PhotoView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mIgnoreUpEvent:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/gallery3d/ui/PhotoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mIgnoreUpEvent:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/gallery3d/ui/PhotoView;F)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->swipeImages(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(FF)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-static {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->isAlmostEquals(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(III)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-static {p0, p1, p2}, Lcom/android/gallery3d/ui/PhotoView;->getRotated(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$2900(II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-static {p0, p1}, Lcom/android/gallery3d/ui/PhotoView;->gapToSide(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/ProgressSpinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mLoadingSpinner:Lcom/android/gallery3d/ui/ProgressSpinner;

    return-object v0
.end method

.method private static gapToSide(II)I
    .locals 2
    .parameter "imageWidth"
    .parameter "viewWidth"

    .prologue
    .line 301
    const/4 v0, 0x0

    sub-int v1, p1, p0

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getImageBounds()Landroid/graphics/RectF;
    .locals 13

    .prologue
    .line 305
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PhotoView$PositionController;

    .line 306
    .local v3, p:Lcom/android/gallery3d/ui/PhotoView$PositionController;
    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mTempPoints:[F

    .line 314
    .local v4, points:[F
    const/4 v9, 0x0

    const/4 v10, 0x4

    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->access$1000(Lcom/android/gallery3d/ui/PhotoView$PositionController;)I

    move-result v11

    neg-int v11, v11

    int-to-float v11, v11

    aput v11, v4, v10

    aput v11, v4, v9

    .line 315
    const/4 v9, 0x1

    const/4 v10, 0x3

    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->access$1100(Lcom/android/gallery3d/ui/PhotoView$PositionController;)I

    move-result v11

    neg-int v11, v11

    int-to-float v11, v11

    aput v11, v4, v10

    aput v11, v4, v9

    .line 316
    const/4 v9, 0x2

    const/4 v10, 0x6

    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->access$800(Lcom/android/gallery3d/ui/PhotoView$PositionController;)I

    move-result v11

    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->access$1000(Lcom/android/gallery3d/ui/PhotoView$PositionController;)I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    aput v11, v4, v10

    aput v11, v4, v9

    .line 317
    const/4 v9, 0x5

    const/4 v10, 0x7

    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->access$900(Lcom/android/gallery3d/ui/PhotoView$PositionController;)I

    move-result v11

    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->access$1100(Lcom/android/gallery3d/ui/PhotoView$PositionController;)I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    aput v11, v4, v10

    aput v11, v4, v9

    .line 319
    iget-object v5, p0, Lcom/android/gallery3d/ui/PhotoView;->mTempRect:Landroid/graphics/RectF;

    .line 320
    .local v5, rect:Landroid/graphics/RectF;
    const/high16 v9, 0x7f80

    const/high16 v10, 0x7f80

    const/high16 v11, -0x80

    const/high16 v12, -0x80

    invoke-virtual {v5, v9, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 323
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->access$1200(Lcom/android/gallery3d/ui/PhotoView$PositionController;)F

    move-result v6

    .line 324
    .local v6, scale:F
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->access$1300(Lcom/android/gallery3d/ui/PhotoView$PositionController;)I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v1, v9

    .line 325
    .local v1, offsetX:F
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->access$1400(Lcom/android/gallery3d/ui/PhotoView$PositionController;)I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v2, v9

    .line 326
    .local v2, offsetY:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v9, 0x4

    if-ge v0, v9, :cond_4

    .line 327
    add-int v9, v0, v0

    aget v9, v4, v9

    mul-float/2addr v9, v6

    add-float v7, v9, v1

    .line 328
    .local v7, x:F
    add-int v9, v0, v0

    add-int/lit8 v9, v9, 0x1

    aget v9, v4, v9

    mul-float/2addr v9, v6

    add-float v8, v9, v2

    .line 329
    .local v8, y:F
    iget v9, v5, Landroid/graphics/RectF;->left:F

    cmpg-float v9, v7, v9

    if-gez v9, :cond_0

    iput v7, v5, Landroid/graphics/RectF;->left:F

    .line 330
    :cond_0
    iget v9, v5, Landroid/graphics/RectF;->right:F

    cmpl-float v9, v7, v9

    if-lez v9, :cond_1

    iput v7, v5, Landroid/graphics/RectF;->right:F

    .line 331
    :cond_1
    iget v9, v5, Landroid/graphics/RectF;->top:F

    cmpg-float v9, v8, v9

    if-gez v9, :cond_2

    iput v8, v5, Landroid/graphics/RectF;->top:F

    .line 332
    :cond_2
    iget v9, v5, Landroid/graphics/RectF;->bottom:F

    cmpl-float v9, v8, v9

    if-lez v9, :cond_3

    iput v8, v5, Landroid/graphics/RectF;->bottom:F

    .line 326
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    .end local v7           #x:F
    .end local v8           #y:F
    :cond_4
    return-object v5
.end method

.method private static getRotated(III)I
    .locals 1
    .parameter "degree"
    .parameter "original"
    .parameter "theother"

    .prologue
    .line 1079
    div-int/lit8 v0, p0, 0x5a

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    move v0, p1

    :goto_0
    return v0

    :cond_0
    move v0, p2

    goto :goto_0
.end method

.method private static isAlmostEquals(FF)Z
    .locals 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 843
    sub-float v0, p0, p1

    .line 844
    .local v0, diff:F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    neg-float v1, v0

    :goto_0
    const v2, 0x3ca3d70a

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isDown()Z
    .locals 1

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mDownUpDetector:Lcom/android/gallery3d/ui/DownUpDetector;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DownUpDetector;->isDown()Z

    move-result v0

    return v0
.end method

.method private layoutScreenNails()V
    .locals 9

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->getWidth()I

    move-result v6

    .line 354
    .local v6, width:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->getHeight()I

    move-result v3

    .line 358
    .local v3, height:I
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->getImageBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 359
    .local v0, bounds:Landroid/graphics/RectF;
    iget v7, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 360
    .local v4, left:I
    iget v7, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 361
    .local v5, right:I
    sub-int v7, v5, v4

    invoke-static {v7, v6}, Lcom/android/gallery3d/ui/PhotoView;->gapToSide(II)I

    move-result v2

    .line 364
    .local v2, gap:I
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mScreenNails:[Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;

    const/4 v8, 0x0

    aget-object v1, v7, v8

    .line 366
    .local v1, entry:Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;
    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 367
    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->gapToSide()I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v7, v7, 0x60

    sub-int v7, v4, v7

    invoke-virtual {v1, v7}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->layoutRightEdgeAt(I)V

    .line 372
    :cond_0
    iget-object v7, p0, Lcom/android/gallery3d/ui/PhotoView;->mScreenNails:[Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;

    const/4 v8, 0x1

    aget-object v1, v7, v8

    .line 373
    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 374
    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->gapToSide()I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v7, v7, 0x60

    add-int/2addr v7, v5

    invoke-virtual {v1, v7}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->layoutLeftEdgeAt(I)V

    .line 377
    :cond_1
    return-void
.end method

.method private onTransitionComplete()V
    .locals 2

    .prologue
    .line 1043
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTransitionMode:I

    .line 1044
    .local v0, mode:I
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mTransitionMode:I

    .line 1046
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    if-nez v1, :cond_1

    .line 1052
    :cond_0
    :goto_0
    return-void

    .line 1047
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1048
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToNextImage()V

    goto :goto_0

    .line 1049
    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1050
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToPreviousImage()V

    goto :goto_0
.end method

.method private setTileViewPosition(IIF)Z
    .locals 6
    .parameter "centerX"
    .parameter "centerY"
    .parameter "scale"

    .prologue
    .line 172
    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PhotoView$PositionController;

    invoke-static {v4}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->access$800(Lcom/android/gallery3d/ui/PhotoView$PositionController;)I

    move-result v4

    sub-int v0, v4, p1

    .line 173
    .local v0, inverseX:I
    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PhotoView$PositionController;

    invoke-static {v4}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->access$900(Lcom/android/gallery3d/ui/PhotoView$PositionController;)I

    move-result v4

    sub-int v1, v4, p2

    .line 174
    .local v1, inverseY:I
    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    .line 175
    .local v3, t:Lcom/android/gallery3d/ui/TileImageView;
    iget v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mImageRotation:I

    .line 176
    .local v2, rotation:I
    sparse-switch v2, :sswitch_data_0

    .line 181
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 177
    :sswitch_0
    const/4 v4, 0x0

    invoke-virtual {v3, p1, p2, p3, v4}, Lcom/android/gallery3d/ui/TileImageView;->setPosition(IIFI)Z

    move-result v4

    .line 180
    :goto_0
    return v4

    .line 178
    :sswitch_1
    const/16 v4, 0x5a

    invoke-virtual {v3, p2, v0, p3, v4}, Lcom/android/gallery3d/ui/TileImageView;->setPosition(IIFI)Z

    move-result v4

    goto :goto_0

    .line 179
    :sswitch_2
    const/16 v4, 0xb4

    invoke-virtual {v3, v0, v1, p3, v4}, Lcom/android/gallery3d/ui/TileImageView;->setPosition(IIFI)Z

    move-result v4

    goto :goto_0

    .line 180
    :sswitch_3
    const/16 v4, 0x10e

    invoke-virtual {v3, v1, p1, p3, v4}, Lcom/android/gallery3d/ui/TileImageView;->setPosition(IIFI)Z

    move-result v4

    goto :goto_0

    .line 176
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private stopCurrentSwipingIfNeeded()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 831
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTransitionMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 832
    iput v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mTransitionMode:I

    .line 833
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PhotoView$PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->stopAnimation()V

    .line 834
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToNextImage()V

    .line 840
    :cond_0
    :goto_0
    return-void

    .line 835
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTransitionMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 836
    iput v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mTransitionMode:I

    .line 837
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PhotoView$PositionController;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->stopAnimation()V

    .line 838
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->switchToPreviousImage()V

    goto :goto_0
.end method

.method private swipeImages(F)Z
    .locals 14
    .parameter "velocity"

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 848
    iget v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mTransitionMode:I

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mTransitionMode:I

    if-eq v8, v12, :cond_0

    iget v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mTransitionMode:I

    if-eq v8, v13, :cond_0

    move v8, v10

    .line 901
    :goto_0
    return v8

    .line 852
    :cond_0
    iget-object v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mScreenNails:[Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;

    aget-object v3, v8, v11

    .line 853
    .local v3, next:Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;
    iget-object v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mScreenNails:[Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;

    aget-object v4, v8, v10

    .line 855
    .local v4, prev:Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->getWidth()I

    move-result v7

    .line 859
    .local v7, width:I
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PhotoView$PositionController;

    .line 860
    .local v1, controller:Lcom/android/gallery3d/ui/PhotoView$PositionController;
    invoke-static {v1}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->access$1200(Lcom/android/gallery3d/ui/PhotoView$PositionController;)F

    move-result v8

    invoke-static {v1}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->access$2000(Lcom/android/gallery3d/ui/PhotoView$PositionController;)F

    move-result v9

    invoke-static {v8, v9}, Lcom/android/gallery3d/ui/PhotoView;->isAlmostEquals(FF)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 861
    const/high16 v8, -0x3c6a

    cmpg-float v8, p1, v8

    if-gez v8, :cond_2

    .line 862
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->stopCurrentSwipingIfNeeded()V

    .line 863
    invoke-virtual {v3}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 864
    iput v12, p0, Lcom/android/gallery3d/ui/PhotoView;->mTransitionMode:I

    .line 865
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->access$2100(Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;)I

    move-result v8

    div-int/lit8 v9, v7, 0x2

    sub-int/2addr v8, v9

    invoke-virtual {v1, v8}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->startHorizontalSlide(I)V

    move v8, v11

    .line 866
    goto :goto_0

    :cond_1
    move v8, v10

    .line 868
    goto :goto_0

    .line 870
    :cond_2
    const/high16 v8, 0x4396

    cmpl-float v8, p1, v8

    if-lez v8, :cond_4

    .line 871
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->stopCurrentSwipingIfNeeded()V

    .line 872
    invoke-virtual {v4}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 873
    iput v13, p0, Lcom/android/gallery3d/ui/PhotoView;->mTransitionMode:I

    .line 874
    invoke-static {v4}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->access$2100(Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;)I

    move-result v8

    div-int/lit8 v9, v7, 0x2

    sub-int/2addr v8, v9

    invoke-virtual {v1, v8}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->startHorizontalSlide(I)V

    move v8, v11

    .line 875
    goto :goto_0

    :cond_3
    move v8, v10

    .line 877
    goto :goto_0

    .line 881
    :cond_4
    iget v8, p0, Lcom/android/gallery3d/ui/PhotoView;->mTransitionMode:I

    if-eqz v8, :cond_5

    move v8, v10

    goto :goto_0

    .line 884
    :cond_5
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->getImageBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 885
    .local v0, bounds:Landroid/graphics/RectF;
    iget v8, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 886
    .local v2, left:I
    iget v8, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 887
    .local v5, right:I
    sub-int v8, v5, v2

    invoke-static {v8, v7}, Lcom/android/gallery3d/ui/PhotoView;->gapToSide(II)I

    move-result v8

    add-int/lit16 v6, v8, 0x100

    .line 890
    .local v6, threshold:I
    invoke-virtual {v3}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_6

    sub-int v8, v7, v5

    if-ge v6, v8, :cond_6

    .line 891
    iput v12, p0, Lcom/android/gallery3d/ui/PhotoView;->mTransitionMode:I

    .line 892
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->access$2100(Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;)I

    move-result v8

    div-int/lit8 v9, v7, 0x2

    sub-int/2addr v8, v9

    invoke-virtual {v1, v8}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->startHorizontalSlide(I)V

    move v8, v11

    .line 893
    goto/16 :goto_0

    .line 895
    :cond_6
    invoke-virtual {v4}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_7

    if-ge v6, v2, :cond_7

    .line 896
    iput v13, p0, Lcom/android/gallery3d/ui/PhotoView;->mTransitionMode:I

    .line 897
    invoke-static {v4}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->access$2100(Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;)I

    move-result v8

    div-int/lit8 v9, v7, 0x2

    sub-int/2addr v8, v9

    invoke-virtual {v1, v8}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->startHorizontalSlide(I)V

    move v8, v11

    .line 898
    goto/16 :goto_0

    :cond_7
    move v8, v10

    .line 901
    goto/16 :goto_0
.end method

.method private switchToNextImage()V
    .locals 4

    .prologue
    .line 1020
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mScreenNails:[Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;

    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 1021
    .local v1, prevNail:Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mScreenNails:[Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;

    const/4 v3, 0x1

    aget-object v0, v2, v3

    .line 1022
    .local v0, nextNail:Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/TileImageView;->invalidateTiles()V

    .line 1023
    invoke-static {v1}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->access$2700(Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;)Lcom/android/gallery3d/ui/BitmapTexture;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->access$2700(Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;)Lcom/android/gallery3d/ui/BitmapTexture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/BitmapTexture;->recycle()V

    .line 1024
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    iget-object v2, v2, Lcom/android/gallery3d/ui/TileImageView;->mBackupImage:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->access$2702(Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;Lcom/android/gallery3d/ui/BitmapTexture;)Lcom/android/gallery3d/ui/BitmapTexture;

    .line 1025
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->access$2700(Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;)Lcom/android/gallery3d/ui/BitmapTexture;

    move-result-object v3

    iput-object v3, v2, Lcom/android/gallery3d/ui/TileImageView;->mBackupImage:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 1026
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->access$2702(Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;Lcom/android/gallery3d/ui/BitmapTexture;)Lcom/android/gallery3d/ui/BitmapTexture;

    .line 1027
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/PhotoView$Model;->next()V

    .line 1028
    return-void
.end method

.method private switchToPreviousImage()V
    .locals 4

    .prologue
    .line 1032
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mScreenNails:[Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;

    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 1033
    .local v1, prevNail:Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mScreenNails:[Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;

    const/4 v3, 0x1

    aget-object v0, v2, v3

    .line 1034
    .local v0, nextNail:Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/TileImageView;->invalidateTiles()V

    .line 1035
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->access$2700(Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;)Lcom/android/gallery3d/ui/BitmapTexture;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->access$2700(Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;)Lcom/android/gallery3d/ui/BitmapTexture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/BitmapTexture;->recycle()V

    .line 1036
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    iget-object v2, v2, Lcom/android/gallery3d/ui/TileImageView;->mBackupImage:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-static {v0, v2}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->access$2702(Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;Lcom/android/gallery3d/ui/BitmapTexture;)Lcom/android/gallery3d/ui/BitmapTexture;

    .line 1037
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->access$2700(Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;)Lcom/android/gallery3d/ui/BitmapTexture;

    move-result-object v3

    iput-object v3, v2, Lcom/android/gallery3d/ui/TileImageView;->mBackupImage:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 1038
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->access$2702(Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;Lcom/android/gallery3d/ui/BitmapTexture;)Lcom/android/gallery3d/ui/BitmapTexture;

    .line 1039
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/PhotoView$Model;->previous()V

    .line 1040
    return-void
.end method

.method private updateLoadingState()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 246
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Model;->getLevelCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Model;->getBackupImage()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/ui/SynchronizedHandler;->removeMessages(I)V

    .line 248
    iput v3, p0, Lcom/android/gallery3d/ui/PhotoView;->mLoadingState:I

    .line 258
    :cond_1
    :goto_0
    return-void

    .line 249
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Model;->isFailedToLoad()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 250
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/ui/SynchronizedHandler;->removeMessages(I)V

    .line 251
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mLoadingState:I

    goto :goto_0

    .line 252
    :cond_3
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mLoadingState:I

    if-eqz v0, :cond_1

    .line 253
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mLoadingState:I

    .line 254
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/ui/SynchronizedHandler;->removeMessages(I)V

    .line 255
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mHandler:Lcom/android/gallery3d/ui/SynchronizedHandler;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/gallery3d/ui/SynchronizedHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private updateScreenNailEntry(ILcom/android/gallery3d/ui/PhotoView$ImageData;)V
    .locals 4
    .parameter "which"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 193
    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mTransitionMode:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mTransitionMode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mScreenNails:[Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;

    aget-object v0, v1, p1

    .line 199
    .local v0, entry:Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;
    if-nez p2, :cond_2

    .line 200
    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1, v3}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->set(ZLandroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 202
    :cond_2
    const/4 v1, 0x1

    iget-object v2, p2, Lcom/android/gallery3d/ui/PhotoView$ImageData;->bitmap:Landroid/graphics/Bitmap;

    iget v3, p2, Lcom/android/gallery3d/ui/PhotoView$ImageData;->rotation:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->set(ZLandroid/graphics/Bitmap;I)V

    goto :goto_0
.end method


# virtual methods
.method public notifyImageInvalidated(I)V
    .locals 3
    .parameter "which"

    .prologue
    .line 208
    packed-switch p1, :pswitch_data_0

    .line 238
    :goto_0
    return-void

    .line 210
    :pswitch_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->getPreviousImage()Lcom/android/gallery3d/ui/PhotoView$ImageData;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->updateScreenNailEntry(ILcom/android/gallery3d/ui/PhotoView$ImageData;)V

    .line 212
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->layoutScreenNails()V

    .line 213
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->invalidate()V

    goto :goto_0

    .line 217
    :pswitch_1
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->getNextImage()Lcom/android/gallery3d/ui/PhotoView$ImageData;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->updateScreenNailEntry(ILcom/android/gallery3d/ui/PhotoView$ImageData;)V

    .line 218
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->layoutScreenNails()V

    .line 219
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->invalidate()V

    goto :goto_0

    .line 224
    :pswitch_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TileImageView;->notifyModelInvalidated()V

    .line 226
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Model;->getImageRotation()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mImageRotation:I

    .line 227
    iget v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mImageRotation:I

    div-int/lit8 v0, v0, 0x5a

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PhotoView$PositionController;

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    iget v1, v1, Lcom/android/gallery3d/ui/TileImageView;->mImageWidth:I

    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    iget v2, v2, Lcom/android/gallery3d/ui/TileImageView;->mImageHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->setImageSize(II)V

    .line 234
    :goto_1
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->updateLoadingState()V

    goto :goto_0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PhotoView$PositionController;

    iget-object v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    iget v1, v1, Lcom/android/gallery3d/ui/TileImageView;->mImageHeight:I

    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    iget v2, v2, Lcom/android/gallery3d/ui/TileImageView;->mImageWidth:I

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->setImageSize(II)V

    goto :goto_1

    .line 208
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public notifyModelInvalidated()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 261
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    if-nez v0, :cond_0

    .line 262
    invoke-direct {p0, v1, v3}, Lcom/android/gallery3d/ui/PhotoView;->updateScreenNailEntry(ILcom/android/gallery3d/ui/PhotoView$ImageData;)V

    .line 263
    invoke-direct {p0, v2, v3}, Lcom/android/gallery3d/ui/PhotoView;->updateScreenNailEntry(ILcom/android/gallery3d/ui/PhotoView$ImageData;)V

    .line 268
    :goto_0
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->layoutScreenNails()V

    .line 270
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    if-nez v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TileImageView;->notifyModelInvalidated()V

    .line 272
    iput v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mImageRotation:I

    .line 273
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PhotoView$PositionController;

    invoke-virtual {v0, v1, v1}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->setImageSize(II)V

    .line 274
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->updateLoadingState()V

    .line 278
    :goto_1
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Model;->getPreviousImage()Lcom/android/gallery3d/ui/PhotoView$ImageData;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/gallery3d/ui/PhotoView;->updateScreenNailEntry(ILcom/android/gallery3d/ui/PhotoView$ImageData;)V

    .line 266
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/PhotoView$Model;->getNextImage()Lcom/android/gallery3d/ui/PhotoView$ImageData;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/android/gallery3d/ui/PhotoView;->updateScreenNailEntry(ILcom/android/gallery3d/ui/PhotoView$ImageData;)V

    goto :goto_0

    .line 276
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/PhotoView;->notifyImageInvalidated(I)V

    goto :goto_1
.end method

.method public notifyOnNewImage()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 982
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PhotoView$PositionController;

    invoke-virtual {v0, v1, v1}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->setImageSize(II)V

    .line 983
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter "changeSize"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 291
    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v4, p2, p3, p4, p5}, Lcom/android/gallery3d/ui/TileImageView;->layout(IIII)V

    .line 292
    if-eqz p1, :cond_0

    .line 293
    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PhotoView$PositionController;

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->getHeight()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->setViewSize(II)V

    .line 294
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mScreenNails:[Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;

    .local v0, arr$:[Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 295
    .local v1, entry:Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;
    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->updateDrawingSize()V

    .line 294
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 298
    .end local v0           #arr$:[Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;
    .end local v1           #entry:Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 283
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 284
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mDownUpDetector:Lcom/android/gallery3d/ui/DownUpDetector;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/DownUpDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 285
    const/4 v0, 0x1

    return v0
.end method

.method public pause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1165
    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/TileImageView;->freeTextures()V

    .line 1166
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mScreenNails:[Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;

    .local v0, arr$:[Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 1167
    .local v1, entry:Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;
    const/4 v4, 0x0

    invoke-virtual {v1, v5, v4, v5}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->set(ZLandroid/graphics/Bitmap;I)V

    .line 1166
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1169
    .end local v1           #entry:Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;
    :cond_0
    return-void
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 19
    .parameter "canvas"

    .prologue
    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PhotoView$PositionController;

    move-object v13, v0

    .line 781
    .local v13, p:Lcom/android/gallery3d/ui/PhotoView$PositionController;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/PhotoView;->mLoadingState:I

    move v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 782
    invoke-super/range {p0 .. p1}, Lcom/android/gallery3d/ui/GLView;->render(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 786
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/PhotoView;->mTransitionMode:I

    move v4, v0

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/PhotoView;->mTransitionMode:I

    move v4, v0

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/PhotoView;->mTransitionMode:I

    move v4, v0

    const/4 v5, 0x5

    if-eq v4, v5, :cond_2

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PhotoView;->mScreenNails:[Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;

    move-object v4, v0

    const/4 v5, 0x0

    aget-object v14, v4, v5

    .line 790
    .local v14, prevNail:Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PhotoView;->mScreenNails:[Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;

    move-object v4, v0

    const/4 v5, 0x1

    aget-object v12, v4, v5

    .line 792
    .local v12, nextNail:Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;
    invoke-static {v14}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->access$1900(Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->draw(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 793
    :cond_1
    invoke-static {v12}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->access$1900(Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;->draw(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 802
    .end local v12           #nextNail:Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;
    .end local v14           #prevNail:Lcom/android/gallery3d/ui/PhotoView$ScreenNailEntry;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/PhotoView;->getWidth()I

    move-result v16

    .line 803
    .local v16, w:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/PhotoView;->getHeight()I

    move-result v10

    .line 804
    .local v10, h:I
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/PhotoView;->getImageBounds()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v17

    .line 805
    .local v17, x:I
    div-int/lit8 v18, v10, 0x2

    .line 806
    .local v18, y:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/PhotoView;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/PhotoView;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    div-int/lit8 v8, v4, 0x6

    .line 808
    .local v8, s:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/PhotoView;->mLoadingState:I

    move v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PhotoView;->mLoadingText:Lcom/android/gallery3d/ui/StringTexture;

    move-object v11, v0

    .line 810
    .local v11, m:Lcom/android/gallery3d/ui/StringTexture;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PhotoView;->mLoadingSpinner:Lcom/android/gallery3d/ui/ProgressSpinner;

    move-object v15, v0

    .line 811
    .local v15, r:Lcom/android/gallery3d/ui/ProgressSpinner;
    invoke-virtual {v15}, Lcom/android/gallery3d/ui/ProgressSpinner;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v17, v4

    invoke-virtual {v15}, Lcom/android/gallery3d/ui/ProgressSpinner;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v18, v5

    move-object v0, v15

    move-object/from16 v1, p1

    move v2, v4

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/ProgressSpinner;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 812
    invoke-virtual {v11}, Lcom/android/gallery3d/ui/StringTexture;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v17, v4

    div-int/lit8 v5, v8, 0x2

    add-int v5, v5, v18

    add-int/lit8 v5, v5, 0x5

    move-object v0, v11

    move-object/from16 v1, p1

    move v2, v4

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/StringTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 813
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/PhotoView;->invalidate()V

    .line 820
    .end local v11           #m:Lcom/android/gallery3d/ui/StringTexture;
    .end local v15           #r:Lcom/android/gallery3d/ui/ProgressSpinner;
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery3d/ui/PhotoView;->mShowVideoPlayIcon:Z

    move v4, v0

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/PhotoView;->mLoadingState:I

    move v4, v0

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/PhotoView;->mLoadingState:I

    move v4, v0

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    .line 823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PhotoView;->mVideoPlayIcon:Lcom/android/gallery3d/ui/Texture;

    move-object v4, v0

    div-int/lit8 v5, v8, 0x2

    sub-int v6, v17, v5

    div-int/lit8 v5, v8, 0x2

    sub-int v7, v18, v5

    move-object/from16 v5, p1

    move v9, v8

    invoke-interface/range {v4 .. v9}, Lcom/android/gallery3d/ui/Texture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 826
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PhotoView$PositionController;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->advanceAnimation()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/ui/PhotoView;->invalidate()V

    .line 827
    :cond_5
    return-void

    .line 814
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/PhotoView;->mLoadingState:I

    move v4, v0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/PhotoView;->mNoThumbnailText:Lcom/android/gallery3d/ui/StringTexture;

    move-object v11, v0

    .line 816
    .restart local v11       #m:Lcom/android/gallery3d/ui/StringTexture;
    invoke-virtual {v11}, Lcom/android/gallery3d/ui/StringTexture;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v17, v4

    div-int/lit8 v5, v8, 0x2

    add-int v5, v5, v18

    add-int/lit8 v5, v5, 0x5

    move-object v0, v11

    move-object/from16 v1, p1

    move v2, v4

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/StringTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;II)V

    goto :goto_0
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/TileImageView;->prepareTextures()V

    .line 1173
    return-void
.end method

.method public setModel(Lcom/android/gallery3d/ui/PhotoView$Model;)V
    .locals 1
    .parameter "model"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    if-ne v0, p1, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;

    .line 163
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/TileImageView;->setModel(Lcom/android/gallery3d/ui/TileImageView$Model;)V

    .line 164
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/PhotoView;->notifyOnNewImage()V

    goto :goto_0
.end method

.method public setOpenedItem(Lcom/android/gallery3d/data/Path;)V
    .locals 0
    .parameter "itemPath"

    .prologue
    .line 1176
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mOpenedItemPath:Lcom/android/gallery3d/data/Path;

    .line 1177
    return-void
.end method

.method public setPhotoTapListener(Lcom/android/gallery3d/ui/PhotoView$PhotoTapListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mPhotoTapListener:Lcom/android/gallery3d/ui/PhotoView$PhotoTapListener;

    .line 169
    return-void
.end method

.method public setPosition(IIF)V
    .locals 2
    .parameter "centerX"
    .parameter "centerY"
    .parameter "scale"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mTileView:Lcom/android/gallery3d/ui/TileImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/TileImageView;->setFullsizeEnabled(Z)V

    .line 187
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/ui/PhotoView;->setTileViewPosition(IIF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView;->layoutScreenNails()V

    .line 190
    :cond_0
    return-void
.end method

.method public showVideoPlayIcon(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 1180
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/PhotoView;->mShowVideoPlayIcon:Z

    .line 1181
    return-void
.end method

.method public startSlideInAnimation(I)V
    .locals 3
    .parameter "direction"

    .prologue
    .line 986
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PhotoView$PositionController;

    .line 987
    .local v0, a:Lcom/android/gallery3d/ui/PhotoView$PositionController;
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->stopAnimation()V

    .line 988
    packed-switch p1, :pswitch_data_0

    .line 999
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 990
    :pswitch_0
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mTransitionMode:I

    .line 991
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->access$1300(Lcom/android/gallery3d/ui/PhotoView$PositionController;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->startSlideInAnimation(I)V

    .line 1001
    :goto_0
    return-void

    .line 995
    :pswitch_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/gallery3d/ui/PhotoView;->mTransitionMode:I

    .line 996
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->access$1300(Lcom/android/gallery3d/ui/PhotoView$PositionController;)I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$PositionController;->startSlideInAnimation(I)V

    goto :goto_0

    .line 988
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
