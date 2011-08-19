.class public abstract Lcom/google/android/music/menu/MusicMenuItem;
.super Ljava/lang/Object;
.source "MusicMenuItem.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "MusicMenuItem"


# instance fields
.field protected mEnabled:Z

.field protected mIcon:Landroid/graphics/drawable/Drawable;

.field protected mIntent:Landroid/content/Intent;

.field protected mItemId:I

.field protected mMusicMenu:Lcom/google/android/music/menu/MusicMenu;

.field protected mOrder:I

.field protected mSubMenu:Lcom/google/android/music/menu/MusicListMenu;

.field protected mTitle:Ljava/lang/String;

.field protected mVisible:Z


# direct methods
.method public constructor <init>(Lcom/google/android/music/menu/MusicMenu;IILjava/lang/String;)V
    .locals 1
    .parameter "menu"
    .parameter "itemId"
    .parameter "order"
    .parameter "title"

    .prologue
    const/4 v0, 0x1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/android/music/menu/MusicMenuItem;->mMusicMenu:Lcom/google/android/music/menu/MusicMenu;

    .line 29
    iput p2, p0, Lcom/google/android/music/menu/MusicMenuItem;->mItemId:I

    .line 30
    iput p3, p0, Lcom/google/android/music/menu/MusicMenuItem;->mOrder:I

    .line 31
    iput-object p4, p0, Lcom/google/android/music/menu/MusicMenuItem;->mTitle:Ljava/lang/String;

    .line 32
    iput-boolean v0, p0, Lcom/google/android/music/menu/MusicMenuItem;->mEnabled:Z

    .line 33
    iput-boolean v0, p0, Lcom/google/android/music/menu/MusicMenuItem;->mVisible:Z

    .line 34
    return-void
.end method


# virtual methods
.method public getCheckboxEnabled()Z
    .locals 1

    .prologue
    .line 157
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getChecked()Z
    .locals 1

    .prologue
    .line 167
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/music/menu/MusicMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/music/menu/MusicMenuItem;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/google/android/music/menu/MusicMenuItem;->mItemId:I

    return v0
.end method

.method public getMenuInfo()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/music/menu/MusicMenuItem;->mMusicMenu:Lcom/google/android/music/menu/MusicMenu;

    invoke-virtual {v0}, Lcom/google/android/music/menu/MusicMenu;->getMenuInfo()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/google/android/music/menu/MusicMenuItem;->mOrder:I

    return v0
.end method

.method public getSubMenu()Lcom/google/android/music/menu/MusicListMenu;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/music/menu/MusicMenuItem;->mSubMenu:Lcom/google/android/music/menu/MusicListMenu;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/music/menu/MusicMenuItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method abstract getView()Landroid/view/View;
.end method

.method public invoke()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 117
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicMenuItem;->onInvoke()V

    .line 119
    iget-object v1, p0, Lcom/google/android/music/menu/MusicMenuItem;->mMusicMenu:Lcom/google/android/music/menu/MusicMenu;

    invoke-virtual {v1, p0}, Lcom/google/android/music/menu/MusicMenu;->performItemAction(Lcom/google/android/music/menu/MusicMenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    .line 131
    :goto_0
    return v1

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/google/android/music/menu/MusicMenuItem;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/menu/MusicMenuItem;->mMusicMenu:Lcom/google/android/music/menu/MusicMenu;

    invoke-virtual {v1}, Lcom/google/android/music/menu/MusicMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/menu/MusicMenuItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 126
    goto :goto_0

    .line 127
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 128
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v1, "MusicMenuItem"

    const-string v2, "Can\'t find activity to handle intent; ignoring"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/google/android/music/menu/MusicMenuItem;->mEnabled:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/google/android/music/menu/MusicMenuItem;->mVisible:Z

    return v0
.end method

.method public onInvoke()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public setCheckboxEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 151
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 163
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/google/android/music/menu/MusicMenuItem;->mEnabled:Z

    .line 100
    return-void
.end method

.method public setIcon(I)Lcom/google/android/music/menu/MusicMenuItem;
    .locals 2
    .parameter "iconResId"

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/google/android/music/menu/MusicMenuItem;->mMusicMenu:Lcom/google/android/music/menu/MusicMenu;

    invoke-virtual {v1}, Lcom/google/android/music/menu/MusicMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 94
    invoke-virtual {p0, v0}, Lcom/google/android/music/menu/MusicMenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 95
    return-object p0
.end method

.method public abstract setIcon(Landroid/graphics/drawable/Drawable;)V
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/android/music/menu/MusicMenuItem;->mIntent:Landroid/content/Intent;

    .line 104
    return-void
.end method

.method public setItemId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 73
    iput p1, p0, Lcom/google/android/music/menu/MusicMenuItem;->mItemId:I

    .line 74
    return-void
.end method

.method public setOrder(I)V
    .locals 0
    .parameter "order"

    .prologue
    .line 77
    iput p1, p0, Lcom/google/android/music/menu/MusicMenuItem;->mOrder:I

    .line 78
    return-void
.end method

.method public setSubMenu(Lcom/google/android/music/menu/MusicListMenu;)V
    .locals 0
    .parameter "subMenu"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/google/android/music/menu/MusicMenuItem;->mSubMenu:Lcom/google/android/music/menu/MusicListMenu;

    .line 140
    return-void
.end method

.method public setTitle(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 81
    iget-object v1, p0, Lcom/google/android/music/menu/MusicMenuItem;->mMusicMenu:Lcom/google/android/music/menu/MusicMenu;

    invoke-virtual {v1}, Lcom/google/android/music/menu/MusicMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, title:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/music/menu/MusicMenuItem;->setTitle(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/android/music/menu/MusicMenuItem;->mTitle:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/google/android/music/menu/MusicMenuItem;->mVisible:Z

    .line 108
    iget-object v0, p0, Lcom/google/android/music/menu/MusicMenuItem;->mMusicMenu:Lcom/google/android/music/menu/MusicMenu;

    invoke-virtual {v0}, Lcom/google/android/music/menu/MusicMenu;->markViewStale()V

    .line 109
    return-void
.end method

.method public setWidgetDrawables(II)V
    .locals 1
    .parameter "onDrawable"
    .parameter "offDrawable"

    .prologue
    .line 145
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/menu/MusicMenuItem;->mItemId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", title \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/menu/MusicMenuItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", order "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/menu/MusicMenuItem;->mOrder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", enabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/music/menu/MusicMenuItem;->mEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", visible "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/music/menu/MusicMenuItem;->mVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
