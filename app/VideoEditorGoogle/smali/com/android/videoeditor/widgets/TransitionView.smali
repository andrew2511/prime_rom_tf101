.class public Lcom/android/videoeditor/widgets/TransitionView;
.super Landroid/widget/ImageView;
.source "TransitionView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TransitionView"


# instance fields
.field private mBitmaps:[Landroid/graphics/Bitmap;

.field private mGestureListener:Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

.field private mIsPlaying:Z

.field private mIsScrolling:Z

.field private mProgress:I

.field private final mProgressDestRect:Landroid/graphics/Rect;

.field private mProjectPath:Ljava/lang/String;

.field private mScreenWidth:I

.field private final mScrollListener:Lcom/android/videoeditor/widgets/ScrollViewListener;

.field private mScrollX:I

.field private final mSeparatorPaint:Landroid/graphics/Paint;

.field private final mSimpleGestureDetector:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 159
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/videoeditor/widgets/TransitionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 160
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/videoeditor/widgets/TransitionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v10, 0x4000

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    new-instance v5, Landroid/view/GestureDetector;

    new-instance v6, Lcom/android/videoeditor/widgets/TransitionView$1;

    invoke-direct {v6, p0}, Lcom/android/videoeditor/widgets/TransitionView$1;-><init>(Lcom/android/videoeditor/widgets/TransitionView;)V

    invoke-direct {v5, p1, v6}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v5, p0, Lcom/android/videoeditor/widgets/TransitionView;->mSimpleGestureDetector:Landroid/view/GestureDetector;

    .line 94
    new-instance v5, Lcom/android/videoeditor/widgets/TransitionView$2;

    invoke-direct {v5, p0}, Lcom/android/videoeditor/widgets/TransitionView$2;-><init>(Lcom/android/videoeditor/widgets/TransitionView;)V

    iput-object v5, p0, Lcom/android/videoeditor/widgets/TransitionView;->mScrollListener:Lcom/android/videoeditor/widgets/ScrollViewListener;

    .line 122
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 124
    .local v4, resources:Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/android/videoeditor/widgets/ProgressBar;->getProgressBar(Landroid/content/Context;)Lcom/android/videoeditor/widgets/ProgressBar;

    move-result-object v3

    .line 125
    .local v3, progressBar:Lcom/android/videoeditor/widgets/ProgressBar;
    const/high16 v5, 0x7f07

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    const v6, 0x7f070004

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    sub-float/2addr v5, v6

    const v6, 0x7f070014

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    mul-float/2addr v6, v10

    sub-float/2addr v5, v6

    float-to-int v1, v5

    .line 128
    .local v1, layoutHeight:I
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getPaddingLeft()I

    move-result v6

    invoke-virtual {v3}, Lcom/android/videoeditor/widgets/ProgressBar;->getHeight()I

    move-result v7

    sub-int v7, v1, v7

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getPaddingBottom()I

    move-result v9

    sub-int v9, v1, v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lcom/android/videoeditor/widgets/TransitionView;->mProgressDestRect:Landroid/graphics/Rect;

    .line 133
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/videoeditor/widgets/TransitionView;->mProgress:I

    .line 136
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 138
    .local v0, display:Landroid/view/Display;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 139
    .local v2, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 140
    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v5, p0, Lcom/android/videoeditor/widgets/TransitionView;->mScreenWidth:I

    .line 143
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/android/videoeditor/widgets/TransitionView;->mSeparatorPaint:Landroid/graphics/Paint;

    .line 144
    iget-object v5, p0, Lcom/android/videoeditor/widgets/TransitionView;->mSeparatorPaint:Landroid/graphics/Paint;

    const/high16 v6, -0x100

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    iget-object v5, p0, Lcom/android/videoeditor/widgets/TransitionView;->mSeparatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/android/videoeditor/widgets/TransitionView;)Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/videoeditor/widgets/TransitionView;->mGestureListener:Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/videoeditor/widgets/TransitionView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/videoeditor/widgets/TransitionView;->mIsScrolling:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/videoeditor/widgets/TransitionView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/android/videoeditor/widgets/TransitionView;->mScrollX:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/videoeditor/widgets/TransitionView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/TransitionView;->requestThumbnails()Z

    move-result v0

    return v0
.end method

