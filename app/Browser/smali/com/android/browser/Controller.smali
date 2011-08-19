.class public Lcom/android/browser/Controller;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Lcom/android/browser/UiController;
.implements Lcom/android/browser/WebViewController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/Controller$SelectText;,
        Lcom/android/browser/Controller$Download;,
        Lcom/android/browser/Controller$Copy;,
        Lcom/android/browser/Controller$RetainIconsOnStartupTask;,
        Lcom/android/browser/Controller$ClearThumbnails;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final WINDOW_SHORTCUT_ID_ARRAY:[I


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mActivity:Landroid/app/Activity;

.field private mActivityPaused:Z

.field private mAutoFillSetupMessage:Landroid/os/Message;

.field private mBookmarksObserver:Landroid/database/ContentObserver;

.field private mCachedMenu:Landroid/view/Menu;

.field private mConfigChanged:Z

.field private mCurrentMenuState:I

.field private mDataController:Lcom/android/browser/DataController;

.field private mExtendedMenuOpen:Z

.field private mFactory:Lcom/android/browser/WebViewFactory;

.field private mFlashchecker:Lcom/android/browser/FlashStateHandler;

.field private mHandler:Landroid/os/Handler;

.field private mInLoad:Z

.field private mIntentHandler:Lcom/android/browser/IntentHandler;

.field private mLoadStopped:Z

.field private mMenuIsDown:Z

.field private mMenuState:I

.field private mNetworkHandler:Lcom/android/browser/NetworkStateHandler;

.field private mOldMenuState:I

.field private mOptionsMenuHandler:Lcom/android/browser/OptionsMenuHandler;

.field private mOptionsMenuOpen:Z

.field private mPageDialogsHandler:Lcom/android/browser/PageDialogsHandler;

.field private mSettings:Lcom/android/browser/BrowserSettings;

.field private mShouldShowErrorConsole:Z

.field private mSystemAllowGeolocationOrigins:Lcom/android/browser/SystemAllowGeolocationOrigins;

.field private mTabControl:Lcom/android/browser/TabControl;

.field private mUi:Lcom/android/browser/UI;

.field private mUploadHandler:Lcom/android/browser/UploadHandler;

.field private mUrlHandler:Lcom/android/browser/UrlHandler;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const-class v0, Lcom/android/browser/Controller;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/browser/Controller;->$assertionsDisabled:Z

    .line 124
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/browser/Controller;->WINDOW_SHORTCUT_ID_ARRAY:[I

    return-void

    .line 93
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 124
    nop

    :array_0
    .array-data 0x4
        0xbdt 0x0t 0x10t 0x7ft
        0xbet 0x0t 0x10t 0x7ft
        0xbft 0x0t 0x10t 0x7ft
        0xc0t 0x0t 0x10t 0x7ft
        0xc1t 0x0t 0x10t 0x7ft
        0xc2t 0x0t 0x10t 0x7ft
        0xc3t 0x0t 0x10t 0x7ft
        0xc4t 0x0t 0x10t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 5
    .parameter "browser"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object v2, p0, Lcom/android/browser/Controller;->mOptionsMenuHandler:Lcom/android/browser/OptionsMenuHandler;

    .line 158
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/browser/Controller;->mCurrentMenuState:I

    .line 159
    const v1, 0x7f1000aa

    iput v1, p0, Lcom/android/browser/Controller;->mMenuState:I

    .line 160
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/browser/Controller;->mOldMenuState:I

    .line 192
    iput-boolean v4, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    .line 202
    iput-object v2, p0, Lcom/android/browser/Controller;->mFlashchecker:Lcom/android/browser/FlashStateHandler;

    .line 219
    iput-object p1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    .line 220
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    .line 221
    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/browser/DataController;->getInstance(Landroid/content/Context;)Lcom/android/browser/DataController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/Controller;->mDataController:Lcom/android/browser/DataController;

    .line 222
    new-instance v1, Lcom/android/browser/TabControl;

    invoke-direct {v1, p0}, Lcom/android/browser/TabControl;-><init>(Lcom/android/browser/Controller;)V

    iput-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    .line 223
    iget-object v1, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v1, p0}, Lcom/android/browser/BrowserSettings;->setController(Lcom/android/browser/Controller;)V

    .line 224
    iget-object v1, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    iget-object v2, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/android/browser/BrowserSettings;->updateRlzValues(Landroid/content/Context;)V

    .line 226
    new-instance v1, Lcom/android/browser/UrlHandler;

    invoke-direct {v1, p0}, Lcom/android/browser/UrlHandler;-><init>(Lcom/android/browser/Controller;)V

    iput-object v1, p0, Lcom/android/browser/Controller;->mUrlHandler:Lcom/android/browser/UrlHandler;

    .line 227
    new-instance v1, Lcom/android/browser/IntentHandler;

    iget-object v2, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, p0}, Lcom/android/browser/IntentHandler;-><init>(Landroid/app/Activity;Lcom/android/browser/Controller;)V

    iput-object v1, p0, Lcom/android/browser/Controller;->mIntentHandler:Lcom/android/browser/IntentHandler;

    .line 228
    new-instance v1, Lcom/android/browser/PageDialogsHandler;

    iget-object v2, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, p0}, Lcom/android/browser/PageDialogsHandler;-><init>(Landroid/content/Context;Lcom/android/browser/Controller;)V

    iput-object v1, p0, Lcom/android/browser/Controller;->mPageDialogsHandler:Lcom/android/browser/PageDialogsHandler;

    .line 230
    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 232
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "Browser"

    invoke-virtual {v0, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 234
    invoke-direct {p0}, Lcom/android/browser/Controller;->startHandler()V

    .line 235
    new-instance v1, Lcom/android/browser/Controller$1;

    iget-object v2, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/browser/Controller$1;-><init>(Lcom/android/browser/Controller;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/browser/Controller;->mBookmarksObserver:Landroid/database/ContentObserver;

    .line 245
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/BrowserContract$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/browser/Controller;->mBookmarksObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 248
    new-instance v1, Lcom/android/browser/NetworkStateHandler;

    iget-object v2, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, p0}, Lcom/android/browser/NetworkStateHandler;-><init>(Landroid/app/Activity;Lcom/android/browser/Controller;)V

    iput-object v1, p0, Lcom/android/browser/Controller;->mNetworkHandler:Lcom/android/browser/NetworkStateHandler;

    .line 250
    new-instance v1, Lcom/android/browser/SystemAllowGeolocationOrigins;

    iget-object v2, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/browser/SystemAllowGeolocationOrigins;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/browser/Controller;->mSystemAllowGeolocationOrigins:Lcom/android/browser/SystemAllowGeolocationOrigins;

    .line 252
    iget-object v1, p0, Lcom/android/browser/Controller;->mSystemAllowGeolocationOrigins:Lcom/android/browser/SystemAllowGeolocationOrigins;

    invoke-virtual {v1}, Lcom/android/browser/SystemAllowGeolocationOrigins;->start()V

    .line 254
    new-instance v1, Lcom/android/browser/FlashStateHandler;

    iget-object v2, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/android/browser/FlashStateHandler;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/browser/Controller;->mFlashchecker:Lcom/android/browser/FlashStateHandler;

    .line 256
    invoke-direct {p0}, Lcom/android/browser/Controller;->retainIconsOnStartup()V

    .line 257
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/Controller;)Lcom/android/browser/TabControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/Controller;Landroid/os/Bundle;Landroid/content/Intent;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/browser/Controller;->start(Landroid/os/Bundle;Landroid/content/Intent;IZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/browser/Controller;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/browser/Controller;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/browser/Controller;->copy(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/browser/Controller;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/browser/Controller;Lcom/android/browser/Tab;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/browser/Controller;->updateScreenshot(Lcom/android/browser/Tab;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/browser/Controller;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private copy(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 584
    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 586
    .local v0, cm:Landroid/content/ClipboardManager;
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 587
    return-void
.end method

.method private createGoogleSearchSourceBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .parameter

    .prologue
    .line 2452
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2453
    const-string v1, "source"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2454
    return-object v0
.end method

.method private static createScreenshot(Landroid/webkit/WebView;II)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "view"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v11, 0x0

    .line 1957
    const/4 v2, 0x2

    .line 1958
    .local v2, filter_scale:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v6

    .line 1959
    .local v6, thumbnail:Landroid/graphics/Picture;
    if-nez v6, :cond_0

    move-object v10, v11

    .line 1992
    :goto_0
    return-object v10

    .line 1962
    :cond_0
    mul-int/lit8 p1, p1, 0x2

    .line 1963
    mul-int/lit8 p2, p2, 0x2

    .line 1964
    sget-object v10, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1965
    .local v0, bm:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1968
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v6}, Landroid/graphics/Picture;->getWidth()I

    move-result v8

    .line 1969
    .local v8, thumbnailWidth:I
    invoke-virtual {v6}, Landroid/graphics/Picture;->getHeight()I

    move-result v7

    .line 1970
    .local v7, thumbnailHeight:I
    const/high16 v4, 0x3f80

    .line 1971
    .local v4, scaleFactor:F
    if-lez v8, :cond_2

    if-lez v7, :cond_2

    .line 1972
    int-to-float v10, p1

    int-to-float v11, v8

    div-float v4, v10, v11

    .line 1977
    int-to-float v10, p2

    int-to-float v11, v7

    div-float v5, v10, v11

    .line 1978
    .local v5, scaleFactorY:F
    cmpl-float v10, v5, v4

    if-lez v10, :cond_1

    .line 1981
    move v4, v5

    .line 1982
    int-to-float v10, v8

    mul-float/2addr v10, v4

    int-to-float v11, p1

    sub-float v9, v10, v11

    .line 1983
    .local v9, wx:F
    const/high16 v10, 0x4000

    div-float v10, v9, v10

    neg-float v10, v10

    float-to-int v10, v10

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1986
    .end local v9           #wx:F
    :cond_1
    invoke-virtual {v1, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1988
    invoke-virtual {v6, v1}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    .line 1989
    div-int/lit8 v10, p1, 0x2

    div-int/lit8 v11, p2, 0x2

    const/4 v12, 0x1

    invoke-static {v0, v10, v11, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1991
    .local v3, ret:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v10, v3

    .line 1992
    goto :goto_0

    .end local v3           #ret:Landroid/graphics/Bitmap;
    .end local v5           #scaleFactorY:F
    :cond_2
    move-object v10, v11

    .line 1974
    goto :goto_0
.end method

.method static createScreenshot(Lcom/android/browser/Tab;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "tab"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1947
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1948
    invoke-virtual {p0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/browser/Controller;->createScreenshot(Landroid/webkit/WebView;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1950
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getDesiredThumbnailHeight(Landroid/content/Context;)I
    .locals 2
    .parameter

    .prologue
    .line 1942
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0
.end method

.method static getDesiredThumbnailWidth(Landroid/content/Context;)I
    .locals 2
    .parameter

    .prologue
    .line 1931
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0
.end method

.method private getNextTabIndex()I
    .locals 2

    .prologue
    .line 2462
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getPrevTabIndex()I
    .locals 3

    .prologue
    .line 2471
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentIndex()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private maybeUpdateFavicon(Lcom/android/browser/Tab;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "tab"
    .parameter "originalUrl"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 1033
    if-nez p4, :cond_1

    .line 1040
    :cond_0
    :goto_0
    return-void

    .line 1036
    :cond_1
    invoke-virtual {p1}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2, p3, p4}, Lcom/android/browser/Bookmarks;->updateFavicon(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private pauseWebViewTimers(Lcom/android/browser/Tab;)Z
    .locals 3
    .parameter "tab"

    .prologue
    const/4 v2, 0x1

    .line 683
    if-nez p1, :cond_0

    move v1, v2

    .line 693
    :goto_0
    return v1

    .line 685
    :cond_0
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inPageLoad()Z

    move-result v1

    if-nez v1, :cond_2

    .line 686
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 687
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 688
    .local v0, w:Landroid/webkit/WebView;
    if-eqz v0, :cond_1

    .line 689
    invoke-virtual {v0}, Landroid/webkit/WebView;->pauseTimers()V

    :cond_1
    move v1, v2

    .line 691
    goto :goto_0

    .line 693
    .end local v0           #w:Landroid/webkit/WebView;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private resumeWebViewTimers(Lcom/android/browser/Tab;)V
    .locals 3
    .parameter "tab"

    .prologue
    .line 667
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inPageLoad()Z

    move-result v0

    .line 668
    .local v0, inLoad:Z
    iget-boolean v2, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 669
    :cond_1
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 670
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 671
    .local v1, w:Landroid/webkit/WebView;
    if-eqz v1, :cond_2

    .line 672
    invoke-virtual {v1}, Landroid/webkit/WebView;->resumeTimers()V

    .line 675
    .end local v1           #w:Landroid/webkit/WebView;
    :cond_2
    return-void
.end method

.method private retainIconsOnStartup()V
    .locals 2

    .prologue
    .line 425
    new-instance v0, Lcom/android/browser/Controller$RetainIconsOnStartupTask;

    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/browser/Controller$RetainIconsOnStartupTask;-><init>(Lcom/android/browser/Controller;Landroid/webkit/WebIconDatabase;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/browser/Controller$RetainIconsOnStartupTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 426
    return-void
.end method

.method private shareCurrentPage(Lcom/android/browser/Tab;)V
    .locals 7
    .parameter "tab"

    .prologue
    .line 545
    if-eqz p1, :cond_0

    .line 546
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/android/browser/Controller;->getDesiredThumbnailWidth(Landroid/content/Context;)I

    move-result v5

    iget-object v6, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/android/browser/Controller;->getDesiredThumbnailHeight(Landroid/content/Context;)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/android/browser/Controller;->createScreenshot(Landroid/webkit/WebView;II)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/browser/Controller;->sharePage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 552
    :cond_0
    return-void
.end method

.method static final sharePage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "c"
    .parameter "title"
    .parameter "url"
    .parameter "favicon"
    .parameter "screenshot"

    .prologue
    .line 569
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 570
    .local v0, send:Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 571
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 573
    const-string v1, "share_favicon"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 574
    const-string v1, "share_screenshot"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 576
    const v1, 0x7f09007b

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    :goto_0
    return-void

    .line 578
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private start(Landroid/os/Bundle;Landroid/content/Intent;IZ)V
    .locals 17
    .parameter "icicle"
    .parameter "intent"
    .parameter "currentTab"
    .parameter "restoreIncognitoTabs"

    .prologue
    .line 302
    const/4 v12, -0x1

    move/from16 v0, p3

    move v1, v12

    if-ne v0, v1, :cond_8

    .line 303
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 308
    .local v6, extra:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Controller;->mIntentHandler:Lcom/android/browser/IntentHandler;

    move-object v12, v0

    move-object v0, v12

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/browser/IntentHandler;->getUrlDataFromIntent(Landroid/content/Intent;)Lcom/android/browser/IntentHandler$UrlData;

    move-result-object v10

    .line 310
    .local v10, urlData:Lcom/android/browser/IntentHandler$UrlData;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 311
    .local v5, action:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    move-object v12, v0

    const-string v13, "android.intent.action.VIEW"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    if-nez v13, :cond_1

    :cond_0
    const-string v13, "android.speech.action.VOICE_SEARCH_RESULTS"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    :cond_1
    const/4 v13, 0x1

    :goto_0
    const-string v14, "com.android.browser.application_id"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v10, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Lcom/android/browser/TabControl;->createNewTab(ZLjava/lang/String;Ljava/lang/String;Z)Lcom/android/browser/Tab;

    move-result-object v9

    .line 318
    .local v9, t:Lcom/android/browser/Tab;
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/android/browser/Controller;->addTab(Lcom/android/browser/Tab;)V

    .line 319
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/android/browser/Controller;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 320
    invoke-virtual {v9}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v11

    .line 321
    .local v11, webView:Landroid/webkit/WebView;
    if-eqz v6, :cond_2

    .line 322
    const-string v12, "browser.initialZoomLevel"

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 323
    .local v8, scale:I
    if-lez v8, :cond_2

    const/16 v12, 0x3e8

    if-gt v8, v12, :cond_2

    .line 324
    invoke-virtual {v11, v8}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 328
    .end local v8           #scale:I
    :cond_2
    invoke-virtual {v10}, Lcom/android/browser/IntentHandler$UrlData;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/Controller;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 347
    .end local v5           #action:Ljava/lang/String;
    .end local v6           #extra:Landroid/os/Bundle;
    .end local v9           #t:Lcom/android/browser/Tab;
    .end local v10           #urlData:Lcom/android/browser/IntentHandler$UrlData;
    .end local v11           #webView:Landroid/webkit/WebView;
    :cond_3
    :goto_1
    new-instance v12, Lcom/android/browser/Controller$ClearThumbnails;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lcom/android/browser/Controller$ClearThumbnails;-><init>(Lcom/android/browser/Controller$1;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/android/browser/TabControl;->getThumbnailDir()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/browser/Controller$ClearThumbnails;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 350
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/Controller;->getSettings()Lcom/android/browser/BrowserSettings;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/browser/BrowserSettings;->getJsFlags()Ljava/lang/String;

    move-result-object v7

    .line 351
    .local v7, jsFlags:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_4

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/Controller;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/webkit/WebView;->setJsFlags(Ljava/lang/String;)V

    .line 354
    :cond_4
    const-string v12, "show_bookmarks"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 355
    const/4 v12, 0x0

    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Lcom/android/browser/Controller;->bookmarksOrHistoryPicker(Z)V

    .line 357
    :cond_5
    return-void

    .line 311
    .end local v7           #jsFlags:Ljava/lang/String;
    .restart local v5       #action:Ljava/lang/String;
    .restart local v6       #extra:Landroid/os/Bundle;
    .restart local v10       #urlData:Lcom/android/browser/IntentHandler$UrlData;
    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 332
    .restart local v9       #t:Lcom/android/browser/Tab;
    .restart local v11       #webView:Landroid/webkit/WebView;
    :cond_7
    if-eqz v9, :cond_3

    .line 333
    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/Controller;->loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/IntentHandler$UrlData;)V

    goto :goto_1

    .line 337
    .end local v5           #action:Ljava/lang/String;
    .end local v6           #extra:Landroid/os/Bundle;
    .end local v9           #t:Lcom/android/browser/Tab;
    .end local v10           #urlData:Lcom/android/browser/IntentHandler$UrlData;
    .end local v11           #webView:Landroid/webkit/WebView;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    move-object v13, v0

    invoke-interface {v13}, Lcom/android/browser/UI;->needsRestoreAllTabs()Z

    move-result v13

    move-object v0, v12

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move v4, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/browser/TabControl;->restoreState(Landroid/os/Bundle;IZZ)V

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/android/browser/TabControl;->getTabs()Ljava/util/List;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/android/browser/UI;->updateTabs(Ljava/util/List;)V

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v12

    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/android/browser/Controller;->setActiveTab(Lcom/android/browser/Tab;)V

    goto/16 :goto_1
.end method

.method private startHandler()V
    .locals 1

    .prologue
    .line 459
    new-instance v0, Lcom/android/browser/Controller$3;

    invoke-direct {v0, p0}, Lcom/android/browser/Controller$3;-><init>(Lcom/android/browser/Controller;)V

    iput-object v0, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    .line 537
    return-void
.end method

.method private startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2438
    if-nez p3, :cond_1

    .line 2439
    const-string v0, "browser-type"

    invoke-direct {p0, v0}, Lcom/android/browser/Controller;->createGoogleSearchSourceBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 2443
    :goto_0
    iget-object v1, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getSearchEngine()Lcom/android/browser/search/SearchEngine;

    move-result-object v1

    .line 2444
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/browser/search/SearchEngine;->supportsVoiceSearch()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2445
    const-string v1, "android.search.DISABLE_VOICE_SEARCH"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2447
    :cond_0
    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, p1, p2, v0, p4}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 2449
    return-void

    :cond_1
    move-object v0, p3

    goto :goto_0
.end method

.method private updateInLoadMenuItems(Landroid/view/Menu;)V
    .locals 3
    .parameter

    .prologue
    .line 1424
    if-nez p1, :cond_1

    .line 1435
    :cond_0
    :goto_0
    return-void

    .line 1427
    :cond_1
    const v0, 0x7f1000ae

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1428
    iget-boolean v1, p0, Lcom/android/browser/Controller;->mInLoad:Z

    if-eqz v1, :cond_2

    const v1, 0x7f1000c8

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1431
    :goto_1
    if-eqz v1, :cond_0

    .line 1432
    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1433
    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 1428
    :cond_2
    const v1, 0x7f1000c9

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    goto :goto_1
.end method

.method private updateScreenshot(Lcom/android/browser/Tab;)V
    .locals 7
    .parameter "tab"

    .prologue
    .line 2001
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v6

    .line 2002
    .local v6, view:Landroid/webkit/WebView;
    if-nez v6, :cond_1

    .line 2055
    :cond_0
    :goto_0
    return-void

    .line 2006
    :cond_1
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 2007
    .local v4, url:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v3

    .line 2009
    .local v3, originalUrl:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2016
    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/browser/Tab;->isBookmarkedSite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2020
    :cond_2
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/browser/Controller;->getDesiredThumbnailWidth(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/browser/Controller;->getDesiredThumbnailHeight(Landroid/content/Context;)I

    move-result v1

    invoke-static {v6, v0, v1}, Lcom/android/browser/Controller;->createScreenshot(Landroid/webkit/WebView;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2022
    .local v5, bm:Landroid/graphics/Bitmap;
    if-eqz v5, :cond_0

    .line 2026
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2027
    .local v2, cr:Landroid/content/ContentResolver;
    new-instance v0, Lcom/android/browser/Controller$8;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/browser/Controller$8;-><init>(Lcom/android/browser/Controller;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/browser/Controller$8;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public activateVoiceSearchMode(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->showVoiceTitleBar(Ljava/lang/String;)V

    .line 1077
    return-void
.end method

.method protected addTab(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 2114
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->addTab(Lcom/android/browser/Tab;)V

    .line 2115
    return-void
.end method

.method public attachSubWindow(Lcom/android/browser/Tab;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 2182
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getSubWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2183
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getSubViewContainer()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/browser/UI;->attachSubWindow(Landroid/view/View;)V

    .line 2184
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 2186
    :cond_0
    return-void
.end method

.method public bookmarkCurrentPage(JZ)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1887
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/browser/AddBookmarkPage;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1889
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 1890
    const-string v2, "url"

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1891
    const-string v2, "title"

    invoke-virtual {v1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1892
    invoke-virtual {v1}, Landroid/webkit/WebView;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v2

    .line 1893
    if-eqz v2, :cond_0

    .line 1894
    const-string v3, "touch_icon_url"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1895
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 1896
    if-eqz v2, :cond_0

    .line 1897
    const-string v3, "user_agent"

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1901
    :cond_0
    const-string v2, "thumbnail"

    iget-object v3, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/browser/Controller;->getDesiredThumbnailWidth(Landroid/content/Context;)I

    move-result v3

    iget-object v4, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/android/browser/Controller;->getDesiredThumbnailHeight(Landroid/content/Context;)I

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/android/browser/Controller;->createScreenshot(Landroid/webkit/WebView;II)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1904
    const-string v2, "favicon"

    invoke-virtual {v1}, Landroid/webkit/WebView;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1905
    const-string v1, "parent"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1907
    if-eqz p3, :cond_1

    .line 1908
    const-string v1, "check_for_dupe"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1912
    :cond_1
    const-string v1, "gravity"

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1913
    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1914
    return-void
.end method

.method public bookmarkedStatusHasChanged(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->bookmarkedStatusHasChanged(Lcom/android/browser/Tab;)V

    .line 1046
    return-void
.end method

.method public bookmarksOrHistoryPicker(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1161
    :goto_0
    return-void

    .line 1153
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/Controller;->isInCustomActionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1154
    invoke-virtual {p0}, Lcom/android/browser/Controller;->endActionMode()V

    .line 1156
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1158
    const-string v1, "disable_new_window"

    iget-object v2, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1160
    iget-object v1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1, p1, v0}, Lcom/android/browser/UI;->showComboView(ZLandroid/os/Bundle;)V

    goto :goto_0

    .line 1158
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public closeCurrentTab()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2282
    invoke-virtual {p0}, Lcom/android/browser/Controller;->removeComboView()V

    .line 2283
    iget-object v4, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 2284
    .local v0, current:Lcom/android/browser/Tab;
    iget-object v4, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v4

    if-ne v4, v5, :cond_1

    .line 2285
    iget-object v4, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 2305
    :cond_0
    :goto_0
    return-void

    .line 2288
    :cond_1
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getParentTab()Lcom/android/browser/Tab;

    move-result-object v3

    .line 2289
    .local v3, parent:Lcom/android/browser/Tab;
    const/4 v2, -0x1

    .line 2290
    .local v2, indexToShow:I
    if-eqz v3, :cond_3

    .line 2291
    iget-object v4, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4, v3}, Lcom/android/browser/TabControl;->getTabIndex(Lcom/android/browser/Tab;)I

    move-result v2

    .line 2301
    :cond_2
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/browser/Controller;->switchToTab(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2303
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->closeTab(Lcom/android/browser/Tab;)V

    goto :goto_0

    .line 2293
    :cond_3
    iget-object v4, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->getCurrentIndex()I

    move-result v1

    .line 2295
    .local v1, currentIndex:I
    add-int/lit8 v2, v1, 0x1

    .line 2296
    iget-object v4, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v4

    sub-int/2addr v4, v5

    if-le v2, v4, :cond_2

    .line 2298
    sub-int v2, v1, v5

    goto :goto_1
.end method

.method protected closeEmptyChildTab()V
    .locals 3

    .prologue
    .line 2132
    iget-object v2, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 2133
    .local v0, current:Lcom/android/browser/Tab;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v2

    if-nez v2, :cond_0

    .line 2135
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getParentTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 2136
    .local v1, parent:Lcom/android/browser/Tab;
    if-eqz v1, :cond_0

    .line 2137
    iget-object v2, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2, v1}, Lcom/android/browser/TabControl;->getTabIndex(Lcom/android/browser/Tab;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/browser/Controller;->switchToTab(I)Z

    .line 2138
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->closeTab(Lcom/android/browser/Tab;)V

    .line 2141
    .end local v1           #parent:Lcom/android/browser/Tab;
    :cond_0
    return-void
.end method

.method public closeTab(Lcom/android/browser/Tab;)V
    .locals 4
    .parameter "tab"

    .prologue
    .line 2314
    invoke-virtual {p0}, Lcom/android/browser/Controller;->removeComboView()V

    .line 2315
    iget-object v3, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getCurrentIndex()I

    move-result v0

    .line 2316
    .local v0, currentIndex:I
    iget-object v3, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3, p1}, Lcom/android/browser/TabControl;->getTabIndex(Lcom/android/browser/Tab;)I

    move-result v2

    .line 2317
    .local v2, removeIndex:I
    iget-object v3, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3, v0}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v1

    .line 2318
    .local v1, newtab:Lcom/android/browser/Tab;
    invoke-virtual {p0, v1}, Lcom/android/browser/Controller;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 2319
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller;->removeTab(Lcom/android/browser/Tab;)V

    .line 2320
    return-void
.end method

.method public createSubWindow(Lcom/android/browser/Tab;)V
    .locals 4
    .parameter "tab"

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/android/browser/Controller;->endActionMode()V

    .line 376
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 377
    .local v0, mainView:Landroid/webkit/WebView;
    iget-object v2, p0, Lcom/android/browser/Controller;->mFactory:Lcom/android/browser/WebViewFactory;

    if-nez v0, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2, v3}, Lcom/android/browser/WebViewFactory;->createWebView(Z)Landroid/webkit/WebView;

    move-result-object v1

    .line 380
    .local v1, subView:Landroid/webkit/WebView;
    iget-object v2, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v2, p1, v1}, Lcom/android/browser/UI;->createSubWindow(Lcom/android/browser/Tab;Landroid/webkit/WebView;)V

    .line 381
    return-void

    .line 377
    .end local v1           #subView:Landroid/webkit/WebView;
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v3

    goto :goto_0
.end method

.method didUserStopLoading()Z
    .locals 1

    .prologue
    .line 757
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mLoadStopped:Z

    return v0
.end method

.method public dismissSubWindow(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 2167
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller;->removeSubWindow(Lcom/android/browser/Tab;)V

    .line 2169
    invoke-virtual {p1}, Lcom/android/browser/Tab;->dismissSubWindow()V

    .line 2170
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 2171
    return-void
.end method

.method public doUpdateVisitedHistory(Lcom/android/browser/Tab;Z)V
    .locals 6
    .parameter "tab"
    .parameter "isReload"

    .prologue
    const/4 v2, 0x0

    .line 921
    invoke-virtual {p1}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 930
    :cond_0
    :goto_0
    return-void

    .line 922
    :cond_1
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    .line 924
    .local v0, url:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    const-string v3, "about:"

    const/4 v5, 0x6

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 928
    iget-object v1, p0, Lcom/android/browser/Controller;->mDataController:Lcom/android/browser/DataController;

    invoke-virtual {v1, v0}, Lcom/android/browser/DataController;->updateVisitedHistory(Ljava/lang/String;)V

    .line 929
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebIconDatabase;->retainIconForPageUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public editUrl()V
    .locals 2

    .prologue
    .line 1060
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mOptionsMenuOpen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 1061
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/browser/UI;->editUrl(Z)V

    .line 1062
    return-void
.end method

.method public endActionMode()V
    .locals 1

    .prologue
    .line 1856
    iget-object v0, p0, Lcom/android/browser/Controller;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1857
    iget-object v0, p0, Lcom/android/browser/Controller;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1859
    :cond_0
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getCurrentTopWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 1818
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 1823
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 998
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method getMaxTabs()I
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method getSettings()Lcom/android/browser/BrowserSettings;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    return-object v0
.end method

.method public getTabControl()Lcom/android/browser/TabControl;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    return-object v0
.end method

.method public getTabs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/browser/Tab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getTabs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUi()Lcom/android/browser/UI;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 934
    .local p1, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<[Ljava/lang/String;>;"
    new-instance v0, Lcom/android/browser/Controller$4;

    invoke-direct {v0, p0, p1}, Lcom/android/browser/Controller$4;-><init>(Lcom/android/browser/Controller;Landroid/webkit/ValueCallback;)V

    .line 945
    .local v0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;[Ljava/lang/String;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 946
    return-void
.end method

.method public getWebViewFactory()Lcom/android/browser/WebViewFactory;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/browser/Controller;->mFactory:Lcom/android/browser/WebViewFactory;

    return-object v0
.end method

.method goBackOnePageOrQuit()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2368
    iget-object v3, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 2369
    .local v0, current:Lcom/android/browser/Tab;
    if-nez v0, :cond_0

    .line 2377
    iget-object v3, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 2408
    :goto_0
    return-void

    .line 2380
    :cond_0
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    .line 2381
    .local v2, w:Landroid/webkit/WebView;
    invoke-virtual {v2}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2382
    invoke-virtual {v2}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 2386
    :cond_1
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getParentTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 2387
    .local v1, parent:Lcom/android/browser/Tab;
    if-eqz v1, :cond_2

    .line 2388
    iget-object v3, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3, v1}, Lcom/android/browser/TabControl;->getTabIndex(Lcom/android/browser/Tab;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/browser/Controller;->switchToTab(I)Z

    .line 2390
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->closeTab(Lcom/android/browser/Tab;)V

    goto :goto_0

    .line 2392
    :cond_2
    invoke-virtual {v0}, Lcom/android/browser/Tab;->closeOnExit()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2396
    invoke-virtual {p0}, Lcom/android/browser/Controller;->closeCurrentTab()V

    .line 2405
    :cond_3
    iget-object v3, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    goto :goto_0
.end method

.method public handleNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/browser/Controller;->mIntentHandler:Lcom/android/browser/IntentHandler;

    invoke-virtual {v0, p1}, Lcom/android/browser/IntentHandler;->onNewIntent(Landroid/content/Intent;)V

    .line 602
    return-void
.end method

.method public hideAutoLogin(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 1021
    sget-boolean v0, Lcom/android/browser/Controller;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1022
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->hideAutoLogin(Lcom/android/browser/Tab;)V

    .line 1023
    return-void
.end method

.method public hideCustomView()V
    .locals 1

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->isCustomViewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1102
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->onHideCustomView()V

    .line 1104
    iget v0, p0, Lcom/android/browser/Controller;->mOldMenuState:I

    iput v0, p0, Lcom/android/browser/Controller;->mMenuState:I

    .line 1105
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/Controller;->mOldMenuState:I

    .line 1106
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1108
    :cond_0
    return-void
.end method

.method protected isActivityPaused()Z
    .locals 1

    .prologue
    .line 721
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    return v0
.end method

.method public isInCustomActionMode()Z
    .locals 1

    .prologue
    .line 1848
    iget-object v0, p0, Lcom/android/browser/Controller;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInLoad()Z
    .locals 1

    .prologue
    .line 1872
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mInLoad:Z

    return v0
.end method

.method public isMenuDown()Z
    .locals 1

    .prologue
    .line 2627
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mMenuIsDown:Z

    return v0
.end method

.method protected loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "url"

    .prologue
    .line 2343
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2344
    return-void
.end method

.method protected loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/IntentHandler$UrlData;)V
    .locals 0
    .parameter "t"
    .parameter "data"

    .prologue
    .line 2353
    invoke-virtual {p2, p1}, Lcom/android/browser/IntentHandler$UrlData;->loadIn(Lcom/android/browser/Tab;)V

    .line 2354
    return-void
.end method

.method protected loadUrlFromContext(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 2327
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2328
    invoke-static {p2}, Lcom/android/browser/UrlUtils;->smartUrlFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2329
    invoke-virtual {p1}, Landroid/webkit/WebView;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2330
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/Controller;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2333
    :cond_0
    return-void
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 1866
    invoke-virtual {p0}, Lcom/android/browser/Controller;->isInCustomActionMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1869
    :goto_0
    return-void

    .line 1867
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    iget-boolean v1, p0, Lcom/android/browser/Controller;->mInLoad:Z

    invoke-interface {v0, v1}, Lcom/android/browser/UI;->onActionModeFinished(Z)V

    .line 1868
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/Controller;->mActionMode:Landroid/view/ActionMode;

    goto :goto_0
.end method

.method onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1839
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 1840
    iput-object p1, p0, Lcom/android/browser/Controller;->mActionMode:Landroid/view/ActionMode;

    .line 1841
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1112
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1140
    :goto_0
    return-void

    .line 1113
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1139
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    goto :goto_0

    .line 1115
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    if-eqz p3, :cond_1

    .line 1116
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1117
    const-string v1, "privacy_clear_history"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1118
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->removeParentChildRelationShips()V

    goto :goto_1

    .line 1124
    :pswitch_1
    iget-object v0, p0, Lcom/android/browser/Controller;->mUploadHandler:Lcom/android/browser/UploadHandler;

    if-eqz v0, :cond_1

    .line 1125
    iget-object v0, p0, Lcom/android/browser/Controller;->mUploadHandler:Lcom/android/browser/UploadHandler;

    invoke-virtual {v0, p2, p3}, Lcom/android/browser/UploadHandler;->onResult(ILandroid/content/Intent;)V

    goto :goto_1

    .line 1131
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getSettings()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getAutoFillProfile()Landroid/webkit/WebSettings$AutoFillProfile;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1132
    iget-object v0, p0, Lcom/android/browser/Controller;->mAutoFillSetupMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/Controller;->mAutoFillSetupMessage:Landroid/os/Message;

    goto :goto_1

    .line 1113
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onBackKey()V
    .locals 2

    .prologue
    .line 1221
    iget-object v1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1}, Lcom/android/browser/UI;->onBackKey()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1222
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentSubWindow()Landroid/webkit/WebView;

    move-result-object v0

    .line 1223
    .local v0, subwindow:Landroid/webkit/WebView;
    if-eqz v0, :cond_2

    .line 1224
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1225
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 1233
    .end local v0           #subwindow:Landroid/webkit/WebView;
    :cond_0
    :goto_0
    return-void

    .line 1227
    .restart local v0       #subwindow:Landroid/webkit/WebView;
    :cond_1
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/browser/Controller;->dismissSubWindow(Lcom/android/browser/Tab;)V

    goto :goto_0

    .line 1230
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/Controller;->goBackOnePageOrQuit()V

    goto :goto_0
.end method

.method protected onConfgurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 592
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/Controller;->mConfigChanged:Z

    .line 593
    iget-object v0, p0, Lcom/android/browser/Controller;->mPageDialogsHandler:Lcom/android/browser/PageDialogsHandler;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/android/browser/Controller;->mPageDialogsHandler:Lcom/android/browser/PageDialogsHandler;

    invoke-virtual {v0, p1}, Lcom/android/browser/PageDialogsHandler;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 597
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 1718
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    const v1, 0x7f1000e5

    if-ne v0, v1, :cond_0

    move v0, v6

    .line 1760
    :goto_0
    return v0

    .line 1722
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1723
    const/4 v1, 0x1

    .line 1724
    sparse-switch v0, :sswitch_data_0

    .line 1758
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 1727
    :sswitch_0
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 1728
    if-nez v0, :cond_1

    move v0, v6

    .line 1730
    goto :goto_0

    .line 1732
    :cond_1
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 1733
    if-nez v0, :cond_2

    move v0, v6

    .line 1735
    goto :goto_0

    .line 1737
    :cond_2
    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/Controller;->copy(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 1738
    goto :goto_0

    .line 1743
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v2

    .line 1744
    if-nez v2, :cond_3

    move v0, v6

    .line 1746
    goto :goto_0

    .line 1748
    :cond_3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1750
    const-string v4, "webview"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1751
    iget-object v4, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x66

    invoke-virtual {v4, v5, v0, v6, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1753
    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->requestFocusNodeHref(Landroid/os/Message;)V

    move v0, v1

    .line 1754
    goto :goto_0

    .line 1724
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1000a1 -> :sswitch_1
        0x7f1000d7 -> :sswitch_1
        0x7f1000d8 -> :sswitch_1
        0x7f1000e8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 1812
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    iget-boolean v1, p0, Lcom/android/browser/Controller;->mInLoad:Z

    invoke-interface {v0, p1, v1}, Lcom/android/browser/UI;->onContextMenuClosed(Landroid/view/Menu;Z)V

    .line 1813
    return-void
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0x8

    const/4 v6, 0x7

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1257
    instance-of v0, p2, Lcom/android/browser/TitleBarBase;

    if-eqz v0, :cond_1

    .line 1416
    :cond_0
    :goto_0
    return-void

    .line 1260
    :cond_1
    instance-of v0, p2, Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1263
    check-cast p2, Landroid/webkit/WebView;

    .line 1264
    invoke-virtual {p2}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    .line 1265
    if-eqz v0, :cond_0

    .line 1269
    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v1

    .line 1270
    if-nez v1, :cond_2

    .line 1271
    const-string v0, "Controller"

    const-string v1, "We should not show context menu when nothing is touched"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1275
    :cond_2
    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    .line 1283
    iget-object v2, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    .line 1284
    const v3, 0x7f0f0003

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1287
    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v0

    .line 1288
    const v2, 0x7f1000cb

    if-ne v1, v8, :cond_8

    move v3, v5

    :goto_1
    invoke-interface {p1, v2, v3}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 1290
    const v2, 0x7f1000cf

    const/4 v3, 0x4

    if-ne v1, v3, :cond_9

    move v3, v5

    :goto_2
    invoke-interface {p1, v2, v3}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 1292
    const v2, 0x7f1000d2

    const/4 v3, 0x3

    if-ne v1, v3, :cond_a

    move v3, v5

    :goto_3
    invoke-interface {p1, v2, v3}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 1294
    const v2, 0x7f1000d9

    const/4 v3, 0x5

    if-eq v1, v3, :cond_3

    if-ne v1, v7, :cond_b

    :cond_3
    move v3, v5

    :goto_4
    invoke-interface {p1, v2, v3}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 1297
    const v2, 0x7f1000d5

    if-eq v1, v6, :cond_4

    if-ne v1, v7, :cond_c

    :cond_4
    move v3, v5

    :goto_5
    invoke-interface {p1, v2, v3}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 1300
    if-eq v1, v6, :cond_5

    if-eq v1, v8, :cond_5

    const/4 v2, 0x4

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-ne v1, v2, :cond_d

    :cond_5
    move v2, v5

    .line 1304
    :goto_6
    const v3, 0x7f1000dd

    invoke-interface {p1, v3, v2}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 1305
    if-eqz v2, :cond_6

    .line 1306
    const v2, 0x7f1000de

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v3, Lcom/android/browser/Controller$SelectText;

    invoke-direct {v3, p2}, Lcom/android/browser/Controller$SelectText;-><init>(Landroid/webkit/WebView;)V

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1310
    :cond_6
    packed-switch v1, :pswitch_data_0

    .line 1411
    :pswitch_0
    const-string v0, "Controller"

    const-string v1, "We should not get here."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    :cond_7
    :goto_7
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->onContextMenuCreated(Landroid/view/Menu;)V

    goto/16 :goto_0

    :cond_8
    move v3, v4

    .line 1288
    goto :goto_1

    :cond_9
    move v3, v4

    .line 1290
    goto :goto_2

    :cond_a
    move v3, v4

    .line 1292
    goto :goto_3

    :cond_b
    move v3, v4

    .line 1294
    goto :goto_4

    :cond_c
    move v3, v4

    .line 1297
    goto :goto_5

    :cond_d
    move v2, v4

    .line 1300
    goto :goto_6

    .line 1312
    :pswitch_1
    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1313
    const v1, 0x7f1000cc

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1316
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1317
    const-string v2, "phone"

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1318
    const-string v2, "vnd.android.cursor.item/contact"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1319
    const v2, 0x7f1000cd

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1321
    const v1, 0x7f1000ce

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lcom/android/browser/Controller$Copy;

    invoke-direct {v2, p0, v0}, Lcom/android/browser/Controller$Copy;-><init>(Lcom/android/browser/Controller;Ljava/lang/CharSequence;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_7

    .line 1327
    :pswitch_2
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1328
    const v1, 0x7f1000d0

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mailto:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1331
    const v1, 0x7f1000d1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lcom/android/browser/Controller$Copy;

    invoke-direct {v2, p0, v0}, Lcom/android/browser/Controller$Copy;-><init>(Lcom/android/browser/Controller;Ljava/lang/CharSequence;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_7

    .line 1337
    :pswitch_3
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1338
    const v1, 0x7f1000d3

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "geo:0,0?q="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1342
    const v1, 0x7f1000d4

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lcom/android/browser/Controller$Copy;

    invoke-direct {v2, p0, v0}, Lcom/android/browser/Controller$Copy;-><init>(Lcom/android/browser/Controller;Ljava/lang/CharSequence;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_7

    .line 1349
    :pswitch_4
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1351
    iget-object v2, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v2

    .line 1352
    const v3, 0x7f1000d6

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1354
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/browser/BrowserSettings;->openInBackground()Z

    move-result v4

    if-eqz v4, :cond_10

    const v4, 0x7f09006f

    :goto_8
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1358
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1359
    if-eqz v2, :cond_e

    .line 1360
    if-ne v7, v1, :cond_11

    .line 1361
    new-instance v2, Lcom/android/browser/Controller$5;

    invoke-direct {v2, p0, p2}, Lcom/android/browser/Controller$5;-><init>(Lcom/android/browser/Controller;Landroid/webkit/WebView;)V

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1392
    :cond_e
    :goto_9
    if-eq v1, v6, :cond_7

    .line 1397
    :pswitch_5
    const/4 v2, 0x5

    if-ne v1, v2, :cond_f

    .line 1398
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1400
    :cond_f
    const v1, 0x7f1000db

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1402
    const v1, 0x7f1000da

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lcom/android/browser/Controller$Download;

    iget-object v3, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v4

    invoke-direct {v2, v3, v0, v4}, Lcom/android/browser/Controller$Download;-><init>(Landroid/app/Activity;Ljava/lang/String;Z)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1405
    const v1, 0x7f1000dc

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lcom/android/browser/WallpaperHandler;

    iget-object v3, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3, v0}, Lcom/android/browser/WallpaperHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_7

    .line 1354
    :cond_10
    const v4, 0x7f09006e

    goto :goto_8

    .line 1377
    :cond_11
    new-instance v2, Lcom/android/browser/Controller$6;

    invoke-direct {v2, p0, v0}, Lcom/android/browser/Controller$6;-><init>(Lcom/android/browser/Controller;Ljava/lang/String;)V

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_9

    .line 1310
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/android/browser/Controller;->mOptionsMenuHandler:Lcom/android/browser/OptionsMenuHandler;

    if-eqz v0, :cond_0

    .line 1240
    iget-object v0, p0, Lcom/android/browser/Controller;->mOptionsMenuHandler:Lcom/android/browser/OptionsMenuHandler;

    invoke-interface {v0, p1}, Lcom/android/browser/OptionsMenuHandler;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 1252
    :goto_0
    return v0

    .line 1243
    :cond_0
    iget v0, p0, Lcom/android/browser/Controller;->mMenuState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1244
    const/4 v0, 0x0

    goto :goto_0

    .line 1246
    :cond_1
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1247
    const v1, 0x7f0f0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1248
    invoke-direct {p0, p1}, Lcom/android/browser/Controller;->updateInLoadMenuItems(Landroid/view/Menu;)V

    .line 1251
    iput-object p1, p0, Lcom/android/browser/Controller;->mCachedMenu:Landroid/view/Menu;

    .line 1252
    const/4 v0, 0x1

    goto :goto_0
.end method

.method onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 697
    iget-object v1, p0, Lcom/android/browser/Controller;->mUploadHandler:Lcom/android/browser/UploadHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/Controller;->mUploadHandler:Lcom/android/browser/UploadHandler;

    invoke-virtual {v1}, Lcom/android/browser/UploadHandler;->handled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 698
    iget-object v1, p0, Lcom/android/browser/Controller;->mUploadHandler:Lcom/android/browser/UploadHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/browser/UploadHandler;->onResult(ILandroid/content/Intent;)V

    .line 699
    iput-object v3, p0, Lcom/android/browser/Controller;->mUploadHandler:Lcom/android/browser/UploadHandler;

    .line 701
    :cond_0
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    if-nez v1, :cond_1

    .line 718
    :goto_0
    return-void

    .line 702
    :cond_1
    iget-object v1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1}, Lcom/android/browser/UI;->onDestroy()V

    .line 704
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 705
    .local v0, t:Lcom/android/browser/Tab;
    if-eqz v0, :cond_2

    .line 706
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->dismissSubWindow(Lcom/android/browser/Tab;)V

    .line 707
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->removeTab(Lcom/android/browser/Tab;)V

    .line 709
    :cond_2
    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/Controller;->mBookmarksObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 711
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->destroy()V

    .line 712
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebIconDatabase;->close()V

    .line 714
    iget-object v1, p0, Lcom/android/browser/Controller;->mSystemAllowGeolocationOrigins:Lcom/android/browser/SystemAllowGeolocationOrigins;

    invoke-virtual {v1}, Lcom/android/browser/SystemAllowGeolocationOrigins;->stop()V

    .line 715
    iput-object v3, p0, Lcom/android/browser/Controller;->mSystemAllowGeolocationOrigins:Lcom/android/browser/SystemAllowGeolocationOrigins;

    .line 717
    iget-object v1, p0, Lcom/android/browser/Controller;->mFlashchecker:Lcom/android/browser/FlashStateHandler;

    invoke-virtual {v1}, Lcom/android/browser/FlashStateHandler;->onDestroy()V

    goto :goto_0
.end method

.method public onDownloadStart(Lcom/android/browser/Tab;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .parameter "tab"
    .parameter "url"
    .parameter "userAgent"
    .parameter "contentDisposition"
    .parameter "mimetype"
    .parameter "contentLength"

    .prologue
    .line 980
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v6

    .line 981
    .local v6, w:Landroid/webkit/WebView;
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v5

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lcom/android/browser/DownloadHandler;->onDownloadStart(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 983
    invoke-virtual {v6}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v0

    if-nez v0, :cond_0

    .line 986
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 988
    invoke-virtual {p0}, Lcom/android/browser/Controller;->goBackOnePageOrQuit()V

    .line 994
    :cond_0
    :goto_0
    return-void

    .line 991
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller;->closeTab(Lcom/android/browser/Tab;)V

    goto :goto_0
.end method

.method public onFavicon(Lcom/android/browser/Tab;Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "tab"
    .parameter "view"
    .parameter "icon"

    .prologue
    .line 887
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->onTabDataChanged(Lcom/android/browser/Tab;)V

    .line 888
    invoke-virtual {p2}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/android/browser/Controller;->maybeUpdateFavicon(Lcom/android/browser/Tab;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 889
    return-void
.end method

.method onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2482
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    .line 2486
    .local v1, noModifiers:Z
    if-nez v1, :cond_1

    const/16 v4, 0x52

    if-eq v4, p1, :cond_0

    const/16 v4, 0x71

    if-eq v4, p1, :cond_0

    const/16 v4, 0x72

    if-ne v4, p1, :cond_1

    .line 2490
    :cond_0
    iput-boolean v5, p0, Lcom/android/browser/Controller;->mMenuIsDown:Z

    move v4, v6

    .line 2593
    :goto_0
    return v4

    .line 2494
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v3

    .line 2495
    .local v3, webView:Landroid/webkit/WebView;
    if-nez v3, :cond_2

    move v4, v6

    goto :goto_0

    .line 2497
    :cond_2
    const/16 v4, 0x1000

    invoke-virtual {p2, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    .line 2498
    .local v0, ctrl:Z
    invoke-virtual {p2, v5}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    .line 2500
    .local v2, shift:Z
    sparse-switch p1, :sswitch_data_0

    .line 2593
    :cond_3
    iget-object v4, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v4, p1, p2}, Lcom/android/browser/UI;->dispatchKey(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_0

    .line 2502
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2503
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2505
    invoke-direct {p0}, Lcom/android/browser/Controller;->getPrevTabIndex()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/browser/Controller;->switchToTab(I)Z

    :goto_1
    move v4, v5

    .line 2510
    goto :goto_0

    .line 2508
    :cond_4
    invoke-direct {p0}, Lcom/android/browser/Controller;->getNextTabIndex()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/browser/Controller;->switchToTab(I)Z

    goto :goto_1

    .line 2517
    :sswitch_1
    if-eqz v2, :cond_6

    .line 2518
    invoke-virtual {p0}, Lcom/android/browser/Controller;->pageUp()V

    :cond_5
    :goto_2
    move v4, v5

    .line 2522
    goto :goto_0

    .line 2519
    :cond_6
    if-eqz v1, :cond_5

    .line 2520
    invoke-virtual {p0}, Lcom/android/browser/Controller;->pageDown()V

    goto :goto_2

    .line 2524
    :sswitch_2
    if-eqz v1, :cond_3

    .line 2525
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    move v4, v5

    .line 2526
    goto :goto_0

    .line 2528
    :sswitch_3
    if-eqz v0, :cond_3

    .line 2529
    invoke-virtual {v3}, Landroid/webkit/WebView;->goBack()V

    move v4, v5

    .line 2530
    goto :goto_0

    .line 2534
    :sswitch_4
    if-eqz v0, :cond_3

    .line 2535
    invoke-virtual {v3}, Landroid/webkit/WebView;->goForward()V

    move v4, v5

    .line 2536
    goto :goto_0

    .line 2540
    :sswitch_5
    if-eqz v0, :cond_3

    .line 2541
    invoke-virtual {v3}, Landroid/webkit/WebView;->selectAll()V

    move v4, v5

    .line 2542
    goto :goto_0

    .line 2547
    :sswitch_6
    if-eqz v0, :cond_3

    .line 2548
    invoke-virtual {v3}, Landroid/webkit/WebView;->copySelection()Z

    move v4, v5

    .line 2549
    goto :goto_0

    .line 2571
    :sswitch_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2572
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2573
    invoke-virtual {p0}, Lcom/android/browser/Controller;->openIncognitoTab()Lcom/android/browser/Tab;

    :goto_3
    move v4, v5

    .line 2577
    goto :goto_0

    .line 2575
    :cond_7
    invoke-virtual {p0}, Lcom/android/browser/Controller;->openTabToHomePage()Lcom/android/browser/Tab;

    goto :goto_3

    .line 2583
    :sswitch_8
    if-eqz v0, :cond_3

    .line 2584
    invoke-virtual {p0}, Lcom/android/browser/Controller;->closeCurrentTab()V

    move v4, v5

    .line 2585
    goto/16 :goto_0

    .line 2500
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
        0x1d -> :sswitch_5
        0x1f -> :sswitch_6
        0x30 -> :sswitch_7
        0x33 -> :sswitch_8
        0x3d -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 2597
    packed-switch p1, :pswitch_data_0

    .line 2605
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2599
    :pswitch_0
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->showsWeb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2600
    invoke-virtual {p0, v1}, Lcom/android/browser/Controller;->bookmarksOrHistoryPicker(Z)V

    move v0, v1

    .line 2601
    goto :goto_0

    .line 2597
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 2609
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 2623
    :goto_0
    return v0

    .line 2610
    :cond_0
    sparse-switch p1, :sswitch_data_0

    :cond_1
    :goto_1
    move v0, v1

    .line 2623
    goto :goto_0

    .line 2614
    :sswitch_0
    iput-boolean v1, p0, Lcom/android/browser/Controller;->mMenuIsDown:Z

    goto :goto_1

    .line 2617
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2618
    invoke-virtual {p0}, Lcom/android/browser/Controller;->onBackKey()V

    .line 2619
    const/4 v0, 0x1

    goto :goto_0

    .line 2610
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
        0x71 -> :sswitch_0
        0x72 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLowMemory()V
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->freeMemory()V

    .line 726
    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 3
    .parameter "featureId"
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1778
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mOptionsMenuOpen:Z

    if-eqz v0, :cond_2

    .line 1779
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mConfigChanged:Z

    if-eqz v0, :cond_0

    .line 1783
    iput-boolean v1, p0, Lcom/android/browser/Controller;->mConfigChanged:Z

    .line 1803
    :goto_0
    return v2

    .line 1785
    :cond_0
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mExtendedMenuOpen:Z

    if-nez v0, :cond_1

    .line 1786
    iput-boolean v2, p0, Lcom/android/browser/Controller;->mExtendedMenuOpen:Z

    .line 1787
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->onExtendedMenuOpened()V

    goto :goto_0

    .line 1791
    :cond_1
    iput-boolean v1, p0, Lcom/android/browser/Controller;->mExtendedMenuOpen:Z

    .line 1792
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    iget-boolean v1, p0, Lcom/android/browser/Controller;->mInLoad:Z

    invoke-interface {v0, v1}, Lcom/android/browser/UI;->onExtendedMenuClosed(Z)V

    .line 1793
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->onOptionsMenuOpened()V

    goto :goto_0

    .line 1798
    :cond_2
    iput-boolean v2, p0, Lcom/android/browser/Controller;->mOptionsMenuOpen:Z

    .line 1799
    iput-boolean v1, p0, Lcom/android/browser/Controller;->mConfigChanged:Z

    .line 1800
    iput-boolean v1, p0, Lcom/android/browser/Controller;->mExtendedMenuOpen:Z

    .line 1801
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->onOptionsMenuOpened()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f09006a

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1509
    iget-object v0, p0, Lcom/android/browser/Controller;->mOptionsMenuHandler:Lcom/android/browser/OptionsMenuHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/Controller;->mOptionsMenuHandler:Lcom/android/browser/OptionsMenuHandler;

    invoke-interface {v0, p1}, Lcom/android/browser/OptionsMenuHandler;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    .line 1713
    :goto_0
    return v0

    .line 1514
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    const v1, 0x7f1000e5

    if-eq v0, v1, :cond_1

    .line 1517
    invoke-virtual {p0}, Lcom/android/browser/Controller;->removeComboView()V

    .line 1519
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v4

    .line 1520
    goto :goto_0

    .line 1522
    :cond_2
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mMenuIsDown:Z

    if-eqz v0, :cond_3

    .line 1527
    iput-boolean v4, p0, Lcom/android/browser/Controller;->mMenuIsDown:Z

    .line 1529
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v4

    .line 1711
    goto :goto_0

    .line 1532
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/browser/Controller;->openTabToHomePage()Lcom/android/browser/Tab;

    :cond_4
    :goto_1
    move v0, v5

    .line 1713
    goto :goto_0

    .line 1536
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/browser/Controller;->openIncognitoTab()Lcom/android/browser/Tab;

    goto :goto_1

    .line 1540
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/browser/Controller;->editUrl()V

    goto :goto_1

    .line 1544
    :pswitch_4
    invoke-virtual {p0, v4}, Lcom/android/browser/Controller;->bookmarksOrHistoryPicker(Z)V

    goto :goto_1

    .line 1548
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/browser/Controller;->showActiveTabsPage()V

    goto :goto_1

    .line 1552
    :pswitch_6
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/browser/Controller;->bookmarkCurrentPage(JZ)V

    goto :goto_1

    .line 1556
    :pswitch_7
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mInLoad:Z

    if-eqz v0, :cond_5

    .line 1557
    invoke-virtual {p0}, Lcom/android/browser/Controller;->stopLoading()V

    goto :goto_1

    .line 1559
    :cond_5
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_1

    .line 1564
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_1

    .line 1568
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    goto :goto_1

    .line 1573
    :pswitch_a
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentSubWindow()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1574
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->dismissSubWindow(Lcom/android/browser/Tab;)V

    goto :goto_1

    .line 1577
    :cond_6
    invoke-virtual {p0}, Lcom/android/browser/Controller;->closeCurrentTab()V

    goto :goto_1

    .line 1581
    :pswitch_b
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 1582
    if-eqz v0, :cond_4

    .line 1583
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->dismissSubWindow(Lcom/android/browser/Tab;)V

    .line 1584
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/Controller;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_1

    .line 1589
    :pswitch_c
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/browser/BrowserPreferencesPage;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1590
    const-string v1, "currentPage"

    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1592
    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 1596
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/webkit/WebView;->showFindDialog(Ljava/lang/String;Z)Z

    goto/16 :goto_1

    .line 1600
    :pswitch_e
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 1601
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1602
    const-string v0, "Controller"

    const-string v1, "External storage not mounted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1607
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1609
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1610
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1611
    const-string v1, "Controller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Save as Web Archive: mkdirs for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " failed!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1616
    :cond_8
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 1617
    invoke-virtual {v1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 1618
    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 1619
    new-instance v4, Lcom/android/browser/Controller$7;

    invoke-direct {v4, p0, v2, v3, v1}, Lcom/android/browser/Controller$7;-><init>(Lcom/android/browser/Controller;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/WebView;)V

    invoke-virtual {v1, v0, v5, v4}, Landroid/webkit/WebView;->saveWebArchive(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V

    goto/16 :goto_1

    .line 1650
    :pswitch_f
    iget-object v0, p0, Lcom/android/browser/Controller;->mPageDialogsHandler:Lcom/android/browser/PageDialogsHandler;

    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/android/browser/PageDialogsHandler;->showPageInfo(Lcom/android/browser/Tab;Z)V

    goto/16 :goto_1

    .line 1655
    :pswitch_10
    invoke-virtual {p0, v5}, Lcom/android/browser/Controller;->bookmarksOrHistoryPicker(Z)V

    goto/16 :goto_1

    .line 1660
    :pswitch_11
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 1661
    if-nez v0, :cond_9

    move v0, v4

    .line 1662
    goto/16 :goto_0

    .line 1664
    :cond_9
    invoke-direct {p0, v0}, Lcom/android/browser/Controller;->shareCurrentPage(Lcom/android/browser/Tab;)V

    goto/16 :goto_1

    .line 1668
    :pswitch_12
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->debugDump()V

    goto/16 :goto_1

    .line 1672
    :pswitch_13
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->dumpV8Counters()V

    goto/16 :goto_1

    .line 1676
    :pswitch_14
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomIn()Z

    goto/16 :goto_1

    .line 1680
    :pswitch_15
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomOut()Z

    goto/16 :goto_1

    .line 1684
    :pswitch_16
    invoke-virtual {p0}, Lcom/android/browser/Controller;->viewDownloads()V

    goto/16 :goto_1

    .line 1696
    :pswitch_17
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    move v1, v4

    .line 1697
    :goto_2
    sget-object v2, Lcom/android/browser/Controller;->WINDOW_SHORTCUT_ID_ARRAY:[I

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 1698
    sget-object v2, Lcom/android/browser/Controller;->WINDOW_SHORTCUT_ID_ARRAY:[I

    aget v2, v2, v1

    if-ne v2, v0, :cond_a

    .line 1699
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, v1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v0

    .line 1700
    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v2

    if-eq v0, v2, :cond_4

    .line 1702
    invoke-virtual {p0, v1}, Lcom/android/browser/Controller;->switchToTab(I)Z

    goto/16 :goto_1

    .line 1697
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1529
    :pswitch_data_0
    .packed-switch 0x7f10009f
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_6
        :pswitch_d
        :pswitch_11
        :pswitch_e
        :pswitch_f
        :pswitch_16
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_b
        :pswitch_10
        :pswitch_14
        :pswitch_15
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_8
        :pswitch_3
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
    .end packed-switch
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 1807
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/Controller;->mOptionsMenuOpen:Z

    .line 1808
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    iget-boolean v1, p0, Lcom/android/browser/Controller;->mInLoad:Z

    invoke-interface {v0, v1}, Lcom/android/browser/UI;->onOptionsMenuClosed(Z)V

    .line 1809
    return-void
.end method

.method public onPageFinished(Lcom/android/browser/Tab;)V
    .locals 4
    .parameter "tab"

    .prologue
    const/4 v3, 0x0

    .line 809
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->onTabDataChanged(Lcom/android/browser/Tab;)V

    .line 810
    invoke-virtual {p1}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 812
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/Controller;->didUserStopLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v0

    if-nez v0, :cond_2

    .line 816
    :cond_1
    iget-object v0, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6c

    invoke-virtual {v1, v2, v3, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 823
    :cond_2
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/browser/Controller;->pauseWebViewTimers(Lcom/android/browser/Tab;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 824
    iget-object v0, p0, Lcom/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 825
    iget-object v0, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 826
    iget-object v0, p0, Lcom/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 834
    :cond_3
    invoke-static {}, Lcom/android/browser/Performance;->tracePageFinished()V

    .line 835
    return-void
.end method

.method public onPageStarted(Lcom/android/browser/Tab;Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "tab"
    .parameter "view"
    .parameter "favicon"

    .prologue
    const/4 v3, 0x0

    .line 769
    iget-object v1, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6c

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 773
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->resetSync()V

    .line 775
    iget-object v1, p0, Lcom/android/browser/Controller;->mNetworkHandler:Lcom/android/browser/NetworkStateHandler;

    invoke-virtual {v1}, Lcom/android/browser/NetworkStateHandler;->isNetworkUp()Z

    move-result v1

    if-nez v1, :cond_0

    .line 776
    invoke-virtual {p2, v3}, Landroid/webkit/WebView;->setNetworkAvailable(Z)V

    .line 783
    :cond_0
    iget-boolean v1, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    if-eqz v1, :cond_1

    .line 784
    invoke-direct {p0, p1}, Lcom/android/browser/Controller;->resumeWebViewTimers(Lcom/android/browser/Tab;)V

    .line 786
    :cond_1
    iput-boolean v3, p0, Lcom/android/browser/Controller;->mLoadStopped:Z

    .line 787
    iget-object v1, p0, Lcom/android/browser/Controller;->mNetworkHandler:Lcom/android/browser/NetworkStateHandler;

    invoke-virtual {v1}, Lcom/android/browser/NetworkStateHandler;->isNetworkUp()Z

    move-result v1

    if-nez v1, :cond_2

    .line 788
    iget-object v1, p0, Lcom/android/browser/Controller;->mNetworkHandler:Lcom/android/browser/NetworkStateHandler;

    invoke-virtual {v1}, Lcom/android/browser/NetworkStateHandler;->createAndShowNetworkDialog()V

    .line 790
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/Controller;->endActionMode()V

    .line 792
    iget-object v1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1, p1}, Lcom/android/browser/UI;->onTabDataChanged(Lcom/android/browser/Tab;)V

    .line 794
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 796
    .local v0, url:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p3}, Lcom/android/browser/Controller;->maybeUpdateFavicon(Lcom/android/browser/Tab;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 798
    invoke-static {v0}, Lcom/android/browser/Performance;->tracePageStart(Ljava/lang/String;)V

    .line 805
    return-void
.end method

.method protected onPause()V
    .locals 5

    .prologue
    .line 605
    iget-object v1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1}, Lcom/android/browser/UI;->isCustomViewShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 606
    invoke-virtual {p0}, Lcom/android/browser/Controller;->hideCustomView()V

    .line 608
    :cond_0
    iget-boolean v1, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    if-eqz v1, :cond_1

    .line 609
    const-string v1, "Controller"

    const-string v2, "BrowserActivity is already paused."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :goto_0
    return-void

    .line 612
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    .line 613
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 614
    .local v0, tab:Lcom/android/browser/Tab;
    if-eqz v0, :cond_2

    .line 615
    invoke-virtual {v0}, Lcom/android/browser/Tab;->pause()V

    .line 616
    invoke-direct {p0, v0}, Lcom/android/browser/Controller;->pauseWebViewTimers(Lcom/android/browser/Tab;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 617
    iget-object v1, p0, Lcom/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 618
    iget-object v1, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6b

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/32 v3, 0x493e0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 622
    :cond_2
    iget-object v1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1}, Lcom/android/browser/UI;->onPause()V

    .line 623
    iget-object v1, p0, Lcom/android/browser/Controller;->mNetworkHandler:Lcom/android/browser/NetworkStateHandler;

    invoke-virtual {v1}, Lcom/android/browser/NetworkStateHandler;->onPause()V

    .line 625
    invoke-static {}, Landroid/webkit/WebView;->disablePlatformNotifications()V

    goto :goto_0
.end method

.method onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter

    .prologue
    const v3, 0x7f1000b8

    const v2, 0x7f1000aa

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1438
    iget-object v0, p0, Lcom/android/browser/Controller;->mOptionsMenuHandler:Lcom/android/browser/OptionsMenuHandler;

    if-eqz v0, :cond_0

    .line 1439
    iget-object v0, p0, Lcom/android/browser/Controller;->mOptionsMenuHandler:Lcom/android/browser/OptionsMenuHandler;

    invoke-interface {v0, p1}, Lcom/android/browser/OptionsMenuHandler;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 1505
    :goto_0
    return v0

    .line 1444
    :cond_0
    iget v0, p0, Lcom/android/browser/Controller;->mMenuState:I

    packed-switch v0, :pswitch_data_0

    .line 1453
    iget v0, p0, Lcom/android/browser/Controller;->mCurrentMenuState:I

    iget v1, p0, Lcom/android/browser/Controller;->mMenuState:I

    if-eq v0, v1, :cond_1

    .line 1454
    invoke-interface {p1, v2, v5}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1455
    invoke-interface {p1, v2, v5}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1456
    invoke-interface {p1, v3, v5}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1458
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 1462
    if-eqz v0, :cond_7

    .line 1463
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    .line 1464
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v2

    .line 1465
    iget-object v3, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v3}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move v6, v2

    move v2, v1

    move v1, v6

    .line 1467
    :goto_1
    const v3, 0x7f1000c5

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1468
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1470
    const v2, 0x7f1000b9

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1471
    if-nez v0, :cond_3

    move v0, v5

    :goto_2
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1473
    const v0, 0x7f1000af

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1474
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1477
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1478
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1479
    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1480
    const/high16 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1482
    const v1, 0x7f1000b2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v0, :cond_4

    move v0, v5

    :goto_3
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1484
    iget-object v0, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->isNavDump()Z

    move-result v0

    .line 1485
    const v1, 0x7f1000b6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1486
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1487
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1489
    iget-object v0, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->showDebugSettings()Z

    move-result v0

    .line 1490
    const v1, 0x7f1000b7

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1491
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1492
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1494
    const v0, 0x7f1000ab

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1495
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1497
    const v0, 0x7f1000b3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1498
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 1499
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 1500
    :goto_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, ".webarchivexml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    move v1, v5

    :goto_5
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1504
    :cond_2
    :goto_6
    iget v0, p0, Lcom/android/browser/Controller;->mMenuState:I

    iput v0, p0, Lcom/android/browser/Controller;->mCurrentMenuState:I

    .line 1505
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto/16 :goto_0

    .line 1446
    :pswitch_0
    iget v0, p0, Lcom/android/browser/Controller;->mCurrentMenuState:I

    iget v1, p0, Lcom/android/browser/Controller;->mMenuState:I

    if-eq v0, v1, :cond_2

    .line 1447
    invoke-interface {p1, v2, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1448
    invoke-interface {p1, v2, v4}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1449
    invoke-interface {p1, v3, v4}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_6

    :cond_3
    move v0, v4

    .line 1471
    goto/16 :goto_2

    :cond_4
    move v0, v4

    .line 1482
    goto/16 :goto_3

    .line 1499
    :cond_5
    const/4 v1, 0x0

    goto :goto_4

    :cond_6
    move v1, v4

    .line 1500
    goto :goto_5

    :cond_7
    move v0, v4

    move v1, v4

    move v2, v4

    goto/16 :goto_1

    .line 1444
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onProgressChanged(Lcom/android/browser/Tab;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 839
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getLoadProgress()I

    move-result v0

    .line 841
    .local v0, newProgress:I
    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 842
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 850
    iget-boolean v1, p0, Lcom/android/browser/Controller;->mInLoad:Z

    if-eqz v1, :cond_0

    .line 851
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/browser/Controller;->mInLoad:Z

    .line 852
    iget-object v1, p0, Lcom/android/browser/Controller;->mCachedMenu:Landroid/view/Menu;

    invoke-direct {p0, v1}, Lcom/android/browser/Controller;->updateInLoadMenuItems(Landroid/view/Menu;)V

    .line 863
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1, p1}, Lcom/android/browser/UI;->onProgressChanged(Lcom/android/browser/Tab;)V

    .line 864
    return-void

    .line 855
    :cond_1
    iget-boolean v1, p0, Lcom/android/browser/Controller;->mInLoad:Z

    if-nez v1, :cond_0

    .line 859
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/browser/Controller;->mInLoad:Z

    .line 860
    iget-object v1, p0, Lcom/android/browser/Controller;->mCachedMenu:Landroid/view/Menu;

    invoke-direct {p0, v1}, Lcom/android/browser/Controller;->updateInLoadMenuItems(Landroid/view/Menu;)V

    goto :goto_0
.end method

.method public onReceivedHttpAuthRequest(Lcom/android/browser/Tab;Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "tab"
    .parameter "view"
    .parameter "handler"
    .parameter "host"
    .parameter "realm"

    .prologue
    .line 952
    const/4 v3, 0x0

    .line 953
    .local v3, username:Ljava/lang/String;
    const/4 v1, 0x0

    .line 955
    .local v1, password:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/webkit/HttpAuthHandler;->useHttpAuthUsernamePassword()Z

    move-result v2

    .line 958
    .local v2, reuseHttpAuthUsernamePassword:Z
    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    .line 959
    invoke-virtual {p2, p4, p5}, Landroid/webkit/WebView;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 960
    .local v0, credentials:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 961
    const/4 v4, 0x0

    aget-object v3, v0, v4

    .line 962
    const/4 v4, 0x1

    aget-object v1, v0, v4

    .line 966
    .end local v0           #credentials:[Ljava/lang/String;
    :cond_0
    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 967
    invoke-virtual {p3, v3, v1}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    :goto_0
    return-void

    .line 969
    :cond_1
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 970
    iget-object v4, p0, Lcom/android/browser/Controller;->mPageDialogsHandler:Lcom/android/browser/PageDialogsHandler;

    invoke-virtual {v4, p1, p3, p4, p5}, Lcom/android/browser/PageDialogsHandler;->showHttpAuthentication(Lcom/android/browser/Tab;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 972
    :cond_2
    invoke-virtual {p3}, Landroid/webkit/HttpAuthHandler;->cancel()V

    goto :goto_0
.end method

.method public onReceivedTitle(Lcom/android/browser/Tab;Ljava/lang/String;)V
    .locals 3
    .parameter "tab"
    .parameter "title"

    .prologue
    .line 873
    iget-object v1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1, p1}, Lcom/android/browser/UI;->onTabDataChanged(Lcom/android/browser/Tab;)V

    .line 874
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    .line 875
    .local v0, pageUrl:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const v2, 0xc350

    if-lt v1, v2, :cond_1

    .line 883
    :cond_0
    :goto_0
    return-void

    .line 880
    :cond_1
    invoke-virtual {p1}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 881
    iget-object v1, p0, Lcom/android/browser/Controller;->mDataController:Lcom/android/browser/DataController;

    invoke-virtual {v1, v0, p2}, Lcom/android/browser/DataController;->updateHistoryTitle(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRemoveParentChildRelationships()V
    .locals 1

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->removeParentChildRelationShips()V

    .line 1170
    return-void
.end method

.method onResume()V
    .locals 3

    .prologue
    .line 643
    iget-boolean v1, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    if-nez v1, :cond_0

    .line 644
    const-string v1, "Controller"

    const-string v2, "BrowserActivity is already resumed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :goto_0
    return-void

    .line 647
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/browser/Controller;->mActivityPaused:Z

    .line 648
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 649
    .local v0, current:Lcom/android/browser/Tab;
    if-eqz v0, :cond_1

    .line 650
    invoke-virtual {v0}, Lcom/android/browser/Tab;->resume()V

    .line 651
    invoke-direct {p0, v0}, Lcom/android/browser/Controller;->resumeWebViewTimers(Lcom/android/browser/Tab;)V

    .line 653
    :cond_1
    iget-object v1, p0, Lcom/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 654
    iget-object v1, p0, Lcom/android/browser/Controller;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 655
    iget-object v1, p0, Lcom/android/browser/Controller;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 657
    :cond_2
    iget-object v1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1}, Lcom/android/browser/UI;->onResume()V

    .line 658
    iget-object v1, p0, Lcom/android/browser/Controller;->mNetworkHandler:Lcom/android/browser/NetworkStateHandler;

    invoke-virtual {v1}, Lcom/android/browser/NetworkStateHandler;->onResume()V

    .line 659
    invoke-static {}, Landroid/webkit/WebView;->enablePlatformNotifications()V

    goto :goto_0
.end method

.method onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, p1}, Lcom/android/browser/TabControl;->saveState(Landroid/os/Bundle;)V

    .line 637
    iget-object v0, p0, Lcom/android/browser/Controller;->mFlashchecker:Lcom/android/browser/FlashStateHandler;

    invoke-virtual {v0}, Lcom/android/browser/FlashStateHandler;->onStop()V

    .line 639
    const-string v0, "lastActiveDate"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 640
    return-void
.end method

.method public onSetWebView(Lcom/android/browser/Tab;Landroid/webkit/WebView;)V
    .locals 1
    .parameter "tab"
    .parameter "view"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1, p2}, Lcom/android/browser/UI;->onSetWebView(Lcom/android/browser/Tab;Landroid/webkit/WebView;)V

    .line 371
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 909
    invoke-virtual {p0}, Lcom/android/browser/Controller;->isActivityPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 910
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 911
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 916
    :cond_0
    :goto_0
    return-void

    .line 913
    :cond_1
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_0
.end method

.method public onUpdatedLockIcon(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 868
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->onTabDataChanged(Lcom/android/browser/Tab;)V

    .line 869
    return-void
.end method

.method public onUrlSelected(Ljava/lang/String;Z)V
    .locals 3
    .parameter "url"
    .parameter "newTab"

    .prologue
    .line 1177
    invoke-virtual {p0}, Lcom/android/browser/Controller;->removeComboView()V

    .line 1178
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1179
    if-eqz p2, :cond_1

    .line 1180
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/browser/Controller;->openTab(Lcom/android/browser/Tab;Ljava/lang/String;Z)Lcom/android/browser/Tab;

    .line 1187
    :cond_0
    :goto_0
    return-void

    .line 1182
    :cond_1
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 1183
    .local v0, currentTab:Lcom/android/browser/Tab;
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->dismissSubWindow(Lcom/android/browser/Tab;)V

    .line 1184
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/browser/Controller;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onUserCanceledSsl(Lcom/android/browser/Tab;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 2358
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 2360
    .local v0, web:Landroid/webkit/WebView;
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2361
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 2365
    :goto_0
    return-void

    .line 2363
    :cond_0
    iget-object v1, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "acceptType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1918
    .local p1, uploadMsg:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    new-instance v0, Lcom/android/browser/UploadHandler;

    invoke-direct {v0, p0}, Lcom/android/browser/UploadHandler;-><init>(Lcom/android/browser/Controller;)V

    iput-object v0, p0, Lcom/android/browser/Controller;->mUploadHandler:Lcom/android/browser/UploadHandler;

    .line 1919
    iget-object v0, p0, Lcom/android/browser/Controller;->mUploadHandler:Lcom/android/browser/UploadHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/UploadHandler;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    .line 1920
    return-void
.end method

.method public openIncognitoTab()Lcom/android/browser/Tab;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2245
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2246
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    .line 2247
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/android/browser/TabControl;->createNewTab(ZLjava/lang/String;Ljava/lang/String;Z)Lcom/android/browser/Tab;

    move-result-object v0

    .line 2249
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->addTab(Lcom/android/browser/Tab;)V

    .line 2250
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 2251
    new-instance v1, Lcom/android/browser/IntentHandler$UrlData;

    const-string v2, "browser:incognito"

    invoke-direct {v1, v2}, Lcom/android/browser/IntentHandler$UrlData;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/Controller;->loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/IntentHandler$UrlData;)V

    .line 2255
    :goto_0
    return-object v0

    .line 2254
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->showMaxTabsWarning()V

    move-object v0, v3

    .line 2255
    goto :goto_0
.end method

.method protected openTab(Lcom/android/browser/Tab;Ljava/lang/String;Z)Lcom/android/browser/Tab;
    .locals 6
    .parameter "parent"
    .parameter "url"
    .parameter "forceForeground"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2201
    iget-object v2, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v2}, Lcom/android/browser/BrowserSettings;->openInBackground()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez p3, :cond_2

    .line 2202
    iget-object v2, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v4, v5, v5, v3}, Lcom/android/browser/TabControl;->createNewTab(ZLjava/lang/String;Ljava/lang/String;Z)Lcom/android/browser/Tab;

    move-result-object v0

    .line 2204
    .local v0, tab:Lcom/android/browser/Tab;
    if-eqz v0, :cond_0

    .line 2205
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->addTab(Lcom/android/browser/Tab;)V

    .line 2206
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 2207
    .local v1, view:Landroid/webkit/WebView;
    invoke-virtual {p0, v1, p2}, Lcom/android/browser/Controller;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    .end local v1           #view:Landroid/webkit/WebView;
    :cond_0
    move-object v2, v0

    .line 2211
    .end local v0           #tab:Lcom/android/browser/Tab;
    :goto_1
    return-object v2

    :cond_1
    move v3, v4

    .line 2202
    goto :goto_0

    .line 2211
    :cond_2
    new-instance v2, Lcom/android/browser/IntentHandler$UrlData;

    invoke-direct {v2, p2}, Lcom/android/browser/IntentHandler$UrlData;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2, v4, v5}, Lcom/android/browser/Controller;->openTabAndShow(Lcom/android/browser/Tab;Lcom/android/browser/IntentHandler$UrlData;ZLjava/lang/String;)Lcom/android/browser/Tab;

    move-result-object v2

    goto :goto_1
.end method

.method public openTabAndShow(Lcom/android/browser/Tab;Lcom/android/browser/IntentHandler$UrlData;ZLjava/lang/String;)Lcom/android/browser/Tab;
    .locals 6
    .parameter "parent"
    .parameter "urlData"
    .parameter "closeOnExit"
    .parameter "appId"

    .prologue
    .line 2221
    iget-object v3, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 2222
    .local v0, currentTab:Lcom/android/browser/Tab;
    iget-object v3, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2223
    iget-object v3, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    iget-object v4, p2, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v3, p3, p4, v4, v5}, Lcom/android/browser/TabControl;->createNewTab(ZLjava/lang/String;Ljava/lang/String;Z)Lcom/android/browser/Tab;

    move-result-object v1

    .line 2226
    .local v1, tab:Lcom/android/browser/Tab;
    invoke-virtual {v1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    .line 2229
    .local v2, webview:Landroid/webkit/WebView;
    invoke-virtual {p0, v1}, Lcom/android/browser/Controller;->addTab(Lcom/android/browser/Tab;)V

    .line 2230
    invoke-virtual {p0, v1}, Lcom/android/browser/Controller;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 2231
    invoke-virtual {p2}, Lcom/android/browser/IntentHandler$UrlData;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2232
    invoke-virtual {p0, v1, p2}, Lcom/android/browser/Controller;->loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/IntentHandler$UrlData;)V

    :cond_0
    move-object v3, v1

    .line 2239
    .end local v1           #tab:Lcom/android/browser/Tab;
    .end local v2           #webview:Landroid/webkit/WebView;
    :goto_1
    return-object v3

    .line 2223
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 2237
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->dismissSubWindow(Lcom/android/browser/Tab;)V

    .line 2238
    invoke-virtual {p0, v0, p4, p2}, Lcom/android/browser/Controller;->reuseTab(Lcom/android/browser/Tab;Ljava/lang/String;Lcom/android/browser/IntentHandler$UrlData;)V

    move-object v3, v0

    .line 2239
    goto :goto_1
.end method

.method public openTabToHomePage()Lcom/android/browser/Tab;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2191
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2192
    new-instance v0, Lcom/android/browser/IntentHandler$UrlData;

    iget-object v1, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/browser/IntentHandler$UrlData;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1, v2}, Lcom/android/browser/Controller;->openTabAndShow(Lcom/android/browser/Tab;Lcom/android/browser/IntentHandler$UrlData;ZLjava/lang/String;)Lcom/android/browser/Tab;

    move-result-object v0

    .line 2196
    :goto_0
    return-object v0

    .line 2195
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->showMaxTabsWarning()V

    move-object v0, v2

    .line 2196
    goto :goto_0
.end method

.method protected pageDown()V
    .locals 2

    .prologue
    .line 1055
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->pageDown(Z)Z

    .line 1056
    return-void
.end method

.method protected pageUp()V
    .locals 2

    .prologue
    .line 1051
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->pageUp(Z)Z

    .line 1052
    return-void
.end method

.method public registerDropdownChangeListener(Lcom/android/browser/UI$DropdownChangeListener;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 2655
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->registerDropdownChangeListener(Lcom/android/browser/UI$DropdownChangeListener;)V

    .line 2656
    return-void
.end method

.method public registerOptionsMenuHandler(Lcom/android/browser/OptionsMenuHandler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 2643
    iput-object p1, p0, Lcom/android/browser/Controller;->mOptionsMenuHandler:Lcom/android/browser/OptionsMenuHandler;

    .line 2644
    return-void
.end method

.method public removeActiveTabsPage(Z)V
    .locals 1
    .parameter "needToAttach"

    .prologue
    .line 1211
    const v0, 0x7f1000aa

    iput v0, p0, Lcom/android/browser/Controller;->mMenuState:I

    .line 1212
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->removeActiveTabsPage()V

    .line 1213
    if-eqz p1, :cond_0

    .line 1214
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 1216
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 1217
    return-void
.end method

.method public removeComboView()V
    .locals 1

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->hideComboView()V

    .line 1195
    return-void
.end method

.method public removeSubWindow(Lcom/android/browser/Tab;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 2175
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getSubWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2176
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getSubViewContainer()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/browser/UI;->removeSubWindow(Landroid/view/View;)V

    .line 2178
    :cond_0
    return-void
.end method

.method protected removeTab(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 2118
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->removeTab(Lcom/android/browser/Tab;)V

    .line 2119
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, p1}, Lcom/android/browser/TabControl;->removeTab(Lcom/android/browser/Tab;)Z

    .line 2120
    return-void
.end method

.method protected reuseTab(Lcom/android/browser/Tab;Ljava/lang/String;Lcom/android/browser/IntentHandler$UrlData;)V
    .locals 1
    .parameter "appTab"
    .parameter "appId"
    .parameter "urlData"

    .prologue
    .line 2145
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller;->dismissSubWindow(Lcom/android/browser/Tab;)V

    .line 2148
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->detachTab(Lcom/android/browser/Tab;)V

    .line 2150
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, p1}, Lcom/android/browser/TabControl;->recreateWebView(Lcom/android/browser/Tab;)V

    .line 2152
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->attachTab(Lcom/android/browser/Tab;)V

    .line 2153
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 2154
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, p1}, Lcom/android/browser/TabControl;->getTabIndex(Lcom/android/browser/Tab;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/browser/Controller;->switchToTab(I)Z

    .line 2155
    invoke-virtual {p0, p1, p3}, Lcom/android/browser/Controller;->loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/IntentHandler$UrlData;)V

    .line 2162
    :goto_0
    return-void

    .line 2159
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 2160
    invoke-virtual {p0, p1, p3}, Lcom/android/browser/Controller;->loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/IntentHandler$UrlData;)V

    goto :goto_0
.end method

.method public revertVoiceSearchMode(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->revertVoiceTitleBar(Lcom/android/browser/Tab;)V

    .line 1081
    return-void
.end method

.method protected setActiveTab(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 2124
    if-eqz p1, :cond_0

    .line 2125
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, p1}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/Tab;)Z

    .line 2127
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 2129
    :cond_0
    return-void
.end method

.method protected setShouldShowErrorConsole(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 734
    iget-boolean v1, p0, Lcom/android/browser/Controller;->mShouldShowErrorConsole:Z

    if-ne p1, v1, :cond_1

    .line 745
    :cond_0
    :goto_0
    return-void

    .line 738
    :cond_1
    iput-boolean p1, p0, Lcom/android/browser/Controller;->mShouldShowErrorConsole:Z

    .line 739
    iget-object v1, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 740
    .local v0, t:Lcom/android/browser/Tab;
    if-eqz v0, :cond_0

    .line 744
    iget-object v1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v1, v0, p1}, Lcom/android/browser/UI;->setShouldShowErrorConsole(Lcom/android/browser/Tab;Z)V

    goto :goto_0
.end method

.method setUi(Lcom/android/browser/UI;)V
    .locals 0
    .parameter "ui"

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    .line 390
    return-void
.end method

.method setWebViewFactory(Lcom/android/browser/WebViewFactory;)V
    .locals 0
    .parameter "factory"

    .prologue
    .line 360
    iput-object p1, p0, Lcom/android/browser/Controller;->mFactory:Lcom/android/browser/WebViewFactory;

    .line 361
    return-void
.end method

.method public setupAutoFill(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 2634
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/browser/BrowserPreferencesPage;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2635
    const-string v1, ":android:show_fragment"

    const-class v2, Lcom/android/browser/AutoFillSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2637
    iput-object p1, p0, Lcom/android/browser/Controller;->mAutoFillSetupMessage:Landroid/os/Message;

    .line 2638
    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x5

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2639
    return-void
.end method

.method public shareCurrentPage()V
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/Controller;->shareCurrentPage(Lcom/android/browser/Tab;)V

    .line 542
    return-void
.end method

.method public shouldOverrideKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 898
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mMenuIsDown:Z

    if-eqz v0, :cond_0

    .line 900
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/Window;->isShortcutKey(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 903
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Lcom/android/browser/Tab;Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter "tab"
    .parameter "view"
    .parameter "url"

    .prologue
    .line 893
    iget-object v0, p0, Lcom/android/browser/Controller;->mUrlHandler:Lcom/android/browser/UrlHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/browser/UrlHandler;->shouldOverrideUrlLoading(Lcom/android/browser/Tab;Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public shouldShowErrorConsole()Z
    .locals 1

    .prologue
    .line 730
    iget-boolean v0, p0, Lcom/android/browser/Controller;->mShouldShowErrorConsole:Z

    return v0
.end method

.method protected showActiveTabsPage()V
    .locals 1

    .prologue
    .line 1200
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/Controller;->mMenuState:I

    .line 1201
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->showActiveTabsPage()V

    .line 1202
    return-void
.end method

.method public showAutoLogin(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 1014
    sget-boolean v0, Lcom/android/browser/Controller;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1016
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p1}, Lcom/android/browser/UI;->showAutoLogin(Lcom/android/browser/Tab;)V

    .line 1017
    return-void
.end method

.method public showCustomView(Lcom/android/browser/Tab;Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1
    .parameter "tab"
    .parameter "view"
    .parameter "callback"

    .prologue
    .line 1085
    invoke-virtual {p1}, Lcom/android/browser/Tab;->inForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0}, Lcom/android/browser/UI;->isCustomViewShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1087
    invoke-interface {p3}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 1097
    :cond_0
    :goto_0
    return-void

    .line 1090
    :cond_1
    iget-object v0, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v0, p2, p3}, Lcom/android/browser/UI;->showCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 1093
    iget v0, p0, Lcom/android/browser/Controller;->mMenuState:I

    iput v0, p0, Lcom/android/browser/Controller;->mOldMenuState:I

    .line 1094
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/Controller;->mMenuState:I

    .line 1095
    iget-object v0, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public showSslCertificateOnError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1
    .parameter "view"
    .parameter "handler"
    .parameter "error"

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/android/browser/Controller;->mPageDialogsHandler:Lcom/android/browser/PageDialogsHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/browser/PageDialogsHandler;->showSSLCertificateOnError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 1010
    return-void
.end method

.method start(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 12
    .parameter "icicle"
    .parameter "intent"

    .prologue
    const/4 v11, 0x1

    const/4 v1, -0x1

    .line 263
    if-eqz p1, :cond_2

    const-string v0, "lastActiveDate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    move-object v7, v0

    .line 265
    .local v7, lastActiveDate:Ljava/util/Calendar;
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 266
    .local v8, today:Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 267
    .local v9, yesterday:Ljava/util/Calendar;
    const/4 v0, 0x5

    invoke-virtual {v9, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 269
    if-eqz v7, :cond_3

    invoke-virtual {v7, v9}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v5, v11

    .line 274
    .local v5, restoreIncognitoTabs:Z
    :goto_1
    iget-object v0, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, p1, v5}, Lcom/android/browser/TabControl;->canRestoreState(Landroid/os/Bundle;Z)I

    move-result v4

    .line 277
    .local v4, currentTab:I
    if-ne v4, v1, :cond_0

    .line 281
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 284
    :cond_0
    iget-object v10, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/android/browser/Controller$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/browser/Controller$2;-><init>(Lcom/android/browser/Controller;Landroid/os/Bundle;Landroid/content/Intent;IZ)V

    invoke-static {v10, v0}, Lcom/android/browser/GoogleAccountLogin;->startLoginIfNeeded(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 291
    iget-object v0, p0, Lcom/android/browser/Controller;->mFlashchecker:Lcom/android/browser/FlashStateHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/browser/Controller;->mFlashchecker:Lcom/android/browser/FlashStateHandler;

    invoke-virtual {v0}, Lcom/android/browser/FlashStateHandler;->getNoShowFlashDialog()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/browser/Controller;->mFlashchecker:Lcom/android/browser/FlashStateHandler;

    invoke-virtual {v0}, Lcom/android/browser/FlashStateHandler;->isFlashSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 292
    new-instance v6, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 293
    .local v6, i:Landroid/content/Intent;
    const-string v0, "market://details?id=com.adobe.flashplayer"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 294
    iget-object v0, p0, Lcom/android/browser/Controller;->mFlashchecker:Lcom/android/browser/FlashStateHandler;

    if-eqz v0, :cond_1

    .line 295
    invoke-static {v11, v6}, Lcom/android/browser/FlashStateHandler;->showInstallrAlert(ZLandroid/content/Intent;)V

    .line 298
    .end local v6           #i:Landroid/content/Intent;
    :cond_1
    return-void

    .line 263
    .end local v4           #currentTab:I
    .end local v5           #restoreIncognitoTabs:Z
    .end local v7           #lastActiveDate:Ljava/util/Calendar;
    .end local v8           #today:Ljava/util/Calendar;
    .end local v9           #yesterday:Ljava/util/Calendar;
    :cond_2
    const/4 v0, 0x0

    move-object v7, v0

    goto :goto_0

    .line 269
    .restart local v7       #lastActiveDate:Ljava/util/Calendar;
    .restart local v8       #today:Ljava/util/Calendar;
    .restart local v9       #yesterday:Ljava/util/Calendar;
    :cond_3
    const/4 v0, 0x0

    move v5, v0

    goto :goto_1
.end method

.method public startSearch(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    const/4 v3, 0x0

    .line 2432
    iget-object v0, p0, Lcom/android/browser/Controller;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v3

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/browser/Controller;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 2434
    return-void

    :cond_0
    move-object v0, p1

    .line 2432
    goto :goto_0
.end method

.method public startVoiceSearch()V
    .locals 3

    .prologue
    .line 1065
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1066
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "web_search"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1068
    const-string v1, "calling_package"

    iget-object v2, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1070
    const-string v1, "android.speech.extras.SEND_APPLICATION_ID_EXTRA"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1071
    const-string v1, "android.speech.extra.WEB_SEARCH_ONLY"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1072
    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1073
    return-void
.end method

.method public stopLoading()V
    .locals 3

    .prologue
    .line 749
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/browser/Controller;->mLoadStopped:Z

    .line 750
    iget-object v2, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 751
    .local v0, tab:Lcom/android/browser/Tab;
    invoke-virtual {p0}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 752
    .local v1, w:Landroid/webkit/WebView;
    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    .line 753
    iget-object v2, p0, Lcom/android/browser/Controller;->mUi:Lcom/android/browser/UI;

    invoke-interface {v2, v0}, Lcom/android/browser/UI;->onPageStopped(Lcom/android/browser/Tab;)V

    .line 754
    return-void
.end method

.method public switchToTab(I)Z
    .locals 3
    .parameter "index"

    .prologue
    .line 2269
    invoke-virtual {p0}, Lcom/android/browser/Controller;->removeComboView()V

    .line 2270
    iget-object v2, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2, p1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v1

    .line 2271
    .local v1, tab:Lcom/android/browser/Tab;
    iget-object v2, p0, Lcom/android/browser/Controller;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 2272
    .local v0, currentTab:Lcom/android/browser/Tab;
    if-eqz v1, :cond_0

    if-ne v1, v0, :cond_1

    .line 2273
    :cond_0
    const/4 v2, 0x0

    .line 2276
    :goto_0
    return v2

    .line 2275
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/browser/Controller;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 2276
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public unregisterOptionsMenuHandler(Lcom/android/browser/OptionsMenuHandler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 2648
    iget-object v0, p0, Lcom/android/browser/Controller;->mOptionsMenuHandler:Lcom/android/browser/OptionsMenuHandler;

    if-ne v0, p1, :cond_0

    .line 2649
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/Controller;->mOptionsMenuHandler:Lcom/android/browser/OptionsMenuHandler;

    .line 2651
    :cond_0
    return-void
.end method

.method viewDownloads()V
    .locals 2

    .prologue
    .line 1832
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1833
    iget-object v1, p0, Lcom/android/browser/Controller;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1834
    return-void
.end method
