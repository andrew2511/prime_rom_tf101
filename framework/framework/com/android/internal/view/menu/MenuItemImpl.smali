.class public final Lcom/android/internal/view/menu/MenuItemImpl;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Landroid/view/MenuItem;


# static fields
.field private static final CHECKABLE:I = 0x1

.field private static final CHECKED:I = 0x2

.field private static final ENABLED:I = 0x10

.field private static final EXCLUSIVE:I = 0x4

.field private static final HIDDEN:I = 0x8

.field private static final IS_ACTION:I = 0x20

.field static final NO_ICON:I = 0x0

.field private static final SHOW_AS_ACTION_MASK:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MenuItemImpl"

.field private static sDeleteShortcutLabel:Ljava/lang/String;

.field private static sEnterShortcutLabel:Ljava/lang/String;

.field private static sPrependShortcutLabel:Ljava/lang/String;

.field private static sSpaceShortcutLabel:Ljava/lang/String;


# instance fields
.field private mActionView:Landroid/view/View;

.field private final mCategoryOrder:I

.field private mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mFlags:I

.field private final mGroup:I

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private final mId:I

.field private mIntent:Landroid/content/Intent;

.field private mItemCallback:Ljava/lang/Runnable;

.field private mItemViews:[Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/internal/view/menu/MenuView$ItemView;",
            ">;"
        }
    .end annotation
.end field

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private final mOrdering:I

.field private mShortcutAlphabeticChar:C

.field private mShortcutNumericChar:C

.field private mShowAsAction:I

.field private mSubMenu:Lcom/android/internal/view/menu/SubMenuBuilder;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCondensed:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V
    .registers 10
    .parameter "menu"
    .parameter "group"
    .parameter "id"
    .parameter "categoryOrder"
    .parameter "ordering"
    .parameter "title"
    .parameter "showAsAction"

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIconResId:I

    .line 75
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 83
    iput v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 119
    sget-object v0, Lcom/android/internal/view/menu/MenuItemImpl;->sPrependShortcutLabel:Ljava/lang/String;

    if-nez v0, :cond_54

    .line 121
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040319

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/view/menu/MenuItemImpl;->sPrependShortcutLabel:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104031b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/view/menu/MenuItemImpl;->sEnterShortcutLabel:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104031c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/view/menu/MenuItemImpl;->sDeleteShortcutLabel:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104031a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/view/menu/MenuItemImpl;->sSpaceShortcutLabel:Ljava/lang/String;

    .line 131
    :cond_54
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    .line 132
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 133
    iput p3, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mId:I

    .line 134
    iput p2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mGroup:I

    .line 135
    iput p4, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mCategoryOrder:I

    .line 136
    iput p5, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mOrdering:I

    .line 137
    iput-object p6, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 138
    iput p7, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 139
    return-void
.end method

