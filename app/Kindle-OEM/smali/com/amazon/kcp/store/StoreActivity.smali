.class public Lcom/amazon/kcp/store/StoreActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "StoreActivity.java"

# interfaces
.implements Landroid/webkit/WebView$PictureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/store/StoreActivity$StoreWebViewClient;
    }
.end annotation


# static fields
.field public static final ASIN_KEY:Ljava/lang/String; = "asin"

.field private static final KINDLE_PROTOCOL:Ljava/lang/String; = "kindle://"

.field private static final KINDLE_STORE_REGEX:Ljava/lang/String; = "https?://www\\.amazon\\..*"

.field private static final MAX_NUM_CREDENTIAL_ATTEMPTS:I = 0x3

.field private static final POP_OUT_TOKEN:Ljava/lang/String; = "PopOutOfWebView"

.field public static final SHOW_PAGE_ACTION_KEY:Ljava/lang/String; = "action"

.field public static final STARTUP_TIMER_KEY:Ljava/lang/String; = "StoreStartupTimer"

.field public static final USER_AGENT_STRING:Ljava/lang/String; = "/Kindle "


# instance fields
.field private browserHost:Lcom/amazon/kcp/store/BrowserHost;

.field private credentialsUpdateFailedCallback:Lcom/amazon/foundation/ICallback;

.field private credentialsUpdatedCallback:Lcom/amazon/foundation/ICallback;

.field private jsWrapper:Lcom/amazon/kcp/store/IWebViewJSWrapper;

.field private loadingSpinner:Landroid/widget/ProgressBar;

.field private nextPageIsStoreFront:Z

.field private numCredentialAttempts:I

.field private prefetcher:Lcom/amazon/kcp/store/StorefrontPrefetcher;

.field private shouldClearHistory:Z

.field private singleSignOnEnabled:Z

