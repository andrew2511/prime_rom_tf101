.class public Lcom/android/gallery3d/ui/SlotView$Layout;
.super Ljava/lang/Object;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Layout"
.end annotation


# instance fields
.field private mContentLength:I

.field private mHeight:I

.field private mHorizontalGap:I

.field private mHorizontalPadding:I

.field private mScrollPosition:I

.field private mSlotCount:I

.field private mSlotHeight:I

.field private mSlotWidth:I

.field private mUnitCount:I

.field private mVerticalGap:I

.field private mVerticalPadding:I

.field private mVisibleEnd:I

.field private mVisibleStart:I

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/SlotView$Layout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 357
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    return v0
.end method

.method private initLayoutParameters()V
    .locals 8

    .prologue
    .line 456
    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 458
    .local v7, padding:[I
    iget v1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mWidth:I

    iget v2, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHeight:I

    iget v3, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHorizontalGap:I

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVerticalGap:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/gallery3d/ui/SlotView$Layout;->initLayoutParameters(IIIIII[I)V

    .line 460
    const/4 v0, 0x0

    aget v0, v7, v0

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVerticalPadding:I

    .line 461
    const/4 v0, 0x1

    aget v0, v7, v0

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHorizontalPadding:I

    .line 468
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SlotView$Layout;->updateVisibleSlotRange()V

    .line 469
    return-void
.end method

.method private initLayoutParameters(IIIIII[I)V
    .locals 8
    .parameter "majorLength"
    .parameter "minorLength"
    .parameter "majorUnitSize"
    .parameter "minorUnitSize"
    .parameter "majorGap"
    .parameter "minorGap"
    .parameter "padding"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 437
    add-int v2, p6, p4

    .line 438
    .local v2, slotSize:I
    add-int v4, p2, p6

    div-int v3, v4, v2

    .line 439
    .local v3, unitCount:I
    if-nez v3, :cond_0

    const/4 v3, 0x1

    .line 440
    :cond_0
    iput v3, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    .line 443
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 444
    .local v0, availableUnits:I
    mul-int v4, v0, v2

    sub-int v4, p2, v4

    sub-int/2addr v4, p6

    div-int/lit8 v4, v4, 0x2

    aput v4, p7, v6

    .line 447
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    add-int/2addr v4, v5

    sub-int/2addr v4, v7

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    div-int v1, v4, v5

    .line 448
    .local v1, count:I
    add-int v4, p3, p5

    mul-int/2addr v4, v1

    add-int/2addr v4, p5

    iput v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mContentLength:I

    .line 452
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mContentLength:I

    sub-int v4, p1, v4

    div-int/lit8 v4, v4, 0x2

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, p7, v7

    .line 453
    return-void
.end method

.method private setVisibleRange(II)V
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 502
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleStart:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleEnd:I

    if-ne p2, v0, :cond_0

    .line 509
    :goto_0
    return-void

    .line 503
    :cond_0
    if-ge p1, p2, :cond_1

    .line 504
    iput p1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleStart:I

    .line 505
    iput p2, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleEnd:I

    goto :goto_0

    .line 507
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleEnd:I

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleStart:I

    goto :goto_0
.end method

.method private updateVisibleSlotRange()V
    .locals 8

    .prologue
    .line 478
    iget v2, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mScrollPosition:I

    .line 481
    .local v2, position:I
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHorizontalGap:I

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    add-int v0, v4, v5

    .line 482
    .local v0, colWidth:I
    const/4 v4, 0x0

    div-int v5, v2, v0

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    mul-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 483
    .local v3, start:I
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mWidth:I

    add-int/2addr v6, v2

    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    add-int/2addr v6, v7

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    mul-int/2addr v5, v6

    div-int/2addr v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 485
    .local v1, end:I
    invoke-direct {p0, v3, v1}, Lcom/android/gallery3d/ui/SlotView$Layout;->setVisibleRange(II)V

    .line 493
    return-void
.end method


# virtual methods
.method public getScrollLimit()I
    .locals 3

    .prologue
    .line 545
    iget v1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mContentLength:I

    iget v2, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mWidth:I

    sub-int v0, v1, v2

    .line 546
    .local v0, limit:I
    if-gtz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method public getSlotIndexByPosition(FF)I
    .locals 12
    .parameter "x"
    .parameter "y"

    .prologue
    const-wide/high16 v10, 0x3fe0

    const/4 v9, -0x1

    .line 520
    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHorizontalGap:I

    iget v8, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    add-int v3, v7, v8

    .line 521
    .local v3, columnWidth:I
    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mScrollPosition:I

    int-to-float v7, v7

    add-float v0, p1, v7

    .line 522
    .local v0, absoluteX:F
    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHorizontalPadding:I

    int-to-float v7, v7

    sub-float/2addr v0, v7

    .line 523
    float-to-double v7, v0

    add-double/2addr v7, v10

    double-to-int v7, v7

    div-int v2, v7, v3

    .line 524
    .local v2, columnIdx:I
    mul-int v7, v3, v2

    int-to-float v7, v7

    sub-float v7, v0, v7

    iget v8, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHorizontalGap:I

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_1

    .line 529
    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVerticalGap:I

    iget v8, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    add-int v5, v7, v8

    .line 530
    .local v5, rowHeight:I
    const/4 v7, 0x0

    add-float v1, p2, v7

    .line 531
    .local v1, absoluteY:F
    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVerticalPadding:I

    int-to-float v7, v7

    sub-float/2addr v1, v7

    .line 532
    float-to-double v7, v1

    add-double/2addr v7, v10

    double-to-int v7, v7

    div-int v6, v7, v5

    .line 533
    .local v6, rowIdx:I
    mul-int v7, v5, v6

    int-to-float v7, v7

    sub-float v7, v1, v7

    iget v8, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVerticalGap:I

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_0

    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    if-lt v6, v7, :cond_2

    :cond_0
    move v7, v9

    .line 541
    .end local v1           #absoluteY:F
    .end local v5           #rowHeight:I
    .end local v6           #rowIdx:I
    :goto_0
    return v7

    :cond_1
    move v7, v9

    .line 526
    goto :goto_0

    .line 537
    .restart local v1       #absoluteY:F
    .restart local v5       #rowHeight:I
    .restart local v6       #rowIdx:I
    :cond_2
    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    mul-int/2addr v7, v2

    add-int v4, v7, v6

    .line 541
    .local v4, index:I
    iget v7, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    if-lt v4, v7, :cond_3

    move v7, v9

    goto :goto_0

    :cond_3
    move v7, v4

    goto :goto_0
.end method

.method public getSlotRect(I)Landroid/graphics/Rect;
    .locals 7
    .parameter "index"

    .prologue
    .line 401
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    div-int v0, p1, v4

    .line 402
    .local v0, col:I
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mUnitCount:I

    mul-int/2addr v4, v0

    sub-int v1, p1, v4

    .line 408
    .local v1, row:I
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHorizontalGap:I

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v0

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHorizontalGap:I

    add-int v2, v4, v5

    .line 409
    .local v2, x:I
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVerticalGap:I

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v1

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVerticalGap:I

    add-int v3, v4, v5

    .line 410
    .local v3, y:I
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHorizontalPadding:I

    add-int/2addr v2, v4

    .line 411
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVerticalPadding:I

    add-int/2addr v3, v4

    .line 412
    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    add-int/2addr v5, v2

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    add-int/2addr v6, v3

    invoke-direct {v4, v2, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method

.method public getVisibleEnd()I
    .locals 1

    .prologue
    .line 516
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleEnd:I

    return v0
.end method

.method public getVisibleStart()I
    .locals 1

    .prologue
    .line 512
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVisibleStart:I

    return v0
.end method

.method public setScrollPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 496
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mScrollPosition:I

    if-ne v0, p1, :cond_0

    .line 499
    :goto_0
    return-void

    .line 497
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mScrollPosition:I

    .line 498
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SlotView$Layout;->updateVisibleSlotRange()V

    goto :goto_0
.end method

.method public setSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 472
    iput p1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mWidth:I

    .line 473
    iput p2, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHeight:I

    .line 474
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SlotView$Layout;->initLayoutParameters()V

    .line 475
    return-void
.end method

.method public setSlotCount(I)Z
    .locals 3
    .parameter "slotCount"

    .prologue
    .line 385
    iput p1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotCount:I

    .line 386
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHorizontalPadding:I

    .line 387
    .local v0, hPadding:I
    iget v1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVerticalPadding:I

    .line 388
    .local v1, vPadding:I
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SlotView$Layout;->initLayoutParameters()V

    .line 389
    iget v2, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVerticalPadding:I

    if-ne v1, v2, :cond_0

    iget v2, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHorizontalPadding:I

    if-eq v0, v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setSlotGaps(II)V
    .locals 0
    .parameter "horizontalGap"
    .parameter "verticalGap"

    .prologue
    .line 393
    iput p1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mHorizontalGap:I

    .line 394
    iput p2, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mVerticalGap:I

    .line 395
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SlotView$Layout;->initLayoutParameters()V

    .line 396
    return-void
.end method

.method public setSlotSize(II)V
    .locals 0
    .parameter "slotWidth"
    .parameter "slotHeight"

    .prologue
    .line 380
    iput p1, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotWidth:I

    .line 381
    iput p2, p0, Lcom/android/gallery3d/ui/SlotView$Layout;->mSlotHeight:I

    .line 382
    return-void
.end method
