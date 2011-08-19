.class public Lcom/android/browser/PhoneUi;
.super Lcom/android/browser/BaseUi;
.source "PhoneUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/PhoneUi$TouchProxy;
    }
.end annotation


# instance fields
.field private mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

.field mExtendedMenuOpen:Z

.field mOptionsMenuOpen:Z

.field private mTitleBar:Lcom/android/browser/TitleBar;

.field private mTitleOverlay:Lcom/android/browser/PhoneUi$TouchProxy;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/browser/UiController;)V
    .locals 3
    .parameter "browser"
    .parameter "controller"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BaseUi;-><init>(Landroid/app/Activity;Lcom/android/browser/UiController;)V

    .line 52
    new-instance v0, Lcom/android/browser/TitleBar;

    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/browser/PhoneUi;->mUiController:Lcom/android/browser/UiController;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/browser/TitleBar;-><init>(Landroid/app/Activity;Lcom/android/browser/UiController;Lcom/android/browser/PhoneUi;)V

    iput-object v0, p0, Lcom/android/browser/PhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    .line 55
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setProgress(I)V

    .line 56
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 57
    return-void
.end method


# virtual methods
.method public createWebView(Z)Landroid/webkit/WebView;
    .locals 4
    .parameter "privateBrowsing"

    .prologue
    .line 70
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    const v3, 0x1010085

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 72
    .local v0, w:Landroid/webkit/WebView;
    invoke-virtual {p0, v0}, Lcom/android/browser/PhoneUi;->initWebViewSettings(Landroid/webkit/WebView;)V

    .line 73
    return-object v0
.end method

.method public dispatchKey(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "code"
    .parameter "event"

    .prologue
    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public editUrl(Z)V
    .locals 2
    .parameter "clearInput"

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, url:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v1, v0}, Lcom/android/browser/UiController;->startSearch(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method protected getTitleBar()Lcom/android/browser/TitleBarBase;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    return-object v0
.end method

.method public hideComboView()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Lcom/android/browser/BaseUi;->hideComboView()V

    .line 62
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 63
    return-void
.end method

.method protected hideTitleBar()V
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->isTitleBarShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/browser/PhoneUi;->setTitleGravity(I)V

    .line 165
    invoke-super {p0}, Lcom/android/browser/BaseUi;->hideTitleBar()V

    .line 167
    :cond_0
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->hideTitleBar()V

    .line 255
    return-void
.end method

.method public onBackKey()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 109
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0, v1}, Lcom/android/browser/UiController;->removeActiveTabsPage(Z)V

    move v0, v1

    .line 114
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/browser/BaseUi;->onBackKey()Z

    move-result v0

    goto :goto_0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;Z)V
    .locals 0
    .parameter "menu"
    .parameter "inLoad"

    .prologue
    .line 245
    if-eqz p2, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->showTitleBar()V

    .line 248
    :cond_0
    return-void
.end method

