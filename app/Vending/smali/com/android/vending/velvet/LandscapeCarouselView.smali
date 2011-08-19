.class public Lcom/android/vending/velvet/LandscapeCarouselView;
.super Lcom/android/vending/velvet/CarouselView;
.source "LandscapeCarouselView.java"


# instance fields
.field private mArcCurvature:I

.field private final mClipArcRectangle:Landroid/graphics/RectF;

.field private final mClipPath:Landroid/graphics/Path;

.field private final mDropShadowSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/vending/velvet/CarouselView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/vending/velvet/LandscapeCarouselView;->mClipPath:Landroid/graphics/Path;

    .line 40
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/vending/velvet/LandscapeCarouselView;->mClipArcRectangle:Landroid/graphics/RectF;

    .line 42
    iget v0, p0, Lcom/android/vending/velvet/LandscapeCarouselView;->mScreenScaleFactor:F

    const/high16 v1, 0x40c0

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/vending/velvet/LandscapeCarouselView;->mDropShadowSize:I

    .line 43
    return-void
.end method

.method private getArcEndX(II)I
    .locals 1
    .parameter "canvasWidth"
    .parameter "offsetForDropShadowBleeding"

    .prologue
    .line 159
    iget v0, p0, Lcom/android/vending/velvet/LandscapeCarouselView;->mDropShadowSize:I

    sub-int v0, p1, v0

    sub-int/2addr v0, p2

    return v0
.end method

.method private getArcStartX(II)I
    .locals 2
    .parameter "canvasWidth"
    .parameter "offsetForDropShadowBleeding"

    .prologue
    .line 163
    iget v0, p0, Lcom/android/vending/velvet/LandscapeCarouselView;->mArcCurvature:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/vending/velvet/LandscapeCarouselView;->mDropShadowSize:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, p2

    return v0
.end method


# virtual methods
.method protected drawBackground(Landroid/graphics/Canvas;II)V
    .locals 7
    .parameter "canvas"
    .parameter "canvasWidth"
    .parameter "canvasHeight"

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/vending/velvet/LandscapeCarouselView;->getOffsetForDropShadowBlending()I

    move-result v6

    .line 54
    .local v6, offsetForDropShadowBleeding:I
    invoke-direct {p0, p2, v6}, Lcom/android/vending/velvet/LandscapeCarouselView;->getArcStartX(II)I

    move-result v3

    .line 55
    .local v3, arcStart:I
    invoke-direct {p0, p2, v6}, Lcom/android/vending/velvet/LandscapeCarouselView;->getArcEndX(II)I

    move-result v4

    .line 57
    .local v4, arcEnd:I
    iget v5, p0, Lcom/android/vending/velvet/LandscapeCarouselView;->mDropShadowSize:I

    move-object v0, p1

    move v1, p2

    move v2, p3

    invoke-static/range {v0 .. v5}, Lcom/android/vending/velvet/ArcPaintingUtils;->drawBackgroundWithCurvedRight(Landroid/graphics/Canvas;IIIII)V

    .line 59
    invoke-static {p1, p2, p3}, Lcom/android/vending/velvet/ArcPaintingUtils;->drawTrackerOverlay(Landroid/graphics/Canvas;II)V

    .line 60
    return-void
.end method

