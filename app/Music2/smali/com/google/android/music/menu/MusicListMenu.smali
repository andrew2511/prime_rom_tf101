.class public abstract Lcom/google/android/music/menu/MusicListMenu;
.super Lcom/google/android/music/menu/MusicMenu;
.source "MusicListMenu.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field protected mHeader:Ljava/lang/CharSequence;

.field protected mItem:Lcom/google/android/music/menu/MusicMenuItem;

.field protected mMenuView:Lcom/google/android/music/menu/MusicListMenuView;

.field protected mRadioButtonsEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V
    .locals 1
    .parameter "context"
    .parameter "callback"
    .parameter "rootView"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/menu/MusicMenu;-><init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/menu/MusicListMenu;->mRadioButtonsEnabled:Z

    .line 20
    return-void
.end method


# virtual methods
.method public add(III)Lcom/google/android/music/menu/MusicMenuItem;
    .locals 1
    .parameter "id"
    .parameter "order"
    .parameter "titleRes"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/music/menu/MusicListMenu;->add(IILjava/lang/String;)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IILjava/lang/String;)Lcom/google/android/music/menu/MusicMenuItem;
    .locals 3
    .parameter "id"
    .parameter "order"
    .parameter "title"

    .prologue
    .line 95
    new-instance v0, Lcom/google/android/music/menu/MusicListMenuItem;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/music/menu/MusicListMenuItem;-><init>(Lcom/google/android/music/menu/MusicMenu;IILjava/lang/String;)V

    .line 96
    .local v0, item:Lcom/google/android/music/menu/MusicListMenuItem;
    iget-object v1, p0, Lcom/google/android/music/menu/MusicListMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Lcom/google/android/music/menu/MusicListMenu;->findInsertIndex(I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 97
    iget-boolean v1, p0, Lcom/google/android/music/menu/MusicListMenu;->mRadioButtonsEnabled:Z

    if-eqz v1, :cond_0

    .line 98
    sget-object v1, Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;->WIDGET_RADIO_BUTTON:Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MusicListMenuItem;->setWidgetMode(Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;)V

    .line 100
    :cond_0
    return-object v0
.end method

.method public addSubMenu(III)Lcom/google/android/music/menu/MusicMenu;
    .locals 1
    .parameter "id"
    .parameter "order"
    .parameter "titleRes"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/music/menu/MusicListMenu;->addSubMenu(IILjava/lang/String;)Lcom/google/android/music/menu/MusicMenu;

    move-result-object v0

    return-object v0
.end method

.method public abstract addSubMenu(IILjava/lang/String;)Lcom/google/android/music/menu/MusicMenu;
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 121
    return-void
.end method

.method protected clearView()V
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicListMenu;->getMenuView()Lcom/google/android/music/menu/MusicListMenuView;

    move-result-object v0

    .line 76
    .local v0, view:Lcom/google/android/music/menu/MusicListMenuView;
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Lcom/google/android/music/menu/MusicListMenuView;->clearChildren()V

    .line 79
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/music/menu/MusicListMenu;->mMenuView:Lcom/google/android/music/menu/MusicListMenuView;

    .line 80
    return-void
.end method

.method public findItem(I)Lcom/google/android/music/menu/MusicMenuItem;
    .locals 4
    .parameter "id"

    .prologue
    .line 125
    iget-object v3, p0, Lcom/google/android/music/menu/MusicListMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 126
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 127
    iget-object v3, p0, Lcom/google/android/music/menu/MusicListMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/menu/MusicListMenuItem;

    .line 128
    .local v1, item:Lcom/google/android/music/menu/MusicListMenuItem;
    invoke-virtual {v1}, Lcom/google/android/music/menu/MusicListMenuItem;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_0

    move-object v3, v1

    .line 133
    .end local v1           #item:Lcom/google/android/music/menu/MusicListMenuItem;
    :goto_1
    return-object v3

    .line 126
    .restart local v1       #item:Lcom/google/android/music/menu/MusicListMenuItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    .end local v1           #item:Lcom/google/android/music/menu/MusicListMenuItem;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public findItemIndex(I)I
    .locals 4
    .parameter "id"

    .prologue
    .line 138
    iget-object v3, p0, Lcom/google/android/music/menu/MusicListMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 140
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 141
    iget-object v3, p0, Lcom/google/android/music/menu/MusicListMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/menu/MusicListMenuItem;

    .line 142
    .local v1, item:Lcom/google/android/music/menu/MusicListMenuItem;
    invoke-virtual {v1}, Lcom/google/android/music/menu/MusicListMenuItem;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_0

    move v3, v0

    .line 147
    .end local v1           #item:Lcom/google/android/music/menu/MusicListMenuItem;
    :goto_1
    return v3

    .line 140
    .restart local v1       #item:Lcom/google/android/music/menu/MusicListMenuItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    .end local v1           #item:Lcom/google/android/music/menu/MusicListMenuItem;
    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public getHeader()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenu;->mHeader:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getItem()Lcom/google/android/music/menu/MusicMenuItem;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenu;->mItem:Lcom/google/android/music/menu/MusicMenuItem;

    return-object v0
.end method

.method public bridge synthetic getMenuView()Landroid/view/View;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicListMenu;->getMenuView()Lcom/google/android/music/menu/MusicListMenuView;

    move-result-object v0

    return-object v0
.end method

.method public abstract getMenuView()Lcom/google/android/music/menu/MusicListMenuView;
.end method

.method public getRadioButtonsEnabled()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/google/android/music/menu/MusicListMenu;->mRadioButtonsEnabled:Z

    return v0
.end method

.method public markViewStale()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenu;->mMenuView:Lcom/google/android/music/menu/MusicListMenuView;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenu;->mMenuView:Lcom/google/android/music/menu/MusicListMenuView;

    invoke-virtual {v0}, Lcom/google/android/music/menu/MusicListMenuView;->markStaleChildren()V

    .line 164
    :cond_0
    return-void
.end method

.method protected onItemChecked(Lcom/google/android/music/menu/MusicMenuItem;Z)V
    .locals 4
    .parameter "item"
    .parameter "checked"

    .prologue
    .line 63
    if-eqz p2, :cond_1

    iget-boolean v3, p0, Lcom/google/android/music/menu/MusicListMenu;->mRadioButtonsEnabled:Z

    if-eqz v3, :cond_1

    .line 64
    iget-object v3, p0, Lcom/google/android/music/menu/MusicListMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 65
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 66
    iget-object v3, p0, Lcom/google/android/music/menu/MusicListMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/menu/MusicListMenuItem;

    .line 67
    .local v2, tmp:Lcom/google/android/music/menu/MusicListMenuItem;
    if-eq v2, p1, :cond_0

    .line 68
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/music/menu/MusicListMenuItem;->setCheckedInternal(Z)V

    .line 65
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    .end local v0           #i:I
    .end local v1           #size:I
    .end local v2           #tmp:Lcom/google/android/music/menu/MusicListMenuItem;
    :cond_1
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 171
    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/16 v0, 0x52

    if-ne p2, v0, :cond_2

    .line 172
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 173
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicListMenu;->close()V

    :cond_1
    move v0, v1

    .line 177
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performItemAction(Lcom/google/android/music/menu/MusicMenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 182
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicMenuItem;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 183
    :cond_0
    const/4 v1, 0x0

    .line 198
    :goto_0
    return v1

    .line 186
    :cond_1
    const/4 v0, 0x0

    .line 187
    .local v0, invoked:Z
    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicMenuItem;->getSubMenu()Lcom/google/android/music/menu/MusicListMenu;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 188
    const/4 v0, 0x1

    .line 189
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicListMenu;->close()V

    .line 190
    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicMenuItem;->getSubMenu()Lcom/google/android/music/menu/MusicListMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/menu/MusicListMenu;->show()V

    :goto_1
    move v1, v0

    .line 198
    goto :goto_0

    .line 192
    :cond_2
    iget-object v1, p0, Lcom/google/android/music/menu/MusicListMenu;->mCallback:Lcom/google/android/music/menu/MusicMenu$Callback;

    if-eqz v1, :cond_3

    .line 193
    iget-object v1, p0, Lcom/google/android/music/menu/MusicListMenu;->mCallback:Lcom/google/android/music/menu/MusicMenu$Callback;

    invoke-interface {v1, p1}, Lcom/google/android/music/menu/MusicMenu$Callback;->onMusicMenuItemSelected(Lcom/google/android/music/menu/MusicMenuItem;)Z

    move-result v0

    .line 196
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicListMenu;->close()V

    goto :goto_1
.end method

.method public removeItem(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/google/android/music/menu/MusicListMenu;->findItemIndex(I)I

    move-result v0

    .line 114
    .local v0, index:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/music/menu/MusicListMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/google/android/music/menu/MusicListMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setHeader(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "header"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/music/menu/MusicListMenu;->mHeader:Ljava/lang/CharSequence;

    .line 85
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenu;->mMenuView:Lcom/google/android/music/menu/MusicListMenuView;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenu;->mMenuView:Lcom/google/android/music/menu/MusicListMenuView;

    iget-object v1, p0, Lcom/google/android/music/menu/MusicListMenu;->mHeader:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MusicListMenuView;->setHeader(Ljava/lang/CharSequence;)V

    .line 88
    :cond_0
    return-void
.end method

.method public setItem(Lcom/google/android/music/menu/MusicMenuItem;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/google/android/music/menu/MusicListMenu;->mItem:Lcom/google/android/music/menu/MusicMenuItem;

    .line 157
    return-void
.end method

.method public setRadioButtonsEnabled(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/google/android/music/menu/MusicListMenu;->mRadioButtonsEnabled:Z

    .line 40
    iget-object v3, p0, Lcom/google/android/music/menu/MusicListMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 41
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 42
    iget-object v3, p0, Lcom/google/android/music/menu/MusicListMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/menu/MusicListMenuItem;

    .line 43
    .local v1, item:Lcom/google/android/music/menu/MusicListMenuItem;
    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/music/menu/MusicListMenuItem;->getCheckboxEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 44
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "can\'t use radio buttons and checkboxes in the same menu"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 47
    :cond_0
    if-eqz p1, :cond_1

    .line 48
    sget-object v3, Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;->WIDGET_RADIO_BUTTON:Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

    invoke-virtual {v1, v3}, Lcom/google/android/music/menu/MusicListMenuItem;->setWidgetMode(Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;)V

    .line 41
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_1
    sget-object v3, Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;->WIDGET_NONE:Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

    invoke-virtual {v1, v3}, Lcom/google/android/music/menu/MusicListMenuItem;->setWidgetMode(Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;)V

    goto :goto_1

    .line 53
    .end local v1           #item:Lcom/google/android/music/menu/MusicListMenuItem;
    :cond_2
    return-void
.end method

.method public abstract show()V
.end method
