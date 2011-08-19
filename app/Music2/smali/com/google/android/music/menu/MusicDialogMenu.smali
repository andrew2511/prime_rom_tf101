.class public Lcom/google/android/music/menu/MusicDialogMenu;
.super Lcom/google/android/music/menu/MusicListMenu;
.source "MusicDialogMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private mButtonRect:Landroid/graphics/Rect;

.field private mDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V
    .locals 0
    .parameter "context"
    .parameter "callback"
    .parameter "rootView"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/menu/MusicListMenu;-><init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V

    .line 20
    return-void
.end method


# virtual methods
.method public addSubMenu(IILjava/lang/String;)Lcom/google/android/music/menu/MusicMenu;
    .locals 5
    .parameter "id"
    .parameter "order"
    .parameter "title"

    .prologue
    .line 38
    new-instance v1, Lcom/google/android/music/menu/MusicDialogMenu;

    iget-object v2, p0, Lcom/google/android/music/menu/MusicDialogMenu;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/music/menu/MusicDialogMenu;->mCallback:Lcom/google/android/music/menu/MusicMenu$Callback;

    iget-object v4, p0, Lcom/google/android/music/menu/MusicDialogMenu;->mRootView:Landroid/view/View;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/music/menu/MusicDialogMenu;-><init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V

    .line 40
    .local v1, subMenu:Lcom/google/android/music/menu/MusicListMenu;
    new-instance v0, Lcom/google/android/music/menu/MusicListMenuItem;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/music/menu/MusicListMenuItem;-><init>(Lcom/google/android/music/menu/MusicMenu;IILjava/lang/String;)V

    .line 41
    .local v0, item:Lcom/google/android/music/menu/MusicListMenuItem;
    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MusicListMenuItem;->setSubMenu(Lcom/google/android/music/menu/MusicListMenu;)V

    .line 42
    invoke-virtual {v1, v0}, Lcom/google/android/music/menu/MusicListMenu;->setItem(Lcom/google/android/music/menu/MusicMenuItem;)V

    .line 43
    iget-object v2, p0, Lcom/google/android/music/menu/MusicDialogMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Lcom/google/android/music/menu/MusicDialogMenu;->findInsertIndex(I)I

    move-result v3

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 45
    return-object v1
.end method

.method protected clearView()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Lcom/google/android/music/menu/MusicListMenu;->clearView()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/menu/MusicDialogMenu;->mDialog:Landroid/app/AlertDialog;

    .line 88
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/music/menu/MusicDialogMenu;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/google/android/music/menu/MusicDialogMenu;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 78
    :cond_0
    return-void
.end method

.method public bridge synthetic getMenuView()Landroid/view/View;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicDialogMenu;->getMenuView()Lcom/google/android/music/menu/MusicListMenuView;

    move-result-object v0

    return-object v0
.end method

.method public getMenuView()Lcom/google/android/music/menu/MusicListMenuView;
    .locals 4

    .prologue
    .line 50
    monitor-enter p0

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/menu/MusicDialogMenu;->mMenuView:Lcom/google/android/music/menu/MusicListMenuView;

    if-nez v1, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicDialogMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 53
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f04001b

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/menu/MusicListMenuView;

    iput-object v1, p0, Lcom/google/android/music/menu/MusicDialogMenu;->mMenuView:Lcom/google/android/music/menu/MusicListMenuView;

    .line 55
    iget-object v1, p0, Lcom/google/android/music/menu/MusicDialogMenu;->mMenuView:Lcom/google/android/music/menu/MusicListMenuView;

    invoke-virtual {v1, p0}, Lcom/google/android/music/menu/MusicListMenuView;->initialize(Lcom/google/android/music/menu/MusicListMenu;)V

    .line 56
    iget-object v1, p0, Lcom/google/android/music/menu/MusicDialogMenu;->mMenuView:Lcom/google/android/music/menu/MusicListMenuView;

    invoke-virtual {v1, p0}, Lcom/google/android/music/menu/MusicListMenuView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 59
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Lcom/google/android/music/menu/MusicDialogMenu;->mMenuView:Lcom/google/android/music/menu/MusicListMenuView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/music/menu/MusicListMenuView;->setUseDividers(Z)V

    .line 60
    iget-object v1, p0, Lcom/google/android/music/menu/MusicDialogMenu;->mMenuView:Lcom/google/android/music/menu/MusicListMenuView;

    monitor-exit p0

    return-object v1

    .line 61
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/music/menu/MusicDialogMenu;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/google/android/music/menu/MusicDialogMenu;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    .line 69
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicDialogMenu;->clearView()V

    .line 82
    return-void
.end method

.method public setButtonLocation(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "rect"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/android/music/menu/MusicDialogMenu;->mButtonRect:Landroid/graphics/Rect;

    .line 34
    return-void
.end method

.method public setButtonView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 23
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/google/android/music/menu/MusicDialogMenu;->mButtonRect:Landroid/graphics/Rect;

    .line 24
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 25
    .local v0, location:[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 26
    iget-object v1, p0, Lcom/google/android/music/menu/MusicDialogMenu;->mButtonRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 27
    iget-object v1, p0, Lcom/google/android/music/menu/MusicDialogMenu;->mButtonRect:Landroid/graphics/Rect;

    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 28
    iget-object v1, p0, Lcom/google/android/music/menu/MusicDialogMenu;->mButtonRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/google/android/music/menu/MusicDialogMenu;->mButtonRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 29
    iget-object v1, p0, Lcom/google/android/music/menu/MusicDialogMenu;->mButtonRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/google/android/music/menu/MusicDialogMenu;->mButtonRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 30
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicDialogMenu;->clearView()V

    .line 93
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/google/android/music/menu/MusicDialogMenu;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicDialogMenu;->getMenuView()Lcom/google/android/music/menu/MusicListMenuView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicDialogMenu;->getHeader()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 96
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/menu/MusicDialogMenu;->mDialog:Landroid/app/AlertDialog;

    .line 97
    iget-object v1, p0, Lcom/google/android/music/menu/MusicDialogMenu;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 98
    return-void
.end method
