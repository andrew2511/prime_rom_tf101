.class public Lcom/android/camera/PreviewFrameLayout;
.super Landroid/widget/RelativeLayout;
.source "PreviewFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;
    }
.end annotation


# instance fields
.field private mAspectRatio:D

.field private mBorderView:Landroid/view/View;

.field private mCameraPicker:Landroid/widget/RadioGroup;

.field private mFrame:Landroid/view/View;

.field private final mMetrics:Landroid/util/DisplayMetrics;

.field private mSizeListener:Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const-wide v0, 0x3ff5555555555555L

    iput-wide v0, p0, Lcom/android/camera/PreviewFrameLayout;->mAspectRatio:D

    .line 44
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PreviewFrameLayout;->mMetrics:Landroid/util/DisplayMetrics;

    .line 48
    check-cast p1, Landroid/app/Activity;

    .end local p1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PreviewFrameLayout;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 7

    .prologue
    .line 58
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 59
    const v3, 0x7f0a001e

    invoke-virtual {p0, v3}, Lcom/android/camera/PreviewFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PreviewFrameLayout;->mFrame:Landroid/view/View;

    .line 60
    iget-object v3, p0, Lcom/android/camera/PreviewFrameLayout;->mFrame:Landroid/view/View;

    if-nez v3, :cond_0

    .line 61
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "must provide child with id as \"frame\""

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 64
    :cond_0
    const v3, 0x7f0a0016

    invoke-virtual {p0, v3}, Lcom/android/camera/PreviewFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    iput-object v3, p0, Lcom/android/camera/PreviewFrameLayout;->mCameraPicker:Landroid/widget/RadioGroup;

    .line 66
    const v3, 0x7f0a0020

    invoke-virtual {p0, v3}, Lcom/android/camera/PreviewFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 67
    .local v2, preview:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 69
    .local v1, params:Landroid/view/ViewGroup$MarginLayoutParams;
    const v3, 0x7f0a001f

    invoke-virtual {p0, v3}, Lcom/android/camera/PreviewFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PreviewFrameLayout;->mBorderView:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/android/camera/PreviewFrameLayout;->mBorderView:Landroid/view/View;

    .line 71
    .local v0, f:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 72
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 24
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/PreviewFrameLayout;->getWidth()I

    move-result v9

    .line 87
    .local v9, frameWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/PreviewFrameLayout;->getHeight()I

    move-result v8

    .line 89
    .local v8, frameHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PreviewFrameLayout;->mBorderView:Landroid/view/View;

    move-object v7, v0

    .line 90
    .local v7, f:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v18

    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v19

    add-int v12, v18, v19

    .line 91
    .local v12, horizontalPadding:I
    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v18

    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v19

    add-int v16, v18, v19

    .line 92
    .local v16, verticalPadding:I
    sub-int v13, v8, v16

    .line 93
    .local v13, previewHeight:I
    sub-int v14, v9, v12

    .line 96
    .local v14, previewWidth:I
    move v0, v14

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move v0, v13

    int-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/PreviewFrameLayout;->mAspectRatio:D

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    cmpl-double v18, v18, v20

    if-lez v18, :cond_2

    .line 97
    move v0, v13

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/PreviewFrameLayout;->mAspectRatio:D

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x3fe0

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move v14, v0

    .line 102
    :goto_0
    add-int v9, v14, v12

    .line 103
    add-int v8, v13, v16

    .line 105
    sub-int v18, p4, p2

    sub-int v18, v18, v9

    div-int/lit8 v10, v18, 0x2

    .line 106
    .local v10, hSpace:I
    sub-int v18, p5, p3

    sub-int v18, v18, v8

    div-int/lit8 v15, v18, 0x2

    .line 107
    .local v15, vSpace:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PreviewFrameLayout;->mFrame:Landroid/view/View;

    move-object/from16 v18, v0

    const/high16 v19, 0x4000

    move v0, v9

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    const/high16 v20, 0x4000

    move v0, v8

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    invoke-virtual/range {v18 .. v20}, Landroid/view/View;->measure(II)V

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PreviewFrameLayout;->mFrame:Landroid/view/View;

    move-object/from16 v18, v0

    add-int v19, v9, v10

    add-int v20, v8, v15

    move-object/from16 v0, v18

    move v1, v10

    move v2, v15

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PreviewFrameLayout;->mSizeListener:Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PreviewFrameLayout;->mSizeListener:Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;->onSizeChanged()V

    .line 114
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PreviewFrameLayout;->mCameraPicker:Landroid/widget/RadioGroup;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PreviewFrameLayout;->mCameraPicker:Landroid/widget/RadioGroup;

    move-object/from16 v18, v0

    sub-int v19, p4, p2

    const/high16 v20, -0x8000

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    sub-int v20, p5, p3

    const/high16 v21, -0x8000

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    invoke-virtual/range {v18 .. v20}, Landroid/widget/RadioGroup;->measure(II)V

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PreviewFrameLayout;->mCameraPicker:Landroid/widget/RadioGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/RadioGroup;->getMeasuredWidth()I

    move-result v17

    .line 119
    .local v17, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PreviewFrameLayout;->mCameraPicker:Landroid/widget/RadioGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/RadioGroup;->getMeasuredHeight()I

    move-result v11

    .line 120
    .local v11, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PreviewFrameLayout;->mCameraPicker:Landroid/widget/RadioGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/RadioGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v18, v0

    add-int v6, p3, v18

    .line 122
    .local v6, ct:I
    sub-int v18, p4, p2

    sub-int v18, v18, v17

    div-int/lit8 v5, v18, 0x2

    .line 123
    .local v5, cl:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PreviewFrameLayout;->mCameraPicker:Landroid/widget/RadioGroup;

    move-object/from16 v18, v0

    add-int v19, v5, v17

    add-int v20, v6, v11

    move-object/from16 v0, v18

    move v1, v5

    move v2, v6

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RadioGroup;->layout(IIII)V

    .line 125
    .end local v5           #cl:I
    .end local v6           #ct:I
    .end local v11           #height:I
    .end local v17           #width:I
    :cond_1
    return-void

    .line 99
    .end local v10           #hSpace:I
    .end local v15           #vSpace:I
    .restart local p1
    :cond_2
    move v0, v14

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/PreviewFrameLayout;->mAspectRatio:D

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    const-wide/high16 v20, 0x3fe0

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move v13, v0

    goto/16 :goto_0
.end method

.method public setAspectRatio(D)V
    .locals 2
    .parameter "ratio"

    .prologue
    .line 76
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 78
    :cond_0
    iget-wide v0, p0, Lcom/android/camera/PreviewFrameLayout;->mAspectRatio:D

    cmpl-double v0, v0, p1

    if-eqz v0, :cond_1

    .line 79
    iput-wide p1, p0, Lcom/android/camera/PreviewFrameLayout;->mAspectRatio:D

    .line 80
    invoke-virtual {p0}, Lcom/android/camera/PreviewFrameLayout;->requestLayout()V

    .line 82
    :cond_1
    return-void
.end method

.method public setOnSizeChangedListener(Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/camera/PreviewFrameLayout;->mSizeListener:Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;

    .line 54
    return-void
.end method
