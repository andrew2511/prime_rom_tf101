.class Lcom/android/browser/Controller$7;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/Controller;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/Controller;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$topWebView:Landroid/webkit/WebView;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/browser/Controller;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1620
    iput-object p1, p0, Lcom/android/browser/Controller$7;->this$0:Lcom/android/browser/Controller;

    iput-object p2, p0, Lcom/android/browser/Controller$7;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/browser/Controller$7;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/browser/Controller$7;->val$topWebView:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1620
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/browser/Controller$7;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 14
    .parameter "value"

    .prologue
    const/4 v9, 0x0

    .line 1623
    if-eqz p1, :cond_0

    .line 1624
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1625
    .local v13, file:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 1626
    .local v5, length:J
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, v5, v0

    if-lez v0, :cond_0

    .line 1627
    iget-object v0, p0, Lcom/android/browser/Controller$7;->this$0:Lcom/android/browser/Controller;

    invoke-static {v0}, Lcom/android/browser/Controller;->access$300(Lcom/android/browser/Controller;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090069

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1629
    iget-object v0, p0, Lcom/android/browser/Controller$7;->this$0:Lcom/android/browser/Controller;

    invoke-static {v0}, Lcom/android/browser/Controller;->access$300(Lcom/android/browser/Controller;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/DownloadManager;

    .line 1631
    .local v3, manager:Landroid/app/DownloadManager;
    new-instance v0, Lcom/android/browser/Controller$7$1;

    const-string v2, "Add WebArchive to download manager"

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/browser/Controller$7$1;-><init>(Lcom/android/browser/Controller$7;Ljava/lang/String;Landroid/app/DownloadManager;Ljava/lang/String;J)V

    invoke-virtual {v0}, Lcom/android/browser/Controller$7$1;->start()V

    .line 1645
    .end local v3           #manager:Landroid/app/DownloadManager;
    .end local v5           #length:J
    .end local v13           #file:Ljava/io/File;
    :goto_0
    return-void

    .line 1643
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Controller$7;->this$0:Lcom/android/browser/Controller;

    invoke-static {v0}, Lcom/android/browser/Controller;->access$300(Lcom/android/browser/Controller;)Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/android/browser/Controller$7;->val$url:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/browser/Controller$7;->val$topWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v12

    move-object v10, v9

    move-object v11, v9

    invoke-static/range {v7 .. v12}, Lcom/android/browser/DownloadHandler;->onDownloadStartNoStream(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method
