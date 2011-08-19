.class Landroid/view/MenuInflater$MenuState;
.super Ljava/lang/Object;
.source "MenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/MenuInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuState"
.end annotation


# static fields
.field private static final defaultGroupId:I = 0x0

.field private static final defaultItemCategory:I = 0x0

.field private static final defaultItemCheckable:I = 0x0

.field private static final defaultItemChecked:Z = false

.field private static final defaultItemEnabled:Z = true

.field private static final defaultItemId:I = 0x0

.field private static final defaultItemOrder:I = 0x0

.field private static final defaultItemVisible:Z = true


# instance fields
.field private groupCategory:I

.field private groupCheckable:I

.field private groupEnabled:Z

.field private groupId:I

.field private groupOrder:I

.field private groupVisible:Z

.field private itemActionViewClassName:Ljava/lang/String;

.field private itemActionViewLayout:I

.field private itemAdded:Z

.field private itemAlphabeticShortcut:C

.field private itemCategoryOrder:I

.field private itemCheckable:I

.field private itemChecked:Z

.field private itemEnabled:Z

.field private itemIconResId:I

.field private itemId:I

.field private itemListenerMethodName:Ljava/lang/String;

.field private itemNumericShortcut:C

.field private itemShowAsAction:I

.field private itemTitle:Ljava/lang/CharSequence;

.field private itemTitleCondensed:Ljava/lang/CharSequence;

.field private itemVisible:Z

.field private menu:Landroid/view/Menu;

.field final synthetic this$0:Landroid/view/MenuInflater;


# direct methods
.method public constructor <init>(Landroid/view/MenuInflater;Landroid/view/Menu;)V
    .registers 3
    .parameter
    .parameter "menu"

    .prologue
    .line 270
    iput-object p1, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput-object p2, p0, Landroid/view/MenuInflater$MenuState;->menu:Landroid/view/Menu;

    .line 273
    invoke-virtual {p0}, Landroid/view/MenuInflater$MenuState;->resetGroup()V

    .line 274
    return-void
.end method

.method private getShortcut(Ljava/lang/String;)C
    .registers 3
    .parameter "shortcutString"

    .prologue
    const/4 v0, 0x0

    .line 343
    if-nez p1, :cond_4

    .line 346
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_3
.end method

