.class public final Lcom/android/internal/view/menu/IconMenuView;
.super Landroid/view/ViewGroup;
.source "IconMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/android/internal/view/menu/MenuView;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/IconMenuView$LayoutParams;,
        Lcom/android/internal/view/menu/IconMenuView$SavedState;
    }
.end annotation


# static fields
.field private static final ITEM_CAPTION_CYCLE_DELAY:I = 0x3e8


# instance fields
.field private mAnimations:I

.field private mHasStaleChildren:Z

.field private mHorizontalDivider:Landroid/graphics/drawable/Drawable;

.field private mHorizontalDividerHeight:I

.field private mHorizontalDividerRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mItemBackground:Landroid/graphics/drawable/Drawable;

.field private mLastChildrenCaptionMode:Z

.field private mLayout:[I

.field private mLayoutNumRows:I

.field private mMaxItems:I

.field private mMaxItemsPerRow:I

.field private mMaxRows:I

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mMenuBeingLongpressed:Z

.field private mMoreIcon:Landroid/graphics/drawable/Drawable;

.field private mMoreItemView:Lcom/android/internal/view/menu/IconMenuItemView;

.field private mNumActualItemsShown:I

.field private mRowHeight:I

.field private mVerticalDivider:Landroid/graphics/drawable/Drawable;

.field private mVerticalDividerRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mVerticalDividerWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 132
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    iput-boolean v3, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenuBeingLongpressed:Z

    .line 134
    sget-object v1, Lcom/android/internal/R$styleable;->IconMenuView:[I

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 136
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v1, 0x40

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mRowHeight:I

    .line 137
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxRows:I

    .line 138
    const/4 v1, 0x4

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxItems:I

    .line 139
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxItemsPerRow:I

    .line 140
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mMoreIcon:Landroid/graphics/drawable/Drawable;

    .line 141
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 143
    sget-object v1, Lcom/android/internal/R$styleable;->MenuView:[I

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 144
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mItemBackground:Landroid/graphics/drawable/Drawable;

    .line 145
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    .line 146
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerRects:Ljava/util/ArrayList;

    .line 147
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    .line 148
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerRects:Ljava/util/ArrayList;

    .line 149
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mAnimations:I

    .line 150
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 152
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_77

    .line 153
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    .line 155
    iget v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    if-ne v1, v7, :cond_77

    iput v4, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    .line 158
    :cond_77
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_89

    .line 159
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerWidth:I

    .line 161
    iget v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerWidth:I

    if-ne v1, v7, :cond_89

    iput v4, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerWidth:I

    .line 164
    :cond_89
    iget v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxRows:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayout:[I

    .line 167
    invoke-virtual {p0, v3}, Lcom/android/internal/view/menu/IconMenuView;->setWillNotDraw(Z)V

    .line 170
    invoke-virtual {p0, v4}, Lcom/android/internal/view/menu/IconMenuView;->setFocusableInTouchMode(Z)V

    .line 172
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/IconMenuView;->setDescendantFocusability(I)V

    .line 173
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/view/menu/IconMenuView;)Lcom/android/internal/view/menu/MenuBuilder;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method private addItemView(Lcom/android/internal/view/menu/IconMenuItemView;)V
    .registers 4
    .parameter "itemView"

    .prologue
    .line 286
    invoke-virtual {p1, p0}, Lcom/android/internal/view/menu/IconMenuItemView;->setIconMenuView(Lcom/android/internal/view/menu/IconMenuView;)V

    .line 289
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mItemBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/IconMenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 294
    invoke-virtual {p1, p0}, Lcom/android/internal/view/menu/IconMenuItemView;->setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V

    .line 296
    invoke-virtual {p1}, Lcom/android/internal/view/menu/IconMenuItemView;->getTextAppropriateLayoutParams()Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/view/menu/IconMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    return-void
.end method

.method private calculateItemFittingMetadata(I)V
    .registers 9
    .parameter "width"

    .prologue
    .line 721
    iget v3, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxItemsPerRow:I

    .line 722
    .local v3, maxNumItemsPerRow:I
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getChildCount()I

    move-result v4

    .line 723
    .local v4, numItems:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v4, :cond_27

    .line 724
    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    .line 726
    .local v2, lp:Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    const/4 v5, 0x1

    iput v5, v2, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->maxNumItemsOnRow:I

    .line 727
    move v0, v3

    .local v0, curNumItemsPerRow:I
    :goto_17
    if-lez v0, :cond_21

    .line 730
    iget v5, v2, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->desiredWidth:I

    div-int v6, p1, v0

    if-ge v5, v6, :cond_24

    .line 732
    iput v0, v2, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->maxNumItemsOnRow:I

    .line 723
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 728
    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    .line 737
    .end local v0           #curNumItemsPerRow:I
    .end local v2           #lp:Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    :cond_27
    return-void
.end method

.method private createMoreItemView()Lcom/android/internal/view/menu/IconMenuItemView;
    .registers 6

    .prologue
    .line 306
    iget-object v3, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/view/menu/MenuBuilder;->getMenuType(I)Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 308
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x1090040

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/IconMenuItemView;

    .line 311
    .local v1, itemView:Lcom/android/internal/view/menu/IconMenuItemView;
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 312
    .local v2, r:Landroid/content/res/Resources;
    const v3, 0x1040318

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/view/menu/IconMenuView;->mMoreIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/view/menu/IconMenuItemView;->initialize(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 316
    new-instance v3, Lcom/android/internal/view/menu/IconMenuView$1;

    invoke-direct {v3, p0}, Lcom/android/internal/view/menu/IconMenuView$1;-><init>(Lcom/android/internal/view/menu/IconMenuView;)V

    invoke-virtual {v1, v3}, Lcom/android/internal/view/menu/IconMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    return-object v1
.end method

.method private doItemsFit()Z
    .registers 12

    .prologue
    const/4 v10, 0x1

    .line 251
    const/4 v1, 0x0

    .line 253
    .local v1, itemPos:I
    iget-object v4, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayout:[I

    .line 254
    .local v4, layout:[I
    iget v7, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayoutNumRows:I

    .line 255
    .local v7, numRows:I
    const/4 v8, 0x0

    .local v8, row:I
    :goto_7
    if-ge v8, v7, :cond_2c

    .line 256
    aget v6, v4, v8

    .line 262
    .local v6, numItemsOnRow:I
    if-ne v6, v10, :cond_12

    .line 263
    add-int/lit8 v1, v1, 0x1

    .line 255
    :goto_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 267
    :cond_12
    move v3, v6

    .local v3, itemsOnRowCounter:I
    move v2, v1

    .end local v1           #itemPos:I
    .local v2, itemPos:I
    :goto_14
    if-lez v3, :cond_2e

    .line 269
    add-int/lit8 v1, v2, 0x1

    .end local v2           #itemPos:I
    .restart local v1       #itemPos:I
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 270
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    .line 271
    .local v5, lp:Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    iget v9, v5, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->maxNumItemsOnRow:I

    if-ge v9, v6, :cond_28

    .line 272
    const/4 v9, 0x0

    .line 277
    .end local v0           #child:Landroid/view/View;
    .end local v3           #itemsOnRowCounter:I
    .end local v5           #lp:Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    .end local v6           #numItemsOnRow:I
    :goto_27
    return v9

    .line 268
    .restart local v0       #child:Landroid/view/View;
    .restart local v3       #itemsOnRowCounter:I
    .restart local v5       #lp:Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    .restart local v6       #numItemsOnRow:I
    :cond_28
    add-int/lit8 v3, v3, -0x1

    move v2, v1

    .end local v1           #itemPos:I
    .restart local v2       #itemPos:I
    goto :goto_14

    .end local v0           #child:Landroid/view/View;
    .end local v2           #itemPos:I
    .end local v3           #itemsOnRowCounter:I
    .end local v5           #lp:Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    .end local v6           #numItemsOnRow:I
    .restart local v1       #itemPos:I
    :cond_2c
    move v9, v10

    .line 277
    goto :goto_27

    .end local v1           #itemPos:I
    .restart local v2       #itemPos:I
    .restart local v3       #itemsOnRowCounter:I
    .restart local v6       #numItemsOnRow:I
    :cond_2e
    move v1, v2

    .end local v2           #itemPos:I
    .restart local v1       #itemPos:I
    goto :goto_f
.end method

.method private layoutItems(I)V
    .registers 6
    .parameter "width"

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getChildCount()I

    move-result v1

    .line 182
    .local v1, numItems:I
    if-nez v1, :cond_a

    .line 183
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayoutNumRows:I

    .line 208
    :cond_9
    return-void

    .line 188
    :cond_a
    int-to-float v2, v1

    iget v3, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxItemsPerRow:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxRows:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 195
    .local v0, curNumRows:I
    :goto_1b
    iget v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxRows:I

    if-gt v0, v2, :cond_9

    .line 196
    invoke-direct {p0, v0, v1}, Lcom/android/internal/view/menu/IconMenuView;->layoutItemsUsingGravity(II)V

    .line 198
    if-ge v0, v1, :cond_9

    .line 203
    invoke-direct {p0}, Lcom/android/internal/view/menu/IconMenuView;->doItemsFit()Z

    move-result v2

    if-nez v2, :cond_9

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b
.end method

.method private layoutItemsUsingGravity(II)V
    .registers 9
    .parameter "numRows"
    .parameter "numItems"

    .prologue
    .line 220
    div-int v2, p2, p1

    .line 221
    .local v2, numBaseItemsPerRow:I
    rem-int v3, p2, p1

    .line 228
    .local v3, numLeftoverItems:I
    sub-int v4, p1, v3

    .line 230
    .local v4, rowsThatGetALeftoverItem:I
    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayout:[I

    .line 231
    .local v1, layout:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    if-ge v0, p1, :cond_18

    .line 232
    aput v2, v1, v0

    .line 235
    if-lt v0, v4, :cond_15

    .line 236
    aget v5, v1, v0

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v0

    .line 231
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 240
    :cond_18
    iput p1, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayoutNumRows:I

    .line 241
    return-void
.end method

.method private positionChildren(II)V
    .registers 26
    .parameter "menuWidth"
    .parameter "menuHeight"

    .prologue
    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerRects:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 387
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerRects:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 390
    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/IconMenuView;->mLayoutNumRows:I

    move v14, v0

    .line 391
    .local v14, numRows:I
    const/16 v17, 0x1

    sub-int v15, v14, v17

    .line 392
    .local v15, numRowsMinus1:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/IconMenuView;->mLayout:[I

    move-object v13, v0

    .line 395
    .local v13, numItemsForRow:[I
    const/4 v9, 0x0

    .line 397
    .local v9, itemPos:I
    const/4 v6, 0x0

    .line 402
    .local v6, childLayoutParams:Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    const/4 v11, 0x0

    .line 406
    .local v11, itemTop:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    move/from16 v17, v0

    const/16 v18, 0x1

    sub-int v18, v14, v18

    mul-int v17, v17, v18

    sub-int v17, p2, v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move v0, v14

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v7, v17, v18

    .line 409
    .local v7, itemHeight:F
    const/16 v16, 0x0

    .local v16, row:I
    :goto_4e
    move/from16 v0, v16

    move v1, v14

    if-ge v0, v1, :cond_16e

    .line 411
    const/4 v8, 0x0

    .line 414
    .local v8, itemLeft:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerWidth:I

    move/from16 v17, v0

    aget v18, v13, v16

    const/16 v19, 0x1

    sub-int v18, v18, v19

    mul-int v17, v17, v18

    sub-int v17, p1, v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    aget v18, v13, v16

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v12, v17, v18

    .line 417
    .local v12, itemWidth:F
    const/4 v10, 0x0

    .local v10, itemPosOnRow:I
    :goto_73
    aget v17, v13, v16

    move v0, v10

    move/from16 v1, v17

    if-ge v0, v1, :cond_118

    .line 419
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 420
    .local v5, child:Landroid/view/View;
    move v0, v12

    float-to-int v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x4000

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v17

    move v0, v7

    float-to-int v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x4000

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    move-object v0, v5

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 424
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6           #childLayoutParams:Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    check-cast v6, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    .line 425
    .restart local v6       #childLayoutParams:Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    move v0, v8

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object v1, v6

    iput v0, v1, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->left:I

    .line 426
    add-float v17, v8, v12

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object v1, v6

    iput v0, v1, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->right:I

    .line 427
    move v0, v11

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object v1, v6

    iput v0, v1, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->top:I

    .line 428
    add-float v17, v11, v7

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object v1, v6

    iput v0, v1, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->bottom:I

    .line 431
    add-float/2addr v8, v12

    .line 432
    add-int/lit8 v9, v9, 0x1

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_107

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerRects:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    new-instance v18, Landroid/graphics/Rect;

    move v0, v8

    float-to-int v0, v0

    move/from16 v19, v0

    move v0, v11

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v21, v21, v8

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-float v22, v11, v7

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    invoke-direct/range {v18 .. v22}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    :cond_107
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v8, v8, v17

    .line 417
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_73

    .line 448
    .end local v5           #child:Landroid/view/View;
    :cond_118
    if-eqz v6, :cond_11f

    .line 449
    move/from16 v0, p1

    move-object v1, v6

    iput v0, v1, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->right:I

    .line 452
    :cond_11f
    add-float/2addr v11, v7

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_16a

    move/from16 v0, v16

    move v1, v15

    if-ge v0, v1, :cond_16a

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerRects:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    new-instance v18, Landroid/graphics/Rect;

    const/16 v19, 0x0

    move v0, v11

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v21, v21, v11

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p1

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v11, v11, v17

    .line 409
    :cond_16a
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_4e

    .line 462
    .end local v8           #itemLeft:F
    .end local v10           #itemPosOnRow:I
    .end local v12           #itemWidth:F
    :cond_16e
    return-void
.end method

.method private setChildrenCaptionMode(Z)V
    .registers 5
    .parameter "shortcut"

    .prologue
    .line 707
    iput-boolean p1, p0, Lcom/android/internal/view/menu/IconMenuView;->mLastChildrenCaptionMode:Z

    .line 709
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_9
    if-ltz v0, :cond_17

    .line 710
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/IconMenuItemView;

    invoke-virtual {v1, p1}, Lcom/android/internal/view/menu/IconMenuItemView;->setCaptionMode(Z)V

    .line 709
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 712
    :cond_17
    return-void
.end method

.method private setCycleShortcutCaptionMode(Z)V
    .registers 3
    .parameter "cycleShortcutAndNormal"

    .prologue
    const/4 v0, 0x0

    .line 656
    if-nez p1, :cond_c

    .line 661
    invoke-virtual {p0, p0}, Lcom/android/internal/view/menu/IconMenuView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 662
    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->setChildrenCaptionMode(Z)V

    .line 663
    iput-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenuBeingLongpressed:Z

    .line 671
    :goto_b
    return-void

    .line 668
    :cond_c
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->setChildrenCaptionMode(Z)V

    goto :goto_b
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .parameter "p"

    .prologue
    .line 545
    instance-of v0, p1, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 601
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_20

    .line 602
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_25

    .line 603
    invoke-virtual {p0, p0}, Lcom/android/internal/view/menu/IconMenuView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 604
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p0, v0, v1}, Lcom/android/internal/view/menu/IconMenuView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 621
    :cond_20
    :goto_20
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_24
    return v0

    .line 605
    :cond_25
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_20

    .line 607
    iget-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenuBeingLongpressed:Z

    if-eqz v0, :cond_35

    .line 610
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->setCycleShortcutCaptionMode(Z)V

    move v0, v2

    .line 611
    goto :goto_24

    .line 615
    :cond_35
    invoke-virtual {p0, p0}, Lcom/android/internal/view/menu/IconMenuView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_20
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .parameter "x0"

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/IconMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    .registers 4
    .parameter "attrs"

    .prologue
    .line 539
    new-instance v0, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getLayout()[I
    .registers 2

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayout:[I

    return-object v0
.end method

.method public getLayoutNumRows()I
    .registers 2

    .prologue
    .line 595
    iget v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayoutNumRows:I

    return v0
.end method

.method getNumActualItemsShown()I
    .registers 2

    .prologue
    .line 564
    iget v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mNumActualItemsShown:I

    return v0
.end method

.method public getWindowAnimations()I
    .registers 2

    .prologue
    .line 569
    iget v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mAnimations:I

    return v0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuBuilder;I)V
    .registers 4
    .parameter "menu"
    .parameter "menuType"

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 333
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->updateChildren(Z)V

    .line 334
    return-void
.end method

.method public invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method markStaleChildren()V
    .registers 2

    .prologue
    .line 552
    iget-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mHasStaleChildren:Z

    if-nez v0, :cond_a

    .line 553
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mHasStaleChildren:Z

    .line 554
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->requestLayout()V

    .line 556
    :cond_a
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 626
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 628
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->requestFocus()Z

    .line 629
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 633
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->setCycleShortcutCaptionMode(Z)V

    .line 634
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 635
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter "canvas"

    .prologue
    const/4 v4, 0x1

    .line 512
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    .line 513
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1e

    .line 515
    iget-object v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerRects:Ljava/util/ArrayList;

    .line 516
    .local v2, rects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int v1, v3, v4

    .local v1, i:I
    :goto_d
    if-ltz v1, :cond_1e

    .line 517
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 518
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 516
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 522
    .end local v1           #i:I
    .end local v2           #rects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    .line 523
    if-eqz v0, :cond_3b

    .line 525
    iget-object v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerRects:Ljava/util/ArrayList;

    .line 526
    .restart local v2       #rects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int v1, v3, v4

    .end local p0
    .restart local v1       #i:I
    :goto_2a
    if-ltz v1, :cond_3b

    .line 527
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 528
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 526
    add-int/lit8 v1, v1, -0x1

    goto :goto_2a

    .line 531
    .end local v1           #i:I
    .end local v2           #rects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    :cond_3b
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 13
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int v2, v3, v4

    .local v2, i:I
    :goto_7
    if-ltz v2, :cond_21

    .line 500
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 501
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    .line 505
    .local v1, childLayoutParams:Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    iget v3, v1, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->left:I

    iget v4, v1, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->top:I

    iget v5, v1, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->right:I

    iget v6, v1, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->bottom:I

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 499
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    .line 508
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childLayoutParams:Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    :cond_21
    return-void
.end method

.method protected onMeasure(II)V
    .registers 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v4, 0x0

    .line 466
    iget-boolean v3, p0, Lcom/android/internal/view/menu/IconMenuView;->mHasStaleChildren:Z

    if-eqz v3, :cond_a

    .line 467
    iput-boolean v4, p0, Lcom/android/internal/view/menu/IconMenuView;->mHasStaleChildren:Z

    .line 470
    invoke-virtual {p0, v4}, Lcom/android/internal/view/menu/IconMenuView;->updateChildren(Z)V

    .line 473
    :cond_a
    const v3, 0x7fffffff

    invoke-static {v3, p1}, Lcom/android/internal/view/menu/IconMenuView;->resolveSize(II)I

    move-result v2

    .line 474
    .local v2, measuredWidth:I
    invoke-direct {p0, v2}, Lcom/android/internal/view/menu/IconMenuView;->calculateItemFittingMetadata(I)V

    .line 475
    invoke-direct {p0, v2}, Lcom/android/internal/view/menu/IconMenuView;->layoutItems(I)V

    .line 479
    iget v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayoutNumRows:I

    .line 480
    .local v1, layoutNumRows:I
    iget v3, p0, Lcom/android/internal/view/menu/IconMenuView;->mRowHeight:I

    iget v4, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    add-int/2addr v3, v4

    mul-int/2addr v3, v1

    iget v4, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    sub-int v0, v3, v4

    .line 484
    .local v0, desiredHeight:I
    invoke-static {v0, p2}, Lcom/android/internal/view/menu/IconMenuView;->resolveSize(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/view/menu/IconMenuView;->setMeasuredDimension(II)V

    .line 488
    if-lez v1, :cond_37

    .line 489
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getMeasuredHeight()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/internal/view/menu/IconMenuView;->positionChildren(II)V

    .line 491
    :cond_37
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 7
    .parameter "state"

    .prologue
    .line 756
    move-object v0, p1

    check-cast v0, Lcom/android/internal/view/menu/IconMenuView$SavedState;

    move-object v1, v0

    .line 757
    .local v1, ss:Lcom/android/internal/view/menu/IconMenuView$SavedState;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/IconMenuView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-super {p0, v3}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 759
    iget v3, v1, Lcom/android/internal/view/menu/IconMenuView$SavedState;->focusedPosition:I

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getChildCount()I

    move-result v4

    if-lt v3, v4, :cond_14

    .line 767
    :cond_13
    :goto_13
    return-void

    .line 763
    :cond_14
    iget v3, v1, Lcom/android/internal/view/menu/IconMenuView$SavedState;->focusedPosition:I

    invoke-virtual {p0, v3}, Lcom/android/internal/view/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 764
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_13

    .line 765
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_13
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 6

    .prologue
    .line 741
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 743
    .local v2, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 745
    .local v0, focusedView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int v1, v3, v4

    .local v1, i:I
    :goto_f
    if-ltz v1, :cond_20

    .line 746
    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v3, v0, :cond_1d

    .line 747
    new-instance v3, Lcom/android/internal/view/menu/IconMenuView$SavedState;

    invoke-direct {v3, v2, v1}, Lcom/android/internal/view/menu/IconMenuView$SavedState;-><init>(Landroid/os/Parcelable;I)V

    .line 751
    :goto_1c
    return-object v3

    .line 745
    :cond_1d
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 751
    :cond_20
    new-instance v3, Lcom/android/internal/view/menu/IconMenuView$SavedState;

    const/4 v4, -0x1

    invoke-direct {v3, v2, v4}, Lcom/android/internal/view/menu/IconMenuView$SavedState;-><init>(Landroid/os/Parcelable;I)V

    goto :goto_1c
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3
    .parameter "hasWindowFocus"

    .prologue
    .line 640
    if-nez p1, :cond_6

    .line 641
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->setCycleShortcutCaptionMode(Z)V

    .line 644
    :cond_6
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    .line 645
    return-void
.end method

.method public run()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 681
    iget-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenuBeingLongpressed:Z

    if-eqz v0, :cond_15

    .line 684
    iget-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mLastChildrenCaptionMode:Z

    if-nez v0, :cond_13

    move v0, v1

    :goto_a
    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->setChildrenCaptionMode(Z)V

    .line 694
    :goto_d
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p0, v0, v1}, Lcom/android/internal/view/menu/IconMenuView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 695
    return-void

    .line 684
    :cond_13
    const/4 v0, 0x0

    goto :goto_a

    .line 689
    :cond_15
    iput-boolean v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenuBeingLongpressed:Z

    .line 690
    invoke-direct {p0, v1}, Lcom/android/internal/view/menu/IconMenuView;->setCycleShortcutCaptionMode(Z)V

    goto :goto_d
.end method

.method public updateChildren(Z)V
    .registers 12
    .parameter "cleared"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 338
    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->removeAllViews()V

    .line 342
    iget-object v7, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v7, v8}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems(Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 343
    .local v2, itemsToShow:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 344
    .local v5, numItems:I
    iget v6, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxItems:I

    .line 346
    .local v6, numItemsThatCanFit:I
    sub-int v7, v6, v9

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 351
    .local v4, minFitMinus1AndNumItems:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_18
    if-ge v0, v4, :cond_2c

    .line 352
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 353
    .local v1, itemData:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v1, v8, p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/internal/view/menu/IconMenuItemView;

    invoke-direct {p0, v7}, Lcom/android/internal/view/menu/IconMenuView;->addItemView(Lcom/android/internal/view/menu/IconMenuItemView;)V

    .line 351
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 356
    .end local v1           #itemData:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_2c
    if-le v5, v6, :cond_42

    .line 359
    iget-object v7, p0, Lcom/android/internal/view/menu/IconMenuView;->mMoreItemView:Lcom/android/internal/view/menu/IconMenuItemView;

    if-nez v7, :cond_38

    .line 360
    invoke-direct {p0}, Lcom/android/internal/view/menu/IconMenuView;->createMoreItemView()Lcom/android/internal/view/menu/IconMenuItemView;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/view/menu/IconMenuView;->mMoreItemView:Lcom/android/internal/view/menu/IconMenuItemView;

    .line 363
    :cond_38
    iget-object v7, p0, Lcom/android/internal/view/menu/IconMenuView;->mMoreItemView:Lcom/android/internal/view/menu/IconMenuItemView;

    invoke-direct {p0, v7}, Lcom/android/internal/view/menu/IconMenuView;->addItemView(Lcom/android/internal/view/menu/IconMenuItemView;)V

    .line 367
    sub-int v7, v6, v9

    iput v7, p0, Lcom/android/internal/view/menu/IconMenuView;->mNumActualItemsShown:I

    .line 376
    :cond_41
    :goto_41
    return-void

    .line 368
    :cond_42
    if-ne v5, v6, :cond_41

    .line 370
    sub-int v7, v6, v9

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 371
    .local v3, lastItemData:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v3, v8, p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/internal/view/menu/IconMenuItemView;

    invoke-direct {p0, v7}, Lcom/android/internal/view/menu/IconMenuView;->addItemView(Lcom/android/internal/view/menu/IconMenuItemView;)V

    .line 374
    iput v6, p0, Lcom/android/internal/view/menu/IconMenuView;->mNumActualItemsShown:I

    goto :goto_41
.end method
