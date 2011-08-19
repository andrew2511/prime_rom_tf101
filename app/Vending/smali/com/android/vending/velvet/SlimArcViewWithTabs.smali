.class public Lcom/android/vending/velvet/SlimArcViewWithTabs;
.super Lcom/android/vending/velvet/SlimArcView;
.source "SlimArcViewWithTabs.java"


# instance fields
.field private final mArcOvalRectangle:Landroid/graphics/RectF;

.field private final mTabUnderlinePaint:Landroid/graphics/Paint;

.field private final mUnderlineFocusedColor:I

.field private final mUnderlinePressedColor:I

.field private final mUnderlineSelectedColor:I

.field private final mUnderlineStripColor:I

.field private final mUnderlineUnselectedPressedColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/vending/velvet/SlimArcView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/vending/velvet/SlimArcViewWithTabs;->mTabUnderlinePaint:Landroid/graphics/Paint;

    .line 22
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/vending/velvet/SlimArcViewWithTabs;->mArcOvalRectangle:Landroid/graphics/RectF;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 38
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f090014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/vending/velvet/SlimArcViewWithTabs;->mUnderlineSelectedColor:I

    .line 39
    const v1, 0x7f090015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/vending/velvet/SlimArcViewWithTabs;->mUnderlinePressedColor:I

    .line 40
    const v1, 0x7f090016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/vending/velvet/SlimArcViewWithTabs;->mUnderlineFocusedColor:I

    .line 41
    const v1, 0x7f090017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/vending/velvet/SlimArcViewWithTabs;->mUnderlineUnselectedPressedColor:I

    .line 42
    const v1, 0x7f09001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/vending/velvet/SlimArcViewWithTabs;->mUnderlineStripColor:I

    .line 43
    return-void
.end method


