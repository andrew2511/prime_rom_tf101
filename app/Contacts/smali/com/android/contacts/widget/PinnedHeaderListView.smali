.class public Lcom/android/contacts/widget/PinnedHeaderListView;
.super Lcom/android/contacts/widget/AutoScrollListView;
.source "PinnedHeaderListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/widget/PinnedHeaderListView$1;,
        Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;,
        Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeaderAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeaderAdapter;

.field private mAnimating:Z

.field private mAnimationDuration:I

.field private mAnimationTargetTime:J

.field private mBounds:Landroid/graphics/RectF;

.field private mClipRect:Landroid/graphics/Rect;

.field private mHeaderPaddingLeft:I

.field private mHeaderWidth:I

.field private mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

.field private mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mScrollState:I

.field private mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 110
    const/4 v0, 0x0

    const v1, 0x1010074

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/widget/PinnedHeaderListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 114
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/widget/PinnedHeaderListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 118
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/widget/AutoScrollListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mBounds:Landroid/graphics/RectF;

    .line 98
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mClipRect:Landroid/graphics/Rect;

    .line 103
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mAnimationDuration:I

    .line 119
    invoke-super {p0, p0}, Lcom/android/contacts/widget/AutoScrollListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 120
    invoke-super {p0, p0}, Lcom/android/contacts/widget/AutoScrollListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 121
    return-void
.end method

