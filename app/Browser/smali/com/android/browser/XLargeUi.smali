.class public Lcom/android/browser/XLargeUi;
.super Lcom/android/browser/BaseUi;
.source "XLargeUi.java"

# interfaces
.implements Lcom/android/browser/ScrollWebView$ScrollListener;


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mHandler:Landroid/os/Handler;

.field private mHideTileBarAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mPieControl:Lcom/android/browser/PieControl;

.field private mSkipTitleBarAnimations:Z

.field private mTabBar:Lcom/android/browser/TabBar;

.field private mTitleBar:Lcom/android/browser/TitleBarXLarge;

.field private mTitleBarAnimator:Landroid/animation/Animator;

.field private mUseQuickControls:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/browser/UiController;)V
    .locals 3
    .parameter "browser"
    .parameter "controller"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BaseUi;-><init>(Landroid/app/Activity;Lcom/android/browser/UiController;)V

    .line 389
    new-instance v0, Lcom/android/browser/XLargeUi$2;

    invoke-direct {v0, p0}, Lcom/android/browser/XLargeUi$2;-><init>(Lcom/android/browser/XLargeUi;)V

    iput-object v0, p0, Lcom/android/browser/XLargeUi;->mHideTileBarAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/browser/XLargeUi;->mHandler:Landroid/os/Handler;

    .line 67
    new-instance v0, Lcom/android/browser/TitleBarXLarge;

    iget-object v1, p0, Lcom/android/browser/XLargeUi;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/browser/XLargeUi;->mUiController:Lcom/android/browser/UiController;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/browser/TitleBarXLarge;-><init>(Landroid/app/Activity;Lcom/android/browser/UiController;Lcom/android/browser/XLargeUi;)V

    iput-object v0, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBarXLarge;

    .line 68
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBarXLarge;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBarXLarge;->setProgress(I)V

    .line 69
    new-instance v0, Lcom/android/browser/TabBar;

    iget-object v1, p0, Lcom/android/browser/XLargeUi;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/browser/XLargeUi;->mUiController:Lcom/android/browser/UiController;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/browser/TabBar;-><init>(Landroid/app/Activity;Lcom/android/browser/UiController;Lcom/android/browser/XLargeUi;)V

    iput-object v0, p0, Lcom/android/browser/XLargeUi;->mTabBar:Lcom/android/browser/TabBar;

    .line 70
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/XLargeUi;->mActionBar:Landroid/app/ActionBar;

    .line 71
    invoke-direct {p0}, Lcom/android/browser/XLargeUi;->setupActionBar()V

    .line 72
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->useQuickControls()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/browser/XLargeUi;->setUseQuickControls(Z)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/XLargeUi;)Landroid/app/ActionBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/XLargeUi;)Lcom/android/browser/TitleBarXLarge;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBarXLarge;

    return-object v0
.end method

.method private cancelTitleBarAnimation(Z)V
    .locals 2
    .parameter "reset"

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mTitleBarAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mTitleBarAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 377
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/XLargeUi;->mTitleBarAnimator:Landroid/animation/Animator;

    .line 379
    :cond_0
    if-eqz p1, :cond_1

    .line 380
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBarXLarge;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBarXLarge;->setTranslationY(F)V

    .line 382
    :cond_1
    return-void
.end method

