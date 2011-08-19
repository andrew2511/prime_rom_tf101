.class public Lcom/newspaperdirect/pressreader/android/Welcome;
.super Landroid/app/Activity;
.source "Welcome.java"


# instance fields
.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/Welcome;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Welcome;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-static {p0}, Lcom/newspaperdirect/pressreader/android/core/AppInitHelper;->init(Landroid/app/Activity;)V

    .line 26
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/Welcome;->mWebView:Landroid/webkit/WebView;

    .line 27
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Welcome;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 28
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Welcome;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/Welcome;->setContentView(Landroid/view/View;)V

    .line 29
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Welcome;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/newspaperdirect/pressreader/android/Welcome$1;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/Welcome$1;-><init>(Lcom/newspaperdirect/pressreader/android/Welcome;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 38
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Welcome;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/newspaperdirect/pressreader/android/Welcome$2;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/Welcome$2;-><init>(Lcom/newspaperdirect/pressreader/android/Welcome;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 44
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 74
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Welcome;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Welcome;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Welcome;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 76
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 48
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 49
    const-string v1, ""

    const v0, 0x7f09000c

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/Welcome;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 50
    new-instance v5, Lcom/newspaperdirect/pressreader/android/Welcome$3;

    invoke-direct {v5, p0}, Lcom/newspaperdirect/pressreader/android/Welcome$3;-><init>(Lcom/newspaperdirect/pressreader/android/Welcome;)V

    move-object v0, p0

    .line 49
    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/Welcome;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 56
    sget v6, Lcom/newspaperdirect/pressreader/android/core/GlobalConfiguration;->SCREEN_SIZE:I

    .line 57
    .local v6, imgId:I
    const v0, 0x7f0900a5

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/Welcome;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 58
    .local v7, url:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/Welcome;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_0

    .line 65
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 68
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Welcome;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 69
    return-void

    .line 60
    :pswitch_0
    mul-int/lit8 v0, v6, 0x2

    sub-int v6, v0, v4

    .line 61
    goto :goto_0

    .line 63
    :pswitch_1
    mul-int/lit8 v6, v6, 0x2

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
