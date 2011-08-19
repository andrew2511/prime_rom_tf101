.class public Lcom/amazon/kcp/redding/WebViewActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "WebViewActivity.java"


# static fields
.field public static final EXTRA_FINISH_MENUITEM_ICON_ID:Ljava/lang/String; = "finishMenuItemIconId"

.field public static final EXTRA_FINISH_MENUITEM_TEXT:Ljava/lang/String; = "finishMenuItemText"

.field public static final EXTRA_SCALE:Ljava/lang/String; = "scale"

.field public static final EXTRA_URL:Ljava/lang/String; = "url"

.field public static final EXTRA_ZOOM_CONTROLS:Ljava/lang/String; = "zoomControls"

.field private static final FINISH_MENUITEM_ID:I = -0x1

.field private static final INVALID_HOST:Ljava/lang/String; = "Invalid Host"


# instance fields
.field private hasLoaded:Z

.field private host:Ljava/lang/String;

.field private loadingSpinner:Landroid/widget/ProgressBar;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/redding/WebViewActivity;->host:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/redding/WebViewActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/amazon/kcp/redding/WebViewActivity;->host:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/amazon/kcp/redding/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/amazon/kcp/redding/WebViewActivity;->host:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/amazon/kcp/redding/WebViewActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/amazon/kcp/redding/WebViewActivity;->loadingSpinner:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/redding/WebViewActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/amazon/kcp/redding/WebViewActivity;->hasLoaded:Z

    return v0
.end method

.method static synthetic access$202(Lcom/amazon/kcp/redding/WebViewActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/amazon/kcp/redding/WebViewActivity;->hasLoaded:Z

    return p1
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 208
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/amazon/kcp/redding/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/amazon/kcp/redding/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 213
    const/4 v0, 0x1

    .line 216
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 202
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 203
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 73
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v1, 0x7f03004d

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/redding/WebViewActivity;->setContentView(I)V

    .line 76
    const v1, 0x7f0c00bd

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/redding/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/amazon/kcp/redding/WebViewActivity;->loadingSpinner:Landroid/widget/ProgressBar;

    .line 78
    const v1, 0x7f0c00bc

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/redding/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/amazon/kcp/redding/WebViewActivity;->webView:Landroid/webkit/WebView;

    .line 79
    iget-object v1, p0, Lcom/amazon/kcp/redding/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 80
    iget-object v1, p0, Lcom/amazon/kcp/redding/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 82
    iget-object v1, p0, Lcom/amazon/kcp/redding/WebViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/amazon/kcp/redding/WebViewActivity$1;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/redding/WebViewActivity$1;-><init>(Lcom/amazon/kcp/redding/WebViewActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 121
    iget-object v1, p0, Lcom/amazon/kcp/redding/WebViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/amazon/kcp/redding/WebViewActivity$2;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/redding/WebViewActivity$2;-><init>(Lcom/amazon/kcp/redding/WebViewActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    .line 154
    iget-object v1, p0, Lcom/amazon/kcp/redding/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/amazon/kcp/redding/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "scale"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 155
    iget-object v1, p0, Lcom/amazon/kcp/redding/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kcp/redding/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "zoomControls"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 157
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, url:Ljava/lang/String;
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/amazon/kcp/redding/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 162
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 168
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "finishMenuItemText"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_1

    .line 171
    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 172
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "finishMenuItemIconId"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 173
    if-eq v1, v3, :cond_0

    .line 175
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 177
    :cond_0
    const/4 v0, 0x1

    .line 179
    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 185
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 195
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 188
    :pswitch_0
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/WebViewActivity;->finish()V

    .line 189
    const/4 v0, 0x1

    goto :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
