.class public Lcom/ecareme/pixwe/service/Uploader;
.super Ljava/lang/Object;
.source "Uploader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecareme/pixwe/service/Uploader$STATUS;
    }
.end annotation


# static fields
.field private static final STAT_RESPONSE_NULL:I = -0x3e7

.field private static final TAG:Ljava/lang/String; = "Uploader"


# instance fields
.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field public apistatus:I

.field private ctx:Landroid/content/Context;

.field public status:Lcom/ecareme/pixwe/service/Uploader$STATUS;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;)V
    .locals 1
    .parameter "ctx"
    .parameter "apicfg"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/ecareme/pixwe/service/Uploader;->apistatus:I

    .line 35
    iput-object p2, p0, Lcom/ecareme/pixwe/service/Uploader;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 36
    iput-object p1, p0, Lcom/ecareme/pixwe/service/Uploader;->ctx:Landroid/content/Context;

    .line 37
    return-void
.end method

.method private createFolder(Ljava/lang/String;)J
    .locals 6
    .parameter "folderName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/yostore/aws/api/exception/APIException;
        }
    .end annotation

    .prologue
    .line 181
    new-instance v1, Lnet/yostore/aws/handler/PixWeDataHandler;

    iget-object v4, p0, Lcom/ecareme/pixwe/service/Uploader;->ctx:Landroid/content/Context;

    iget-object v5, p0, Lcom/ecareme/pixwe/service/Uploader;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-direct {v1, v4, v5}, Lnet/yostore/aws/handler/PixWeDataHandler;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;)V

    .line 182
    .local v1, pwdh:Lnet/yostore/aws/handler/PixWeDataHandler;
    const-wide/16 v2, -0x3e7

    .line 183
    .local v2, rtn:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v4, 0x3

    if-ge v0, v4, :cond_0

    invoke-static {}, Lcom/ecareme/pixwe/PixWe;->haveInternet()Z

    move-result v4

    if-nez v4, :cond_1

    .line 187
    :cond_0
    return-wide v2

    .line 184
    :cond_1
    invoke-virtual {v1, p1}, Lnet/yostore/aws/handler/PixWeDataHandler;->createMediasFolder(Ljava/lang/String;)J

    move-result-wide v2

    .line 185
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private uploadFile(JLjava/io/File;Ljava/lang/String;J)I
    .locals 13
    .parameter "pfid"
    .parameter "uploadFile"
    .parameter "attr"
    .parameter "uploadRowId"

    .prologue
    .line 95
    new-instance v6, Lnet/yostore/aws/api/helper/DirectUploadHelper;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    move-object v0, v6

    move-object v1, v10

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lnet/yostore/aws/api/helper/DirectUploadHelper;-><init>(Ljava/lang/String;Ljava/io/File;)V

    .line 96
    .local v6, helper:Lnet/yostore/aws/api/helper/DirectUploadHelper;
    const/4 v8, 0x0

    .line 99
    .local v8, response:Lnet/yostore/aws/api/entity/DirectUploadResponse;
    :try_start_0
    iget-object v10, p0, Lcom/ecareme/pixwe/service/Uploader;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v6, v10}, Lnet/yostore/aws/api/helper/DirectUploadHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lnet/yostore/aws/api/entity/DirectUploadResponse;

    move-object v8, v0

    .line 100
    if-nez v8, :cond_0

    .line 102
    const/16 v10, -0x3e7

    .line 118
    :goto_0
    return v10

    .line 103
    :cond_0
    invoke-virtual {v8}, Lnet/yostore/aws/api/entity/DirectUploadResponse;->getStatus()I

    move-result v10

    if-nez v10, :cond_1

    .line 104
    invoke-virtual {v8}, Lnet/yostore/aws/api/entity/DirectUploadResponse;->getFileId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 105
    .local v4, fid:J
    iget-object v10, p0, Lcom/ecareme/pixwe/service/Uploader;->ctx:Landroid/content/Context;

    move-object v0, v10

    move-wide/from16 v1, p5

    invoke-static {v0, v1, v2}, Lnet/yostore/aws/sqlite/helper/UploadQueueHelper;->getUploadQueueByRowId(Landroid/content/Context;J)Lnet/yostore/aws/sqlite/entity/UploadQueue;

    move-result-object v9

    .line 106
    .local v9, ulq:Lnet/yostore/aws/sqlite/entity/UploadQueue;
    iget-object v10, p0, Lcom/ecareme/pixwe/service/Uploader;->ctx:Landroid/content/Context;

    invoke-virtual {v9}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->getMediaRowId()J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Lnet/yostore/aws/sqlite/helper/MediaHelper;->getMedia(Landroid/content/Context;J)Lnet/yostore/aws/handler/entity/MediaInfoBean;

    move-result-object v7

    .line 107
    .local v7, mib:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setUs(I)V

    .line 108
    invoke-virtual {v7, v4, v5}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setI(J)V

    .line 109
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setFr(I)V

    .line 110
    iget-object v10, p0, Lcom/ecareme/pixwe/service/Uploader;->ctx:Landroid/content/Context;

    invoke-static {v10, v7}, Lnet/yostore/aws/sqlite/helper/MediaHelper;->updateMedia(Landroid/content/Context;Lnet/yostore/aws/handler/entity/MediaInfoBean;)J

    .line 111
    sget-object v10, Lcom/ecareme/pixwe/service/Uploader$STATUS;->OK:Lcom/ecareme/pixwe/service/Uploader$STATUS;

    iput-object v10, p0, Lcom/ecareme/pixwe/service/Uploader;->status:Lcom/ecareme/pixwe/service/Uploader$STATUS;

    .line 113
    .end local v4           #fid:J
    .end local v7           #mib:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    .end local v9           #ulq:Lnet/yostore/aws/sqlite/entity/UploadQueue;
    :cond_1
    invoke-virtual {v8}, Lnet/yostore/aws/api/entity/DirectUploadResponse;->getStatus()I
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    goto :goto_0

    .line 115
    :catch_0
    move-exception v10

    move-object v3, v10

    .line 118
    .local v3, e1:Lnet/yostore/aws/api/exception/APIException;
    const/16 v10, -0x3e7

    goto :goto_0
