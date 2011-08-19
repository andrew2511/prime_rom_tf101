.class public Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "TimelineHorizontalScrollView.java"


# static fields
.field public static final PLAYHEAD_MOVE_NOT_OK:I = 0x3

.field public static final PLAYHEAD_MOVE_OK:I = 0x2

.field public static final PLAYHEAD_NORMAL:I = 0x1


# instance fields
.field private mAppScroll:Z

.field private mEnableUserScrolling:Z

.field private final mHalfParentWidth:I

.field private final mHandler:Landroid/os/Handler;

.field private mIsScrolling:Z

.field private mLastScrollX:I

.field private final mMoveNotOkPlayheadDrawable:Landroid/graphics/drawable/Drawable;

.field private final mMoveOkPlayheadDrawable:Landroid/graphics/drawable/Drawable;

.field private final mNormalPlayheadDrawable:Landroid/graphics/drawable/Drawable;

.field private final mPlayheadMarginBottom:I

.field private final mPlayheadMarginTop:I

.field private final mPlayheadMarginTopNotOk:I

.field private final mPlayheadMarginTopOk:I

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mScrollEndedRunnable:Ljava/lang/Runnable;

.field private final mScrollListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/videoeditor/widgets/ScrollViewListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 125
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x1

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    new-instance v3, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView$1;

    invoke-direct {v3, p0}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView$1;-><init>(Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;)V

    iput-object v3, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mScrollEndedRunnable:Ljava/lang/Runnable;

    .line 86
    iput-boolean v5, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mEnableUserScrolling:Z

    .line 87
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mScrollListenerList:Ljava/util/List;

    .line 88
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mHandler:Landroid/os/Handler;

    .line 91
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 92
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mHalfParentWidth:I

    .line 96
    const/high16 v3, 0x7f08

    iget v4, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mHalfParentWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->setTag(ILjava/lang/Object;)V

    .line 97
    const v3, 0x7f080001

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->setTag(ILjava/lang/Object;)V

    .line 98
    const v3, 0x7f080002

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->setTag(ILjava/lang/Object;)V

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 103
    .local v2, resources:Landroid/content/res/Resources;
    const v3, 0x7f070008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mPlayheadMarginTop:I

    .line 104
    const v3, 0x7f07000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mPlayheadMarginBottom:I

    .line 105
    const v3, 0x7f070009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mPlayheadMarginTopOk:I

    .line 106
    const v3, 0x7f07000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mPlayheadMarginTopNotOk:I

    .line 109
    const v3, 0x7f020058

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mNormalPlayheadDrawable:Landroid/graphics/drawable/Drawable;

    .line 110
    const v3, 0x7f02005a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mMoveOkPlayheadDrawable:Landroid/graphics/drawable/Drawable;

    .line 111
    const v3, 0x7f020059

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mMoveNotOkPlayheadDrawable:Landroid/graphics/drawable/Drawable;

    .line 112
    return-void
.end method

