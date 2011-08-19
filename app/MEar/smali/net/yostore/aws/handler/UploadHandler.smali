.class public Lnet/yostore/aws/handler/UploadHandler;
.super Ljava/lang/Object;
.source "UploadHandler.java"


# static fields
.field private static final UP:Ljava/lang/String; = "/webrelay/directupload/"


# instance fields
.field public audios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/sqlite/entity/UploadItem;",
            ">;"
        }
    .end annotation
.end field

.field public notes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/sqlite/entity/UploadItem;",
            ">;"
        }
    .end annotation
.end field

.field public photos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/sqlite/entity/UploadItem;",
            ">;"
        }
    .end annotation
.end field

.field public sdfs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/sqlite/entity/UploadItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUploadUrl(Lnet/yostore/aws/api/ApiConfig;)Ljava/lang/String;
    .locals 2
    .parameter "apicfg"

    .prologue
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    iget-object v1, p0, Lnet/yostore/aws/api/ApiConfig;->webRelay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 20
    const-string v1, "/webrelay/directupload/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 21
    iget-object v1, p0, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 22
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    return-object v0
.end method

.method public static savedSearch(Lnet/yostore/aws/handler/entity/Search;Lnet/yostore/aws/api/ApiConfig;)Z
    .locals 9
    .parameter "search"
    .parameter "apicfg"

    .prologue
    const/4 v8, 0x1

    .line 27
    const/4 v4, 0x0

    .line 29
    .local v4, rtn:Z
    new-array v0, v8, [B

    .line 31
    .local v0, data:[B
    new-instance v5, Lnet/yostore/aws/api/WebRelayAPI;

    iget-object v6, p1, Lnet/yostore/aws/api/ApiConfig;->webRelay:Ljava/lang/String;

    const-string v7, "https://approxy.asuswebstorage.com/api/"

    invoke-direct {v5, v6, v7}, Lnet/yostore/aws/api/WebRelayAPI;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .local v5, wr:Lnet/yostore/aws/api/WebRelayAPI;
    :try_start_0
    new-instance v2, Lnet/yostore/aws/api/entity/DirectUploadRequest;

    invoke-direct {v2}, Lnet/yostore/aws/api/entity/DirectUploadRequest;-><init>()V

    .line 35
    .local v2, request:Lnet/yostore/aws/api/entity/DirectUploadRequest;
    invoke-virtual {v2, v0}, Lnet/yostore/aws/api/entity/DirectUploadRequest;->setData([B)V

    .line 36
    invoke-virtual {p0}, Lnet/yostore/aws/handler/entity/Search;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lnet/yostore/aws/api/entity/DirectUploadRequest;->setFileName(Ljava/lang/String;)V

    .line 37
    const-wide/16 v6, -0xd

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lnet/yostore/aws/api/entity/DirectUploadRequest;->setParentid(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v5, v2, p1}, Lnet/yostore/aws/api/WebRelayAPI;->directDataUpload(Lnet/yostore/aws/api/entity/DirectUploadRequest;Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/DirectUploadResponse;

    move-result-object v3

    .line 39
    .local v3, response:Lnet/yostore/aws/api/entity/DirectUploadResponse;
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/DirectUploadResponse;->getStatus()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/DirectUploadResponse;->getStatus()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    const/16 v7, 0xd6

    if-eq v6, v7, :cond_0

    const/4 v6, 0x0

    move v4, v6

    .line 43
    .end local v2           #request:Lnet/yostore/aws/api/entity/DirectUploadRequest;
    .end local v3           #response:Lnet/yostore/aws/api/entity/DirectUploadResponse;
    :goto_0
    return v4

    .restart local v2       #request:Lnet/yostore/aws/api/entity/DirectUploadRequest;
    .restart local v3       #response:Lnet/yostore/aws/api/entity/DirectUploadResponse;
    :cond_0
    move v4, v8

    .line 39
    goto :goto_0

    .line 40
    .end local v2           #request:Lnet/yostore/aws/api/entity/DirectUploadRequest;
    .end local v3           #response:Lnet/yostore/aws/api/entity/DirectUploadResponse;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 41
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public createWorkSpace(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "parent"
    .parameter "workspace"

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, rtn:Z
    return v0
.end method

.method public smartCreateFolder(Lnet/yostore/aws/sqlite/entity/UploadItem;)Z
    .locals 1
    .parameter "itm"

    .prologue
    .line 68
    const/4 v0, 0x0

    .line 74
    .local v0, rtn:Z
    return v0
.end method

.method public upload(Lnet/yostore/aws/sqlite/entity/UploadItem;)Z
    .locals 1
    .parameter "itm"

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 64
    .local v0, rtn:Z
    return v0
.end method