.method public onContextMenuCreated(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->hideTitleBar()V

    .line 241
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->hideTitleBar()V

    .line 99
    return-void
.end method

.method public onExtendedMenuClosed(Z)V
    .locals 1
    .parameter "inLoad"

    .prologue
    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/PhoneUi;->mExtendedMenuOpen:Z

    .line 235
    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->showTitleBar()V

    .line 236
    return-void
.end method

.method public onExtendedMenuOpened()V
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/PhoneUi;->mExtendedMenuOpen:Z

    .line 220
    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->hideTitleBar()V

    .line 221
    return-void
.end method

.method public onOptionsMenuClosed(Z)V
    .locals 2
    .parameter "inLoad"

    .prologue
    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/PhoneUi;->mOptionsMenuOpen:Z

    .line 226
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mTitleOverlay:Lcom/android/browser/PhoneUi$TouchProxy;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 227
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->getTitleBar()Lcom/android/browser/TitleBarBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/TitleBarBase;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->hideTitleBar()V

    .line 230
    :cond_0
    return-void
.end method

.method public onOptionsMenuOpened()V
    .locals 3

    .prologue
    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/PhoneUi;->mOptionsMenuOpen:Z

    .line 206
    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->showTitleBar()V

    .line 207
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mTitleOverlay:Lcom/android/browser/PhoneUi$TouchProxy;

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Lcom/android/browser/PhoneUi$TouchProxy;

    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->getTitleBar()Lcom/android/browser/TitleBarBase;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/browser/PhoneUi$TouchProxy;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/browser/PhoneUi;->mTitleOverlay:Lcom/android/browser/PhoneUi$TouchProxy;

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mTitleOverlay:Lcom/android/browser/PhoneUi$TouchProxy;

    iget-object v2, p0, Lcom/android/browser/PhoneUi;->mTitleOverlay:Lcom/android/browser/PhoneUi$TouchProxy;

    invoke-virtual {v2}, Lcom/android/browser/PhoneUi$TouchProxy;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mUiController:Lcom/android/browser/UiController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/browser/UiController;->removeActiveTabsPage(Z)V

    .line 93
    :cond_0
    invoke-super {p0}, Lcom/android/browser/BaseUi;->onPause()V

    .line 94
    return-void
.end method

.method public onProgressChanged(Lcom/android/browser/Tab;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 119
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getLoadProgress()I

    move-result v0

    .line 121
    .local v0, progress:I
    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1, v0}, Lcom/android/browser/TitleBar;->setProgress(I)V

    .line 122
    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    .line 123
    iget-boolean v1, p0, Lcom/android/browser/PhoneUi;->mOptionsMenuOpen:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/browser/PhoneUi;->mExtendedMenuOpen:Z

    if-nez v1, :cond_1

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->hideTitleBar()V

    .line 132
    .end local v0           #progress:I
    :cond_1
    :goto_0
    return-void

    .line 127
    .restart local v0       #progress:I
    :cond_2
    iget-boolean v1, p0, Lcom/android/browser/PhoneUi;->mOptionsMenuOpen:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/browser/PhoneUi;->mExtendedMenuOpen:Z

    if-eqz v1, :cond_1

    .line 128
    :cond_3
    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->showTitleBar()V

    goto :goto_0
.end method

.method public removeActiveTabsPage()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mContentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 191
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setVisibility(I)V

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/PhoneUi;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    .line 193
    return-void
.end method

.method public setActiveTab(Lcom/android/browser/Tab;)V
    .locals 3
    .parameter "tab"

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/android/browser/BaseUi;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 137
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 140
    .local v0, view:Landroid/webkit/WebView;
    if-nez v0, :cond_0

    .line 141
    const-string v1, "PhoneUi"

    const-string v2, "active tab with no webview detected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->getTitleBar()Lcom/android/browser/TitleBarBase;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setEmbeddedTitleBar(Landroid/view/View;)V

    .line 145
    invoke-virtual {p1}, Lcom/android/browser/Tab;->isInVoiceSearchMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getVoiceDisplayTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/browser/PhoneUi;->showVoiceTitleBar(Ljava/lang/String;)V

    .line 150
    :goto_1
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocus()Z

    goto :goto_0

    .line 148
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/browser/PhoneUi;->revertVoiceTitleBar(Lcom/android/browser/Tab;)V

    goto :goto_1
.end method

.method public showActiveTabsPage()V
    .locals 3

    .prologue
    .line 178
    new-instance v0, Lcom/android/browser/ActiveTabsPage;

    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/browser/PhoneUi;->mUiController:Lcom/android/browser/UiController;

    invoke-direct {v0, v1, v2}, Lcom/android/browser/ActiveTabsPage;-><init>(Landroid/content/Context;Lcom/android/browser/UiController;)V

    iput-object v0, p0, Lcom/android/browser/PhoneUi;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    .line 179
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mTitleBar:Lcom/android/browser/TitleBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setVisibility(I)V

    .line 180
    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->hideTitleBar()V

    .line 181
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mContentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/browser/PhoneUi;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    sget-object v2, Lcom/android/browser/PhoneUi;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    invoke-virtual {v0}, Lcom/android/browser/ActiveTabsPage;->requestFocus()Z

    .line 183
    return-void
.end method

.method protected showTitleBar()V
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/android/browser/PhoneUi;->canShowTitleBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lcom/android/browser/PhoneUi;->setTitleGravity(I)V

    .line 157
    invoke-super {p0}, Lcom/android/browser/BaseUi;->showTitleBar()V

    .line 159
    :cond_0
    return-void
.end method

.method public showsWeb()Z
    .locals 1

    .prologue
    .line 197
    invoke-super {p0}, Lcom/android/browser/BaseUi;->showsWeb()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/PhoneUi;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
