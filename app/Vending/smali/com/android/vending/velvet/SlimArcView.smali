.class public Lcom/android/vending/velvet/SlimArcView;
.super Lcom/android/vending/velvet/ArcView;
.source "SlimArcView.java"


# instance fields
.field private mArcCurvature:I

.field private final mDropShadowSize:I

.field private mScreenHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/vending/velvet/ArcView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-virtual {p0}, Lcom/android/vending/velvet/SlimArcView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 40
    .local v1, wm:Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 41
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 42
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/android/vending/velvet/SlimArcView;->mScreenHeight:I

    .line 43
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0x14

    iput v2, p0, Lcom/android/vending/velvet/SlimArcView;->mArcCurvature:I

    .line 45
    iget v2, p0, Lcom/android/vending/velvet/SlimArcView;->mScreenScaleFactor:F

    const/high16 v3, 0x40c0

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/vending/velvet/SlimArcView;->mDropShadowSize:I

    .line 46
    return-void
.end method


# virtual methods
.method protected getArcEndY(II)I
    .locals 1
    .parameter "canvasHeight"
    .parameter "offsetForDropShadowBleeding"

    .prologue
    .line 128
    iget v0, p0, Lcom/android/vending/velvet/SlimArcView;->mDropShadowSize:I

    sub-int v0, p1, v0

    sub-int/2addr v0, p2

    return v0
.end method

.method protected getArcStartY(II)I
    .locals 2
    .parameter "canvasHeight"
    .parameter "offsetForDropShadowBleeding"

    .prologue
    .line 132
    iget v0, p0, Lcom/android/vending/velvet/SlimArcView;->mArcCurvature:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/vending/velvet/SlimArcView;->mDropShadowSize:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, p2

    return v0
.end method

