.class public Lcom/android/vending/velvet/BalancedCarouselSnippet;
.super Landroid/widget/LinearLayout;
.source "BalancedCarouselSnippet.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method private static measureExactly(Landroid/view/View;II)V
    .locals 2
    .parameter "view"
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v1, 0x4000

    .line 33
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->measure(II)V

    .line 35
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 22
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 102
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/velvet/BalancedCarouselSnippet;->getPaddingLeft()I

    move-result v6

    .line 105
    .local v6, paddingLeft:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/velvet/BalancedCarouselSnippet;->getPaddingRight()I

    move-result v7

    .line 107
    .local v7, paddingRight:I
    const v19, 0x7f08001b

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/vending/velvet/BalancedCarouselSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 108
    .local v15, title:Landroid/view/View;
    const v19, 0x7f08001c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/vending/velvet/BalancedCarouselSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 109
    .local v11, rating:Landroid/view/View;
    const v19, 0x7f08001d

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/vending/velvet/BalancedCarouselSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 111
    .local v8, priceOrState:Landroid/view/View;
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    .line 112
    .local v17, titleWidth:I
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 113
    .local v13, ratingWidth:I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 115
    .local v10, priceOrStateWidth:I
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout$LayoutParams;

    .line 116
    .local v16, titleLp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 117
    .local v12, ratingLp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 120
    .local v9, priceOrStateLp:Landroid/widget/LinearLayout$LayoutParams;
    add-int v19, v17, v13

    add-int v14, v19, v10

    .line 121
    .local v14, requestedWidth:I
    sub-int v19, p4, p2

    sub-int v19, v19, v6

    sub-int v19, v19, v7

    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object v0, v12

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object v0, v12

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object v0, v9

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object v0, v9

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move/from16 v20, v0

    sub-int v5, v19, v20

    .line 126
    .local v5, availableWidth:I
    sub-int v19, v5, v14

    div-int/lit8 v19, v19, 0x2

    add-int v19, v19, v6

    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move/from16 v20, v0

    add-int v18, v19, v20

    .line 127
    .local v18, x:I
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v19

    add-int v20, v18, v17

    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v21

    move-object v0, v15

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 128
    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move/from16 v19, v0

    add-int v19, v19, v17

    move-object v0, v12

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int v18, v18, v19

    .line 129
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v19

    add-int v20, v18, v13

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v21

    move-object v0, v11

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 130
    move-object v0, v12

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move/from16 v19, v0

    add-int v19, v19, v13

    move-object v0, v9

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int v18, v18, v19

    .line 131
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v19

    add-int v20, v18, v10

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v21

    move-object v0, v8

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 133
    return-void
.end method

.method protected onMeasure(II)V
    .locals 23
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 39
    invoke-super/range {p0 .. p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 41
    const v21, 0x7f08001b

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/vending/velvet/BalancedCarouselSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 42
    .local v17, title:Landroid/view/View;
    const v21, 0x7f08001c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/vending/velvet/BalancedCarouselSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 43
    .local v11, rating:Landroid/view/View;
    const v21, 0x7f08001d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/vending/velvet/BalancedCarouselSnippet;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 46
    .local v7, priceOrState:Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    .line 47
    .local v18, titleHeight:I
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    .line 48
    .local v12, ratingHeight:I
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 51
    .local v8, priceOrStateHeight:I
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 52
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v0, v11

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 53
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v0, v7

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 54
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 55
    .local v20, titleWidth:I
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 56
    .local v14, ratingWidth:I
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 57
    .local v10, priceOrStateWidth:I
    add-int v21, v20, v14

    add-int v15, v21, v10

    .line 60
    .local v15, requestedWidth:I
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout$LayoutParams;

    .line 61
    .local v19, titleLp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 62
    .local v13, ratingLp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 64
    .local v9, priceOrStateLp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/velvet/BalancedCarouselSnippet;->getPaddingLeft()I

    move-result v22

    sub-int v21, v21, v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/velvet/BalancedCarouselSnippet;->getPaddingRight()I

    move-result v22

    sub-int v21, v21, v22

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move-object v0, v13

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move-object v0, v13

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move-object v0, v9

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move-object v0, v9

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move/from16 v22, v0

    sub-int v3, v21, v22

    .line 69
    .local v3, availableWidth:I
    if-gt v15, v3, :cond_0

    .line 71
    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/vending/velvet/BalancedCarouselSnippet;->measureExactly(Landroid/view/View;II)V

    .line 72
    invoke-static {v11, v14, v12}, Lcom/android/vending/velvet/BalancedCarouselSnippet;->measureExactly(Landroid/view/View;II)V

    .line 73
    invoke-static {v7, v10, v8}, Lcom/android/vending/velvet/BalancedCarouselSnippet;->measureExactly(Landroid/view/View;II)V

    .line 98
    :goto_0
    return-void

    .line 78
    :cond_0
    add-int v21, v14, v10

    move/from16 v0, v21

    move v1, v3

    if-lt v0, v1, :cond_1

    .line 81
    invoke-static {v11, v14, v12}, Lcom/android/vending/velvet/BalancedCarouselSnippet;->measureExactly(Landroid/view/View;II)V

    .line 83
    sub-int v16, v3, v14

    .line 85
    .local v16, spaceLeft:I
    mul-int v21, v16, v20

    add-int v22, v20, v10

    div-int v6, v21, v22

    .line 86
    .local v6, forTitle:I
    sub-int v5, v16, v6

    .line 87
    .local v5, forPriceOrState:I
    const/4 v4, 0x0

    .line 89
    .local v4, forEnglandOrQueen:I
    move-object/from16 v0, v17

    move v1, v6

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/vending/velvet/BalancedCarouselSnippet;->measureExactly(Landroid/view/View;II)V

    .line 90
    invoke-static {v7, v5, v8}, Lcom/android/vending/velvet/BalancedCarouselSnippet;->measureExactly(Landroid/view/View;II)V

    goto :goto_0

    .line 95
    .end local v4           #forEnglandOrQueen:I
    .end local v5           #forPriceOrState:I
    .end local v6           #forTitle:I
    .end local v16           #spaceLeft:I
    :cond_1
    invoke-static {v11, v14, v12}, Lcom/android/vending/velvet/BalancedCarouselSnippet;->measureExactly(Landroid/view/View;II)V

    .line 96
    invoke-static {v7, v10, v8}, Lcom/android/vending/velvet/BalancedCarouselSnippet;->measureExactly(Landroid/view/View;II)V

    .line 97
    sub-int v21, v3, v14

    sub-int v21, v21, v10

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/vending/velvet/BalancedCarouselSnippet;->measureExactly(Landroid/view/View;II)V

    goto :goto_0
.end method
