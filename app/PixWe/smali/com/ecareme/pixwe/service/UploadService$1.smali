.class Lcom/ecareme/pixwe/service/UploadService$1;
.super Lcom/ecareme/pixwe/service/UploadServiceInterface$Stub;
.source "UploadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/service/UploadService;
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
    iput-object p1, p0, Lcom/ecareme/pixwe/service/UploadService$1;->this$0:Lcom/ecareme/pixwe/service/UploadService;

    .line 170
    invoke-direct {p0}, Lcom/ecareme/pixwe/service/UploadServiceInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public clearNotification()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lcom/ecareme/pixwe/service/UploadService$1;->this$0:Lcom/ecareme/pixwe/service/UploadService;

    invoke-static {v0}, Lcom/ecareme/pixwe/service/UploadService;->access$7(Lcom/ecareme/pixwe/service/UploadService;)Landroid/app/NotificationManager;

    move-result-object v0

    const v1, 0x7f020041

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 274
    return-void
.end method

.method public cloudToLocalSync()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 315
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ecareme/pixwe/service/UploadService;->isNeedToRefresh:Z

    .line 316
    return-void
.end method

.method public delToSync()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 307
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ecareme/pixwe/service/UploadService;->isNeedToDel:Z

    .line 308
    iget-object v0, p0, Lcom/ecareme/pixwe/service/UploadService$1;->this$0:Lcom/ecareme/pixwe/service/UploadService;

    invoke-static {v0}, Lcom/ecareme/pixwe/service/UploadService;->access$8(Lcom/ecareme/pixwe/service/UploadService;)V

    .line 309
    return-void
.end method

