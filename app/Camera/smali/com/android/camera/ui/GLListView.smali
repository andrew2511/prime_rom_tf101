.class Lcom/android/camera/ui/GLListView;
.super Lcom/android/camera/ui/GLView;
.source "GLListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/GLListView$MyGestureListener;,
        Lcom/android/camera/ui/GLListView$OnItemSelectedListener;,
        Lcom/android/camera/ui/GLListView$Model;
    }
.end annotation


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field private mHasMeasured:Z

.field private final mHideScrollBar:Ljava/lang/Runnable;

.field private mHighLight:Lcom/android/camera/ui/Texture;

.field private mHighlightIndex:I

.field private mHighlightView:Lcom/android/camera/ui/GLView;

.field private mIsPressed:Z

.field private mModel:Lcom/android/camera/ui/GLListView$Model;

.field private mOnItemSelectedListener:Lcom/android/camera/ui/GLListView$OnItemSelectedListener;

.field private mScrollBarAnimation:Landroid/view/animation/Animation;

.field private mScrollBarVisible:Z

.field private mScrollable:Z

.field private mScrollbar:Lcom/android/camera/ui/NinePatchTexture;

.field private final mScroller:Landroid/widget/Scroller;

.field private mVisibleEnd:I

.field private mVisibleStart:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Lcom/android/camera/ui/GLView;-><init>()V

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/GLListView;->mHighlightIndex:I

    .line 54
    iput v1, p0, Lcom/android/camera/ui/GLListView;->mVisibleStart:I

    .line 55
    iput v1, p0, Lcom/android/camera/ui/GLListView;->mVisibleEnd:I

    .line 57
    iput-boolean v1, p0, Lcom/android/camera/ui/GLListView;->mHasMeasured:Z

    .line 59
    iput-boolean v1, p0, Lcom/android/camera/ui/GLListView;->mScrollBarVisible:Z

    .line 66
    iput-boolean v1, p0, Lcom/android/camera/ui/GLListView;->mIsPressed:Z

    .line 105
    new-instance v0, Lcom/android/camera/ui/GLListView$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/GLListView$2;-><init>(Lcom/android/camera/ui/GLListView;)V

    iput-object v0, p0, Lcom/android/camera/ui/GLListView;->mHideScrollBar:Ljava/lang/Runnable;

    .line 79
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/GLListView;->mScroller:Landroid/widget/Scroller;

    .line 80
    new-instance v0, Lcom/android/camera/ui/GLListView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/GLListView$1;-><init>(Lcom/android/camera/ui/GLListView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/ui/GLListView;->mHandler:Landroid/os/Handler;

    .line 101
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/camera/ui/GLListView$MyGestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/ui/GLListView$MyGestureListener;-><init>(Lcom/android/camera/ui/GLListView;Lcom/android/camera/ui/GLListView$1;)V

    iget-object v2, p0, Lcom/android/camera/ui/GLListView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/camera/ui/GLListView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/GLListView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/camera/ui/GLListView;->setScrollBarVisible(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/ui/GLListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/camera/ui/GLListView;->mHighlightIndex:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/GLListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/camera/ui/GLListView;->mScrollable:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/GLListView;)Landroid/widget/Scroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/ui/GLListView;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/GLListView;Lcom/android/camera/ui/GLView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/GLListView;->setHighlightItem(Lcom/android/camera/ui/GLView;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/ui/GLListView;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/GLListView;->setScrollPosition(IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/ui/GLListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/camera/ui/GLListView;->mIsPressed:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/ui/GLListView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/camera/ui/GLListView;->findAndSetHighlightItem(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/ui/GLListView;)Lcom/android/camera/ui/GLListView$OnItemSelectedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/ui/GLListView;->mOnItemSelectedListener:Lcom/android/camera/ui/GLListView$OnItemSelectedListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/ui/GLListView;)Lcom/android/camera/ui/GLView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/ui/GLListView;->mHighlightView:Lcom/android/camera/ui/GLView;

    return-object v0
.end method

.method private drawWithAnimation(Lcom/android/camera/ui/GLRootView;Lcom/android/camera/ui/Texture;IIIILandroid/view/animation/Animation;)Z
    .locals 15
    .parameter "root"
    .parameter "texture"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"
    .parameter "anim"

    .prologue
    .line 156
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/ui/GLRootView;->currentAnimationTimeMillis()J

    move-result-wide v11

    .line 157
    .local v11, now:J
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/ui/GLRootView;->obtainTransformation()Landroid/view/animation/Transformation;

    move-result-object v13

    .line 158
    .local v13, temp:Landroid/view/animation/Transformation;
    move-object/from16 v0, p7

    move-wide v1, v11

    move-object v3, v13

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v10

    .line 159
    .local v10, more:Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/ui/GLRootView;->pushTransform()Landroid/view/animation/Transformation;

    move-result-object v14

    .line 160
    .local v14, transformation:Landroid/view/animation/Transformation;
    invoke-virtual {v14, v13}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    .line 161
    invoke-interface/range {v4 .. v9}, Lcom/android/camera/ui/Texture;->draw(Lcom/android/camera/ui/GLRootView;IIII)V

    .line 162
    invoke-virtual {p0}, Lcom/android/camera/ui/GLListView;->invalidate()V

    .line 163
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/ui/GLRootView;->popTransform()V

    .line 164
    return v10
.end method

.method private findAndSetHighlightItem(I)V
    .locals 6
    .parameter "y"

    .prologue
    .line 339
    iget v4, p0, Lcom/android/camera/ui/GLListView;->mScrollY:I

    add-int v3, p1, v4

    .line 340
    .local v3, position:I
    iget v1, p0, Lcom/android/camera/ui/GLListView;->mVisibleStart:I

    .local v1, i:I
    iget v2, p0, Lcom/android/camera/ui/GLListView;->mVisibleEnd:I

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 341
    iget-object v4, p0, Lcom/android/camera/ui/GLListView;->mModel:Lcom/android/camera/ui/GLListView$Model;

    invoke-interface {v4, v1}, Lcom/android/camera/ui/GLListView$Model;->getView(I)Lcom/android/camera/ui/GLView;

    move-result-object v0

    .line 342
    .local v0, child:Lcom/android/camera/ui/GLView;
    iget-object v4, v0, Lcom/android/camera/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-le v4, v3, :cond_0

    .line 343
    iget-object v4, p0, Lcom/android/camera/ui/GLListView;->mModel:Lcom/android/camera/ui/GLListView$Model;

    invoke-interface {v4, v1}, Lcom/android/camera/ui/GLListView$Model;->isSelectable(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 344
    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/GLListView;->setHighlightItem(Lcom/android/camera/ui/GLView;I)V

    .line 351
    .end local v0           #child:Lcom/android/camera/ui/GLView;
    :goto_1
    return-void

    .line 340
    .restart local v0       #child:Lcom/android/camera/ui/GLView;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 350
    .end local v0           #child:Lcom/android/camera/ui/GLView;
    :cond_1
    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-direct {p0, v4, v5}, Lcom/android/camera/ui/GLListView;->setHighlightItem(Lcom/android/camera/ui/GLView;I)V

    goto :goto_1
.end method

.method private setHighlightItem(Lcom/android/camera/ui/GLView;I)V
    .locals 1
    .parameter "view"
    .parameter "index"

    .prologue
    .line 354
    iget v0, p0, Lcom/android/camera/ui/GLListView;->mHighlightIndex:I

    if-ne p2, v0, :cond_1

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    iput p2, p0, Lcom/android/camera/ui/GLListView;->mHighlightIndex:I

    .line 356
    iput-object p1, p0, Lcom/android/camera/ui/GLListView;->mHighlightView:Lcom/android/camera/ui/GLView;

    .line 357
    iget-object v0, p0, Lcom/android/camera/ui/GLListView;->mHighLight:Lcom/android/camera/ui/Texture;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/GLListView;->invalidate()V

    goto :goto_0
.end method

.method private setScrollBarVisible(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/camera/ui/GLListView;->mScrollBarVisible:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/GLListView;->mScrollbar:Lcom/android/camera/ui/NinePatchTexture;

    if-nez v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iput-boolean p1, p0, Lcom/android/camera/ui/GLListView;->mScrollBarVisible:Z

    .line 130
    if-nez p1, :cond_2

    .line 131
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/ui/GLListView;->mScrollBarAnimation:Landroid/view/animation/Animation;

    .line 132
    iget-object v0, p0, Lcom/android/camera/ui/GLListView;->mScrollBarAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 133
    iget-object v0, p0, Lcom/android/camera/ui/GLListView;->mScrollBarAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 137
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/ui/GLListView;->invalidate()V

    goto :goto_0

    .line 135
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/GLListView;->mScrollBarAnimation:Landroid/view/animation/Animation;

    goto :goto_1
.end method

.method private setScrollPosition(IZ)V
    .locals 7
    .parameter "position"
    .parameter "force"

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/android/camera/ui/GLListView;->getHeight()I

    move-result v2

    .line 267
    .local v2, height:I
    const/4 v5, 0x0

    iget v6, p0, Lcom/android/camera/ui/GLListView;->mScrollHeight:I

    sub-int/2addr v6, v2

    invoke-static {p1, v5, v6}, Lcom/android/camera/Util;->clamp(III)I

    move-result p1

    .line 269
    if-nez p2, :cond_0

    iget v5, p0, Lcom/android/camera/ui/GLListView;->mScrollY:I

    if-ne p1, v5, :cond_0

    .line 286
    :goto_0
    return-void

    .line 270
    :cond_0
    iput p1, p0, Lcom/android/camera/ui/GLListView;->mScrollY:I

    .line 272
    iget-object v5, p0, Lcom/android/camera/ui/GLListView;->mModel:Lcom/android/camera/ui/GLListView$Model;

    invoke-interface {v5}, Lcom/android/camera/ui/GLListView$Model;->size()I

    move-result v3

    .line 274
    .local v3, n:I
    const/4 v4, 0x0

    .line 275
    .local v4, start:I
    const/4 v1, 0x0

    .line 276
    .local v1, end:I
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    .line 277
    iget-object v5, p0, Lcom/android/camera/ui/GLListView;->mModel:Lcom/android/camera/ui/GLListView$Model;

    invoke-interface {v5, v4}, Lcom/android/camera/ui/GLListView$Model;->getView(I)Lcom/android/camera/ui/GLView;

    move-result-object v5

    iget-object v5, v5, Lcom/android/camera/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-ge p1, v5, :cond_3

    .line 280
    :cond_1
    add-int v0, p1, v2

    .line 281
    .local v0, bottom:I
    move v1, v4

    :goto_2
    if-ge v1, v3, :cond_2

    .line 282
    iget-object v5, p0, Lcom/android/camera/ui/GLListView;->mModel:Lcom/android/camera/ui/GLListView$Model;

    invoke-interface {v5, v1}, Lcom/android/camera/ui/GLListView$Model;->getView(I)Lcom/android/camera/ui/GLView;

    move-result-object v5

    iget-object v5, v5, Lcom/android/camera/ui/GLView;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-gt v0, v5, :cond_4

    .line 284
    :cond_2
    invoke-direct {p0, v4, v1}, Lcom/android/camera/ui/GLListView;->setVisibleRange(II)V

    .line 285
    invoke-virtual {p0}, Lcom/android/camera/ui/GLListView;->invalidate()V

    goto :goto_0

    .line 276
    .end local v0           #bottom:I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 281
    .restart local v0       #bottom:I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private setVisibleRange(II)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 289
    iget v0, p0, Lcom/android/camera/ui/GLListView;->mVisibleStart:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/GLListView;->mVisibleEnd:I

    if-ne p2, v0, :cond_0

    .line 292
    :goto_0
    return-void

    .line 290
    :cond_0
    iput p1, p0, Lcom/android/camera/ui/GLListView;->mVisibleStart:I

    .line 291
    iput p2, p0, Lcom/android/camera/ui/GLListView;->mVisibleEnd:I

    goto :goto_0
.end method

.method private updateScrollBar(I)V
    .locals 4
    .parameter "visibility"

    .prologue
    const/4 v3, 0x1

    .line 118
    invoke-virtual {p0}, Lcom/android/camera/ui/GLListView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-direct {p0, v3}, Lcom/android/camera/ui/GLListView;->setScrollBarVisible(Z)V

    .line 120
    iget-object v0, p0, Lcom/android/camera/ui/GLListView;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/GLListView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method


# virtual methods
.method protected dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 296
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/GLListView;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getComponent(I)Lcom/android/camera/ui/GLView;
    .locals 2
    .parameter "index"

    .prologue
    .line 229
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/camera/ui/GLListView;->mVisibleEnd:I

    iget v1, p0, Lcom/android/camera/ui/GLListView;->mVisibleStart:I

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    .line 230
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/GLListView;->mModel:Lcom/android/camera/ui/GLListView$Model;

    iget v1, p0, Lcom/android/camera/ui/GLListView;->mVisibleStart:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Lcom/android/camera/ui/GLListView$Model;->getView(I)Lcom/android/camera/ui/GLView;

    move-result-object v0

    return-object v0
.end method

.method public getComponentCount()I
    .locals 2

    .prologue
    .line 224
    iget v0, p0, Lcom/android/camera/ui/GLListView;->mVisibleEnd:I

    iget v1, p0, Lcom/android/camera/ui/GLListView;->mVisibleStart:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "change"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 245
    iget-boolean v6, p0, Lcom/android/camera/ui/GLListView;->mHasMeasured:Z

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/android/camera/ui/GLListView;->mMeasuredWidth:I

    sub-int v7, p4, p2

    if-eq v6, v7, :cond_1

    .line 246
    :cond_0
    sub-int v6, p4, p2

    const/high16 v7, 0x4000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    sub-int v7, p5, p3

    const/high16 v8, 0x4000

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/ui/GLListView;->measure(II)V

    .line 250
    :cond_1
    iget v6, p0, Lcom/android/camera/ui/GLListView;->mScrollHeight:I

    sub-int v7, p5, p3

    if-le v6, v7, :cond_2

    const/4 v6, 0x1

    :goto_0
    iput-boolean v6, p0, Lcom/android/camera/ui/GLListView;->mScrollable:Z

    .line 251
    sub-int v4, p4, p2

    .line 252
    .local v4, width:I
    const/4 v5, 0x0

    .line 254
    .local v5, yoffset:I
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v6, p0, Lcom/android/camera/ui/GLListView;->mModel:Lcom/android/camera/ui/GLListView$Model;

    invoke-interface {v6}, Lcom/android/camera/ui/GLListView$Model;->size()I

    move-result v2

    .local v2, n:I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 255
    iget-object v6, p0, Lcom/android/camera/ui/GLListView;->mModel:Lcom/android/camera/ui/GLListView$Model;

    invoke-interface {v6, v0}, Lcom/android/camera/ui/GLListView$Model;->getView(I)Lcom/android/camera/ui/GLView;

    move-result-object v1

    .line 256
    .local v1, item:Lcom/android/camera/ui/GLView;
    invoke-virtual {v1, p0}, Lcom/android/camera/ui/GLView;->onAddToParent(Lcom/android/camera/ui/GLView;)V

    .line 257
    invoke-virtual {v1}, Lcom/android/camera/ui/GLView;->getMeasuredHeight()I

    move-result v6

    add-int v3, v5, v6

    .line 258
    .local v3, nextOffset:I
    const/4 v6, 0x0

    invoke-virtual {v1, v6, v5, v4, v3}, Lcom/android/camera/ui/GLView;->layout(IIII)V

    .line 259
    move v5, v3

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 250
    .end local v0           #i:I
    .end local v1           #item:Lcom/android/camera/ui/GLView;
    .end local v2           #n:I
    .end local v3           #nextOffset:I
    .end local v4           #width:I
    .end local v5           #yoffset:I
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 261
    .restart local v0       #i:I
    .restart local v2       #n:I
    .restart local v4       #width:I
    .restart local v5       #yoffset:I
    :cond_3
    iget v6, p0, Lcom/android/camera/ui/GLListView;->mScrollY:I

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/android/camera/ui/GLListView;->setScrollPosition(IZ)V

    .line 262
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, height:I
    const/4 v2, 0x0

    .line 209
    .local v2, maxWidth:I
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v5, p0, Lcom/android/camera/ui/GLListView;->mModel:Lcom/android/camera/ui/GLListView$Model;

    invoke-interface {v5}, Lcom/android/camera/ui/GLListView$Model;->size()I

    move-result v3

    .local v3, n:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 210
    iget-object v5, p0, Lcom/android/camera/ui/GLListView;->mModel:Lcom/android/camera/ui/GLListView$Model;

    invoke-interface {v5, v1}, Lcom/android/camera/ui/GLListView$Model;->getView(I)Lcom/android/camera/ui/GLView;

    move-result-object v4

    .line 211
    .local v4, view:Lcom/android/camera/ui/GLView;
    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Lcom/android/camera/ui/GLView;->measure(II)V

    .line 212
    invoke-virtual {v4}, Lcom/android/camera/ui/GLView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v0, v5

    .line 213
    invoke-virtual {v4}, Lcom/android/camera/ui/GLView;->getMeasuredWidth()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    .end local v4           #view:Lcom/android/camera/ui/GLView;
    :cond_0
    iput v0, p0, Lcom/android/camera/ui/GLListView;->mScrollHeight:I

    .line 216
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/camera/ui/GLListView;->mHasMeasured:Z

    .line 217
    new-instance v5, Lcom/android/camera/ui/MeasureHelper;

    invoke-direct {v5, p0}, Lcom/android/camera/ui/MeasureHelper;-><init>(Lcom/android/camera/ui/GLView;)V

    invoke-virtual {v5, v2, v0}, Lcom/android/camera/ui/MeasureHelper;->setPreferredContentSize(II)Lcom/android/camera/ui/MeasureHelper;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Lcom/android/camera/ui/MeasureHelper;->measure(II)V

    .line 220
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 302
    iget-object v0, p0, Lcom/android/camera/ui/GLListView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 304
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 335
    :cond_0
    :goto_0
    return v3

    .line 306
    :pswitch_0
    iput-boolean v3, p0, Lcom/android/camera/ui/GLListView;->mIsPressed:Z

    .line 307
    iget-object v0, p0, Lcom/android/camera/ui/GLListView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 308
    iget v0, p0, Lcom/android/camera/ui/GLListView;->mScrollHeight:I

    invoke-virtual {p0}, Lcom/android/camera/ui/GLListView;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_1

    move v0, v3

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/camera/ui/GLListView;->setScrollBarVisible(Z)V

    .line 309
    iget-object v0, p0, Lcom/android/camera/ui/GLListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 310
    iget-object v0, p0, Lcom/android/camera/ui/GLListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 308
    goto :goto_1

    .line 315
    :cond_2
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/camera/ui/GLListView;->mScrollable:Z

    if-nez v0, :cond_0

    .line 316
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/GLListView;->findAndSetHighlightItem(I)V

    goto :goto_0

    .line 320
    :pswitch_2
    iput-boolean v2, p0, Lcom/android/camera/ui/GLListView;->mIsPressed:Z

    .line 321
    iget-boolean v0, p0, Lcom/android/camera/ui/GLListView;->mScrollBarVisible:Z

    if-eqz v0, :cond_3

    .line 322
    iget-object v0, p0, Lcom/android/camera/ui/GLListView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 323
    iget-object v0, p0, Lcom/android/camera/ui/GLListView;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 326
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/ui/GLListView;->mScrollable:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ui/GLListView;->mOnItemSelectedListener:Lcom/android/camera/ui/GLListView$OnItemSelectedListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ui/GLListView;->mHighlightView:Lcom/android/camera/ui/GLView;

    if-eqz v0, :cond_4

    .line 328
    iget-object v0, p0, Lcom/android/camera/ui/GLListView;->mOnItemSelectedListener:Lcom/android/camera/ui/GLListView$OnItemSelectedListener;

    iget-object v1, p0, Lcom/android/camera/ui/GLListView;->mHighlightView:Lcom/android/camera/ui/GLView;

    iget v2, p0, Lcom/android/camera/ui/GLListView;->mHighlightIndex:I

    invoke-interface {v0, v1, v2}, Lcom/android/camera/ui/GLListView$OnItemSelectedListener;->onItemSelected(Lcom/android/camera/ui/GLView;I)V

    .line 333
    :cond_4
    :pswitch_3
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/GLListView;->setHighlightItem(Lcom/android/camera/ui/GLView;I)V

    goto :goto_0

    .line 304
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method protected onVisibilityChanged(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/android/camera/ui/GLView;->onVisibilityChanged(I)V

    .line 114
    iget v0, p0, Lcom/android/camera/ui/GLListView;->mScrollHeight:I

    invoke-virtual {p0}, Lcom/android/camera/ui/GLListView;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/GLListView;->updateScrollBar(I)V

    .line 115
    :cond_0
    return-void
.end method

.method protected render(Lcom/android/camera/ui/GLRootView;Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 21
    .parameter "root"
    .parameter "gl"

    .prologue
    .line 169
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/GLListView;->getWidth()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/GLListView;->getHeight()I

    move-result v8

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/ui/GLRootView;->clipRect(IIII)V

    .line 170
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/GLListView;->mHighlightIndex:I

    move v5, v0

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLListView;->mModel:Lcom/android/camera/ui/GLListView$Model;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/GLListView;->mHighlightIndex:I

    move v6, v0

    invoke-interface {v5, v6}, Lcom/android/camera/ui/GLListView$Model;->getView(I)Lcom/android/camera/ui/GLView;

    move-result-object v20

    .line 172
    .local v20, view:Lcom/android/camera/ui/GLView;
    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/ui/GLView;->bounds()Landroid/graphics/Rect;

    move-result-object v19

    .line 173
    .local v19, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLListView;->mHighLight:Lcom/android/camera/ui/Texture;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 174
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 175
    .local v9, width:I
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 176
    .local v10, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLListView;->mHighLight:Lcom/android/camera/ui/Texture;

    move-object v5, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/GLListView;->mScrollX:I

    move v7, v0

    sub-int v7, v6, v7

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/GLListView;->mScrollY:I

    move v8, v0

    sub-int v8, v6, v8

    move-object/from16 v6, p1

    invoke-interface/range {v5 .. v10}, Lcom/android/camera/ui/Texture;->draw(Lcom/android/camera/ui/GLRootView;IIII)V

    .line 181
    .end local v9           #width:I
    .end local v10           #height:I
    .end local v19           #bounds:Landroid/graphics/Rect;
    .end local v20           #view:Lcom/android/camera/ui/GLView;
    :cond_0
    invoke-super/range {p0 .. p2}, Lcom/android/camera/ui/GLView;->render(Lcom/android/camera/ui/GLRootView;Ljavax/microedition/khronos/opengles/GL11;)V

    .line 182
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/ui/GLRootView;->clearClip()V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLListView;->mScrollBarAnimation:Landroid/view/animation/Animation;

    move-object v5, v0

    if-nez v5, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ui/GLListView;->mScrollBarVisible:Z

    move v5, v0

    if-eqz v5, :cond_2

    .line 185
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLListView;->mScrollbar:Lcom/android/camera/ui/NinePatchTexture;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/camera/ui/NinePatchTexture;->getWidth()I

    move-result v9

    .line 186
    .restart local v9       #width:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/GLListView;->getHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/GLListView;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/GLListView;->mScrollHeight:I

    move v6, v0

    div-int v10, v5, v6

    .line 187
    .restart local v10       #height:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/GLListView;->mScrollY:I

    move v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/GLListView;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ui/GLListView;->mScrollHeight:I

    move v6, v0

    div-int v15, v5, v6

    .line 188
    .local v15, yoffset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLListView;->mScrollBarAnimation:Landroid/view/animation/Animation;

    move-object v5, v0

    if-eqz v5, :cond_4

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLListView;->mScrollbar:Lcom/android/camera/ui/NinePatchTexture;

    move-object v13, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/GLListView;->getWidth()I

    move-result v5

    sub-int v14, v5, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLListView;->mScrollBarAnimation:Landroid/view/animation/Animation;

    move-object/from16 v18, v0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v16, v9

    move/from16 v17, v10

    invoke-direct/range {v11 .. v18}, Lcom/android/camera/ui/GLListView;->drawWithAnimation(Lcom/android/camera/ui/GLRootView;Lcom/android/camera/ui/Texture;IIIILandroid/view/animation/Animation;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 192
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ui/GLListView;->mScrollBarAnimation:Landroid/view/animation/Animation;

    .line 199
    .end local v9           #width:I
    .end local v10           #height:I
    .end local v15           #yoffset:I
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLListView;->mScroller:Landroid/widget/Scroller;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLListView;->mScroller:Landroid/widget/Scroller;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/camera/ui/GLListView;->setScrollPosition(IZ)V

    .line 202
    :cond_3
    return-void

    .line 195
    .restart local v9       #width:I
    .restart local v10       #height:I
    .restart local v15       #yoffset:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLListView;->mScrollbar:Lcom/android/camera/ui/NinePatchTexture;

    move-object v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/GLListView;->getWidth()I

    move-result v6

    sub-int v7, v6, v9

    move-object/from16 v6, p1

    move v8, v15

    invoke-virtual/range {v5 .. v10}, Lcom/android/camera/ui/NinePatchTexture;->draw(Lcom/android/camera/ui/GLRootView;IIII)V

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/GLListView;->mHasMeasured:Z

    .line 238
    invoke-super {p0}, Lcom/android/camera/ui/GLView;->requestLayout()V

    .line 239
    return-void
.end method

.method public setDataModel(Lcom/android/camera/ui/GLListView$Model;)V
    .locals 1
    .parameter "model"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/camera/ui/GLListView;->mModel:Lcom/android/camera/ui/GLListView$Model;

    .line 146
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/GLListView;->mScrollY:I

    .line 147
    invoke-virtual {p0}, Lcom/android/camera/ui/GLListView;->requestLayout()V

    .line 148
    return-void
.end method

.method public setHighLight(Lcom/android/camera/ui/Texture;)V
    .locals 0
    .parameter "highLight"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/camera/ui/GLListView;->mHighLight:Lcom/android/camera/ui/Texture;

    .line 142
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/android/camera/ui/GLListView$OnItemSelectedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/camera/ui/GLListView;->mOnItemSelectedListener:Lcom/android/camera/ui/GLListView$OnItemSelectedListener;

    .line 152
    return-void
.end method

.method public setScroller(Lcom/android/camera/ui/NinePatchTexture;)V
    .locals 0
    .parameter "scrollbar"

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/camera/ui/GLListView;->mScrollbar:Lcom/android/camera/ui/NinePatchTexture;

    .line 362
    invoke-virtual {p0}, Lcom/android/camera/ui/GLListView;->requestLayout()V

    .line 363
    return-void
.end method
