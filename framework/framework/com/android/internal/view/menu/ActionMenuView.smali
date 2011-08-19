.class public Lcom/android/internal/view/menu/ActionMenuView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/android/internal/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/ActionMenuView$OverflowPopup;,
        Lcom/android/internal/view/menu/ActionMenuView$OverflowMenuButton;,
        Lcom/android/internal/view/menu/ActionMenuView$OpenOverflowRunnable;
    }
.end annotation


# static fields
.field private static final DIVIDER_PADDING:I = 0xc

.field private static final TAG:Ljava/lang/String; = "ActionMenuView"


# instance fields
.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerPadding:F

.field private mMaxItems:I

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mOverflowButton:Lcom/android/internal/view/menu/ActionMenuView$OverflowMenuButton;

.field private mOverflowPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

.field private mPostedOpenRunnable:Lcom/android/internal/view/menu/ActionMenuView$OpenOverflowRunnable;

.field private mReserveOverflow:Z

.field private final mShowOverflow:Ljava/lang/Runnable;

.field private mWidthLimit:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/view/menu/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    new-instance v3, Lcom/android/internal/view/menu/ActionMenuView$1;

    invoke-direct {v3, p0}, Lcom/android/internal/view/menu/ActionMenuView$1;-><init>(Lcom/android/internal/view/menu/ActionMenuView;)V

    iput-object v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mShowOverflow:Ljava/lang/Runnable;

    .line 85
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 88
    .local v2, res:Landroid/content/res/Resources;
    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getMaxActionButtons()I

    move-result v3

    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMaxItems:I

    .line 91
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 92
    .local v1, config:Landroid/content/res/Configuration;
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    .line 93
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mWidthLimit:I

    .line 95
    sget-object v3, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 96
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v3, 0x9c

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 97
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    const/high16 v3, 0x4140

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mDividerPadding:F

    .line 101
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/internal/view/menu/ActionMenuView;->setBaselineAligned(Z)V

    .line 102
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/view/menu/ActionMenuView;Lcom/android/internal/view/menu/MenuPopupHelper;)Lcom/android/internal/view/menu/MenuPopupHelper;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mOverflowPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/internal/view/menu/ActionMenuView;Lcom/android/internal/view/menu/ActionMenuView$OpenOverflowRunnable;)Lcom/android/internal/view/menu/ActionMenuView$OpenOverflowRunnable;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPostedOpenRunnable:Lcom/android/internal/view/menu/ActionMenuView$OpenOverflowRunnable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/view/menu/ActionMenuView;)Lcom/android/internal/view/menu/MenuBuilder;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method private addItemView(ZLcom/android/internal/view/menu/ActionMenuItemView;)Z
    .registers 6
    .parameter "needsDivider"
    .parameter "view"

    .prologue
    .line 351
    invoke-virtual {p2, p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V

    .line 352
    invoke-virtual {p2}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v0

    .line 354
    .local v0, hasText:Z
    if-eqz v0, :cond_16

    if-eqz p1, :cond_16

    .line 355
    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuView;->makeDividerView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuView;->makeDividerLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/view/menu/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    :cond_16
    invoke-virtual {p0, p2}, Lcom/android/internal/view/menu/ActionMenuView;->addView(Landroid/view/View;)V

    .line 358
    return v0
.end method

.method private getMaxActionButtons()I
    .registers 3

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method private static isDivider(Landroid/view/View;)Z
    .registers 3
    .parameter "v"

    .prologue
    .line 310
    if-eqz p0, :cond_d

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x10201ff

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private makeActionViewLayoutParams(Landroid/view/View;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 3
    .parameter "view"

    .prologue
    .line 378
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method private makeDividerLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    .prologue
    .line 370
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 372
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iget v1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mDividerPadding:F

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 373
    iget v1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mDividerPadding:F

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 374
    return-object v0
.end method

.method private makeDividerView()Landroid/widget/ImageView;
    .registers 3

    .prologue
    .line 362
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 363
    .local v0, result:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 364
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 365
    const v1, 0x10201ff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 366
    return-object v0
.end method

.method private removeChildrenUntil(ILandroid/view/View;Z)Z
    .registers 10
    .parameter "start"
    .parameter "targetChild"
    .parameter "needsPreDivider"

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v1

    .line 282
    .local v1, childCount:I
    const/4 v2, 0x0

    .line 283
    .local v2, found:Z
    move v3, p1

    .local v3, i:I
    :goto_6
    if-ge v3, v1, :cond_f

    .line 284
    invoke-virtual {p0, v3}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 285
    .local v0, child:Landroid/view/View;
    if-ne v0, p2, :cond_13

    .line 286
    const/4 v2, 0x1

    .line 291
    .end local v0           #child:Landroid/view/View;
    :cond_f
    if-nez v2, :cond_16

    move v4, p3

    .line 306
    .end local p3
    .local v4, needsPreDivider:Z
    :goto_12
    return v4

    .line 283
    .end local v4           #needsPreDivider:Z
    .restart local v0       #child:Landroid/view/View;
    .restart local p3
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 295
    .end local v0           #child:Landroid/view/View;
    :cond_16
    move v3, p1

    :goto_17
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_2f

    .line 296
    invoke-virtual {p0, v3}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 297
    .restart local v0       #child:Landroid/view/View;
    if-eqz p3, :cond_2d

    invoke-static {v0}, Lcom/android/internal/view/menu/ActionMenuView;->isDivider(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 298
    const/4 p3, 0x0

    .line 299
    add-int/lit8 v3, v3, 0x1

    .line 300
    goto :goto_17

    .line 302
    :cond_2d
    if-ne v0, p2, :cond_31

    .end local v0           #child:Landroid/view/View;
    :cond_2f
    move v4, p3

    .line 306
    .end local p3
    .restart local v4       #needsPreDivider:Z
    goto :goto_12

    .line 303
    .end local v4           #needsPreDivider:Z
    .restart local v0       #child:Landroid/view/View;
    .restart local p3
    :cond_31
    invoke-virtual {p0, v3}, Lcom/android/internal/view/menu/ActionMenuView;->removeViewAt(I)V

    goto :goto_17
.end method


# virtual methods
.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 3

    .prologue
    const/4 v1, -0x2

    .line 151
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 153
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 154
    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .parameter "x0"

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 4
    .parameter "p"

    .prologue
    .line 159
    instance-of v1, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_15

    .line 160
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .end local p1
    invoke-direct {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 161
    .local v0, result:Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gtz v1, :cond_13

    .line 162
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_13
    move-object v1, v0

    .line 166
    .end local v0           #result:Landroid/widget/LinearLayout$LayoutParams;
    :goto_14
    return-object v1

    .restart local p1
    :cond_15
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    goto :goto_14
.end method

.method public getOverflowButton()Landroid/view/View;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mOverflowButton:Lcom/android/internal/view/menu/ActionMenuView$OverflowMenuButton;

    return-object v0
.end method

.method public getWindowAnimations()I
    .registers 2

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public hideOverflowMenu()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 337
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPostedOpenRunnable:Lcom/android/internal/view/menu/ActionMenuView$OpenOverflowRunnable;

    if-eqz v1, :cond_c

    .line 338
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPostedOpenRunnable:Lcom/android/internal/view/menu/ActionMenuView$OpenOverflowRunnable;

    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move v1, v2

    .line 347
    :goto_b
    return v1

    .line 342
    :cond_c
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mOverflowPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    .line 343
    .local v0, popup:Lcom/android/internal/view/menu/MenuPopupHelper;
    if-eqz v0, :cond_15

    .line 344
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    move v1, v2

    .line 345
    goto :goto_b

    .line 347
    :cond_15
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuBuilder;I)V
    .registers 9
    .parameter "menu"
    .parameter "menuType"

    .prologue
    const/4 v5, 0x0

    .line 178
    iget v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mWidthLimit:I

    .line 179
    .local v3, width:I
    iget-boolean v4, p0, Lcom/android/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    if-eqz v4, :cond_24

    .line 180
    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenuView;->mOverflowButton:Lcom/android/internal/view/menu/ActionMenuView$OverflowMenuButton;

    if-nez v4, :cond_14

    .line 181
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$OverflowMenuButton;

    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenuView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v4}, Lcom/android/internal/view/menu/ActionMenuView$OverflowMenuButton;-><init>(Lcom/android/internal/view/menu/ActionMenuView;Landroid/content/Context;)V

    .line 182
    .local v0, button:Lcom/android/internal/view/menu/ActionMenuView$OverflowMenuButton;
    iput-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mOverflowButton:Lcom/android/internal/view/menu/ActionMenuView$OverflowMenuButton;

    .line 184
    .end local v0           #button:Lcom/android/internal/view/menu/ActionMenuView$OverflowMenuButton;
    :cond_14
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 185
    .local v2, spec:I
    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenuView;->mOverflowButton:Lcom/android/internal/view/menu/ActionMenuView$OverflowMenuButton;

    invoke-virtual {v4, v2, v2}, Lcom/android/internal/view/menu/ActionMenuView$OverflowMenuButton;->measure(II)V

    .line 186
    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenuView;->mOverflowButton:Lcom/android/internal/view/menu/ActionMenuView$OverflowMenuButton;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/ActionMenuView$OverflowMenuButton;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    .line 189
    .end local v2           #spec:I
    :cond_24
    invoke-virtual {p1, v3}, Lcom/android/internal/view/menu/MenuBuilder;->setActionWidthLimit(I)V

    .line 191
    iget v4, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMaxItems:I

    invoke-virtual {p1, v4}, Lcom/android/internal/view/menu/MenuBuilder;->setMaxActionItems(I)V

    .line 192
    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eq v4, p1, :cond_38

    const/4 v4, 0x1

    move v1, v4

    .line 193
    .local v1, cleared:Z
    :goto_32
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 194
    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->updateChildren(Z)V

    .line 195
    return-void

    .end local v1           #cleared:Z
    :cond_38
    move v1, v5

    .line 192
    goto :goto_32
.end method

.method public invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuOpen()Z
    .registers 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mOverflowPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isOverflowMenuShowing()Z
    .registers 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mOverflowPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mOverflowPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isOverflowReserved()Z
    .registers 2

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 107
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    .line 108
    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getMaxActionButtons()I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMaxItems:I

    .line 109
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mWidthLimit:I

    .line 110
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_2d

    .line 111
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget v1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMaxItems:I

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->setMaxActionItems(I)V

    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuView;->updateChildren(Z)V

    .line 115
    :cond_2d
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mOverflowPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mOverflowPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 116
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mOverflowPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 117
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mShowOverflow:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuView;->post(Ljava/lang/Runnable;)Z

    .line 119
    :cond_43
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 123
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 124
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mOverflowPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mOverflowPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 125
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mOverflowPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 127
    :cond_14
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mShowOverflow:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 128
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPostedOpenRunnable:Lcom/android/internal/view/menu/ActionMenuView$OpenOverflowRunnable;

    if-eqz v0, :cond_22

    .line 129
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPostedOpenRunnable:Lcom/android/internal/view/menu/ActionMenuView$OpenOverflowRunnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 131
    :cond_22
    return-void
.end method

.method public openOverflowMenu()V
    .registers 7

    .prologue
    .line 322
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$OverflowPopup;

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenuView;->mOverflowButton:Lcom/android/internal/view/menu/ActionMenuView$OverflowMenuButton;

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/ActionMenuView$OverflowPopup;-><init>(Lcom/android/internal/view/menu/ActionMenuView;Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 323
    .local v0, popup:Lcom/android/internal/view/menu/ActionMenuView$OverflowPopup;
    new-instance v1, Lcom/android/internal/view/menu/ActionMenuView$OpenOverflowRunnable;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/view/menu/ActionMenuView$OpenOverflowRunnable;-><init>(Lcom/android/internal/view/menu/ActionMenuView;Lcom/android/internal/view/menu/MenuPopupHelper;)V

    iput-object v1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPostedOpenRunnable:Lcom/android/internal/view/menu/ActionMenuView$OpenOverflowRunnable;

    .line 325
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPostedOpenRunnable:Lcom/android/internal/view/menu/ActionMenuView$OpenOverflowRunnable;

    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->post(Ljava/lang/Runnable;)Z

    .line 326
    return-void
.end method

.method public setOverflowReserved(Z)V
    .registers 2
    .parameter "reserveOverflow"

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    .line 143
    return-void
.end method

.method public showOverflowMenu()Z
    .registers 3

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mOverflowButton:Lcom/android/internal/view/menu/ActionMenuView$OverflowMenuButton;

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->isOverflowMenuShowing()Z

    move-result v0

    if-nez v0, :cond_17

    .line 315
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getCallback()Lcom/android/internal/view/menu/MenuBuilder$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder$Callback;->onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 316
    const/4 v0, 0x1

    .line 318
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public updateChildren(Z)V
    .registers 24
    .parameter "cleared"

    .prologue
    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/view/menu/MenuBuilder;->getActionItems(Z)Ljava/util/ArrayList;

    move-result-object v14

    .line 199
    .local v14, itemsToShow:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 201
    .local v12, itemCount:I
    const/4 v15, 0x0

    .line 202
    .local v15, needsDivider:Z
    const/4 v7, 0x0

    .line 203
    .local v7, childIndex:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_17
    if-ge v11, v12, :cond_c7

    .line 204
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 205
    .local v13, itemData:Lcom/android/internal/view/menu/MenuItemImpl;
    const/4 v9, 0x0

    .line 207
    .local v9, hasDivider:Z
    if-eqz v15, :cond_44

    .line 208
    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/internal/view/menu/ActionMenuView;->isDivider(Landroid/view/View;)Z

    move-result v20

    if-nez v20, :cond_41

    .line 209
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->makeDividerView()Landroid/widget/ImageView;

    move-result-object v20

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->makeDividerLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move v2, v7

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/view/menu/ActionMenuView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 211
    :cond_41
    const/4 v9, 0x1

    .line 212
    add-int/lit8 v7, v7, 0x1

    .line 215
    :cond_44
    invoke-virtual {v13}, Lcom/android/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v8

    .line 216
    .local v8, childToAdd:Landroid/view/View;
    const/16 v17, 0x0

    .line 217
    .local v17, needsPreDivider:Z
    if-eqz v8, :cond_93

    .line 218
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->makeActionViewLayoutParams(Landroid/view/View;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v20

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    :goto_59
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/view/menu/ActionMenuView;->removeChildrenUntil(ILandroid/view/View;Z)Z

    move-result v5

    .line 231
    .local v5, addPreDivider:Z
    if-eqz v5, :cond_77

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->makeDividerView()Landroid/widget/ImageView;

    move-result-object v20

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->makeDividerLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move v2, v7

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/view/menu/ActionMenuView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 232
    :cond_77
    if-eqz v17, :cond_7b

    add-int/lit8 v7, v7, 0x1

    .line 234
    :cond_7b
    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v8

    if-eq v0, v1, :cond_8e

    .line 235
    move-object/from16 v0, p0

    move-object v1, v8

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/ActionMenuView;->addView(Landroid/view/View;I)V

    .line 237
    :cond_8e
    add-int/lit8 v7, v7, 0x1

    .line 203
    add-int/lit8 v11, v11, 0x1

    goto :goto_17

    .line 220
    .end local v5           #addPreDivider:Z
    :cond_93
    const/16 v20, 0x3

    move-object v0, v13

    move/from16 v1, v20

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/android/internal/view/menu/ActionMenuItemView;

    .line 222
    .local v19, view:Lcom/android/internal/view/menu/ActionMenuItemView;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuItemView;->setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V

    .line 223
    if-lez v11, :cond_c2

    if-nez v9, :cond_c2

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v20

    if-eqz v20, :cond_c2

    invoke-virtual {v13}, Lcom/android/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v20

    if-nez v20, :cond_c2

    const/16 v20, 0x1

    move/from16 v17, v20

    .line 225
    :goto_bb
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v15

    .line 226
    move-object/from16 v8, v19

    goto :goto_59

    .line 223
    :cond_c2
    const/16 v20, 0x0

    move/from16 v17, v20

    goto :goto_bb

    .line 240
    .end local v8           #childToAdd:Landroid/view/View;
    .end local v9           #hasDivider:Z
    .end local v13           #itemData:Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v17           #needsPreDivider:Z
    .end local v19           #view:Lcom/android/internal/view/menu/ActionMenuItemView;
    :cond_c7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mOverflowButton:Lcom/android/internal/view/menu/ActionMenuView$OverflowMenuButton;

    move-object/from16 v20, v0

    if-eqz v20, :cond_170

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mOverflowButton:Lcom/android/internal/view/menu/ActionMenuView$OverflowMenuButton;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/view/menu/ActionMenuView$OverflowMenuButton;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_170

    const/16 v20, 0x1

    move/from16 v10, v20

    .line 241
    .local v10, hasOverflow:Z
    :goto_e3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    move/from16 v20, v0

    if-eqz v20, :cond_176

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems(Z)Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_176

    const/16 v20, 0x1

    move/from16 v16, v20

    .line 243
    .local v16, needsOverflow:Z
    :goto_101
    move v0, v10

    move/from16 v1, v16

    if-eq v0, v1, :cond_189

    .line 244
    if-eqz v16, :cond_17b

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mOverflowButton:Lcom/android/internal/view/menu/ActionMenuView$OverflowMenuButton;

    move-object/from16 v20, v0

    if-nez v20, :cond_125

    .line 246
    new-instance v6, Lcom/android/internal/view/menu/ActionMenuView$OverflowMenuButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/internal/view/menu/ActionMenuView$OverflowMenuButton;-><init>(Lcom/android/internal/view/menu/ActionMenuView;Landroid/content/Context;)V

    .line 247
    .local v6, button:Lcom/android/internal/view/menu/ActionMenuView$OverflowMenuButton;
    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/view/menu/ActionMenuView;->mOverflowButton:Lcom/android/internal/view/menu/ActionMenuView$OverflowMenuButton;

    .line 249
    .end local v6           #button:Lcom/android/internal/view/menu/ActionMenuView$OverflowMenuButton;
    :cond_125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mOverflowButton:Lcom/android/internal/view/menu/ActionMenuView$OverflowMenuButton;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move v1, v7

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/view/menu/ActionMenuView;->removeChildrenUntil(ILandroid/view/View;Z)Z

    move-result v4

    .line 250
    .local v4, addDivider:Z
    if-eqz v4, :cond_150

    if-lez v12, :cond_150

    .line 251
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->makeDividerView()Landroid/widget/ImageView;

    move-result-object v20

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->makeDividerLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move v2, v7

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/view/menu/ActionMenuView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 252
    add-int/lit8 v7, v7, 0x1

    .line 254
    :cond_150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mOverflowButton:Lcom/android/internal/view/menu/ActionMenuView$OverflowMenuButton;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/ActionMenuView;->addView(Landroid/view/View;I)V

    .line 255
    add-int/lit8 v7, v7, 0x1

    .line 275
    .end local v4           #addDivider:Z
    :cond_160
    :goto_160
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v20

    move/from16 v0, v20

    move v1, v7

    if-le v0, v1, :cond_1c5

    .line 276
    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->removeViewAt(I)V

    goto :goto_160

    .line 240
    .end local v10           #hasOverflow:Z
    .end local v16           #needsOverflow:Z
    :cond_170
    const/16 v20, 0x0

    move/from16 v10, v20

    goto/16 :goto_e3

    .line 241
    .restart local v10       #hasOverflow:Z
    :cond_176
    const/16 v20, 0x0

    move/from16 v16, v20

    goto :goto_101

    .line 257
    .restart local v16       #needsOverflow:Z
    :cond_17b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mOverflowButton:Lcom/android/internal/view/menu/ActionMenuView$OverflowMenuButton;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->removeView(Landroid/view/View;)V

    goto :goto_160

    .line 260
    :cond_189
    if-eqz v16, :cond_160

    .line 261
    if-lez v12, :cond_1bd

    const/16 v20, 0x1

    move/from16 v18, v20

    .line 262
    .local v18, overflowDivider:Z
    :goto_191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mOverflowButton:Lcom/android/internal/view/menu/ActionMenuView$OverflowMenuButton;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move v1, v7

    move-object/from16 v2, v20

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/view/menu/ActionMenuView;->removeChildrenUntil(ILandroid/view/View;Z)Z

    move-result v4

    .line 264
    .restart local v4       #addDivider:Z
    if-eqz v4, :cond_1b8

    if-lez v12, :cond_1b8

    .line 265
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->makeDividerView()Landroid/widget/ImageView;

    move-result-object v20

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuView;->makeDividerLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move v2, v7

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/view/menu/ActionMenuView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 267
    :cond_1b8
    if-eqz v18, :cond_1c2

    .line 268
    add-int/lit8 v7, v7, 0x2

    goto :goto_160

    .line 261
    .end local v4           #addDivider:Z
    .end local v18           #overflowDivider:Z
    :cond_1bd
    const/16 v20, 0x0

    move/from16 v18, v20

    goto :goto_191

    .line 270
    .restart local v4       #addDivider:Z
    .restart local v18       #overflowDivider:Z
    :cond_1c2
    add-int/lit8 v7, v7, 0x1

    goto :goto_160

    .line 278
    .end local v4           #addDivider:Z
    .end local v18           #overflowDivider:Z
    :cond_1c5
    return-void
.end method
