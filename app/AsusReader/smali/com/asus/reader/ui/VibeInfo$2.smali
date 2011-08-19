.class Lcom/asus/reader/ui/VibeInfo$2;
.super Ljava/lang/Object;
.source "VibeInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/ui/VibeInfo;->openPreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/ui/VibeInfo;

.field final synthetic val$previewURL:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/asus/reader/ui/VibeInfo;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/asus/reader/ui/VibeInfo$2;->this$0:Lcom/asus/reader/ui/VibeInfo;

    iput-object p2, p0, Lcom/asus/reader/ui/VibeInfo$2;->val$previewURL:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 269
    iget-object v1, p0, Lcom/asus/reader/ui/VibeInfo$2;->val$previewURL:Ljava/lang/String;

    invoke-static {v1}, Lcom/asus/reader/util/Downloader;->getFileURLfromHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, fileURL:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 271
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/asus/reader/ui/VibeInfo$2;->this$0:Lcom/asus/reader/ui/VibeInfo;

    invoke-static {v3}, Lcom/asus/reader/ui/VibeInfo;->access$100(Lcom/asus/reader/ui/VibeInfo;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/asus/reader/util/Downloader;->downloadBook(Ljava/lang/String;ZLjava/lang/String;Landroid/content/Context;)Z

    .line 279
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v1, p0, Lcom/asus/reader/ui/VibeInfo$2;->this$0:Lcom/asus/reader/ui/VibeInfo;

    invoke-static {v1}, Lcom/asus/reader/ui/VibeInfo;->access$200(Lcom/asus/reader/ui/VibeInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 275
    iget-object v1, p0, Lcom/asus/reader/ui/VibeInfo$2;->this$0:Lcom/asus/reader/ui/VibeInfo;

    invoke-static {v1}, Lcom/asus/reader/ui/VibeInfo;->access$300(Lcom/asus/reader/ui/VibeInfo;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/reader/ui/VibeInfo$2;->this$0:Lcom/asus/reader/ui/VibeInfo;

    invoke-static {v2}, Lcom/asus/reader/ui/VibeInfo;->access$300(Lcom/asus/reader/ui/VibeInfo;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 277
    :cond_1
    iget-object v1, p0, Lcom/asus/reader/ui/VibeInfo$2;->this$0:Lcom/asus/reader/ui/VibeInfo;

    invoke-static {v1}, Lcom/asus/reader/ui/VibeInfo;->access$100(Lcom/asus/reader/ui/VibeInfo;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    iget-object v4, p0, Lcom/asus/reader/ui/VibeInfo$2;->val$previewURL:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
