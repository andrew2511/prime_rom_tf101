.class public Lcom/google/android/music/menu/MusicOptionsMenuItem;
.super Lcom/google/android/music/menu/MusicMenuItem;
.source "MusicOptionsMenuItem.java"


# instance fields
.field private mItemView:Lcom/google/android/music/menu/MusicOptionsMenuItemView;


# direct methods
.method public constructor <init>(Lcom/google/android/music/menu/MusicMenu;IILjava/lang/String;)V
    .locals 0
    .parameter "menu"
    .parameter "itemId"
    .parameter "order"
    .parameter "title"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/music/menu/MusicMenuItem;-><init>(Lcom/google/android/music/menu/MusicMenu;IILjava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getItemView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "parent"

    .prologue
    .line 37
    iget-object v1, p0, Lcom/google/android/music/menu/MusicOptionsMenuItem;->mItemView:Lcom/google/android/music/menu/MusicOptionsMenuItemView;

    if-nez v1, :cond_0

    .line 38
    iget-object v1, p0, Lcom/google/android/music/menu/MusicOptionsMenuItem;->mMusicMenu:Lcom/google/android/music/menu/MusicMenu;

    invoke-virtual {v1}, Lcom/google/android/music/menu/MusicMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 39
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f04001e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/menu/MusicOptionsMenuItemView;

    iput-object v1, p0, Lcom/google/android/music/menu/MusicOptionsMenuItem;->mItemView:Lcom/google/android/music/menu/MusicOptionsMenuItemView;

    .line 41
    iget-object v1, p0, Lcom/google/android/music/menu/MusicOptionsMenuItem;->mItemView:Lcom/google/android/music/menu/MusicOptionsMenuItemView;

    invoke-virtual {v1, p0}, Lcom/google/android/music/menu/MusicOptionsMenuItemView;->initialize(Lcom/google/android/music/menu/MusicMenuItem;)V

    .line 43
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Lcom/google/android/music/menu/MusicOptionsMenuItem;->mItemView:Lcom/google/android/music/menu/MusicOptionsMenuItemView;

    return-object v1
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/music/menu/MusicOptionsMenuItem;->mItemView:Lcom/google/android/music/menu/MusicOptionsMenuItemView;

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/google/android/music/menu/MusicMenuItem;->setEnabled(Z)V

    .line 54
    iget-object v0, p0, Lcom/google/android/music/menu/MusicOptionsMenuItem;->mItemView:Lcom/google/android/music/menu/MusicOptionsMenuItemView;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/google/android/music/menu/MusicOptionsMenuItem;->mItemView:Lcom/google/android/music/menu/MusicOptionsMenuItemView;

    invoke-virtual {v0, p1}, Lcom/google/android/music/menu/MusicOptionsMenuItemView;->setEnabled(Z)V

    .line 57
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/google/android/music/menu/MusicOptionsMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 19
    iget-object v0, p0, Lcom/google/android/music/menu/MusicOptionsMenuItem;->mItemView:Lcom/google/android/music/menu/MusicOptionsMenuItemView;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/google/android/music/menu/MusicOptionsMenuItem;->mItemView:Lcom/google/android/music/menu/MusicOptionsMenuItemView;

    iget-object v1, p0, Lcom/google/android/music/menu/MusicOptionsMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MusicOptionsMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 22
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/google/android/music/menu/MusicMenuItem;->setTitle(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/google/android/music/menu/MusicOptionsMenuItem;->mItemView:Lcom/google/android/music/menu/MusicOptionsMenuItemView;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/google/android/music/menu/MusicOptionsMenuItem;->mItemView:Lcom/google/android/music/menu/MusicOptionsMenuItemView;

    invoke-virtual {v0, p1}, Lcom/google/android/music/menu/MusicOptionsMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 30
    :cond_0
    return-void
.end method