.method private setItem(Landroid/view/MenuItem;)V
    .registers 11
    .parameter "item"

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 351
    iget-boolean v5, p0, Landroid/view/MenuInflater$MenuState;->itemChecked:Z

    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v5

    iget-boolean v6, p0, Landroid/view/MenuInflater$MenuState;->itemVisible:Z

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v5

    iget-boolean v6, p0, Landroid/view/MenuInflater$MenuState;->itemEnabled:Z

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v5

    iget v6, p0, Landroid/view/MenuInflater$MenuState;->itemCheckable:I

    if-lt v6, v8, :cond_55

    move v6, v8

    :goto_19
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v5

    iget-object v6, p0, Landroid/view/MenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    iget v6, p0, Landroid/view/MenuInflater$MenuState;->itemIconResId:I

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    iget-char v6, p0, Landroid/view/MenuInflater$MenuState;->itemAlphabeticShortcut:C

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v5

    iget-char v6, p0, Landroid/view/MenuInflater$MenuState;->itemNumericShortcut:C

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    .line 360
    iget v5, p0, Landroid/view/MenuInflater$MenuState;->itemShowAsAction:I

    if-ltz v5, :cond_3d

    .line 361
    iget v5, p0, Landroid/view/MenuInflater$MenuState;->itemShowAsAction:I

    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 364
    :cond_3d
    iget-object v5, p0, Landroid/view/MenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    if-eqz v5, :cond_67

    .line 365
    iget-object v5, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    #getter for: Landroid/view/MenuInflater;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/view/MenuInflater;->access$000(Landroid/view/MenuInflater;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->isRestricted()Z

    move-result v5

    if-eqz v5, :cond_57

    .line 366
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_55
    move v6, v7

    .line 351
    goto :goto_19

    .line 369
    :cond_57
    new-instance v5, Landroid/view/MenuInflater$InflatedOnMenuItemClickListener;

    iget-object v6, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    #getter for: Landroid/view/MenuInflater;->mContext:Landroid/content/Context;
    invoke-static {v6}, Landroid/view/MenuInflater;->access$000(Landroid/view/MenuInflater;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Landroid/view/MenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/view/MenuInflater$InflatedOnMenuItemClickListener;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 373
    :cond_67
    instance-of v5, p1, Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v5, :cond_77

    .line 374
    move-object v0, p1

    check-cast v0, Lcom/android/internal/view/menu/MenuItemImpl;

    move-object v4, v0

    .line 375
    .local v4, impl:Lcom/android/internal/view/menu/MenuItemImpl;
    iget v5, p0, Landroid/view/MenuInflater$MenuState;->itemCheckable:I

    const/4 v6, 0x2

    if-lt v5, v6, :cond_77

    .line 376
    invoke-virtual {v4, v8}, Lcom/android/internal/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 380
    .end local v4           #impl:Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_77
    iget-object v5, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-eqz v5, :cond_b2

    .line 382
    :try_start_7b
    iget-object v5, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    const/4 v6, 0x1

    iget-object v7, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    #getter for: Landroid/view/MenuInflater;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/view/MenuInflater;->access$000(Landroid/view/MenuInflater;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-static {v5, v6, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 384
    .local v2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {}, Landroid/view/MenuInflater;->access$100()[Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 385
    .local v1, c:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    #getter for: Landroid/view/MenuInflater;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/view/MenuInflater;->access$000(Landroid/view/MenuInflater;)Landroid/content/Context;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_a9} :catch_aa

    .line 392
    .end local v1           #c:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v2           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_a9
    :goto_a9
    return-void

    .line 386
    :catch_aa
    move-exception v5

    move-object v3, v5

    .line 387
    .local v3, e:Ljava/lang/Exception;
    new-instance v5, Landroid/view/InflateException;

    invoke-direct {v5, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 389
    .end local v3           #e:Ljava/lang/Exception;
    .restart local p0
    :cond_b2
    iget v5, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewLayout:I

    if-lez v5, :cond_a9

    .line 390
    iget v5, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewLayout:I

    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    goto :goto_a9
.end method


# virtual methods
.method public addItem()V
    .registers 6

    .prologue
    .line 395
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->itemAdded:Z

    .line 396
    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->menu:Landroid/view/Menu;

    iget v1, p0, Landroid/view/MenuInflater$MenuState;->groupId:I

    iget v2, p0, Landroid/view/MenuInflater$MenuState;->itemId:I

    iget v3, p0, Landroid/view/MenuInflater$MenuState;->itemCategoryOrder:I

    iget-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/MenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    .line 397
    return-void
.end method

.method public addSubMenuItem()Landroid/view/SubMenu;
    .registers 7

    .prologue
    .line 400
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/MenuInflater$MenuState;->itemAdded:Z

    .line 401
    iget-object v1, p0, Landroid/view/MenuInflater$MenuState;->menu:Landroid/view/Menu;

    iget v2, p0, Landroid/view/MenuInflater$MenuState;->groupId:I

    iget v3, p0, Landroid/view/MenuInflater$MenuState;->itemId:I

    iget v4, p0, Landroid/view/MenuInflater$MenuState;->itemCategoryOrder:I

    iget-object v5, p0, Landroid/view/MenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    .line 402
    .local v0, subMenu:Landroid/view/SubMenu;
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/MenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    .line 403
    return-object v0
.end method

.method public hasAddedItem()Z
    .registers 2

    .prologue
    .line 407
    iget-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->itemAdded:Z

    return v0
.end method

.method public readGroup(Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 289
    iget-object v1, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    #getter for: Landroid/view/MenuInflater;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/view/MenuInflater;->access$000(Landroid/view/MenuInflater;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/internal/R$styleable;->MenuGroup:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 292
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/view/MenuInflater$MenuState;->groupId:I

    .line 293
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/view/MenuInflater$MenuState;->groupCategory:I

    .line 294
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/view/MenuInflater$MenuState;->groupOrder:I

    .line 295
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/view/MenuInflater$MenuState;->groupCheckable:I

    .line 296
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/MenuInflater$MenuState;->groupVisible:Z

    .line 297
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/MenuInflater$MenuState;->groupEnabled:Z

    .line 299
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 300
    return-void
.end method

.method public readItem(Landroid/util/AttributeSet;)V
    .registers 10
    .parameter "attrs"

    .prologue
    const/16 v7, 0xb

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 306
    iget-object v3, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    #getter for: Landroid/view/MenuInflater;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/view/MenuInflater;->access$000(Landroid/view/MenuInflater;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/internal/R$styleable;->MenuItem:[I

    invoke-virtual {v3, p1, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 310
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/view/MenuInflater$MenuState;->itemId:I

    .line 311
    const/4 v3, 0x5

    iget v4, p0, Landroid/view/MenuInflater$MenuState;->groupCategory:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 312
    .local v1, category:I
    const/4 v3, 0x6

    iget v4, p0, Landroid/view/MenuInflater$MenuState;->groupOrder:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 313
    .local v2, order:I
    const/high16 v3, -0x1

    and-int/2addr v3, v1

    const v4, 0xffff

    and-int/2addr v4, v2

    or-int/2addr v3, v4

    iput v3, p0, Landroid/view/MenuInflater$MenuState;->itemCategoryOrder:I

    .line 314
    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Landroid/view/MenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    .line 315
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Landroid/view/MenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    .line 316
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/view/MenuInflater$MenuState;->itemIconResId:I

    .line 317
    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/view/MenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    move-result v3

    iput-char v3, p0, Landroid/view/MenuInflater$MenuState;->itemAlphabeticShortcut:C

    .line 319
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/view/MenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    move-result v3

    iput-char v3, p0, Landroid/view/MenuInflater$MenuState;->itemNumericShortcut:C

    .line 321
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_ac

    .line 323
    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_aa

    move v3, v6

    :goto_69
    iput v3, p0, Landroid/view/MenuInflater$MenuState;->itemCheckable:I

    .line 329
    :goto_6b
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/view/MenuInflater$MenuState;->itemChecked:Z

    .line 330
    const/4 v3, 0x4

    iget-boolean v4, p0, Landroid/view/MenuInflater$MenuState;->groupVisible:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/view/MenuInflater$MenuState;->itemVisible:Z

    .line 331
    iget-boolean v3, p0, Landroid/view/MenuInflater$MenuState;->groupEnabled:Z

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/view/MenuInflater$MenuState;->itemEnabled:Z

    .line 332
    const/16 v3, 0xd

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/view/MenuInflater$MenuState;->itemShowAsAction:I

    .line 333
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/view/MenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    .line 334
    const/16 v3, 0xe

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewLayout:I

    .line 335
    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    .line 337
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 339
    iput-boolean v5, p0, Landroid/view/MenuInflater$MenuState;->itemAdded:Z

    .line 340
    return-void

    :cond_aa
    move v3, v5

    .line 323
    goto :goto_69

    .line 327
    :cond_ac
    iget v3, p0, Landroid/view/MenuInflater$MenuState;->groupCheckable:I

    iput v3, p0, Landroid/view/MenuInflater$MenuState;->itemCheckable:I

    goto :goto_6b
.end method

.method public resetGroup()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 277
    iput v0, p0, Landroid/view/MenuInflater$MenuState;->groupId:I

    .line 278
    iput v0, p0, Landroid/view/MenuInflater$MenuState;->groupCategory:I

    .line 279
    iput v0, p0, Landroid/view/MenuInflater$MenuState;->groupOrder:I

    .line 280
    iput v0, p0, Landroid/view/MenuInflater$MenuState;->groupCheckable:I

    .line 281
    iput-boolean v1, p0, Landroid/view/MenuInflater$MenuState;->groupVisible:Z

    .line 282
    iput-boolean v1, p0, Landroid/view/MenuInflater$MenuState;->groupEnabled:Z

    .line 283
    return-void
.end method