.method public getLayoutOverlapInPixels()I
    .locals 2

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/vending/velvet/LandscapeCarouselView;->getOffsetForDropShadowBlending()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/vending/velvet/LandscapeCarouselView;->getArcStartX(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method protected getThumbnailMidY(I)F
    .locals 2
    .parameter "canvasHeight"

    .prologue
    .line 168
    int-to-float v0, p1

    const/high16 v1, 0x4040

    div-float/2addr v0, v1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 17
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/LandscapeCarouselView;->mTitleArea:Landroid/view/ViewGroup;

    move-object v12, v0

    if-eqz v12, :cond_0

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/LandscapeCarouselView;->mTitleArea:Landroid/view/ViewGroup;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v9

    .line 115
    .local v9, measuredWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/LandscapeCarouselView;->mTitleArea:Landroid/view/ViewGroup;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v8

    .line 116
    .local v8, measuredHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/LandscapeCarouselView;->mTitleArea:Landroid/view/ViewGroup;

    move-object v12, v0

    add-int v13, p2, v9

    add-int v14, p3, v8

    move-object v0, v12

    move/from16 v1, p2

    move/from16 v2, p3

    move v3, v13

    move v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 118
    .end local v8           #measuredHeight:I
    .end local v9           #measuredWidth:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/LandscapeCarouselView;->mFooterArea:Landroid/view/ViewGroup;

    move-object v12, v0

    if-eqz v12, :cond_2

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/LandscapeCarouselView;->mFooterArea:Landroid/view/ViewGroup;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v9

    .line 120
    .restart local v9       #measuredWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/LandscapeCarouselView;->mFooterArea:Landroid/view/ViewGroup;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v8

    .line 122
    .restart local v8       #measuredHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/LandscapeCarouselView;->mFooterArea:Landroid/view/ViewGroup;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/vending/velvet/ArcView$LayoutParams;

    .line 123
    .local v7, lp:Lcom/android/vending/velvet/ArcView$LayoutParams;
    iget v6, v7, Lcom/android/vending/velvet/ArcView$LayoutParams;->gravity:I

    .line 124
    .local v6, gravity:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/LandscapeCarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    move-object v12, v0

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/LandscapeCarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    move-object v12, v0

    array-length v12, v12

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/LandscapeCarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    move-object v12, v0

    const/4 v13, 0x0

    aget-object v12, v12, v13

    iget-object v12, v12, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->centerY()I

    move-result v12

    if-nez v12, :cond_5

    .line 129
    :cond_1
    const/4 v12, 0x5

    if-ne v6, v12, :cond_4

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/LandscapeCarouselView;->mTitleArea:Landroid/view/ViewGroup;

    move-object v12, v0

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/LandscapeCarouselView;->mTitleArea:Landroid/view/ViewGroup;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v12

    move v10, v12

    .line 131
    .local v10, reservedHeight:I
    :goto_0
    sub-int v12, p5, v10

    sub-int/2addr v12, v8

    div-int/lit8 v5, v12, 0x2

    .line 132
    .local v5, delta:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/LandscapeCarouselView;->mFooterArea:Landroid/view/ViewGroup;

    move-object v12, v0

    add-int v13, v10, v5

    sub-int v14, p5, v5

    move-object v0, v12

    move/from16 v1, p2

    move v2, v13

    move/from16 v3, p4

    move v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 156
    .end local v5           #delta:I
    .end local v6           #gravity:I
    .end local v7           #lp:Lcom/android/vending/velvet/ArcView$LayoutParams;
    .end local v8           #measuredHeight:I
    .end local v9           #measuredWidth:I
    .end local v10           #reservedHeight:I
    :cond_2
    :goto_1
    return-void

    .line 130
    .restart local v6       #gravity:I
    .restart local v7       #lp:Lcom/android/vending/velvet/ArcView$LayoutParams;
    .restart local v8       #measuredHeight:I
    .restart local v9       #measuredWidth:I
    :cond_3
    const/4 v12, 0x0

    move v10, v12

    goto :goto_0

    .line 134
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/LandscapeCarouselView;->mFooterArea:Landroid/view/ViewGroup;

    move-object v12, v0

    sub-int v13, p5, v8

    add-int v14, p2, v9

    move-object v0, v12

    move/from16 v1, p2

    move v2, v13

    move v3, v14

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->layout(IIII)V

    goto :goto_1

    .line 138
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/LandscapeCarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    move-object v12, v0

    const/4 v13, 0x0

    aget-object v12, v12, v13

    iget-object v12, v12, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->centerY()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/velvet/LandscapeCarouselView;->getHalfBitmapHeightInPixels()I

    move-result v13

    add-int v11, v12, v13

    .line 140
    .local v11, thumbnailBottomY:I
    packed-switch v6, :pswitch_data_0

    .line 153
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/LandscapeCarouselView;->mFooterArea:Landroid/view/ViewGroup;

    move-object v12, v0

    sub-int v13, p5, v8

    add-int v14, p2, v9

    move-object v0, v12

    move/from16 v1, p2

    move v2, v13

    move v3, v14

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->layout(IIII)V

    goto :goto_1

    .line 142
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/LandscapeCarouselView;->mFooterArea:Landroid/view/ViewGroup;

    move-object v12, v0

    add-int v13, p2, v9

    add-int v14, v11, v8

    move-object v0, v12

    move/from16 v1, p2

    move v2, v11

    move v3, v13

    move v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->layout(IIII)V

    goto :goto_1

    .line 146
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/LandscapeCarouselView;->mFooterArea:Landroid/view/ViewGroup;

    move-object v12, v0

    add-int v13, p2, v9

    move-object v0, v12

    move/from16 v1, p2

    move v2, v11

    move v3, v13

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->layout(IIII)V

    goto :goto_1

    .line 149
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/LandscapeCarouselView;->mFooterArea:Landroid/view/ViewGroup;

    move-object v12, v0

    add-int v13, p5, v11

    div-int/lit8 v13, v13, 0x2

    div-int/lit8 v14, v8, 0x2

    sub-int/2addr v13, v14

    add-int v14, p2, v9

    add-int v15, p5, v11

    div-int/lit8 v15, v15, 0x2

    div-int/lit8 v16, v8, 0x2

    add-int v15, v15, v16

    move-object v0, v12

    move/from16 v1, p2

    move v2, v13

    move v3, v14

    move v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->layout(IIII)V

    goto/16 :goto_1

    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Lcom/android/vending/velvet/CarouselView;->onMeasure(II)V

    .line 66
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    invoke-virtual {p0}, Lcom/android/vending/velvet/LandscapeCarouselView;->getPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/android/vending/velvet/LandscapeCarouselView;->getPaddingRight()I

    move-result v11

    sub-int v6, v10, v11

    .line 68
    .local v6, origWidthSpecSize:I
    iget v10, p0, Lcom/android/vending/velvet/LandscapeCarouselView;->mScreenScaleFactor:F

    const/high16 v11, 0x40c0

    mul-float/2addr v10, v11

    const/high16 v11, 0x3f00

    add-float/2addr v10, v11

    float-to-int v7, v10

    .line 70
    .local v7, padding:I
    invoke-virtual {p0}, Lcom/android/vending/velvet/LandscapeCarouselView;->getOffsetForDropShadowBlending()I

    move-result v10

    invoke-direct {p0, v6, v10}, Lcom/android/vending/velvet/LandscapeCarouselView;->getArcStartX(II)I

    move-result v0

    .line 72
    .local v0, arcStart:I
    iget-object v10, p0, Lcom/android/vending/velvet/LandscapeCarouselView;->mTitleArea:Landroid/view/ViewGroup;

    if-eqz v10, :cond_0

    .line 74
    iget-object v10, p0, Lcom/android/vending/velvet/LandscapeCarouselView;->mTitleArea:Landroid/view/ViewGroup;

    const v11, 0x7f080118

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 76
    .local v4, marketIcon:Landroid/graphics/drawable/Drawable;
    const/high16 v10, 0x4000

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 77
    .local v9, wSpec:I
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    add-int/2addr v10, v7

    const/high16 v11, 0x4000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 79
    .local v1, hSpec:I
    iget-object v10, p0, Lcom/android/vending/velvet/LandscapeCarouselView;->mTitleArea:Landroid/view/ViewGroup;

    invoke-virtual {v10, v9, v1}, Landroid/view/ViewGroup;->measure(II)V

    .line 82
    .end local v1           #hSpec:I
    .end local v4           #marketIcon:Landroid/graphics/drawable/Drawable;
    .end local v9           #wSpec:I
    :cond_0
    iget-object v10, p0, Lcom/android/vending/velvet/LandscapeCarouselView;->mFooterArea:Landroid/view/ViewGroup;

    if-eqz v10, :cond_3

    .line 84
    const/high16 v10, 0x4000

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 86
    .restart local v9       #wSpec:I
    iget-object v10, p0, Lcom/android/vending/velvet/LandscapeCarouselView;->mFooterArea:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/vending/velvet/ArcView$LayoutParams;

    .line 87
    .local v3, lp:Lcom/android/vending/velvet/ArcView$LayoutParams;
    iget v10, p0, Lcom/android/vending/velvet/LandscapeCarouselView;->mPaddingTop:I

    iget v11, p0, Lcom/android/vending/velvet/LandscapeCarouselView;->mPaddingBottom:I

    add-int/2addr v10, v11

    iget v11, v3, Lcom/android/vending/velvet/ArcView$LayoutParams;->height:I

    invoke-static {p2, v10, v11}, Lcom/android/vending/velvet/LandscapeCarouselView;->getChildMeasureSpec(III)I

    move-result v1

    .line 92
    .restart local v1       #hSpec:I
    iget v10, v3, Lcom/android/vending/velvet/ArcView$LayoutParams;->gravity:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_2

    .line 93
    iget-object v10, p0, Lcom/android/vending/velvet/LandscapeCarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/vending/velvet/LandscapeCarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    array-length v10, v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/vending/velvet/LandscapeCarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    iget-object v10, v10, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    move v2, v10

    .line 95
    .local v2, hasThumbnails:Z
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    invoke-virtual {p0}, Lcom/android/vending/velvet/LandscapeCarouselView;->getPaddingTop()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/android/vending/velvet/LandscapeCarouselView;->getPaddingBottom()I

    move-result v11

    sub-int v5, v10, v11

    .line 98
    .local v5, origHeightSpecSize:I
    iget-object v10, p0, Lcom/android/vending/velvet/LandscapeCarouselView;->mTitleArea:Landroid/view/ViewGroup;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/vending/velvet/LandscapeCarouselView;->mTitleArea:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v10

    move v8, v10

    .line 99
    .local v8, reservedHeight:I
    :goto_1
    if-eqz v2, :cond_1

    .line 100
    iget-object v10, p0, Lcom/android/vending/velvet/LandscapeCarouselView;->mThumbnails:[Lcom/android/vending/velvet/CarouselView$Thumbnail;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    iget-object v10, v10, Lcom/android/vending/velvet/CarouselView$Thumbnail;->mRectOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/vending/velvet/LandscapeCarouselView;->getHalfBitmapHeightInPixels()I

    move-result v11

    add-int v8, v10, v11

    .line 104
    :cond_1
    sub-int v10, v5, v8

    const/high16 v11, 0x4000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 107
    .end local v2           #hasThumbnails:Z
    .end local v5           #origHeightSpecSize:I
    .end local v8           #reservedHeight:I
    :cond_2
    iget-object v10, p0, Lcom/android/vending/velvet/LandscapeCarouselView;->mFooterArea:Landroid/view/ViewGroup;

    invoke-virtual {v10, v9, v1}, Landroid/view/ViewGroup;->measure(II)V

    .line 109
    .end local v1           #hSpec:I
    .end local v3           #lp:Lcom/android/vending/velvet/ArcView$LayoutParams;
    .end local v9           #wSpec:I
    :cond_3
    return-void

    .line 93
    .restart local v1       #hSpec:I
    .restart local v3       #lp:Lcom/android/vending/velvet/ArcView$LayoutParams;
    .restart local v9       #wSpec:I
    :cond_4
    const/4 v10, 0x0

    move v2, v10

    goto :goto_0

    .line 98
    .restart local v2       #hasThumbnails:Z
    .restart local v5       #origHeightSpecSize:I
    :cond_5
    const/4 v10, 0x0

    move v8, v10

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 48
    div-int/lit8 v0, p2, 0x14

    iput v0, p0, Lcom/android/vending/velvet/LandscapeCarouselView;->mArcCurvature:I

    .line 49
    return-void
.end method

.method protected setThumbnailClip(Landroid/graphics/Canvas;II)V
    .locals 9
    .parameter "canvas"
    .parameter "canvasWidth"
    .parameter "canvasHeight"

    .prologue
    const/high16 v7, 0x4000

    const/4 v8, 0x0

    .line 178
    invoke-virtual {p0}, Lcom/android/vending/velvet/LandscapeCarouselView;->getOffsetForDropShadowBlending()I

    move-result v3

    .line 179
    .local v3, offsetForDropShadowBleeding:I
    invoke-direct {p0, p2, v3}, Lcom/android/vending/velvet/LandscapeCarouselView;->getArcStartX(II)I

    move-result v2

    .line 180
    .local v2, arcStart:I
    invoke-direct {p0, p2, v3}, Lcom/android/vending/velvet/LandscapeCarouselView;->getArcEndX(II)I

    move-result v1

    .line 182
    .local v1, arcEnd:I
    iget-object v4, p0, Lcom/android/vending/velvet/LandscapeCarouselView;->mClipArcRectangle:Landroid/graphics/RectF;

    invoke-static {v4, p2, p3, v2, v1}, Lcom/android/vending/velvet/ArcPaintingUtils;->getArcOvalRectangleForCurvedRight(Landroid/graphics/RectF;IIII)V

    .line 184
    int-to-float v4, p3

    div-float/2addr v4, v7

    iget-object v5, p0, Lcom/android/vending/velvet/LandscapeCarouselView;->mClipArcRectangle:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v7

    invoke-static {v4, v5}, Lcom/android/vending/velvet/ArcPaintingUtils;->getArcAngleForRightCurve(FF)F

    move-result v0

    .line 187
    .local v0, angle:F
    iget-object v4, p0, Lcom/android/vending/velvet/LandscapeCarouselView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 188
    iget-object v4, p0, Lcom/android/vending/velvet/LandscapeCarouselView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v4, v8, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 189
    iget-object v4, p0, Lcom/android/vending/velvet/LandscapeCarouselView;->mClipPath:Landroid/graphics/Path;

    int-to-float v5, v2

    invoke-virtual {v4, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 190
    iget-object v4, p0, Lcom/android/vending/velvet/LandscapeCarouselView;->mClipPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/android/vending/velvet/LandscapeCarouselView;->mClipArcRectangle:Landroid/graphics/RectF;

    neg-float v6, v0

    mul-float/2addr v7, v0

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 191
    iget-object v4, p0, Lcom/android/vending/velvet/LandscapeCarouselView;->mClipPath:Landroid/graphics/Path;

    int-to-float v5, p3

    invoke-virtual {v4, v8, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 192
    iget-object v4, p0, Lcom/android/vending/velvet/LandscapeCarouselView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 194
    iget-object v4, p0, Lcom/android/vending/velvet/LandscapeCarouselView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 195
    return-void
.end method
