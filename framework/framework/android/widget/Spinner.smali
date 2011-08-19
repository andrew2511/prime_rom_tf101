.class public Landroid/widget/Spinner;
.super Landroid/widget/AbsSpinner;
.source "Spinner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Spinner$1;,
        Landroid/widget/Spinner$DropdownPopup;,
        Landroid/widget/Spinner$DialogPopup;,
        Landroid/widget/Spinner$SpinnerPopup;,
        Landroid/widget/Spinner$DropDownAdapter;
    }
.end annotation


# static fields
.field private static final MAX_ITEMS_MEASURED:I = 0xf

.field public static final MODE_DIALOG:I = 0x0

.field public static final MODE_DROPDOWN:I = 0x1

.field private static final MODE_THEME:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Spinner"


# instance fields
.field mDropDownWidth:I

.field private mGravity:I

.field private mPopup:Landroid/widget/Spinner$SpinnerPopup;

.field private mTempAdapter:Landroid/widget/Spinner$DropDownAdapter;

.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 97
    const/4 v0, 0x0

    const v1, 0x1010081

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 108
    const v0, 0x1010081

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 124
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter "mode"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 145
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    .line 147
    sget-object v2, Lcom/android/internal/R$styleable;->Spinner:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 150
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, -0x1

    if-ne p4, v2, :cond_1a

    .line 151
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    .line 154
    :cond_1a
    packed-switch p4, :pswitch_data_70

    .line 178
    :goto_1d
    const/16 v2, 0x11

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/widget/Spinner;->mGravity:I

    .line 180
    iget-object v2, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/widget/Spinner$SpinnerPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 182
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 186
    iget-object v2, p0, Landroid/widget/Spinner;->mTempAdapter:Landroid/widget/Spinner$DropDownAdapter;

    if-eqz v2, :cond_3f

    .line 187
    iget-object v2, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    iget-object v3, p0, Landroid/widget/Spinner;->mTempAdapter:Landroid/widget/Spinner$DropDownAdapter;

    invoke-interface {v2, v3}, Landroid/widget/Spinner$SpinnerPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 188
    iput-object v5, p0, Landroid/widget/Spinner;->mTempAdapter:Landroid/widget/Spinner$DropDownAdapter;

    .line 190
    :cond_3f
    return-void

    .line 156
    :pswitch_40
    new-instance v2, Landroid/widget/Spinner$DialogPopup;

    invoke-direct {v2, p0, v5}, Landroid/widget/Spinner$DialogPopup;-><init>(Landroid/widget/Spinner;Landroid/widget/Spinner$1;)V

    iput-object v2, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    goto :goto_1d

    .line 161
    :pswitch_48
    new-instance v1, Landroid/widget/Spinner$DropdownPopup;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/widget/Spinner$DropdownPopup;-><init>(Landroid/widget/Spinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 163
    .local v1, popup:Landroid/widget/Spinner$DropdownPopup;
    const/4 v2, 0x4

    const/4 v3, -0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Landroid/widget/Spinner;->mDropDownWidth:I

    .line 166
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner$DropdownPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner$DropdownPopup;->setVerticalOffset(I)V

    .line 170
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner$DropdownPopup;->setHorizontalOffset(I)V

    .line 173
    iput-object v1, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    goto :goto_1d

    .line 154
    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_40
        :pswitch_48
    .end packed-switch
.end method

.method private makeAndAddView(I)Landroid/view/View;
    .registers 6
    .parameter "position"

    .prologue
    .line 356
    iget-boolean v2, p0, Landroid/widget/Spinner;->mDataChanged:Z

    if-nez v2, :cond_11

    .line 357
    iget-object v2, p0, Landroid/widget/Spinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v2, p1}, Landroid/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    .line 358
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_11

    .line 360
    invoke-direct {p0, v0}, Landroid/widget/Spinner;->setUpChild(Landroid/view/View;)V

    move-object v1, v0

    .line 372
    .end local v0           #child:Landroid/view/View;
    .local v1, child:Landroid/view/View;
    :goto_10
    return-object v1

    .line 367
    .end local v1           #child:Landroid/view/View;
    :cond_11
    iget-object v2, p0, Landroid/widget/Spinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 370
    .restart local v0       #child:Landroid/view/View;
    invoke-direct {p0, v0}, Landroid/widget/Spinner;->setUpChild(Landroid/view/View;)V

    move-object v1, v0

    .line 372
    .end local v0           #child:Landroid/view/View;
    .restart local v1       #child:Landroid/view/View;
    goto :goto_10
