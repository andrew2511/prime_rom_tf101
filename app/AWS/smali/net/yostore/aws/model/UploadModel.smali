.class public Lnet/yostore/aws/model/UploadModel;
.super Ljava/lang/Object;
.source "UploadModel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UploadMoedl"


# instance fields
.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private ctx:Landroid/content/Context;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;)V
    .locals 2
    .parameter "ctx"
    .parameter "apicfg"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "AWSPrefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/model/UploadModel;->mPrefs:Landroid/content/SharedPreferences;

    .line 29
    iput-object p2, p0, Lnet/yostore/aws/model/UploadModel;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 30
    iput-object p1, p0, Lnet/yostore/aws/model/UploadModel;->ctx:Landroid/content/Context;

    .line 31
    return-void
.end method

.method private uploadFile(Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/sqlite/entity/UploadItem;Landroid/content/Context;)J
    .locals 7
    .parameter "apicfg"
    .parameter "uitem"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/yostore/aws/api/exception/APIException;
        }
    .end annotation

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, response:Lnet/yostore/aws/api/entity/DirectUploadResponse;
    const-wide/16 v1, -0x3e7

    .line 82
    .local v1, rtnFileId:J
    invoke-static {p1, p2, p3}, Lnet/yostore/aws/model/http/RestClient;->UploadArtifact(Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/sqlite/entity/UploadItem;Landroid/content/Context;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v0

    .end local v0           #response:Lnet/yostore/aws/api/entity/DirectUploadResponse;
    check-cast v0, Lnet/yostore/aws/api/entity/DirectUploadResponse;

    .line 83
    .restart local v0       #response:Lnet/yostore/aws/api/entity/DirectUploadResponse;
    if-eqz v0, :cond_0

    .line 85
    sget-object v3, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->applicationContext:Landroid/content/Context;

    iget-wide v4, p2, Lnet/yostore/aws/sqlite/entity/UploadItem;->idx:J

    invoke-virtual {v0}, Lnet/yostore/aws/api/entity/DirectUploadResponse;->getStatus()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lnet/yostore/aws/sqlite/helper/UploadQueueHelper;->updateItemStatus(Landroid/content/Context;JI)V

    .line 86
    invoke-virtual {v0}, Lnet/yostore/aws/api/entity/DirectUploadResponse;->getStatus()I

    move-result v3

    if-nez v3, :cond_0

    .line 87
    invoke-virtual {v0}, Lnet/yostore/aws/api/entity/DirectUploadResponse;->getFileId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 90
    :cond_0
    return-wide v1
.end method

.method private uploadFile(Lnet/yostore/aws/sqlite/entity/UploadItem;)J
    .locals 12
    .parameter "ui"

    .prologue
    .line 41
    new-instance v7, Ljava/io/File;

    iget-object v8, p1, Lnet/yostore/aws/sqlite/entity/UploadItem;->path:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .local v7, uploadFile:Ljava/io/File;
    new-instance v2, Lnet/yostore/aws/api/helper/DirectUploadHelper;

    iget-wide v8, p1, Lnet/yostore/aws/sqlite/entity/UploadItem;->uploadFolder:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8, v7}, Lnet/yostore/aws/api/helper/DirectUploadHelper;-><init>(Ljava/lang/String;Ljava/io/File;)V

    .line 43
    .local v2, helper:Lnet/yostore/aws/api/helper/DirectUploadHelper;
    const/4 v3, 0x0

    .line 44
    .local v3, response:Lnet/yostore/aws/api/entity/DirectUploadResponse;
    const-wide/16 v5, -0x3e7

    .line 45
    .local v5, rtnFileId:J
    const/4 v4, 0x0

    .local v4, retryTimes:I
    :goto_0
    const/4 v8, 0x3

    if-lt v4, v8, :cond_1

    .line 73
    :cond_0
    :goto_1
    return-wide v5

    .line 48
    :cond_1
    :try_start_0
    iget-object v8, p0, Lnet/yostore/aws/model/UploadModel;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v2, v8}, Lnet/yostore/aws/api/helper/DirectUploadHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lnet/yostore/aws/api/entity/DirectUploadResponse;

    move-object v3, v0

    .line 49
    if-eqz v3, :cond_2

    .line 51
    sget-object v8, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->applicationContext:Landroid/content/Context;

    iget-wide v9, p1, Lnet/yostore/aws/sqlite/entity/UploadItem;->idx:J

    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/DirectUploadResponse;->getStatus()I

    move-result v11

    invoke-static {v8, v9, v10, v11}, Lnet/yostore/aws/sqlite/helper/UploadQueueHelper;->updateItemStatus(Landroid/content/Context;JI)V

    .line 52
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/DirectUploadResponse;->getStatus()I

    move-result v8

    if-nez v8, :cond_0

    .line 53
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/DirectUploadResponse;->getFileId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v5

    .line 69
    :cond_2
    :goto_2
    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-gtz v8, :cond_0

    .line 45
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 60
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 62
    .local v1, e:Lnet/yostore/aws/api/exception/APIException;
    const-string v8, "UploadMoedl"

    invoke-virtual {v1}, Lnet/yostore/aws/api/exception/APIException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 65
    .end local v1           #e:Lnet/yostore/aws/api/exception/APIException;
    :catch_1
    move-exception v8

    move-object v1, v8

    .line 67
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "UploadMoedl"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public upload(Lnet/yostore/aws/sqlite/entity/UploadItem;)J
    .locals 4
    .parameter "ui"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/yostore/aws/api/exception/APIException;
        }
    .end annotation

    .prologue
    .line 35
    const-wide/16 v0, -0x3e7

    .line 36
    .local v0, rtnFileId:J
    iget-object v2, p0, Lnet/yostore/aws/model/UploadModel;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    sget-object v3, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->applicationContext:Landroid/content/Context;

    invoke-direct {p0, v2, p1, v3}, Lnet/yostore/aws/model/UploadModel;->uploadFile(Lnet/yostore/aws/api/ApiConfig;Lnet/yostore/aws/sqlite/entity/UploadItem;Landroid/content/Context;)J

    move-result-wide v0

    .line 37
    return-wide v0
.end method
