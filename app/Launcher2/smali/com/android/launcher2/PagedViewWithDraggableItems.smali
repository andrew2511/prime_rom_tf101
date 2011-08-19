.class public abstract Lcom/android/launcher2/PagedViewWithDraggableItems;
.super Lcom/android/launcher2/PagedView;
.source "PagedViewWithDraggableItems.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mDragSlopeThreshold:F

.field private mIsDragEnabled:Z

.field private mIsDragging:Z

.field private mLastTouchedItem:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "ev"

    .prologue
    const/4 v2, 0x1

    .line 66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 67
    .local v0, action:I
    and-int/lit16 v1, v0, 0xff

    packed-switch v1, :pswitch_data_0

    .line 78
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 69
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWithDraggableItems;->cancelDragging()V

    .line 70
    iput-boolean v2, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mIsDragEnabled:Z

    goto :goto_0

    .line 73
    :pswitch_2
    iget v1, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mTouchState:I

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mIsDragging:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mIsDragEnabled:Z

    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedViewWithDraggableItems;->determineDraggingStart(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected beginDragging(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 54
    iget-boolean v0, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mIsDragging:Z

    .line 55
    .local v0, wasDragging:Z
    iput-boolean v1, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mIsDragging:Z

    .line 56
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected cancelDragging()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    iput-boolean v1, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mIsDragging:Z

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mLastTouchedItem:Landroid/view/View;

    .line 62
    iput-boolean v1, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mIsDragEnabled:Z

    .line 63
    return-void
.end method

.method protected determineDraggingStart(Landroid/view/MotionEvent;)V
    .locals 13
    .parameter "ev"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 126
    iget v9, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mActivePointerId:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 127
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 128
    .local v4, x:F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 129
    .local v6, y:F
    iget v9, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mLastMotionX:F

    sub-float v9, v4, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v5, v9

    .line 130
    .local v5, xDiff:I
    iget v9, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mLastMotionY:F

    sub-float v9, v6, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v7, v9

    .line 132
    .local v7, yDiff:I
    iget v3, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mTouchSlop:I

    .line 133
    .local v3, touchSlop:I
    if-le v7, v3, :cond_1

    move v8, v12

    .line 134
    .local v8, yMoved:Z
    :goto_0
    int-to-float v9, v7

    int-to-float v10, v5

    div-float/2addr v9, v10

    iget v10, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mDragSlopeThreshold:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_2

    move v1, v12

    .line 136
    .local v1, isUpwardMotion:Z
    :goto_1
    if-eqz v1, :cond_0

    if-eqz v8, :cond_0

    iget-object v9, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mLastTouchedItem:Landroid/view/View;

    if-eqz v9, :cond_0

    .line 138
    iget-object v9, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mLastTouchedItem:Landroid/view/View;

    invoke-virtual {p0, v9}, Lcom/android/launcher2/PagedViewWithDraggableItems;->beginDragging(Landroid/view/View;)Z

    .line 141
    iget-boolean v9, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mAllowLongPress:Z

    if-eqz v9, :cond_0

    .line 142
    iput-boolean v11, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mAllowLongPress:Z

    .line 146
    iget v9, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mCurrentPage:I

    invoke-virtual {p0, v9}, Lcom/android/launcher2/PagedViewWithDraggableItems;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 147
    .local v0, currentPage:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 152
    .end local v0           #currentPage:Landroid/view/View;
    :cond_0
    return-void

    .end local v1           #isUpwardMotion:Z
    .end local v8           #yMoved:Z
    :cond_1
    move v8, v11

    .line 133
    goto :goto_0

    .restart local v8       #yMoved:Z
    :cond_2
    move v1, v11

    .line 134
    goto :goto_1
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "ev"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mIsDragging:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/launcher2/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    .line 115
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWithDraggableItems;->cancelDragging()V

    .line 161
    invoke-super {p0}, Lcom/android/launcher2/PagedView;->onDetachedFromWindow()V

    .line 162
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedViewWithDraggableItems;->handleTouchEvent(Landroid/view/MotionEvent;)V

    .line 83
    invoke-super {p0, p1}, Lcom/android/launcher2/PagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 105
    :goto_0
    return v0

    .line 104
    :cond_0
    iget v0, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedViewWithDraggableItems;->beginDragging(Landroid/view/View;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mLastTouchedItem:Landroid/view/View;

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mIsDragEnabled:Z

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedViewWithDraggableItems;->handleTouchEvent(Landroid/view/MotionEvent;)V

    .line 89
    invoke-super {p0, p1}, Lcom/android/launcher2/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setDragSlopeThreshold(F)V
    .locals 0
    .parameter "dragSlopeThreshold"

    .prologue
    .line 155
    iput p1, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mDragSlopeThreshold:F

    .line 156
    return-void
.end method
