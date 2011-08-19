.class Lcom/android/internal/view/menu/MenuBuilder$MenuType;
.super Ljava/lang/Object;
.source "MenuBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/MenuBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MenuType"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mMenuType:I

.field private mMenuView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/internal/view/menu/MenuView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/view/menu/MenuBuilder;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/MenuBuilder;I)V
    .registers 3
    .parameter
    .parameter "menuType"

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->this$0:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput p2, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mMenuType:I

    .line 245
    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/view/menu/MenuBuilder$MenuType;)Ljava/lang/ref/WeakReference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mMenuView:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/view/menu/MenuBuilder$MenuType;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mMenuView:Ljava/lang/ref/WeakReference;

    return-object p1
.end method


# virtual methods
.method getInflater()Landroid/view/LayoutInflater;
    .registers 5

    .prologue
    .line 249
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mInflater:Landroid/view/LayoutInflater;

    if-nez v2, :cond_22

    .line 251
    sget-object v2, Lcom/android/internal/view/menu/MenuBuilder;->THEME_RES_FOR_TYPE:[I

    iget v3, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mMenuType:I

    aget v0, v2, v3

    .line 252
    .local v0, themeResForType:I
    packed-switch v0, :pswitch_data_42

    .line 261
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->this$0:Lcom/android/internal/view/menu/MenuBuilder;

    #getter for: Lcom/android/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/view/menu/MenuBuilder;->access$000(Lcom/android/internal/view/menu/MenuBuilder;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 264
    .local v1, wrappedContext:Landroid/content/Context;
    :goto_18
    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mInflater:Landroid/view/LayoutInflater;

    .line 268
    .end local v0           #themeResForType:I
    .end local v1           #wrappedContext:Landroid/content/Context;
    :cond_22
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mInflater:Landroid/view/LayoutInflater;

    return-object v2

    .line 254
    .restart local v0       #themeResForType:I
    :pswitch_25
    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->this$0:Lcom/android/internal/view/menu/MenuBuilder;

    #getter for: Lcom/android/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/view/menu/MenuBuilder;->access$000(Lcom/android/internal/view/menu/MenuBuilder;)Landroid/content/Context;

    move-result-object v1

    .line 255
    .restart local v1       #wrappedContext:Landroid/content/Context;
    goto :goto_18

    .line 257
    .end local v1           #wrappedContext:Landroid/content/Context;
    :pswitch_2c
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->this$0:Lcom/android/internal/view/menu/MenuBuilder;

    #getter for: Lcom/android/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/view/menu/MenuBuilder;->access$000(Lcom/android/internal/view/menu/MenuBuilder;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->this$0:Lcom/android/internal/view/menu/MenuBuilder;

    #getter for: Lcom/android/internal/view/menu/MenuBuilder;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/view/menu/MenuBuilder;->access$000(Lcom/android/internal/view/menu/MenuBuilder;)Landroid/content/Context;

    move-result-object v3

    #calls: Lcom/android/internal/view/menu/MenuBuilder;->getAlertDialogTheme(Landroid/content/Context;)I
    invoke-static {v3}, Lcom/android/internal/view/menu/MenuBuilder;->access$100(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 259
    .restart local v1       #wrappedContext:Landroid/content/Context;
    goto :goto_18

    .line 252
    :pswitch_data_42
    .packed-switch -0x2
        :pswitch_2c
        :pswitch_25
    .end packed-switch
.end method

.method getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .registers 8
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 272
    sget-object v3, Lcom/android/internal/view/menu/MenuBuilder;->LAYOUT_RES_FOR_TYPE:[I

    iget v4, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mMenuType:I

    aget v3, v3, v4

    if-nez v3, :cond_b

    move-object v3, v5

    .line 296
    :goto_a
    return-object v3

    .line 276
    :cond_b
    monitor-enter p0

    .line 277
    :try_start_c
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mMenuView:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_5f

    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mMenuView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/MenuView;

    move-object v1, v3

    .line 279
    .local v1, menuView:Lcom/android/internal/view/menu/MenuView;
    :goto_19
    if-nez v1, :cond_5c

    .line 280
    invoke-virtual {p0}, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    sget-object v4, Lcom/android/internal/view/menu/MenuBuilder;->LAYOUT_RES_FOR_TYPE:[I

    iget v5, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mMenuType:I

    aget v4, v4, v5

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .end local v1           #menuView:Lcom/android/internal/view/menu/MenuView;
    check-cast v1, Lcom/android/internal/view/menu/MenuView;

    .line 282
    .restart local v1       #menuView:Lcom/android/internal/view/menu/MenuView;
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->this$0:Lcom/android/internal/view/menu/MenuBuilder;

    iget v4, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mMenuType:I

    invoke-interface {v1, v3, v4}, Lcom/android/internal/view/menu/MenuView;->initialize(Lcom/android/internal/view/menu/MenuBuilder;I)V

    .line 285
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mMenuView:Ljava/lang/ref/WeakReference;

    .line 287
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->this$0:Lcom/android/internal/view/menu/MenuBuilder;

    #getter for: Lcom/android/internal/view/menu/MenuBuilder;->mFrozenViewStates:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/internal/view/menu/MenuBuilder;->access$200(Lcom/android/internal/view/menu/MenuBuilder;)Landroid/util/SparseArray;

    move-result-object v3

    if-eqz v3, :cond_5c

    .line 288
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    move-object v2, v0

    .line 289
    .local v2, view:Landroid/view/View;
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->this$0:Lcom/android/internal/view/menu/MenuBuilder;

    #getter for: Lcom/android/internal/view/menu/MenuBuilder;->mFrozenViewStates:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/internal/view/menu/MenuBuilder;->access$200(Lcom/android/internal/view/menu/MenuBuilder;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 292
    iget-object v3, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->this$0:Lcom/android/internal/view/menu/MenuBuilder;

    #getter for: Lcom/android/internal/view/menu/MenuBuilder;->mFrozenViewStates:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/internal/view/menu/MenuBuilder;->access$200(Lcom/android/internal/view/menu/MenuBuilder;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 296
    .end local v2           #view:Landroid/view/View;
    :cond_5c
    monitor-exit p0

    move-object v3, v1

    goto :goto_a

    .end local v1           #menuView:Lcom/android/internal/view/menu/MenuView;
    :cond_5f
    move-object v1, v5

    .line 277
    goto :goto_19

    .line 297
    :catchall_61
    move-exception v3

    monitor-exit p0
    :try_end_63
    .catchall {:try_start_c .. :try_end_63} :catchall_61

    throw v3
.end method

.method hasMenuView()Z
    .registers 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mMenuView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/view/menu/MenuBuilder$MenuType;->mMenuView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
