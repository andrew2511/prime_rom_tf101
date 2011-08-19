.class public Lcom/google/android/gsf/login/WebAddAccountView;
.super Ljava/lang/Object;
.source "WebAddAccountView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/login/WebAddAccountView$1;,
        Lcom/google/android/gsf/login/WebAddAccountView$MyWebViewClient;,
        Lcom/google/android/gsf/login/WebAddAccountView$MyChromeClient;,
        Lcom/google/android/gsf/login/WebAddAccountView$Callback;,
        Lcom/google/android/gsf/login/WebAddAccountView$Error;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/google/android/gsf/login/WebAddAccountView$Callback;

.field mCookieManager:Landroid/webkit/CookieManager;

.field private mIsInitialLoad:Z

.field private mIsLoading:Z

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressView:Landroid/view/View;

.field private mSession:Lcom/google/android/gsf/login/WebAddAccountSession;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Landroid/view/View;Landroid/widget/ProgressBar;Lcom/google/android/gsf/login/WebAddAccountSession;Lcom/google/android/gsf/login/WebAddAccountView$Callback;)V
    .locals 2
    .parameter "webView"
    .parameter "progressView"
    .parameter "progressBar"
    .parameter "session"
    .parameter "callback"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/google/android/gsf/login/WebAddAccountView;->mWebView:Landroid/webkit/WebView;

    .line 79
    iput-object p2, p0, Lcom/google/android/gsf/login/WebAddAccountView;->mProgressView:Landroid/view/View;

    .line 80
    iput-object p3, p0, Lcom/google/android/gsf/login/WebAddAccountView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 81
    iget-object v0, p0, Lcom/google/android/gsf/login/WebAddAccountView;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 82
    iput-object p4, p0, Lcom/google/android/gsf/login/WebAddAccountView;->mSession:Lcom/google/android/gsf/login/WebAddAccountSession;

    .line 83
    iput-object p5, p0, Lcom/google/android/gsf/login/WebAddAccountView;->mCallback:Lcom/google/android/gsf/login/WebAddAccountView$Callback;

    .line 84
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/login/WebAddAccountView;->mCookieManager:Landroid/webkit/CookieManager;

    .line 85
    invoke-direct {p0}, Lcom/google/android/gsf/login/WebAddAccountView;->setupOptionsAndCallbacks()V

    .line 86
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/gsf/login/WebAddAccountView;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/gsf/login/WebAddAccountView;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/gsf/login/WebAddAccountView;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/gsf/login/WebAddAccountView;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/gsf/login/WebAddAccountView;)Lcom/google/android/gsf/login/WebAddAccountSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/gsf/login/WebAddAccountView;->mSession:Lcom/google/android/gsf/login/WebAddAccountSession;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/gsf/login/WebAddAccountView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/google/android/gsf/login/WebAddAccountView;->mIsLoading:Z

    return v0
.end method

.method static synthetic access$502(Lcom/google/android/gsf/login/WebAddAccountView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/google/android/gsf/login/WebAddAccountView;->mIsLoading:Z

    return p1
.end method

.method static synthetic access$600(Lcom/google/android/gsf/login/WebAddAccountView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/google/android/gsf/login/WebAddAccountView;->mIsInitialLoad:Z

    return v0
.end method

.method static synthetic access$602(Lcom/google/android/gsf/login/WebAddAccountView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/google/android/gsf/login/WebAddAccountView;->mIsInitialLoad:Z

    return p1
.end method

.method static synthetic access$700(Lcom/google/android/gsf/login/WebAddAccountView;)Lcom/google/android/gsf/login/WebAddAccountView$Callback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/gsf/login/WebAddAccountView;->mCallback:Lcom/google/android/gsf/login/WebAddAccountView$Callback;

    return-object v0
.end method

.method private setupOptionsAndCallbacks()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 108
    iget-object v1, p0, Lcom/google/android/gsf/login/WebAddAccountView;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/google/android/gsf/login/WebAddAccountView$MyWebViewClient;

    invoke-direct {v2, p0, v5}, Lcom/google/android/gsf/login/WebAddAccountView$MyWebViewClient;-><init>(Lcom/google/android/gsf/login/WebAddAccountView;Lcom/google/android/gsf/login/WebAddAccountView$1;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 109
    iget-object v1, p0, Lcom/google/android/gsf/login/WebAddAccountView;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/google/android/gsf/login/WebAddAccountView$MyChromeClient;

    invoke-direct {v2, p0, v5}, Lcom/google/android/gsf/login/WebAddAccountView$MyChromeClient;-><init>(Lcom/google/android/gsf/login/WebAddAccountView;Lcom/google/android/gsf/login/WebAddAccountView$1;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 110
    iget-object v1, p0, Lcom/google/android/gsf/login/WebAddAccountView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 111
    .local v0, s:Landroid/webkit/WebSettings;
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 112
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 113
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 114
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 115
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 116
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 117
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 118
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 119
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    .line 120
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 121
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 122
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 124
    iget-object v1, p0, Lcom/google/android/gsf/login/WebAddAccountView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setMapTrackballToArrowKeys(Z)V

    .line 125
    iget-object v1, p0, Lcom/google/android/gsf/login/WebAddAccountView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 126
    iget-object v1, p0, Lcom/google/android/gsf/login/WebAddAccountView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 127
    return-void
.end method


# virtual methods
.method public login(Ljava/lang/String;)V
    .locals 1
    .parameter "startUrl"

    .prologue
    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/google/android/gsf/login/WebAddAccountView;->mIsLoading:Z

    .line 95
    iput-boolean v0, p0, Lcom/google/android/gsf/login/WebAddAccountView;->mIsInitialLoad:Z

    .line 96
    iget-object v0, p0, Lcom/google/android/gsf/login/WebAddAccountView;->mCookieManager:Landroid/webkit/CookieManager;

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 97
    iget-object v0, p0, Lcom/google/android/gsf/login/WebAddAccountView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/google/android/gsf/login/WebAddAccountView;->mIsLoading:Z

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/google/android/gsf/login/WebAddAccountView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/login/WebAddAccountView;->mIsLoading:Z

    .line 105
    :cond_0
    return-void
.end method
