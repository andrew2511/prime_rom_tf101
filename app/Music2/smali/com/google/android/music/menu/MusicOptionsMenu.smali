.class public Lcom/google/android/music/menu/MusicOptionsMenu;
.super Lcom/google/android/music/menu/MusicMenu;
.source "MusicOptionsMenu.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicOptionsMenu"


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private mMenuView:Lcom/google/android/music/menu/MusicOptionsMenuView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V
    .locals 0
    .parameter "context"
    .parameter "callback"
    .parameter "rootView"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/menu/MusicMenu;-><init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V

    .line 33
    return-void
.end method

.method private clearView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 207
    iget-object v0, p0, Lcom/google/android/music/menu/MusicOptionsMenu;->mMenuView:Lcom/google/android/music/menu/MusicOptionsMenuView;

    .line 208
    .local v0, view:Lcom/google/android/music/menu/MusicOptionsMenuView;
    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0}, Lcom/google/android/music/menu/MusicOptionsMenuView;->removeAllViews()V

    .line 211
    :cond_0
    iput-object v1, p0, Lcom/google/android/music/menu/MusicOptionsMenu;->mMenuView:Lcom/google/android/music/menu/MusicOptionsMenuView;

    .line 212
    iput-object v1, p0, Lcom/google/android/music/menu/MusicOptionsMenu;->mDialog:Landroid/app/Dialog;

    .line 213
    return-void
.end method


# virtual methods
.method public add(III)Lcom/google/android/music/menu/MusicMenuItem;
    .locals 1
    .parameter "id"
    .parameter "order"
    .parameter "titleRes"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/music/menu/MusicOptionsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/music/menu/MusicOptionsMenu;->add(IILjava/lang/String;)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IILjava/lang/String;)Lcom/google/android/music/menu/MusicMenuItem;
    .locals 3
    .parameter "id"
    .parameter "order"
    .parameter "title"

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicOptionsMenu;->markViewStale()V

    .line 46
    new-instance v0, Lcom/google/android/music/menu/MusicOptionsMenuItem;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/music/menu/MusicOptionsMenuItem;-><init>(Lcom/google/android/music/menu/MusicMenu;IILjava/lang/String;)V

    .line 47
    .local v0, item:Lcom/google/android/music/menu/MusicOptionsMenuItem;
    iget-object v1, p0, Lcom/google/android/music/menu/MusicOptionsMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Lcom/google/android/music/menu/MusicOptionsMenu;->findInsertIndex(I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 48
    return-object v0
.end method

.method public addSubMenu(III)Lcom/google/android/music/menu/MusicMenu;
    .locals 1
    .parameter "id"
    .parameter "order"
    .parameter "titleRes"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/music/menu/MusicOptionsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/music/menu/MusicOptionsMenu;->addSubMenu(IILjava/lang/String;)Lcom/google/android/music/menu/MusicMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IILjava/lang/String;)Lcom/google/android/music/menu/MusicMenu;
    .locals 5
    .parameter "id"
    .parameter "order"
    .parameter "title"

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicOptionsMenu;->markViewStale()V

    .line 59
    new-instance v1, Lcom/google/android/music/menu/MusicPopupMenu;

    iget-object v2, p0, Lcom/google/android/music/menu/MusicOptionsMenu;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/music/menu/MusicOptionsMenu;->mCallback:Lcom/google/android/music/menu/MusicMenu$Callback;

    iget-object v4, p0, Lcom/google/android/music/menu/MusicOptionsMenu;->mRootView:Landroid/view/View;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/music/menu/MusicPopupMenu;-><init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V

    .line 61
    .local v1, subMenu:Lcom/google/android/music/menu/MusicPopupMenu;
    new-instance v0, Lcom/google/android/music/menu/MusicOptionsMenuItem;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/music/menu/MusicOptionsMenuItem;-><init>(Lcom/google/android/music/menu/MusicMenu;IILjava/lang/String;)V

    .line 62
    .local v0, item:Lcom/google/android/music/menu/MusicOptionsMenuItem;
    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MusicOptionsMenuItem;->setSubMenu(Lcom/google/android/music/menu/MusicListMenu;)V

    .line 63
    invoke-virtual {v1, v0}, Lcom/google/android/music/menu/MusicPopupMenu;->setItem(Lcom/google/android/music/menu/MusicMenuItem;)V

    .line 64
    iget-object v2, p0, Lcom/google/android/music/menu/MusicOptionsMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Lcom/google/android/music/menu/MusicOptionsMenu;->findInsertIndex(I)I

    move-result v3

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 66
    return-object v1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicOptionsMenu;->markViewStale()V

    .line 80
    iget-object v0, p0, Lcom/google/android/music/menu/MusicOptionsMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 81
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/music/menu/MusicOptionsMenu;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/google/android/music/menu/MusicOptionsMenu;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 141
    :cond_0
    return-void
