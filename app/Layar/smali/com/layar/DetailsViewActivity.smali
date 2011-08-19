.class public Lcom/layar/DetailsViewActivity;
.super Lcom/layar/OurActivity;
.source "DetailsViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/DetailsViewActivity$CustomWebViewClient;,
        Lcom/layar/DetailsViewActivity$LoadNewLayerTask;
    }
.end annotation


# static fields
.field private static final DUMMY_URL:Ljava/lang/String; = "http://localhost/"

.field public static final EXTRAS_POST:Ljava/lang/String; = "Post"

.field public static final EXTRAS_POST_DATA:Ljava/lang/String; = "PostData"

.field public static final EXTRAS_RESTART_AR_VIEW:Ljava/lang/String; = "RestartARView"

.field public static final EXTRAS_TITLE:Ljava/lang/String; = "Title"

.field public static final EXTRAS_URL_TO_OPEN:Ljava/lang/String; = "UrlToOpen"

.field private static final TAG:Ljava/lang/String; = "layar.DetailsViewActivity"


# instance fields
.field private mCurrentUrl:Ljava/lang/String;

.field private mLoadingPanel:Landroid/view/View;

.field private mLoadingProgress:Landroid/widget/ProgressBar;

.field private mWebView:Landroid/webkit/WebView;

.field private final mWebViewClient:Landroid/webkit/WebViewClient;

.field private needRestart:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lcom/layar/OurActivity;-><init>()V

    .line 65
    iput-object v1, p0, Lcom/layar/DetailsViewActivity;->mCurrentUrl:Ljava/lang/String;

    .line 66
    new-instance v0, Lcom/layar/DetailsViewActivity$CustomWebViewClient;

    invoke-direct {v0, p0, v1}, Lcom/layar/DetailsViewActivity$CustomWebViewClient;-><init>(Lcom/layar/DetailsViewActivity;Lcom/layar/DetailsViewActivity$CustomWebViewClient;)V

    iput-object v0, p0, Lcom/layar/DetailsViewActivity;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layar/DetailsViewActivity;->needRestart:Z

    .line 50
    return-void
.end method

