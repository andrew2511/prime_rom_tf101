.class Lcom/asus/reader/ReaderWebView$1;
.super Ljava/lang/Object;
.source "ReaderWebView.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/ReaderWebView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/ReaderWebView;


# direct methods
.method constructor <init>(Lcom/asus/reader/ReaderWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/asus/reader/ReaderWebView$1;->this$0:Lcom/asus/reader/ReaderWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 10
    .parameter "url"
    .parameter "userAgent"
    .parameter "contentDisposition"
    .parameter "mimetype"
    .parameter "contentLength"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/asus/reader/ReaderWebView$1;->this$0:Lcom/asus/reader/ReaderWebView;

    invoke-static {v0, p1}, Lcom/asus/reader/ReaderWebView;->access$102(Lcom/asus/reader/ReaderWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    const-string v2, "download from ReaderWebView"

    .line 71
    .local v2, description:Ljava/lang/String;
    const-string v0, "ReaderWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string v0, "ReaderWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contentDisposition = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v0, "ReaderWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mimetype = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v0, "https://sp.yostore.net:443/access/requestticket/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/asus/reader/ReaderWebView$1;->this$0:Lcom/asus/reader/ReaderWebView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/asus/reader/ReaderWebView;->access$202(Lcom/asus/reader/ReaderWebView;Z)Z

    .line 100
    .end local v2           #description:Ljava/lang/String;
    :goto_0
    return-void

    .line 82
    .restart local v2       #description:Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/ReaderWebView$1;->this$0:Lcom/asus/reader/ReaderWebView;

    iget-object v1, p0, Lcom/asus/reader/ReaderWebView$1;->this$0:Lcom/asus/reader/ReaderWebView;

    const v3, 0x7f0700b1

    invoke-virtual {v1, v3}, Lcom/asus/reader/ReaderWebView;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 83
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/asus/reader/ReaderWebView$1;->this$0:Lcom/asus/reader/ReaderWebView;

    invoke-static {v0}, Lcom/asus/reader/ReaderWebView;->access$300(Lcom/asus/reader/ReaderWebView;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/asus/reader/ReaderWebView$1;->this$0:Lcom/asus/reader/ReaderWebView;

    invoke-virtual {v0}, Lcom/asus/reader/ReaderWebView;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    move-object v0, p1

    move-object v3, p4

    move-object v4, p3

    invoke-static/range {v0 .. v6}, Lcom/asus/reader/util/Downloader;->downloadFromWeb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 84
    .local v8, filepath:Ljava/lang/String;
    iget-object v0, p0, Lcom/asus/reader/ReaderWebView$1;->this$0:Lcom/asus/reader/ReaderWebView;

    invoke-static {v0, p1}, Lcom/asus/reader/ReaderWebView;->access$402(Lcom/asus/reader/ReaderWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    sget-object v0, Lcom/asus/reader/book/ReaderDatabaseUtil;->sBookSourceMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/asus/reader/ReaderWebView$1;->this$0:Lcom/asus/reader/ReaderWebView;

    invoke-static {v1}, Lcom/asus/reader/ReaderWebView;->access$400(Lcom/asus/reader/ReaderWebView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/reader/ReaderWebView$1;->this$0:Lcom/asus/reader/ReaderWebView;

    .end local v2           #description:Ljava/lang/String;
    invoke-static {v2}, Lcom/asus/reader/ReaderWebView;->access$500(Lcom/asus/reader/ReaderWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/asus/reader/book/ReaderDatabaseUtil;->sVibeIdMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/asus/reader/ReaderWebView$1;->this$0:Lcom/asus/reader/ReaderWebView;

    invoke-static {v1}, Lcom/asus/reader/ReaderWebView;->access$400(Lcom/asus/reader/ReaderWebView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/reader/ReaderWebView$1;->this$0:Lcom/asus/reader/ReaderWebView;

    invoke-static {v2}, Lcom/asus/reader/ReaderWebView;->access$600(Lcom/asus/reader/ReaderWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".acsm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    :try_start_0
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 91
    .local v9, i:Landroid/content/Intent;
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "application/vnd.adobe.adept+xml"

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    iget-object v0, p0, Lcom/asus/reader/ReaderWebView$1;->this$0:Lcom/asus/reader/ReaderWebView;

    invoke-virtual {v0, v9}, Lcom/asus/reader/ReaderWebView;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v9           #i:Landroid/content/Intent;
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/asus/reader/ReaderWebView$1;->this$0:Lcom/asus/reader/ReaderWebView;

    invoke-virtual {v0}, Lcom/asus/reader/ReaderWebView;->finish()V

    goto/16 :goto_0

    .line 94
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 95
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "ReaderWebView"

    const-string v1, "can not send intent to acsm activity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