.end method

.method private setUpChild(Landroid/view/View;)V
    .registers 13
    .parameter "child"

    .prologue
    .line 385
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 386
    .local v6, lp:Landroid/view/ViewGroup$LayoutParams;
    if-nez v6, :cond_a

    .line 387
    invoke-virtual {p0}, Landroid/widget/Spinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 390
    :cond_a
    const/4 v8, 0x0

    invoke-virtual {p0, p1, v8, v6}, Landroid/widget/Spinner;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 392
    invoke-virtual {p0}, Landroid/widget/Spinner;->hasFocus()Z

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 395
    iget v8, p0, Landroid/widget/Spinner;->mHeightMeasureSpec:I

    iget-object v9, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 397
    .local v1, childHeightSpec:I
    iget v8, p0, Landroid/widget/Spinner;->mWidthMeasureSpec:I

    iget-object v9, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 401
    .local v5, childWidthSpec:I
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 407
    iget-object v8, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredHeight()I

    move-result v9

    iget-object v10, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    iget-object v10, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int v4, v8, v9

    .line 410
    .local v4, childTop:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v0, v4, v8

    .line 412
    .local v0, childBottom:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 413
    .local v7, width:I
    const/4 v2, 0x0

    .line 414
    .local v2, childLeft:I
    add-int v3, v2, v7

    .line 416
    .local v3, childRight:I
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 417
    return-void
.end method