.method static synthetic access$0(Lcom/layar/DetailsViewActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/layar/DetailsViewActivity;->needRestart:Z

    return v0
.end method

.method static synthetic access$1(Lcom/layar/DetailsViewActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/layar/DetailsViewActivity;->mCurrentUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/layar/DetailsViewActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/layar/DetailsViewActivity;->mLoadingProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$3(Lcom/layar/DetailsViewActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/layar/DetailsViewActivity;->mLoadingPanel:Landroid/view/View;

    return-object v0
.end method

.method private bundleToNameValuePairs(Landroid/os/Bundle;)Ljava/util/List;
    .locals 5
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v1, nameValues:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 201
    return-object v1

    .line 198
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 199
    .local v0, key:Ljava/lang/String;
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static bundleToPostData(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 5
    .parameter "params"

    .prologue
    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .local v0, b:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 206
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 207
    .local v1, key:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 208
    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 78
    invoke-super {p0, p1}, Lcom/layar/OurActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const v8, 0x7f030067

    invoke-virtual {p0, v8}, Lcom/layar/DetailsViewActivity;->setContentView(I)V

    .line 81
    invoke-virtual {p0}, Lcom/layar/DetailsViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 83
    .local v1, intent:Landroid/content/Intent;
    const v8, 0x7f0700e8

    invoke-virtual {p0, v8}, Lcom/layar/DetailsViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/webkit/WebView;

    iput-object v8, p0, Lcom/layar/DetailsViewActivity;->mWebView:Landroid/webkit/WebView;

    .line 84
    iget-object v8, p0, Lcom/layar/DetailsViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 86
    const v8, 0x7f0700e9

    invoke-virtual {p0, v8}, Lcom/layar/DetailsViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/layar/DetailsViewActivity;->mLoadingPanel:Landroid/view/View;

    .line 87
    const v8, 0x7f0700ea

    invoke-virtual {p0, v8}, Lcom/layar/DetailsViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar;

    iput-object v8, p0, Lcom/layar/DetailsViewActivity;->mLoadingProgress:Landroid/widget/ProgressBar;

    .line 88
    iget-object v8, p0, Lcom/layar/DetailsViewActivity;->mLoadingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v8, v10}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 89
    iget-object v8, p0, Lcom/layar/DetailsViewActivity;->mLoadingProgress:Landroid/widget/ProgressBar;

    const/16 v9, 0x64

    invoke-virtual {v8, v9}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 90
    iget-object v8, p0, Lcom/layar/DetailsViewActivity;->mLoadingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v8, v10}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 93
    const-string v8, "Title"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, title:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 95
    invoke-virtual {p0, v6}, Lcom/layar/DetailsViewActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 96
    :cond_0
    const-string v8, "RestartARView"

    invoke-virtual {v1, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/layar/DetailsViewActivity;->needRestart:Z

    .line 98
    const-string v8, "UrlToOpen"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/layar/DetailsViewActivity;->mCurrentUrl:Ljava/lang/String;

    .line 99
    iget-object v8, p0, Lcom/layar/DetailsViewActivity;->mCurrentUrl:Ljava/lang/String;

    if-nez v8, :cond_1

    .line 100
    invoke-static {}, Lcom/layar/util/UriHelper;->getInstance()Lcom/layar/util/UriHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/layar/util/UriHelper;->getAboutUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/layar/DetailsViewActivity;->mCurrentUrl:Ljava/lang/String;

    .line 102
    :cond_1
    iget-object v8, p0, Lcom/layar/DetailsViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 103
    iget-object v8, p0, Lcom/layar/DetailsViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 104
    iget-object v8, p0, Lcom/layar/DetailsViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 105
    iget-object v8, p0, Lcom/layar/DetailsViewActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v9, p0, Lcom/layar/DetailsViewActivity;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v8, v9}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 106
    iget-object v8, p0, Lcom/layar/DetailsViewActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v9, Lcom/layar/DetailsViewActivity$1;

    invoke-direct {v9, p0}, Lcom/layar/DetailsViewActivity$1;-><init>(Lcom/layar/DetailsViewActivity;)V

    invoke-virtual {v8, v9}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 118
    invoke-static {}, Lcom/layar/util/MyConfig;->getSdkVersion()I

    move-result v8

    const/16 v9, 0x8

    if-lt v8, v9, :cond_2

    iget-object v8, p0, Lcom/layar/DetailsViewActivity;->mCurrentUrl:Ljava/lang/String;

    const-string v9, "youtube.com/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 119
    iget-object v8, p0, Lcom/layar/DetailsViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v8

    invoke-virtual {v8}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v7

    .line 121
    .local v7, userAgent:Ljava/lang/String;
    const-string v8, "Android "

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 122
    .local v4, replaceStartPosition:I
    const-string v8, ";"

    invoke-virtual {v7, v8, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 123
    .local v3, replaceEndPosition:I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    .line 124
    .local v0, endPosition:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    const-string v9, "Android 2.1"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 124
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 126
    iget-object v8, p0, Lcom/layar/DetailsViewActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 133
    .end local v0           #endPosition:I
    .end local v3           #replaceEndPosition:I
    .end local v4           #replaceStartPosition:I
    .end local v7           #userAgent:Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_4

    const-string v8, "Post"

    invoke-virtual {v1, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 134
    const-string v8, "PostData"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 135
    .local v2, paramsBundle:Landroid/os/Bundle;
    if-eqz v2, :cond_3

    .line 136
    iget-object v8, p0, Lcom/layar/DetailsViewActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v9, p0, Lcom/layar/DetailsViewActivity;->mCurrentUrl:Ljava/lang/String;

    invoke-virtual {p0, v8, v9, v2}, Lcom/layar/DetailsViewActivity;->postUrl(Landroid/webkit/WebView;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    .line 137
    .local v5, result:Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 138
    iget-object v8, p0, Lcom/layar/DetailsViewActivity;->mWebView:Landroid/webkit/WebView;

    const-string v9, "text/html"

    const-string v10, "utf-8"

    invoke-virtual {v8, v5, v9, v10}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .end local v2           #paramsBundle:Landroid/os/Bundle;
    .end local v5           #result:Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    .line 142
    :cond_4
    iget-object v8, p0, Lcom/layar/DetailsViewActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v9, p0, Lcom/layar/DetailsViewActivity;->mCurrentUrl:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 236
    const/16 v0, 0x54

    if-ne p1, v0, :cond_0

    .line 237
    const/4 v0, 0x0

    .line 245
    :goto_0
    return v0

    .line 238
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 239
    iget-boolean v0, p0, Lcom/layar/DetailsViewActivity;->needRestart:Z

    if-eqz v0, :cond_1

    .line 242
    invoke-static {p0}, Lcom/layar/data/layer/LayerHelper;->openCurrentLayer(Landroid/content/Context;)V

    .line 245
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/layar/OurActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 225
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 226
    invoke-super {p0}, Lcom/layar/OurActivity;->onPause()V

    .line 227
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 218
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 219
    invoke-super {p0}, Lcom/layar/OurActivity;->onResume()V

    .line 220
    return-void
.end method

.method public postUrl(Landroid/webkit/WebView;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 17
    .parameter "webView"
    .parameter "url"
    .parameter "params"

    .prologue
    .line 156
    :try_start_0
    sget-boolean v12, Lcom/layar/util/MyConfig;->SDK5Plus:Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v12, :cond_1

    .line 161
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    const-string v13, "postUrl"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    const-class v16, Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-class v16, [B

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 162
    .local v7, m:Ljava/lang/reflect/Method;
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p2, v12, v13

    const/4 v13, 0x1

    invoke-static/range {p3 .. p3}, Lcom/layar/DetailsViewActivity;->bundleToPostData(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    aput-object v14, v12, v13

    move-object v0, v7

    move-object/from16 v1, p1

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 193
    .end local v7           #m:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    const/4 v12, 0x0

    :goto_1
    return-object v12

    .line 167
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/layar/App;->isOnline()Z

    move-result v12

    if-nez v12, :cond_2

    .line 168
    const/4 v12, 0x0

    goto :goto_1

    .line 170
    :cond_2
    new-instance v9, Lorg/apache/http/client/methods/HttpPost;

    move-object v0, v9

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 171
    .local v9, post:Lorg/apache/http/client/methods/HttpPost;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/layar/DetailsViewActivity;->bundleToNameValuePairs(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v8

    .line 172
    .local v8, nameValues:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v4, v8}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    .line 173
    .local v4, ent:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-virtual {v9, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 174
    new-instance v12, Lorg/apache/http/HttpHost;

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;)V

    invoke-static {v12, v9}, Lcom/layar/util/HttpManager;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 175
    .local v11, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 176
    .local v5, httpStatus:I
    const/16 v12, 0xc8

    if-ne v5, v12, :cond_3

    .line 177
    move-object/from16 v0, p2

    move-object v1, v11

    invoke-static {v0, v1}, Lcom/layar/util/HttpManager;->responseAsString(Ljava/lang/String;Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    .line 178
    :cond_3
    const/16 v12, 0x12e

    if-ne v5, v12, :cond_0

    .line 180
    const-string v12, "location"

    invoke-interface {v11, v12}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v6

    .line 181
    .local v6, locationHeader:Lorg/apache/http/Header;
    if-eqz v6, :cond_0

    .line 182
    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    .line 184
    .local v10, redirectUrl:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 188
    .end local v4           #ent:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v5           #httpStatus:I
    .end local v6           #locationHeader:Lorg/apache/http/Header;
    .end local v8           #nameValues:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v9           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v10           #redirectUrl:Ljava/lang/String;
    .end local v11           #response:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v12

    move-object v3, v12

    .line 189
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    const-string v12, "layar.DetailsViewActivity"

    const-string v13, "failed when encoding parameters for POSTing"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 190
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v12

    move-object v3, v12

    .line 191
    .local v3, e:Ljava/io/IOException;
    const-string v12, "layar.DetailsViewActivity"

    const-string v13, "failed when reading response of POST"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 163
    .end local v3           #e:Ljava/io/IOException;
    :catch_2
    move-exception v12

    goto :goto_0
.end method

.method public useNavigationBar()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method
