.class public abstract Lcom/android/browser/BaseUi;
.super Ljava/lang/Object;
.source "BaseUi.java"

# interfaces
.implements Lcom/android/browser/UI;
.implements Lcom/android/browser/WebViewFactory;


# static fields
.field protected static final COVER_SCREEN_GRAVITY_CENTER:Landroid/widget/FrameLayout$LayoutParams;

.field protected static final COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;


# instance fields
.field protected mActiveTab:Lcom/android/browser/Tab;

.field mActivity:Landroid/app/Activity;

.field private mActivityPaused:Z

.field private mBrowserFrameLayout:Landroid/widget/FrameLayout;

.field private mComboView:Lcom/android/browser/CombinedBookmarkHistoryView;

.field protected mContentView:Landroid/widget/FrameLayout;

.field private mCustomView:Landroid/view/View;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mCustomViewContainer:Landroid/widget/FrameLayout;

.field private mDefaultVideoPoster:Landroid/graphics/Bitmap;

.field private mErrorConsoleContainer:Landroid/widget/LinearLayout;

.field private mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field private mMixLockIcon:Landroid/graphics/drawable/Drawable;

.field private mSecLockIcon:Landroid/graphics/drawable/Drawable;

.field private mStopToast:Landroid/widget/Toast;

.field mTabControl:Lcom/android/browser/TabControl;

.field private mTitleShowing:Z

.field mUiController:Lcom/android/browser/UiController;

.field private mVideoProgressView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 56
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/android/browser/BaseUi;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    .line 61
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    sput-object v0, Lcom/android/browser/BaseUi;->COVER_SCREEN_GRAVITY_CENTER:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/browser/UiController;)V
    .locals 5
    .parameter "browser"
    .parameter "controller"

    .prologue
    const/4 v4, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object v4, p0, Lcom/android/browser/BaseUi;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    .line 99
    iput-object p1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    .line 100
    iput-object p2, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    .line 101
    invoke-interface {p2}, Lcom/android/browser/UiController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mTabControl:Lcom/android/browser/TabControl;

    .line 102
    iget-object v2, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 103
    .local v1, res:Landroid/content/res/Resources;
    const-string v2, "input_method"

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 105
    const v2, 0x7f02005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mSecLockIcon:Landroid/graphics/drawable/Drawable;

    .line 106
    const v2, 0x7f02004b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mMixLockIcon:Landroid/graphics/drawable/Drawable;

    .line 108
    iget-object v2, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 110
    .local v0, frameLayout:Landroid/widget/FrameLayout;
    iget-object v2, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040010

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mBrowserFrameLayout:Landroid/widget/FrameLayout;

    .line 112
    iget-object v2, p0, Lcom/android/browser/BaseUi;->mBrowserFrameLayout:Landroid/widget/FrameLayout;

    const v3, 0x7f10003a

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    .line 114
    iget-object v2, p0, Lcom/android/browser/BaseUi;->mBrowserFrameLayout:Landroid/widget/FrameLayout;

    const v3, 0x7f100039

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    .line 116
    iget-object v2, p0, Lcom/android/browser/BaseUi;->mBrowserFrameLayout:Landroid/widget/FrameLayout;

    const v3, 0x7f100037

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/browser/BaseUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    .line 118
    iget-object v2, p0, Lcom/android/browser/BaseUi;->mBrowserFrameLayout:Landroid/widget/FrameLayout;

    sget-object v3, Lcom/android/browser/BaseUi;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/browser/BaseUi;->mTitleShowing:Z

    .line 120
    return-void
.end method

.method private cancelStopToast()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mStopToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mStopToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/BaseUi;->mStopToast:Landroid/widget/Toast;

    .line 144
    :cond_0
    return-void
.end method

