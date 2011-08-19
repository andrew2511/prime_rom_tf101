.class Lcom/amazon/kcp/redding/WebViewActivity$1;
.super Landroid/webkit/WebViewClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/redding/WebViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/redding/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/redding/WebViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/amazon/kcp/redding/WebViewActivity$1;->this$0:Lcom/amazon/kcp/redding/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/amazon/kcp/redding/WebViewActivity$1;->this$0:Lcom/amazon/kcp/redding/WebViewActivity;

    invoke-static {v0}, Lcom/amazon/kcp/redding/WebViewActivity;->access$100(Lcom/amazon/kcp/redding/WebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 119
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 87
    .line 88
    iget-object v0, p0, Lcom/amazon/kcp/redding/WebViewActivity$1;->this$0:Lcom/amazon/kcp/redding/WebViewActivity;

    invoke-static {v0}, Lcom/amazon/kcp/redding/WebViewActivity;->access$000(Lcom/amazon/kcp/redding/WebViewActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 93
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/redding/WebViewActivity$1;->this$0:Lcom/amazon/kcp/redding/WebViewActivity;

    invoke-static {v1}, Lcom/amazon/kcp/redding/WebViewActivity;->access$000(Lcom/amazon/kcp/redding/WebViewActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 103
    :goto_0
    if-eqz v0, :cond_1

    .line 105
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 112
    :goto_1
    return v2

    :cond_0
    move v0, v3

    .line 94
    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Malformed URL given to web view activity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/redding/WebViewActivity$1;->this$0:Lcom/amazon/kcp/redding/WebViewActivity;

    invoke-static {v1}, Lcom/amazon/kcp/redding/WebViewActivity;->access$000(Lcom/amazon/kcp/redding/WebViewActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v3

    .line 99
    goto :goto_0

    .line 109
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebViewActivity redirecting to external browser: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-object v0, p0, Lcom/amazon/kcp/redding/WebViewActivity$1;->this$0:Lcom/amazon/kcp/redding/WebViewActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/redding/WebViewActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->openUrl(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method