.end method

.method public findItem(I)Lcom/google/android/music/menu/MusicMenuItem;
    .locals 4
    .parameter "id"

    .prologue
    .line 85
    iget-object v3, p0, Lcom/google/android/music/menu/MusicOptionsMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 86
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 87
    iget-object v3, p0, Lcom/google/android/music/menu/MusicOptionsMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/menu/MusicOptionsMenuItem;

    .line 88
    .local v1, item:Lcom/google/android/music/menu/MusicOptionsMenuItem;
    invoke-virtual {v1}, Lcom/google/android/music/menu/MusicOptionsMenuItem;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_0

    move-object v3, v1

    .line 93
    .end local v1           #item:Lcom/google/android/music/menu/MusicOptionsMenuItem;
    :goto_1
    return-object v3

    .line 86
    .restart local v1       #item:Lcom/google/android/music/menu/MusicOptionsMenuItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    .end local v1           #item:Lcom/google/android/music/menu/MusicOptionsMenuItem;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public findItemIndex(I)I
    .locals 4
    .parameter "id"

    .prologue
    .line 98
    iget-object v3, p0, Lcom/google/android/music/menu/MusicOptionsMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 100
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 101
    iget-object v3, p0, Lcom/google/android/music/menu/MusicOptionsMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/menu/MusicOptionsMenuItem;

    .line 102
    .local v1, item:Lcom/google/android/music/menu/MusicOptionsMenuItem;
    invoke-virtual {v1}, Lcom/google/android/music/menu/MusicOptionsMenuItem;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_0

    move v3, v0

    .line 107
    .end local v1           #item:Lcom/google/android/music/menu/MusicOptionsMenuItem;
    :goto_1
    return v3

    .line 100
    .restart local v1       #item:Lcom/google/android/music/menu/MusicOptionsMenuItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    .end local v1           #item:Lcom/google/android/music/menu/MusicOptionsMenuItem;
    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public bridge synthetic getMenuView()Landroid/view/View;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicOptionsMenu;->getMenuView()Lcom/google/android/music/menu/MusicOptionsMenuView;

    move-result-object v0

    return-object v0
.end method

