.class public Lcom/android/vending/velvet/PortraitCarouselView;
.super Lcom/android/vending/velvet/CarouselView;
.source "PortraitCarouselView.java"


# instance fields
.field private mArcCurvature:I

.field private mBackgroundColor:I

.field private final mDropShadowSize:I

.field private mHasBackgroundColor:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/vending/velvet/CarouselView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vending/velvet/PortraitCarouselView;->mHasBackgroundColor:Z

    .line 38
    iget v0, p0, Lcom/android/vending/velvet/PortraitCarouselView;->mScreenScaleFactor:F

    const/high16 v1, 0x40c0

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/vending/velvet/PortraitCarouselView;->mDropShadowSize:I

    .line 39
    return-void
.end method


# virtual methods
.method protected drawBackground(Landroid/graphics/Canvas;II)V
    .locals 7
    .parameter "canvas"
    .parameter "canvasWidth"
    .parameter "canvasHeight"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/vending/velvet/PortraitCarouselView;->mHasBackgroundColor:Z

    if-eqz v0, :cond_0

    .line 50
    iget v0, p0, Lcom/android/vending/velvet/PortraitCarouselView;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/android/vending/velvet/PortraitCarouselView;->getOffsetForDropShadowBlending()I

    move-result v6

    .line 54
    .local v6, offsetForDropShadowBleeding:I
    invoke-virtual {p0, p3, v6}, Lcom/android/vending/velvet/PortraitCarouselView;->getArcStartY(II)I

    move-result v3

    .line 55
    .local v3, arcStart:I
    invoke-virtual {p0, p3, v6}, Lcom/android/vending/velvet/PortraitCarouselView;->getArcEndY(II)I

    move-result v4

    .line 56
    .local v4, arcEnd:I
    iget v5, p0, Lcom/android/vending/velvet/PortraitCarouselView;->mDropShadowSize:I

    move-object v0, p1

    move v1, p2

    move v2, p3

    invoke-static/range {v0 .. v5}, Lcom/android/vending/velvet/ArcPaintingUtils;->drawBackgroundWithCurvedBottom(Landroid/graphics/Canvas;IIIII)V

    .line 58
    invoke-static {p1, p2, p3}, Lcom/android/vending/velvet/ArcPaintingUtils;->drawTrackerOverlay(Landroid/graphics/Canvas;II)V

    .line 59
    return-void
.end method

.method getArcEndY(II)I
    .locals 1
    .parameter "canvasHeight"
    .parameter "offsetForDropShadowBleeding"

    .prologue
    .line 159
    iget v0, p0, Lcom/android/vending/velvet/PortraitCarouselView;->mDropShadowSize:I

    sub-int v0, p1, v0

    sub-int/2addr v0, p2

    return v0
.end method

.method getArcStartY(II)I
    .locals 2
    .parameter "canvasHeight"
    .parameter "offsetForDropShadowBleeding"

    .prologue
    .line 163
    iget v0, p0, Lcom/android/vending/velvet/PortraitCarouselView;->mArcCurvature:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/vending/velvet/PortraitCarouselView;->mDropShadowSize:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, p2

    return v0
.end method

