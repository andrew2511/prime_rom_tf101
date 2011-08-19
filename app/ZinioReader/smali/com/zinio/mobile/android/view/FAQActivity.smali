.class public Lcom/zinio/mobile/android/view/FAQActivity;
.super Lcom/zinio/mobile/android/view/BaseActivity;
.source "SourceFile"


# static fields
.field private static f:Ljava/lang/Boolean;


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Landroid/widget/ProgressBar;

.field private c:Landroid/os/Handler;

.field private d:Ljava/lang/String;

.field private e:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

.field private g:Z

.field private h:Ljava/util/Locale;

.field private i:I

.field private j:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/zinio/mobile/android/view/FAQActivity;->f:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/BaseActivity;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/FAQActivity;->d:Ljava/lang/String;

    .line 145
    new-instance v0, Lcom/zinio/mobile/android/view/z;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/z;-><init>(Lcom/zinio/mobile/android/view/FAQActivity;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/FAQActivity;->j:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/zinio/mobile/android/view/FAQActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zinio/mobile/android/view/FAQActivity;->b:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter

    .prologue
    .line 36
    sput-object p0, Lcom/zinio/mobile/android/view/FAQActivity;->f:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic b(Lcom/zinio/mobile/android/view/FAQActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    sget-object v0, Lcom/zinio/mobile/android/a;->i:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/FAQActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic c()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/zinio/mobile/android/view/FAQActivity;->f:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic c(Lcom/zinio/mobile/android/view/FAQActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    sget-object v0, Lcom/zinio/mobile/android/a;->k:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/FAQActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic d(Lcom/zinio/mobile/android/view/FAQActivity;)Lcom/zinio/mobile/android/view/BottomToolbarActivity;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zinio/mobile/android/view/FAQActivity;->e:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 172
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->i()V

    .line 176
    :cond_0
    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    new-instance v1, Lcom/zinio/mobile/android/view/dialogs/e;

    invoke-direct {v1, p0}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0800a1

    invoke-virtual {v1, v2}, Lcom/zinio/mobile/android/view/dialogs/e;->a(I)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 179
    :cond_1
    invoke-virtual {v0}, Lcom/zinio/mobile/android/c/e;->j()Lcom/zinio/mobile/android/c/g;

    move-result-object v0

    .line 180
    iget-object v0, v0, Lcom/zinio/mobile/android/c/g;->b:Ljava/lang/String;

    .line 182
    return-object v0
.end method

.method static synthetic e(Lcom/zinio/mobile/android/view/FAQActivity;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zinio/mobile/android/view/FAQActivity;->a:Landroid/webkit/WebView;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 221
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/FAQActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/zinio/mobile/android/view/FAQActivity;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/FAQActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 229
    :goto_1
    return-void

    .line 221
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/FAQActivity;->a:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/FAQ.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected final a_()V
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/zinio/mobile/android/view/FAQActivity;->g:Z

    if-nez v0, :cond_0

    .line 252
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/FAQActivity;->showDialog(I)V

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zinio/mobile/android/view/FAQActivity;->g:Z

    .line 255
    :cond_0
    return-void
.end method

.method protected final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 261
    iget-boolean v0, p0, Lcom/zinio/mobile/android/view/FAQActivity;->g:Z

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {p0, v1}, Lcom/zinio/mobile/android/view/FAQActivity;->removeDialog(I)V

    .line 263
    iput-boolean v1, p0, Lcom/zinio/mobile/android/view/FAQActivity;->g:Z

    .line 265
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter

    .prologue
    .line 199
    invoke-super {p0, p1}, Lcom/zinio/mobile/android/view/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 201
    iget v0, p0, Lcom/zinio/mobile/android/view/FAQActivity;->i:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 202
    iget-object v0, p0, Lcom/zinio/mobile/android/view/FAQActivity;->a:Landroid/webkit/WebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zinio/mobile/android/view/FAQActivity;->c:Landroid/os/Handler;

    new-instance v1, Lcom/zinio/mobile/android/view/t;

    invoke-direct {v1, p0}, Lcom/zinio/mobile/android/view/t;-><init>(Lcom/zinio/mobile/android/view/FAQActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 203
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/zinio/mobile/android/view/FAQActivity;->i:I

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/FAQActivity;->h:Ljava/util/Locale;

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 206
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/FAQActivity;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/FAQActivity;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/zinio/mobile/android/view/FAQActivity;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/zinio/mobile/android/view/FAQActivity;->e()V

    .line 207
    :cond_1
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/FAQActivity;->h:Ljava/util/Locale;

    .line 209
    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 56
    invoke-super {p0, p1}, Lcom/zinio/mobile/android/view/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0, v2}, Lcom/zinio/mobile/android/view/FAQActivity;->requestWindowFeature(I)Z

    .line 58
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/FAQActivity;->setContentView(I)V

    .line 60
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/FAQActivity;->getWindow()Landroid/view/Window;

    .line 64
    const v0, 0x7f0c0020

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/FAQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/FAQActivity;->b:Landroid/widget/ProgressBar;

    .line 65
    iget-object v0, p0, Lcom/zinio/mobile/android/view/FAQActivity;->b:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 66
    iget-object v0, p0, Lcom/zinio/mobile/android/view/FAQActivity;->b:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 68
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/zinio/mobile/android/view/FAQActivity;->f:Ljava/lang/Boolean;

    .line 70
    const v0, 0x7f0c001f

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/FAQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/FAQActivity;->a:Landroid/webkit/WebView;

    .line 71
    iget-object v0, p0, Lcom/zinio/mobile/android/view/FAQActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/zinio/mobile/android/view/y;

    invoke-direct {v1, p0}, Lcom/zinio/mobile/android/view/y;-><init>(Lcom/zinio/mobile/android/view/FAQActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 84
    iget-object v0, p0, Lcom/zinio/mobile/android/view/FAQActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/zinio/mobile/android/view/ac;

    invoke-direct {v1, p0}, Lcom/zinio/mobile/android/view/ac;-><init>(Lcom/zinio/mobile/android/view/FAQActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 114
    iget-object v0, p0, Lcom/zinio/mobile/android/view/FAQActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 116
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/FAQActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 117
    iget-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/zinio/mobile/android/view/FAQActivity;->h:Ljava/util/Locale;

    .line 118
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/zinio/mobile/android/view/FAQActivity;->i:I

    .line 119
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/FAQActivity;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/FAQActivity;->d:Ljava/lang/String;

    .line 120
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/FAQActivity;->e()V

    .line 124
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/FAQActivity;->c:Landroid/os/Handler;

    .line 125
    const/high16 v0, 0x7f0c

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/FAQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/FAQActivity;->e:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iget-object v0, p0, Lcom/zinio/mobile/android/view/FAQActivity;->e:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->setVisibility(I)V

    iget-object v0, p0, Lcom/zinio/mobile/android/view/FAQActivity;->e:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/FAQActivity;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/zinio/mobile/android/view/FAQActivity;->e:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/FAQActivity;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0001

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/FAQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/FAQActivity;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0002

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/FAQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/FAQActivity;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0003

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/FAQActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/FAQActivity;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 244
    invoke-static {p0}, Lcom/zinio/mobile/android/view/dialogs/e;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 277
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 278
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/zinio/mobile/android/view/FAQActivity;->e:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->d()V

    .line 282
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/zinio/mobile/android/view/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