# virtual methods
.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 34
    .parameter "canvas"

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    invoke-super/range {p0 .. p1}, Lcom/android/vending/velvet/SlimArcView;->onDraw(Landroid/graphics/Canvas;)V

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/velvet/SlimArcViewWithTabs;->getWidth()I

    move-result v22

    .line 51
    .local v22, canvasWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/velvet/SlimArcViewWithTabs;->getHeight()I

    move-result v21

    .line 53
    .local v21, canvasHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/velvet/SlimArcViewWithTabs;->getOffsetForDropShadowBlending()I

    move-result v29

    .line 54
    .local v29, offsetForDropShadowBleeding:I
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/velvet/SlimArcViewWithTabs;->getArcStartY(II)I

    move-result v19

    .line 55
    .local v19, arcStart:I
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/velvet/SlimArcViewWithTabs;->getArcEndY(II)I

    move-result v14

    .line 57
    .local v14, arcEnd:I
    const/high16 v5, 0x40a0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/SlimArcViewWithTabs;->mScreenScaleFactor:F

    move v6, v0

    mul-float v31, v5, v6

    .line 59
    .local v31, strokeThickness:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/SlimArcViewWithTabs;->mArcOvalRectangle:Landroid/graphics/RectF;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v22

    move/from16 v2, v21

    move/from16 v3, v19

    move v4, v14

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/vending/velvet/ArcPaintingUtils;->getArcOvalRectangleForCurvedBottom(Landroid/graphics/RectF;IIII)V

    .line 64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/SlimArcViewWithTabs;->mArcOvalRectangle:Landroid/graphics/RectF;

    move-object v5, v0

    iget v6, v5, Landroid/graphics/RectF;->top:F

    const/high16 v7, 0x4000

    div-float v7, v31, v7

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->top:F

    .line 65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/SlimArcViewWithTabs;->mArcOvalRectangle:Landroid/graphics/RectF;

    move-object v5, v0

    iget v6, v5, Landroid/graphics/RectF;->bottom:F

    const/high16 v7, 0x4000

    div-float v7, v31, v7

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    .line 69
    move/from16 v0, v22

    int-to-float v0, v0

    move v5, v0

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/SlimArcViewWithTabs;->mArcOvalRectangle:Landroid/graphics/RectF;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Lcom/android/vending/velvet/ArcPaintingUtils;->getArcAngleForBottomCurve(FF)F

    move-result v7

    .line 71
    .local v7, angle:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/SlimArcViewWithTabs;->mTabUnderlinePaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/SlimArcViewWithTabs;->mTabUnderlinePaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/SlimArcViewWithTabs;->mUnderlineStripColor:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/SlimArcViewWithTabs;->mTabUnderlinePaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/SlimArcViewWithTabs;->mTabUnderlinePaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/SlimArcViewWithTabs;->mArcOvalRectangle:Landroid/graphics/RectF;

    move-object v6, v0

    const/high16 v5, 0x4000

    const/high16 v8, 0x42b4

    sub-float/2addr v8, v7

    mul-float/2addr v8, v5

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/SlimArcViewWithTabs;->mTabUnderlinePaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/SlimArcViewWithTabs;->mArcOvalRectangle:Landroid/graphics/RectF;

    move-object v5, v0

    iget v6, v5, Landroid/graphics/RectF;->top:F

    const/high16 v7, 0x3f00

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/SlimArcViewWithTabs;->mScreenScaleFactor:F

    move v8, v0

    .end local v7           #angle:F
    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->top:F

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/SlimArcViewWithTabs;->mArcOvalRectangle:Landroid/graphics/RectF;

    move-object v5, v0

    iget v6, v5, Landroid/graphics/RectF;->bottom:F

    const/high16 v7, 0x3f00

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/SlimArcViewWithTabs;->mScreenScaleFactor:F

    move v8, v0

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    .line 83
    const v5, 0x7f08008e

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/vending/velvet/SlimArcViewWithTabs;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/RadioGroup;

    .line 84
    .local v20, buttonStrip:Landroid/widget/RadioGroup;
    const/16 v25, 0x0

    .local v25, i:I
    :goto_0
    invoke-virtual/range {v20 .. v20}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v5

    move/from16 v0, v25

    move v1, v5

    if-ge v0, v1, :cond_7

    .line 85
    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 86
    .local v24, childView:Landroid/view/View;
    move-object/from16 v0, v24

    instance-of v0, v0, Landroid/widget/RadioButton;

    move v5, v0

    if-nez v5, :cond_1

    .line 84
    :cond_0
    :goto_1
    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    .line 91
    :cond_1
    move-object/from16 v0, v24

    check-cast v0, Landroid/widget/RadioButton;

    move-object/from16 v23, v0

    .line 92
    .local v23, childRadio:Landroid/widget/RadioButton;
    invoke-virtual/range {v23 .. v23}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v26

    .line 93
    .local v26, isChecked:Z
    invoke-virtual/range {v23 .. v23}, Landroid/widget/RadioButton;->isPressed()Z

    move-result v28

    .line 94
    .local v28, isPressed:Z
    invoke-virtual/range {v23 .. v23}, Landroid/widget/RadioButton;->isFocused()Z

    move-result v27

    .line 96
    .local v27, isFocused:Z
    const/16 v32, -0x1

    .line 97
    .local v32, underlineColor:I
    if-eqz v28, :cond_4

    .line 98
    if-eqz v26, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/SlimArcViewWithTabs;->mUnderlinePressedColor:I

    move v5, v0

    move/from16 v32, v5

    .line 106
    :cond_2
    :goto_2
    const/4 v5, -0x1

    move/from16 v0, v32

    move v1, v5

    if-eq v0, v1, :cond_0

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/SlimArcViewWithTabs;->mTabUnderlinePaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/SlimArcViewWithTabs;->mTabUnderlinePaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/SlimArcViewWithTabs;->mTabUnderlinePaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/SlimArcViewWithTabs;->mTabUnderlinePaint:Landroid/graphics/Paint;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/SlimArcViewWithTabs;->mArcOvalRectangle:Landroid/graphics/RectF;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v33

    .line 118
    .local v33, xc:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/SlimArcViewWithTabs;->mArcOvalRectangle:Landroid/graphics/RectF;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/high16 v6, 0x4000

    div-float v30, v5, v6

    .line 120
    .local v30, r:F
    invoke-virtual/range {v23 .. v23}, Landroid/widget/RadioButton;->getRight()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v5, v33

    move v0, v5

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/vending/velvet/ArcPaintingUtils;->getArcAngleForBottomCurve(FF)F

    move-result v5

    move v0, v5

    float-to-double v0, v0

    move-wide/from16 v17, v0

    .line 122
    .local v17, arcSegmentStart:D
    invoke-virtual/range {v23 .. v23}, Landroid/widget/RadioButton;->getLeft()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v5, v33

    move v0, v5

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/vending/velvet/ArcPaintingUtils;->getArcAngleForBottomCurve(FF)F

    move-result v5

    float-to-double v15, v5

    .line 125
    .local v15, arcSegmentEnd:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/SlimArcViewWithTabs;->mArcOvalRectangle:Landroid/graphics/RectF;

    move-object v9, v0

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move v10, v0

    sub-double v5, v15, v17

    double-to-float v11, v5

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/velvet/SlimArcViewWithTabs;->mTabUnderlinePaint:Landroid/graphics/Paint;

    move-object v13, v0

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 47
    .end local v14           #arcEnd:I
    .end local v15           #arcSegmentEnd:D
    .end local v17           #arcSegmentStart:D
    .end local v19           #arcStart:I
    .end local v20           #buttonStrip:Landroid/widget/RadioGroup;
    .end local v21           #canvasHeight:I
    .end local v22           #canvasWidth:I
    .end local v23           #childRadio:Landroid/widget/RadioButton;
    .end local v24           #childView:Landroid/view/View;
    .end local v25           #i:I
    .end local v26           #isChecked:Z
    .end local v27           #isFocused:Z
    .end local v28           #isPressed:Z
    .end local v29           #offsetForDropShadowBleeding:I
    .end local v30           #r:F
    .end local v31           #strokeThickness:F
    .end local v32           #underlineColor:I
    .end local v33           #xc:F
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 98
    .restart local v14       #arcEnd:I
    .restart local v19       #arcStart:I
    .restart local v20       #buttonStrip:Landroid/widget/RadioGroup;
    .restart local v21       #canvasHeight:I
    .restart local v22       #canvasWidth:I
    .restart local v23       #childRadio:Landroid/widget/RadioButton;
    .restart local v24       #childView:Landroid/view/View;
    .restart local v25       #i:I
    .restart local v26       #isChecked:Z
    .restart local v27       #isFocused:Z
    .restart local v28       #isPressed:Z
    .restart local v29       #offsetForDropShadowBleeding:I
    .restart local v31       #strokeThickness:F
    .restart local v32       #underlineColor:I
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/SlimArcViewWithTabs;->mUnderlineUnselectedPressedColor:I

    move v5, v0

    move/from16 v32, v5

    goto/16 :goto_2

    .line 100
    :cond_4
    if-eqz v26, :cond_6

    .line 101
    if-eqz v27, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/SlimArcViewWithTabs;->mUnderlineFocusedColor:I

    move v5, v0

    move/from16 v32, v5

    :goto_3
    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/SlimArcViewWithTabs;->mUnderlineSelectedColor:I

    move v5, v0

    move/from16 v32, v5

    goto :goto_3

    .line 102
    :cond_6
    if-eqz v27, :cond_2

    .line 103
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/vending/velvet/SlimArcViewWithTabs;->mUnderlineFocusedColor:I

    move/from16 v32, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 128
    .end local v23           #childRadio:Landroid/widget/RadioButton;
    .end local v24           #childView:Landroid/view/View;
    .end local v26           #isChecked:Z
    .end local v27           #isFocused:Z
    .end local v28           #isPressed:Z
    .end local v32           #underlineColor:I
    :cond_7
    monitor-exit p0

    return-void
.end method