.method public getLayoutOverlapInPixels()I
    .locals 2

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/vending/velvet/PortraitCarouselView;->getOffsetForDropShadowBlending()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/velvet/PortraitCarouselView;->getArcStartY(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method protected getThumbnailMidY(I)F
    .locals 4
    .parameter "canvasHeight"

    .prologue
    .line 171
    iget-object v2, p0, Lcom/android/vending/velvet/PortraitCarouselView;->mTitleArea:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    .line 172
    .local v1, titleAreaBottom:I
    const/high16 v2, 0x4080

    iget v3, p0, Lcom/android/vending/velvet/PortraitCarouselView;->mScreenScaleFactor:F

    mul-float v0, v2, v3

    .line 173
    .local v0, margin:F
    int-to-float v2, v1

    add-float/2addr v2, v0

    invoke-virtual {p0}, Lcom/android/vending/velvet/PortraitCarouselView;->getHalfBitmapHeightInPixels()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 18
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/PortraitCarouselView;->mTitleArea:Landroid/view/ViewGroup;

    move-object v13, v0

    if-eqz v13, :cond_0

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/PortraitCarouselView;->mTitleArea:Landroid/view/ViewGroup;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v10

    .line 108
    .local v10, measuredWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/PortraitCarouselView;->mTitleArea:Landroid/view/ViewGroup;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v9

    .line 109
    .local v9, measuredHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/PortraitCarouselView;->mTitleArea:Landroid/view/ViewGroup;

    move-object v13, v0

    add-int v14, p2, v10

    add-int v15, p3, v9

    move-object v0, v13

    move/from16 v1, p2

    move/from16 v2, p3

    move v3, v14

    move v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 111
    .end local v9           #measuredHeight:I
    .end local v10           #measuredWidth:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/PortraitCarouselView;->mFooterArea:Landroid/view/ViewGroup;

    move-object v13, v0

    if-eqz v13, :cond_2

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/PortraitCarouselView;->mFooterArea:Landroid/view/ViewGroup;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v10

    .line 113
    .restart local v10       #measuredWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/PortraitCarouselView;->mFooterArea:Landroid/view/ViewGroup;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v9

    .line 114
    .restart local v9       #measuredHeight:I
    sub-int v13, p5, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/velvet/PortraitCarouselView;->getOffsetForDropShadowBlending()I

    move-result v14

    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/velvet/PortraitCarouselView;->getArcStartY(II)I

    move-result v5

    .line 116
    .local v5, arcStart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/PortraitCarouselView;->mFooterArea:Landroid/view/ViewGroup;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/android/vending/velvet/ArcView$LayoutParams;

    .line 117
    .local v8, lp:Lcom/android/vending/velvet/ArcView$LayoutParams;
    iget v7, v8, Lcom/android/vending/velvet/ArcView$LayoutParams;->gravity:I

    .line 118
    .local v7, gravity:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/PortraitCarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    move-object v13, v0

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/PortraitCarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    move-object v13, v0

    array-length v13, v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/PortraitCarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    move-object v13, v0

    const/4 v14, 0x0

    aget-object v13, v13, v14

    iget-object v13, v13, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->centerY()I

    move-result v13

    if-nez v13, :cond_5

    .line 123
    :cond_1
    const/4 v13, 0x5

    if-ne v7, v13, :cond_4

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/PortraitCarouselView;->mTitleArea:Landroid/view/ViewGroup;

    move-object v13, v0

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/PortraitCarouselView;->mTitleArea:Landroid/view/ViewGroup;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v13

    move v11, v13

    .line 125
    .local v11, reservedHeight:I
    :goto_0
    sub-int v13, v5, v11

    sub-int/2addr v13, v9

    div-int/lit8 v6, v13, 0x2

    .line 126
    .local v6, delta:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/PortraitCarouselView;->mFooterArea:Landroid/view/ViewGroup;

    move-object v13, v0

    add-int v14, v11, v6

    sub-int v15, v5, v6

    move-object v0, v13

    move/from16 v1, p2

    move v2, v14

    move/from16 v3, p4

    move v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 156
    .end local v5           #arcStart:I
    .end local v6           #delta:I
    .end local v7           #gravity:I
    .end local v8           #lp:Lcom/android/vending/velvet/ArcView$LayoutParams;
    .end local v9           #measuredHeight:I
    .end local v10           #measuredWidth:I
    .end local v11           #reservedHeight:I
    :cond_2
    :goto_1
    return-void

    .line 124
    .restart local v5       #arcStart:I
    .restart local v7       #gravity:I
    .restart local v8       #lp:Lcom/android/vending/velvet/ArcView$LayoutParams;
    .restart local v9       #measuredHeight:I
    .restart local v10       #measuredWidth:I
    :cond_3
    const/4 v13, 0x0

    move v11, v13

    goto :goto_0

    .line 128
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/PortraitCarouselView;->mFooterArea:Landroid/view/ViewGroup;

    move-object v13, v0

    sub-int v14, v5, v9

    add-int v15, p2, v10

    move-object v0, v13

    move/from16 v1, p2

    move v2, v14

    move v3, v15

    move v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->layout(IIII)V

    goto :goto_1

    .line 133
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/PortraitCarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    move-object v13, v0

    const/4 v14, 0x0

    aget-object v13, v13, v14

    iget-object v13, v13, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->centerY()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/velvet/PortraitCarouselView;->getHalfBitmapHeightInPixels()I

    move-result v14

    add-int v12, v13, v14

    .line 135
    .local v12, thumbnailBottomY:I
    packed-switch v7, :pswitch_data_0

    .line 153
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/PortraitCarouselView;->mFooterArea:Landroid/view/ViewGroup;

    move-object v13, v0

    sub-int v14, v5, v9

    add-int v15, p2, v10

    move-object v0, v13

    move/from16 v1, p2

    move v2, v14

    move v3, v15

    move v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->layout(IIII)V

    goto :goto_1

    .line 137
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/PortraitCarouselView;->mFooterArea:Landroid/view/ViewGroup;

    move-object v13, v0

    add-int v14, p2, v10

    add-int v15, v12, v9

    move-object v0, v13

    move/from16 v1, p2

    move v2, v12

    move v3, v14

    move v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->layout(IIII)V

    goto :goto_1

    .line 141
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/PortraitCarouselView;->mFooterArea:Landroid/view/ViewGroup;

    move-object v13, v0

    add-int v14, v5, v12

    div-int/lit8 v14, v14, 0x2

    div-int/lit8 v15, v9, 0x2

    sub-int/2addr v14, v15

    add-int v15, p2, v10

    add-int v16, v5, v12

    div-int/lit8 v16, v16, 0x2

    div-int/lit8 v17, v9, 0x2

    add-int v16, v16, v17

    move-object v0, v13

    move/from16 v1, p2

    move v2, v14

    move v3, v15

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->layout(IIII)V

    goto :goto_1

    .line 147
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/PortraitCarouselView;->mFooterArea:Landroid/view/ViewGroup;

    move-object v13, v0

    add-int v14, p2, v10

    move-object v0, v13

    move/from16 v1, p2

    move v2, v12

    move v3, v14

    move v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->layout(IIII)V

    goto/16 :goto_1

    .line 150
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/PortraitCarouselView;->mFooterArea:Landroid/view/ViewGroup;

    move-object v13, v0

    add-int v14, p2, v10

    move-object v0, v13

    move/from16 v1, p2

    move v2, v12

    move v3, v14

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->layout(IIII)V

    goto/16 :goto_1

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x4000

    .line 63
    invoke-super {p0, p1, p2}, Lcom/android/vending/velvet/CarouselView;->onMeasure(II)V

    .line 65
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    invoke-virtual {p0}, Lcom/android/vending/velvet/PortraitCarouselView;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/android/vending/velvet/PortraitCarouselView;->getPaddingRight()I

    move-result v9

    sub-int v4, v8, v9

    .line 68
    .local v4, origWidthSpecSize:I
    iget v8, p0, Lcom/android/vending/velvet/PortraitCarouselView;->mScreenScaleFactor:F

    const/high16 v9, 0x40c0

    mul-float/2addr v8, v9

    const/high16 v9, 0x3f00

    add-float/2addr v8, v9

    float-to-int v5, v8

    .line 69
    .local v5, padding:I
    iget-object v8, p0, Lcom/android/vending/velvet/PortraitCarouselView;->mTitleArea:Landroid/view/ViewGroup;

    if-eqz v8, :cond_0

    .line 71
    iget-object v8, p0, Lcom/android/vending/velvet/PortraitCarouselView;->mTitleArea:Landroid/view/ViewGroup;

    const v9, 0x7f080118

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 73
    .local v2, marketIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v4, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 74
    .local v7, wSpec:I
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    add-int/2addr v8, v5

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 76
    .local v0, hSpec:I
    iget-object v8, p0, Lcom/android/vending/velvet/PortraitCarouselView;->mTitleArea:Landroid/view/ViewGroup;

    invoke-virtual {v8, v7, v0}, Landroid/view/ViewGroup;->measure(II)V

    .line 79
    .end local v0           #hSpec:I
    .end local v2           #marketIcon:Landroid/graphics/drawable/Drawable;
    .end local v7           #wSpec:I
    :cond_0
    iget-object v8, p0, Lcom/android/vending/velvet/PortraitCarouselView;->mFooterArea:Landroid/view/ViewGroup;

    if-eqz v8, :cond_2

    .line 80
    invoke-static {v4, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 81
    .restart local v7       #wSpec:I
    iget-object v8, p0, Lcom/android/vending/velvet/PortraitCarouselView;->mFooterArea:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/vending/velvet/ArcView$LayoutParams;

    .line 82
    .local v1, lp:Lcom/android/vending/velvet/ArcView$LayoutParams;
    iget v8, p0, Lcom/android/vending/velvet/PortraitCarouselView;->mPaddingTop:I

    iget v9, p0, Lcom/android/vending/velvet/PortraitCarouselView;->mPaddingBottom:I

    add-int/2addr v8, v9

    iget v9, v1, Lcom/android/vending/velvet/ArcView$LayoutParams;->height:I

    invoke-static {p2, v8, v9}, Lcom/android/vending/velvet/PortraitCarouselView;->getChildMeasureSpec(III)I

    move-result v0

    .line 87
    .restart local v0       #hSpec:I
    iget v8, v1, Lcom/android/vending/velvet/ArcView$LayoutParams;->gravity:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_1

    iget-object v8, p0, Lcom/android/vending/velvet/PortraitCarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/vending/velvet/PortraitCarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    array-length v8, v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/vending/velvet/PortraitCarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    aget-object v8, v8, v11

    iget-object v8, v8, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    if-eqz v8, :cond_1

    .line 91
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    invoke-virtual {p0}, Lcom/android/vending/velvet/PortraitCarouselView;->getPaddingTop()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/android/vending/velvet/PortraitCarouselView;->getPaddingBottom()I

    move-result v9

    sub-int v3, v8, v9

    .line 94
    .local v3, origHeightSpecSize:I
    iget-object v8, p0, Lcom/android/vending/velvet/PortraitCarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    aget-object v8, v8, v11

    iget-object v8, v8, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/vending/velvet/PortraitCarouselView;->getHalfBitmapHeightInPixels()I

    move-result v9

    add-int v6, v8, v9

    .line 96
    .local v6, thumbnailBottomY:I
    sub-int v8, v3, v6

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 100
    .end local v3           #origHeightSpecSize:I
    .end local v6           #thumbnailBottomY:I
    :cond_1
    iget-object v8, p0, Lcom/android/vending/velvet/PortraitCarouselView;->mFooterArea:Landroid/view/ViewGroup;

    invoke-virtual {v8, v7, v0}, Landroid/view/ViewGroup;->measure(II)V

    .line 102
    .end local v0           #hSpec:I
    .end local v1           #lp:Lcom/android/vending/velvet/ArcView$LayoutParams;
    .end local v7           #wSpec:I
    :cond_2
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 44
    div-int/lit8 v0, p1, 0x14

    iput v0, p0, Lcom/android/vending/velvet/PortraitCarouselView;->mArcCurvature:I

    .line 45
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .parameter "backgroundColor"

    .prologue
    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vending/velvet/PortraitCarouselView;->mHasBackgroundColor:Z

    .line 190
    iput p1, p0, Lcom/android/vending/velvet/PortraitCarouselView;->mBackgroundColor:I

    .line 191
    return-void
.end method

.method protected setThumbnailClip(Landroid/graphics/Canvas;II)V
    .locals 0
    .parameter "canvas"
    .parameter "canvasWidth"
    .parameter "canvasHeight"

    .prologue
    .line 183
    return-void
.end method
