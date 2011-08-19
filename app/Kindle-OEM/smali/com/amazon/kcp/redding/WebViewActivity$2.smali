.class Lcom/amazon/kcp/redding/WebViewActivity$2;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/webkit/WebView$PictureListener;


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
    .line 122
    iput-object p1, p0, Lcom/amazon/kcp/redding/WebViewActivity$2;->this$0:Lcom/amazon/kcp/redding/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/amazon/kcp/redding/WebViewActivity$2;->this$0:Lcom/amazon/kcp/redding/WebViewActivity;

    invoke-static {v0}, Lcom/amazon/kcp/redding/WebViewActivity;->access$100(Lcom/amazon/kcp/redding/WebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/amazon/kcp/redding/WebViewActivity$2;->this$0:Lcom/amazon/kcp/redding/WebViewActivity;

    invoke-static {v0}, Lcom/amazon/kcp/redding/WebViewActivity;->access$200(Lcom/amazon/kcp/redding/WebViewActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    .line 135
    iget-object v0, p0, Lcom/amazon/kcp/redding/WebViewActivity$2;->this$0:Lcom/amazon/kcp/redding/WebViewActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/kcp/redding/WebViewActivity;->access$202(Lcom/amazon/kcp/redding/WebViewActivity;Z)Z

    .line 138
    iget-object v0, p0, Lcom/amazon/kcp/redding/WebViewActivity$2;->this$0:Lcom/amazon/kcp/redding/WebViewActivity;

    invoke-static {v0}, Lcom/amazon/kcp/redding/WebViewActivity;->access$000(Lcom/amazon/kcp/redding/WebViewActivity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/redding/WebViewActivity$2;->this$0:Lcom/amazon/kcp/redding/WebViewActivity;

    new-instance v1, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kcp/redding/WebViewActivity;->access$002(Lcom/amazon/kcp/redding/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Malformed URL given to web view activity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/redding/WebViewActivity$2;->this$0:Lcom/amazon/kcp/redding/WebViewActivity;

    invoke-static {v1}, Lcom/amazon/kcp/redding/WebViewActivity;->access$000(Lcom/amazon/kcp/redding/WebViewActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-object v0, p0, Lcom/amazon/kcp/redding/WebViewActivity$2;->this$0:Lcom/amazon/kcp/redding/WebViewActivity;

    const-string v1, "Invalid Host"

    invoke-static {v0, v1}, Lcom/amazon/kcp/redding/WebViewActivity;->access$002(Lcom/amazon/kcp/redding/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
