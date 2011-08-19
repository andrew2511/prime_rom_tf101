.class Lnet/yostore/aws/service/PlayListService$2;
.super Ljava/lang/Thread;
.source "PlayListService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/service/PlayListService;->resumeDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/service/PlayListService;


# direct methods
.method constructor <init>(Lnet/yostore/aws/service/PlayListService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/service/PlayListService$2;->this$0:Lnet/yostore/aws/service/PlayListService;

    .line 416
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const v8, 0x7f02004e

    const/4 v6, 0x0

    .line 419
    iget-object v4, p0, Lnet/yostore/aws/service/PlayListService$2;->this$0:Lnet/yostore/aws/service/PlayListService;

    invoke-static {v4}, Lnet/yostore/aws/service/PlayListService;->access$0(Lnet/yostore/aws/service/PlayListService;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lnet/yostore/aws/service/PlayListService$2;->this$0:Lnet/yostore/aws/service/PlayListService;

    invoke-static {v5}, Lnet/yostore/aws/service/PlayListService;->access$10(Lnet/yostore/aws/service/PlayListService;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v5

    iget-object v5, v5, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-static {v4, v5}, Lnet/yostore/aws/sqlite/helper/DlQueueHelper;->resetMessageByUserName(Landroid/content/Context;Ljava/lang/String;)V

    .line 421
    iget-object v4, p0, Lnet/yostore/aws/service/PlayListService$2;->this$0:Lnet/yostore/aws/service/PlayListService;

    invoke-static {v4}, Lnet/yostore/aws/service/PlayListService;->access$0(Lnet/yostore/aws/service/PlayListService;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lnet/yostore/aws/service/PlayListService$2;->this$0:Lnet/yostore/aws/service/PlayListService;

    invoke-static {v5}, Lnet/yostore/aws/service/PlayListService;->access$10(Lnet/yostore/aws/service/PlayListService;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v5

    iget-object v5, v5, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-static {v4, v5}, Lnet/yostore/aws/sqlite/helper/DlQueueHelper;->getByUserName(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 423
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/DlQueue;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 424
    :cond_0
    iget-object v4, p0, Lnet/yostore/aws/service/PlayListService$2;->this$0:Lnet/yostore/aws/service/PlayListService;

    invoke-static {v4, v6}, Lnet/yostore/aws/service/PlayListService;->access$11(Lnet/yostore/aws/service/PlayListService;Z)V

    .line 425
    iget-object v4, p0, Lnet/yostore/aws/service/PlayListService$2;->this$0:Lnet/yostore/aws/service/PlayListService;

    invoke-static {v4}, Lnet/yostore/aws/service/PlayListService;->access$12(Lnet/yostore/aws/service/PlayListService;)V

    .line 476
    :goto_0
    return-void

    .line 429
    :cond_1
    iget-object v4, p0, Lnet/yostore/aws/service/PlayListService$2;->this$0:Lnet/yostore/aws/service/PlayListService;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lnet/yostore/aws/service/PlayListService;->access$11(Lnet/yostore/aws/service/PlayListService;Z)V

    .line 430
    iget-object v4, p0, Lnet/yostore/aws/service/PlayListService$2;->this$0:Lnet/yostore/aws/service/PlayListService;

    invoke-static {v4}, Lnet/yostore/aws/service/PlayListService;->access$13(Lnet/yostore/aws/service/PlayListService;)V

    .line 433
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 434
    .local v2, itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/sqlite/entity/DlQueue;>;"
    iget-object v4, p0, Lnet/yostore/aws/service/PlayListService$2;->this$0:Lnet/yostore/aws/service/PlayListService;

    invoke-static {v4, v6}, Lnet/yostore/aws/service/PlayListService;->access$14(Lnet/yostore/aws/service/PlayListService;Z)V

    .line 435
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 475
    iget-object v4, p0, Lnet/yostore/aws/service/PlayListService$2;->this$0:Lnet/yostore/aws/service/PlayListService;

    invoke-static {v4}, Lnet/yostore/aws/service/PlayListService;->access$12(Lnet/yostore/aws/service/PlayListService;)V

    goto :goto_0

    .line 436
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/sqlite/entity/DlQueue;

    .line 438
    .local v0, dlq:Lnet/yostore/aws/sqlite/entity/DlQueue;
    :try_start_0
    iget-object v4, p0, Lnet/yostore/aws/service/PlayListService$2;->this$0:Lnet/yostore/aws/service/PlayListService;

    iget-object v5, p0, Lnet/yostore/aws/service/PlayListService$2;->this$0:Lnet/yostore/aws/service/PlayListService;

    .line 439
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "http://"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lnet/yostore/aws/service/PlayListService$2;->this$0:Lnet/yostore/aws/service/PlayListService;

    invoke-static {v7}, Lnet/yostore/aws/service/PlayListService;->access$10(Lnet/yostore/aws/service/PlayListService;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v7

    iget-object v7, v7, Lnet/yostore/aws/api/ApiConfig;->webRelay:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/webrelay/directdownload/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 440
    iget-object v7, p0, Lnet/yostore/aws/service/PlayListService$2;->this$0:Lnet/yostore/aws/service/PlayListService;

    invoke-static {v7}, Lnet/yostore/aws/service/PlayListService;->access$10(Lnet/yostore/aws/service/PlayListService;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v7

    iget-object v7, v7, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 441
    const-string v7, "?dis="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lnet/yostore/aws/service/PlayListService$2;->this$0:Lnet/yostore/aws/service/PlayListService;

    invoke-static {v7}, Lnet/yostore/aws/service/PlayListService;->access$15(Lnet/yostore/aws/service/PlayListService;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 442
    const-string v7, "&fi="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lnet/yostore/aws/sqlite/entity/DlQueue;->mp3id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 443
    const-string v7, "&pv=0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 439
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 445
    iget-object v7, v0, Lnet/yostore/aws/sqlite/entity/DlQueue;->mp3id:Ljava/lang/String;

    .line 438
    invoke-static {v5, v6, v7}, Lnet/yostore/aws/service/PlayListService;->access$16(Lnet/yostore/aws/service/PlayListService;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Lnet/yostore/aws/service/PlayListService;->access$17(Lnet/yostore/aws/service/PlayListService;I)V

    .line 448
    iget-object v4, p0, Lnet/yostore/aws/service/PlayListService$2;->this$0:Lnet/yostore/aws/service/PlayListService;

    invoke-static {v4}, Lnet/yostore/aws/service/PlayListService;->access$8(Lnet/yostore/aws/service/PlayListService;)I

    move-result v4

    if-gez v4, :cond_4

    .line 449
    iget-object v4, p0, Lnet/yostore/aws/service/PlayListService$2;->this$0:Lnet/yostore/aws/service/PlayListService;

    invoke-static {v4}, Lnet/yostore/aws/service/PlayListService;->access$0(Lnet/yostore/aws/service/PlayListService;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, v0, Lnet/yostore/aws/sqlite/entity/DlQueue;->mp3id:Ljava/lang/String;

    invoke-static {v4, v5}, Lnet/yostore/aws/sqlite/helper/DlQueueHelper;->del(Landroid/content/Context;Ljava/lang/String;)V

    .line 450
    iget-object v4, p0, Lnet/yostore/aws/service/PlayListService$2;->this$0:Lnet/yostore/aws/service/PlayListService;

    invoke-static {v4}, Lnet/yostore/aws/service/PlayListService;->access$0(Lnet/yostore/aws/service/PlayListService;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, v0, Lnet/yostore/aws/sqlite/entity/DlQueue;->mp3id:Ljava/lang/String;

    sget-object v6, Lnet/yostore/aws/sqlite/entity/Song$TYPE;->Offline:Lnet/yostore/aws/sqlite/entity/Song$TYPE;

    invoke-static {v4, v5, v6}, Lnet/yostore/aws/sqlite/helper/SongHelper;->updateType(Landroid/content/Context;Ljava/lang/String;Lnet/yostore/aws/sqlite/entity/Song$TYPE;)V

    .line 453
    iget-object v4, p0, Lnet/yostore/aws/service/PlayListService$2;->this$0:Lnet/yostore/aws/service/PlayListService;

    invoke-static {v4}, Lnet/yostore/aws/service/PlayListService;->access$0(Lnet/yostore/aws/service/PlayListService;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, v0, Lnet/yostore/aws/sqlite/entity/DlQueue;->plistid:Ljava/lang/String;

    invoke-static {v4, v5}, Lnet/yostore/aws/sqlite/helper/DlQueueHelper;->isExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 454
    iget-object v4, p0, Lnet/yostore/aws/service/PlayListService$2;->this$0:Lnet/yostore/aws/service/PlayListService;

    invoke-static {v4}, Lnet/yostore/aws/service/PlayListService;->access$0(Lnet/yostore/aws/service/PlayListService;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, v0, Lnet/yostore/aws/sqlite/entity/DlQueue;->plistid:Ljava/lang/String;

    sget-object v6, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;->off_completed:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    invoke-static {v4, v5, v6}, Lnet/yostore/aws/sqlite/helper/PlayListHelper;->updateStatus(Landroid/content/Context;Ljava/lang/String;Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;)V

    .line 455
    iget-object v4, p0, Lnet/yostore/aws/service/PlayListService$2;->this$0:Lnet/yostore/aws/service/PlayListService;

    const-string v5, "PlayList.StatusChanged"

    iget-object v6, v0, Lnet/yostore/aws/sqlite/entity/DlQueue;->plistid:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lnet/yostore/aws/service/PlayListService;->access$2(Lnet/yostore/aws/service/PlayListService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 466
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 467
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "PlayListService"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v4, p0, Lnet/yostore/aws/service/PlayListService$2;->this$0:Lnet/yostore/aws/service/PlayListService;

    invoke-static {v4}, Lnet/yostore/aws/service/PlayListService;->access$18(Lnet/yostore/aws/service/PlayListService;)V

    .line 469
    iget-object v4, p0, Lnet/yostore/aws/service/PlayListService$2;->this$0:Lnet/yostore/aws/service/PlayListService;

    invoke-virtual {v4}, Lnet/yostore/aws/service/PlayListService;->pauseDownload()V

    .line 470
    iget-object v4, p0, Lnet/yostore/aws/service/PlayListService$2;->this$0:Lnet/yostore/aws/service/PlayListService;

    const-string v5, ""

    invoke-virtual {v4, v8, v5}, Lnet/yostore/aws/service/PlayListService;->updateNotification(ILjava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 460
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    :try_start_1
    iget-object v4, p0, Lnet/yostore/aws/service/PlayListService$2;->this$0:Lnet/yostore/aws/service/PlayListService;

    invoke-static {v4}, Lnet/yostore/aws/service/PlayListService;->access$0(Lnet/yostore/aws/service/PlayListService;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, v0, Lnet/yostore/aws/sqlite/entity/DlQueue;->mp3id:Ljava/lang/String;

    sget-object v6, Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;->PAUSED:Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;

    iget-object v7, p0, Lnet/yostore/aws/service/PlayListService$2;->this$0:Lnet/yostore/aws/service/PlayListService;

    invoke-static {v7}, Lnet/yostore/aws/service/PlayListService;->access$8(Lnet/yostore/aws/service/PlayListService;)I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Lnet/yostore/aws/sqlite/helper/DlQueueHelper;->updateStatusAndMessage(Landroid/content/Context;Ljava/lang/String;Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;I)V

    .line 461
    iget-object v4, p0, Lnet/yostore/aws/service/PlayListService$2;->this$0:Lnet/yostore/aws/service/PlayListService;

    invoke-static {v4}, Lnet/yostore/aws/service/PlayListService;->access$18(Lnet/yostore/aws/service/PlayListService;)V

    .line 462
    iget-object v4, p0, Lnet/yostore/aws/service/PlayListService$2;->this$0:Lnet/yostore/aws/service/PlayListService;

    invoke-virtual {v4}, Lnet/yostore/aws/service/PlayListService;->pauseDownload()V

    .line 463
    iget-object v4, p0, Lnet/yostore/aws/service/PlayListService$2;->this$0:Lnet/yostore/aws/service/PlayListService;

    const v5, 0x7f02004e

    iget-object v6, p0, Lnet/yostore/aws/service/PlayListService$2;->this$0:Lnet/yostore/aws/service/PlayListService;

    iget-object v7, p0, Lnet/yostore/aws/service/PlayListService$2;->this$0:Lnet/yostore/aws/service/PlayListService;

    invoke-static {v7}, Lnet/yostore/aws/service/PlayListService;->access$8(Lnet/yostore/aws/service/PlayListService;)I

    move-result v7

    invoke-virtual {v6, v7}, Lnet/yostore/aws/service/PlayListService;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lnet/yostore/aws/service/PlayListService;->updateNotification(ILjava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