.method private checkTabCount()V
    .locals 2

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/browser/XLargeUi;->mUseQuickControls:Z

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/browser/XLargeUi$1;

    invoke-direct {v1, p0}, Lcom/android/browser/XLargeUi$1;-><init>(Lcom/android/browser/XLargeUi;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 132
    :cond_0
    return-void
.end method

.method private getVisibleTitleHeight()I
    .locals 2

    .prologue
    .line 385
    iget-object v1, p0, Lcom/android/browser/XLargeUi;->mActiveTab:Lcom/android/browser/Tab;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/XLargeUi;->mActiveTab:Lcom/android/browser/Tab;

    invoke-virtual {v1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    move-object v0, v1

    .line 386
    .local v0, webview:Landroid/webkit/WebView;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v1

    :goto_1
    return v1

    .line 385
    .end local v0           #webview:Landroid/webkit/WebView;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0

    .line 386
    .restart local v0       #webview:Landroid/webkit/WebView;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isTypingKey(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "evt"

    .prologue
    .line 547
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setUseQuickControls(Z)V
    .locals 5
    .parameter "useQuickControls"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/browser/XLargeUi;->mUseQuickControls:Z

    .line 101
    iget-object v2, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBarXLarge;

    iget-boolean v3, p0, Lcom/android/browser/XLargeUi;->mUseQuickControls:Z

    invoke-virtual {v2, v3}, Lcom/android/browser/TitleBarXLarge;->setUseQuickControls(Z)V

    .line 102
    if-eqz p1, :cond_1

    .line 103
    invoke-direct {p0}, Lcom/android/browser/XLargeUi;->checkTabCount()V

    .line 104
    new-instance v2, Lcom/android/browser/PieControl;

    iget-object v3, p0, Lcom/android/browser/XLargeUi;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/browser/XLargeUi;->mUiController:Lcom/android/browser/UiController;

    invoke-direct {v2, v3, v4, p0}, Lcom/android/browser/PieControl;-><init>(Landroid/app/Activity;Lcom/android/browser/UiController;Lcom/android/browser/XLargeUi;)V

    iput-object v2, p0, Lcom/android/browser/XLargeUi;->mPieControl:Lcom/android/browser/PieControl;

    .line 105
    iget-object v2, p0, Lcom/android/browser/XLargeUi;->mPieControl:Lcom/android/browser/PieControl;

    iget-object v3, p0, Lcom/android/browser/XLargeUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Lcom/android/browser/PieControl;->attachToContainer(Landroid/widget/FrameLayout;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/browser/XLargeUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 107
    .local v0, tab:Lcom/android/browser/Tab;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 108
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setEmbeddedTitleBar(Landroid/view/View;)V

    .line 121
    .end local v0           #tab:Lcom/android/browser/Tab;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/browser/XLargeUi;->mTabBar:Lcom/android/browser/TabBar;

    iget-boolean v3, p0, Lcom/android/browser/XLargeUi;->mUseQuickControls:Z

    invoke-virtual {v2, v3}, Lcom/android/browser/TabBar;->setUseQuickControls(Z)V

    .line 122
    return-void

    .line 111
    :cond_1
    iget-object v2, p0, Lcom/android/browser/XLargeUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->show()V

    .line 112
    iget-object v2, p0, Lcom/android/browser/XLargeUi;->mPieControl:Lcom/android/browser/PieControl;

    if-eqz v2, :cond_2

    .line 113
    iget-object v2, p0, Lcom/android/browser/XLargeUi;->mPieControl:Lcom/android/browser/PieControl;

    iget-object v3, p0, Lcom/android/browser/XLargeUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Lcom/android/browser/PieControl;->removeFromContainer(Landroid/widget/FrameLayout;)V

    .line 115
    :cond_2
    iget-object v2, p0, Lcom/android/browser/XLargeUi;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 116
    .local v1, web:Landroid/webkit/WebView;
    if-eqz v1, :cond_3

    .line 117
    iget-object v2, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBarXLarge;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setEmbeddedTitleBar(Landroid/view/View;)V

    .line 119
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/browser/XLargeUi;->setTitleGravity(I)V

    goto :goto_0
.end method

.method private setupActionBar()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 77
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 78
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/browser/XLargeUi;->mTabBar:Lcom/android/browser/TabBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 79
    return-void
.end method


# virtual methods
.method public addTab(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mTabBar:Lcom/android/browser/TabBar;

    invoke-virtual {v0, p1}, Lcom/android/browser/TabBar;->onNewTab(Lcom/android/browser/Tab;)V

    .line 220
    return-void
.end method

.method public captureTab(Lcom/android/browser/Tab;)V
    .locals 4
    .parameter "tab"

    .prologue
    .line 273
    iget-object v1, p0, Lcom/android/browser/XLargeUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/browser/XLargeUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-static {p1, v1, v2}, Lcom/android/browser/Controller;->createScreenshot(Lcom/android/browser/Tab;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 278
    .local v0, sshot:Landroid/graphics/Bitmap;
    invoke-virtual {p1, v0}, Lcom/android/browser/Tab;->setScreenshot(Landroid/graphics/Bitmap;)V

    .line 279
    return-void
.end method

.method public createWebView(Z)Landroid/webkit/WebView;
    .locals 6
    .parameter "privateBrowsing"

    .prologue
    const/4 v5, 0x1

    .line 153
    new-instance v1, Lcom/android/browser/ScrollWebView;

    iget-object v2, p0, Lcom/android/browser/XLargeUi;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    const v4, 0x1010085

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/android/browser/ScrollWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 155
    .local v1, w:Lcom/android/browser/ScrollWebView;
    invoke-virtual {p0, v1}, Lcom/android/browser/XLargeUi;->initWebViewSettings(Landroid/webkit/WebView;)V

    .line 156
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/browser/ScrollWebView;->setVerticalScrollbarPosition(I)V

    .line 157
    invoke-virtual {v1, p0}, Lcom/android/browser/ScrollWebView;->setScrollListener(Lcom/android/browser/ScrollWebView$ScrollListener;)V

    .line 158
    iget-object v2, p0, Lcom/android/browser/XLargeUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.touchscreen.multitouch"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 160
    .local v0, supportsMultiTouch:Z
    invoke-virtual {v1}, Lcom/android/browser/ScrollWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    if-nez v0, :cond_0

    move v3, v5

    :goto_0
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 161
    invoke-virtual {v1, v5}, Lcom/android/browser/ScrollWebView;->setExpandedTileBounds(Z)V

    .line 162
    return-object v1

    .line 160
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public dispatchKey(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "code"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 524
    iget-object v2, p0, Lcom/android/browser/XLargeUi;->mActiveTab:Lcom/android/browser/Tab;

    if-eqz v2, :cond_1

    .line 525
    iget-object v2, p0, Lcom/android/browser/XLargeUi;->mActiveTab:Lcom/android/browser/Tab;

    invoke-virtual {v2}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 526
    .local v1, web:Landroid/webkit/WebView;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 527
    sparse-switch p1, :sswitch_data_0

    .line 536
    :cond_0
    const/16 v2, 0x1000

    invoke-virtual {p2, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    .line 537
    .local v0, ctrl:Z
    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/android/browser/XLargeUi;->isTypingKey(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBarXLarge;

    invoke-virtual {v2}, Lcom/android/browser/TitleBarXLarge;->isEditingUrl()Z

    move-result v2

    if-nez v2, :cond_1

    .line 538
    invoke-virtual {p0, v4}, Lcom/android/browser/XLargeUi;->editUrl(Z)V

    .line 539
    iget-object v2, p0, Lcom/android/browser/XLargeUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p2}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 543
    .end local v0           #ctrl:Z
    .end local v1           #web:Landroid/webkit/WebView;
    :goto_0
    return v2

    .line 531
    .restart local v1       #web:Landroid/webkit/WebView;
    :sswitch_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBarXLarge;

    invoke-virtual {v2}, Lcom/android/browser/TitleBarXLarge;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 532
    invoke-virtual {p0, v3}, Lcom/android/browser/XLargeUi;->editUrl(Z)V

    move v2, v4

    .line 533
    goto :goto_0

    .end local v1           #web:Landroid/webkit/WebView;
    :cond_1
    move v2, v3

    .line 543
    goto :goto_0

    .line 527
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x15 -> :sswitch_0
        0x3d -> :sswitch_0
    .end sparse-switch
.end method

.method public editUrl(Z)V
    .locals 1
    .parameter "clearInput"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->isInCustomActionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->endActionMode()V

    .line 312
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/XLargeUi;->showTitleBar()V

    .line 313
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBarXLarge;

    invoke-virtual {v0, p1}, Lcom/android/browser/TitleBarXLarge;->startEditingUrl(Z)V

    .line 314
    return-void
.end method

.method getContentWidth()I
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mContentView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    .line 304
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTitleBar()Lcom/android/browser/TitleBarBase;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBarXLarge;

    return-object v0
.end method

.method public hideComboView()V
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/browser/XLargeUi;->isComboViewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-super {p0}, Lcom/android/browser/BaseUi;->hideComboView()V

    .line 94
    invoke-direct {p0}, Lcom/android/browser/XLargeUi;->setupActionBar()V

    .line 95
    invoke-direct {p0}, Lcom/android/browser/XLargeUi;->checkTabCount()V

    .line 97
    :cond_0
    return-void
.end method

.method protected hideTitleBar()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 353
    invoke-virtual {p0}, Lcom/android/browser/XLargeUi;->isTitleBarShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/android/browser/XLargeUi;->mTabBar:Lcom/android/browser/TabBar;

    invoke-virtual {v1}, Lcom/android/browser/TabBar;->onHideTitleBar()V

    .line 355
    iget-boolean v1, p0, Lcom/android/browser/XLargeUi;->mUseQuickControls:Z

    if-eqz v1, :cond_1

    .line 356
    iget-object v1, p0, Lcom/android/browser/XLargeUi;->mContentView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBarXLarge;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 370
    :goto_0
    invoke-super {p0}, Lcom/android/browser/BaseUi;->hideTitleBar()V

    .line 372
    :cond_0
    return-void

    .line 358
    :cond_1
    iget-boolean v1, p0, Lcom/android/browser/XLargeUi;->mSkipTitleBarAnimations:Z

    if-nez v1, :cond_2

    .line 359
    invoke-direct {p0, v5}, Lcom/android/browser/XLargeUi;->cancelTitleBarAnimation(Z)V

    .line 360
    invoke-direct {p0}, Lcom/android/browser/XLargeUi;->getVisibleTitleHeight()I

    move-result v0

    .line 361
    .local v0, visibleHeight:I
    iget-object v1, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBarXLarge;

    const-string v2, "translationY"

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget-object v4, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBarXLarge;

    invoke-virtual {v4}, Lcom/android/browser/TitleBarXLarge;->getTranslationY()F

    move-result v4

    aput v4, v3, v5

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBarXLarge;

    invoke-virtual {v5}, Lcom/android/browser/TitleBarXLarge;->getEmbeddedHeight()I

    move-result v5

    neg-int v5, v5

    add-int/2addr v5, v0

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/XLargeUi;->mTitleBarAnimator:Landroid/animation/Animator;

    .line 364
    iget-object v1, p0, Lcom/android/browser/XLargeUi;->mTitleBarAnimator:Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/browser/XLargeUi;->mHideTileBarAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 365
    iget-object v1, p0, Lcom/android/browser/XLargeUi;->mTitleBarAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 367
    .end local v0           #visibleHeight:I
    :cond_2
    invoke-virtual {p0, v5}, Lcom/android/browser/XLargeUi;->setTitleGravity(I)V

    goto :goto_0
.end method

.method public isEditingUrl()Z
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBarXLarge;

    invoke-virtual {v0}, Lcom/android/browser/TitleBarXLarge;->isEditingUrl()Z

    move-result v0

    return v0
.end method

.method public needsRestoreAllTabs()Z
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x1

    return v0
.end method

.method public onActionModeFinished(Z)V
    .locals 2
    .parameter "inLoad"

    .prologue
    .line 448
    invoke-direct {p0}, Lcom/android/browser/XLargeUi;->checkTabCount()V

    .line 449
    if-eqz p1, :cond_1

    .line 452
    iget-boolean v0, p0, Lcom/android/browser/XLargeUi;->mUseQuickControls:Z

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBarXLarge;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBarXLarge;->setShowProgressOnly(Z)V

    .line 455
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/XLargeUi;->showTitleBar()V

    .line 457
    :cond_1
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBarXLarge;

    invoke-virtual {v0}, Lcom/android/browser/TitleBarXLarge;->isEditingUrl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 442
    invoke-virtual {p0}, Lcom/android/browser/XLargeUi;->hideTitleBar()V

    .line 444
    :cond_0
    return-void
.end method

.method protected onAddTabCompleted(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter "tab"

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/android/browser/XLargeUi;->checkTabCount()V

    .line 224
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/browser/XLargeUi;->hideTitleBar()V

    .line 145
    return-void
.end method

.method public onHideCustomView()V
    .locals 1

    .prologue
    .line 514
    invoke-super {p0}, Lcom/android/browser/BaseUi;->onHideCustomView()V

    .line 515
    iget-boolean v0, p0, Lcom/android/browser/XLargeUi;->mUseQuickControls:Z

    if-eqz v0, :cond_0

    .line 516
    invoke-direct {p0}, Lcom/android/browser/XLargeUi;->checkTabCount()V

    .line 520
    :goto_0
    return-void

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 561
    iget-boolean v0, p0, Lcom/android/browser/XLargeUi;->mUseQuickControls:Z

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mPieControl:Lcom/android/browser/PieControl;

    invoke-virtual {v0, p1}, Lcom/android/browser/PieControl;->onMenuOpened(Landroid/view/Menu;)V

    .line 563
    const/4 v0, 0x0

    .line 565
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onProgressChanged(Lcom/android/browser/Tab;)V
    .locals 3
    .parameter "tab"

    .prologue
    .line 189
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getLoadProgress()I

    move-result v0

    .line 190
    .local v0, progress:I
    iget-object v1, p0, Lcom/android/browser/XLargeUi;->mTabBar:Lcom/android/browser/TabBar;

    invoke-virtual {v1, p1, v0}, Lcom/android/browser/TabBar;->onProgress(Lcom/android/browser/Tab;I)V

    .line 191
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBarXLarge;

    invoke-virtual {v1, v0}, Lcom/android/browser/TitleBarXLarge;->setProgress(I)V

    .line 193
    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 194
    iget-object v1, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBarXLarge;

    invoke-virtual {v1}, Lcom/android/browser/TitleBarXLarge;->isEditingUrl()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBarXLarge;

    invoke-virtual {v1}, Lcom/android/browser/TitleBarXLarge;->inAutoLogin()Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/android/browser/XLargeUi;->hideTitleBar()V

    .line 196
    iget-boolean v1, p0, Lcom/android/browser/XLargeUi;->mUseQuickControls:Z

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBarXLarge;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/browser/TitleBarXLarge;->setShowProgressOnly(Z)V

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/XLargeUi;->isTitleBarShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    iget-boolean v1, p0, Lcom/android/browser/XLargeUi;->mUseQuickControls:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBarXLarge;

    invoke-virtual {v1}, Lcom/android/browser/TitleBarXLarge;->isEditingUrl()Z

    move-result v1

    if-nez v1, :cond_2

    .line 203
    iget-object v1, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBarXLarge;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/browser/TitleBarXLarge;->setShowProgressOnly(Z)V

    .line 204
    const/16 v1, 0x30

    invoke-virtual {p0, v1}, Lcom/android/browser/XLargeUi;->setTitleGravity(I)V

    .line 206
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/XLargeUi;->showTitleBar()V

    goto :goto_0
.end method

.method protected onRemoveTabCompleted(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter "tab"

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/android/browser/XLargeUi;->checkTabCount()V

    .line 298
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Lcom/android/browser/BaseUi;->onResume()V

    .line 137
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->useInstant()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBarXLarge;

    invoke-virtual {v0}, Lcom/android/browser/TitleBarXLarge;->clearCompletions()V

    .line 140
    :cond_0
    return-void
.end method

.method public onScroll(IZ)V
    .locals 1
    .parameter "visibleTitleHeight"
    .parameter "userInitiated"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mTabBar:Lcom/android/browser/TabBar;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/TabBar;->onScroll(IZ)V

    .line 176
    return-void
.end method

.method protected refreshWebView()V
    .locals 2

    .prologue
    .line 470
    invoke-virtual {p0}, Lcom/android/browser/XLargeUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 471
    .local v0, tab:Lcom/android/browser/Tab;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 472
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->invalidate()V

    .line 474
    :cond_0
    return-void
.end method

.method public registerDropdownChangeListener(Lcom/android/browser/UI$DropdownChangeListener;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBarXLarge;

    invoke-virtual {v0, p1}, Lcom/android/browser/TitleBarXLarge;->registerDropdownChangeListener(Lcom/android/browser/UI$DropdownChangeListener;)V

    .line 557
    return-void
.end method

.method public removeTab(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    const/4 v0, 0x1

    .line 289
    invoke-direct {p0, v0}, Lcom/android/browser/XLargeUi;->cancelTitleBarAnimation(Z)V

    .line 290
    iput-boolean v0, p0, Lcom/android/browser/XLargeUi;->mSkipTitleBarAnimations:Z

    .line 291
    invoke-super {p0, p1}, Lcom/android/browser/BaseUi;->removeTab(Lcom/android/browser/Tab;)V

    .line 292
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mTabBar:Lcom/android/browser/TabBar;

    invoke-virtual {v0, p1}, Lcom/android/browser/TabBar;->onRemoveTab(Lcom/android/browser/Tab;)V

    .line 293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/XLargeUi;->mSkipTitleBarAnimations:Z

    .line 294
    return-void
.end method

.method public revertVoiceTitleBar(Lcom/android/browser/Tab;)V
    .locals 4
    .parameter "tab"

    .prologue
    .line 501
    iget-object v1, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBarXLarge;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/browser/TitleBarXLarge;->setInVoiceMode(ZLjava/util/List;)V

    .line 502
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 503
    .local v0, url:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBarXLarge;

    invoke-virtual {v1, v0}, Lcom/android/browser/TitleBarXLarge;->setDisplayTitle(Ljava/lang/String;)V

    .line 504
    return-void
.end method

.method public setActiveTab(Lcom/android/browser/Tab;)V
    .locals 2
    .parameter "tab"

    .prologue
    const/4 v1, 0x1

    .line 228
    invoke-direct {p0, v1}, Lcom/android/browser/XLargeUi;->cancelTitleBarAnimation(Z)V

    .line 229
    iput-boolean v1, p0, Lcom/android/browser/XLargeUi;->mSkipTitleBarAnimations:Z

    .line 230
    invoke-virtual {p0}, Lcom/android/browser/XLargeUi;->stopEditingUrl()V

    .line 231
    iget-boolean v0, p0, Lcom/android/browser/XLargeUi;->mUseQuickControls:Z

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mActiveTab:Lcom/android/browser/Tab;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mActiveTab:Lcom/android/browser/Tab;

    invoke-virtual {p0, v0}, Lcom/android/browser/XLargeUi;->captureTab(Lcom/android/browser/Tab;)V

    .line 236
    :cond_0
    invoke-super {p0, p1, v1}, Lcom/android/browser/BaseUi;->setActiveTab(Lcom/android/browser/Tab;Z)V

    .line 237
    invoke-virtual {p0, p1, v1}, Lcom/android/browser/XLargeUi;->setActiveTab(Lcom/android/browser/Tab;Z)V

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/XLargeUi;->mSkipTitleBarAnimations:Z

    .line 239
    return-void
.end method

.method setActiveTab(Lcom/android/browser/Tab;Z)V
    .locals 3
    .parameter "tab"
    .parameter "needsAttaching"

    .prologue
    .line 243
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    check-cast v0, Lcom/android/browser/ScrollWebView;

    .line 246
    .local v0, view:Lcom/android/browser/ScrollWebView;
    if-nez v0, :cond_0

    .line 247
    const-string v1, "XLargeUi"

    const-string v2, "active tab with no webview detected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-boolean v1, p0, Lcom/android/browser/XLargeUi;->mUseQuickControls:Z

    if-eqz v1, :cond_1

    .line 252
    iget-object v1, p0, Lcom/android/browser/XLargeUi;->mPieControl:Lcom/android/browser/PieControl;

    iget-object v2, p0, Lcom/android/browser/XLargeUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lcom/android/browser/PieControl;->forceToTop(Landroid/widget/FrameLayout;)V

    .line 253
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/ScrollWebView;->setScrollListener(Lcom/android/browser/ScrollWebView$ScrollListener;)V

    .line 254
    iget-object v1, p0, Lcom/android/browser/XLargeUi;->mTabBar:Lcom/android/browser/TabBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/browser/TabBar;->showTitleBarIndicator(Z)V

    .line 262
    :goto_1
    iget-object v1, p0, Lcom/android/browser/XLargeUi;->mTabBar:Lcom/android/browser/TabBar;

    invoke-virtual {v1, p1}, Lcom/android/browser/TabBar;->onSetActiveTab(Lcom/android/browser/Tab;)V

    .line 263
    invoke-virtual {p1}, Lcom/android/browser/Tab;->isInVoiceSearchMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 264
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getVoiceDisplayTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/browser/XLargeUi;->showVoiceTitleBar(Ljava/lang/String;)V

    .line 268
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/browser/XLargeUi;->updateLockIconToLatest(Lcom/android/browser/Tab;)V

    .line 269
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocus()Z

    goto :goto_0

    .line 257
    :cond_1
    iget-object v1, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBarXLarge;

    invoke-virtual {v1}, Lcom/android/browser/TitleBarXLarge;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_2

    .line 258
    iget-object v1, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBarXLarge;

    invoke-virtual {v0, v1}, Lcom/android/browser/ScrollWebView;->setEmbeddedTitleBar(Landroid/view/View;)V

    .line 260
    :cond_2
    invoke-virtual {v0, p0}, Lcom/android/browser/ScrollWebView;->setScrollListener(Lcom/android/browser/ScrollWebView$ScrollListener;)V

    goto :goto_1

    .line 266
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/browser/XLargeUi;->revertVoiceTitleBar(Lcom/android/browser/Tab;)V

    goto :goto_2
.end method

.method public setFavicon(Lcom/android/browser/Tab;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 485
    invoke-super {p0, p1}, Lcom/android/browser/BaseUi;->setFavicon(Lcom/android/browser/Tab;)V

    .line 486
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mTabBar:Lcom/android/browser/TabBar;

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/browser/TabBar;->onFavicon(Lcom/android/browser/Tab;Landroid/graphics/Bitmap;)V

    .line 487
    return-void
.end method

.method protected setTitleGravity(I)V
    .locals 2
    .parameter "gravity"

    .prologue
    .line 426
    iget-boolean v1, p0, Lcom/android/browser/XLargeUi;->mUseQuickControls:Z

    if-eqz v1, :cond_0

    .line 427
    iget-object v1, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBarXLarge;

    invoke-virtual {v1}, Lcom/android/browser/TitleBarXLarge;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 429
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 430
    iget-object v1, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBarXLarge;

    invoke-virtual {v1, v0}, Lcom/android/browser/TitleBarXLarge;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    .end local v0           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    return-void

    .line 432
    :cond_0
    invoke-super {p0, p1}, Lcom/android/browser/BaseUi;->setTitleGravity(I)V

    goto :goto_0
.end method

.method public setUrlTitle(Lcom/android/browser/Tab;)V
    .locals 3
    .parameter "tab"

    .prologue
    .line 478
    invoke-super {p0, p1}, Lcom/android/browser/BaseUi;->setUrlTitle(Lcom/android/browser/Tab;)V

    .line 479
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mTabBar:Lcom/android/browser/TabBar;

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/browser/TabBar;->onUrlAndTitle(Lcom/android/browser/Tab;Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    return-void
.end method

.method public showComboView(ZLandroid/os/Bundle;)V
    .locals 1
    .parameter "startWithHistory"
    .parameter "extras"

    .prologue
    .line 83
    invoke-super {p0, p1, p2}, Lcom/android/browser/BaseUi;->showComboView(ZLandroid/os/Bundle;)V

    .line 84
    iget-boolean v0, p0, Lcom/android/browser/XLargeUi;->mUseQuickControls:Z

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 87
    :cond_0
    return-void
.end method

.method public showCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1
    .parameter "view"
    .parameter "callback"

    .prologue
    .line 508
    invoke-super {p0, p1, p2}, Lcom/android/browser/BaseUi;->showCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 509
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 510
    return-void
.end method

.method protected showTitleBar()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 328
    invoke-virtual {p0}, Lcom/android/browser/XLargeUi;->canShowTitleBar()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 329
    iget-boolean v2, p0, Lcom/android/browser/XLargeUi;->mUseQuickControls:Z

    if-eqz v2, :cond_1

    .line 330
    iget-object v2, p0, Lcom/android/browser/XLargeUi;->mContentView:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBarXLarge;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 346
    :goto_0
    invoke-super {p0}, Lcom/android/browser/BaseUi;->showTitleBar()V

    .line 347
    iget-object v2, p0, Lcom/android/browser/XLargeUi;->mTabBar:Lcom/android/browser/TabBar;

    invoke-virtual {v2}, Lcom/android/browser/TabBar;->onShowTitleBar()V

    .line 349
    :cond_0
    return-void

    .line 332
    :cond_1
    iget-boolean v2, p0, Lcom/android/browser/XLargeUi;->mSkipTitleBarAnimations:Z

    if-nez v2, :cond_3

    .line 333
    invoke-direct {p0, v5}, Lcom/android/browser/XLargeUi;->cancelTitleBarAnimation(Z)V

    .line 334
    invoke-direct {p0}, Lcom/android/browser/XLargeUi;->getVisibleTitleHeight()I

    move-result v1

    .line 335
    .local v1, visibleHeight:I
    iget-object v2, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBarXLarge;

    invoke-virtual {v2}, Lcom/android/browser/TitleBarXLarge;->getEmbeddedHeight()I

    move-result v2

    neg-int v2, v2

    add-int/2addr v2, v1

    int-to-float v0, v2

    .line 336
    .local v0, startPos:F
    iget-object v2, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBarXLarge;

    invoke-virtual {v2}, Lcom/android/browser/TitleBarXLarge;->getTranslationY()F

    move-result v2

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_2

    .line 337
    iget-object v2, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBarXLarge;

    invoke-virtual {v2}, Lcom/android/browser/TitleBarXLarge;->getTranslationY()F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 339
    :cond_2
    iget-object v2, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBarXLarge;

    const-string v3, "translationY"

    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v0, v4, v5

    const/4 v5, 0x1

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/XLargeUi;->mTitleBarAnimator:Landroid/animation/Animator;

    .line 342
    iget-object v2, p0, Lcom/android/browser/XLargeUi;->mTitleBarAnimator:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 344
    .end local v0           #startPos:F
    .end local v1           #visibleHeight:I
    :cond_3
    const/16 v2, 0x30

    invoke-virtual {p0, v2}, Lcom/android/browser/XLargeUi;->setTitleGravity(I)V

    goto :goto_0
.end method

.method showTitleBarAndEdit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 317
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBarXLarge;

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBarXLarge;->setShowProgressOnly(Z)V

    .line 318
    invoke-virtual {p0}, Lcom/android/browser/XLargeUi;->showTitleBar()V

    .line 319
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBarXLarge;

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBarXLarge;->startEditingUrl(Z)V

    .line 320
    return-void
.end method

.method public showVoiceTitleBar(Ljava/lang/String;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 491
    const/4 v0, 0x0

    .line 492
    .local v0, vsresults:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/browser/XLargeUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 493
    invoke-virtual {p0}, Lcom/android/browser/XLargeUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/Tab;->getVoiceSearchResults()Ljava/util/ArrayList;

    move-result-object v0

    .line 495
    :cond_0
    iget-object v1, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBarXLarge;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/browser/TitleBarXLarge;->setInVoiceMode(ZLjava/util/List;)V

    .line 496
    iget-object v1, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBarXLarge;

    invoke-virtual {v1, p1}, Lcom/android/browser/TitleBarXLarge;->setDisplayTitle(Ljava/lang/String;)V

    .line 497
    return-void
.end method

.method stopEditingUrl()V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBarXLarge;

    invoke-virtual {v0}, Lcom/android/browser/TitleBarXLarge;->stopEditingUrl()V

    .line 324
    return-void
.end method

.method stopWebViewScrolling()V
    .locals 2

    .prologue
    .line 179
    iget-object v1, p0, Lcom/android/browser/XLargeUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v1}, Lcom/android/browser/UiController;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    check-cast v0, Lcom/android/browser/ScrollWebView;

    .line 180
    .local v0, web:Lcom/android/browser/ScrollWebView;
    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Lcom/android/browser/ScrollWebView;->stopScroll()V

    .line 183
    :cond_0
    return-void
.end method

.method protected updateAutoLogin(Lcom/android/browser/Tab;Z)V
    .locals 1
    .parameter "tab"
    .parameter "animate"

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBarXLarge;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/TitleBarXLarge;->updateAutoLogin(Lcom/android/browser/Tab;Z)V

    .line 467
    return-void
.end method

.method protected updateNavigationState(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mTitleBar:Lcom/android/browser/TitleBarXLarge;

    invoke-virtual {v0, p1}, Lcom/android/browser/TitleBarXLarge;->updateNavigationState(Lcom/android/browser/Tab;)V

    .line 462
    return-void
.end method

.method public updateTabs(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/browser/Tab;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 283
    .local p1, tabs:Ljava/util/List;,"Ljava/util/List<Lcom/android/browser/Tab;>;"
    iget-object v0, p0, Lcom/android/browser/XLargeUi;->mTabBar:Lcom/android/browser/TabBar;

    invoke-virtual {v0, p1}, Lcom/android/browser/TabBar;->updateTabs(Ljava/util/List;)V

    .line 284
    invoke-direct {p0}, Lcom/android/browser/XLargeUi;->checkTabCount()V

    .line 285
    return-void
.end method