.method private drawHeader(Landroid/graphics/Canvas;Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;J)V
    .locals 7
    .parameter "canvas"
    .parameter "header"
    .parameter "currentTime"

    .prologue
    const/4 v6, 0x0

    .line 496
    iget-boolean v3, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz v3, :cond_0

    .line 497
    iget-wide v3, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->targetTime:J

    sub-long/2addr v3, p3

    long-to-int v1, v3

    .line 498
    .local v1, timeLeft:I
    if-gtz v1, :cond_3

    .line 499
    iget v3, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->targetY:I

    iput v3, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    .line 500
    iget-boolean v3, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->targetVisible:Z

    iput-boolean v3, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 501
    const/4 v3, 0x0

    iput-boolean v3, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 507
    .end local v1           #timeLeft:I
    :cond_0
    :goto_0
    iget-boolean v3, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v3, :cond_2

    .line 508
    iget-object v2, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    .line 509
    .local v2, view:Landroid/view/View;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 510
    .local v0, saveCount:I
    iget v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaderPaddingLeft:I

    int-to-float v3, v3

    iget v4, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 511
    iget v3, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->state:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 512
    iget-object v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mBounds:Landroid/graphics/RectF;

    iget v4, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaderWidth:I

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 513
    iget-object v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mBounds:Landroid/graphics/RectF;

    iget v4, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->alpha:I

    const/16 v5, 0x1f

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 515
    :cond_1
    invoke-virtual {v2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 516
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 518
    .end local v0           #saveCount:I
    .end local v2           #view:Landroid/view/View;
    :cond_2
    return-void

    .line 503
    .restart local v1       #timeLeft:I
    :cond_3
    iget v3, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->targetY:I

    iget v4, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->sourceY:I

    iget v5, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->targetY:I

    sub-int/2addr v4, v5

    mul-int/2addr v4, v1

    iget v5, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mAnimationDuration:I

    div-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, p2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    goto :goto_0
.end method

.method private ensurePinnedHeaderLayout(I)V
    .locals 8
    .parameter "viewIndex"

    .prologue
    const/high16 v7, 0x4000

    const/4 v6, 0x0

    .line 349
    iget-object v5, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v5, v5, p1

    iget-object v3, v5, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    .line 350
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 351
    iget v5, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaderWidth:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 353
    .local v4, widthSpec:I
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 354
    .local v2, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_1

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v5, :cond_1

    .line 355
    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 359
    .local v1, heightSpec:I
    :goto_0
    invoke-virtual {v3, v4, v1}, Landroid/view/View;->measure(II)V

    .line 360
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 361
    .local v0, height:I
    iget-object v5, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v5, v5, p1

    iput v0, v5, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->height:I

    .line 362
    iget v5, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaderWidth:I

    invoke-virtual {v3, v6, v6, v5, v0}, Landroid/view/View;->layout(IIII)V

    .line 364
    .end local v0           #height:I
    .end local v1           #heightSpec:I
    .end local v2           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v4           #widthSpec:I
    :cond_0
    return-void

    .line 357
    .restart local v2       #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .restart local v4       #widthSpec:I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .restart local v1       #heightSpec:I
    goto :goto_0
.end method

.method private invalidateIfAnimating()V
    .locals 2

    .prologue
    .line 433
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mAnimating:Z

    .line 434
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mSize:I

    if-ge v0, v1, :cond_0

    .line 435
    iget-object v1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz v1, :cond_1

    .line 436
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mAnimating:Z

    .line 437
    invoke-virtual {p0}, Lcom/android/contacts/widget/PinnedHeaderListView;->invalidate()V

    .line 441
    :cond_0
    return-void

    .line 434
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private smoothScrollToPartition(I)Z
    .locals 5
    .parameter "partition"

    .prologue
    .line 415
    iget-object v4, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    invoke-interface {v4, p1}, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeaderAdapter;->getScrollPositionForHeader(I)I

    move-result v3

    .line 416
    .local v3, position:I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 417
    const/4 v4, 0x0

    .line 429
    :goto_0
    return v4

    .line 420
    :cond_0
    const/4 v2, 0x0

    .line 421
    .local v2, offset:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, p1, :cond_2

    .line 422
    iget-object v4, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v4, v1

    .line 423
    .local v0, header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    iget-boolean v4, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v4, :cond_1

    .line 424
    iget v4, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v2, v4

    .line 421
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 428
    .end local v0           #header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/widget/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0, v4, v2}, Lcom/android/contacts/widget/PinnedHeaderListView;->smoothScrollToPositionFromTop(II)V

    .line 429
    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 445
    iget-boolean v8, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mAnimating:Z

    if-eqz v8, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-wide v1, v8

    .line 447
    .local v1, currentTime:J
    :goto_0
    const/4 v7, 0x0

    .line 448
    .local v7, top:I
    invoke-virtual {p0}, Lcom/android/contacts/widget/PinnedHeaderListView;->getBottom()I

    move-result v0

    .line 449
    .local v0, bottom:I
    const/4 v3, 0x0

    .line 450
    .local v3, hasVisibleHeaders:Z
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    iget v8, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mSize:I

    if-ge v5, v8, :cond_4

    .line 451
    iget-object v8, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v4, v8, v5

    .line 452
    .local v4, header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    iget-boolean v8, v4, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v8, :cond_0

    .line 453
    const/4 v3, 0x1

    .line 454
    iget v8, v4, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v8, v11, :cond_2

    iget v8, v4, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    if-ge v8, v0, :cond_2

    .line 455
    iget v0, v4, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    .line 450
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 445
    .end local v0           #bottom:I
    .end local v1           #currentTime:J
    .end local v3           #hasVisibleHeaders:Z
    .end local v4           #header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    .end local v5           #i:I
    .end local v7           #top:I
    :cond_1
    const-wide/16 v8, 0x0

    move-wide v1, v8

    goto :goto_0

    .line 456
    .restart local v0       #bottom:I
    .restart local v1       #currentTime:J
    .restart local v3       #hasVisibleHeaders:Z
    .restart local v4       #header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    .restart local v5       #i:I
    .restart local v7       #top:I
    :cond_2
    iget v8, v4, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-eqz v8, :cond_3

    iget v8, v4, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v8, v12, :cond_0

    .line 457
    :cond_3
    iget v8, v4, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iget v9, v4, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int v6, v8, v9

    .line 458
    .local v6, newTop:I
    if-le v6, v7, :cond_0

    .line 459
    move v7, v6

    goto :goto_2

    .line 465
    .end local v4           #header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    .end local v6           #newTop:I
    :cond_4
    if-eqz v3, :cond_5

    .line 466
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 467
    iget-object v8, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mClipRect:Landroid/graphics/Rect;

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/widget/PinnedHeaderListView;->getWidth()I

    move-result v10

    invoke-virtual {v8, v9, v7, v10, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 468
    iget-object v8, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 471
    :cond_5
    invoke-super {p0, p1}, Lcom/android/contacts/widget/AutoScrollListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 473
    if-eqz v3, :cond_a

    .line 474
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 477
    iget v5, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mSize:I

    :cond_6
    :goto_3
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_8

    .line 478
    iget-object v8, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v4, v8, v5

    .line 479
    .restart local v4       #header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    iget-boolean v8, v4, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v8, :cond_6

    iget v8, v4, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-eqz v8, :cond_7

    iget v8, v4, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v8, v12, :cond_6

    .line 480
    :cond_7
    invoke-direct {p0, p1, v4, v1, v2}, Lcom/android/contacts/widget/PinnedHeaderListView;->drawHeader(Landroid/graphics/Canvas;Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;J)V

    goto :goto_3

    .line 484
    .end local v4           #header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    :cond_8
    const/4 v5, 0x0

    :goto_4
    iget v8, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mSize:I

    if-ge v5, v8, :cond_a

    .line 485
    iget-object v8, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v4, v8, v5

    .line 486
    .restart local v4       #header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    iget-boolean v8, v4, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v8, :cond_9

    iget v8, v4, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v8, v11, :cond_9

    .line 487
    invoke-direct {p0, p1, v4, v1, v2}, Lcom/android/contacts/widget/PinnedHeaderListView;->drawHeader(Landroid/graphics/Canvas;Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;J)V

    .line 484
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 492
    .end local v4           #header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    :cond_a
    invoke-direct {p0}, Lcom/android/contacts/widget/PinnedHeaderListView;->invalidateIfAnimating()V

    .line 493
    return-void
.end method

.method public getPinnedHeaderHeight(I)I
    .locals 1
    .parameter "viewIndex"

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lcom/android/contacts/widget/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 242
    iget-object v0, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public getPositionAt(I)I
    .locals 2
    .parameter "y"

    .prologue
    .line 384
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/widget/PinnedHeaderListView;->getPaddingLeft()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/android/contacts/widget/PinnedHeaderListView;->pointToPosition(II)I

    move-result v0

    .line 385
    .local v0, position:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    move v1, v0

    .line 392
    :goto_0
    return v1

    .line 390
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 391
    if-gtz p1, :cond_0

    .line 392
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mSize:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/contacts/widget/AutoScrollListView;->getTopFadingEdgeStrength()F

    move-result v0

    goto :goto_0
.end method

.method public getTotalTopPinnedHeaderHeight()I
    .locals 4

    .prologue
    .line 370
    iget v1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mSize:I

    .local v1, i:I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 371
    iget-object v2, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v2, v1

    .line 372
    .local v0, header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    iget-boolean v2, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-nez v2, :cond_0

    .line 373
    iget v2, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iget v3, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v2, v3

    .line 376
    .end local v0           #header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    .line 397
    iget v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mScrollState:I

    if-nez v3, :cond_2

    .line 398
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 399
    .local v2, y:I
    iget v1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mSize:I

    .local v1, i:I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    .line 400
    iget-object v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v3, v1

    .line 401
    .local v0, header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    iget-boolean v3, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v3, :cond_0

    iget v3, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    if-gt v3, v2, :cond_0

    iget v3, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iget v4, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v3, v4

    if-le v3, v2, :cond_0

    .line 402
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 403
    invoke-direct {p0, v1}, Lcom/android/contacts/widget/PinnedHeaderListView;->smoothScrollToPartition(I)Z

    move-result v3

    .line 411
    .end local v0           #header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    .end local v1           #i:I
    .end local v2           #y:I
    :goto_0
    return v3

    .line 405
    .restart local v0       #header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    .restart local v1       #i:I
    .restart local v2       #y:I
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 411
    .end local v0           #header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    .end local v1           #i:I
    .end local v2           #y:I
    :cond_2
    invoke-super {p0, p1}, Lcom/android/contacts/widget/AutoScrollListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 16
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/widget/PinnedHeaderListView;->getHeight()I

    move-result v10

    .line 204
    .local v10, height:I
    const/4 v15, 0x0

    .line 205
    .local v15, windowTop:I
    move v14, v10

    .line 207
    .local v14, windowBottom:I
    const/4 v12, 0x0

    .line 208
    .local v12, prevHeaderBottom:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/widget/PinnedHeaderListView;->mSize:I

    move v3, v0

    if-ge v11, v3, :cond_2

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    move-object v3, v0

    aget-object v9, v3, v11

    .line 210
    .local v9, header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    iget-boolean v3, v9, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v3, :cond_0

    .line 211
    iget v3, v9, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-nez v3, :cond_1

    .line 212
    iget v3, v9, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iget v4, v9, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int v15, v3, v4

    .line 208
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 213
    :cond_1
    iget v3, v9, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->state:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 214
    iget v14, v9, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    .line 220
    .end local v9           #header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/widget/PinnedHeaderListView;->getSelectedView()Landroid/view/View;

    move-result-object v13

    .line 221
    .local v13, selectedView:Landroid/view/View;
    if-eqz v13, :cond_3

    .line 222
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, v15, :cond_5

    .line 223
    move-object/from16 v0, p0

    move/from16 v1, p3

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/widget/PinnedHeaderListView;->setSelectionFromTop(II)V

    .line 229
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/widget/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v3, v0

    if-eqz v3, :cond_4

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/widget/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v3, v0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-wide/from16 v7, p4

    invoke-interface/range {v3 .. v8}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 232
    :cond_4
    return-void

    .line 224
    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v3, v14, :cond_3

    .line 225
    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int v3, v14, v3

    move-object/from16 v0, p0

    move/from16 v1, p3

    move v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/widget/PinnedHeaderListView;->setSelectionFromTop(II)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 125
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/widget/AutoScrollListView;->onLayout(ZIIII)V

    .line 126
    invoke-virtual {p0}, Lcom/android/contacts/widget/PinnedHeaderListView;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaderPaddingLeft:I

    .line 127
    sub-int v0, p4, p2

    iget v1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaderPaddingLeft:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/contacts/widget/PinnedHeaderListView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaderWidth:I

    .line 128
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p1}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    .line 238
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 7
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    const/4 v5, 0x0

    .line 154
    iget-object v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    if-eqz v3, :cond_4

    .line 155
    iget-object v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    invoke-interface {v3}, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeaderAdapter;->getPinnedHeaderCount()I

    move-result v0

    .line 156
    .local v0, count:I
    iget v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mSize:I

    if-eq v0, v3, :cond_0

    .line 157
    iput v0, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mSize:I

    .line 158
    iget-object v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    if-nez v3, :cond_2

    .line 159
    iget v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mSize:I

    new-array v3, v3, [Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    iput-object v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    .line 167
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mSize:I

    if-ge v2, v3, :cond_3

    .line 168
    iget-object v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v3, v3, v2

    if-nez v3, :cond_1

    .line 169
    iget-object v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    new-instance v4, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;-><init>(Lcom/android/contacts/widget/PinnedHeaderListView$1;)V

    aput-object v4, v3, v2

    .line 171
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    iget-object v5, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    invoke-interface {v4, v2, v5, p0}, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeaderAdapter;->getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, v3, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 160
    .end local v2           #i:I
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    array-length v3, v3

    iget v4, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mSize:I

    if-ge v3, v4, :cond_0

    .line 161
    iget-object v1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    .line 162
    .local v1, headers:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    iget v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mSize:I

    new-array v3, v3, [Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    iput-object v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    .line 163
    iget-object v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    array-length v4, v1

    invoke-static {v1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 174
    .end local v1           #headers:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    .restart local v2       #i:I
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget v5, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mAnimationDuration:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mAnimationTargetTime:J

    .line 175
    iget-object v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    invoke-interface {v3, p0}, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeaderAdapter;->configurePinnedHeaders(Lcom/android/contacts/widget/PinnedHeaderListView;)V

    .line 176
    invoke-direct {p0}, Lcom/android/contacts/widget/PinnedHeaderListView;->invalidateIfAnimating()V

    .line 179
    .end local v0           #count:I
    .end local v2           #i:I
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v3, :cond_5

    .line 180
    iget-object v3, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v3, p0, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 182
    :cond_5
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 191
    iput p2, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mScrollState:I

    .line 192
    iget-object v0, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 195
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/widget/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 136
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    move-object v1, v0

    iput-object v1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    .line 137
    invoke-super {p0, p1}, Lcom/android/contacts/widget/AutoScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    return-void
.end method

.method public setFadingHeader(IIZ)V
    .locals 7
    .parameter "viewIndex"
    .parameter "position"
    .parameter "fade"

    .prologue
    .line 302
    invoke-direct {p0, p1}, Lcom/android/contacts/widget/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 304
    invoke-virtual {p0}, Lcom/android/contacts/widget/PinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, p2, v6

    invoke-virtual {p0, v6}, Lcom/android/contacts/widget/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 305
    .local v1, child:Landroid/view/View;
    if-nez v1, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v2, v6, p1

    .line 308
    .local v2, header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 309
    const/4 v6, 0x2

    iput v6, v2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->state:I

    .line 310
    const/16 v6, 0xff

    iput v6, v2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->alpha:I

    .line 311
    const/4 v6, 0x0

    iput-boolean v6, v2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 313
    invoke-virtual {p0}, Lcom/android/contacts/widget/PinnedHeaderListView;->getTotalTopPinnedHeaderHeight()I

    move-result v5

    .line 314
    .local v5, top:I
    iput v5, v2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    .line 315
    if-eqz p3, :cond_0

    .line 316
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int v0, v6, v5

    .line 317
    .local v0, bottom:I
    iget v3, v2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->height:I

    .line 318
    .local v3, headerHeight:I
    if-ge v0, v3, :cond_0

    .line 319
    sub-int v4, v0, v3

    .line 320
    .local v4, portion:I
    add-int v6, v3, v4

    mul-int/lit16 v6, v6, 0xff

    div-int/2addr v6, v3

    iput v6, v2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->alpha:I

    .line 321
    add-int v6, v5, v4

    iput v6, v2, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    goto :goto_0
.end method

.method public setHeaderInvisible(IZ)V
    .locals 5
    .parameter "viewIndex"
    .parameter "animate"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 333
    iget-object v1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v1, p1

    .line 334
    .local v0, header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    iget-boolean v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v1, :cond_2

    if-nez p2, :cond_0

    iget-boolean v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz v1, :cond_2

    :cond_0
    iget v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v1, v3, :cond_2

    .line 335
    iget v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iput v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->sourceY:I

    .line 336
    iget-boolean v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-nez v1, :cond_1

    .line 337
    iput-boolean v3, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 338
    invoke-virtual {p0}, Lcom/android/contacts/widget/PinnedHeaderListView;->getBottom()I

    move-result v1

    iget v2, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->targetY:I

    .line 340
    :cond_1
    iput-boolean v3, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 341
    iget-wide v1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mAnimationTargetTime:J

    iput-wide v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->targetTime:J

    .line 342
    iput-boolean v4, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->targetVisible:Z

    .line 346
    :goto_0
    return-void

    .line 344
    :cond_2
    iput-boolean v4, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    goto :goto_0
.end method

.method public setHeaderPinnedAtBottom(IIZ)V
    .locals 3
    .parameter "viewIndex"
    .parameter "y"
    .parameter "animate"

    .prologue
    const/4 v2, 0x1

    .line 271
    invoke-direct {p0, p1}, Lcom/android/contacts/widget/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 272
    iget-object v1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v1, p1

    .line 273
    .local v0, header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    iput v2, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->state:I

    .line 274
    iget-boolean v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz v1, :cond_0

    .line 275
    iget-wide v1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mAnimationTargetTime:J

    iput-wide v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->targetTime:J

    .line 276
    iget v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iput v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->sourceY:I

    .line 277
    iput p2, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->targetY:I

    .line 293
    :goto_0
    return-void

    .line 278
    :cond_0
    if-eqz p3, :cond_3

    iget v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    if-ne v1, p2, :cond_1

    iget-boolean v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-nez v1, :cond_3

    .line 279
    :cond_1
    iget-boolean v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v1, :cond_2

    .line 280
    iget v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iput v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->sourceY:I

    .line 285
    :goto_1
    iput-boolean v2, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 286
    iput-boolean v2, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->targetVisible:Z

    .line 287
    iget-wide v1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mAnimationTargetTime:J

    iput-wide v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->targetTime:J

    .line 288
    iput p2, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->targetY:I

    goto :goto_0

    .line 282
    :cond_2
    iput-boolean v2, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 283
    iget v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->sourceY:I

    goto :goto_1

    .line 290
    :cond_3
    iput-boolean v2, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 291
    iput p2, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    goto :goto_0
.end method

.method public setHeaderPinnedAtTop(IIZ)V
    .locals 3
    .parameter "viewIndex"
    .parameter "y"
    .parameter "animate"

    .prologue
    const/4 v2, 0x0

    .line 253
    invoke-direct {p0, p1}, Lcom/android/contacts/widget/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 254
    iget-object v1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v1, p1

    .line 255
    .local v0, header:Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 256
    iput p2, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->y:I

    .line 257
    iput v2, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->state:I

    .line 260
    iput-boolean v2, v0, Lcom/android/contacts/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 261
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 149
    invoke-super {p0, p0}, Lcom/android/contacts/widget/AutoScrollListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 150
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .parameter "onScrollListener"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/contacts/widget/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 143
    invoke-super {p0, p0}, Lcom/android/contacts/widget/AutoScrollListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 144
    return-void
.end method
