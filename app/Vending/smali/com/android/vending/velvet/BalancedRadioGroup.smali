.class public Lcom/android/vending/velvet/BalancedRadioGroup;
.super Landroid/widget/RadioGroup;
.source "BalancedRadioGroup.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 25
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/velvet/BalancedRadioGroup;->getPaddingLeft()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/velvet/BalancedRadioGroup;->getPaddingRight()I

    move-result v22

    add-int v18, v21, v22

    .line 72
    .local v18, totalPadding:I
    const/16 v17, 0x0

    .line 73
    .local v17, totalMeasuredChildWidth:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/velvet/BalancedRadioGroup;->getChildCount()I

    move-result v21

    move v0, v9

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    .line 74
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/android/vending/velvet/BalancedRadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 75
    .local v5, child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/RadioGroup$LayoutParams;

    .line 76
    .local v11, lp:Landroid/widget/RadioGroup$LayoutParams;
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    move-object v0, v11

    iget v0, v0, Landroid/widget/RadioGroup$LayoutParams;->leftMargin:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object v0, v11

    iget v0, v0, Landroid/widget/RadioGroup$LayoutParams;->rightMargin:I

    move/from16 v22, v0

    add-int v21, v21, v22

    add-int v17, v17, v21

    .line 73
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 79
    .end local v5           #child:Landroid/view/View;
    .end local v11           #lp:Landroid/widget/RadioGroup$LayoutParams;
    :cond_0
    sub-int v21, p4, p2

    sub-int v21, v21, v18

    sub-int v21, v21, v17

    div-int/lit8 v8, v21, 0x2

    .line 80
    .local v8, extraMargin:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/velvet/BalancedRadioGroup;->getPaddingLeft()I

    move-result v21

    add-int v21, v21, p2

    add-int v6, v21, v8

    .line 81
    .local v6, currLeft:I
    const/4 v9, 0x0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/velvet/BalancedRadioGroup;->getChildCount()I

    move-result v21

    move v0, v9

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    .line 82
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/android/vending/velvet/BalancedRadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 83
    .restart local v5       #child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/RadioGroup$LayoutParams;

    .line 84
    .restart local v11       #lp:Landroid/widget/RadioGroup$LayoutParams;
    iget v10, v11, Landroid/widget/RadioGroup$LayoutParams;->leftMargin:I

    .line 85
    .local v10, leftMargin:I
    iget v15, v11, Landroid/widget/RadioGroup$LayoutParams;->rightMargin:I

    .line 87
    .local v15, rightMargin:I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    .line 88
    .local v12, measuredWidth:I
    add-int v21, v6, v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/velvet/BalancedRadioGroup;->getPaddingTop()I

    move-result v22

    add-int v22, v22, p3

    add-int v23, v6, v12

    add-int v23, v23, v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/velvet/BalancedRadioGroup;->getPaddingBottom()I

    move-result v24

    sub-int v24, p5, v24

    move-object v0, v5

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 92
    move-object v0, v5

    check-cast v0, Landroid/widget/TextView;

    move-object/from16 v19, v0

    .line 96
    .local v19, tvChild:Landroid/widget/TextView;
    const/16 v21, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 97
    new-instance v13, Landroid/widget/RadioGroup$LayoutParams;

    const/16 v21, -0x2

    const/16 v22, -0x2

    move-object v0, v13

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    .line 99
    .local v13, newLayoutParams:Landroid/widget/RadioGroup$LayoutParams;
    move-object/from16 v0, v19

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    const/high16 v21, 0x4000

    move v0, v12

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->measure(II)V

    .line 103
    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v20

    .line 106
    .local v20, twoLineHeight:I
    const/16 v21, 0xa

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 107
    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getLineCount()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_3

    .line 111
    :cond_1
    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getTextSize()F

    move-result v16

    .line 113
    .local v16, textSize:F
    :cond_2
    const/high16 v21, 0x3f80

    sub-float v16, v16, v21

    .line 114
    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 115
    const/high16 v21, 0x4000

    move v0, v12

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->measure(II)V

    .line 121
    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getLineCount()I

    move-result v7

    .line 122
    .local v7, currLineNumber:I
    const/16 v21, 0x2

    move v0, v7

    move/from16 v1, v21

    if-gt v0, v1, :cond_2

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v21

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_2

    .line 128
    .end local v7           #currLineNumber:I
    .end local v16           #textSize:F
    :cond_3
    const/16 v21, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 130
    const/high16 v21, 0x4000

    move v0, v12

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->measure(II)V

    .line 134
    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v14

    .line 135
    .local v14, reqHeight:I
    add-int v21, v6, v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/velvet/BalancedRadioGroup;->getPaddingBottom()I

    move-result v22

    sub-int v22, p5, v22

    sub-int v22, v22, v14

    add-int v23, v6, v12

    add-int v23, v23, v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/velvet/BalancedRadioGroup;->getPaddingBottom()I

    move-result v24

    sub-int v24, p5, v24

    move-object v0, v5

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 139
    invoke-virtual {v5, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    add-int v21, v12, v10

    add-int v21, v21, v15

    add-int v6, v6, v21

    .line 81
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 143
    .end local v5           #child:Landroid/view/View;
    .end local v10           #leftMargin:I
    .end local v11           #lp:Landroid/widget/RadioGroup$LayoutParams;
    .end local v12           #measuredWidth:I
    .end local v13           #newLayoutParams:Landroid/widget/RadioGroup$LayoutParams;
    .end local v14           #reqHeight:I
    .end local v15           #rightMargin:I
    .end local v19           #tvChild:Landroid/widget/TextView;
    .end local v20           #twoLineHeight:I
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 15
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 29
    invoke-super/range {p0 .. p2}, Landroid/widget/RadioGroup;->onMeasure(II)V

    .line 33
    invoke-virtual {p0}, Lcom/android/vending/velvet/BalancedRadioGroup;->getChildCount()I

    move-result v1

    .line 34
    .local v1, childCount:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    invoke-virtual {p0}, Lcom/android/vending/velvet/BalancedRadioGroup;->getPaddingLeft()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {p0}, Lcom/android/vending/velvet/BalancedRadioGroup;->getPaddingRight()I

    move-result v14

    sub-int v12, v13, v14

    .line 36
    .local v12, origWidthSpecSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    invoke-virtual {p0}, Lcom/android/vending/velvet/BalancedRadioGroup;->getPaddingTop()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {p0}, Lcom/android/vending/velvet/BalancedRadioGroup;->getPaddingBottom()I

    move-result v14

    sub-int v11, v13, v14

    .line 38
    .local v11, origHeightSpecSize:I
    div-int v10, v12, v1

    .line 41
    .local v10, maxPossibleChildWidth:I
    const/4 v9, 0x0

    .line 42
    .local v9, maxChildWidth:I
    const/4 v8, 0x0

    .line 43
    .local v8, maxChildMargins:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/vending/velvet/BalancedRadioGroup;->getChildCount()I

    move-result v13

    if-ge v6, v13, :cond_0

    .line 44
    invoke-virtual {p0, v6}, Lcom/android/vending/velvet/BalancedRadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, child:Landroid/view/View;
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v0, v13, v14}, Landroid/view/View;->measure(II)V

    .line 46
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 47
    .local v2, currChildWidth:I
    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioGroup$LayoutParams;

    .line 50
    .local v7, lp:Landroid/widget/RadioGroup$LayoutParams;
    iget v13, v7, Landroid/widget/RadioGroup$LayoutParams;->leftMargin:I

    iget v14, v7, Landroid/widget/RadioGroup$LayoutParams;->rightMargin:I

    add-int/2addr v13, v14

    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 43
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 54
    .end local v0           #child:Landroid/view/View;
    .end local v2           #currChildWidth:I
    .end local v7           #lp:Landroid/widget/RadioGroup$LayoutParams;
    :cond_0
    sub-int v13, v10, v8

    invoke-static {v9, v13}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 56
    .local v4, finalChildWidth:I
    const/high16 v13, 0x4000

    invoke-static {v4, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 59
    .local v5, finalChildWidthMeasureSpec:I
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/android/vending/velvet/BalancedRadioGroup;->getChildCount()I

    move-result v13

    if-ge v6, v13, :cond_1

    .line 60
    invoke-virtual {p0, v6}, Lcom/android/vending/velvet/BalancedRadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 62
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 63
    .local v3, finalChildHeight:I
    const/high16 v13, 0x4000

    invoke-static {v3, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v0, v5, v13}, Landroid/view/View;->measure(II)V

    .line 59
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 66
    .end local v0           #child:Landroid/view/View;
    .end local v3           #finalChildHeight:I
    :cond_1
    return-void
.end method