.method private removeTabFromContentView(Lcom/android/browser/Tab;)V
    .locals 5
    .parameter "tab"

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->hideTitleBar()V

    .line 311
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    .line 312
    .local v2, mainView:Landroid/webkit/WebView;
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getViewContainer()Landroid/view/View;

    move-result-object v0

    .line 313
    .local v0, container:Landroid/view/View;
    if-nez v2, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setEmbeddedTitleBar(Landroid/view/View;)V

    .line 320
    const v4, 0x7f100074

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 322
    .local v3, wrapper:Landroid/widget/FrameLayout;
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 323
    iget-object v4, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 324
    iget-object v4, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v4}, Lcom/android/browser/UiController;->endActionMode()V

    .line 325
    iget-object v4, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v4, p1}, Lcom/android/browser/UiController;->removeSubWindow(Lcom/android/browser/Tab;)V

    .line 326
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/android/browser/Tab;->getErrorConsole(Z)Lcom/android/browser/ErrorConsoleView;

    move-result-object v1

    .line 327
    .local v1, errorConsole:Lcom/android/browser/ErrorConsoleView;
    if-eqz v1, :cond_0

    .line 328
    iget-object v4, p0, Lcom/android/browser/BaseUi;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private setStatusBarVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 685
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 686
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 687
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 688
    return-void

    .line 686
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private updateLockIconImage(Lcom/android/browser/Tab$LockIcon;)V
    .locals 2
    .parameter "lockIconType"

    .prologue
    .line 577
    const/4 v0, 0x0

    .line 578
    .local v0, d:Landroid/graphics/drawable/Drawable;
    sget-object v1, Lcom/android/browser/Tab$LockIcon;->LOCK_ICON_SECURE:Lcom/android/browser/Tab$LockIcon;

    if-ne p1, v1, :cond_1

    .line 579
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mSecLockIcon:Landroid/graphics/drawable/Drawable;

    .line 583
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->getTitleBar()Lcom/android/browser/TitleBarBase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/browser/TitleBarBase;->setLock(Landroid/graphics/drawable/Drawable;)V

    .line 584
    return-void

    .line 580
    :cond_1
    sget-object v1, Lcom/android/browser/Tab$LockIcon;->LOCK_ICON_MIXED:Lcom/android/browser/Tab$LockIcon;

    if-ne p1, v1, :cond_0

    .line 581
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mMixLockIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public addTab(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter "tab"

    .prologue
    .line 220
    return-void
.end method

.method public attachSubWindow(Landroid/view/View;)V
    .locals 2
    .parameter "container"

    .prologue
    .line 391
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    sget-object v1, Lcom/android/browser/BaseUi;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    return-void
.end method

.method public attachTab(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter "tab"

    .prologue
    .line 266
    invoke-virtual {p0, p1}, Lcom/android/browser/BaseUi;->attachTabToContentView(Lcom/android/browser/Tab;)V

    .line 267
    return-void
.end method

.method protected attachTabToContentView(Lcom/android/browser/Tab;)V
    .locals 7
    .parameter "tab"

    .prologue
    const v6, 0x7f10008d

    .line 270
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    if-nez v4, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getViewContainer()Landroid/view/View;

    move-result-object v0

    .line 274
    .local v0, container:Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 277
    .local v1, mainView:Landroid/webkit/WebView;
    const v4, 0x7f100074

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 279
    .local v3, wrapper:Landroid/widget/FrameLayout;
    invoke-virtual {v1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 280
    .local v2, parent:Landroid/view/ViewGroup;
    if-eq v2, v3, :cond_4

    .line 281
    if-eqz v2, :cond_2

    .line 282
    const-string v4, "BaseUi"

    const-string v5, "mMainView already has a parent in attachTabToContentView!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 286
    :cond_2
    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 291
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2           #parent:Landroid/view/ViewGroup;
    check-cast v2, Landroid/view/ViewGroup;

    .line 292
    .restart local v2       #parent:Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    if-eq v2, v4, :cond_5

    .line 293
    if-eqz v2, :cond_3

    .line 294
    const-string v4, "BaseUi"

    const-string v5, "mContainer already has a parent in attachTabToContentView!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 298
    :cond_3
    iget-object v4, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    sget-object v5, Lcom/android/browser/BaseUi;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v4, v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    :goto_2
    invoke-virtual {v1, v6}, Landroid/webkit/WebView;->setNextFocusUpId(I)V

    .line 304
    invoke-virtual {v1, v6}, Landroid/webkit/WebView;->setNextFocusDownId(I)V

    .line 305
    iget-object v4, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v4, p1}, Lcom/android/browser/UiController;->attachSubWindow(Lcom/android/browser/Tab;)V

    goto :goto_0

    .line 288
    :cond_4
    const-string v4, "BaseUi"

    const-string v5, "mMainView is already attached to wrapper in attachTabToContentView!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 300
    :cond_5
    const-string v4, "BaseUi"

    const-string v5, "mContainer is already attached to content in attachTabToContentView!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public bookmarkedStatusHasChanged(Lcom/android/browser/Tab;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 197
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    invoke-virtual {p1}, Lcom/android/browser/Tab;->isBookmarkedSite()Z

    move-result v0

    .line 199
    .local v0, isBookmark:Z
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->getTitleBar()Lcom/android/browser/TitleBarBase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/browser/TitleBarBase;->setCurrentUrlIsBookmark(Z)V

    .line 201
    .end local v0           #isBookmark:Z
    :cond_0
    return-void
.end method

.method canShowTitleBar()Z
    .locals 1

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->isTitleBarShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->isInCustomActionMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createSubWindow(Lcom/android/browser/Tab;Landroid/webkit/WebView;)V
    .locals 8
    .parameter "tab"
    .parameter "subView"

    .prologue
    const/4 v7, -0x1

    .line 359
    iget-object v4, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f04000f

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 361
    .local v3, subViewContainer:Landroid/view/View;
    const v4, 0x7f100035

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 363
    .local v2, inner:Landroid/view/ViewGroup;
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 365
    const v4, 0x7f100036

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 367
    .local v0, cancel:Landroid/widget/ImageButton;
    move-object v1, p2

    .line 368
    .local v1, cancelSubView:Landroid/webkit/WebView;
    new-instance v4, Lcom/android/browser/BaseUi$1;

    invoke-direct {v4, p0, v1}, Lcom/android/browser/BaseUi$1;-><init>(Lcom/android/browser/BaseUi;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    invoke-virtual {p1, p2}, Lcom/android/browser/Tab;->setSubWebView(Landroid/webkit/WebView;)V

    .line 374
    invoke-virtual {p1, v3}, Lcom/android/browser/Tab;->setSubViewContainer(Landroid/view/View;)V

    .line 375
    return-void
.end method

.method public detachTab(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter "tab"

    .prologue
    .line 261
    invoke-direct {p0, p1}, Lcom/android/browser/BaseUi;->removeTabFromContentView(Lcom/android/browser/Tab;)V

    .line 262
    return-void
.end method

.method protected dismissIME()V
    .locals 3

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 539
    :cond_0
    return-void
.end method

.method getActiveTab()Lcom/android/browser/Tab;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    return-object v0
.end method

.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 696
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mDefaultVideoPoster:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020020

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BaseUi;->mDefaultVideoPoster:Landroid/graphics/Bitmap;

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mDefaultVideoPoster:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected abstract getTitleBar()Lcom/android/browser/TitleBarBase;
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 3

    .prologue
    .line 705
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mVideoProgressView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 706
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 707
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f040031

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BaseUi;->mVideoProgressView:Landroid/view/View;

    .line 710
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mVideoProgressView:Landroid/view/View;

    return-object v1
.end method

.method protected getWebView()Landroid/webkit/WebView;
    .locals 2

    .prologue
    .line 726
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->getActiveTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 727
    .local v0, tab:Lcom/android/browser/Tab;
    if-eqz v0, :cond_0

    .line 728
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 730
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hideAutoLogin(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 554
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/browser/BaseUi;->updateAutoLogin(Lcom/android/browser/Tab;Z)V

    .line 555
    return-void
.end method

.method public hideComboView()V
    .locals 3

    .prologue
    .line 478
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mComboView:Lcom/android/browser/CombinedBookmarkHistoryView;

    if-eqz v1, :cond_0

    .line 479
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/browser/BaseUi;->mComboView:Lcom/android/browser/CombinedBookmarkHistoryView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 480
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    const v2, 0x7f100074

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 482
    .local v0, wrapper:Landroid/widget/FrameLayout;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 483
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/browser/BaseUi;->mComboView:Lcom/android/browser/CombinedBookmarkHistoryView;

    .line 485
    .end local v0           #wrapper:Landroid/widget/FrameLayout;
    :cond_0
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    if-eqz v1, :cond_1

    .line 486
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    invoke-virtual {v1}, Lcom/android/browser/Tab;->putInForeground()V

    .line 488
    :cond_1
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 489
    return-void
.end method

.method protected hideTitleBar()V
    .locals 1

    .prologue
    .line 411
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BaseUi;->mTitleShowing:Z

    .line 412
    return-void
.end method

.method protected initWebViewSettings(Landroid/webkit/WebView;)V
    .locals 3
    .parameter "w"

    .prologue
    const/4 v2, 0x1

    .line 127
    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setScrollbarFadingEnabled(Z)V

    .line 128
    const/high16 v1, 0x200

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 129
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setMapTrackballToArrowKeys(Z)V

    .line 131
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 135
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    .line 136
    .local v0, s:Lcom/android/browser/BrowserSettings;
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserSettings;->addObserver(Landroid/webkit/WebSettings;)Lcom/android/browser/BrowserSettings$Observer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/browser/BrowserSettings$Observer;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 137
    return-void
.end method

.method protected isActivityPaused()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/android/browser/BaseUi;->mActivityPaused:Z

    return v0
.end method

.method public isComboViewShowing()Z
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mComboView:Lcom/android/browser/CombinedBookmarkHistoryView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCustomViewShowing()Z
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isTitleBarShowing()Z
    .locals 1

    .prologue
    .line 415
    iget-boolean v0, p0, Lcom/android/browser/BaseUi;->mTitleShowing:Z

    return v0
.end method

.method public needsRestoreAllTabs()Z
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public onActionModeFinished(Z)V
    .locals 0
    .parameter "inLoad"

    .prologue
    .line 608
    if-eqz p1, :cond_0

    .line 611
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->showTitleBar()V

    .line 613
    :cond_0
    return-void
.end method

.method public onBackKey()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 173
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mComboView:Lcom/android/browser/CombinedBookmarkHistoryView;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mComboView:Lcom/android/browser/CombinedBookmarkHistoryView;

    invoke-virtual {v0}, Lcom/android/browser/CombinedBookmarkHistoryView;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->removeComboView()V

    :cond_0
    move v0, v1

    .line 183
    :goto_0
    return v0

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->hideCustomView()V

    move v0, v1

    .line 181
    goto :goto_0

    .line 183
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 165
    return-void
.end method

.method public onContextMenuClosed(Landroid/view/Menu;Z)V
    .locals 0
    .parameter "menu"
    .parameter "inLoad"

    .prologue
    .line 655
    return-void
.end method

.method public onContextMenuCreated(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 651
    return-void
.end method

.method public onExtendedMenuClosed(Z)V
    .locals 0
    .parameter "inLoad"

    .prologue
    .line 647
    return-void
.end method

.method public onExtendedMenuOpened()V
    .locals 0

    .prologue
    .line 639
    return-void
.end method

.method public onHideCustomView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 514
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 527
    :goto_0
    return-void

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 520
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 521
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    .line 522
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 523
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 525
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/browser/BaseUi;->setStatusBarVisibility(Z)V

    .line 526
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onOptionsMenuClosed(Z)V
    .locals 0
    .parameter "inLoad"

    .prologue
    .line 643
    return-void
.end method

.method public onOptionsMenuOpened()V
    .locals 0

    .prologue
    .line 635
    return-void
.end method

.method public onPageStopped(Lcom/android/browser/Tab;)V
    .locals 3
    .parameter "tab"

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/android/browser/BaseUi;->cancelStopToast()V

    .line 206
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    const v1, 0x7f090033

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BaseUi;->mStopToast:Landroid/widget/Toast;

    .line 209
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mStopToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 211
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->isCustomViewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->onHideCustomView()V

    .line 152
    :cond_0
    invoke-direct {p0}, Lcom/android/browser/BaseUi;->cancelStopToast()V

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/BaseUi;->mActivityPaused:Z

    .line 154
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 630
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BaseUi;->mActivityPaused:Z

    .line 158
    return-void
.end method

.method public onSetWebView(Lcom/android/browser/Tab;Landroid/webkit/WebView;)V
    .locals 5
    .parameter "tab"
    .parameter "webView"

    .prologue
    .line 334
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getViewContainer()Landroid/view/View;

    move-result-object v0

    .line 335
    .local v0, container:Landroid/view/View;
    if-nez v0, :cond_0

    .line 338
    iget-object v2, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040029

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 340
    invoke-virtual {p1, v0}, Lcom/android/browser/Tab;->setViewContainer(Landroid/view/View;)V

    .line 342
    :cond_0
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    if-eq v2, p2, :cond_1

    .line 344
    const v2, 0x7f100074

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 346
    .local v1, wrapper:Landroid/widget/FrameLayout;
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 348
    .end local v1           #wrapper:Landroid/widget/FrameLayout;
    :cond_1
    return-void
.end method

.method public onTabDataChanged(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter "tab"

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Lcom/android/browser/BaseUi;->setUrlTitle(Lcom/android/browser/Tab;)V

    .line 190
    invoke-virtual {p0, p1}, Lcom/android/browser/BaseUi;->setFavicon(Lcom/android/browser/Tab;)V

    .line 191
    invoke-virtual {p0, p1}, Lcom/android/browser/BaseUi;->updateLockIconToLatest(Lcom/android/browser/Tab;)V

    .line 192
    invoke-virtual {p0, p1}, Lcom/android/browser/BaseUi;->updateNavigationState(Lcom/android/browser/Tab;)V

    .line 193
    return-void
.end method

.method public registerDropdownChangeListener(Lcom/android/browser/UI$DropdownChangeListener;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 723
    return-void
.end method

.method public removeActiveTabsPage()V
    .locals 0

    .prologue
    .line 624
    return-void
.end method

.method public removeSubWindow(Landroid/view/View;)V
    .locals 1
    .parameter "subviewContainer"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 383
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v0}, Lcom/android/browser/UiController;->endActionMode()V

    .line 384
    return-void
.end method

.method public removeTab(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    if-ne v0, p1, :cond_0

    .line 254
    invoke-direct {p0, p1}, Lcom/android/browser/BaseUi;->removeTabFromContentView(Lcom/android/browser/Tab;)V

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    .line 257
    :cond_0
    return-void
.end method

.method public revertVoiceTitleBar(Lcom/android/browser/Tab;)V
    .locals 3
    .parameter "tab"

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->getTitleBar()Lcom/android/browser/TitleBarBase;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/browser/TitleBarBase;->setInVoiceMode(Z)V

    .line 437
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->getTitleBar()Lcom/android/browser/TitleBarBase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/browser/TitleBarBase;->setDisplayTitle(Ljava/lang/String;)V

    .line 439
    return-void
.end method

.method public setActiveTab(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 224
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/browser/BaseUi;->setActiveTab(Lcom/android/browser/Tab;Z)V

    .line 225
    return-void
.end method

.method setActiveTab(Lcom/android/browser/Tab;Z)V
    .locals 2
    .parameter "tab"
    .parameter "needsAttaching"

    .prologue
    .line 228
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    if-eqz v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    invoke-direct {p0, v1}, Lcom/android/browser/BaseUi;->removeTabFromContentView(Lcom/android/browser/Tab;)V

    .line 231
    :cond_0
    iput-object p1, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    .line 232
    if-eqz p2, :cond_1

    .line 233
    invoke-virtual {p0, p1}, Lcom/android/browser/BaseUi;->attachTabToContentView(Lcom/android/browser/Tab;)V

    .line 235
    :cond_1
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    invoke-interface {v1}, Lcom/android/browser/UiController;->shouldShowErrorConsole()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/browser/BaseUi;->setShouldShowErrorConsole(Lcom/android/browser/Tab;Z)V

    .line 236
    invoke-virtual {p0, p1}, Lcom/android/browser/BaseUi;->onTabDataChanged(Lcom/android/browser/Tab;)V

    .line 237
    invoke-virtual {p0, p1}, Lcom/android/browser/BaseUi;->onProgressChanged(Lcom/android/browser/Tab;)V

    .line 238
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    invoke-virtual {v1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v0

    .line 239
    .local v0, incognito:Z
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->getTitleBar()Lcom/android/browser/TitleBarBase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/browser/TitleBarBase;->setIncognitoMode(Z)V

    .line 240
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/browser/BaseUi;->updateAutoLogin(Lcom/android/browser/Tab;Z)V

    .line 241
    return-void
.end method

.method protected setFavicon(Lcom/android/browser/Tab;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 600
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 601
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 602
    .local v0, icon:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->getTitleBar()Lcom/android/browser/TitleBarBase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/browser/TitleBarBase;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 604
    .end local v0           #icon:Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method public setShouldShowErrorConsole(Lcom/android/browser/Tab;Z)V
    .locals 5
    .parameter "tab"
    .parameter "flag"

    .prologue
    .line 661
    if-nez p1, :cond_0

    .line 682
    :goto_0
    return-void

    .line 662
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/browser/Tab;->getErrorConsole(Z)Lcom/android/browser/ErrorConsoleView;

    move-result-object v0

    .line 663
    .local v0, errorConsole:Lcom/android/browser/ErrorConsoleView;
    if-eqz p2, :cond_3

    .line 666
    invoke-virtual {v0}, Lcom/android/browser/ErrorConsoleView;->numberOfErrors()I

    move-result v1

    if-lez v1, :cond_2

    .line 667
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/ErrorConsoleView;->showConsole(I)V

    .line 671
    :goto_1
    invoke-virtual {v0}, Lcom/android/browser/ErrorConsoleView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 672
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 675
    :cond_1
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 669
    :cond_2
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/browser/ErrorConsoleView;->showConsole(I)V

    goto :goto_1

    .line 680
    :cond_3
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected setTitleGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 422
    .local v0, web:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setTitleBarGravity(I)V

    .line 424
    invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V

    .line 426
    :cond_0
    return-void
.end method

.method protected setUrlTitle(Lcom/android/browser/Tab;)V
    .locals 3
    .parameter "tab"

    .prologue
    .line 587
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 588
    .local v1, url:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 589
    .local v0, title:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 590
    move-object v0, v1

    .line 592
    :cond_0
    invoke-virtual {p1}, Lcom/android/browser/Tab;->isInVoiceSearchMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 596
    :cond_1
    :goto_0
    return-void

    .line 593
    :cond_2
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 594
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->getTitleBar()Lcom/android/browser/TitleBarBase;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/browser/TitleBarBase;->setDisplayTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showActiveTabsPage()V
    .locals 0

    .prologue
    .line 618
    return-void
.end method

.method public showAutoLogin(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 549
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/browser/BaseUi;->updateAutoLogin(Lcom/android/browser/Tab;Z)V

    .line 550
    return-void
.end method

.method public showComboView(ZLandroid/os/Bundle;)V
    .locals 9
    .parameter "startWithHistory"
    .parameter "extras"

    .prologue
    const/4 v8, 0x2

    .line 443
    iget-object v4, p0, Lcom/android/browser/BaseUi;->mComboView:Lcom/android/browser/CombinedBookmarkHistoryView;

    if-eqz v4, :cond_0

    .line 467
    :goto_0
    return-void

    .line 446
    :cond_0
    new-instance v4, Lcom/android/browser/CombinedBookmarkHistoryView;

    iget-object v5, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/android/browser/BaseUi;->mUiController:Lcom/android/browser/UiController;

    if-eqz p1, :cond_2

    move v7, v8

    :goto_1
    invoke-direct {v4, v5, v6, v7, p2}, Lcom/android/browser/CombinedBookmarkHistoryView;-><init>(Landroid/app/Activity;Lcom/android/browser/UiController;ILandroid/os/Bundle;)V

    iput-object v4, p0, Lcom/android/browser/BaseUi;->mComboView:Lcom/android/browser/CombinedBookmarkHistoryView;

    .line 452
    iget-object v4, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    const v5, 0x7f100074

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 454
    .local v3, wrapper:Landroid/widget/FrameLayout;
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 455
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->hideTitleBar()V

    .line 456
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->dismissIME()V

    .line 457
    iget-object v4, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    if-eqz v4, :cond_1

    .line 458
    iget-object v4, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    invoke-virtual {v4}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    .line 459
    .local v2, web:Landroid/webkit/WebView;
    iget-object v4, p0, Lcom/android/browser/BaseUi;->mActiveTab:Lcom/android/browser/Tab;

    invoke-virtual {v4}, Lcom/android/browser/Tab;->putInBackground()V

    .line 461
    .end local v2           #web:Landroid/webkit/WebView;
    :cond_1
    iget-object v4, p0, Lcom/android/browser/BaseUi;->mComboView:Lcom/android/browser/CombinedBookmarkHistoryView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/browser/CombinedBookmarkHistoryView;->setAlpha(F)V

    .line 462
    iget-object v4, p0, Lcom/android/browser/BaseUi;->mComboView:Lcom/android/browser/CombinedBookmarkHistoryView;

    const-string v5, "alpha"

    new-array v6, v8, [F

    fill-array-data v6, :array_0

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 463
    .local v0, anim:Landroid/animation/ObjectAnimator;
    iget-object v4, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 464
    .local v1, res:Landroid/content/res/Resources;
    const v4, 0x7f0d0006

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 465
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 466
    iget-object v4, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/browser/BaseUi;->mComboView:Lcom/android/browser/CombinedBookmarkHistoryView;

    sget-object v6, Lcom/android/browser/BaseUi;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v4, v5, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 446
    .end local v0           #anim:Landroid/animation/ObjectAnimator;
    .end local v1           #res:Landroid/content/res/Resources;
    .end local v3           #wrapper:Landroid/widget/FrameLayout;
    :cond_2
    const/4 v7, 0x1

    goto :goto_1

    .line 462
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public showCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3
    .parameter "view"
    .parameter "callback"

    .prologue
    const/4 v2, 0x0

    .line 495
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 496
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 510
    :goto_0
    return-void

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    sget-object v1, Lcom/android/browser/BaseUi;->COVER_SCREEN_GRAVITY_CENTER:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 502
    iput-object p1, p0, Lcom/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    .line 503
    iput-object p2, p0, Lcom/android/browser/BaseUi;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 505
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mContentView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 507
    invoke-direct {p0, v2}, Lcom/android/browser/BaseUi;->setStatusBarVisibility(Z)V

    .line 508
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 509
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    goto :goto_0
.end method

.method public showMaxTabsWarning()V
    .locals 4

    .prologue
    .line 715
    iget-object v1, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/browser/BaseUi;->mActivity:Landroid/app/Activity;

    const v3, 0x7f090169

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 718
    .local v0, warning:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 719
    return-void
.end method

.method showTitleBar()V
    .locals 1

    .prologue
    .line 407
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/BaseUi;->mTitleShowing:Z

    .line 408
    return-void
.end method

.method public showVoiceTitleBar(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->getTitleBar()Lcom/android/browser/TitleBarBase;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBarBase;->setInVoiceMode(Z)V

    .line 431
    invoke-virtual {p0}, Lcom/android/browser/BaseUi;->getTitleBar()Lcom/android/browser/TitleBarBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/browser/TitleBarBase;->setDisplayTitle(Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method public showsWeb()Z
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/browser/BaseUi;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/BaseUi;->mComboView:Lcom/android/browser/CombinedBookmarkHistoryView;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateAutoLogin(Lcom/android/browser/Tab;Z)V
    .locals 0
    .parameter "tab"
    .parameter "animate"

    .prologue
    .line 562
    return-void
.end method

.method protected updateLockIconToLatest(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 568
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getLockIconType()Lcom/android/browser/Tab$LockIcon;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/BaseUi;->updateLockIconImage(Lcom/android/browser/Tab$LockIcon;)V

    .line 571
    :cond_0
    return-void
.end method

.method protected updateNavigationState(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter "tab"

    .prologue
    .line 560
    return-void
.end method

.method public updateTabs(Ljava/util/List;)V
    .locals 0
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
    .line 249
    .local p1, tabs:Ljava/util/List;,"Ljava/util/List<Lcom/android/browser/Tab;>;"
    return-void
.end method
