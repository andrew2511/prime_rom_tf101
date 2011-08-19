.class public Lcom/google/android/music/menu/MusicListMenuItem;
.super Lcom/google/android/music/menu/MusicMenuItem;
.source "MusicListMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;
    }
.end annotation


# instance fields
.field private mChecked:Z

.field private mCustomWidgetImages:Z

.field private mItemView:Lcom/google/android/music/menu/MusicListMenuItemView;

.field private mWidgetMode:Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

.field private mWidgetOffDrawable:I

.field private mWidgetOnDrawable:I


# direct methods
.method public constructor <init>(Lcom/google/android/music/menu/MusicMenu;IILjava/lang/String;)V
    .locals 2
    .parameter "menu"
    .parameter "itemId"
    .parameter "order"
    .parameter "title"

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/music/menu/MusicMenuItem;-><init>(Lcom/google/android/music/menu/MusicMenu;IILjava/lang/String;)V

    .line 30
    sget-object v0, Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;->WIDGET_NONE:Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

    iput-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mWidgetMode:Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

    .line 31
    iput-boolean v1, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mChecked:Z

    .line 32
    iput-boolean v1, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mCustomWidgetImages:Z

    .line 33
    return-void
.end method

.method private refreshWidget()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mItemView:Lcom/google/android/music/menu/MusicListMenuItemView;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mWidgetMode:Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

    sget-object v1, Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;->WIDGET_NONE:Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

    if-ne v0, v1, :cond_1

    .line 88
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mItemView:Lcom/google/android/music/menu/MusicListMenuItemView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MusicListMenuItemView;->setWidgetVisible(Z)V

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mItemView:Lcom/google/android/music/menu/MusicListMenuItemView;

    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicListMenuItem;->getWidgetImage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MusicListMenuItemView;->setWidgetImage(I)V

    .line 91
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mItemView:Lcom/google/android/music/menu/MusicListMenuItemView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MusicListMenuItemView;->setWidgetVisible(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getCheckboxEnabled()Z
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mWidgetMode:Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

    sget-object v1, Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;->WIDGET_CHECKBOX:Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChecked()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mChecked:Z

    return v0
.end method

.method public getItemView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "parent"

    .prologue
    .line 125
    iget-object v1, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mItemView:Lcom/google/android/music/menu/MusicListMenuItemView;

    if-nez v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mMusicMenu:Lcom/google/android/music/menu/MusicMenu;

    invoke-virtual {v1}, Lcom/google/android/music/menu/MusicMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 127
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f04001c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/menu/MusicListMenuItemView;

    iput-object v1, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mItemView:Lcom/google/android/music/menu/MusicListMenuItemView;

    .line 129
    iget-object v1, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mItemView:Lcom/google/android/music/menu/MusicListMenuItemView;

    invoke-virtual {v1, p0}, Lcom/google/android/music/menu/MusicListMenuItemView;->initialize(Lcom/google/android/music/menu/MusicListMenuItem;)V

    .line 130
    iget-object v1, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mItemView:Lcom/google/android/music/menu/MusicListMenuItemView;

    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicListMenuItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/menu/MusicListMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v1, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mItemView:Lcom/google/android/music/menu/MusicListMenuItemView;

    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicListMenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/menu/MusicListMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 132
    iget-object v1, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mItemView:Lcom/google/android/music/menu/MusicListMenuItemView;

    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicListMenuItem;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/menu/MusicListMenuItemView;->setEnabled(Z)V

    .line 133
    invoke-direct {p0}, Lcom/google/android/music/menu/MusicListMenuItem;->refreshWidget()V

    .line 135
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mItemView:Lcom/google/android/music/menu/MusicListMenuItemView;

    return-object v1
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mItemView:Lcom/google/android/music/menu/MusicListMenuItemView;

    return-object v0
.end method

.method public getWidgetImage()I
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicListMenuItem;->getChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mWidgetOnDrawable:I

    .line 104
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mWidgetOffDrawable:I

    goto :goto_0
.end method

.method public getWidgetVisible()Z
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mWidgetMode:Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

    sget-object v1, Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;->WIDGET_NONE:Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInvoke()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 153
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicListMenuItem;->getCheckboxEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicListMenuItem;->getChecked()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/music/menu/MusicListMenuItem;->setChecked(Z)V

    .line 158
    :cond_0
    :goto_1
    return-void

    .line 154
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mMusicMenu:Lcom/google/android/music/menu/MusicMenu;

    invoke-virtual {v0}, Lcom/google/android/music/menu/MusicMenu;->getRadioButtonsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0, v1}, Lcom/google/android/music/menu/MusicListMenuItem;->setChecked(Z)V

    goto :goto_1
