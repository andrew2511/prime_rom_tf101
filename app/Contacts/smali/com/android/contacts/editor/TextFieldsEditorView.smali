.class public Lcom/android/contacts/editor/TextFieldsEditorView;
.super Lcom/android/contacts/editor/LabeledEditorView;
.source "TextFieldsEditorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;
    }
.end annotation


# instance fields
.field private mEditorTextSize:I

.field private mFieldEditTexts:[Landroid/widget/EditText;

.field private mHasShortAndLongForms:Z

.field private mHideOptional:Z

.field private mMoreOrLess:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;)V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/TextFieldsEditorView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/contacts/editor/TextFieldsEditorView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    return p1
.end method

.method private setupMoreOrLessButton(ZZ)V
    .locals 7
    .parameter "shouldExist"
    .parameter "collapsed"

    .prologue
    const/4 v6, -0x2

    .line 177
    if-eqz p1, :cond_3

    .line 178
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMoreOrLess:Landroid/widget/ImageButton;

    if-nez v1, :cond_0

    .line 179
    new-instance v1, Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMoreOrLess:Landroid/widget/ImageButton;

    .line 180
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMoreOrLess:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/ThemeUtils;->getSelectableItemBackground(Landroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 182
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 183
    .local v0, resources:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMoreOrLess:Landroid/widget/ImageButton;

    const v2, 0x7f0a0009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const v3, 0x7f0a000b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const v4, 0x7f0a000a

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    const v5, 0x7f0a000c

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 192
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMoreOrLess:Landroid/widget/ImageButton;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMoreOrLess:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/contacts/editor/TextFieldsEditorView$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/editor/TextFieldsEditorView$1;-><init>(Lcom/android/contacts/editor/TextFieldsEditorView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMoreOrLess:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/TextFieldsEditorView;->addView(Landroid/view/View;)V

    .line 217
    .end local v0           #resources:Landroid/content/res/Resources;
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMoreOrLess:Landroid/widget/ImageButton;

    if-eqz p2, :cond_2

    const v2, 0x7f02006e

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 224
    :cond_1
    :goto_1
    return-void

    .line 217
    :cond_2
    const v2, 0x7f02006d

    goto :goto_0

    .line 220
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMoreOrLess:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    .line 221
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMoreOrLess:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/TextFieldsEditorView;->removeView(Landroid/view/View;)V

    .line 222
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMoreOrLess:Landroid/widget/ImageButton;

    goto :goto_1
.end method


# virtual methods
.method public acquireEditorBounds(Landroid/graphics/Rect;)V
    .locals 6
    .parameter "bounds"

    .prologue
    .line 345
    iget-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    if-eqz v2, :cond_1

    .line 346
    iget-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v1, v2

    .local v1, i:I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 347
    iget-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v0, v2, v1

    .line 348
    .local v0, editText:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 349
    invoke-virtual {v0}, Landroid/widget/EditText;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/EditText;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/EditText;->getRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/EditText;->getBottom()I

    move-result v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 355
    .end local v0           #editText:Landroid/widget/EditText;
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method public areOptionalFieldsVisible()Z
    .locals 1

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBaseline(I)I
    .locals 5
    .parameter "row"

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;->getBaseline(I)I

    move-result v0

    .line 86
    .local v0, baseline:I
    iget-object v4, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    if-eqz v4, :cond_0

    .line 87
    iget-object v4, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v1, v4, p1

    .line 89
    .local v1, editText:Landroid/widget/EditText;
    invoke-virtual {p0, p1}, Lcom/android/contacts/editor/TextFieldsEditorView;->getLineItemHeight(I)I

    move-result v2

    .line 90
    .local v2, lineItemHeight:I
    invoke-virtual {v1}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v4

    sub-int v4, v2, v4

    div-int/lit8 v3, v4, 0x2

    .line 91
    .local v3, offset:I
    invoke-virtual {v1}, Landroid/widget/EditText;->getBaseline()I

    move-result v4

    add-int/2addr v4, v3

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 93
    .end local v1           #editText:Landroid/widget/EditText;
    .end local v2           #lineItemHeight:I
    .end local v3           #offset:I
    :cond_0
    return v0
.end method

.method protected getLineItemCount()I
    .locals 2

    .prologue
    .line 74
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    move v0, v1

    .line 75
    .local v0, count:I
    :goto_0
    invoke-super {p0}, Lcom/android/contacts/editor/LabeledEditorView;->getLineItemCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    .line 74
    .end local v0           #count:I
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v1, v1

    move v0, v1

    goto :goto_0
.end method

.method protected getLineItemHeight(I)I
    .locals 9
    .parameter "row"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 136
    const/4 v3, 0x0

    .line 137
    .local v3, fieldHeight:I
    const/4 v0, 0x0

    .line 139
    .local v0, buttonHeight:I
    const/4 v4, 0x1

    .line 140
    .local v4, lastLineItem:Z
    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    if-eqz v6, :cond_0

    .line 141
    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v3

    .line 142
    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v6, v6

    sub-int/2addr v6, v8

    if-ne p1, v6, :cond_3

    move v4, v8

    .line 146
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 147
    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMoreOrLess:Landroid/widget/ImageButton;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMoreOrLess:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v6

    move v5, v6

    .line 148
    .local v5, moreOrLessHeight:I
    :goto_1
    add-int/2addr v0, v5

    .line 152
    .end local v5           #moreOrLessHeight:I
    :cond_1
    if-eqz v4, :cond_2

    .line 153
    invoke-virtual {p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->getDelete()Landroid/widget/ImageButton;

    move-result-object v1

    .line 154
    .local v1, deleteButton:Landroid/view/View;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v6

    move v2, v6

    .line 155
    .local v2, deleteHeight:I
    :goto_2
    add-int/2addr v0, v2

    .line 158
    .end local v1           #deleteButton:Landroid/view/View;
    .end local v2           #deleteHeight:I
    :cond_2
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-super {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;->getLineItemHeight(I)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    return v6

    :cond_3
    move v4, v7

    .line 142
    goto :goto_0

    :cond_4
    move v5, v7

    .line 147
    goto :goto_1

    .restart local v1       #deleteButton:Landroid/view/View;
    :cond_5
    move v2, v7

    .line 154
    goto :goto_2
.end method

.method public hasShortAndLongForms()Z
    .locals 1

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHasShortAndLongForms:Z

    return v0
.end method

.method protected isLineItemVisible(I)Z
    .locals 2
    .parameter "row"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 21
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 98
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/editor/LabeledEditorView;->onLayout(ZIIII)V

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->getPaddingLeft()I

    move-result v10

    .line 101
    .local v10, l1:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->getPaddingTop()I

    move-result v15

    .line 102
    .local v15, t1:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->getMeasuredWidth()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->getPaddingRight()I

    move-result v19

    sub-int v13, v18, v19

    .line 104
    .local v13, r1:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMoreOrLess:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMoreOrLess:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMoreOrLess:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v19

    sub-int v19, v13, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMoreOrLess:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v20

    add-int v20, v20, v15

    move-object/from16 v0, v18

    move/from16 v1, v19

    move v2, v15

    move v3, v13

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageButton;->layout(IIII)V

    .line 111
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->getLabel()Landroid/widget/Spinner;

    move-result-object v18

    if-eqz v18, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->getLabel()Landroid/widget/Spinner;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Spinner;->getMeasuredWidth()I

    move-result v18

    move/from16 v11, v18

    .line 112
    .local v11, labelWidth:I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->getDelete()Landroid/widget/ImageButton;

    move-result-object v18

    if-eqz v18, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->getDelete()Landroid/widget/ImageButton;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v18

    move/from16 v6, v18

    .line 113
    .local v6, deleteWidth:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMoreOrLess:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMoreOrLess:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v18

    move/from16 v12, v18

    .line 114
    .local v12, moreOrLessWidth:I
    :goto_2
    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    move-result v18

    sub-int v18, v13, v18

    sub-int v14, v18, v11

    .line 117
    .local v14, r2:I
    move/from16 v17, v15

    .line 118
    .local v17, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    .line 119
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move v0, v9

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    .line 120
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/TextFieldsEditorView;->getBaseline(I)I

    move-result v5

    .line 121
    .local v5, baseline:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    move-object/from16 v18, v0

    aget-object v7, v18, v9

    .line 122
    .local v7, editText:Landroid/widget/EditText;
    invoke-virtual {v7}, Landroid/widget/EditText;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 123
    invoke-virtual {v7}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v8

    .line 124
    .local v8, height:I
    add-int v18, v15, v17

    add-int v18, v18, v5

    invoke-virtual {v7}, Landroid/widget/EditText;->getBaseline()I

    move-result v19

    sub-int v16, v18, v19

    .line 125
    .local v16, top:I
    add-int v18, v16, v8

    move-object v0, v7

    move v1, v10

    move/from16 v2, v16

    move v3, v14

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/EditText;->layout(IIII)V

    .line 128
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/TextFieldsEditorView;->getLineItemHeight(I)I

    move-result v18

    add-int v17, v17, v18

    .line 119
    .end local v8           #height:I
    .end local v16           #top:I
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 111
    .end local v5           #baseline:I
    .end local v6           #deleteWidth:I
    .end local v7           #editText:Landroid/widget/EditText;
    .end local v9           #i:I
    .end local v11           #labelWidth:I
    .end local v12           #moreOrLessWidth:I
    .end local v14           #r2:I
    .end local v17           #y:I
    :cond_2
    const/16 v18, 0x0

    move/from16 v11, v18

    goto/16 :goto_0

    .line 112
    .restart local v11       #labelWidth:I
    :cond_3
    const/16 v18, 0x0

    move/from16 v6, v18

    goto/16 :goto_1

    .line 113
    .restart local v6       #deleteWidth:I
    :cond_4
    const/16 v18, 0x0

    move/from16 v12, v18

    goto :goto_2

    .line 132
    .restart local v12       #moreOrLessWidth:I
    .restart local v14       #r2:I
    .restart local v17       #y:I
    :cond_5
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6
    .parameter "state"

    .prologue
    .line 381
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;

    move-object v3, v0

    .line 382
    .local v3, ss:Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;
    invoke-virtual {v3}, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-super {p0, v4}, Lcom/android/contacts/editor/LabeledEditorView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 384
    iget-boolean v4, v3, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mHideOptional:Z

    iput-boolean v4, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    .line 386
    iget-object v4, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v4, v4

    iget-object v5, v3, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mVisibilities:[I

    array-length v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 387
    .local v2, numChildren:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 388
    iget-object v4, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v4, v4, v1

    iget-object v5, v3, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mVisibilities:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 387
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 390
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 362
    invoke-super {p0}, Lcom/android/contacts/editor/LabeledEditorView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    .line 363
    .local v3, superState:Landroid/os/Parcelable;
    new-instance v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;

    invoke-direct {v2, v3}, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 365
    .local v2, ss:Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;
    iget-boolean v4, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    iput-boolean v4, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mHideOptional:Z

    .line 367
    iget-object v4, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move v1, v4

    .line 368
    .local v1, numChildren:I
    :goto_0
    new-array v4, v1, [I

    iput-object v4, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mVisibilities:[I

    .line 369
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 370
    iget-object v4, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mVisibilities:[I

    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/widget/EditText;->getVisibility()I

    move-result v5

    aput v5, v4, v0

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 367
    .end local v0           #i:I
    .end local v1           #numChildren:I
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v4, v4

    move v1, v4

    goto :goto_0

    .line 373
    .restart local v0       #i:I
    .restart local v1       #numChildren:I
    :cond_1
    return-object v2
.end method

.method protected requestFocusForFirstEditField()V
    .locals 7

    .prologue
    .line 228
    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v6, v6

    if-eqz v6, :cond_2

    .line 229
    const/4 v3, 0x0

    .line 230
    .local v3, firstField:Landroid/widget/EditText;
    const/4 v0, 0x0

    .line 231
    .local v0, anyFieldHasFocus:Z
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .local v1, arr$:[Landroid/widget/EditText;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v1, v4

    .line 232
    .local v2, editText:Landroid/widget/EditText;
    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/widget/EditText;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 233
    move-object v3, v2

    .line 235
    :cond_0
    invoke-virtual {v2}, Landroid/widget/EditText;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 236
    const/4 v0, 0x1

    .line 240
    .end local v2           #editText:Landroid/widget/EditText;
    :cond_1
    if-nez v0, :cond_2

    if-eqz v3, :cond_2

    .line 241
    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 244
    .end local v0           #anyFieldHasFocus:Z
    .end local v1           #arr$:[Landroid/widget/EditText;
    .end local v3           #firstField:Landroid/widget/EditText;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_2
    return-void

    .line 231
    .restart local v0       #anyFieldHasFocus:Z
    .restart local v1       #arr$:[Landroid/widget/EditText;
    .restart local v2       #editText:Landroid/widget/EditText;
    .restart local v3       #firstField:Landroid/widget/EditText;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public setEditorTextSize(I)V
    .locals 0
    .parameter "textSize"

    .prologue
    .line 69
    iput p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mEditorTextSize:I

    .line 70
    return-void
.end method

.method public setEnabled(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 163
    invoke-super {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;->setEnabled(Z)V

    .line 165
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 166
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 167
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->isReadOnly()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    move v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 167
    goto :goto_1

    .line 170
    .end local v0           #index:I
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMoreOrLess:Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMoreOrLess:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->isReadOnly()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz p1, :cond_3

    move v2, v4

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 171
    :cond_2
    return-void

    :cond_3
    move v2, v3

    .line 170
    goto :goto_2
.end method

.method public setValues(Lcom/android/contacts/model/AccountType$DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
    .locals 22
    .parameter "kind"
    .parameter "entry"
    .parameter "state"
    .parameter "readOnly"
    .parameter "vig"

    .prologue
    .line 249
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/editor/LabeledEditorView;->setValues(Lcom/android/contacts/model/AccountType$DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    move-object v5, v0

    .local v5, arr$:[Landroid/widget/EditText;
    move-object v0, v5

    array-length v0, v0

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_0
    move v0, v13

    move/from16 v1, v16

    if-ge v0, v1, :cond_0

    aget-object v10, v5, v13

    .line 253
    .local v10, fieldEditText:Landroid/widget/EditText;
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/TextFieldsEditorView;->removeView(Landroid/view/View;)V

    .line 252
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 256
    .end local v5           #arr$:[Landroid/widget/EditText;
    .end local v10           #fieldEditText:Landroid/widget/EditText;
    .end local v13           #i$:I
    .end local v16           #len$:I
    :cond_0
    const/4 v12, 0x0

    .line 258
    .local v12, hidePossible:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v9

    .line 259
    .local v9, fieldCount:I
    move v0, v9

    new-array v0, v0, [Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .line 260
    const/4 v14, 0x0

    .local v14, index:I
    :goto_1
    if-ge v14, v9, :cond_e

    .line 261
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/model/AccountType$DataKind;->fieldList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v14

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/model/AccountType$EditField;

    .line 262
    .local v8, field:Lcom/android/contacts/model/AccountType$EditField;
    new-instance v11, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object v0, v11

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 263
    .local v11, fieldView:Landroid/widget/EditText;
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v20, -0x1

    const/16 v21, -0x2

    invoke-direct/range {v19 .. v21}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v0, v11

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    const/16 v19, 0x30

    move-object v0, v11

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 266
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mEditorTextSize:I

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 267
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mEditorTextSize:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object v0, v11

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 269
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    move-object/from16 v19, v0

    aput-object v11, v19, v14

    .line 270
    move-object/from16 v0, p5

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/contacts/editor/ViewIdGenerator;->getId(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType$DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;I)I

    move-result v19

    move-object v0, v11

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setId(I)V

    .line 271
    move-object v0, v8

    iget v0, v0, Lcom/android/contacts/model/AccountType$EditField;->titleRes:I

    move/from16 v19, v0

    if-lez v19, :cond_2

    .line 272
    move-object v0, v8

    iget v0, v0, Lcom/android/contacts/model/AccountType$EditField;->titleRes:I

    move/from16 v19, v0

    move-object v0, v11

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 274
    :cond_2
    iget v15, v8, Lcom/android/contacts/model/AccountType$EditField;->inputType:I

    .line 275
    .local v15, inputType:I
    invoke-virtual {v11, v15}, Landroid/widget/EditText;->setInputType(I)V

    .line 276
    const/16 v19, 0x3

    move v0, v15

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 277
    new-instance v19, Landroid/telephony/PhoneNumberFormattingTextWatcher;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>(Ljava/lang/String;)V

    move-object v0, v11

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 280
    :cond_3
    move-object v0, v8

    iget v0, v0, Lcom/android/contacts/model/AccountType$EditField;->minLines:I

    move/from16 v19, v0

    move-object v0, v11

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMinLines(I)V

    .line 283
    iget-object v6, v8, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    .line 284
    .local v6, column:Ljava/lang/String;
    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 285
    .local v17, value:Ljava/lang/String;
    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 288
    new-instance v19, Lcom/android/contacts/editor/TextFieldsEditorView$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/editor/TextFieldsEditorView$2;-><init>(Lcom/android/contacts/editor/TextFieldsEditorView;Ljava/lang/String;)V

    move-object v0, v11

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->isEnabled()Z

    move-result v19

    if-eqz v19, :cond_4

    if-nez p4, :cond_4

    const/16 v19, 0x1

    :goto_2
    move-object v0, v11

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 306
    move-object v0, v8

    iget-boolean v0, v0, Lcom/android/contacts/model/AccountType$EditField;->shortForm:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 307
    const/4 v12, 0x1

    .line 308
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/editor/TextFieldsEditorView;->mHasShortAndLongForms:Z

    .line 309
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    const/16 v19, 0x0

    :goto_3
    move-object v0, v11

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 322
    :goto_4
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/TextFieldsEditorView;->addView(Landroid/view/View;)V

    .line 260
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 304
    :cond_4
    const/16 v19, 0x0

    goto :goto_2

    .line 309
    :cond_5
    const/16 v19, 0x8

    goto :goto_3

    .line 310
    :cond_6
    move-object v0, v8

    iget-boolean v0, v0, Lcom/android/contacts/model/AccountType$EditField;->longForm:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 311
    const/4 v12, 0x1

    .line 312
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/editor/TextFieldsEditorView;->mHasShortAndLongForms:Z

    .line 313
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    const/16 v19, 0x8

    :goto_5
    move-object v0, v11

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_4

    :cond_7
    const/16 v19, 0x0

    goto :goto_5

    .line 316
    :cond_8
    invoke-static/range {v17 .. v17}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_a

    move-object v0, v8

    iget-boolean v0, v0, Lcom/android/contacts/model/AccountType$EditField;->optional:Z

    move/from16 v19, v0

    if-eqz v19, :cond_a

    const/16 v19, 0x1

    move/from16 v7, v19

    .line 317
    .local v7, couldHide:Z
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b

    if-eqz v7, :cond_b

    const/16 v19, 0x1

    move/from16 v18, v19

    .line 318
    .local v18, willHide:Z
    :goto_7
    if-eqz v18, :cond_c

    const/16 v19, 0x8

    :goto_8
    move-object v0, v11

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 319
    if-nez v12, :cond_9

    if-eqz v7, :cond_d

    :cond_9
    const/16 v19, 0x1

    move/from16 v12, v19

    :goto_9
    goto :goto_4

    .line 316
    .end local v7           #couldHide:Z
    .end local v18           #willHide:Z
    :cond_a
    const/16 v19, 0x0

    move/from16 v7, v19

    goto :goto_6

    .line 317
    .restart local v7       #couldHide:Z
    :cond_b
    const/16 v19, 0x0

    move/from16 v18, v19

    goto :goto_7

    .line 318
    .restart local v18       #willHide:Z
    :cond_c
    const/16 v19, 0x0

    goto :goto_8

    .line 319
    :cond_d
    const/16 v19, 0x0

    move/from16 v12, v19

    goto :goto_9

    .line 326
    .end local v6           #column:Ljava/lang/String;
    .end local v7           #couldHide:Z
    .end local v8           #field:Lcom/android/contacts/model/AccountType$EditField;
    .end local v11           #fieldView:Landroid/widget/EditText;
    .end local v15           #inputType:I
    .end local v17           #value:Ljava/lang/String;
    .end local v18           #willHide:Z
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    move v1, v12

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/editor/TextFieldsEditorView;->setupMoreOrLessButton(ZZ)V

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMoreOrLess:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    if-eqz v19, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMoreOrLess:Landroid/widget/ImageButton;

    move-object/from16 v19, v0

    if-nez p4, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->isEnabled()Z

    move-result v20

    if-eqz v20, :cond_10

    const/16 v20, 0x1

    :goto_a
    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 328
    :cond_f
    return-void

    .line 327
    :cond_10
    const/16 v20, 0x0

    goto :goto_a
.end method