.method private requestThumbnails()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 335
    iget-object v5, p0, Lcom/android/videoeditor/widgets/TransitionView;->mBitmaps:[Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    .line 336
    const/4 v5, 0x1

    .line 379
    :goto_0
    return v5

    .line 340
    :cond_0
    iget-boolean v5, p0, Lcom/android/videoeditor/widgets/TransitionView;->mIsScrolling:Z

    if-eqz v5, :cond_1

    move v5, v8

    .line 341
    goto :goto_0

    .line 344
    :cond_1
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/videoeditor/service/MovieTransition;

    .line 346
    .local v4, transition:Lcom/android/videoeditor/service/MovieTransition;
    iget-object v5, p0, Lcom/android/videoeditor/widgets/TransitionView;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieTransition;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/videoeditor/service/ApiService;->isTransitionThumbnailsPending(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v8

    .line 347
    goto :goto_0

    .line 350
    :cond_2
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/videoeditor/widgets/TransitionView;->mScrollX:I

    sub-int v2, v5, v6

    .line 351
    .local v2, start:I
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/videoeditor/widgets/TransitionView;->mScrollX:I

    sub-int v0, v5, v6

    .line 353
    .local v0, end:I
    iget v5, p0, Lcom/android/videoeditor/widgets/TransitionView;->mScreenWidth:I

    if-ge v2, v5, :cond_3

    if-ltz v0, :cond_3

    if-ne v2, v0, :cond_8

    .line 354
    :cond_3
    const-string v5, "TransitionView"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 355
    const-string v5, "TransitionView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Transition view is off screen: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieTransition;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", from: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_4
    iget-object v5, p0, Lcom/android/videoeditor/widgets/TransitionView;->mBitmaps:[Landroid/graphics/Bitmap;

    if-eqz v5, :cond_7

    .line 361
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v5, p0, Lcom/android/videoeditor/widgets/TransitionView;->mBitmaps:[Landroid/graphics/Bitmap;

    array-length v5, v5

    if-ge v1, v5, :cond_6

    .line 362
    iget-object v5, p0, Lcom/android/videoeditor/widgets/TransitionView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v1

    if-eqz v5, :cond_5

    .line 363
    iget-object v5, p0, Lcom/android/videoeditor/widgets/TransitionView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 361
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 367
    :cond_6
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/videoeditor/widgets/TransitionView;->mBitmaps:[Landroid/graphics/Bitmap;

    .end local v1           #i:I
    :cond_7
    move v5, v8

    .line 370
    goto/16 :goto_0

    .line 374
    :cond_8
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getPaddingBottom()I

    move-result v6

    sub-int v3, v5, v6

    .line 376
    .local v3, thumbnailHeight:I
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/videoeditor/widgets/TransitionView;->mProjectPath:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/videoeditor/service/MovieTransition;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v3}, Lcom/android/videoeditor/service/ApiService;->getTransitionThumbnails(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    move v5, v8

    .line 379
    goto/16 :goto_0
.end method


# virtual methods
.method public isInProgress()Z
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/android/videoeditor/widgets/TransitionView;->mProgress:I

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
    .line 168
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    .line 170
    .local v0, scrollView:Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;
    invoke-virtual {v0}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->getScrollX()I

    move-result v1

    iput v1, p0, Lcom/android/videoeditor/widgets/TransitionView;->mScrollX:I

    .line 171
    iget-object v1, p0, Lcom/android/videoeditor/widgets/TransitionView;->mScrollListener:Lcom/android/videoeditor/widgets/ScrollViewListener;

    invoke-virtual {v0, v1}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->addScrollListener(Lcom/android/videoeditor/widgets/ScrollViewListener;)V

    .line 172
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;

    .line 182
    .local v1, scrollView:Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;
    iget-object v2, p0, Lcom/android/videoeditor/widgets/TransitionView;->mScrollListener:Lcom/android/videoeditor/widgets/ScrollViewListener;

    invoke-virtual {v1, v2}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->removeScrollListener(Lcom/android/videoeditor/widgets/ScrollViewListener;)V

    .line 185
    iget-object v2, p0, Lcom/android/videoeditor/widgets/TransitionView;->mBitmaps:[Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 186
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/videoeditor/widgets/TransitionView;->mBitmaps:[Landroid/graphics/Bitmap;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 187
    iget-object v2, p0, Lcom/android/videoeditor/widgets/TransitionView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 188
    iget-object v2, p0, Lcom/android/videoeditor/widgets/TransitionView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 186
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/videoeditor/widgets/TransitionView;->mBitmaps:[Landroid/graphics/Bitmap;

    .line 194
    .end local v0           #i:I
    :cond_2
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/high16 v5, -0x100

    const/4 v4, 0x1

    .line 271
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 274
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    iget v0, p0, Lcom/android/videoeditor/widgets/TransitionView;->mProgress:I

    if-ltz v0, :cond_2

    .line 279
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/videoeditor/widgets/ProgressBar;->getProgressBar(Landroid/content/Context;)Lcom/android/videoeditor/widgets/ProgressBar;

    move-result-object v0

    iget v2, p0, Lcom/android/videoeditor/widgets/TransitionView;->mProgress:I

    iget-object v3, p0, Lcom/android/videoeditor/widgets/TransitionView;->mProgressDestRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getPaddingRight()I

    move-result v5

    sub-int v5, v1, v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/videoeditor/widgets/ProgressBar;->draw(Landroid/graphics/Canvas;ILandroid/graphics/Rect;II)V

    goto :goto_0

    .line 281
    :cond_2
    iget-object v0, p0, Lcom/android/videoeditor/widgets/TransitionView;->mBitmaps:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 282
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getWidth()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 285
    .local v6, halfWidth:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 286
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1, v0, v1, v6, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 289
    iget-object v0, p0, Lcom/android/videoeditor/widgets/TransitionView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v7

    if-eqz v0, :cond_3

    .line 290
    iget-object v0, p0, Lcom/android/videoeditor/widgets/TransitionView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v7

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 294
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 297
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 298
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1, v6, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 300
    iget-object v0, p0, Lcom/android/videoeditor/widgets/TransitionView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v4

    if-eqz v0, :cond_4

    .line 301
    iget-object v0, p0, Lcom/android/videoeditor/widgets/TransitionView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v4

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/videoeditor/widgets/TransitionView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 307
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 309
    int-to-float v1, v6

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getPaddingTop()I

    move-result v0

    int-to-float v2, v0

    int-to-float v3, v6

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/videoeditor/widgets/TransitionView;->mSeparatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 292
    :cond_3
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_1

    .line 305
    :cond_4
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_2

    .line 311
    .end local v6           #halfWidth:I
    :cond_5
    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/TransitionView;->mIsPlaying:Z

    if-nez v0, :cond_0

    .line 312
    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/TransitionView;->mIsScrolling:Z

    if-nez v0, :cond_0

    .line 314
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/TransitionView;->requestThumbnails()Z

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/videoeditor/widgets/TransitionView;->mSimpleGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 325
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setBitmaps([Landroid/graphics/Bitmap;)Z
    .locals 2
    .parameter "bitmaps"

    .prologue
    .line 247
    iget v1, p0, Lcom/android/videoeditor/widgets/TransitionView;->mProgress:I

    if-ltz v1, :cond_0

    .line 248
    const/4 v1, 0x0

    .line 263
    :goto_0
    return v1

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/android/videoeditor/widgets/TransitionView;->mBitmaps:[Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 253
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/videoeditor/widgets/TransitionView;->mBitmaps:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 254
    iget-object v1, p0, Lcom/android/videoeditor/widgets/TransitionView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 255
    iget-object v1, p0, Lcom/android/videoeditor/widgets/TransitionView;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 253
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 260
    .end local v0           #i:I
    :cond_2
    iput-object p1, p0, Lcom/android/videoeditor/widgets/TransitionView;->mBitmaps:[Landroid/graphics/Bitmap;

    .line 261
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->invalidate()V

    .line 263
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setGestureListener(Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/videoeditor/widgets/TransitionView;->mGestureListener:Lcom/android/videoeditor/widgets/ItemSimpleGestureListener;

    .line 208
    return-void
.end method

.method public setPlaybackMode(Z)V
    .locals 0
    .parameter "playback"

    .prologue
    .line 238
    iput-boolean p1, p0, Lcom/android/videoeditor/widgets/TransitionView;->mIsPlaying:Z

    .line 239
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 214
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/android/videoeditor/widgets/TransitionView;->requestThumbnails()Z

    .line 217
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/videoeditor/widgets/TransitionView;->mProgress:I

    .line 222
    :goto_0
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TransitionView;->invalidate()V

    .line 223
    return-void

    .line 219
    :cond_0
    iput p1, p0, Lcom/android/videoeditor/widgets/TransitionView;->mProgress:I

    goto :goto_0
.end method

.method public setProjectPath(Ljava/lang/String;)V
    .locals 0
    .parameter "projectPath"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/videoeditor/widgets/TransitionView;->mProjectPath:Ljava/lang/String;

    .line 201
    return-void
.end method