.method public getLayoutOverlapInPixels()I
    .locals 2

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/vending/velvet/SlimArcView;->getOffsetForDropShadowBlending()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/velvet/SlimArcView;->getArcStartY(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/vending/velvet/SlimArcView;->getWidth()I

    move-result v1

    .line 57
    .local v1, canvasWidth:I
    invoke-virtual {p0}, Lcom/android/vending/velvet/SlimArcView;->getHeight()I

    move-result v6

    .line 59
    .local v6, canvasHeight:I
    invoke-virtual {p0}, Lcom/android/vending/velvet/SlimArcView;->getOffsetForDropShadowBlending()I

    move-result v7

    .line 60
    .local v7, offsetForDropShadowBleeding:I
    invoke-virtual {p0, v6, v7}, Lcom/android/vending/velvet/SlimArcView;->getArcStartY(II)I

    move-result v3

    .line 61
    .local v3, arcStart:I
    invoke-virtual {p0, v6, v7}, Lcom/android/vending/velvet/SlimArcView;->getArcEndY(II)I

    move-result v4

    .line 65
    .local v4, arcEnd:I
    iget v0, p0, Lcom/android/vending/velvet/SlimArcView;->mScreenHeight:I

    div-int/lit8 v2, v0, 0x2

    iget v5, p0, Lcom/android/vending/velvet/SlimArcView;->mDropShadowSize:I

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/vending/velvet/ArcPaintingUtils;->drawBackgroundWithCurvedBottom(Landroid/graphics/Canvas;IIIII)V

    .line 67
    invoke-static {p1, v1, v6}, Lcom/android/vending/velvet/ArcPaintingUtils;->drawTrackerOverlay(Landroid/graphics/Canvas;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    .line 56
    .end local v1           #canvasWidth:I
    .end local v3           #arcStart:I
    .end local v4           #arcEnd:I
    .end local v6           #canvasHeight:I
    .end local v7           #offsetForDropShadowBleeding:I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 113
    iget-object v3, p0, Lcom/android/vending/velvet/SlimArcView;->mTitleArea:Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 114
    iget-object v3, p0, Lcom/android/vending/velvet/SlimArcView;->mTitleArea:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    .line 115
    .local v2, measuredWidth:I
    iget-object v3, p0, Lcom/android/vending/velvet/SlimArcView;->mTitleArea:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    .line 116
    .local v1, measuredHeight:I
    iget-object v3, p0, Lcom/android/vending/velvet/SlimArcView;->mTitleArea:Landroid/view/ViewGroup;

    add-int v4, p2, v2

    add-int v5, p3, v1

    invoke-virtual {v3, p2, p3, v4, v5}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 118
    .end local v1           #measuredHeight:I
    .end local v2           #measuredWidth:I
    :cond_0
    iget-object v3, p0, Lcom/android/vending/velvet/SlimArcView;->mFooterArea:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 119
    iget-object v3, p0, Lcom/android/vending/velvet/SlimArcView;->mFooterArea:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    .line 120
    .restart local v2       #measuredWidth:I
    iget-object v3, p0, Lcom/android/vending/velvet/SlimArcView;->mFooterArea:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    .line 121
    .restart local v1       #measuredHeight:I
    sub-int v3, p5, p3

    invoke-virtual {p0}, Lcom/android/vending/velvet/SlimArcView;->getOffsetForDropShadowBlending()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/vending/velvet/SlimArcView;->getArcStartY(II)I

    move-result v0

    .line 123
    .local v0, arcStart:I
    iget-object v3, p0, Lcom/android/vending/velvet/SlimArcView;->mFooterArea:Landroid/view/ViewGroup;

    sub-int v4, v0, v1

    add-int v5, p2, v2

    invoke-virtual {v3, p2, v4, v5, v0}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 125
    .end local v0           #arcStart:I
    .end local v1           #measuredHeight:I
    .end local v2           #measuredWidth:I
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v12, 0x4000

    .line 72
    invoke-super {p0, p1, p2}, Lcom/android/vending/velvet/ArcView;->onMeasure(II)V

    .line 74
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    invoke-virtual {p0}, Lcom/android/vending/velvet/SlimArcView;->getPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/android/vending/velvet/SlimArcView;->getPaddingRight()I

    move-result v11

    sub-int v6, v10, v11

    .line 76
    .local v6, origWidthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    invoke-virtual {p0}, Lcom/android/vending/velvet/SlimArcView;->getPaddingTop()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/android/vending/velvet/SlimArcView;->getPaddingBottom()I

    move-result v11

    sub-int v5, v10, v11

    .line 79
    .local v5, origHeightSpecSize:I
    iget v10, p0, Lcom/android/vending/velvet/SlimArcView;->mScreenScaleFactor:F

    const/high16 v11, 0x40c0

    mul-float/2addr v10, v11

    const/high16 v11, 0x3f00

    add-float/2addr v10, v11

    float-to-int v7, v10

    .line 80
    .local v7, padding:I
    iget-object v10, p0, Lcom/android/vending/velvet/SlimArcView;->mTitleArea:Landroid/view/ViewGroup;

    if-eqz v10, :cond_0

    .line 82
    iget-object v10, p0, Lcom/android/vending/velvet/SlimArcView;->mTitleArea:Landroid/view/ViewGroup;

    const v11, 0x7f080118

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 84
    .local v4, marketIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v6, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 85
    .local v9, wSpec:I
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    add-int/2addr v10, v7

    invoke-static {v10, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 87
    .local v2, hSpec:I
    iget-object v10, p0, Lcom/android/vending/velvet/SlimArcView;->mTitleArea:Landroid/view/ViewGroup;

    invoke-virtual {v10, v9, v2}, Landroid/view/ViewGroup;->measure(II)V

    .line 90
    .end local v2           #hSpec:I
    .end local v4           #marketIcon:Landroid/graphics/drawable/Drawable;
    .end local v9           #wSpec:I
    :cond_0
    iget-object v10, p0, Lcom/android/vending/velvet/SlimArcView;->mFooterArea:Landroid/view/ViewGroup;

    if-eqz v10, :cond_1

    .line 91
    invoke-static {v6, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 92
    .restart local v9       #wSpec:I
    iget-object v10, p0, Lcom/android/vending/velvet/SlimArcView;->mFooterArea:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/vending/velvet/ArcView$LayoutParams;

    .line 94
    .local v3, lp:Lcom/android/vending/velvet/ArcView$LayoutParams;
    iget v10, p0, Lcom/android/vending/velvet/SlimArcView;->mPaddingTop:I

    iget v11, p0, Lcom/android/vending/velvet/SlimArcView;->mPaddingBottom:I

    add-int/2addr v10, v11

    iget v11, v3, Lcom/android/vending/velvet/ArcView$LayoutParams;->height:I

    invoke-static {p2, v10, v11}, Lcom/android/vending/velvet/SlimArcView;->getChildMeasureSpec(III)I

    move-result v2

    .line 96
    .restart local v2       #hSpec:I
    iget-object v10, p0, Lcom/android/vending/velvet/SlimArcView;->mFooterArea:Landroid/view/ViewGroup;

    invoke-virtual {v10, v9, v2}, Landroid/view/ViewGroup;->measure(II)V

    .line 99
    iget-object v10, p0, Lcom/android/vending/velvet/SlimArcView;->mTitleArea:Landroid/view/ViewGroup;

    if-eqz v10, :cond_1

    .line 100
    iget-object v10, p0, Lcom/android/vending/velvet/SlimArcView;->mFooterArea:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    .line 101
    .local v1, footerMeasuredHeight:I
    iget-object v10, p0, Lcom/android/vending/velvet/SlimArcView;->mTitleArea:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v8

    .line 102
    .local v8, titleMeasuredHeight:I
    invoke-virtual {p0}, Lcom/android/vending/velvet/SlimArcView;->getOffsetForDropShadowBlending()I

    move-result v10

    invoke-virtual {p0, v5, v10}, Lcom/android/vending/velvet/SlimArcView;->getArcStartY(II)I

    move-result v0

    .line 103
    .local v0, arcStart:I
    add-int v10, v1, v8

    if-le v10, v0, :cond_1

    .line 104
    iget-object v10, p0, Lcom/android/vending/velvet/SlimArcView;->mFooterArea:Landroid/view/ViewGroup;

    sub-int v11, v0, v8

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v10, v9, v11}, Landroid/view/ViewGroup;->measure(II)V

    .line 109
    .end local v0           #arcStart:I
    .end local v1           #footerMeasuredHeight:I
    .end local v2           #hSpec:I
    .end local v3           #lp:Lcom/android/vending/velvet/ArcView$LayoutParams;
    .end local v8           #titleMeasuredHeight:I
    .end local v9           #wSpec:I
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 51
    div-int/lit8 v0, p1, 0x14

    iput v0, p0, Lcom/android/vending/velvet/SlimArcView;->mArcCurvature:I

    .line 52
    return-void
.end method
