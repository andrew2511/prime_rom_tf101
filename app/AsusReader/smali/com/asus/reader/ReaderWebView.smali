.class public Lcom/asus/reader/ReaderWebView;
.super Landroid/app/Activity;
.source "ReaderWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/reader/ReaderWebView$ReaderWebViewClient;
    }
.end annotation


# instance fields
.field private mCoverURL:Ljava/lang/String;

.field private mIsFormPostDownloadUrl:Z

.field private mIsReceivedError:Z

.field private mLatestDownloadedUrl:Ljava/lang/String;

.field private mPublisherBookSource:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mVibeBookSource:Ljava/lang/String;

.field private mVibeId:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/reader/ReaderWebView;->mCoverURL:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/ReaderWebView;->mLatestDownloadedUrl:Ljava/lang/String;

    .line 34
    iput-boolean v1, p0, Lcom/asus/reader/ReaderWebView;->mIsFormPostDownloadUrl:Z

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/ReaderWebView;->mVibeBookSource:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/ReaderWebView;->mPublisherBookSource:Ljava/lang/String;

    .line 40
    iput-boolean v1, p0, Lcom/asus/reader/ReaderWebView;->mIsReceivedError:Z

    .line 163
    return-void
.end method

.method static synthetic access$1002(Lcom/asus/reader/ReaderWebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/asus/reader/ReaderWebView;->mIsReceivedError:Z

    return p1
.end method

.method static synthetic access$102(Lcom/asus/reader/ReaderWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/asus/reader/ReaderWebView;->mLatestDownloadedUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/asus/reader/ReaderWebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/asus/reader/ReaderWebView;->mIsFormPostDownloadUrl:Z

    return v0
.end method

.method static synthetic access$202(Lcom/asus/reader/ReaderWebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/asus/reader/ReaderWebView;->mIsFormPostDownloadUrl:Z

    return p1
.end method

.method static synthetic access$300(Lcom/asus/reader/ReaderWebView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/asus/reader/ReaderWebView;->mCoverURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/asus/reader/ReaderWebView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/asus/reader/ReaderWebView;->mPublisherBookSource:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/asus/reader/ReaderWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/asus/reader/ReaderWebView;->mPublisherBookSource:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/asus/reader/ReaderWebView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/asus/reader/ReaderWebView;->mVibeBookSource:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/asus/reader/ReaderWebView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/asus/reader/ReaderWebView;->mVibeId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/asus/reader/ReaderWebView;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/asus/reader/ReaderWebView;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/asus/reader/ReaderWebView;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/asus/reader/ReaderWebView;->isShouldDownloadedAcsm(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/asus/reader/ReaderWebView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/asus/reader/ReaderWebView;->processShouldDonwloadedAcsm(Ljava/lang/String;)V

    return-void
.end method

.method private isShouldDownloadedAcsm(Ljava/lang/String;)Z
    .locals 5
    .parameter "url"

    .prologue
    .line 122
    const-string v3, "ReaderWebView"

    const-string v4, "in isShouldDownloadedAcsm"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 125
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, lowerCaseString:Ljava/lang/String;
    const-string v3, ".acsm"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    const/4 v3, 0x1

    .line 131
    .end local v1           #lowerCaseString:Ljava/lang/String;
    .end local v2           #uri:Landroid/net/Uri;
    :goto_0
    return v3

    .line 128
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 129
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private processShouldDonwloadedAcsm(Ljava/lang/String;)V
    .locals 9
    .parameter "url"

    .prologue
    .line 135
    const-string v7, "ReaderWebView"

    const-string v8, "in processShouldDonwloadedAcsm"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v7, p0, Lcom/asus/reader/ReaderWebView;->mLatestDownloadedUrl:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 137
    const-string v7, "ReaderWebView"

    const-string v8, "in processShouldDonwloadedAcsm , url should be downloaded"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v4, "notitle.acsm"

    .line 140
    .local v4, fileName:Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 141
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 145
    .end local v6           #uri:Landroid/net/Uri;
    :goto_0
    const-string v5, "application/vnd.adobe.adept+xml"

    .line 146
    .local v5, mimetype:Ljava/lang/String;
    const-string v0, "download from ReaderWebView ( in processShouldDonwloadedAcsm ) "

    .line 147
    .local v0, description:Ljava/lang/String;
    move-object v2, v4

    .line 148
    .local v2, downloadfilename:Ljava/lang/String;
    iget-object v1, p0, Lcom/asus/reader/ReaderWebView;->mCoverURL:Ljava/lang/String;

    .line 149
    .local v1, downloadcover:Ljava/lang/String;
    const v7, 0x7f0700b1

    invoke-virtual {p0, v7}, Lcom/asus/reader/ReaderWebView;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 150
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/asus/reader/ReaderWebView$2;

    invoke-direct {v8, p0, p1, v2, v1}, Lcom/asus/reader/ReaderWebView$2;-><init>(Lcom/asus/reader/ReaderWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 159
    invoke-virtual {p0}, Lcom/asus/reader/ReaderWebView;->finish()V

    .line 161
    .end local v0           #description:Ljava/lang/String;
    .end local v1           #downloadcover:Ljava/lang/String;
    .end local v2           #downloadfilename:Ljava/lang/String;
    .end local v4           #fileName:Ljava/lang/String;
    .end local v5           #mimetype:Ljava/lang/String;
    :cond_0
    return-void

    .line 142
    .restart local v4       #fileName:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 143
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0, v4}, Lcom/asus/reader/ReaderWebView;->requestWindowFeature(I)Z

    .line 46
    const v1, 0x7f03002e

    invoke-virtual {p0, v1}, Lcom/asus/reader/ReaderWebView;->setContentView(I)V

    .line 47
    const v1, 0x7f0b0093

    invoke-virtual {p0, v1}, Lcom/asus/reader/ReaderWebView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/asus/reader/ReaderWebView;->mWebView:Landroid/webkit/WebView;

    .line 48
    invoke-virtual {p0}, Lcom/asus/reader/ReaderWebView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "weburl"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/reader/ReaderWebView;->mUrl:Ljava/lang/String;

    .line 49
    invoke-virtual {p0}, Lcom/asus/reader/ReaderWebView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "vibeid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/reader/ReaderWebView;->mVibeId:Ljava/lang/String;

    .line 50
    iget-object v1, p0, Lcom/asus/reader/ReaderWebView;->mVibeId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 51
    const-string v1, ""

    iput-object v1, p0, Lcom/asus/reader/ReaderWebView;->mVibeId:Ljava/lang/String;

    .line 52
    :cond_0
    const-string v1, "ReaderWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vibe id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/reader/ReaderWebView;->mVibeId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p0}, Lcom/asus/reader/ReaderWebView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "cover_url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/reader/ReaderWebView;->mCoverURL:Ljava/lang/String;

    .line 59
    iget-object v1, p0, Lcom/asus/reader/ReaderWebView;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/asus/reader/ReaderWebView$ReaderWebViewClient;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/asus/reader/ReaderWebView$ReaderWebViewClient;-><init>(Lcom/asus/reader/ReaderWebView;Lcom/asus/reader/ReaderWebView$1;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 60
    iget-object v1, p0, Lcom/asus/reader/ReaderWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 61
    .local v0, webSettings:Landroid/webkit/WebSettings;
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 62
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 63
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 65
    iget-object v1, p0, Lcom/asus/reader/ReaderWebView;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/asus/reader/ReaderWebView$1;

    invoke-direct {v2, p0}, Lcom/asus/reader/ReaderWebView$1;-><init>(Lcom/asus/reader/ReaderWebView;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 102
    iget-object v1, p0, Lcom/asus/reader/ReaderWebView;->mUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/asus/reader/ReaderWebView;->mVibeBookSource:Ljava/lang/String;

    .line 103
    iget-object v1, p0, Lcom/asus/reader/ReaderWebView;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/asus/reader/ReaderWebView;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 109
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/asus/reader/ReaderWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    iget-boolean v0, p0, Lcom/asus/reader/ReaderWebView;->mIsReceivedError:Z

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/asus/reader/ReaderWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    move v0, v1

    .line 118
    :goto_0
    return v0

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/asus/reader/ReaderWebView;->finish()V

    move v0, v1

    .line 115
    goto :goto_0

    .line 118
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