.method public getUploadStatus()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 257
    invoke-static {}, Lcom/ecareme/pixwe/service/UploadService;->access$0()Lcom/ecareme/pixwe/service/UploadService$STATUS;

    move-result-object v1

    sget-object v2, Lcom/ecareme/pixwe/service/UploadService$STATUS;->IDLE:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    if-ne v1, v2, :cond_1

    .line 258
    iget-object v1, p0, Lcom/ecareme/pixwe/service/UploadService$1;->this$0:Lcom/ecareme/pixwe/service/UploadService;

    invoke-static {v1}, Lcom/ecareme/pixwe/service/UploadService;->access$3(Lcom/ecareme/pixwe/service/UploadService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ecareme/pixwe/service/UploadService$1;->this$0:Lcom/ecareme/pixwe/service/UploadService;

    invoke-static {v2}, Lcom/ecareme/pixwe/service/UploadService;->access$4(Lcom/ecareme/pixwe/service/UploadService;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    iget-object v2, v2, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-static {v1, v2}, Lnet/yostore/aws/sqlite/helper/UploadQueueHelper;->popUploadQueue(Landroid/content/Context;Ljava/lang/String;)Lnet/yostore/aws/sqlite/entity/UploadQueue;

    move-result-object v0

    .line 259
    .local v0, ulq:Lnet/yostore/aws/sqlite/entity/UploadQueue;
    if-eqz v0, :cond_0

    .line 260
    sget-object v1, Lcom/ecareme/pixwe/service/UploadService$STATUS;->FREEZE:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    invoke-static {v1}, Lcom/ecareme/pixwe/service/UploadService;->access$1(Lcom/ecareme/pixwe/service/UploadService$STATUS;)V

    .line 266
    .end local v0           #ulq:Lnet/yostore/aws/sqlite/entity/UploadQueue;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/ecareme/pixwe/service/UploadService;->access$0()Lcom/ecareme/pixwe/service/UploadService$STATUS;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ecareme/pixwe/service/UploadService$STATUS;->getInt()I

    move-result v1

    return v1

    .line 262
    :cond_1
    invoke-static {}, Lcom/ecareme/pixwe/service/UploadService;->access$0()Lcom/ecareme/pixwe/service/UploadService$STATUS;

    sget-object v1, Lcom/ecareme/pixwe/service/UploadService$STATUS;->FREEZE:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    goto :goto_0
.end method

.method public pouseUpload()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 249
    sget-object v0, Lcom/ecareme/pixwe/service/UploadService$STATUS;->FREEZE:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    invoke-static {v0}, Lcom/ecareme/pixwe/service/UploadService;->access$1(Lcom/ecareme/pixwe/service/UploadService$STATUS;)V

    .line 250
    iget-object v0, p0, Lcom/ecareme/pixwe/service/UploadService$1;->this$0:Lcom/ecareme/pixwe/service/UploadService;

    const v1, 0x7f020096

    iget-object v2, p0, Lcom/ecareme/pixwe/service/UploadService$1;->this$0:Lcom/ecareme/pixwe/service/UploadService;

    const v3, 0x7f0600b6

    invoke-virtual {v2, v3}, Lcom/ecareme/pixwe/service/UploadService;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/ecareme/pixwe/service/UploadService;->updateNotification(ILjava/lang/CharSequence;I)V

    .line 251
    return-void
.end method

.method public resetService()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lcom/ecareme/pixwe/service/UploadService$1;->this$0:Lcom/ecareme/pixwe/service/UploadService;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/service/UploadService;->onDestroy()V

    .line 231
    return-void
.end method

.method public showUploadStatus()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const v5, 0x7f0600b6

    const v3, 0x7f020096

    const/4 v4, 0x2

    .line 280
    invoke-static {}, Lcom/ecareme/pixwe/service/UploadService;->access$0()Lcom/ecareme/pixwe/service/UploadService$STATUS;

    move-result-object v1

    sget-object v2, Lcom/ecareme/pixwe/service/UploadService$STATUS;->IDLE:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    if-ne v1, v2, :cond_1

    .line 281
    iget-object v1, p0, Lcom/ecareme/pixwe/service/UploadService$1;->this$0:Lcom/ecareme/pixwe/service/UploadService;

    invoke-static {v1}, Lcom/ecareme/pixwe/service/UploadService;->access$3(Lcom/ecareme/pixwe/service/UploadService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ecareme/pixwe/service/UploadService$1;->this$0:Lcom/ecareme/pixwe/service/UploadService;

    invoke-static {v2}, Lcom/ecareme/pixwe/service/UploadService;->access$4(Lcom/ecareme/pixwe/service/UploadService;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    iget-object v2, v2, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-static {v1, v2}, Lnet/yostore/aws/sqlite/helper/UploadQueueHelper;->popUploadQueue(Landroid/content/Context;Ljava/lang/String;)Lnet/yostore/aws/sqlite/entity/UploadQueue;

    move-result-object v0

    .line 282
    .local v0, ulq:Lnet/yostore/aws/sqlite/entity/UploadQueue;
    if-eqz v0, :cond_0

    .line 283
    sget-object v1, Lcom/ecareme/pixwe/service/UploadService$STATUS;->FREEZE:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    invoke-static {v1}, Lcom/ecareme/pixwe/service/UploadService;->access$1(Lcom/ecareme/pixwe/service/UploadService$STATUS;)V

    .line 284
    iget-object v1, p0, Lcom/ecareme/pixwe/service/UploadService$1;->this$0:Lcom/ecareme/pixwe/service/UploadService;

    iget-object v2, p0, Lcom/ecareme/pixwe/service/UploadService$1;->this$0:Lcom/ecareme/pixwe/service/UploadService;

    invoke-virtual {v2, v5}, Lcom/ecareme/pixwe/service/UploadService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2, v4}, Lcom/ecareme/pixwe/service/UploadService;->updateNotification(ILjava/lang/CharSequence;I)V

    .line 294
    .end local v0           #ulq:Lnet/yostore/aws/sqlite/entity/UploadQueue;
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    invoke-static {}, Lcom/ecareme/pixwe/service/UploadService;->access$0()Lcom/ecareme/pixwe/service/UploadService$STATUS;

    move-result-object v1

    sget-object v2, Lcom/ecareme/pixwe/service/UploadService$STATUS;->FREEZE:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    if-ne v1, v2, :cond_2

    .line 288
    iget-object v1, p0, Lcom/ecareme/pixwe/service/UploadService$1;->this$0:Lcom/ecareme/pixwe/service/UploadService;

    iget-object v2, p0, Lcom/ecareme/pixwe/service/UploadService$1;->this$0:Lcom/ecareme/pixwe/service/UploadService;

    invoke-virtual {v2, v5}, Lcom/ecareme/pixwe/service/UploadService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2, v4}, Lcom/ecareme/pixwe/service/UploadService;->updateNotification(ILjava/lang/CharSequence;I)V

    goto :goto_0

    .line 292
    :cond_2
    iget-object v1, p0, Lcom/ecareme/pixwe/service/UploadService$1;->this$0:Lcom/ecareme/pixwe/service/UploadService;

    const v2, 0x7f020041

    const-string v3, ""

    invoke-virtual {v1, v2, v3, v4}, Lcom/ecareme/pixwe/service/UploadService;->updateNotification(ILjava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method public stardUpload()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 237
    invoke-static {}, Lcom/ecareme/pixwe/service/UploadService;->access$0()Lcom/ecareme/pixwe/service/UploadService$STATUS;

    move-result-object v0

    sget-object v1, Lcom/ecareme/pixwe/service/UploadService$STATUS;->IDLE:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/ecareme/pixwe/service/UploadService;->access$0()Lcom/ecareme/pixwe/service/UploadService$STATUS;

    move-result-object v0

    sget-object v1, Lcom/ecareme/pixwe/service/UploadService$STATUS;->FREEZE:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/ecareme/pixwe/PixWe;->haveInternet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    sget-object v0, Lcom/ecareme/pixwe/service/UploadService$STATUS;->HOT:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    invoke-static {v0}, Lcom/ecareme/pixwe/service/UploadService;->access$1(Lcom/ecareme/pixwe/service/UploadService$STATUS;)V

    .line 239
    iget-object v0, p0, Lcom/ecareme/pixwe/service/UploadService$1;->this$0:Lcom/ecareme/pixwe/service/UploadService;

    invoke-static {v0}, Lcom/ecareme/pixwe/service/UploadService;->access$5(Lcom/ecareme/pixwe/service/UploadService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ecareme/pixwe/service/UploadService$1;->this$0:Lcom/ecareme/pixwe/service/UploadService;

    invoke-static {v1}, Lcom/ecareme/pixwe/service/UploadService;->access$6(Lcom/ecareme/pixwe/service/UploadService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/ecareme/pixwe/service/UploadService$1;->this$0:Lcom/ecareme/pixwe/service/UploadService;

    const v1, 0x7f020096

    iget-object v2, p0, Lcom/ecareme/pixwe/service/UploadService$1;->this$0:Lcom/ecareme/pixwe/service/UploadService;

    const v3, 0x7f0600b6

    invoke-virtual {v2, v3}, Lcom/ecareme/pixwe/service/UploadService;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/ecareme/pixwe/service/UploadService;->updateNotification(ILjava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method public uploadDB()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 301
    return-void
.end method

.method public uploadMediaList(Ljava/util/List;Ljava/util/List;)Z
    .locals 17
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/MediaInfoBean;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 181
    .local p1, fileUrlList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, mediaInfoBeanList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    invoke-static {}, Lcom/ecareme/pixwe/service/UploadService;->access$0()Lcom/ecareme/pixwe/service/UploadService$STATUS;

    move-result-object v13

    sget-object v14, Lcom/ecareme/pixwe/service/UploadService$STATUS;->IDLE:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    if-ne v13, v14, :cond_0

    .line 182
    sget-object v13, Lcom/ecareme/pixwe/service/UploadService$STATUS;->FREEZE:Lcom/ecareme/pixwe/service/UploadService$STATUS;

    invoke-static {v13}, Lcom/ecareme/pixwe/service/UploadService;->access$1(Lcom/ecareme/pixwe/service/UploadService$STATUS;)V

    .line 184
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    if-lt v3, v13, :cond_1

    .line 221
    const/4 v13, 0x1

    return v13

    .line 185
    :cond_1
    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 186
    .local v2, fileUrl:Ljava/lang/String;
    move-object/from16 v0, p2

    move v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/yostore/aws/handler/entity/MediaInfoBean;

    .line 188
    .local v4, mediaInfoBean:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/service/UploadService$1;->this$0:Lcom/ecareme/pixwe/service/UploadService;

    move-object v13, v0

    invoke-static {v13}, Lcom/ecareme/pixwe/service/UploadService;->access$2(Lcom/ecareme/pixwe/service/UploadService;)V

    .line 189
    const-wide/16 v13, -0x3e7

    invoke-virtual {v4, v13, v14}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setI(J)V

    .line 190
    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setUs(I)V

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/service/UploadService$1;->this$0:Lcom/ecareme/pixwe/service/UploadService;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/ecareme/pixwe/service/UploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v4}, Lnet/yostore/aws/sqlite/helper/MediaHelper;->insertMedia(Landroid/content/Context;Lnet/yostore/aws/handler/entity/MediaInfoBean;)J

    move-result-wide v5

    .line 192
    .local v5, mediaRowId:J
    const-wide/16 v11, -0x1

    .line 193
    .local v11, uploadQueueId:J
    const-wide/16 v8, -0x1

    .line 194
    .local v8, uploadBatchId:J
    const-wide/16 v13, -0x1

    cmp-long v13, v5, v13

    if-lez v13, :cond_2

    .line 196
    new-instance v7, Lnet/yostore/aws/sqlite/entity/UploadBatch;

    invoke-direct {v7}, Lnet/yostore/aws/sqlite/entity/UploadBatch;-><init>()V

    .line 200
    .local v7, ub:Lnet/yostore/aws/sqlite/entity/UploadBatch;
    const-wide/16 v13, -0x3e7

    invoke-virtual {v7, v13, v14}, Lnet/yostore/aws/sqlite/entity/UploadBatch;->setFolderId(J)V

    .line 201
    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/service/UploadService$1;->this$0:Lcom/ecareme/pixwe/service/UploadService;

    move-object v14, v0

    invoke-static {v14}, Lcom/ecareme/pixwe/service/UploadService;->access$3(Lcom/ecareme/pixwe/service/UploadService;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v4}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getMediaInfoFolder()J

    move-result-wide v15

    invoke-static/range {v14 .. v16}, Lnet/yostore/aws/sqlite/helper/AlbumListHelper;->getAlbum(Landroid/content/Context;J)Lnet/yostore/aws/handler/entity/AlbumInfoBean;

    move-result-object v14

    invoke-virtual {v14}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getDisplay()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/service/UploadService$1;->this$0:Lcom/ecareme/pixwe/service/UploadService;

    move-object v14, v0

    iget-object v14, v14, Lcom/ecareme/pixwe/service/UploadService;->formatter:Ljava/text/Format;

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15}, Ljava/util/Date;-><init>()V

    invoke-virtual {v14, v15}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Lnet/yostore/aws/sqlite/entity/UploadBatch;->setFolderName(Ljava/lang/String;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/service/UploadService$1;->this$0:Lcom/ecareme/pixwe/service/UploadService;

    move-object v13, v0

    invoke-static {v13}, Lcom/ecareme/pixwe/service/UploadService;->access$4(Lcom/ecareme/pixwe/service/UploadService;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v13

    iget-object v13, v13, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v7, v13}, Lnet/yostore/aws/sqlite/entity/UploadBatch;->setUserName(Ljava/lang/String;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/service/UploadService$1;->this$0:Lcom/ecareme/pixwe/service/UploadService;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/ecareme/pixwe/service/UploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v7}, Lnet/yostore/aws/sqlite/helper/UploadBatchHelper;->updateAndSave(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/UploadBatch;)J

    move-result-wide v8

    .line 206
    new-instance v10, Lnet/yostore/aws/sqlite/entity/UploadQueue;

    invoke-direct {v10}, Lnet/yostore/aws/sqlite/entity/UploadQueue;-><init>()V

    .line 207
    .local v10, uploadQueue:Lnet/yostore/aws/sqlite/entity/UploadQueue;
    invoke-virtual {v10, v2}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->setFileUrl(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v4}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getD()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->setFileName(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v10, v5, v6}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->setMediaRowId(J)V

    .line 210
    invoke-virtual {v10, v8, v9}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->setBatchId(J)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/service/UploadService$1;->this$0:Lcom/ecareme/pixwe/service/UploadService;

    move-object v13, v0

    invoke-static {v13}, Lcom/ecareme/pixwe/service/UploadService;->access$4(Lcom/ecareme/pixwe/service/UploadService;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v13

    iget-object v13, v13, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v10, v13}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->setUserName(Ljava/lang/String;)V

    .line 212
    const-wide/16 v13, -0x3e7

    invoke-virtual {v10, v13, v14}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->setParentFolderId(J)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/service/UploadService$1;->this$0:Lcom/ecareme/pixwe/service/UploadService;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/ecareme/pixwe/service/UploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v10}, Lnet/yostore/aws/sqlite/helper/UploadQueueHelper;->insertUploadQueue(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/UploadQueue;)J

    move-result-wide v11

    .line 214
    const-wide/16 v13, -0x1

    cmp-long v13, v11, v13

    if-lez v13, :cond_2

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/service/UploadService$1;->this$0:Lcom/ecareme/pixwe/service/UploadService;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/ecareme/pixwe/service/UploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v4}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getMediaInfoFolder()J

    move-result-wide v14

    invoke-static {v13, v14, v15}, Lcom/ecareme/pixwe/PixWe;->updateDBFlg(Landroid/content/Context;J)V

    .line 184
    .end local v7           #ub:Lnet/yostore/aws/sqlite/entity/UploadBatch;
    .end local v10           #uploadQueue:Lnet/yostore/aws/sqlite/entity/UploadQueue;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method
