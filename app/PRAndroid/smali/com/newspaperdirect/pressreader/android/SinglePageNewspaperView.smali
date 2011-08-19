.class public Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;
.super Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;
.source "SinglePageNewspaperView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$GestureListener;,
        Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$ScrollAnimation;,
        Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;
    }
.end annotation


# static fields
.field private static final ADJUST_ANIMATION_DURATION:I = 0x96

.field private static final BITMAPS_COUNT:I = 0x3

.field private static final CURRENT_BITMAP_IDX:I = 0x1

.field private static final DELIMETER_WIDTH:I = 0x4

.field private static final MIN_CLICKABLE_TITLE_HEIGHT_BASE:F = 32.0f


# instance fields
.field private final MIN_CLICKABLE_TITLE_HEIGHT:F

.field private mBitmaps:[Landroid/graphics/Bitmap;

.field private mCurrentScale:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mOriginalScale:F

.field private mRawX:F

.field private mRawY:F

.field private mX:F

.field private mY:F

.field private scaling:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1}, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;-><init>(Landroid/content/Context;)V

    .line 43
    iput v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mRawX:F

    .line 44
    iput v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mRawY:F

    .line 46
    iput v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mX:F

    .line 47
    iput v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mY:F

    .line 55
    const/high16 v0, 0x4200

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->MIN_CLICKABLE_TITLE_HEIGHT:F

    .line 56
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->initGestures()V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mRawX:F

    .line 44
    iput v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mRawY:F

    .line 46
    iput v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mX:F

    .line 47
    iput v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mY:F

    .line 61
    const/high16 v0, 0x4200

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->MIN_CLICKABLE_TITLE_HEIGHT:F

    .line 62
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->initGestures()V

    .line 63
    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)[Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->scaling:Z

    return-void
.end method

.method static synthetic access$10(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput p1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mY:F

    return-void
.end method

.method static synthetic access$11(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)F
    .locals 1
    .parameter

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->getAdjustmentX()F

    move-result v0

    return v0
.end method

.method static synthetic access$12(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)F
    .locals 1
    .parameter

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->getAdjustmentY()F

    move-result v0

    return v0
.end method

.method static synthetic access$13(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;FF)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 288
    invoke-direct {p0, p1, p2}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->scroll(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$14(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)Z
    .locals 1
    .parameter

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->adjustPosition()Z

    move-result v0

    return v0
.end method

.method static synthetic access$15(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)Landroid/view/GestureDetector;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$16(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)V
    .locals 0
    .parameter

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->initGestures()V

    return-void
.end method

.method static synthetic access$17(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)F
    .locals 1
    .parameter

    .prologue
    .line 37
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->MIN_CLICKABLE_TITLE_HEIGHT:F

    return v0
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)F
    .locals 1
    .parameter

    .prologue
    .line 46
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mX:F

    return v0
.end method

.method static synthetic access$3(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)F
    .locals 1
    .parameter

    .prologue
    .line 47
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mY:F

    return v0
.end method

.method static synthetic access$4(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)Z
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->scaling:Z

    return v0
.end method

.method static synthetic access$5(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)F
    .locals 1
    .parameter

    .prologue
    .line 50
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mCurrentScale:F

    return v0
.end method

.method static synthetic access$6(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)F
    .locals 1
    .parameter

    .prologue
    .line 49
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mOriginalScale:F

    return v0
.end method

.method static synthetic access$7(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput p1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mCurrentScale:F

    return-void
.end method

.method static synthetic access$8(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput p1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mX:F

    return-void
.end method

.method static synthetic access$9(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)Z
    .locals 1
    .parameter

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->isPortraitView()Z

    move-result v0

    return v0
.end method

.method private adjustPosition()Z
    .locals 5

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->getAdjustmentX()F

    move-result v1

    .line 313
    .local v1, dx:F
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->getAdjustmentY()F

    move-result v2

    .line 314
    .local v2, dy:F
    float-to-int v3, v1

    if-nez v3, :cond_0

    float-to-int v3, v2

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 320
    :goto_0
    return v3

    .line 315
    :cond_0
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->clearAnimation()V

    .line 316
    new-instance v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$ScrollAnimation;

    invoke-direct {v0, p0, v1, v2}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$ScrollAnimation;-><init>(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;FF)V

    .line 317
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v3, 0x96

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 318
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 319
    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 320
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private getAdjustmentX()F
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x4080

    const/4 v3, 0x0

    .line 324
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->getWidth()I

    move-result v0

    .line 325
    .local v0, w:I
    iget v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mRawX:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    iget v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mRawX:F

    .line 329
    :goto_0
    return v1

    .line 326
    :cond_0
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->isLastPage()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mRawX:F

    neg-float v1, v1

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v2

    sub-int/2addr v2, v5

    mul-int/2addr v2, v0

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mRawX:F

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v2

    sub-int/2addr v2, v5

    mul-int/2addr v2, v0

    int-to-float v2, v2

    add-float/2addr v1, v2

    goto :goto_0

    .line 327
    :cond_1
    iget v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mX:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    iget v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mX:F

    goto :goto_0

    .line 328
    :cond_2
    iget v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mX:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_3

    iget v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mX:F

    int-to-float v2, v0

    add-float/2addr v1, v2

    add-float/2addr v1, v4

    goto :goto_0

    .line 329
    :cond_3
    iget v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mX:F

    int-to-float v2, v0

    sub-float/2addr v1, v2

    sub-float/2addr v1, v4

    goto :goto_0
.end method

.method private getAdjustmentY()F
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 333
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v5

    if-nez v2, :cond_1

    :cond_0
    move v2, v4

    .line 339
    :goto_0
    return v2

    .line 334
    :cond_1
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->getPaddingTop()I

    move-result v3

    sub-int v1, v2, v3

    .line 335
    .local v1, h:I
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 336
    .local v0, bmh:I
    iget v2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mRawY:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    iget v2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mRawY:F

    goto :goto_0

    .line 337
    :cond_2
    if-le v0, v1, :cond_3

    iget v2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mRawY:F

    int-to-float v3, v0

    add-float/2addr v2, v3

    int-to-float v3, v1

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_3

    sub-int v2, v0, v1

    int-to-float v2, v2

    iget v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mRawY:F

    add-float/2addr v2, v3

    goto :goto_0

    .line 338
    :cond_3
    if-ge v0, v1, :cond_4

    iget v2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mRawY:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mRawY:F

    goto :goto_0

    :cond_4
    move v2, v4

    .line 339
    goto :goto_0
.end method

.method private getValueByRawValue(FFF)F
    .locals 2
    .parameter "rawValue"
    .parameter "a"
    .parameter "b"

    .prologue
    .line 308
    mul-float v0, p3, p1

    add-float v1, p2, p1

    div-float/2addr v0, v1

    return v0
.end method

.method private initGestures()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 343
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$GestureListener;

    invoke-direct {v2, p0, v3}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$GestureListener;-><init>(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$GestureListener;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 344
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v1, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$3;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$3;-><init>(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)V

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 394
    new-instance v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;

    invoke-direct {v0, p0, v3}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;-><init>(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$TouchEventListener;)V

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 395
    return-void
.end method

.method private isPortraitView()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 255
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private varargs loadBitmaps([Lcom/newspaperdirect/pressreader/android/core/layout/Page;)V
    .locals 8
    .parameter "pages"

    .prologue
    const/4 v7, 0x0

    .line 269
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getCurrent()Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getPagesFile()Ljava/io/File;

    move-result-object v3

    iget-boolean v4, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mHightlightArticles:Z

    const/4 v5, 0x1

    invoke-static {v3, v4, v5, p1}, Lcom/newspaperdirect/pressreader/android/core/PageBitmapLoader;->loadBitmaps(Ljava/io/File;ZI[Lcom/newspaperdirect/pressreader/android/core/layout/Page;)[Landroid/graphics/Bitmap;

    move-result-object v2

    .line 270
    .local v2, result:[Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    iput-object v2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    .line 285
    :cond_0
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->invalidate()V

    .line 286
    return-void

    .line 271
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_0

    .line 272
    aget-object v3, v2, v1

    if-nez v3, :cond_2

    .line 271
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 273
    :cond_2
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v1

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    aput-object v7, v3, v1

    .line 275
    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v4, v2, v1

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v3, v1

    .line 276
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 277
    const/4 v3, 0x0

    aput-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 279
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 280
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 281
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v4, v2, v1

    aput-object v4, v3, v1

    .line 282
    aput-object v7, v2, v1

    goto :goto_1
.end method

.method private recycleBitmaps()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 259
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 266
    :goto_0
    return-void

    .line 260
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 265
    iput-object v2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    goto :goto_0

    .line 261
    :cond_1
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    .line 260
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 262
    :cond_2
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 263
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    aput-object v2, v1, v0

    goto :goto_2
.end method

.method private scroll(FF)Z
    .locals 8
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 289
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v7

    if-nez v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    .line 304
    :goto_0
    return v3

    .line 290
    :cond_1
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 291
    .local v0, bmh:I
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->getWidth()I

    move-result v2

    .line 292
    .local v2, w:I
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->getPaddingTop()I

    move-result v4

    sub-int v1, v3, v4

    .line 293
    .local v1, h:I
    iget v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mRawX:F

    sub-float/2addr v3, p1

    iput v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mRawX:F

    .line 294
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->isFirstPage()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mRawX:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_2

    iget v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mRawX:F

    int-to-float v4, v2

    div-int/lit8 v5, v2, 0x3

    int-to-float v5, v5

    invoke-direct {p0, v3, v4, v5}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->getValueByRawValue(FFF)F

    move-result v3

    iput v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mX:F

    .line 298
    :goto_1
    iget v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mRawY:F

    sub-float/2addr v3, p2

    iput v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mRawY:F

    .line 299
    iget v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mRawY:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_4

    iget v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mRawY:F

    int-to-float v4, v1

    div-int/lit8 v5, v1, 0x3

    int-to-float v5, v5

    invoke-direct {p0, v3, v4, v5}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->getValueByRawValue(FFF)F

    move-result v3

    iput v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mY:F

    .line 303
    :goto_2
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->invalidate()V

    move v3, v7

    .line 304
    goto :goto_0

    .line 295
    :cond_2
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->isLastPage()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mRawX:F

    neg-float v3, v3

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v4}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v4

    sub-int/2addr v4, v7

    mul-int/2addr v4, v2

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 296
    iget v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mRawX:F

    neg-float v3, v3

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v4}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v4

    sub-int/2addr v4, v7

    mul-int/2addr v4, v2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    int-to-float v4, v2

    div-int/lit8 v5, v2, 0x3

    int-to-float v5, v5

    invoke-direct {p0, v3, v4, v5}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->getValueByRawValue(FFF)F

    move-result v3

    neg-float v3, v3

    iput v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mX:F

    goto :goto_1

    .line 297
    :cond_3
    iget v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mX:F

    sub-float/2addr v3, p1

    iput v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mX:F

    goto :goto_1

    .line 300
    :cond_4
    if-le v0, v1, :cond_5

    iget v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mRawY:F

    int-to-float v4, v0

    add-float/2addr v3, v4

    int-to-float v4, v1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5

    sub-int v3, v1, v0

    int-to-float v3, v3

    int-to-float v4, v1

    iget v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mRawY:F

    sub-float/2addr v4, v5

    int-to-float v5, v0

    sub-float/2addr v4, v5

    int-to-float v5, v1

    div-int/lit8 v6, v1, 0x3

    int-to-float v6, v6

    invoke-direct {p0, v4, v5, v6}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->getValueByRawValue(FFF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mY:F

    goto :goto_2

    .line 301
    :cond_5
    if-gt v0, v1, :cond_6

    iget v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mRawY:F

    neg-float v3, v3

    int-to-float v4, v1

    div-int/lit8 v5, v1, 0x3

    int-to-float v5, v5

    invoke-direct {p0, v3, v4, v5}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->getValueByRawValue(FFF)F

    move-result v3

    neg-float v3, v3

    iput v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mY:F

    goto :goto_2

    .line 302
    :cond_6
    iget v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mY:F

    sub-float/2addr v3, p2

    iput v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mY:F

    goto :goto_2
.end method


# virtual methods
.method public getPosition()Landroid/graphics/RectF;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 248
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v7

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 250
    :goto_0
    return-object v1

    .line 249
    :cond_1
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 250
    .local v0, dx:I
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mX:F

    int-to-float v3, v0

    add-float/2addr v2, v3

    iget v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mY:F

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 251
    iget v4, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mX:F

    int-to-float v5, v0

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mY:F

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    .line 250
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0
.end method

.method protected onAnimationEnd()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 100
    invoke-super {p0}, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;->onAnimationEnd()V

    .line 101
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->getWidth()I

    move-result v0

    .line 102
    .local v0, w:I
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v3

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 104
    :cond_0
    iget v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mX:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 105
    iget v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mX:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 106
    iget v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mX:F

    int-to-float v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mX:F

    .line 107
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNextPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->setCurrentPage(Lcom/newspaperdirect/pressreader/android/core/layout/Page;)V

    .line 114
    :cond_1
    :goto_0
    iput-boolean v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->processOnTouchEvents:Z

    .line 115
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->adjustPosition()Z

    .line 116
    return-void

    .line 110
    :cond_2
    iget v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mX:F

    int-to-float v2, v0

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mX:F

    .line 111
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getPrevPage()Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->setCurrentPage(Lcom/newspaperdirect/pressreader/android/core/layout/Page;)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v12, 0x1

    const/high16 v11, 0x4080

    const/4 v10, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    .line 67
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    .line 68
    .local v4, w:I
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v12

    if-nez v5, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v12

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 70
    .local v0, bw:I
    sub-int v5, v4, v0

    div-int/lit8 v1, v5, 0x2

    .line 71
    .local v1, dx:I
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 72
    .local v2, matrix:Landroid/graphics/Matrix;
    iget v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mCurrentScale:F

    iget v6, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mOriginalScale:F

    div-float v3, v5, v6

    .line 73
    .local v3, scale:F
    invoke-virtual {v2, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 74
    iget v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mX:F

    int-to-float v6, v1

    add-float/2addr v5, v6

    iget v6, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mY:F

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->getPaddingTop()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 75
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v12

    invoke-virtual {p1, v5, v2, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 76
    iget-boolean v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->scaling:Z

    if-nez v5, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->isPortraitView()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 78
    iget v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mX:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v8

    if-eqz v5, :cond_2

    .line 79
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int v5, v4, v5

    div-int/lit8 v1, v5, 0x2

    .line 80
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v8

    iget v6, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mX:F

    int-to-float v7, v4

    add-float/2addr v6, v7

    int-to-float v7, v1

    add-float/2addr v6, v7

    add-float/2addr v6, v11

    iget v7, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mY:F

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->getPaddingTop()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {p1, v5, v6, v7, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 82
    :cond_2
    iget v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mX:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v9

    if-eqz v5, :cond_0

    .line 83
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int v5, v4, v5

    div-int/lit8 v1, v5, 0x2

    .line 84
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v9

    iget v6, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mX:F

    int-to-float v7, v4

    sub-float/2addr v6, v7

    int-to-float v7, v1

    add-float/2addr v6, v7

    sub-float/2addr v6, v11

    iget v7, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mY:F

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->getPaddingTop()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {p1, v5, v6, v7, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 87
    :cond_3
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v8

    if-eqz v5, :cond_4

    .line 88
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v8

    iget v6, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mX:F

    int-to-float v7, v1

    add-float/2addr v6, v7

    int-to-float v7, v0

    add-float/2addr v6, v7

    add-float/2addr v6, v11

    iget v7, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mY:F

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->getPaddingTop()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {p1, v5, v6, v7, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 90
    :cond_4
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v9

    if-eqz v5, :cond_0

    .line 91
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 92
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v9

    iget v6, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mX:F

    int-to-float v7, v1

    add-float/2addr v6, v7

    int-to-float v7, v0

    sub-float/2addr v6, v7

    sub-float/2addr v6, v11

    iget v7, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mY:F

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->getPaddingTop()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {p1, v5, v6, v7, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public recycle()V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->recycleBitmaps()V

    .line 227
    return-void
.end method

.method public restore()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 231
    new-instance v3, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$2;

    invoke-direct {v3, p0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$2;-><init>(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)V

    .line 236
    const-wide/16 v4, 0x80

    .line 231
    invoke-virtual {p0, v3, v4, v5}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 237
    new-array v2, v7, [Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    .line 238
    .local v2, pages:[Lcom/newspaperdirect/pressreader/android/core/layout/Page;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v7, :cond_0

    .line 243
    invoke-direct {p0, v2}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->loadBitmaps([Lcom/newspaperdirect/pressreader/android/core/layout/Page;)V

    .line 244
    return-void

    .line 239
    :cond_0
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v3

    add-int/2addr v3, v0

    sub-int/2addr v3, v6

    sub-int v1, v3, v6

    .line 240
    .local v1, idx:I
    if-ltz v1, :cond_1

    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getCurrent()Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getPagesCount()I

    move-result v3

    if-lt v1, v3, :cond_2

    :cond_1
    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 238
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    :cond_2
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getIssue()Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->getPages()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    aput-object v3, v2, v0

    goto :goto_1
.end method

.method public setCurrentPage(Lcom/newspaperdirect/pressreader/android/core/layout/Page;)V
    .locals 12
    .parameter "page"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 132
    if-nez p1, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    new-instance v5, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$1;

    invoke-direct {v5, p0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$1;-><init>(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;)V

    .line 138
    const-wide/16 v6, 0x80

    .line 133
    invoke-virtual {p0, v5, v6, v7}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 139
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v5}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v5

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v6

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    if-nez v5, :cond_0

    .line 140
    :cond_2
    new-array v4, v9, [Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    .line 141
    .local v4, pages:[Lcom/newspaperdirect/pressreader/android/core/layout/Page;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-lt v2, v9, :cond_5

    .line 146
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    if-nez v5, :cond_8

    :cond_3
    invoke-direct {p0, v4}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->loadBitmaps([Lcom/newspaperdirect/pressreader/android/core/layout/Page;)V

    .line 168
    :goto_2
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    .line 169
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v5}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->setAsCurrent()V

    .line 170
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v5}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v5

    if-nez v5, :cond_d

    .line 171
    const-string v5, "SinglePageNewspaperView"

    const-string v6, "Page doesn\'t contain rect information."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :goto_3
    iput v11, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mX:F

    .line 179
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v5}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v5

    sub-int v5, v8, v5

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->getWidth()I

    move-result v6

    mul-int/2addr v5, v6

    int-to-float v5, v5

    iput v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mRawX:F

    .line 180
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v8

    if-nez v5, :cond_0

    :cond_4
    iput v11, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mY:F

    iput v11, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mRawY:F

    goto :goto_0

    .line 142
    :cond_5
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v5

    add-int/2addr v5, v2

    sub-int/2addr v5, v8

    sub-int v3, v5, v8

    .line 143
    .local v3, idx:I
    if-ltz v3, :cond_6

    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getCurrent()Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getPagesCount()I

    move-result v5

    if-lt v3, v5, :cond_7

    :cond_6
    aput-object v10, v4, v2

    .line 141
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 144
    :cond_7
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getIssue()Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->getPages()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    aput-object v5, v4, v2

    goto :goto_4

    .line 148
    .end local v3           #idx:I
    :cond_8
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v5

    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v6}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v6

    sub-int v1, v5, v6

    .line 149
    .local v1, delta:I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-lt v5, v9, :cond_9

    .line 150
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->recycleBitmaps()V

    .line 151
    invoke-direct {p0, v4}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->loadBitmaps([Lcom/newspaperdirect/pressreader/android/core/layout/Page;)V

    goto :goto_2

    .line 154
    :cond_9
    new-array v0, v9, [Landroid/graphics/Bitmap;

    .line 155
    .local v0, bitmaps:[Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    :goto_5
    if-lt v2, v9, :cond_a

    .line 163
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->recycleBitmaps()V

    .line 164
    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    .line 165
    invoke-direct {p0, v4}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->loadBitmaps([Lcom/newspaperdirect/pressreader/android/core/layout/Page;)V

    goto/16 :goto_2

    .line 156
    :cond_a
    aget-object v5, v4, v2

    if-eqz v5, :cond_b

    add-int v5, v2, v1

    if-ltz v5, :cond_b

    add-int v5, v2, v1

    if-ge v5, v9, :cond_b

    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    add-int v6, v2, v1

    aget-object v5, v5, v6

    if-nez v5, :cond_c

    :cond_b
    aput-object v10, v0, v2

    .line 155
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 158
    :cond_c
    aput-object v10, v4, v2

    .line 159
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    add-int v6, v2, v1

    aget-object v5, v5, v6

    aput-object v5, v0, v2

    .line 160
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    add-int v6, v2, v1

    aput-object v10, v5, v6

    goto :goto_6

    .line 173
    .end local v0           #bitmaps:[Landroid/graphics/Bitmap;
    .end local v1           #delta:I
    :cond_d
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v8

    if-nez v5, :cond_f

    .line 174
    :cond_e
    const-string v5, "SinglePageNewspaperView"

    const-string v6, "There was a problem loading bitmaps."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v6}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v6

    iget v6, v6, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->width:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    iput v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mCurrentScale:F

    iput v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mOriginalScale:F

    goto/16 :goto_3

    .line 177
    :cond_f
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v6}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v6

    iget v6, v6, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->width:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    iput v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mCurrentScale:F

    iput v5, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mOriginalScale:F

    goto/16 :goto_3
.end method

.method public setHighlightArticles(Z)V
    .locals 6
    .parameter "highlight"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 185
    invoke-super {p0, p1}, Lcom/newspaperdirect/pressreader/android/BaseNewspaperView;->setHighlightArticles(Z)V

    .line 186
    new-array v2, v5, [Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    .line 187
    .local v2, pages:[Lcom/newspaperdirect/pressreader/android/core/layout/Page;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v5, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->recycle()V

    .line 193
    invoke-direct {p0, v2}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->loadBitmaps([Lcom/newspaperdirect/pressreader/android/core/layout/Page;)V

    .line 194
    return-void

    .line 188
    :cond_0
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v3

    add-int/2addr v3, v0

    sub-int/2addr v3, v4

    sub-int v1, v3, v4

    .line 189
    .local v1, idx:I
    if-ltz v1, :cond_1

    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getCurrent()Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getPagesCount()I

    move-result v3

    if-lt v1, v3, :cond_2

    :cond_1
    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 187
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_2
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getIssue()Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->getPages()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    aput-object v3, v2, v0

    goto :goto_1
.end method

.method public setPaddingTop(I)V
    .locals 1
    .parameter "padding"

    .prologue
    const/4 v0, 0x0

    .line 125
    invoke-virtual {p0, v0, p1, v0, v0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->setPadding(IIII)V

    .line 127
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->invalidate()V

    .line 128
    return-void
.end method

.method public showNext()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 198
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->isLastPage()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 207
    :goto_0
    return v2

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->getWidth()I

    move-result v1

    .line 200
    .local v1, w:I
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v4

    if-eqz v2, :cond_1

    .line 201
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 202
    :cond_1
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->clearAnimation()V

    .line 203
    new-instance v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$ScrollAnimation;

    add-int/lit8 v2, v1, 0x4

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$ScrollAnimation;-><init>(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;FF)V

    .line 204
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 205
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 206
    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->startAnimation(Landroid/view/animation/Animation;)V

    move v2, v4

    .line 207
    goto :goto_0
.end method

.method public showPrev()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 212
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mCurrentPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->isFirstPage()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 221
    :goto_0
    return v2

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->getWidth()I

    move-result v1

    .line 214
    .local v1, w:I
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v4

    if-eqz v2, :cond_1

    .line 215
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 216
    :cond_1
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->clearAnimation()V

    .line 217
    new-instance v0, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$ScrollAnimation;

    neg-int v2, v1

    const/4 v3, 0x4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView$ScrollAnimation;-><init>(Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;FF)V

    .line 218
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 219
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 220
    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/SinglePageNewspaperView;->startAnimation(Landroid/view/animation/Animation;)V

    move v2, v4

    .line 221
    goto :goto_0
.end method