.method static synthetic access$002(Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mIsScrolling:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mScrollListenerList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mAppScroll:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mAppScroll:Z

    return p1
.end method


# virtual methods
.method public addScrollListener(Lcom/android/videoeditor/widgets/ScrollViewListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mScrollListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    return-void
.end method

.method public appScrollBy(IZ)V
    .locals 2
    .parameter "scrollX"
    .parameter "smooth"

    .prologue
    const/4 v1, 0x0

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mAppScroll:Z

    .line 226
    if-eqz p2, :cond_0

    .line 227
    invoke-virtual {p0, p1, v1}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->smoothScrollBy(II)V

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method public appScrollTo(IZ)V
    .locals 2
    .parameter "scrollX"
    .parameter "smooth"

    .prologue
    const/4 v1, 0x0

    .line 204
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->getScrollX()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 215
    :goto_0
    return-void

    .line 208
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mAppScroll:Z

    .line 210
    if-eqz p2, :cond_1

    .line 211
    invoke-virtual {p0, p1, v1}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0

    .line 213
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->scrollTo(II)V

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 8

    .prologue
    .line 238
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->computeScroll()V

    .line 240
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->getScrollX()I

    move-result v2

    .line 241
    .local v2, scrollX:I
    iget v4, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mLastScrollX:I

    if-eq v4, v2, :cond_1

    .line 242
    iput v2, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mLastScrollX:I

    .line 245
    iget-object v4, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mScrollEndedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 248
    iget-object v4, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mScrollEndedRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 250
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->getScrollY()I

    move-result v3

    .line 251
    .local v3, scrollY:I
    iget-boolean v4, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mIsScrolling:Z

    if-eqz v4, :cond_0

    .line 252
    iget-object v4, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mScrollListenerList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/videoeditor/widgets/ScrollViewListener;

    .line 253
    .local v1, listener:Lcom/android/videoeditor/widgets/ScrollViewListener;
    iget-boolean v4, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mAppScroll:Z

    invoke-interface {v1, p0, v2, v3, v4}, Lcom/android/videoeditor/widgets/ScrollViewListener;->onScrollProgress(Landroid/view/View;IIZ)V

    goto :goto_0

    .line 256
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/videoeditor/widgets/ScrollViewListener;
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mIsScrolling:Z

    .line 258
    iget-object v4, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mScrollListenerList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/videoeditor/widgets/ScrollViewListener;

    .line 259
    .restart local v1       #listener:Lcom/android/videoeditor/widgets/ScrollViewListener;
    iget-boolean v4, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mAppScroll:Z

    invoke-interface {v1, p0, v2, v3, v4}, Lcom/android/videoeditor/widgets/ScrollViewListener;->onScrollBegin(Landroid/view/View;IIZ)V

    goto :goto_1

    .line 263
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/videoeditor/widgets/ScrollViewListener;
    .end local v3           #scrollY:I
    :cond_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 270
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 272
    const v4, 0x7f080001

    invoke-virtual {p0, v4}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 274
    .local v1, playheadOffset:I
    if-gez v1, :cond_0

    .line 276
    iget v4, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mHalfParentWidth:I

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->getScrollX()I

    move-result v5

    add-int v3, v4, v5

    .line 282
    .local v3, startX:I
    :goto_0
    const v4, 0x7f080002

    invoke-virtual {p0, v4}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 283
    .local v2, playheadType:I
    iget-object v4, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mNormalPlayheadDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    div-int/lit8 v0, v4, 0x2

    .line 284
    .local v0, halfPlayheadWidth:I
    packed-switch v2, :pswitch_data_0

    .line 322
    :goto_1
    return-void

    .line 279
    .end local v0           #halfPlayheadWidth:I
    .end local v2           #playheadType:I
    .end local v3           #startX:I
    :cond_0
    move v3, v1

    .restart local v3       #startX:I
    goto :goto_0

    .line 287
    .restart local v0       #halfPlayheadWidth:I
    .restart local v2       #playheadType:I
    :pswitch_0
    iget-object v4, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mNormalPlayheadDrawable:Landroid/graphics/drawable/Drawable;

    sub-int v5, v3, v0

    iget v6, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mPlayheadMarginTop:I

    add-int v7, v3, v0

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mPlayheadMarginBottom:I

    sub-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 292
    iget-object v4, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mNormalPlayheadDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 298
    :pswitch_1
    iget-object v4, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mMoveOkPlayheadDrawable:Landroid/graphics/drawable/Drawable;

    sub-int v5, v3, v0

    iget v6, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mPlayheadMarginTopOk:I

    add-int v7, v3, v0

    iget v8, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mPlayheadMarginTopOk:I

    iget-object v9, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mMoveOkPlayheadDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 303
    iget-object v4, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mMoveOkPlayheadDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 309
    :pswitch_2
    iget-object v4, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mMoveNotOkPlayheadDrawable:Landroid/graphics/drawable/Drawable;

    sub-int v5, v3, v0

    iget v6, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mPlayheadMarginTopNotOk:I

    add-int v7, v3, v0

    iget v8, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mPlayheadMarginTopNotOk:I

    iget-object v9, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mMoveNotOkPlayheadDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 314
    iget-object v4, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mMoveNotOkPlayheadDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public enableUserScrolling(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mEnableUserScrolling:Z

    .line 134
    return-void
.end method

.method public isScrolling()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mIsScrolling:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 142
    iget-object v0, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "ev"

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 150
    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mEnableUserScrolling:Z

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 153
    iget-object v0, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 165
    :goto_0
    return v0

    :cond_0
    move v0, v9

    .line 156
    goto :goto_0

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x3

    const/4 v7, 0x0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 162
    .local v8, cancelEvent:Landroid/view/MotionEvent;
    iget-object v0, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, v8}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 163
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .end local v8           #cancelEvent:Landroid/view/MotionEvent;
    :cond_2
    move v0, v9

    .line 165
    goto :goto_0
.end method

.method public removeScrollListener(Lcom/android/videoeditor/widgets/ScrollViewListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mScrollListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 188
    return-void
.end method

.method public setScaleListener(Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 173
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/videoeditor/widgets/TimelineHorizontalScrollView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 174
    return-void
.end method
