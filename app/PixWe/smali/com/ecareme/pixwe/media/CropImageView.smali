.class Lcom/ecareme/pixwe/media/CropImageView;
.super Lcom/ecareme/pixwe/media/ImageViewTouchBase;
.source "CropImage.java"


# instance fields
.field mHighlightViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ecareme/pixwe/media/HighlightView;",
            ">;"
        }
    .end annotation
.end field

.field mLastX:F

.field mLastY:F

.field mMotionEdge:I

.field mMotionHighlightView:Lcom/ecareme/pixwe/media/HighlightView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 694
    invoke-direct {p0, p1, p2}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 674
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    .line 675
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ecareme/pixwe/media/CropImageView;->mMotionHighlightView:Lcom/ecareme/pixwe/media/HighlightView;

    .line 695
    return-void
.end method

.method private centerBasedOnHighlightView(Lcom/ecareme/pixwe/media/HighlightView;)V
    .locals 13
    .parameter "hv"

    .prologue
    .line 874
    iget-object v1, p1, Lcom/ecareme/pixwe/media/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 876
    .local v1, drawRect:Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v5, v9

    .line 877
    .local v5, width:F
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v2, v9

    .line 879
    .local v2, height:F
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/CropImageView;->getWidth()I

    move-result v9

    int-to-float v4, v9

    .line 880
    .local v4, thisWidth:F
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/CropImageView;->getHeight()I

    move-result v9

    int-to-float v3, v9

    .line 882
    .local v3, thisHeight:F
    div-float v9, v4, v5

    const v10, 0x3f19999a

    mul-float v6, v9, v10

    .line 883
    .local v6, z1:F
    div-float v9, v3, v2

    const v10, 0x3f19999a

    mul-float v7, v9, v10

    .line 885
    .local v7, z2:F
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 886
    .local v8, zoom:F
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/CropImageView;->getScale()F

    move-result v9

    mul-float/2addr v8, v9

    .line 887
    const/high16 v9, 0x3f80

    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 889
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/CropImageView;->getScale()F

    move-result v9

    sub-float v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    div-float/2addr v9, v8

    float-to-double v9, v9

    const-wide v11, 0x3fb999999999999aL

    cmpl-double v9, v9, v11

    if-lez v9, :cond_0

    .line 890
    const/4 v9, 0x2

    new-array v0, v9, [F

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/ecareme/pixwe/media/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    aput v10, v0, v9

    const/4 v9, 0x1

    iget-object v10, p1, Lcom/ecareme/pixwe/media/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    aput v10, v0, v9

    .line 891
    .local v0, coordinates:[F
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 892
    const/4 v9, 0x0

    aget v9, v0, v9

    const/4 v10, 0x1

    aget v10, v0, v10

    const/high16 v11, 0x4396

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/ecareme/pixwe/media/CropImageView;->zoomTo(FFFF)V

    .line 895
    .end local v0           #coordinates:[F
    :cond_0
    invoke-direct {p0, p1}, Lcom/ecareme/pixwe/media/CropImageView;->ensureVisible(Lcom/ecareme/pixwe/media/HighlightView;)V

    .line 896
    return-void
.end method

.method private ensureVisible(Lcom/ecareme/pixwe/media/HighlightView;)V
    .locals 10
    .parameter "hv"

    .prologue
    const/4 v9, 0x0

    .line 855
    iget-object v6, p1, Lcom/ecareme/pixwe/media/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 857
    .local v6, r:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/CropImageView;->getLeft()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 858
    .local v1, panDeltaX1:I
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/CropImageView;->getRight()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 860
    .local v2, panDeltaX2:I
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/CropImageView;->getTop()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 861
    .local v4, panDeltaY1:I
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/CropImageView;->getBottom()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 863
    .local v5, panDeltaY2:I
    if-eqz v1, :cond_2

    move v0, v1

    .line 864
    .local v0, panDeltaX:I
    :goto_0
    if-eqz v4, :cond_3

    move v3, v4

    .line 866
    .local v3, panDeltaY:I
    :goto_1
    if-nez v0, :cond_0

    if-eqz v3, :cond_1

    .line 867
    :cond_0
    int-to-float v7, v0

    int-to-float v8, v3

    invoke-virtual {p0, v7, v8}, Lcom/ecareme/pixwe/media/CropImageView;->panBy(FF)V

    .line 869
    :cond_1
    return-void

    .end local v0           #panDeltaX:I
    .end local v3           #panDeltaY:I
    :cond_2
    move v0, v2

    .line 863
    goto :goto_0

    .restart local v0       #panDeltaX:I
    :cond_3
    move v3, v5

    .line 864
    goto :goto_1
.end method

.method private recomputeFocus(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 737
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/ecareme/pixwe/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 743
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/ecareme/pixwe/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 754
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/CropImageView;->invalidate()V

    .line 755
    return-void

    .line 738
    :cond_1
    iget-object v3, p0, Lcom/ecareme/pixwe/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecareme/pixwe/media/HighlightView;

    .line 739
    .local v1, hv:Lcom/ecareme/pixwe/media/HighlightView;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/ecareme/pixwe/media/HighlightView;->setFocus(Z)V

    .line 740
    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/HighlightView;->invalidate()V

    .line 737
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 744
    .end local v1           #hv:Lcom/ecareme/pixwe/media/HighlightView;
    :cond_2
    iget-object v3, p0, Lcom/ecareme/pixwe/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecareme/pixwe/media/HighlightView;

    .line 745
    .restart local v1       #hv:Lcom/ecareme/pixwe/media/HighlightView;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/ecareme/pixwe/media/HighlightView;->getHit(FF)I

    move-result v0

    .line 746
    .local v0, edge:I
    if-eq v0, v5, :cond_3

    .line 747
    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/HighlightView;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_0

    .line 748
    invoke-virtual {v1, v5}, Lcom/ecareme/pixwe/media/HighlightView;->setFocus(Z)V

    .line 749
    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/HighlightView;->invalidate()V

    goto :goto_2

    .line 743
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public add(Lcom/ecareme/pixwe/media/HighlightView;)V
    .locals 1
    .parameter "hv"

    .prologue
    .line 907
    iget-object v0, p0, Lcom/ecareme/pixwe/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 908
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/CropImageView;->invalidate()V

    .line 909
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 900
    invoke-super {p0, p1}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->onDraw(Landroid/graphics/Canvas;)V

    .line 901
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/ecareme/pixwe/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 904
    return-void

    .line 902
    :cond_0
    iget-object v1, p0, Lcom/ecareme/pixwe/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecareme/pixwe/media/HighlightView;

    invoke-virtual {v1, p1}, Lcom/ecareme/pixwe/media/HighlightView;->draw(Landroid/graphics/Canvas;)V

    .line 901
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 681
    invoke-super/range {p0 .. p5}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->onLayout(ZIIII)V

    .line 682
    iget-object v1, p0, Lcom/ecareme/pixwe/media/CropImageView;->mBitmapDisplayed:Lcom/ecareme/pixwe/media/RotateBitmap;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 683
    iget-object v1, p0, Lcom/ecareme/pixwe/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 691
    :cond_1
    return-void

    .line 683
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecareme/pixwe/media/HighlightView;

    .line 684
    .local v0, hv:Lcom/ecareme/pixwe/media/HighlightView;
    iget-object v2, v0, Lcom/ecareme/pixwe/media/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 685
    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/HighlightView;->invalidate()V

    .line 686
    iget-boolean v2, v0, Lcom/ecareme/pixwe/media/HighlightView;->mIsFocused:Z

    if-eqz v2, :cond_0

    .line 687
    invoke-direct {p0, v0}, Lcom/ecareme/pixwe/media/CropImageView;->centerBasedOnHighlightView(Lcom/ecareme/pixwe/media/HighlightView;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x1

    .line 759
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/ecareme/pixwe/media/CropImage;

    .line 760
    .local v0, cropImage:Lcom/ecareme/pixwe/media/CropImage;
    iget-boolean v5, v0, Lcom/ecareme/pixwe/media/CropImage;->mSaving:Z

    if-eqz v5, :cond_0

    move v5, v6

    .line 850
    .end local p0
    :goto_0
    return v5

    .line 764
    .restart local p0
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 835
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    :cond_2
    :goto_2
    move v5, v10

    .line 850
    goto :goto_0

    .line 766
    :pswitch_0
    iget-boolean v5, v0, Lcom/ecareme/pixwe/media/CropImage;->mWaitingToPick:Z

    if-eqz v5, :cond_3

    .line 767
    invoke-direct {p0, p1}, Lcom/ecareme/pixwe/media/CropImageView;->recomputeFocus(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 769
    :cond_3
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    iget-object v5, p0, Lcom/ecareme/pixwe/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 775
    iget-object v5, p0, Lcom/ecareme/pixwe/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ecareme/pixwe/media/HighlightView;

    .line 776
    .local v2, hv:Lcom/ecareme/pixwe/media/HighlightView;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v2, v5, v6}, Lcom/ecareme/pixwe/media/HighlightView;->getHit(FF)I

    move-result v1

    .line 777
    .local v1, edge:I
    if-eq v1, v10, :cond_5

    .line 778
    iput v1, p0, Lcom/ecareme/pixwe/media/CropImageView;->mMotionEdge:I

    .line 779
    iput-object v2, p0, Lcom/ecareme/pixwe/media/CropImageView;->mMotionHighlightView:Lcom/ecareme/pixwe/media/HighlightView;

    .line 780
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/ecareme/pixwe/media/CropImageView;->mLastX:F

    .line 781
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/ecareme/pixwe/media/CropImageView;->mLastY:F

    .line 783
    iget-object v5, p0, Lcom/ecareme/pixwe/media/CropImageView;->mMotionHighlightView:Lcom/ecareme/pixwe/media/HighlightView;

    const/16 v6, 0x20

    if-ne v1, v6, :cond_4

    sget-object v6, Lcom/ecareme/pixwe/media/HighlightView$ModifyMode;->Move:Lcom/ecareme/pixwe/media/HighlightView$ModifyMode;

    :goto_4
    invoke-virtual {v5, v6}, Lcom/ecareme/pixwe/media/HighlightView;->setMode(Lcom/ecareme/pixwe/media/HighlightView$ModifyMode;)V

    goto :goto_1

    .line 784
    :cond_4
    sget-object v6, Lcom/ecareme/pixwe/media/HighlightView$ModifyMode;->Grow:Lcom/ecareme/pixwe/media/HighlightView$ModifyMode;

    goto :goto_4

    .line 769
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 792
    .end local v1           #edge:I
    .end local v2           #hv:Lcom/ecareme/pixwe/media/HighlightView;
    .end local v3           #i:I
    :pswitch_1
    iget-boolean v5, v0, Lcom/ecareme/pixwe/media/CropImage;->mWaitingToPick:Z

    if-eqz v5, :cond_b

    .line 793
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_5
    iget-object v5, p0, Lcom/ecareme/pixwe/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v3, v5, :cond_7

    .line 813
    .end local v3           #i:I
    :cond_6
    :goto_6
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/ecareme/pixwe/media/CropImageView;->mMotionHighlightView:Lcom/ecareme/pixwe/media/HighlightView;

    goto :goto_1

    .line 794
    .restart local v3       #i:I
    :cond_7
    iget-object v5, p0, Lcom/ecareme/pixwe/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ecareme/pixwe/media/HighlightView;

    .line 795
    .restart local v2       #hv:Lcom/ecareme/pixwe/media/HighlightView;
    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/HighlightView;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 796
    iput-object v2, v0, Lcom/ecareme/pixwe/media/CropImage;->mCrop:Lcom/ecareme/pixwe/media/HighlightView;

    .line 797
    const/4 v4, 0x0

    .local v4, j:I
    :goto_7
    iget-object v5, p0, Lcom/ecareme/pixwe/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v4, v5, :cond_8

    .line 804
    invoke-direct {p0, v2}, Lcom/ecareme/pixwe/media/CropImageView;->centerBasedOnHighlightView(Lcom/ecareme/pixwe/media/HighlightView;)V

    .line 805
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/CropImageView;->getContext()Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/ecareme/pixwe/media/CropImage;

    iput-boolean v6, p0, Lcom/ecareme/pixwe/media/CropImage;->mWaitingToPick:Z

    move v5, v10

    .line 806
    goto/16 :goto_0

    .line 798
    .restart local p0
    :cond_8
    if-ne v4, v3, :cond_9

    .line 797
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 802
    :cond_9
    iget-object v5, p0, Lcom/ecareme/pixwe/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ecareme/pixwe/media/HighlightView;

    invoke-virtual {v5, v10}, Lcom/ecareme/pixwe/media/HighlightView;->setHidden(Z)V

    goto :goto_8

    .line 793
    .end local v4           #j:I
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 809
    .end local v2           #hv:Lcom/ecareme/pixwe/media/HighlightView;
    .end local v3           #i:I
    :cond_b
    iget-object v5, p0, Lcom/ecareme/pixwe/media/CropImageView;->mMotionHighlightView:Lcom/ecareme/pixwe/media/HighlightView;

    if-eqz v5, :cond_6

    .line 810
    iget-object v5, p0, Lcom/ecareme/pixwe/media/CropImageView;->mMotionHighlightView:Lcom/ecareme/pixwe/media/HighlightView;

    invoke-direct {p0, v5}, Lcom/ecareme/pixwe/media/CropImageView;->centerBasedOnHighlightView(Lcom/ecareme/pixwe/media/HighlightView;)V

    .line 811
    iget-object v5, p0, Lcom/ecareme/pixwe/media/CropImageView;->mMotionHighlightView:Lcom/ecareme/pixwe/media/HighlightView;

    sget-object v6, Lcom/ecareme/pixwe/media/HighlightView$ModifyMode;->None:Lcom/ecareme/pixwe/media/HighlightView$ModifyMode;

    invoke-virtual {v5, v6}, Lcom/ecareme/pixwe/media/HighlightView;->setMode(Lcom/ecareme/pixwe/media/HighlightView$ModifyMode;)V

    goto :goto_6

    .line 816
    :pswitch_2
    iget-boolean v5, v0, Lcom/ecareme/pixwe/media/CropImage;->mWaitingToPick:Z

    if-eqz v5, :cond_c

    .line 817
    invoke-direct {p0, p1}, Lcom/ecareme/pixwe/media/CropImageView;->recomputeFocus(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 818
    :cond_c
    iget-object v5, p0, Lcom/ecareme/pixwe/media/CropImageView;->mMotionHighlightView:Lcom/ecareme/pixwe/media/HighlightView;

    if-eqz v5, :cond_1

    .line 819
    iget-object v5, p0, Lcom/ecareme/pixwe/media/CropImageView;->mMotionHighlightView:Lcom/ecareme/pixwe/media/HighlightView;

    iget v6, p0, Lcom/ecareme/pixwe/media/CropImageView;->mMotionEdge:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v8, p0, Lcom/ecareme/pixwe/media/CropImageView;->mLastX:F

    sub-float/2addr v7, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v9, p0, Lcom/ecareme/pixwe/media/CropImageView;->mLastY:F

    sub-float/2addr v8, v9

    invoke-virtual {v5, v6, v7, v8}, Lcom/ecareme/pixwe/media/HighlightView;->handleMotion(IFF)V

    .line 820
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/ecareme/pixwe/media/CropImageView;->mLastX:F

    .line 821
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/ecareme/pixwe/media/CropImageView;->mLastY:F

    .line 829
    iget-object v5, p0, Lcom/ecareme/pixwe/media/CropImageView;->mMotionHighlightView:Lcom/ecareme/pixwe/media/HighlightView;

    invoke-direct {p0, v5}, Lcom/ecareme/pixwe/media/CropImageView;->ensureVisible(Lcom/ecareme/pixwe/media/HighlightView;)V

    goto/16 :goto_1

    .line 837
    :pswitch_3
    invoke-virtual {p0, v10, v10}, Lcom/ecareme/pixwe/media/CropImageView;->center(ZZ)V

    goto/16 :goto_2

    .line 844
    :pswitch_4
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/CropImageView;->getScale()F

    move-result v5

    const/high16 v6, 0x3f80

    cmpl-float v5, v5, v6

    if-nez v5, :cond_2

    .line 845
    invoke-virtual {p0, v10, v10}, Lcom/ecareme/pixwe/media/CropImageView;->center(ZZ)V

    goto/16 :goto_2

    .line 764
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 835
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected postTranslate(FF)V
    .locals 3
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 726
    invoke-super {p0, p1, p2}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->postTranslate(FF)V

    .line 727
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/ecareme/pixwe/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 732
    return-void

    .line 728
    :cond_0
    iget-object v2, p0, Lcom/ecareme/pixwe/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecareme/pixwe/media/HighlightView;

    .line 729
    .local v0, hv:Lcom/ecareme/pixwe/media/HighlightView;
    iget-object v2, v0, Lcom/ecareme/pixwe/media/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 730
    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/HighlightView;->invalidate()V

    .line 727
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected zoomIn()V
    .locals 4

    .prologue
    .line 708
    invoke-super {p0}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->zoomIn()V

    .line 709
    iget-object v1, p0, Lcom/ecareme/pixwe/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 713
    return-void

    .line 709
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecareme/pixwe/media/HighlightView;

    .line 710
    .local v0, hv:Lcom/ecareme/pixwe/media/HighlightView;
    iget-object v2, v0, Lcom/ecareme/pixwe/media/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 711
    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/HighlightView;->invalidate()V

    goto :goto_0
.end method

.method protected zoomOut()V
    .locals 4

    .prologue
    .line 717
    invoke-super {p0}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->zoomOut()V

    .line 718
    iget-object v1, p0, Lcom/ecareme/pixwe/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 722
    return-void

    .line 718
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecareme/pixwe/media/HighlightView;

    .line 719
    .local v0, hv:Lcom/ecareme/pixwe/media/HighlightView;
    iget-object v2, v0, Lcom/ecareme/pixwe/media/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 720
    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/HighlightView;->invalidate()V

    goto :goto_0
.end method

.method protected zoomTo(FFF)V
    .locals 4
    .parameter "scale"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 699
    invoke-super {p0, p1, p2, p3}, Lcom/ecareme/pixwe/media/ImageViewTouchBase;->zoomTo(FFF)V

    .line 700
    iget-object v1, p0, Lcom/ecareme/pixwe/media/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 704
    return-void

    .line 700
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecareme/pixwe/media/HighlightView;

    .line 701
    .local v0, hv:Lcom/ecareme/pixwe/media/HighlightView;
    iget-object v2, v0, Lcom/ecareme/pixwe/media/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 702
    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/HighlightView;->invalidate()V

    goto :goto_0
.end method