.method public getMenuView()Lcom/google/android/music/menu/MusicOptionsMenuView;
    .locals 4

    .prologue
    .line 112
    monitor-enter p0

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/menu/MusicOptionsMenu;->mMenuView:Lcom/google/android/music/menu/MusicOptionsMenuView;

    if-nez v1, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicOptionsMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 115
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f04001d

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/menu/MusicOptionsMenuView;

    iput-object v1, p0, Lcom/google/android/music/menu/MusicOptionsMenu;->mMenuView:Lcom/google/android/music/menu/MusicOptionsMenuView;

    .line 117
    iget-object v1, p0, Lcom/google/android/music/menu/MusicOptionsMenu;->mMenuView:Lcom/google/android/music/menu/MusicOptionsMenuView;

    invoke-virtual {v1, p0}, Lcom/google/android/music/menu/MusicOptionsMenuView;->initialize(Lcom/google/android/music/menu/MusicOptionsMenu;)V

    .line 120
    iget-object v1, p0, Lcom/google/android/music/menu/MusicOptionsMenu;->mMenuView:Lcom/google/android/music/menu/MusicOptionsMenuView;

    invoke-virtual {v1, p0}, Lcom/google/android/music/menu/MusicOptionsMenuView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 123
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Lcom/google/android/music/menu/MusicOptionsMenu;->mMenuView:Lcom/google/android/music/menu/MusicOptionsMenuView;

    monitor-exit p0

    return-object v1

    .line 124
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
    .line 129
    iget-object v0, p0, Lcom/google/android/music/menu/MusicOptionsMenu;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/google/android/music/menu/MusicOptionsMenu;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    .line 132
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markViewStale()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/music/menu/MusicOptionsMenu;->mMenuView:Lcom/google/android/music/menu/MusicOptionsMenuView;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/google/android/music/menu/MusicOptionsMenu;->mMenuView:Lcom/google/android/music/menu/MusicOptionsMenuView;

    invoke-virtual {v0}, Lcom/google/android/music/menu/MusicOptionsMenuView;->markStaleChildren()V

    .line 161
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const/4 v2, 0x0

    .line 146
    iget-object v0, p0, Lcom/google/android/music/menu/MusicOptionsMenu;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/music/menu/MusicOptionsMenu;->mDialog:Landroid/app/Dialog;

    if-eq v0, p1, :cond_0

    .line 147
    const-string v0, "MusicOptionsMenu"

    const-string v1, "Dismiss from unknown dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/menu/MusicOptionsMenu;->mMenuView:Lcom/google/android/music/menu/MusicOptionsMenuView;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/google/android/music/menu/MusicOptionsMenu;->mMenuView:Lcom/google/android/music/menu/MusicOptionsMenuView;

    invoke-virtual {v0}, Lcom/google/android/music/menu/MusicOptionsMenuView;->removeAllViews()V

    .line 151
    iput-object v2, p0, Lcom/google/android/music/menu/MusicOptionsMenu;->mMenuView:Lcom/google/android/music/menu/MusicOptionsMenuView;

    .line 153
    :cond_1
    iput-object v2, p0, Lcom/google/android/music/menu/MusicOptionsMenu;->mDialog:Landroid/app/Dialog;

    .line 154
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 168
    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/16 v0, 0x52

    if-ne p2, v0, :cond_2

    .line 169
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 170
    const-string v0, "MusicOptionsMenu"

    const-string v1, "close"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicOptionsMenu;->close()V

    :cond_1
    move v0, v2

    .line 175
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performItemAction(Lcom/google/android/music/menu/MusicMenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 180
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicMenuItem;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move v4, v5

    .line 203
    :goto_0
    return v4

    .line 184
    :cond_1
    const/4 v0, 0x0

    .line 185
    .local v0, invoked:Z
    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicMenuItem;->getSubMenu()Lcom/google/android/music/menu/MusicListMenu;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 186
    const/4 v0, 0x1

    .line 188
    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicMenuItem;->getView()Landroid/view/View;

    move-result-object v2

    .line 189
    .local v2, v:Landroid/view/View;
    const/4 v4, 0x2

    new-array v1, v4, [I

    .line 190
    .local v1, location:[I
    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 191
    aget v3, v1, v5

    .line 192
    .local v3, x:I
    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicMenuItem;->getSubMenu()Lcom/google/android/music/menu/MusicListMenu;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v3

    aget v6, v1, v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/android/music/menu/MusicListMenu;->setLocation(III)V

    .line 195
    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicMenuItem;->getSubMenu()Lcom/google/android/music/menu/MusicListMenu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/menu/MusicListMenu;->show()V

    .end local v1           #location:[I
    .end local v2           #v:Landroid/view/View;
    .end local v3           #x:I
    :goto_1
    move v4, v0

    .line 203
    goto :goto_0

    .line 197
    :cond_2
    iget-object v4, p0, Lcom/google/android/music/menu/MusicOptionsMenu;->mCallback:Lcom/google/android/music/menu/MusicMenu$Callback;

    if-eqz v4, :cond_3

    .line 198
    iget-object v4, p0, Lcom/google/android/music/menu/MusicOptionsMenu;->mCallback:Lcom/google/android/music/menu/MusicMenu$Callback;

    invoke-interface {v4, p1}, Lcom/google/android/music/menu/MusicMenu$Callback;->onMusicMenuItemSelected(Lcom/google/android/music/menu/MusicMenuItem;)Z

    move-result v0

    .line 201
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicOptionsMenu;->close()V

    goto :goto_1
.end method

.method public removeItem(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicOptionsMenu;->markViewStale()V

    .line 72
    invoke-virtual {p0, p1}, Lcom/google/android/music/menu/MusicOptionsMenu;->findItemIndex(I)I

    move-result v0

    .line 73
    .local v0, index:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/music/menu/MusicOptionsMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/google/android/music/menu/MusicOptionsMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public show()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 217
    invoke-direct {p0}, Lcom/google/android/music/menu/MusicOptionsMenu;->clearView()V

    .line 218
    iget-object v2, p0, Lcom/google/android/music/menu/MusicOptionsMenu;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_0

    .line 240
    :goto_0
    return-void

    .line 223
    :cond_0
    new-instance v2, Landroid/app/Dialog;

    iget-object v3, p0, Lcom/google/android/music/menu/MusicOptionsMenu;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/music/menu/MusicOptionsMenu;->mDialog:Landroid/app/Dialog;

    .line 224
    iget-object v2, p0, Lcom/google/android/music/menu/MusicOptionsMenu;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 225
    .local v1, window:Landroid/view/Window;
    invoke-virtual {v1, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 226
    const v2, 0x7f0201a0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 227
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 228
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Lcom/google/android/music/menu/MusicOptionsMenu;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicOptionsMenu;->getMenuView()Lcom/google/android/music/menu/MusicOptionsMenuView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 229
    iget-object v2, p0, Lcom/google/android/music/menu/MusicOptionsMenu;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 230
    iget-object v2, p0, Lcom/google/android/music/menu/MusicOptionsMenu;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 231
    const/16 v2, 0x3eb

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 232
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 233
    const/4 v2, -0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 234
    const v2, 0x7f0e000c

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 235
    const/16 v2, 0x50

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 236
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x2

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 237
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 238
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 239
    iget-object v2, p0, Lcom/google/android/music/menu/MusicOptionsMenu;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