# virtual methods
.method public getBaseline()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 223
    const/4 v0, 0x0

    .line 225
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/Spinner;->getChildCount()I

    move-result v1

    if-lez v1, :cond_18

    .line 226
    invoke-virtual {p0, v2}, Landroid/widget/Spinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 233
    :cond_c
    :goto_c
    if-eqz v0, :cond_31

    .line 234
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v2

    add-int/2addr v1, v2

    .line 236
    :goto_17
    return v1

    .line 227
    :cond_18
    iget-object v1, p0, Landroid/widget/Spinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroid/widget/Spinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_c

    .line 228
    invoke-direct {p0, v2}, Landroid/widget/Spinner;->makeAndAddView(I)Landroid/view/View;

    move-result-object v0

    .line 229
    iget-object v1, p0, Landroid/widget/Spinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v1, v2, v0}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 230
    invoke-virtual {p0}, Landroid/widget/Spinner;->removeAllViewsInLayout()V

    goto :goto_c

    .line 236
    :cond_31
    const/4 v1, -0x1

    goto :goto_17
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 459
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->getHintText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method layout(IZ)V
    .registers 11
    .parameter "delta"
    .parameter "animate"

    .prologue
    const/4 v7, 0x0

    .line 294
    iget-object v5, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v0, v5, Landroid/graphics/Rect;->left:I

    .line 295
    .local v0, childrenLeft:I
    iget v5, p0, Landroid/widget/Spinner;->mRight:I

    iget v6, p0, Landroid/widget/Spinner;->mLeft:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int v1, v5, v6

    .line 297
    .local v1, childrenWidth:I
    iget-boolean v5, p0, Landroid/widget/Spinner;->mDataChanged:Z

    if-eqz v5, :cond_1c

    .line 298
    invoke-virtual {p0}, Landroid/widget/Spinner;->handleDataChanged()V

    .line 302
    :cond_1c
    iget v5, p0, Landroid/widget/Spinner;->mItemCount:I

    if-nez v5, :cond_24

    .line 303
    invoke-virtual {p0}, Landroid/widget/Spinner;->resetList()V

    .line 341
    :goto_23
    return-void

    .line 307
    :cond_24
    iget v5, p0, Landroid/widget/Spinner;->mNextSelectedPosition:I

    if-ltz v5, :cond_2d

    .line 308
    iget v5, p0, Landroid/widget/Spinner;->mNextSelectedPosition:I

    invoke-virtual {p0, v5}, Landroid/widget/Spinner;->setSelectedPositionInt(I)V

    .line 311
    :cond_2d
    invoke-virtual {p0}, Landroid/widget/Spinner;->recycleAllViews()V

    .line 314
    invoke-virtual {p0}, Landroid/widget/Spinner;->removeAllViewsInLayout()V

    .line 317
    iget v5, p0, Landroid/widget/Spinner;->mSelectedPosition:I

    iput v5, p0, Landroid/widget/Spinner;->mFirstPosition:I

    .line 318
    iget v5, p0, Landroid/widget/Spinner;->mSelectedPosition:I

    invoke-direct {p0, v5}, Landroid/widget/Spinner;->makeAndAddView(I)Landroid/view/View;

    move-result-object v2

    .line 319
    .local v2, sel:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 320
    .local v4, width:I
    move v3, v0

    .line 321
    .local v3, selectedOffset:I
    iget v5, p0, Landroid/widget/Spinner;->mGravity:I

    and-int/lit8 v5, v5, 0x7

    sparse-switch v5, :sswitch_data_6e

    .line 329
    :goto_49
    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 332
    iget-object v5, p0, Landroid/widget/Spinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v5}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    .line 334
    invoke-virtual {p0}, Landroid/widget/Spinner;->invalidate()V

    .line 336
    invoke-virtual {p0}, Landroid/widget/Spinner;->checkSelectionChanged()V

    .line 338
    iput-boolean v7, p0, Landroid/widget/Spinner;->mDataChanged:Z

    .line 339
    iput-boolean v7, p0, Landroid/widget/Spinner;->mNeedSync:Z

    .line 340
    iget v5, p0, Landroid/widget/Spinner;->mSelectedPosition:I

    invoke-virtual {p0, v5}, Landroid/widget/Spinner;->setNextSelectedPositionInt(I)V

    goto :goto_23

    .line 323
    :sswitch_61
    div-int/lit8 v5, v1, 0x2

    add-int/2addr v5, v0

    div-int/lit8 v6, v4, 0x2

    sub-int v3, v5, v6

    .line 324
    goto :goto_49

    .line 326
    :sswitch_69
    add-int v5, v0, v1

    sub-int v3, v5, v4

    goto :goto_49

    .line 321
    :sswitch_data_6e
    .sparse-switch
        0x1 -> :sswitch_61
        0x5 -> :sswitch_69
    .end sparse-switch
.end method

