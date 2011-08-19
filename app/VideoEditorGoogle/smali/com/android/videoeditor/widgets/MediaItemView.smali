.class public Lcom/android/videoeditor/widgets/MediaItemView;
.super Landroid/view/View;
.source "MediaItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/videoeditor/widgets/MediaItemView$MediaItemShadowBuilder;
    }
.end annotation


# static fields
.field private static final REASON_NEED_THUMBNAILS:I = 0x4

.field private static final REASON_PLAYBACK:I = 0x5

.field private static final REASON_PROGRESS_END:I = 0x3

.field private static final REASON_REFRESH:I = 0x2

.field private static final REASON_SCROLL_END:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MediaItemView"

.field private static mAddTransitionDrawable:Landroid/graphics/drawable/Drawable;

.field private static mEmptyFrameDrawable:Landroid/graphics/drawable/Drawable;


# instance fields
.field private mBitmaps:[Landroid/graphics/Bitmap;

.field private mEnd:I

.field private mEndOffset:I

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

.field private mIsPlaying:Z

.field private mIsScrolling:Z

.field private mIsTrimming:Z

.field private mLeftState:[I

.field private mProgress:I

.field private final mProgressDestRect:Landroid/graphics/Rect;

.field private mProjectPath:Ljava/lang/String;

.field private mRequestedCount:I

.field private mRequestedEndMs:J

.field private mRequestedEndOffset:I

.field private mRequestedStartMs:J

.field private mRequestedStartOffset:I

.field private mRightState:[I

.field private mScreenWidth:I

.field private final mScrollListener:Lcom/android/videoeditor/widgets/ScrollViewListener;

.field private mScrollX:I

.field private mScrollingX:I

.field private mStart:I

.field private mStartOffset:I

.field private mThumbnailHeight:I

.field private mThumbnailWidth:I

.field private mWaitForThumbnailsAfterScroll:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 245
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/videoeditor/widgets/MediaItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 246
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 238
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/videoeditor/widgets/MediaItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 239
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const-wide/16 v9, -0x1

    .line 123
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 126
    new-instance v4, Landroid/view/GestureDetector;

    new-instance v5, Lcom/android/videoeditor/widgets/MediaItemView$1;

    invoke-direct {v5, p0}, Lcom/android/videoeditor/widgets/MediaItemView$1;-><init>(Lcom/android/videoeditor/widgets/MediaItemView;)V

    invoke-direct {v4, p1, v5}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v4, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 170
    new-instance v4, Lcom/android/videoeditor/widgets/MediaItemView$2;

    invoke-direct {v4, p0}, Lcom/android/videoeditor/widgets/MediaItemView$2;-><init>(Lcom/android/videoeditor/widgets/MediaItemView;)V

    iput-object v4, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mScrollListener:Lcom/android/videoeditor/widgets/ScrollViewListener;

    .line 201
    invoke-static {p1}, Lcom/android/videoeditor/widgets/ProgressBar;->getProgressBar(Landroid/content/Context;)Lcom/android/videoeditor/widgets/ProgressBar;

    move-result-object v3

    .line 202
    .local v3, progressBar:Lcom/android/videoeditor/widgets/ProgressBar;
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f07

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070004

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v1, v4

    .line 204
    .local v1, layoutHeight:I
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/videoeditor/widgets/ProgressBar;->getHeight()I

    move-result v6

    sub-int v6, v1, v6

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingBottom()I

    move-result v8

    sub-int v8, v1, v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mProgressDestRect:Landroid/graphics/Rect;

    .line 209
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mProgress:I

    .line 211
    sget-object v4, Lcom/android/videoeditor/widgets/MediaItemView;->mAddTransitionDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Lcom/android/videoeditor/widgets/MediaItemView;->mAddTransitionDrawable:Landroid/graphics/drawable/Drawable;

    .line 216
    :cond_0
    sget-object v4, Lcom/android/videoeditor/widgets/MediaItemView;->mEmptyFrameDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    .line 217
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020068

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Lcom/android/videoeditor/widgets/MediaItemView;->mEmptyFrameDrawable:Landroid/graphics/drawable/Drawable;

    .line 221
    :cond_1
    const-string v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 223
    .local v0, display:Landroid/view/Display;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 224
    .local v2, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 225
    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mScreenWidth:I

    .line 227
    iput-wide v9, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mRequestedStartMs:J

    .line 228
    iput-wide v9, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mRequestedEndMs:J

    .line 230
    sget-object v4, Landroid/view/View;->EMPTY_STATE_SET:[I

    iput-object v4, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mLeftState:[I

    .line 231
    sget-object v4, Landroid/view/View;->EMPTY_STATE_SET:[I

    iput-object v4, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mRightState:[I

    .line 232
    return-void
.end method

.method static synthetic access$000(Lcom/android/videoeditor/widgets/MediaItemView;)[Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mBitmaps:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/videoeditor/widgets/MediaItemView;)Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mGestureListener:Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/videoeditor/widgets/MediaItemView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->hasAddTransition()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/android/videoeditor/widgets/MediaItemView;->mAddTransitionDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/videoeditor/widgets/MediaItemView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mIsScrolling:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/videoeditor/widgets/MediaItemView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mScrollingX:I

    return p1
.end method

.method static synthetic access$602(Lcom/android/videoeditor/widgets/MediaItemView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mScrollX:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/videoeditor/widgets/MediaItemView;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/MediaItemView;->requestThumbnails(I)Z

    move-result v0

    return v0
.end method

.method private drawAddTransitions(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 544
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->hasAddTransition()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 545
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 546
    .local v0, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v1

    if-nez v1, :cond_0

    .line 547
    sget-object v1, Lcom/android/videoeditor/widgets/MediaItemView;->mAddTransitionDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mLeftState:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 548
    sget-object v1, Lcom/android/videoeditor/widgets/MediaItemView;->mAddTransitionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingTop()I

    move-result v3

    sget-object v4, Lcom/android/videoeditor/widgets/MediaItemView;->mAddTransitionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingTop()I

    move-result v5

    sget-object v6, Lcom/android/videoeditor/widgets/MediaItemView;->mAddTransitionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 551
    sget-object v1, Lcom/android/videoeditor/widgets/MediaItemView;->mAddTransitionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 554
    :cond_0
    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v1

    if-nez v1, :cond_1

    .line 555
    sget-object v1, Lcom/android/videoeditor/widgets/MediaItemView;->mAddTransitionDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mRightState:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 556
    sget-object v1, Lcom/android/videoeditor/widgets/MediaItemView;->mAddTransitionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    sget-object v3, Lcom/android/videoeditor/widgets/MediaItemView;->mAddTransitionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingTop()I

    move-result v5

    sget-object v6, Lcom/android/videoeditor/widgets/MediaItemView;->mAddTransitionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 561
    sget-object v1, Lcom/android/videoeditor/widgets/MediaItemView;->mAddTransitionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 564
    .end local v0           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_1
    return-void
.end method

.method private drawThumbnails(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mScrollingX:I

    sub-int v4, v5, v6

    .line 474
    .local v4, start:I
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mScrollingX:I

    sub-int v1, v5, v6

    .line 476
    .local v1, end:I
    iget v5, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mScreenWidth:I

    if-ge v4, v5, :cond_0

    if-ltz v1, :cond_0

    if-ne v4, v1, :cond_1

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    iget v5, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mScreenWidth:I

    if-le v1, v5, :cond_2

    .line 482
    iget v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mScreenWidth:I

    .line 486
    :cond_2
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingLeft()I

    move-result v5

    sub-int v5, v4, v5

    sub-int/2addr v1, v5

    .line 487
    if-gez v4, :cond_6

    .line 488
    neg-int v4, v4

    .line 489
    iget v5, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mThumbnailWidth:I

    rem-int v2, v4, v5

    .line 490
    .local v2, off:I
    if-lez v2, :cond_3

    .line 491
    sub-int v5, v4, v2

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingLeft()I

    move-result v6

    add-int v4, v5, v6

    .line 495
    :cond_3
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingLeft()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 496
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingLeft()I

    move-result v4

    .line 502
    .end local v2           #off:I
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingTop()I

    move-result v3

    .line 504
    .local v3, paddingTop:I
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p1, v5, v3, v6, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 507
    iget-object v5, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mBitmaps:[Landroid/graphics/Bitmap;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mBitmaps:[Landroid/graphics/Bitmap;

    array-length v5, v5

    if-nez v5, :cond_7

    .line 508
    :cond_5
    :goto_2
    if-ge v4, v1, :cond_9

    .line 510
    sget-object v5, Lcom/android/videoeditor/widgets/MediaItemView;->mEmptyFrameDrawable:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mThumbnailWidth:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mThumbnailHeight:I

    add-int/2addr v7, v3

    invoke-virtual {v5, v4, v3, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 512
    sget-object v5, Lcom/android/videoeditor/widgets/MediaItemView;->mEmptyFrameDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 513
    iget v5, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mThumbnailWidth:I

    add-int/2addr v4, v5

    goto :goto_2

    .line 499
    .end local v3           #paddingTop:I
    :cond_6
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingLeft()I

    move-result v4

    goto :goto_1

    .line 517
    .restart local v3       #paddingTop:I
    :cond_7
    :goto_3
    if-ge v4, v1, :cond_9

    .line 518
    iget v5, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mStartOffset:I

    if-lt v4, v5, :cond_8

    iget v5, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mEndOffset:I

    if-ge v4, v5, :cond_8

    .line 519
    iget-object v5, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mBitmaps:[Landroid/graphics/Bitmap;

    iget v6, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mStartOffset:I

    sub-int v6, v4, v6

    iget v7, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mThumbnailWidth:I

    div-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mBitmaps:[Landroid/graphics/Bitmap;

    array-length v7, v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    aget-object v0, v5, v6

    .line 521
    .local v0, bitmap:Landroid/graphics/Bitmap;
    int-to-float v5, v4

    int-to-float v6, v3

    const/4 v7, 0x0

    invoke-virtual {p1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 529
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_4
    iget v5, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mThumbnailWidth:I

    add-int/2addr v4, v5

    goto :goto_3

    .line 524
    :cond_8
    sget-object v5, Lcom/android/videoeditor/widgets/MediaItemView;->mEmptyFrameDrawable:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mThumbnailWidth:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mThumbnailHeight:I

    add-int/2addr v7, v3

    invoke-virtual {v5, v4, v3, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 526
    sget-object v5, Lcom/android/videoeditor/widgets/MediaItemView;->mEmptyFrameDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4

    .line 533
    :cond_9
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 534
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/MediaItemView;->drawAddTransitions(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method private hasAddTransition()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 570
    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mIsTrimming:Z

    if-eqz v0, :cond_0

    move v0, v2

    .line 574
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    sget-object v1, Lcom/android/videoeditor/widgets/MediaItemView;->mAddTransitionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private releaseBitmaps()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 780
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mBitmaps:[Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 781
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mBitmaps:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 782
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 781
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 785
    :cond_0
    iput v2, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mStartOffset:I

    .line 786
    iput v2, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mEndOffset:I

    .line 788
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method private releaseBitmapsAndClear()V
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 796
    const-string v2, "MediaItemView"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 797
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 798
    .local v1, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    const-string v2, "MediaItemView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseBitmapsAndClear: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mRequestedStartMs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mRequestedEndMs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms, between: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mStartOffset:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mEndOffset:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    .end local v1           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_0
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mBitmaps:[Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 805
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mBitmaps:[Landroid/graphics/Bitmap;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 806
    iget-object v2, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 805
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 809
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mBitmaps:[Landroid/graphics/Bitmap;

    .line 811
    iput v6, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mStartOffset:I

    .line 812
    iput v6, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mEndOffset:I

    .line 815
    .end local v0           #i:I
    :cond_2
    iput-wide v8, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mRequestedStartMs:J

    .line 816
    iput-wide v8, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mRequestedEndMs:J

    .line 817
    iput v7, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mRequestedCount:I

    .line 818
    iput v6, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mRequestedStartOffset:I

    .line 819
    iput v6, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mRequestedEndOffset:I

    .line 821
    iput v7, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mStart:I

    .line 822
    iput v7, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mEnd:I

    .line 824
    iput-boolean v7, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mWaitForThumbnailsAfterScroll:Z

    .line 825
    return-void
.end method

.method private requestThumbnails(I)Z
    .locals 23
    .parameter "reason"

    .prologue
    .line 648
    const/4 v3, 0x5

    move/from16 v0, p1

    move v1, v3

    if-ne v0, v1, :cond_2

    .line 649
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/MediaItemView;->mScrollingX:I

    move v4, v0

    sub-int v20, v3, v4

    .line 650
    .local v20, start:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getRight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/MediaItemView;->mScrollingX:I

    move v4, v0

    sub-int v15, v3, v4

    .line 656
    .local v15, end:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/MediaItemView;->mScreenWidth:I

    move v3, v0

    move/from16 v0, v20

    move v1, v3

    if-ge v0, v1, :cond_0

    if-ltz v15, :cond_0

    move/from16 v0, v20

    move v1, v15

    if-ne v0, v1, :cond_3

    .line 657
    :cond_0
    const-string v3, "MediaItemView"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 658
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getTag()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 659
    .local v17, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    const-string v3, "MediaItemView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MediaItem view is off screen: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    .end local v17           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaItemView;->releaseBitmapsAndClear()V

    .line 664
    const/4 v3, 0x0

    .line 773
    :goto_1
    return v3

    .line 652
    .end local v15           #end:I
    .end local v20           #start:I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/MediaItemView;->mScrollX:I

    move v4, v0

    sub-int v20, v3, v4

    .line 653
    .restart local v20       #start:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getRight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/MediaItemView;->mScrollX:I

    move v4, v0

    sub-int v15, v3, v4

    .restart local v15       #end:I
    goto :goto_0

    .line 668
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/MediaItemView;->mScreenWidth:I

    move v3, v0

    if-le v15, v3, :cond_4

    .line 669
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/MediaItemView;->mScreenWidth:I

    move v15, v0

    .line 673
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingLeft()I

    move-result v3

    sub-int v3, v20, v3

    sub-int/2addr v15, v3

    .line 674
    if-gez v20, :cond_9

    .line 675
    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    .line 680
    :goto_2
    const/16 v19, 0x0

    .line 681
    .local v19, result:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/MediaItemView;->mStart:I

    move v3, v0

    move/from16 v0, v20

    move v1, v3

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/MediaItemView;->mEnd:I

    move v3, v0

    if-eq v3, v15, :cond_11

    .line 683
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getTag()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 684
    .restart local v17       #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual/range {v17 .. v17}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppTimelineDuration()J

    move-result-wide v13

    .line 685
    .local v13, durationMs:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingRight()I

    move-result v4

    sub-int v22, v3, v4

    .line 690
    .local v22, viewWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/MediaItemView;->mThumbnailWidth:I

    move v3, v0

    rem-int v18, v20, v3

    .line 692
    .local v18, off:I
    if-lez v18, :cond_a

    .line 693
    sub-int v3, v20, v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingLeft()I

    move-result v4

    add-int v21, v3, v4

    .line 697
    .local v21, startOffset:I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingLeft()I

    move-result v3

    move/from16 v0, v21

    move v1, v3

    if-gt v0, v1, :cond_b

    .line 698
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingLeft()I

    move-result v21

    .line 699
    invoke-virtual/range {v17 .. v17}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryBeginTime()J

    move-result-wide v8

    .line 707
    .local v8, startMs:J
    :goto_4
    move/from16 v16, v15

    .line 708
    .local v16, endOffset:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    move/from16 v0, v16

    move v1, v3

    if-le v0, v1, :cond_c

    .line 709
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingRight()I

    move-result v4

    sub-int v16, v3, v4

    .line 710
    invoke-virtual/range {v17 .. v17}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryEndTime()J

    move-result-wide v10

    .line 717
    .local v10, endMs:J
    :goto_5
    move/from16 v0, v21

    move/from16 v1, v16

    if-ge v0, v1, :cond_10

    .line 719
    sub-int v3, v16, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/MediaItemView;->mThumbnailWidth:I

    move v4, v0

    div-int/2addr v3, v4

    add-int/lit8 v12, v3, 0x1

    .line 721
    .local v12, count:I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/videoeditor/widgets/MediaItemView;->mRequestedStartMs:J

    move-wide v3, v0

    cmp-long v3, v8, v3

    if-ltz v3, :cond_d

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/videoeditor/widgets/MediaItemView;->mRequestedEndMs:J

    move-wide v3, v0

    cmp-long v3, v10, v3

    if-gtz v3, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/MediaItemView;->mRequestedCount:I

    move v3, v0

    if-gt v12, v3, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/MediaItemView;->mRequestedStartOffset:I

    move v3, v0

    move/from16 v0, v21

    move v1, v3

    if-lt v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/MediaItemView;->mRequestedEndOffset:I

    move v3, v0

    move/from16 v0, v16

    move v1, v3

    if-gt v0, v1, :cond_d

    .line 724
    const-string v3, "MediaItemView"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 725
    const-string v3, "MediaItemView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inclusive new from: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms, count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", rendered between: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", old: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/videoeditor/widgets/MediaItemView;->mRequestedStartMs:J

    move-wide v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/videoeditor/widgets/MediaItemView;->mRequestedEndMs:J

    move-wide v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms, count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/MediaItemView;->mRequestedCount:I

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", rendered between: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/MediaItemView;->mRequestedStartOffset:I

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/MediaItemView;->mRequestedEndOffset:I

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/MediaItemView;->mBitmaps:[Landroid/graphics/Bitmap;

    move-object v3, v0

    if-eqz v3, :cond_7

    .line 736
    const/16 v19, 0x1

    .line 767
    .end local v12           #count:I
    :cond_7
    :goto_6
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/videoeditor/widgets/MediaItemView;->mStart:I

    .line 768
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/videoeditor/widgets/MediaItemView;->mEnd:I

    .end local v8           #startMs:J
    .end local v10           #endMs:J
    .end local v13           #durationMs:J
    .end local v16           #endOffset:I
    .end local v17           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v18           #off:I
    .end local v21           #startOffset:I
    .end local v22           #viewWidth:I
    :cond_8
    :goto_7
    move/from16 v3, v19

    .line 773
    goto/16 :goto_1

    .line 677
    .end local v19           #result:Z
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingLeft()I

    move-result v20

    goto/16 :goto_2

    .line 695
    .restart local v13       #durationMs:J
    .restart local v17       #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    .restart local v18       #off:I
    .restart local v19       #result:Z
    .restart local v22       #viewWidth:I
    :cond_a
    move/from16 v21, v20

    .restart local v21       #startOffset:I
    goto/16 :goto_3

    .line 701
    :cond_b
    invoke-virtual/range {v17 .. v17}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryBeginTime()J

    move-result-wide v3

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide v5, v0

    mul-long/2addr v5, v13

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide v7, v0

    div-long/2addr v5, v7

    add-long v8, v3, v5

    .restart local v8       #startMs:J
    goto/16 :goto_4

    .line 712
    .restart local v16       #endOffset:I
    :cond_c
    invoke-virtual/range {v17 .. v17}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryBeginTime()J

    move-result-wide v3

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide v5, v0

    mul-long/2addr v5, v13

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide v10, v0

    div-long/2addr v5, v10

    add-long/2addr v3, v5

    invoke-virtual/range {v17 .. v17}, Lcom/android/videoeditor/service/MovieMediaItem;->getAppBoundaryEndTime()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .restart local v10       #endMs:J
    goto/16 :goto_5

    .line 738
    .restart local v12       #count:I
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/videoeditor/widgets/MediaItemView;->mIsPlaying:Z

    move v3, v0

    if-nez v3, :cond_7

    .line 741
    const/4 v3, 0x1

    move/from16 v0, p1

    move v1, v3

    if-ne v0, v1, :cond_f

    const/4 v3, 0x1

    :goto_8
    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/videoeditor/widgets/MediaItemView;->mWaitForThumbnailsAfterScroll:Z

    .line 742
    const-string v3, "MediaItemView"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 743
    const-string v3, "MediaItemView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Request thumbnails: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " thumbnails from: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms, rendered between: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", wait for scroll: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/videoeditor/widgets/MediaItemView;->mWaitForThumbnailsAfterScroll:Z

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/MediaItemView;->mProjectPath:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/MediaItemView;->mThumbnailWidth:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/videoeditor/widgets/MediaItemView;->mThumbnailHeight:I

    move v7, v0

    invoke-static/range {v3 .. v12}, Lcom/android/videoeditor/service/ApiService;->getMediaItemThumbnails(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIJJI)V

    .line 754
    move-wide v0, v8

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/videoeditor/widgets/MediaItemView;->mRequestedStartMs:J

    .line 755
    move-wide v0, v10

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/videoeditor/widgets/MediaItemView;->mRequestedEndMs:J

    .line 756
    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/videoeditor/widgets/MediaItemView;->mRequestedCount:I

    .line 757
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/videoeditor/widgets/MediaItemView;->mRequestedStartOffset:I

    .line 758
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/videoeditor/widgets/MediaItemView;->mRequestedEndOffset:I

    goto/16 :goto_6

    .line 741
    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_8

    .line 761
    .end local v12           #count:I
    :cond_10
    const-string v3, "MediaItemView"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 762
    const-string v3, "MediaItemView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View is too small for thumbnails: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", view width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 769
    .end local v8           #startMs:J
    .end local v10           #endMs:J
    .end local v13           #durationMs:J
    .end local v16           #endOffset:I
    .end local v17           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    .end local v18           #off:I
    .end local v21           #startOffset:I
    .end local v22           #viewWidth:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/videoeditor/widgets/MediaItemView;->mBitmaps:[Landroid/graphics/Bitmap;

    move-object v3, v0

    if-eqz v3, :cond_8

    .line 770
    const/16 v19, 0x1

    goto/16 :goto_7
.end method


# virtual methods
.method public getShadowBuilder()Landroid/view/View$DragShadowBuilder;
    .locals 1

    .prologue
    .line 277
    new-instance v0, Lcom/android/videoeditor/widgets/MediaItemView$MediaItemShadowBuilder;

    invoke-direct {v0, p0, p0}, Lcom/android/videoeditor/widgets/MediaItemView$MediaItemShadowBuilder;-><init>(Lcom/android/videoeditor/widgets/MediaItemView;Landroid/view/View;)V

    return-object v0
.end method

.method public getShadowHeight()I
    .locals 1

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getShadowWidth()I
    .locals 5

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingBottom()I

    move-result v4

    sub-int v1, v3, v4

    .line 285
    .local v1, thumbnailHeight:I
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 286
    .local v0, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getWidth()I

    move-result v3

    mul-int/2addr v3, v1

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getHeight()I

    move-result v4

    div-int v2, v3, v4

    .line 288
    .local v2, thumbnailWidth:I
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    return v3
.end method

.method public isInProgress()Z
    .locals 1

    .prologue
    .line 354
    iget v0, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mProgress:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    .line 256
    .local v0, scrollView:Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;
    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->getScrollX()I

    move-result v1

    iput v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mScrollX:I

    iput v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mScrollingX:I

    .line 257
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mScrollListener:Lcom/android/videoeditor/widgets/ScrollViewListener;

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->addScrollListener(Lcom/android/videoeditor/widgets/ScrollViewListener;)V

    .line 258
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    .line 267
    .local v0, scrollView:Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mScrollListener:Lcom/android/videoeditor/widgets/ScrollViewListener;

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->removeScrollListener(Lcom/android/videoeditor/widgets/ScrollViewListener;)V

    .line 270
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->releaseBitmaps()V

    .line 271
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 433
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 435
    iget v0, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mProgress:I

    if-ltz v0, :cond_1

    .line 436
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/videoeditor/widgets/ProgressBar;->getProgressBar(Landroid/content/Context;)Lcom/android/videoeditor/widgets/ProgressBar;

    move-result-object v0

    iget v2, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mProgress:I

    iget-object v3, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mProgressDestRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingRight()I

    move-result v5

    sub-int v5, v1, v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/videoeditor/widgets/ProgressBar;->draw(Landroid/graphics/Canvas;ILandroid/graphics/Rect;II)V

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mIsPlaying:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mIsTrimming:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mIsScrolling:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mWaitForThumbnailsAfterScroll:Z

    if-eqz v0, :cond_3

    .line 439
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/MediaItemView;->drawThumbnails(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 440
    :cond_3
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mBitmaps:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 441
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingTop()I

    move-result v8

    .line 443
    .local v8, paddingTop:I
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1, v0, v8, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 447
    iget v7, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mStartOffset:I

    .line 448
    .local v7, offsetX:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mBitmaps:[Landroid/graphics/Bitmap;

    array-length v0, v0

    if-ge v6, v0, :cond_4

    .line 449
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v6

    int-to-float v1, v7

    int-to-float v2, v8

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 450
    iget-object v0, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/2addr v7, v0

    .line 448
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 453
    :cond_4
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/MediaItemView;->drawAddTransitions(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 457
    .end local v6           #i:I
    .end local v7           #offsetX:I
    .end local v8           #paddingTop:I
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/MediaItemView;->drawThumbnails(Landroid/graphics/Canvas;)V

    .line 459
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/videoeditor/widgets/MediaItemView;->requestThumbnails(I)Z

    .line 461
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    invoke-direct {p0, p1}, Lcom/android/videoeditor/widgets/MediaItemView;->drawAddTransitions(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onLayoutPerformed(II)V
    .locals 3
    .parameter "oldLeft"
    .parameter "oldRight"

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 321
    .local v0, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mThumbnailHeight:I

    .line 322
    iget v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mThumbnailHeight:I

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getHeight()I

    move-result v2

    div-int/2addr v1, v2

    iput v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mThumbnailWidth:I

    .line 324
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->releaseBitmapsAndClear()V

    .line 326
    iget-boolean v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mIsScrolling:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mIsTrimming:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mProgress:I

    if-gez v1, :cond_0

    .line 327
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/videoeditor/widgets/MediaItemView;->requestThumbnails(I)Z

    .line 329
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    .line 584
    iget-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 585
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 587
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 636
    :goto_0
    :pswitch_0
    const/4 v1, 0x1

    return v1

    .line 589
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->hasAddTransition()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 590
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 591
    .local v0, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sget-object v2, Lcom/android/videoeditor/widgets/MediaItemView;->mAddTransitionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 593
    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getBeginTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v1

    if-nez v1, :cond_0

    .line 594
    sget-object v1, Landroid/view/View;->PRESSED_WINDOW_FOCUSED_STATE_SET:[I

    iput-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mLeftState:[I

    .line 595
    sget-object v1, Landroid/view/View;->EMPTY_STATE_SET:[I

    iput-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mRightState:[I

    .line 618
    .end local v0           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :goto_1
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->invalidate()V

    goto :goto_0

    .line 597
    .restart local v0       #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_0
    sget-object v1, Landroid/view/View;->EMPTY_STATE_SET:[I

    iput-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mRightState:[I

    .line 598
    sget-object v1, Landroid/view/View;->EMPTY_STATE_SET:[I

    iput-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mLeftState:[I

    goto :goto_1

    .line 600
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    sget-object v3, Lcom/android/videoeditor/widgets/MediaItemView;->mAddTransitionDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3

    .line 602
    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getEndTransition()Lcom/android/videoeditor/service/MovieTransition;

    move-result-object v1

    if-nez v1, :cond_2

    .line 603
    sget-object v1, Landroid/view/View;->PRESSED_WINDOW_FOCUSED_STATE_SET:[I

    iput-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mRightState:[I

    .line 604
    sget-object v1, Landroid/view/View;->EMPTY_STATE_SET:[I

    iput-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mLeftState:[I

    goto :goto_1

    .line 606
    :cond_2
    sget-object v1, Landroid/view/View;->EMPTY_STATE_SET:[I

    iput-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mRightState:[I

    .line 607
    sget-object v1, Landroid/view/View;->EMPTY_STATE_SET:[I

    iput-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mLeftState:[I

    goto :goto_1

    .line 610
    :cond_3
    sget-object v1, Landroid/view/View;->EMPTY_STATE_SET:[I

    iput-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mRightState:[I

    .line 611
    sget-object v1, Landroid/view/View;->EMPTY_STATE_SET:[I

    iput-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mLeftState:[I

    goto :goto_1

    .line 614
    .end local v0           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_4
    sget-object v1, Landroid/view/View;->EMPTY_STATE_SET:[I

    iput-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mRightState:[I

    .line 615
    sget-object v1, Landroid/view/View;->EMPTY_STATE_SET:[I

    iput-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mLeftState:[I

    goto :goto_1

    .line 624
    :pswitch_2
    sget-object v1, Landroid/view/View;->EMPTY_STATE_SET:[I

    iput-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mRightState:[I

    .line 625
    sget-object v1, Landroid/view/View;->EMPTY_STATE_SET:[I

    iput-object v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mLeftState:[I

    .line 627
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->invalidate()V

    goto/16 :goto_0

    .line 587
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setBitmaps([Landroid/graphics/Bitmap;JJ)Z
    .locals 6
    .parameter "bitmaps"
    .parameter "startMs"
    .parameter "endMs"

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    .line 391
    iget v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mProgress:I

    if-ltz v1, :cond_1

    .line 392
    const-string v1, "MediaItemView"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    const-string v1, "MediaItemView"

    const-string v2, "Ignore thumbnails: progress is displayed"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_0
    iput-boolean v5, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mWaitForThumbnailsAfterScroll:Z

    move v1, v5

    .line 425
    :goto_0
    return v1

    .line 398
    :cond_1
    iget-wide v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mRequestedStartMs:J

    cmp-long v1, p2, v1

    if-nez v1, :cond_2

    iget-wide v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mRequestedEndMs:J

    cmp-long v1, p4, v1

    if-eqz v1, :cond_4

    .line 400
    :cond_2
    const-string v1, "MediaItemView"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 401
    const-string v1, "MediaItemView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignore thumbnails: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms, have: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mRequestedStartMs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mRequestedEndMs:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v1, v5

    .line 405
    goto :goto_0

    .line 409
    :cond_4
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->releaseBitmaps()V

    .line 411
    iput-boolean v5, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mWaitForThumbnailsAfterScroll:Z

    .line 413
    iget v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mRequestedStartOffset:I

    iput v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mStartOffset:I

    .line 414
    iget v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mRequestedEndOffset:I

    iput v1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mEndOffset:I

    .line 415
    const-string v1, "MediaItemView"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 416
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/service/MovieMediaItem;

    .line 417
    .local v0, mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    const-string v1, "MediaItemView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using thumbnails: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms, between: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mStartOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mEndOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", thumbnail width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/videoeditor/service/MovieMediaItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    .end local v0           #mediaItem:Lcom/android/videoeditor/service/MovieMediaItem;
    :cond_5
    iput-object p1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mBitmaps:[Landroid/graphics/Bitmap;

    .line 423
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->invalidate()V

    .line 425
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public setGestureListener(Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mGestureListener:Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

    .line 310
    return-void
.end method

.method public setPlaybackMode(Z)V
    .locals 0
    .parameter "playback"

    .prologue
    .line 378
    iput-boolean p1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mIsPlaying:Z

    .line 379
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 335
    if-nez p1, :cond_0

    .line 336
    iput p1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mProgress:I

    .line 338
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->releaseBitmapsAndClear()V

    .line 347
    :goto_0
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->invalidate()V

    .line 348
    return-void

    .line 339
    :cond_0
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    .line 341
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/videoeditor/widgets/MediaItemView;->requestThumbnails(I)Z

    .line 342
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mProgress:I

    goto :goto_0

    .line 344
    :cond_1
    iput p1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mProgress:I

    goto :goto_0
.end method

.method public setProjectPath(Ljava/lang/String;)V
    .locals 0
    .parameter "projectPath"

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mProjectPath:Ljava/lang/String;

    .line 303
    return-void
.end method

.method public setTrimMode(Landroid/view/View;Z)V
    .locals 0
    .parameter "trimmingView"
    .parameter "trimming"

    .prologue
    .line 364
    iput-boolean p2, p0, Lcom/android/videoeditor/widgets/MediaItemView;->mIsTrimming:Z

    .line 366
    if-ne p1, p0, :cond_0

    .line 368
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/MediaItemView;->invalidate()V

    .line 370
    :cond_0
    return-void
.end method