.end method

.method public setCheckboxEnabled(Z)V
    .locals 2
    .parameter "checkbox"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mMusicMenu:Lcom/google/android/music/menu/MusicMenu;

    invoke-virtual {v0}, Lcom/google/android/music/menu/MusicMenu;->getRadioButtonsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t use radio buttons and checkboxes in the same menu"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    sget-object v0, Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;->WIDGET_CHECKBOX:Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

    invoke-virtual {p0, v0}, Lcom/google/android/music/menu/MusicListMenuItem;->setWidgetMode(Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;)V

    .line 62
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/google/android/music/menu/MusicListMenuItem;->setCheckedInternal(Z)V

    .line 72
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mMusicMenu:Lcom/google/android/music/menu/MusicMenu;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/music/menu/MusicMenu;->onItemChecked(Lcom/google/android/music/menu/MusicMenuItem;Z)V

    .line 73
    return-void
.end method

.method protected setCheckedInternal(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mChecked:Z

    .line 77
    invoke-direct {p0}, Lcom/google/android/music/menu/MusicListMenuItem;->refreshWidget()V

    .line 78
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/google/android/music/menu/MusicMenuItem;->setEnabled(Z)V

    .line 146
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mItemView:Lcom/google/android/music/menu/MusicListMenuItemView;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mItemView:Lcom/google/android/music/menu/MusicListMenuItemView;

    invoke-virtual {v0, p1}, Lcom/google/android/music/menu/MusicListMenuItemView;->setEnabled(Z)V

    .line 149
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 111
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mItemView:Lcom/google/android/music/menu/MusicListMenuItemView;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mItemView:Lcom/google/android/music/menu/MusicListMenuItemView;

    iget-object v1, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MusicListMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 114
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/google/android/music/menu/MusicMenuItem;->setTitle(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mItemView:Lcom/google/android/music/menu/MusicListMenuItemView;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mItemView:Lcom/google/android/music/menu/MusicListMenuItemView;

    invoke-virtual {v0, p1}, Lcom/google/android/music/menu/MusicListMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 122
    :cond_0
    return-void
.end method

.method public setWidgetDrawables(II)V
    .locals 1
    .parameter "onDrawable"
    .parameter "offDrawable"

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mCustomWidgetImages:Z

    .line 37
    iput p1, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mWidgetOnDrawable:I

    .line 38
    iput p2, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mWidgetOffDrawable:I

    .line 39
    return-void
.end method

.method protected setWidgetMode(Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mWidgetMode:Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

    .line 43
    iget-boolean v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mCustomWidgetImages:Z

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mWidgetMode:Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

    sget-object v1, Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;->WIDGET_RADIO_BUTTON:Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

    if-ne v0, v1, :cond_1

    .line 45
    const v0, 0x7f020111

    iput v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mWidgetOnDrawable:I

    .line 46
    const v0, 0x7f02010f

    iput v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mWidgetOffDrawable:I

    .line 52
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/android/music/menu/MusicListMenuItem;->refreshWidget()V

    .line 53
    return-void

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mWidgetMode:Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

    sget-object v1, Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;->WIDGET_CHECKBOX:Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

    if-ne v0, v1, :cond_0

    .line 48
    const v0, 0x7f02010a

    iput v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mWidgetOnDrawable:I

    .line 49
    const v0, 0x7f020109

    iput v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mWidgetOffDrawable:I

    goto :goto_0
.end method
