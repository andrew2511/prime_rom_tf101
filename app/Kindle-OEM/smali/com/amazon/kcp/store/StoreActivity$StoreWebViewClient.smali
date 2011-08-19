.class Lcom/amazon/kcp/store/StoreActivity$StoreWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "StoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/StoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreWebViewClient"
.end annotation


# static fields
.field private static final CIRCULAR_REDIRECT_THRESHOLD:I = 0x3


# instance fields
.field private circularRedirectAttempts:I

.field private prevURL:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kcp/store/StoreActivity;


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/store/StoreActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/amazon/kcp/store/StoreActivity$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/store/StoreActivity;Lcom/amazon/kcp/store/StoreActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/amazon/kcp/store/StoreActivity$StoreWebViewClient;-><init>(Lcom/amazon/kcp/store/StoreActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 238
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreActivity$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreActivity;

    invoke-static {v0}, Lcom/amazon/kcp/store/StoreActivity;->access$400(Lcom/amazon/kcp/store/StoreActivity;)Lcom/amazon/kcp/store/BrowserHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/store/BrowserHost;->injectJavaScript()V

    .line 246
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 231
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 232
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreActivity$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreActivity;

    invoke-static {v0}, Lcom/amazon/kcp/store/StoreActivity;->access$300(Lcom/amazon/kcp/store/StoreActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 233
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .parameter "view"
    .parameter "handler"
    .parameter "error"

    .prologue
    .line 257
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 259
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 159
    invoke-static {p2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 225
    :goto_0
    return v0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreActivity$StoreWebViewClient;->prevURL:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iget v0, p0, Lcom/amazon/kcp/store/StoreActivity$StoreWebViewClient;->circularRedirectAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/kcp/store/StoreActivity$StoreWebViewClient;->circularRedirectAttempts:I

    .line 167
    iget v0, p0, Lcom/amazon/kcp/store/StoreActivity$StoreWebViewClient;->circularRedirectAttempts:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 170
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "StoreActivity"

    const-string v2, "CircularRedirectPopout"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreActivity$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->openUrl(Ljava/lang/String;)V

    move v0, v3

    .line 172
    goto :goto_0

    .line 177
    :cond_1
    iput-object p2, p0, Lcom/amazon/kcp/store/StoreActivity$StoreWebViewClient;->prevURL:Ljava/lang/String;

    .line 178
    iput v1, p0, Lcom/amazon/kcp/store/StoreActivity$StoreWebViewClient;->circularRedirectAttempts:I

    .line 181
    :cond_2
    const-string v0, "kindle://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 183
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreActivity$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreActivity;

    invoke-static {v0, p2}, Lcom/amazon/kcp/application/KindleProtocol;->parseUri(Lcom/amazon/kcp/redding/ReddingActivity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 187
    if-nez v0, :cond_3

    .line 189
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreActivity$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreActivity;->finish()V

    :goto_1
    move v0, v3

    .line 225
    goto :goto_0

    .line 197
    :cond_3
    iget-object v1, p0, Lcom/amazon/kcp/store/StoreActivity$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreActivity;

    invoke-virtual {v1, v0, v3}, Lcom/amazon/kcp/store/StoreActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 200
    :cond_4
    const-string v0, "PopOutOfWebView"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StoreActivity got pop out token. Sending user to external browser for URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreActivity$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->openUrl(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreActivity$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreActivity;->finish()V

    goto :goto_1

    .line 210
    :cond_5
    const-string v0, "https?://www\\.amazon\\..*"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StoreActivity Sending user to external browser for URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreActivity$StoreWebViewClient;->this$0:Lcom/amazon/kcp/store/StoreActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->openUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 218
    :cond_6
    const-string v0, "http://"

    const-string v1, "https://"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StoreActivity received url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StoreActivity loading url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method
