.class Lcom/ecareme/pixwe/service/UploadService$2$1;
.super Ljava/lang/Thread;
.source "UploadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/service/UploadService$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ecareme/pixwe/service/UploadService$2;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/service/UploadService$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/service/UploadService$2$1;->this$1:Lcom/ecareme/pixwe/service/UploadService$2;

    .line 424
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 426
    const/4 v1, 0x0

    .line 427
    .local v1, ulq:Lnet/yostore/aws/sqlite/entity/UploadQueue;
    const/4 v0, 0x0

    .line 428
    .local v0, fcs:Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;
    :goto_0
    invoke-static {}, Lcom/ecareme/pixwe/PixWe;->haveInternet()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/ecareme/pixwe/service/UploadService;->access$0()Lcom/ecareme/pixwe/service/UploadService$STATUS;

    move-result-object v2

    sget-object v3, Lcom/ecareme/pixwe/service/UploadService$STATUS;->FREEZE:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    if-eq v2, v3, :cond_0

    invoke-static {}, Lcom/ecareme/pixwe/service/UploadService;->access$0()Lcom/ecareme/pixwe/service/UploadService$STATUS;

    move-result-object v2

    sget-object v3, Lcom/ecareme/pixwe/service/UploadService$STATUS;->IDLE:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/ecareme/pixwe/service/UploadService$2$1;->this$1:Lcom/ecareme/pixwe/service/UploadService$2;

    invoke-static {v2}, Lcom/ecareme/pixwe/service/UploadService$2;->access$0(Lcom/ecareme/pixwe/service/UploadService$2;)Lcom/ecareme/pixwe/service/UploadService;

    move-result-object v2

    invoke-static {v2}, Lcom/ecareme/pixwe/service/UploadService;->access$3(Lcom/ecareme/pixwe/service/UploadService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/ecareme/pixwe/service/UploadService$2$1;->this$1:Lcom/ecareme/pixwe/service/UploadService$2;

    invoke-static {v3}, Lcom/ecareme/pixwe/service/UploadService$2;->access$0(Lcom/ecareme/pixwe/service/UploadService$2;)Lcom/ecareme/pixwe/service/UploadService;

    move-result-object v3

    invoke-static {v3}, Lcom/ecareme/pixwe/service/UploadService;->access$4(Lcom/ecareme/pixwe/service/UploadService;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v3

    iget-object v3, v3, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-static {v2, v3}, Lnet/yostore/aws/sqlite/helper/UploadQueueHelper;->popUploadQueue(Landroid/content/Context;Ljava/lang/String;)Lnet/yostore/aws/sqlite/entity/UploadQueue;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/ecareme/pixwe/service/UploadService$2$1;->this$1:Lcom/ecareme/pixwe/service/UploadService$2;

    invoke-static {v2}, Lcom/ecareme/pixwe/service/UploadService$2;->access$0(Lcom/ecareme/pixwe/service/UploadService$2;)Lcom/ecareme/pixwe/service/UploadService;

    move-result-object v2

    invoke-static {v2}, Lcom/ecareme/pixwe/service/UploadService;->access$3(Lcom/ecareme/pixwe/service/UploadService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/ecareme/pixwe/service/UploadService$2$1;->this$1:Lcom/ecareme/pixwe/service/UploadService$2;

    invoke-static {v3}, Lcom/ecareme/pixwe/service/UploadService$2;->access$0(Lcom/ecareme/pixwe/service/UploadService$2;)Lcom/ecareme/pixwe/service/UploadService;

    move-result-object v3

    invoke-static {v3}, Lcom/ecareme/pixwe/service/UploadService;->access$4(Lcom/ecareme/pixwe/service/UploadService;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v3

    iget-object v3, v3, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-static {v2, v3}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqHelper;->popChangedFolder(Landroid/content/Context;Ljava/lang/String;)Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;

    move-result-object v0

    if-nez v0, :cond_1

    .line 440
    :cond_0
    return-void

    .line 429
    :cond_1
    if-eqz v1, :cond_2

    .line 430
    iget-object v2, p0, Lcom/ecareme/pixwe/service/UploadService$2$1;->this$1:Lcom/ecareme/pixwe/service/UploadService$2;

    invoke-static {v2}, Lcom/ecareme/pixwe/service/UploadService$2;->access$0(Lcom/ecareme/pixwe/service/UploadService$2;)Lcom/ecareme/pixwe/service/UploadService;

    move-result-object v2

    invoke-static {v2}, Lcom/ecareme/pixwe/service/UploadService;->access$9(Lcom/ecareme/pixwe/service/UploadService;)Z

    goto :goto_0

    .line 431
    :cond_2
    if-eqz v0, :cond_3

    .line 432
    iget-object v2, p0, Lcom/ecareme/pixwe/service/UploadService$2$1;->this$1:Lcom/ecareme/pixwe/service/UploadService$2;

    invoke-static {v2}, Lcom/ecareme/pixwe/service/UploadService$2;->access$0(Lcom/ecareme/pixwe/service/UploadService$2;)Lcom/ecareme/pixwe/service/UploadService;

    move-result-object v2

    invoke-static {v2}, Lcom/ecareme/pixwe/service/UploadService;->access$10(Lcom/ecareme/pixwe/service/UploadService;)Z

    goto :goto_0

    .line 434
    :cond_3
    sget-object v2, Lcom/ecareme/pixwe/service/UploadService$STATUS;->IDLE:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    invoke-static {v2}, Lcom/ecareme/pixwe/service/UploadService;->access$1(Lcom/ecareme/pixwe/service/UploadService$STATUS;)V

    .line 435
    iget-object v2, p0, Lcom/ecareme/pixwe/service/UploadService$2$1;->this$1:Lcom/ecareme/pixwe/service/UploadService$2;

    invoke-static {v2}, Lcom/ecareme/pixwe/service/UploadService$2;->access$0(Lcom/ecareme/pixwe/service/UploadService$2;)Lcom/ecareme/pixwe/service/UploadService;

    move-result-object v2

    const v3, 0x7f020095

    iget-object v4, p0, Lcom/ecareme/pixwe/service/UploadService$2$1;->this$1:Lcom/ecareme/pixwe/service/UploadService$2;

    invoke-static {v4}, Lcom/ecareme/pixwe/service/UploadService$2;->access$0(Lcom/ecareme/pixwe/service/UploadService$2;)Lcom/ecareme/pixwe/service/UploadService;

    move-result-object v4

    const v5, 0x7f0600b9

    invoke-virtual {v4, v5}, Lcom/ecareme/pixwe/service/UploadService;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-virtual {v2, v3, v4, v5}, Lcom/ecareme/pixwe/service/UploadService;->updateNotification(ILjava/lang/CharSequence;I)V

    .line 436
    iget-object v2, p0, Lcom/ecareme/pixwe/service/UploadService$2$1;->this$1:Lcom/ecareme/pixwe/service/UploadService$2;

    invoke-static {v2}, Lcom/ecareme/pixwe/service/UploadService$2;->access$0(Lcom/ecareme/pixwe/service/UploadService$2;)Lcom/ecareme/pixwe/service/UploadService;

    move-result-object v2

    const-string v3, "upload_status"

    invoke-static {}, Lcom/ecareme/pixwe/service/UploadService;->access$0()Lcom/ecareme/pixwe/service/UploadService$STATUS;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ecareme/pixwe/service/UploadService$STATUS;->getInt()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/ecareme/pixwe/service/UploadService;->access$11(Lcom/ecareme/pixwe/service/UploadService;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method
