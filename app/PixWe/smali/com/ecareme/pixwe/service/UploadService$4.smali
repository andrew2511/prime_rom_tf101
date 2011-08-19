.class Lcom/ecareme/pixwe/service/UploadService$4;
.super Ljava/lang/Thread;
.source "UploadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ecareme/pixwe/service/UploadService;->delFiles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/service/UploadService;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/service/UploadService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ecareme/pixwe/service/UploadService$4;->this$0:Lcom/ecareme/pixwe/service/UploadService;

    .line 536
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 538
    const/4 v12, 0x0

    sput-boolean v12, Lcom/ecareme/pixwe/service/UploadService;->isNeedToDel:Z

    .line 539
    iget-object v12, p0, Lcom/ecareme/pixwe/service/UploadService$4;->this$0:Lcom/ecareme/pixwe/service/UploadService;

    invoke-static {v12}, Lcom/ecareme/pixwe/service/UploadService;->access$3(Lcom/ecareme/pixwe/service/UploadService;)Landroid/content/Context;

    move-result-object v12

    iget-object v13, p0, Lcom/ecareme/pixwe/service/UploadService$4;->this$0:Lcom/ecareme/pixwe/service/UploadService;

    invoke-static {v13}, Lcom/ecareme/pixwe/service/UploadService;->access$4(Lcom/ecareme/pixwe/service/UploadService;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v13

    iget-object v13, v13, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-static {v12, v13}, Lnet/yostore/aws/sqlite/helper/DelQueueHelper;->getDelFolderQueue(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 540
    .local v4, delFolderList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/DelQueue;>;"
    iget-object v12, p0, Lcom/ecareme/pixwe/service/UploadService$4;->this$0:Lcom/ecareme/pixwe/service/UploadService;

    invoke-static {v12}, Lcom/ecareme/pixwe/service/UploadService;->access$3(Lcom/ecareme/pixwe/service/UploadService;)Landroid/content/Context;

    move-result-object v12

    iget-object v13, p0, Lcom/ecareme/pixwe/service/UploadService$4;->this$0:Lcom/ecareme/pixwe/service/UploadService;

    invoke-static {v13}, Lcom/ecareme/pixwe/service/UploadService;->access$4(Lcom/ecareme/pixwe/service/UploadService;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v13

    iget-object v13, v13, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-static {v12, v13}, Lnet/yostore/aws/sqlite/helper/DelQueueHelper;->getDelFileQueue(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 541
    .local v3, delFileList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/DelQueue;>;"
    const/4 v1, 0x0

    .line 543
    .local v1, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_0

    .line 544
    const-string v7, ""

    .line 546
    .local v7, fileId:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, a:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-lt v0, v12, :cond_2

    .line 554
    new-instance v1, Lnet/yostore/aws/api/helper/FileRemoveHelper;

    .end local v1           #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    invoke-direct {v1, v7}, Lnet/yostore/aws/api/helper/FileRemoveHelper;-><init>(Ljava/lang/String;)V

    .line 555
    .restart local v1       #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    const/4 v11, 0x0

    .line 557
    .local v11, response:Lnet/yostore/aws/api/entity/ApiResponse;
    :try_start_0
    iget-object v12, p0, Lcom/ecareme/pixwe/service/UploadService$4;->this$0:Lcom/ecareme/pixwe/service/UploadService;

    invoke-static {v12}, Lcom/ecareme/pixwe/service/UploadService;->access$4(Lcom/ecareme/pixwe/service/UploadService;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v12

    invoke-virtual {v1, v12}, Lnet/yostore/aws/api/helper/BaseHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v11

    .line 558
    invoke-virtual {v11}, Lnet/yostore/aws/api/entity/ApiResponse;->getStatus()I

    move-result v12

    if-nez v12, :cond_5

    .line 559
    const/4 v2, 0x0

    .local v2, b:I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    if-lt v2, v12, :cond_4

    .line 572
    .end local v0           #a:I
    .end local v2           #b:I
    .end local v7           #fileId:Ljava/lang/String;
    .end local v11           #response:Lnet/yostore/aws/api/entity/ApiResponse;
    :cond_0
    :goto_2
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_1

    .line 573
    const-string v8, ""

    .line 575
    .local v8, folderId:Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    if-lt v9, v12, :cond_6

    .line 583
    new-instance v1, Lnet/yostore/aws/api/helper/FolderRemoveHelper;

    .end local v1           #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    invoke-direct {v1, v8}, Lnet/yostore/aws/api/helper/FolderRemoveHelper;-><init>(Ljava/lang/String;)V

    .line 584
    .restart local v1       #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    const/4 v11, 0x0

    .line 586
    .restart local v11       #response:Lnet/yostore/aws/api/entity/ApiResponse;
    :try_start_1
    iget-object v12, p0, Lcom/ecareme/pixwe/service/UploadService$4;->this$0:Lcom/ecareme/pixwe/service/UploadService;

    invoke-static {v12}, Lcom/ecareme/pixwe/service/UploadService;->access$4(Lcom/ecareme/pixwe/service/UploadService;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v12

    invoke-virtual {v1, v12}, Lnet/yostore/aws/api/helper/BaseHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v11

    .line 587
    invoke-virtual {v11}, Lnet/yostore/aws/api/entity/ApiResponse;->getStatus()I

    move-result v12

    if-nez v12, :cond_9

    .line 588
    const/4 v10, 0x0

    .local v10, j:I
    :goto_4
    invoke-interface {v4}, Ljava/util/List;->size()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v12

    if-lt v10, v12, :cond_8

    .line 600
    .end local v8           #folderId:Ljava/lang/String;
    .end local v9           #i:I
    .end local v10           #j:I
    .end local v11           #response:Lnet/yostore/aws/api/entity/ApiResponse;
    :cond_1
    :goto_5
    return-void

    .line 547
    .restart local v0       #a:I
    .restart local v7       #fileId:Ljava/lang/String;
    :cond_2
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/yostore/aws/sqlite/entity/DelQueue;

    .line 548
    .local v5, dq:Lnet/yostore/aws/sqlite/entity/DelQueue;
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_3

    .line 549
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Lnet/yostore/aws/sqlite/entity/DelQueue;->getFid()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 546
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 551
    :cond_3
    invoke-virtual {v5}, Lnet/yostore/aws/sqlite/entity/DelQueue;->getFid()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    .line 560
    .end local v5           #dq:Lnet/yostore/aws/sqlite/entity/DelQueue;
    .restart local v2       #b:I
    .restart local v11       #response:Lnet/yostore/aws/api/entity/ApiResponse;
    :cond_4
    :try_start_2
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/yostore/aws/sqlite/entity/DelQueue;

    .line 561
    .restart local v5       #dq:Lnet/yostore/aws/sqlite/entity/DelQueue;
    iget-object v12, p0, Lcom/ecareme/pixwe/service/UploadService$4;->this$0:Lcom/ecareme/pixwe/service/UploadService;

    invoke-static {v12}, Lcom/ecareme/pixwe/service/UploadService;->access$3(Lcom/ecareme/pixwe/service/UploadService;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v5}, Lnet/yostore/aws/sqlite/entity/DelQueue;->getFid()J

    move-result-wide v13

    invoke-static {v12, v13, v14}, Lnet/yostore/aws/sqlite/helper/DelQueueHelper;->del(Landroid/content/Context;J)V

    .line 559
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 564
    .end local v2           #b:I
    .end local v5           #dq:Lnet/yostore/aws/sqlite/entity/DelQueue;
    :cond_5
    const/4 v12, 0x1

    sput-boolean v12, Lcom/ecareme/pixwe/service/UploadService;->isNeedToDel:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 566
    :catch_0
    move-exception v12

    move-object v6, v12

    .line 567
    .local v6, e:Ljava/lang/Exception;
    const-string v12, "UploadService"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const/4 v12, 0x1

    sput-boolean v12, Lcom/ecareme/pixwe/service/UploadService;->isNeedToDel:Z

    goto/16 :goto_2

    .line 576
    .end local v0           #a:I
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #fileId:Ljava/lang/String;
    .end local v11           #response:Lnet/yostore/aws/api/entity/ApiResponse;
    .restart local v8       #folderId:Ljava/lang/String;
    .restart local v9       #i:I
    :cond_6
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/yostore/aws/sqlite/entity/DelQueue;

    .line 577
    .restart local v5       #dq:Lnet/yostore/aws/sqlite/entity/DelQueue;
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_7

    .line 578
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Lnet/yostore/aws/sqlite/entity/DelQueue;->getFid()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 575
    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 580
    :cond_7
    invoke-virtual {v5}, Lnet/yostore/aws/sqlite/entity/DelQueue;->getFid()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    goto :goto_7

    .line 589
    .end local v5           #dq:Lnet/yostore/aws/sqlite/entity/DelQueue;
    .restart local v10       #j:I
    .restart local v11       #response:Lnet/yostore/aws/api/entity/ApiResponse;
    :cond_8
    :try_start_3
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/yostore/aws/sqlite/entity/DelQueue;

    .line 590
    .restart local v5       #dq:Lnet/yostore/aws/sqlite/entity/DelQueue;
    iget-object v12, p0, Lcom/ecareme/pixwe/service/UploadService$4;->this$0:Lcom/ecareme/pixwe/service/UploadService;

    invoke-static {v12}, Lcom/ecareme/pixwe/service/UploadService;->access$3(Lcom/ecareme/pixwe/service/UploadService;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v5}, Lnet/yostore/aws/sqlite/entity/DelQueue;->getFid()J

    move-result-wide v13

    invoke-static {v12, v13, v14}, Lnet/yostore/aws/sqlite/helper/DelQueueHelper;->del(Landroid/content/Context;J)V

    .line 588
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_4

    .line 593
    .end local v5           #dq:Lnet/yostore/aws/sqlite/entity/DelQueue;
    .end local v10           #j:I
    :cond_9
    const/4 v12, 0x1

    sput-boolean v12, Lcom/ecareme/pixwe/service/UploadService;->isNeedToDel:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_5

    .line 595
    :catch_1
    move-exception v12

    move-object v6, v12

    .line 596
    .restart local v6       #e:Ljava/lang/Exception;
    const-string v12, "UploadService"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const/4 v12, 0x1

    sput-boolean v12, Lcom/ecareme/pixwe/service/UploadService;->isNeedToDel:Z

    goto/16 :goto_5
.end method