.end method


# virtual methods
.method public upload(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;J)I
    .locals 9
    .parameter "uid"
    .parameter "pfid"
    .parameter "filePath"
    .parameter "attr"
    .parameter "uploadRowId"

    .prologue
    .line 82
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    .local v3, uploadFile:Ljava/io/File;
    const/4 v8, 0x0

    .line 84
    .local v8, rtnResult:I
    const/4 v7, 0x0

    .local v7, retryTimes:I
    :goto_0
    const/4 v0, 0x3

    if-lt v7, v0, :cond_1

    .line 90
    :cond_0
    return v8

    :cond_1
    move-object v0, p0

    move-wide v1, p2

    move-object v4, p5

    move-wide v5, p6

    .line 85
    invoke-direct/range {v0 .. v6}, Lcom/ecareme/pixwe/service/Uploader;->uploadFile(JLjava/io/File;Ljava/lang/String;J)I

    move-result v8

    if-eqz v8, :cond_0

    .line 84
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method public upload(Lnet/yostore/aws/sqlite/entity/UploadQueue;)I
    .locals 10
    .parameter "ulq"

    .prologue
    const-wide/16 v6, 0x0

    .line 53
    sget-object v0, Lcom/ecareme/pixwe/service/Uploader$STATUS;->NG:Lcom/ecareme/pixwe/service/Uploader$STATUS;

    iput-object v0, p0, Lcom/ecareme/pixwe/service/Uploader;->status:Lcom/ecareme/pixwe/service/Uploader$STATUS;

    .line 54
    iget-object v0, p0, Lcom/ecareme/pixwe/service/Uploader;->ctx:Landroid/content/Context;

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->getBatchId()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lnet/yostore/aws/sqlite/helper/UploadBatchHelper;->getUploadBatchByBatchId(Landroid/content/Context;J)Lnet/yostore/aws/sqlite/entity/UploadBatch;

    move-result-object v9

    .line 56
    .local v9, ulb:Lnet/yostore/aws/sqlite/entity/UploadBatch;
    if-eqz v9, :cond_0

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->getParentFolderId()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/ecareme/pixwe/service/Uploader;->ctx:Landroid/content/Context;

    invoke-virtual {v9}, Lnet/yostore/aws/sqlite/entity/UploadBatch;->getBatchId()J

    move-result-wide v4

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->getParentFolderId()J

    move-result-wide v6

    invoke-static {v0, v4, v5, v6, v7}, Lnet/yostore/aws/sqlite/helper/UploadQueueHelper;->updateUploadFolderIdByBatchId(Landroid/content/Context;JJ)V

    .line 58
    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->getParentFolderId()J

    move-result-wide v2

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->getFileUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->getAttribute()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->getId()J

    move-result-wide v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/ecareme/pixwe/service/Uploader;->upload(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;J)I

    move-result v0

    .line 77
    :goto_0
    return v0

    .line 59
    :cond_0
    if-eqz v9, :cond_1

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->getParentFolderId()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-gtz v0, :cond_1

    .line 60
    const-wide/16 v2, -0x3e7

    .line 63
    .local v2, uploadFolder:J
    :try_start_0
    invoke-virtual {v9}, Lnet/yostore/aws/sqlite/entity/UploadBatch;->getFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ecareme/pixwe/service/Uploader;->createFolder(Ljava/lang/String;)J
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 70
    :goto_1
    cmp-long v0, v2, v6

    if-lez v0, :cond_1

    .line 71
    invoke-virtual {v9, v2, v3}, Lnet/yostore/aws/sqlite/entity/UploadBatch;->setFolderId(J)V

    .line 72
    iget-object v0, p0, Lcom/ecareme/pixwe/service/Uploader;->ctx:Landroid/content/Context;

    invoke-static {v0, v9}, Lnet/yostore/aws/sqlite/helper/UploadBatchHelper;->updateAndSave(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/UploadBatch;)J

    .line 73
    iget-object v0, p0, Lcom/ecareme/pixwe/service/Uploader;->ctx:Landroid/content/Context;

    invoke-virtual {v9}, Lnet/yostore/aws/sqlite/entity/UploadBatch;->getBatchId()J

    move-result-wide v4

    invoke-static {v0, v4, v5, v2, v3}, Lnet/yostore/aws/sqlite/helper/UploadQueueHelper;->updateUploadFolderIdByBatchId(Landroid/content/Context;JJ)V

    .line 74
    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->getFileUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->getAttribute()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->getId()J

    move-result-wide v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/ecareme/pixwe/service/Uploader;->upload(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;J)I

    move-result v0

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 68
    .local v8, e:Lnet/yostore/aws/api/exception/APIException;
    invoke-virtual {v8}, Lnet/yostore/aws/api/exception/APIException;->printStackTrace()V

    goto :goto_1

    .line 77
    .end local v2           #uploadFolder:J
    .end local v8           #e:Lnet/yostore/aws/api/exception/APIException;
    :cond_1
    const/16 v0, -0x3e7

    goto :goto_0
.end method