.method private createItemView(ILandroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView$ItemView;
    .registers 7
    .parameter "menuType"
    .parameter "parent"

    .prologue
    .line 606
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getLayoutInflater(I)Landroid/view/LayoutInflater;

    move-result-object v1

    sget-object v2, Lcom/android/internal/view/menu/MenuBuilder;->ITEM_LAYOUT_RES_FOR_TYPE:[I

    aget v2, v2, p1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/MenuView$ItemView;

    .line 608
    .local v0, itemView:Lcom/android/internal/view/menu/MenuView$ItemView;
    invoke-interface {v0, p0, p1}, Lcom/android/internal/view/menu/MenuView$ItemView;->initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V

    .line 609
    return-object v0
.end method

.method private hasItemView(I)Z
    .registers 3
    .parameter "menuType"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    aget-object v0, v0, p1

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private haveAnyOpenedIconCapableItemViews()Z
    .registers 3

    .prologue
    .line 488
    const/4 v0, 0x4

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_1e

    .line 489
    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->hasItemView(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuView$ItemView;

    invoke-interface {v1}, Lcom/android/internal/view/menu/MenuView$ItemView;->showsIcon()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 490
    const/4 v1, 0x1

    .line 494
    :goto_1a
    return v1

    .line 488
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 494
    :cond_1e
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method private refreshShortcutOnItemViews()V
    .registers 3

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v0

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/view/menu/MenuItemImpl;->refreshShortcutOnItemViews(ZZ)V

    .line 331
    return-void
.end method

.method private setIconOnViews(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .parameter "icon"

    .prologue
    .line 479
    const/4 v0, 0x4

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_29

    .line 481
    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->hasItemView(I)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuView$ItemView;

    invoke-interface {v1}, Lcom/android/internal/view/menu/MenuView$ItemView;->showsIcon()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 482
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuView$ItemView;

    invoke-interface {v1, p1}, Lcom/android/internal/view/menu/MenuView$ItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 479
    :cond_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 485
    :cond_29
    return-void
.end method


# virtual methods
.method clearItemViews()V
    .registers 4

    .prologue
    .line 613
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_6
    if-ltz v0, :cond_10

    .line 614
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 613
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 616
    :cond_10
    return-void
.end method

.method public getActionView()Landroid/view/View;
    .registers 2

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    return-object v0
.end method

.method public getAlphabeticShortcut()C
    .registers 2

    .prologue
    .line 237
    iget-char v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    return v0
.end method

.method getCallback()Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getGroupId()I
    .registers 2

    .prologue
    .line 202
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mGroup:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 446
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 453
    :goto_6
    return-object v0

    .line 449
    :cond_7
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIconResId:I

    if-eqz v0, :cond_18

    .line 450
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIconResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_6

    .line 453
    :cond_18
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 207
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mId:I

    return v0
.end method

.method getItemView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "menuType"
    .parameter "parent"

    .prologue
    .line 586
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/MenuItemImpl;->hasItemView(I)Z

    move-result v0

    if-nez v0, :cond_13

    .line 587
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/view/menu/MenuItemImpl;->createItemView(ILandroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView$ItemView;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    aput-object v1, v0, p1

    .line 590
    :cond_13
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public getLayoutInflater(I)Landroid/view/LayoutInflater;
    .registers 3
    .parameter "menuType"

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;->getMenuType(I)Lcom/android/internal/view/menu/MenuBuilder$MenuType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getNumericShortcut()C
    .registers 2

    .prologue
    .line 251
    iget-char v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    return v0
.end method

.method public getOrder()I
    .registers 2

    .prologue
    .line 211
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mCategoryOrder:I

    return v0
.end method

.method public getOrdering()I
    .registers 2

    .prologue
    .line 215
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mOrdering:I

    return v0
.end method

.method getShortcut()C
    .registers 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-char v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    :goto_a
    return v0

    :cond_b
    iget-char v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    goto :goto_a
.end method

.method getShortcutLabel()Ljava/lang/String;
    .registers 4

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getShortcut()C

    move-result v1

    .line 288
    .local v1, shortcut:C
    if-nez v1, :cond_9

    .line 289
    const-string v2, ""

    .line 312
    :goto_8
    return-object v2

    .line 292
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/internal/view/menu/MenuItemImpl;->sPrependShortcutLabel:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    .local v0, sb:Ljava/lang/StringBuilder;
    sparse-switch v1, :sswitch_data_2e

    .line 308
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 312
    :goto_16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    .line 296
    :sswitch_1b
    sget-object v2, Lcom/android/internal/view/menu/MenuItemImpl;->sEnterShortcutLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 300
    :sswitch_21
    sget-object v2, Lcom/android/internal/view/menu/MenuItemImpl;->sDeleteShortcutLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 304
    :sswitch_27
    sget-object v2, Lcom/android/internal/view/menu/MenuItemImpl;->sSpaceShortcutLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 293
    nop

    :sswitch_data_2e
    .sparse-switch
        0x8 -> :sswitch_21
        0xa -> :sswitch_1b
        0x20 -> :sswitch_27
    .end sparse-switch
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .registers 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mSubMenu:Lcom/android/internal/view/menu/SubMenuBuilder;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    goto :goto_6
.end method

.method getTitleForItemView(Lcom/android/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;
    .registers 3
    .parameter "itemView"

    .prologue
    .line 389
    if-eqz p1, :cond_d

    invoke-interface {p1}, Lcom/android/internal/view/menu/MenuView$ItemView;->prefersCondensedTitle()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_c
.end method

.method public hasSubMenu()Z
    .registers 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mSubMenu:Lcom/android/internal/view/menu/SubMenuBuilder;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public invoke()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 147
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v2, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_f

    move v2, v4

    .line 172
    :goto_e
    return v2

    .line 152
    :cond_f
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->getCallback()Lcom/android/internal/view/menu/MenuBuilder$Callback;

    move-result-object v0

    .line 153
    .local v0, callback:Lcom/android/internal/view/menu/MenuBuilder$Callback;
    if-eqz v0, :cond_25

    iget-object v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v2

    invoke-interface {v0, v2, p0}, Lcom/android/internal/view/menu/MenuBuilder$Callback;->onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_25

    move v2, v4

    .line 155
    goto :goto_e

    .line 158
    :cond_25
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    if-eqz v2, :cond_30

    .line 159
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    move v2, v4

    .line 160
    goto :goto_e

    .line 163
    :cond_30
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_4a

    .line 165
    :try_start_34
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_34 .. :try_end_3f} :catch_41

    move v2, v4

    .line 166
    goto :goto_e

    .line 167
    :catch_41
    move-exception v2

    move-object v1, v2

    .line 168
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "MenuItemImpl"

    const-string v3, "Can\'t find activity to handle intent; ignoring"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :cond_4a
    const/4 v2, 0x0

    goto :goto_e
.end method

.method public isActionButton()Z
    .registers 3

    .prologue
    .line 651
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isCheckable()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 498
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isChecked()Z
    .registers 3

    .prologue
    .line 525
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 180
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isExclusiveCheckable()Z
    .registers 2

    .prologue
    .line 521
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isVisible()Z
    .registers 2

    .prologue
    .line 553
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method refreshShortcutOnItemViews(ZZ)V
    .registers 7
    .parameter "menuShortcutShown"
    .parameter "isQwertyMode"

    .prologue
    .line 345
    if-eqz p2, :cond_24

    iget-char v3, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    move v1, v3

    .line 348
    .local v1, shortcutKey:C
    :goto_5
    if-eqz p1, :cond_28

    if-eqz v1, :cond_28

    const/4 v3, 0x1

    move v2, v3

    .line 350
    .local v2, showShortcut:Z
    :goto_b
    const/4 v0, 0x4

    .local v0, i:I
    :goto_c
    if-ltz v0, :cond_2b

    .line 351
    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->hasItemView(I)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 352
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuView$ItemView;

    invoke-interface {v3, v2, v1}, Lcom/android/internal/view/menu/MenuView$ItemView;->setShortcut(ZC)V

    .line 350
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 345
    .end local v0           #i:I
    .end local v1           #shortcutKey:C
    .end local v2           #showShortcut:Z
    :cond_24
    iget-char v3, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    move v1, v3

    goto :goto_5

    .line 348
    .restart local v1       #shortcutKey:C
    :cond_28
    const/4 v3, 0x0

    move v2, v3

    goto :goto_b

    .line 355
    .restart local v0       #i:I
    .restart local v2       #showShortcut:Z
    :cond_2b
    return-void
.end method

.method public requestsActionButton()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 655
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public requiresActionButton()Z
    .registers 3

    .prologue
    .line 659
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .registers 7
    .parameter "resId"

    .prologue
    .line 698
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 699
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/view/menu/MenuBuilder;->getMenuView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 700
    .local v1, parent:Landroid/view/ViewGroup;
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/MenuItemImpl;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 701
    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .registers 3
    .parameter "view"

    .prologue
    .line 692
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mActionView:Landroid/view/View;

    .line 693
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/android/internal/view/menu/MenuBuilder;->onItemActionRequestChanged(Lcom/android/internal/view/menu/MenuItemImpl;)V

    .line 694
    return-object p0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .registers 3
    .parameter "alphaChar"

    .prologue
    .line 241
    iget-char v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    if-ne v0, p1, :cond_5

    .line 247
    :goto_4
    return-object p0

    .line 243
    :cond_5
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 245
    invoke-direct {p0}, Lcom/android/internal/view/menu/MenuItemImpl;->refreshShortcutOnItemViews()V

    goto :goto_4
.end method

.method public setCallback(Ljava/lang/Runnable;)Landroid/view/MenuItem;
    .registers 2
    .parameter "callback"

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    .line 233
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .registers 6
    .parameter "checkable"

    .prologue
    .line 502
    iget v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 503
    .local v1, oldFlags:I
    iget v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v2, v2, -0x2

    if-eqz p1, :cond_29

    const/4 v3, 0x1

    :goto_9
    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 504
    iget v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    if-eq v1, v2, :cond_2b

    .line 505
    const/4 v0, 0x4

    .local v0, i:I
    :goto_11
    if-ltz v0, :cond_2b

    .line 506
    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->hasItemView(I)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 507
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/MenuView$ItemView;

    invoke-interface {v2, p1}, Lcom/android/internal/view/menu/MenuView$ItemView;->setCheckable(Z)V

    .line 505
    :cond_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    .line 503
    .end local v0           #i:I
    :cond_29
    const/4 v3, 0x0

    goto :goto_9

    .line 512
    :cond_2b
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .registers 3
    .parameter "checked"

    .prologue
    .line 529
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_c

    .line 532
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/android/internal/view/menu/MenuBuilder;->setExclusiveItemChecked(Landroid/view/MenuItem;)V

    .line 537
    :goto_b
    return-object p0

    .line 534
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuItemImpl;->setCheckedInt(Z)V

    goto :goto_b
.end method

.method setCheckedInt(Z)V
    .registers 6
    .parameter "checked"

    .prologue
    .line 541
    iget v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 542
    .local v1, oldFlags:I
    iget v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v2, v2, -0x3

    if-eqz p1, :cond_29

    const/4 v3, 0x2

    :goto_9
    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 543
    iget v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    if-eq v1, v2, :cond_2b

    .line 544
    const/4 v0, 0x4

    .local v0, i:I
    :goto_11
    if-ltz v0, :cond_2b

    .line 545
    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->hasItemView(I)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 546
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/MenuView$ItemView;

    invoke-interface {v2, p1}, Lcom/android/internal/view/menu/MenuView$ItemView;->setChecked(Z)V

    .line 544
    :cond_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    .line 542
    .end local v0           #i:I
    :cond_29
    const/4 v3, 0x0

    goto :goto_9

    .line 550
    :cond_2b
    return-void
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .registers 4
    .parameter "enabled"

    .prologue
    .line 184
    if-eqz p1, :cond_21

    .line 185
    iget v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 190
    :goto_8
    const/4 v0, 0x4

    .local v0, i:I
    :goto_9
    if-ltz v0, :cond_28

    .line 193
    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->hasItemView(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 194
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuView$ItemView;

    invoke-interface {v1, p1}, Lcom/android/internal/view/menu/MenuView$ItemView;->setEnabled(Z)V

    .line 190
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 187
    .end local v0           #i:I
    :cond_21
    iget v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    goto :goto_8

    .line 198
    .restart local v0       #i:I
    :cond_28
    return-object p0
.end method

.method public setExclusiveCheckable(Z)V
    .registers 4
    .parameter "exclusive"

    .prologue
    .line 517
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, -0x5

    if-eqz p1, :cond_b

    const/4 v1, 0x4

    :goto_7
    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 518
    return-void

    .line 517
    :cond_b
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .registers 5
    .parameter "iconResId"

    .prologue
    const/4 v2, 0x0

    .line 465
    iput-object v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 466
    iput p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIconResId:I

    .line 469
    invoke-direct {p0}, Lcom/android/internal/view/menu/MenuItemImpl;->haveAnyOpenedIconCapableItemViews()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 470
    if-eqz p1, :cond_1c

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    .line 472
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    :goto_18
    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setIconOnViews(Landroid/graphics/drawable/Drawable;)V

    .line 475
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_1b
    return-object p0

    :cond_1c
    move-object v0, v2

    .line 470
    goto :goto_18
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .registers 3
    .parameter "icon"

    .prologue
    .line 457
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIconResId:I

    .line 458
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 459
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/MenuItemImpl;->setIconOnViews(Landroid/graphics/drawable/Drawable;)V

    .line 461
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .registers 2
    .parameter "intent"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mIntent:Landroid/content/Intent;

    .line 224
    return-object p0
.end method

.method public setIsActionButton(Z)V
    .registers 3
    .parameter "isActionButton"

    .prologue
    .line 663
    if-eqz p1, :cond_9

    .line 664
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 668
    :goto_8
    return-void

    .line 666
    :cond_9
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    goto :goto_8
.end method

.method setItemView(ILcom/android/internal/view/menu/MenuView$ItemView;)V
    .registers 5
    .parameter "menuType"
    .parameter "view"

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    aput-object v1, v0, p1

    .line 595
    return-void
.end method

.method setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 2
    .parameter "menuInfo"

    .prologue
    .line 624
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 625
    return-void
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .registers 3
    .parameter "numericChar"

    .prologue
    .line 255
    iget-char v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    if-ne v0, p1, :cond_5

    .line 261
    :goto_4
    return-object p0

    .line 257
    :cond_5
    iput-char p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 259
    invoke-direct {p0}, Lcom/android/internal/view/menu/MenuItemImpl;->refreshShortcutOnItemViews()V

    goto :goto_4
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .registers 2
    .parameter "clickListener"

    .prologue
    .line 581
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 582
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .registers 4
    .parameter "numericChar"
    .parameter "alphaChar"

    .prologue
    .line 265
    iput-char p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShortcutNumericChar:C

    .line 266
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShortcutAlphabeticChar:C

    .line 268
    invoke-direct {p0}, Lcom/android/internal/view/menu/MenuItemImpl;->refreshShortcutOnItemViews()V

    .line 270
    return-object p0
.end method

.method public setShowAsAction(I)V
    .registers 4
    .parameter "actionEnum"

    .prologue
    .line 675
    and-int/lit8 v0, p1, 0x3

    packed-switch v0, :pswitch_data_16

    .line 684
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 687
    :pswitch_d
    iput p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    .line 688
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/android/internal/view/menu/MenuBuilder;->onItemActionRequestChanged(Lcom/android/internal/view/menu/MenuItemImpl;)V

    .line 689
    return-void

    .line 675
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method setSubMenu(Lcom/android/internal/view/menu/SubMenuBuilder;)V
    .registers 4
    .parameter "subMenu"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    instance-of v0, v0, Landroid/view/SubMenu;

    if-eqz v0, :cond_12

    .line 367
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to add a sub-menu to a sub-menu."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_12
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mSubMenu:Lcom/android/internal/view/menu/SubMenuBuilder;

    .line 373
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 374
    return-void
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .registers 3
    .parameter "title"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 5
    .parameter "title"

    .prologue
    .line 395
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 397
    const/4 v0, 0x4

    .local v0, i:I
    :goto_3
    if-ltz v0, :cond_26

    .line 400
    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->hasItemView(I)Z

    move-result v2

    if-nez v2, :cond_e

    .line 397
    :cond_b
    :goto_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 404
    :cond_e
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuView$ItemView;

    .line 405
    .local v1, itemView:Lcom/android/internal/view/menu/MenuView$ItemView;
    invoke-interface {v1}, Lcom/android/internal/view/menu/MenuView$ItemView;->prefersCondensedTitle()Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    if-nez v2, :cond_b

    .line 406
    :cond_22
    invoke-interface {v1, p1}, Lcom/android/internal/view/menu/MenuView$ItemView;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 410
    .end local v1           #itemView:Lcom/android/internal/view/menu/MenuView$ItemView;
    :cond_26
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mSubMenu:Lcom/android/internal/view/menu/SubMenuBuilder;

    if-eqz v2, :cond_2f

    .line 411
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mSubMenu:Lcom/android/internal/view/menu/SubMenuBuilder;

    invoke-virtual {v2, p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 414
    :cond_2f
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 4
    .parameter "title"

    .prologue
    .line 426
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    .line 429
    if-nez p1, :cond_6

    .line 430
    iget-object p1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 433
    :cond_6
    const/4 v0, 0x4

    .local v0, i:I
    :goto_7
    if-ltz v0, :cond_2f

    .line 435
    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->hasItemView(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuView$ItemView;

    invoke-interface {v1}, Lcom/android/internal/view/menu/MenuView$ItemView;->prefersCondensedTitle()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 436
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mItemViews:[Ljava/lang/ref/WeakReference;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuView$ItemView;

    invoke-interface {v1, p1}, Lcom/android/internal/view/menu/MenuView$ItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 433
    :cond_2c
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 440
    :cond_2f
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .registers 3
    .parameter "shown"

    .prologue
    .line 575
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuItemImpl;->setVisibleInt(Z)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/android/internal/view/menu/MenuBuilder;->onItemVisibleChanged(Lcom/android/internal/view/menu/MenuItemImpl;)V

    .line 577
    :cond_b
    return-object p0
.end method

.method setVisibleInt(Z)Z
    .registers 6
    .parameter "shown"

    .prologue
    const/4 v3, 0x0

    .line 566
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 567
    .local v0, oldFlags:I
    iget v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    and-int/lit8 v1, v1, -0x9

    if-eqz p1, :cond_13

    move v2, v3

    :goto_a
    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    .line 568
    iget v1, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mFlags:I

    if-eq v0, v1, :cond_16

    const/4 v1, 0x1

    :goto_12
    return v1

    .line 567
    :cond_13
    const/16 v2, 0x8

    goto :goto_a

    :cond_16
    move v1, v3

    .line 568
    goto :goto_12
.end method

.method public shouldShowIcon(I)Z
    .registers 3
    .parameter "menuType"

    .prologue
    .line 645
    if-eqz p1, :cond_d

    const/4 v0, 0x3

    if-eq p1, v0, :cond_d

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getOptionalIconsVisible()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_d
    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method shouldShowShortcut()Z
    .registers 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getShortcut()C

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public showsTextAsAction()Z
    .registers 3

    .prologue
    .line 671
    iget v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