.method measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .registers 16
    .parameter "adapter"
    .parameter "background"

    .prologue
    .line 463
    if-nez p1, :cond_4

    .line 464
    const/4 v10, 0x0

    .line 503
    :goto_3
    return v10

    .line 467
    :cond_4
    const/4 v8, 0x0

    .line 468
    .local v8, width:I
    const/4 v5, 0x0

    .line 469
    .local v5, itemView:Landroid/view/View;
    const/4 v4, 0x0

    .line 470
    .local v4, itemType:I
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 472
    .local v9, widthMeasureSpec:I
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 477
    .local v2, heightMeasureSpec:I
    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 478
    .local v7, start:I
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v10

    add-int/lit8 v11, v7, 0xf

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 479
    .local v1, end:I
    sub-int v0, v1, v7

    .line 480
    .local v0, count:I
    const/4 v10, 0x0

    const/16 v11, 0xf

    sub-int/2addr v11, v0

    sub-int v11, v7, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 481
    move v3, v7

    .local v3, i:I
    :goto_33
    if-ge v3, v1, :cond_5f

    .line 482
    invoke-interface {p1, v3}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v6

    .line 483
    .local v6, positionType:I
    if-eq v6, v4, :cond_3d

    .line 484
    move v4, v6

    .line 485
    const/4 v5, 0x0

    .line 487
    :cond_3d
    invoke-interface {p1, v3, v5, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 488
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    if-nez v10, :cond_51

    .line 489
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 493
    :cond_51
    invoke-virtual {v5, v9, v2}, Landroid/view/View;->measure(II)V

    .line 494
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 481
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 498
    .end local v6           #positionType:I
    :cond_5f
    if-eqz p2, :cond_70

    .line 499
    iget-object v10, p0, Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v10}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 500
    iget-object v10, p0, Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v11

    add-int/2addr v8, v10

    :cond_70
    move v10, v8

    .line 503
    goto :goto_3
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 435
    invoke-virtual {p0, p2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 436
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 437
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 242
    invoke-super {p0}, Landroid/widget/AbsSpinner;->onDetachedFromWindow()V

    .line 244
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 245
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->dismiss()V

    .line 247
    :cond_14
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v1, 0x0

    .line 280
    invoke-super/range {p0 .. p5}, Landroid/widget/AbsSpinner;->onLayout(ZIIII)V

    .line 281
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Spinner;->mInLayout:Z

    .line 282
    invoke-virtual {p0, v1, v1}, Landroid/widget/Spinner;->layout(IZ)V

    .line 283
    iput-boolean v1, p0, Landroid/widget/Spinner;->mInLayout:Z

    .line 284
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 262
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->onMeasure(II)V

    .line 263
    iget-object v1, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    if-eqz v1, :cond_32

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x8000

    if-ne v1, v2, :cond_32

    .line 264
    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredWidth()I

    move-result v0

    .line 265
    .local v0, measuredWidth:I
    invoke-virtual {p0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/Spinner;->measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/Spinner;->setMeasuredDimension(II)V

    .line 270
    .end local v0           #measuredWidth:I
    :cond_32
    return-void
.end method

.method public performClick()Z
    .registers 3

    .prologue
    .line 421
    invoke-super {p0}, Landroid/widget/AbsSpinner;->performClick()Z

    move-result v0

    .line 423
    .local v0, handled:Z
    if-nez v0, :cond_14

    .line 424
    const/4 v0, 0x1

    .line 426
    iget-object v1, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v1}, Landroid/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v1

    if-nez v1, :cond_14

    .line 427
    iget-object v1, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v1}, Landroid/widget/Spinner$SpinnerPopup;->show()V

    .line 431
    :cond_14
    return v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    check-cast p1, Landroid/widget/SpinnerAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .registers 4
    .parameter "adapter"

    .prologue
    .line 212
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 214
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_12

    .line 215
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    new-instance v1, Landroid/widget/Spinner$DropDownAdapter;

    invoke-direct {v1, p1}, Landroid/widget/Spinner$DropDownAdapter;-><init>(Landroid/widget/SpinnerAdapter;)V

    invoke-interface {v0, v1}, Landroid/widget/Spinner$SpinnerPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 219
    :goto_11
    return-void

    .line 217
    :cond_12
    new-instance v0, Landroid/widget/Spinner$DropDownAdapter;

    invoke-direct {v0, p1}, Landroid/widget/Spinner$DropDownAdapter;-><init>(Landroid/widget/SpinnerAdapter;)V

    iput-object v0, p0, Landroid/widget/Spinner;->mTempAdapter:Landroid/widget/Spinner$DropDownAdapter;

    goto :goto_11
.end method

.method public setGravity(I)V
    .registers 3
    .parameter "gravity"

    .prologue
    .line 201
    iget v0, p0, Landroid/widget/Spinner;->mGravity:I

    if-eq v0, p1, :cond_f

    .line 202
    and-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_a

    .line 203
    or-int/lit8 p1, p1, 0x3

    .line 205
    :cond_a
    iput p1, p0, Landroid/widget/Spinner;->mGravity:I

    .line 206
    invoke-virtual {p0}, Landroid/widget/Spinner;->requestLayout()V

    .line 208
    :cond_f
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 4
    .parameter "l"

    .prologue
    .line 257
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "setOnItemClickListener cannot be used with a spinner."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "prompt"

    .prologue
    .line 444
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0, p1}, Landroid/widget/Spinner$SpinnerPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 445
    return-void
.end method

.method public setPromptId(I)V
    .registers 3
    .parameter "promptId"

    .prologue
    .line 452
    invoke-virtual {p0}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 453
    return-void
.end method