.field private storeFrontUrl:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    .line 120
    new-instance v0, Lcom/amazon/kcp/store/StoreActivity$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/store/StoreActivity$1;-><init>(Lcom/amazon/kcp/store/StoreActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/store/StoreActivity;->credentialsUpdatedCallback:Lcom/amazon/foundation/ICallback;

    .line 129
    new-instance v0, Lcom/amazon/kcp/store/StoreActivity$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/store/StoreActivity$2;-><init>(Lcom/amazon/kcp/store/StoreActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/store/StoreActivity;->credentialsUpdateFailedCallback:Lcom/amazon/foundation/ICallback;

    .line 138
    new-instance v0, Lcom/amazon/kcp/store/StoreActivity$3;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/store/StoreActivity$3;-><init>(Lcom/amazon/kcp/store/StoreActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/store/StoreActivity;->jsWrapper:Lcom/amazon/kcp/store/IWebViewJSWrapper;

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/store/StoreActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/amazon/kcp/store/StoreActivity;->onCredentialsUpdated()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/store/StoreActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/amazon/kcp/store/StoreActivity;->onCredentialsUpdateFailed()V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kcp/store/StoreActivity;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreActivity;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/store/StoreActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreActivity;->loadingSpinner:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/store/StoreActivity;)Lcom/amazon/kcp/store/BrowserHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreActivity;->browserHost:Lcom/amazon/kcp/store/BrowserHost;

    return-object v0
.end method

.method private loadStorefront()V
    .locals 8

    .prologue
    .line 622
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreActivity;->prefetcher:Lcom/amazon/kcp/store/StorefrontPrefetcher;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StorefrontPrefetcher;->getStoreFrontHtml()Ljava/lang/String;

    move-result-object v2

    .line 623
    .local v2, html:Ljava/lang/String;
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreActivity;->prefetcher:Lcom/amazon/kcp/store/StorefrontPrefetcher;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StorefrontPrefetcher;->getStoreFrontBaseUrl()Ljava/lang/String;

    move-result-object v1

    .line 624
    .local v1, baseUrl:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCookieJar()Lcom/amazon/kcp/store/CookieJar;

    move-result-object v0

    const-string v3, "store_session_cookies"

    invoke-virtual {v0, v3}, Lcom/amazon/kcp/store/CookieJar;->initializeCookiesFromSecureStorage(Ljava/lang/String;)Z

    move-result v6

    .line 625
    .local v6, hasSessionCookies:Z
    invoke-static {v2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v6, :cond_0

    .line 627
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreActivity;->prefetcher:Lcom/amazon/kcp/store/StorefrontPrefetcher;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StorefrontPrefetcher;->getStoreFrontUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/store/StoreActivity;->storeFrontUrl:Ljava/lang/String;

    .line 629
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreActivity;->webView:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    iget-object v5, p0, Lcom/amazon/kcp/store/StoreActivity;->storeFrontUrl:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    :goto_0
    return-void

    .line 637
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v3, "StoreActivity"

    const-string v4, "StoreFrontCacheMiss"

    sget-object v5, Lcom/amazon/kcp/application/metrics/MetricType;->INFO:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v0, v3, v4, v5}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 639
    new-instance v7, Lcom/amazon/kcp/store/StoreUrlBuilder;

    invoke-direct {v7, p0}, Lcom/amazon/kcp/store/StoreUrlBuilder;-><init>(Landroid/content/Context;)V

    .line 640
    .local v7, urlBuilder:Lcom/amazon/kcp/store/StoreUrlBuilder;
    const-string v0, "kin_red_lib_0"

    invoke-virtual {v7, v0}, Lcom/amazon/kcp/store/StoreUrlBuilder;->setReferralTag(Ljava/lang/String;)V

    .line 641
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Lcom/amazon/kcp/store/StoreUrlBuilder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 642
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/kcp/store/StoreActivity;->nextPageIsStoreFront:Z

    goto :goto_0
.end method

.method private onCredentialsUpdateFailed()V
    .locals 2

    .prologue
    .line 596
    iget v0, p0, Lcom/amazon/kcp/store/StoreActivity;->numCredentialAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/kcp/store/StoreActivity;->numCredentialAttempts:I

    .line 597
    iget v0, p0, Lcom/amazon/kcp/store/StoreActivity;->numCredentialAttempts:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 599
    invoke-direct {p0}, Lcom/amazon/kcp/store/StoreActivity;->unregisterCredentialsCallbacks()V

    .line 600
    invoke-direct {p0}, Lcom/amazon/kcp/store/StoreActivity;->showStoreUnavailableMessage()V

    .line 607
    :goto_0
    return-void

    .line 604
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getWebStoreController()Lcom/amazon/kcp/store/IWebStoreController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/store/IWebStoreController;->updateStoreCookies()V

    goto :goto_0
.end method

.method private onCredentialsUpdated()V
    .locals 1

    .prologue
    .line 588
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/kcp/store/StoreActivity;->singleSignOnEnabled:Z

    .line 589
    invoke-direct {p0}, Lcom/amazon/kcp/store/StoreActivity;->unregisterCredentialsCallbacks()V

    .line 590
    invoke-direct {p0}, Lcom/amazon/kcp/store/StoreActivity;->showStore()V

    .line 591
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazon/kcp/store/StoreActivity;->numCredentialAttempts:I

    .line 592
    return-void
.end method

.method private showNetworkConnectionMessage()V
    .locals 3

    .prologue
    .line 648
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreActivity;->loadingSpinner:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 649
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0107

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0108

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b000d

    new-instance v2, Lcom/amazon/kcp/store/StoreActivity$6;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/store/StoreActivity$6;-><init>(Lcom/amazon/kcp/store/StoreActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/amazon/kcp/store/StoreActivity$5;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/store/StoreActivity$5;-><init>(Lcom/amazon/kcp/store/StoreActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 671
    return-void
.end method

.method private showStore()V
    .locals 6

    .prologue
    .line 567
    iget-object v4, p0, Lcom/amazon/kcp/store/StoreActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v4, p0}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    .line 569
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "action"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    move-object v0, v4

    check-cast v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    move-object v1, v0

    .line 570
    .local v1, action:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;
    if-eqz v1, :cond_0

    .line 572
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "asin"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 573
    .local v2, asin:Ljava/lang/String;
    new-instance v3, Lcom/amazon/kcp/store/StoreUrlBuilder;

    invoke-direct {v3, p0, v1, v2}, Lcom/amazon/kcp/store/StoreUrlBuilder;-><init>(Landroid/content/Context;Lcom/amazon/kcp/store/StoreUrlBuilder$Action;Ljava/lang/String;)V

    .line 575
    .local v3, urlBuilder:Lcom/amazon/kcp/store/StoreUrlBuilder;
    iget-object v4, p0, Lcom/amazon/kcp/store/StoreActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Lcom/amazon/kcp/store/StoreUrlBuilder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 583
    .end local v2           #asin:Ljava/lang/String;
    .end local v3           #urlBuilder:Lcom/amazon/kcp/store/StoreUrlBuilder;
    :goto_0
    iget-object v4, p0, Lcom/amazon/kcp/store/StoreActivity;->prefetcher:Lcom/amazon/kcp/store/StorefrontPrefetcher;

    invoke-virtual {v4}, Lcom/amazon/kcp/store/StorefrontPrefetcher;->prefetch()V

    .line 584
    return-void

    .line 579
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/store/StoreActivity;->loadStorefront()V

    goto :goto_0
.end method

.method private showStoreUnavailableMessage()V
    .locals 3

    .prologue
    .line 675
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreActivity;->loadingSpinner:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 676
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b001d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b001e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b000d

    new-instance v2, Lcom/amazon/kcp/store/StoreActivity$8;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/store/StoreActivity$8;-><init>(Lcom/amazon/kcp/store/StoreActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b001f

    new-instance v2, Lcom/amazon/kcp/store/StoreActivity$7;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/store/StoreActivity$7;-><init>(Lcom/amazon/kcp/store/StoreActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 703
    return-void
.end method

.method private unregisterCredentialsCallbacks()V
    .locals 3

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getWebStoreController()Lcom/amazon/kcp/store/IWebStoreController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/store/WebStoreController;

    .line 612
    invoke-virtual {v0}, Lcom/amazon/kcp/store/WebStoreController;->getCredentialsUpdatedEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/store/StoreActivity;->credentialsUpdatedCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v1, v2}, Lcom/amazon/foundation/IEventProvider;->unregister(Lcom/amazon/foundation/ICallback;)Z

    .line 613
    invoke-virtual {v0}, Lcom/amazon/kcp/store/WebStoreController;->getCredentialsUpdateFailedEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/store/StoreActivity;->credentialsUpdateFailedCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->unregister(Lcom/amazon/foundation/ICallback;)Z

    .line 614
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 507
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 513
    const/4 v0, 0x1

    .line 516
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 428
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/kcp/redding/ReddingActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 435
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 437
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreActivity;->finish()V

    .line 443
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 501
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 502
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 265
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 267
    const v0, 0x7f030045

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/store/StoreActivity;->setContentView(I)V

    .line 269
    const v0, 0x7f0c00bd

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/store/StoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/amazon/kcp/store/StoreActivity;->loadingSpinner:Landroid/widget/ProgressBar;

    .line 272
    :try_start_0
    new-instance v0, Lcom/amazon/kcp/store/BrowserHost;

    iget-object v1, p0, Lcom/amazon/kcp/store/StoreActivity;->jsWrapper:Lcom/amazon/kcp/store/IWebViewJSWrapper;

    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getTodoManager()Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getDownloadStatusWatcher()Lcom/amazon/kcp/application/IDownloadStatusWatcher;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/amazon/kcp/store/BrowserHost;-><init>(Lcom/amazon/kcp/redding/ReddingActivity;Lcom/amazon/kcp/store/IWebViewJSWrapper;Lcom/amazon/kcp/application/internal/ILocalTodoManager;Lcom/amazon/kcp/application/IDownloadStatusWatcher;)V

    iput-object v0, p0, Lcom/amazon/kcp/store/StoreActivity;->browserHost:Lcom/amazon/kcp/store/BrowserHost;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    iput-boolean v5, p0, Lcom/amazon/kcp/store/StoreActivity;->shouldClearHistory:Z

    .line 284
    iput v5, p0, Lcom/amazon/kcp/store/StoreActivity;->numCredentialAttempts:I

    .line 286
    const v0, 0x7f0c00bc

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/store/StoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/amazon/kcp/store/StoreActivity;->webView:Landroid/webkit/WebView;

    .line 287
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/amazon/kcp/store/StoreActivity$StoreWebViewClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/amazon/kcp/store/StoreActivity$StoreWebViewClient;-><init>(Lcom/amazon/kcp/store/StoreActivity;Lcom/amazon/kcp/store/StoreActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 302
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreActivity;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/amazon/kcp/store/StoreActivity;->browserHost:Lcom/amazon/kcp/store/BrowserHost;

    const-string v2, "PrivateBrowserHost"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 305
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 306
    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Kindle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getVersionString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 308
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 310
    new-instance v0, Lcom/amazon/kcp/store/StorefrontPrefetcher;

    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCookieJar()Lcom/amazon/kcp/store/CookieJar;

    move-result-object v3

    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getLocaleManager()Lcom/amazon/kcp/application/ILocaleManager;

    move-result-object v4

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/amazon/kcp/store/StorefrontPrefetcher;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kcp/store/CookieJar;Lcom/amazon/kcp/application/ILocaleManager;)V

    iput-object v0, p0, Lcom/amazon/kcp/store/StoreActivity;->prefetcher:Lcom/amazon/kcp/store/StorefrontPrefetcher;

    .line 311
    iput-boolean v5, p0, Lcom/amazon/kcp/store/StoreActivity;->nextPageIsStoreFront:Z

    .line 314
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/store/StoreActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 315
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v0

    array-length v1, v0

    move v2, v5

    move v3, v5

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 317
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    or-int/2addr v3, v4

    .line 315
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 280
    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/amazon/kcp/store/StoreActivity;->showStoreUnavailableMessage()V

    .line 370
    :cond_0
    :goto_1
    return-void

    .line 320
    :cond_1
    if-eqz v3, :cond_4

    .line 322
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCookieJar()Lcom/amazon/kcp/store/CookieJar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/store/CookieJar;->clearCookieJar()V

    .line 323
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCookieJar()Lcom/amazon/kcp/store/CookieJar;

    move-result-object v0

    const-string v1, "store_cookies"

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/store/CookieJar;->initializeCookiesFromSecureStorage(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kcp/store/StoreActivity;->singleSignOnEnabled:Z

    .line 324
    iget-boolean v0, p0, Lcom/amazon/kcp/store/StoreActivity;->singleSignOnEnabled:Z

    if-eqz v0, :cond_2

    .line 326
    invoke-direct {p0}, Lcom/amazon/kcp/store/StoreActivity;->showStore()V

    .line 343
    :goto_2
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 356
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 358
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/store/StoreActivity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 331
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreActivity;->loadingSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 333
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getWebStoreController()Lcom/amazon/kcp/store/IWebStoreController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/store/WebStoreController;

    .line 334
    invoke-virtual {v0}, Lcom/amazon/kcp/store/WebStoreController;->getCredentialsUpdatedEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/store/StoreActivity;->credentialsUpdatedCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v1, v2}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 335
    invoke-virtual {v0}, Lcom/amazon/kcp/store/WebStoreController;->getCredentialsUpdateFailedEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/store/StoreActivity;->credentialsUpdateFailedCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v1, v2}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 337
    invoke-virtual {v0}, Lcom/amazon/kcp/store/WebStoreController;->updateStoreCookies()V

    goto :goto_2

    .line 360
    :cond_3
    if-ne v0, v6, :cond_0

    .line 362
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/store/StoreActivity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 368
    :cond_4
    invoke-direct {p0}, Lcom/amazon/kcp/store/StoreActivity;->showNetworkConnectionMessage()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 450
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0006

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 452
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 375
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onDestroy()V

    .line 380
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getDownloadStatusWatcher()Lcom/amazon/kcp/application/IDownloadStatusWatcher;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IDownloadStatusWatcher;->cleanUp()V

    .line 383
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getWebStoreController()Lcom/amazon/kcp/store/IWebStoreController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/store/WebStoreController;

    .line 384
    invoke-virtual {v0}, Lcom/amazon/kcp/store/WebStoreController;->getCredentialsUpdatedEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/store/StoreActivity;->credentialsUpdatedCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v1, v2}, Lcom/amazon/foundation/IEventProvider;->unregister(Lcom/amazon/foundation/ICallback;)Z

    .line 385
    invoke-virtual {v0}, Lcom/amazon/kcp/store/WebStoreController;->getCredentialsUpdateFailedEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/store/StoreActivity;->credentialsUpdateFailedCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->unregister(Lcom/amazon/foundation/ICallback;)Z

    .line 387
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/store/StoreActivity;->webView:Landroid/webkit/WebView;

    .line 389
    return-void
.end method

.method public onLowMemory()V
    .locals 3

    .prologue
    .line 397
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "freeMemory"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 398
    if-eqz v0, :cond_0

    .line 400
    iget-object v1, p0, Lcom/amazon/kcp/store/StoreActivity;->webView:Landroid/webkit/WebView;

    const/4 p0, 0x0

    check-cast p0, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    .line 417
    :catch_1
    move-exception v0

    goto :goto_0

    .line 413
    :catch_2
    move-exception v0

    goto :goto_0

    .line 409
    :catch_3
    move-exception v0

    goto :goto_0

    .line 405
    :catch_4
    move-exception v0

    goto :goto_0
.end method

.method public onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 528
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreActivity;->loadingSpinner:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 530
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "StoreActivity"

    const-string v2, "StoreFrontStartupTimer"

    const-string v3, "StoreStartupTimer"

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->stopMetricTimerIfExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iget-boolean v0, p0, Lcom/amazon/kcp/store/StoreActivity;->shouldClearHistory:Z

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 535
    iput-boolean v5, p0, Lcom/amazon/kcp/store/StoreActivity;->shouldClearHistory:Z

    .line 538
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/kcp/store/StoreActivity;->nextPageIsStoreFront:Z

    if-eqz v0, :cond_1

    .line 542
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 543
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 544
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/store/StoreActivity;->storeFrontUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    :goto_0
    iput-boolean v5, p0, Lcom/amazon/kcp/store/StoreActivity;->nextPageIsStoreFront:Z

    .line 562
    :cond_1
    return-void

    .line 550
    :catch_0
    move-exception v0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 553
    const-string v1, "url"

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "StoreActivity"

    const-string v3, "StoreFrontBadURL"

    sget-object v4, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;)V

    .line 557
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/store/StoreActivity;->storeFrontUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 469
    .line 471
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 489
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 491
    const/4 v0, 0x0

    .line 495
    :goto_0
    return v0

    .line 474
    :pswitch_0
    invoke-virtual {p0}, Lcom/amazon/kcp/store/StoreActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryController;->showLibraryPage()Lcom/amazon/kcp/library/pages/ILibraryPage;

    move v0, v2

    .line 475
    goto :goto_0

    .line 477
    :pswitch_1
    iput-boolean v2, p0, Lcom/amazon/kcp/store/StoreActivity;->shouldClearHistory:Z

    .line 478
    invoke-direct {p0}, Lcom/amazon/kcp/store/StoreActivity;->loadStorefront()V

    move v0, v2

    .line 479
    goto :goto_0

    .line 481
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/info/InfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 482
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/store/StoreActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    .line 483
    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_0

    .line 471
    :pswitch_data_0
    .packed-switch 0x7f0c0108
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter

    .prologue
    .line 458
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 460
    const v1, 0x7f0c0109

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/amazon/kcp/store/StoreActivity;->singleSignOnEnabled:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/amazon/kcp/store/StoreActivity;->storeFrontUrl:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amazon/kcp/store/StoreActivity;->storeFrontUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 463
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 460
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
