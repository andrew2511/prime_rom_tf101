.class public Lcom/android/vending/velvet/LandscapeOverlappingLayout;
.super Lcom/android/vending/velvet/OverlappingLayout;
.source "LandscapeOverlappingLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/android/vending/velvet/OverlappingLayout;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attributeSet"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/android/vending/velvet/OverlappingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method private static tweakLeftPadding(Landroid/view/View;I)V
    .locals 7
    .parameter "view"
    .parameter "overlap"

    .prologue
    const v4, 0x7f080007

    .line 117
    invoke-virtual {p0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    .line 118
    .local v2, storedTag:Ljava/lang/Object;
    if-eqz v2, :cond_1

    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v1, v3

    .line 121
    .local v1, origLeftPadding:I
    :goto_0
    if-nez v2, :cond_0

    .line 122
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 129
    :cond_0
    add-int v3, v1, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 131
    return-void

    .line 118
    .end local v1           #origLeftPadding:I
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    move v1, v3

    goto :goto_0
.end method

.method public static tweakViewPadding(Landroid/view/View;Landroid/view/ViewParent;I)V
    .locals 6
    .parameter "view"
    .parameter "parent"
    .parameter "extra"

    .prologue
    .line 96
    move-object v2, p1

    .line 97
    .local v2, currParent:Landroid/view/ViewParent;
    :goto_0
    if-eqz v2, :cond_0

    .line 98
    instance-of v4, v2, Lcom/android/vending/velvet/LandscapeOverlappingLayout;

    if-eqz v4, :cond_1

    .line 103
    move-object v0, v2

    check-cast v0, Lcom/android/vending/velvet/LandscapeOverlappingLayout;

    move-object v3, v0

    .line 104
    .local v3, lolParent:Lcom/android/vending/velvet/LandscapeOverlappingLayout;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/vending/velvet/LandscapeOverlappingLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/vending/velvet/CarouselView;

    .line 106
    .local v1, carouselChild:Lcom/android/vending/velvet/CarouselView;
    int-to-float v4, p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v1}, Lcom/android/vending/velvet/CarouselView;->getLayoutOverlapInPixels()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {p0, v4}, Lcom/android/vending/velvet/LandscapeOverlappingLayout;->tweakLeftPadding(Landroid/view/View;I)V

    .line 113
    .end local v1           #carouselChild:Lcom/android/vending/velvet/CarouselView;
    .end local v3           #lolParent:Lcom/android/vending/velvet/LandscapeOverlappingLayout;
    :cond_0
    return-void

    .line 111
    :cond_1
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/vending/velvet/LandscapeOverlappingLayout;->getPaddingTop()I

    move-result v3

    .line 63
    .local v3, childTop:I
    invoke-virtual {p0}, Lcom/android/vending/velvet/LandscapeOverlappingLayout;->getPaddingLeft()I

    move-result v2

    .line 65
    .local v2, childLeft:I
    sub-int v4, p5, p3

    .line 66
    .local v4, h:I
    sub-int v6, p4, p2

    .line 68
    .local v6, w:I
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/vending/velvet/LandscapeOverlappingLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/vending/velvet/ArcView;

    .line 69
    .local v1, child1:Lcom/android/vending/velvet/ArcView;
    div-int/lit8 v7, v6, 0x2

    add-int v8, v3, v4

    invoke-virtual {v1, v2, v3, v7, v8}, Lcom/android/vending/velvet/ArcView;->layout(IIII)V

    .line 71
    invoke-virtual {v1}, Lcom/android/vending/velvet/ArcView;->getLayoutOverlapInPixels()I

    move-result v5

    .line 73
    .local v5, overlap:I
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/vending/velvet/LandscapeOverlappingLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 74
    .local v0, child0:Landroid/view/View;
    div-int/lit8 v7, v6, 0x2

    add-int/2addr v7, v2

    sub-int/2addr v7, v5

    add-int v8, v2, v6

    add-int v9, v3, v4

    invoke-virtual {v0, v7, v3, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 76
    iget-object v7, p0, Lcom/android/vending/velvet/LandscapeOverlappingLayout;->mCarouselPadder:Landroid/view/View;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/vending/velvet/LandscapeOverlappingLayout;->mCarouselPadder:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v7, p0, Lcom/android/vending/velvet/LandscapeOverlappingLayout;->mCarouselPadder:Landroid/view/View;

    invoke-static {v7, v5}, Lcom/android/vending/velvet/LandscapeOverlappingLayout;->tweakLeftPadding(Landroid/view/View;I)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v12, 0x4000

    .line 28
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 29
    .local v8, widthSpecMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 31
    .local v5, heightSpecMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    invoke-virtual {p0}, Lcom/android/vending/velvet/LandscapeOverlappingLayout;->getPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/android/vending/velvet/LandscapeOverlappingLayout;->getPaddingRight()I

    move-result v11

    sub-int v9, v10, v11

    .line 33
    .local v9, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    invoke-virtual {p0}, Lcom/android/vending/velvet/LandscapeOverlappingLayout;->getPaddingTop()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/android/vending/velvet/LandscapeOverlappingLayout;->getPaddingBottom()I

    move-result v11

    sub-int v6, v10, v11

    .line 36
    .local v6, heightSpecSize:I
    if-eqz v8, :cond_0

    if-nez v5, :cond_1

    .line 37
    :cond_0
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "LandscapeOverlappingLayout cannot have UNSPECIFIED dimensions"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 41
    :cond_1
    invoke-static {v6, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 44
    .local v4, childHeightMeasureSpec:I
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/vending/velvet/LandscapeOverlappingLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/vending/velvet/ArcView;

    .line 45
    .local v2, child1:Lcom/android/vending/velvet/ArcView;
    div-int/lit8 v10, v9, 0x2

    invoke-static {v10, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 47
    .local v3, child1WidthMeasureSpec:I
    invoke-virtual {v2, v3, v4}, Lcom/android/vending/velvet/ArcView;->measure(II)V

    .line 49
    invoke-virtual {v2}, Lcom/android/vending/velvet/ArcView;->getLayoutOverlapInPixels()I

    move-result v7

    .line 51
    .local v7, overlap:I
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/vending/velvet/LandscapeOverlappingLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, child0:Landroid/view/View;
    div-int/lit8 v10, v9, 0x2

    add-int/2addr v10, v7

    invoke-static {v10, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 54
    .local v1, child0WidthMeasureSpec:I
    invoke-virtual {v0, v1, v4}, Landroid/view/View;->measure(II)V

    .line 56
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    invoke-virtual {p0, v10, v11}, Lcom/android/vending/velvet/LandscapeOverlappingLayout;->setMeasuredDimension(II)V

    .line 58
    return-void
.end method
