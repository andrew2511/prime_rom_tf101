.class public Lcom/android/vending/velvet/PortraitOverlappingLayout;
.super Lcom/android/vending/velvet/OverlappingLayout;
.source "PortraitOverlappingLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/vending/velvet/OverlappingLayout;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attributeSet"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/android/vending/velvet/OverlappingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 11
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/vending/velvet/PortraitOverlappingLayout;->getPaddingTop()I

    move-result v3

    .line 68
    .local v3, childTop:I
    invoke-virtual {p0}, Lcom/android/vending/velvet/PortraitOverlappingLayout;->getPaddingLeft()I

    move-result v2

    .line 70
    .local v2, childLeft:I
    sub-int v4, p5, p3

    .line 71
    .local v4, h:I
    sub-int v6, p4, p2

    .line 73
    .local v6, w:I
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/vending/velvet/PortraitOverlappingLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/vending/velvet/ArcView;

    .line 74
    .local v1, child1:Lcom/android/vending/velvet/ArcView;
    add-int v7, v2, v6

    invoke-virtual {v1}, Lcom/android/vending/velvet/ArcView;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {v1, v2, v3, v7, v8}, Lcom/android/vending/velvet/ArcView;->layout(IIII)V

    .line 76
    invoke-virtual {v1}, Lcom/android/vending/velvet/ArcView;->getLayoutOverlapInPixels()I

    move-result v5

    .line 78
    .local v5, overlap:I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/vending/velvet/PortraitOverlappingLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 79
    .local v0, child0:Landroid/view/View;
    invoke-virtual {v1}, Lcom/android/vending/velvet/ArcView;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v7, v5

    add-int v8, v2, v6

    add-int v9, v3, v4

    invoke-virtual {v0, v2, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 83
    iget-object v7, p0, Lcom/android/vending/velvet/PortraitOverlappingLayout;->mCarouselPadder:Landroid/view/View;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/vending/velvet/PortraitOverlappingLayout;->mCarouselPadder:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v7, p0, Lcom/android/vending/velvet/PortraitOverlappingLayout;->mCarouselPadder:Landroid/view/View;

    iget-object v8, p0, Lcom/android/vending/velvet/PortraitOverlappingLayout;->mCarouselPadder:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    iget-object v9, p0, Lcom/android/vending/velvet/PortraitOverlappingLayout;->mCarouselPadder:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    iget-object v10, p0, Lcom/android/vending/velvet/PortraitOverlappingLayout;->mCarouselPadder:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    invoke-virtual {v7, v8, v5, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 18
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 25
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    .line 26
    .local v14, widthSpecMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 28
    .local v11, heightSpecMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/velvet/PortraitOverlappingLayout;->getPaddingLeft()I

    move-result v17

    sub-int v16, v16, v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/velvet/PortraitOverlappingLayout;->getPaddingRight()I

    move-result v17

    sub-int v15, v16, v17

    .line 30
    .local v15, widthSpecSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/velvet/PortraitOverlappingLayout;->getPaddingTop()I

    move-result v17

    sub-int v16, v16, v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/velvet/PortraitOverlappingLayout;->getPaddingBottom()I

    move-result v17

    sub-int v12, v16, v17

    .line 33
    .local v12, heightSpecSize:I
    if-eqz v14, :cond_0

    if-nez v11, :cond_1

    .line 34
    :cond_0
    new-instance v16, Ljava/lang/RuntimeException;

    const-string v17, "PortraitOverlappingLayout cannot have UNSPECIFIED dimensions"

    invoke-direct/range {v16 .. v17}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 38
    :cond_1
    const/high16 v16, 0x4000

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 40
    .local v10, childWidthMeasureSpec:I
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/vending/velvet/PortraitOverlappingLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/vending/velvet/ArcView;

    .line 41
    .local v5, child1:Lcom/android/vending/velvet/ArcView;
    invoke-virtual {v5}, Lcom/android/vending/velvet/ArcView;->getLayoutOverlapInPixels()I

    move-result v13

    .line 43
    .local v13, overlap:I
    invoke-virtual {v5}, Lcom/android/vending/velvet/ArcView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/vending/velvet/OverlappingLayout$LayoutParams;

    .line 45
    .local v9, child1LayoutParams:Lcom/android/vending/velvet/OverlappingLayout$LayoutParams;
    iget v6, v9, Lcom/android/vending/velvet/OverlappingLayout$LayoutParams;->arcSpan:I

    .line 47
    .local v6, child1ArcSpan:I
    const/16 v16, 0x1

    move v0, v6

    move/from16 v1, v16

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/PortraitOverlappingLayout;->mPaddingTop:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/PortraitOverlappingLayout;->mPaddingBottom:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move-object v0, v9

    iget v0, v0, Lcom/android/vending/velvet/OverlappingLayout$LayoutParams;->height:I

    move/from16 v17, v0

    move/from16 v0, p2

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/vending/velvet/PortraitOverlappingLayout;->getChildMeasureSpec(III)I

    move-result v16

    invoke-static/range {v16 .. v16}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    add-int v16, v16, v13

    move/from16 v7, v16

    .line 52
    .local v7, child1Height:I
    :goto_0
    const/high16 v16, 0x4000

    move v0, v7

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 54
    .local v8, child1HeightMeasureSpec:I
    invoke-virtual {v5, v10, v8}, Lcom/android/vending/velvet/ArcView;->measure(II)V

    .line 56
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/vending/velvet/PortraitOverlappingLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 57
    .local v3, child0:Landroid/view/View;
    sub-int v16, v12, v7

    add-int v16, v16, v13

    const/high16 v17, 0x4000

    invoke-static/range {v16 .. v17}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 59
    .local v4, child0HeightMeasureSpec:I
    invoke-virtual {v3, v10, v4}, Landroid/view/View;->measure(II)V

    .line 61
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/velvet/PortraitOverlappingLayout;->setMeasuredDimension(II)V

    .line 63
    return-void

    .line 47
    .end local v3           #child0:Landroid/view/View;
    .end local v4           #child0HeightMeasureSpec:I
    .end local v7           #child1Height:I
    .end local v8           #child1HeightMeasureSpec:I
    :cond_2
    div-int/lit8 v16, v12, 0x2

    move/from16 v7, v16

    goto :goto_0
.end method
