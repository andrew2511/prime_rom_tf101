.class Lcom/asus/vibe2/Act_BuyBrowser$2;
.super Landroid/webkit/WebViewClient;
.source "Act_BuyBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/vibe2/Act_BuyBrowser;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/vibe2/Act_BuyBrowser;


# direct methods
.method constructor <init>(Lcom/asus/vibe2/Act_BuyBrowser;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/asus/vibe2/Act_BuyBrowser$2;->this$0:Lcom/asus/vibe2/Act_BuyBrowser;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/asus/vibe2/Act_BuyBrowser$2;->this$0:Lcom/asus/vibe2/Act_BuyBrowser;

    invoke-static {v0}, Lcom/asus/vibe2/Act_BuyBrowser;->access$200(Lcom/asus/vibe2/Act_BuyBrowser;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/vibe2/Act_BuyBrowser$2;->this$0:Lcom/asus/vibe2/Act_BuyBrowser;

    invoke-static {v0}, Lcom/asus/vibe2/Act_BuyBrowser;->access$200(Lcom/asus/vibe2/Act_BuyBrowser;)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/vibe2/Act_BuyBrowser$2;->this$0:Lcom/asus/vibe2/Act_BuyBrowser;

    invoke-static {v1}, Lcom/asus/vibe2/Act_BuyBrowser;->access$100(Lcom/asus/vibe2/Act_BuyBrowser;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/asus/vibe2/Act_BuyBrowser$2;->this$0:Lcom/asus/vibe2/Act_BuyBrowser;

    invoke-static {v0}, Lcom/asus/vibe2/Act_BuyBrowser;->access$300(Lcom/asus/vibe2/Act_BuyBrowser;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/asus/vibe2/Act_BuyBrowser$2;->this$0:Lcom/asus/vibe2/Act_BuyBrowser;

    invoke-static {v0}, Lcom/asus/vibe2/Act_BuyBrowser;->access$300(Lcom/asus/vibe2/Act_BuyBrowser;)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/vibe2/Act_BuyBrowser$2;->this$0:Lcom/asus/vibe2/Act_BuyBrowser;

    invoke-static {v1}, Lcom/asus/vibe2/Act_BuyBrowser;->access$100(Lcom/asus/vibe2/Act_BuyBrowser;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 107
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 112
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, targetUrl:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 114
    const-string v1, "close.php"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "promotionend.php"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/asus/vibe2/Act_BuyBrowser$2;->this$0:Lcom/asus/vibe2/Act_BuyBrowser;

    invoke-virtual {v1}, Lcom/asus/vibe2/Act_BuyBrowser;->finish()V

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/asus/vibe2/Act_BuyBrowser$2;->this$0:Lcom/asus/vibe2/Act_BuyBrowser;

    invoke-static {v1}, Lcom/asus/vibe2/Act_BuyBrowser;->access$400(Lcom/asus/vibe2/Act_BuyBrowser;)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/asus/vibe2/Act_BuyBrowser$2;->this$0:Lcom/asus/vibe2/Act_BuyBrowser;

    invoke-static {v1}, Lcom/asus/vibe2/Act_BuyBrowser;->access$400(Lcom/asus/vibe2/Act_BuyBrowser;)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 118
    :cond_2
    iget-object v1, p0, Lcom/asus/vibe2/Act_BuyBrowser$2;->this$0:Lcom/asus/vibe2/Act_BuyBrowser;

    invoke-static {v1}, Lcom/asus/vibe2/Act_BuyBrowser;->access$200(Lcom/asus/vibe2/Act_BuyBrowser;)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/asus/vibe2/Act_BuyBrowser$2;->this$0:Lcom/asus/vibe2/Act_BuyBrowser;

    invoke-static {v1}, Lcom/asus/vibe2/Act_BuyBrowser;->access$200(Lcom/asus/vibe2/Act_BuyBrowser;)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/vibe2/Act_BuyBrowser$2;->this$0:Lcom/asus/vibe2/Act_BuyBrowser;

    invoke-static {v2}, Lcom/asus/vibe2/Act_BuyBrowser;->access$100(Lcom/asus/vibe2/Act_BuyBrowser;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 119
    :cond_3
    iget-object v1, p0, Lcom/asus/vibe2/Act_BuyBrowser$2;->this$0:Lcom/asus/vibe2/Act_BuyBrowser;

    invoke-static {v1}, Lcom/asus/vibe2/Act_BuyBrowser;->access$300(Lcom/asus/vibe2/Act_BuyBrowser;)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/asus/vibe2/Act_BuyBrowser$2;->this$0:Lcom/asus/vibe2/Act_BuyBrowser;

    invoke-static {v1}, Lcom/asus/vibe2/Act_BuyBrowser;->access$300(Lcom/asus/vibe2/Act_BuyBrowser;)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/vibe2/Act_BuyBrowser$2;->this$0:Lcom/asus/vibe2/Act_BuyBrowser;

    invoke-static {v2}, Lcom/asus/vibe2/Act_BuyBrowser;->access$100(Lcom/asus/vibe2/Act_BuyBrowser;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 120
    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 121
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    .line 94
    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, targetUrl:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 96
    const-string v1, "close.php"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "promotionend.php"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/asus/vibe2/Act_BuyBrowser$2;->this$0:Lcom/asus/vibe2/Act_BuyBrowser;

    invoke-virtual {v1}, Lcom/asus/vibe2/Act_BuyBrowser;->finish()V

    .line 101
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 99
    :cond_1
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
