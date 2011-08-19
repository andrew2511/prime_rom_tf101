.class public Lnet/yostore/aws/handler/MearDataHandler;
.super Ljava/lang/Object;
.source "MearDataHandler.java"


# instance fields
.field apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private final aws_import_file:Ljava/lang/String;

.field private ctx:Landroid/content/Context;

.field private final current_playlist_file:Ljava/lang/String;

.field private importInfoPropFindRty:I

.field private final lib_folder_name:Ljava/lang/String;

.field private final mear_folder_name:Ljava/lang/String;

.field private final meta_folder_name:Ljava/lang/String;

.field private nowPlayInfoPropFindRty:I

.field private rtyTimes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;)V
    .locals 2
    .parameter "ctx"
    .parameter "apicfg"

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "mear"

    iput-object v0, p0, Lnet/yostore/aws/handler/MearDataHandler;->mear_folder_name:Ljava/lang/String;

    .line 38
    const-string v0, "meta"

    iput-object v0, p0, Lnet/yostore/aws/handler/MearDataHandler;->meta_folder_name:Ljava/lang/String;

    .line 39
    const-string v0, "lib"

    iput-object v0, p0, Lnet/yostore/aws/handler/MearDataHandler;->lib_folder_name:Ljava/lang/String;

    .line 40
    const-string v0, "nowplaying.info"

    iput-object v0, p0, Lnet/yostore/aws/handler/MearDataHandler;->current_playlist_file:Ljava/lang/String;

    .line 41
    const-string v0, "import.info"

    iput-object v0, p0, Lnet/yostore/aws/handler/MearDataHandler;->aws_import_file:Ljava/lang/String;

    .line 42
    iput v1, p0, Lnet/yostore/aws/handler/MearDataHandler;->nowPlayInfoPropFindRty:I

    .line 43
    iput v1, p0, Lnet/yostore/aws/handler/MearDataHandler;->importInfoPropFindRty:I

    .line 44
    const/4 v0, 0x3

    iput v0, p0, Lnet/yostore/aws/handler/MearDataHandler;->rtyTimes:I

    .line 48
    iput-object p1, p0, Lnet/yostore/aws/handler/MearDataHandler;->ctx:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lnet/yostore/aws/handler/MearDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 50
    return-void
.end method

.method public constructor <init>(Lnet/yostore/aws/api/ApiConfig;)V
    .locals 2
    .parameter "apicfg"

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "mear"

    iput-object v0, p0, Lnet/yostore/aws/handler/MearDataHandler;->mear_folder_name:Ljava/lang/String;

    .line 38
    const-string v0, "meta"

    iput-object v0, p0, Lnet/yostore/aws/handler/MearDataHandler;->meta_folder_name:Ljava/lang/String;

    .line 39
    const-string v0, "lib"

    iput-object v0, p0, Lnet/yostore/aws/handler/MearDataHandler;->lib_folder_name:Ljava/lang/String;

    .line 40
    const-string v0, "nowplaying.info"

    iput-object v0, p0, Lnet/yostore/aws/handler/MearDataHandler;->current_playlist_file:Ljava/lang/String;

    .line 41
    const-string v0, "import.info"

    iput-object v0, p0, Lnet/yostore/aws/handler/MearDataHandler;->aws_import_file:Ljava/lang/String;

    .line 42
    iput v1, p0, Lnet/yostore/aws/handler/MearDataHandler;->nowPlayInfoPropFindRty:I

    .line 43
    iput v1, p0, Lnet/yostore/aws/handler/MearDataHandler;->importInfoPropFindRty:I

    .line 44
    const/4 v0, 0x3

    iput v0, p0, Lnet/yostore/aws/handler/MearDataHandler;->rtyTimes:I

    .line 52
    iput-object p1, p0, Lnet/yostore/aws/handler/MearDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 53
    return-void
.end method

.method private createFolder(Ljava/lang/String;Ljava/lang/String;)J
    .locals 5
    .parameter "parent"
    .parameter "display"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/yostore/aws/api/exception/APIException;
        }
    .end annotation

    .prologue
    .line 149
    const-wide/16 v2, -0x3e7

    .line 150
    .local v2, folderId:J
    new-instance v0, Lnet/yostore/aws/api/helper/FolderCreateHelper;

    const-string v4, ""

    invoke-direct {v0, p1, p2, v4}, Lnet/yostore/aws/api/helper/FolderCreateHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .local v0, fcHelper:Lnet/yostore/aws/api/helper/FolderCreateHelper;
    const/4 v1, 0x0

    .line 152
    .local v1, fcRes:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    iget-object v4, p0, Lnet/yostore/aws/handler/MearDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v0, v4}, Lnet/yostore/aws/api/helper/FolderCreateHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v1

    .end local v1           #fcRes:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    check-cast v1, Lnet/yostore/aws/api/entity/FolderCreateResponse;

    .line 153
    .restart local v1       #fcRes:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/FolderCreateResponse;->getStatus()I

    move-result v4

    if-nez v4, :cond_0

    .line 154
    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/FolderCreateResponse;->getId()J

    move-result-wide v2

    .line 156
    :cond_0
    return-wide v2
.end method


# virtual methods
.method public createFolderToPropFind(Ljava/lang/String;Ljava/lang/String;)J
    .locals 8
    .parameter "parent"
    .parameter "display"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/yostore/aws/api/exception/APIException;
        }
    .end annotation

    .prologue
    .line 123
    const-wide/16 v2, -0x3e7

    .line 124
    .local v2, folderId:J
    new-instance v4, Lnet/yostore/aws/api/helper/FindPropfindHelper;

    const-string v6, "system.folder"

    invoke-direct {v4, p1, p2, v6}, Lnet/yostore/aws/api/helper/FindPropfindHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .local v4, helper:Lnet/yostore/aws/api/helper/FindPropfindHelper;
    const/4 v5, 0x0

    .line 128
    .local v5, response:Lnet/yostore/aws/api/entity/FindPropfindResponse;
    :try_start_0
    iget-object v6, p0, Lnet/yostore/aws/handler/MearDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v4, v6}, Lnet/yostore/aws/api/helper/FindPropfindHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lnet/yostore/aws/api/entity/FindPropfindResponse;

    move-object v5, v0
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    if-eqz v5, :cond_1

    :try_start_1
    invoke-virtual {v5}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getStatus()I

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 138
    invoke-virtual {v5}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v2

    .line 145
    :cond_0
    :goto_1
    return-wide v2

    .line 130
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 134
    .local v1, e:Lnet/yostore/aws/api/exception/APIException;
    invoke-direct {p0, p1, p2}, Lnet/yostore/aws/handler/MearDataHandler;->createFolder(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0

    .line 139
    .end local v1           #e:Lnet/yostore/aws/api/exception/APIException;
    :cond_1
    if-eqz v5, :cond_0

    :try_start_2
    invoke-virtual {v5}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getStatus()I

    move-result v6

    const/16 v7, 0xda

    if-eq v6, v7, :cond_2

    invoke-virtual {v5}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getStatus()I

    move-result v6

    if-nez v6, :cond_0

    .line 140
    :cond_2
    invoke-direct {p0, p1, p2}, Lnet/yostore/aws/handler/MearDataHandler;->createFolder(Ljava/lang/String;Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v2

    goto :goto_1

    .line 142
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 143
    .local v1, e:Ljava/lang/NumberFormatException;
    const-wide/16 v2, -0x3e7

    goto :goto_1
.end method

.method public createLibFolderToPropFind(Ljava/lang/String;)J
    .locals 7
    .parameter "display"

    .prologue
    const-wide/16 v5, 0x0

    .line 310
    const-wide/16 v1, -0x3e7

    .line 313
    .local v1, libFolder:J
    :try_start_0
    sget-wide v3, Lcom/ecareme/mear/Mear;->lib_folder_id:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 315
    invoke-virtual {p0}, Lnet/yostore/aws/handler/MearDataHandler;->createLibToPropFind()J

    .line 317
    :cond_0
    sget-wide v3, Lcom/ecareme/mear/Mear;->lib_folder_id:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    .line 319
    sget-wide v3, Lcom/ecareme/mear/Mear;->lib_folder_id:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lnet/yostore/aws/handler/MearDataHandler;->createFolderToPropFind(Ljava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 327
    :cond_1
    :goto_0
    return-wide v1

    .line 322
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 325
    .local v0, e:Lnet/yostore/aws/api/exception/APIException;
    invoke-virtual {v0}, Lnet/yostore/aws/api/exception/APIException;->printStackTrace()V

    goto :goto_0
.end method

.method public createLibToPropFind()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 164
    :try_start_0
    iget-object v1, p0, Lnet/yostore/aws/handler/MearDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-wide v1, v1, Lnet/yostore/aws/api/ApiConfig;->mear_folder_id:J

    cmp-long v1, v1, v4

    if-gtz v1, :cond_2

    .line 165
    sget-wide v1, Lcom/ecareme/mear/Mear;->mear_folder_id:J

    cmp-long v1, v1, v4

    if-gez v1, :cond_0

    .line 166
    sget-object v1, Lnet/yostore/aws/api/ApiConfig;->MEAR_PARENT:Ljava/lang/String;

    const-string v2, "mear"

    invoke-virtual {p0, v1, v2}, Lnet/yostore/aws/handler/MearDataHandler;->createFolderToPropFind(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    sput-wide v1, Lcom/ecareme/mear/Mear;->mear_folder_id:J

    .line 167
    sget-wide v1, Lcom/ecareme/mear/Mear;->mear_folder_id:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_0

    .line 168
    iget-object v1, p0, Lnet/yostore/aws/handler/MearDataHandler;->ctx:Landroid/content/Context;

    sget-wide v2, Lcom/ecareme/mear/Mear;->mear_folder_id:J

    invoke-static {v1, v2, v3}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->updateAccMearFolder(Landroid/content/Context;J)V

    .line 174
    :cond_0
    :goto_0
    sget-wide v1, Lcom/ecareme/mear/Mear;->mear_folder_id:J

    cmp-long v1, v1, v4

    if-ltz v1, :cond_1

    .line 176
    iget-object v1, p0, Lnet/yostore/aws/handler/MearDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-wide v1, v1, Lnet/yostore/aws/api/ApiConfig;->lib_folder_id:J

    cmp-long v1, v1, v4

    if-gtz v1, :cond_3

    .line 177
    sget-wide v1, Lcom/ecareme/mear/Mear;->mear_folder_id:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lib"

    invoke-virtual {p0, v1, v2}, Lnet/yostore/aws/handler/MearDataHandler;->createFolderToPropFind(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    sput-wide v1, Lcom/ecareme/mear/Mear;->lib_folder_id:J

    .line 178
    sget-wide v1, Lcom/ecareme/mear/Mear;->lib_folder_id:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_1

    .line 179
    iget-object v1, p0, Lnet/yostore/aws/handler/MearDataHandler;->ctx:Landroid/content/Context;

    sget-wide v2, Lcom/ecareme/mear/Mear;->lib_folder_id:J

    invoke-static {v1, v2, v3}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->updateAccLibFolder(Landroid/content/Context;J)V
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :cond_1
    :goto_1
    iget-object v1, p0, Lnet/yostore/aws/handler/MearDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    sget-wide v2, Lcom/ecareme/mear/Mear;->lib_folder_id:J

    iput-wide v2, v1, Lnet/yostore/aws/api/ApiConfig;->lib_folder_id:J

    .line 192
    sget-wide v1, Lcom/ecareme/mear/Mear;->lib_folder_id:J

    return-wide v1

    .line 172
    :cond_2
    :try_start_1
    iget-object v1, p0, Lnet/yostore/aws/handler/MearDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-wide v1, v1, Lnet/yostore/aws/api/ApiConfig;->mear_folder_id:J

    sput-wide v1, Lcom/ecareme/mear/Mear;->mear_folder_id:J
    :try_end_1
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 189
    .local v0, e:Lnet/yostore/aws/api/exception/APIException;
    invoke-virtual {v0}, Lnet/yostore/aws/api/exception/APIException;->printStackTrace()V

    goto :goto_1

    .line 182
    .end local v0           #e:Lnet/yostore/aws/api/exception/APIException;
    :cond_3
    :try_start_2
    iget-object v1, p0, Lnet/yostore/aws/handler/MearDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-wide v1, v1, Lnet/yostore/aws/api/ApiConfig;->lib_folder_id:J

    sput-wide v1, Lcom/ecareme/mear/Mear;->lib_folder_id:J
    :try_end_2
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public createMetaToPropFind()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 203
    :try_start_0
    iget-object v1, p0, Lnet/yostore/aws/handler/MearDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-wide v1, v1, Lnet/yostore/aws/api/ApiConfig;->mear_folder_id:J

    cmp-long v1, v1, v4

    if-gtz v1, :cond_3

    .line 204
    sget-wide v1, Lcom/ecareme/mear/Mear;->mear_folder_id:J

    cmp-long v1, v1, v4

    if-gez v1, :cond_0

    .line 205
    sget-object v1, Lnet/yostore/aws/api/ApiConfig;->MEAR_PARENT:Ljava/lang/String;

    const-string v2, "mear"

    invoke-virtual {p0, v1, v2}, Lnet/yostore/aws/handler/MearDataHandler;->createFolderToPropFind(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    sput-wide v1, Lcom/ecareme/mear/Mear;->mear_folder_id:J

    .line 206
    sget-wide v1, Lcom/ecareme/mear/Mear;->mear_folder_id:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_0

    .line 207
    iget-object v1, p0, Lnet/yostore/aws/handler/MearDataHandler;->ctx:Landroid/content/Context;

    sget-wide v2, Lcom/ecareme/mear/Mear;->mear_folder_id:J

    invoke-static {v1, v2, v3}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->updateAccMearFolder(Landroid/content/Context;J)V

    .line 214
    :cond_0
    :goto_0
    sget-wide v1, Lcom/ecareme/mear/Mear;->mear_folder_id:J

    cmp-long v1, v1, v4

    if-ltz v1, :cond_1

    .line 215
    iget-object v1, p0, Lnet/yostore/aws/handler/MearDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-wide v1, v1, Lnet/yostore/aws/api/ApiConfig;->meta_folder_id:J

    cmp-long v1, v1, v4

    if-gtz v1, :cond_4

    .line 216
    sget-wide v1, Lcom/ecareme/mear/Mear;->mear_folder_id:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "meta"

    invoke-virtual {p0, v1, v2}, Lnet/yostore/aws/handler/MearDataHandler;->createFolderToPropFind(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    sput-wide v1, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    .line 217
    sget-wide v1, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_1

    .line 218
    iget-object v1, p0, Lnet/yostore/aws/handler/MearDataHandler;->ctx:Landroid/content/Context;

    sget-wide v2, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    invoke-static {v1, v2, v3}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->updateAccMetaFolder(Landroid/content/Context;J)V
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 231
    :cond_1
    :goto_1
    iget-object v1, p0, Lnet/yostore/aws/handler/MearDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    if-eqz v1, :cond_2

    .line 232
    iget-object v1, p0, Lnet/yostore/aws/handler/MearDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    sget-wide v2, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    iput-wide v2, v1, Lnet/yostore/aws/api/ApiConfig;->meta_folder_id:J

    .line 233
    :cond_2
    sget-wide v1, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    return-wide v1

    .line 211
    :cond_3
    :try_start_1
    iget-object v1, p0, Lnet/yostore/aws/handler/MearDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-wide v1, v1, Lnet/yostore/aws/api/ApiConfig;->mear_folder_id:J

    sput-wide v1, Lcom/ecareme/mear/Mear;->mear_folder_id:J
    :try_end_1
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 225
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 228
    .local v0, e:Lnet/yostore/aws/api/exception/APIException;
    invoke-virtual {v0}, Lnet/yostore/aws/api/exception/APIException;->printStackTrace()V

    goto :goto_1

    .line 221
    .end local v0           #e:Lnet/yostore/aws/api/exception/APIException;
    :cond_4
    :try_start_2
    iget-object v1, p0, Lnet/yostore/aws/handler/MearDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-wide v1, v1, Lnet/yostore/aws/api/ApiConfig;->meta_folder_id:J

    sput-wide v1, Lcom/ecareme/mear/Mear;->meta_folder_id:J
    :try_end_2
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 230
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public createPlayListFolderToPropFind(Ljava/lang/String;)J
    .locals 7
    .parameter "display"

    .prologue
    const-wide/16 v5, 0x0

    .line 288
    const-wide/16 v1, -0x3e7

    .line 291
    .local v1, playListFolder:J
    :try_start_0
    sget-wide v3, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 293
    invoke-virtual {p0}, Lnet/yostore/aws/handler/MearDataHandler;->createMetaToPropFind()J

    .line 295
    :cond_0
    sget-wide v3, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    .line 297
    sget-wide v3, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lnet/yostore/aws/handler/MearDataHandler;->createFolderToPropFind(Ljava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 305
    :cond_1
    :goto_0
    return-wide v1

    .line 300
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 303
    .local v0, e:Lnet/yostore/aws/api/exception/APIException;
    invoke-virtual {v0}, Lnet/yostore/aws/api/exception/APIException;->printStackTrace()V

    goto :goto_0
.end method

.method public getFolderCnt(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;Ljava/lang/String;)Ljava/util/List;
    .locals 16
    .parameter
    .parameter "keyword"
    .parameter "markid"
    .parameter "kind"
    .parameter "ext"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    .local p1, folderId:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v13, 0x0

    .line 349
    .local v13, rtn:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v14, 0x0

    .line 350
    .local v14, rty:I
    const/4 v11, 0x0

    .local v11, i:I
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v11, v3, :cond_1

    .line 389
    return-object v13

    .line 351
    :cond_1
    if-nez v13, :cond_2

    .line 352
    new-instance v13, Ljava/util/ArrayList;

    .end local v13           #rtn:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 354
    .restart local v13       #rtn:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_2
    new-instance v2, Lnet/yostore/aws/api/helper/SqlQueryHelper;

    .line 357
    const/4 v5, 0x1

    .line 358
    const/4 v6, 0x0

    .line 361
    move-object/from16 v0, p1

    move v1, v11

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    .line 354
    invoke-direct/range {v2 .. v9}, Lnet/yostore/aws/api/helper/SqlQueryHelper;-><init>(Ljava/lang/String;Ljava/lang/String;IILnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    .local v2, apihelper:Lnet/yostore/aws/api/helper/SqlQueryHelper;
    const/4 v12, 0x0

    .line 366
    .local v12, response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/handler/MearDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lnet/yostore/aws/api/helper/SqlQueryHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v15

    move-object v0, v15

    check-cast v0, Lnet/yostore/aws/api/entity/FulltextQueryResponse;

    move-object v12, v0

    .line 367
    if-nez v12, :cond_3

    .line 368
    add-int/lit8 v14, v14, 0x1

    .line 369
    const/4 v3, 0x3

    if-lt v14, v3, :cond_0

    .line 370
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    const/4 v14, 0x0

    .line 372
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 375
    :cond_3
    invoke-virtual {v12}, Lnet/yostore/aws/api/entity/FulltextQueryResponse;->getStatus()I

    move-result v3

    if-eqz v3, :cond_4

    .line 376
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    const/4 v14, 0x0

    .line 378
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 381
    :cond_4
    invoke-virtual {v12}, Lnet/yostore/aws/api/entity/FulltextQueryResponse;->getTotal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    const/4 v14, 0x0

    .line 383
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 385
    :catch_0
    move-exception v3

    move-object v10, v3

    .line 386
    .local v10, e:Lnet/yostore/aws/api/exception/APIException;
    invoke-virtual {v10}, Lnet/yostore/aws/api/exception/APIException;->printStackTrace()V

    goto :goto_0
.end method

.method public importInfoPropFind()J
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    .line 89
    const-wide/16 v2, -0x3e7

    .line 90
    .local v2, fileId:J
    sget-wide v6, Lcom/ecareme/mear/Mear;->mear_folder_id:J

    cmp-long v6, v6, v9

    if-lez v6, :cond_1

    iget v6, p0, Lnet/yostore/aws/handler/MearDataHandler;->importInfoPropFindRty:I

    iget v7, p0, Lnet/yostore/aws/handler/MearDataHandler;->rtyTimes:I

    if-ge v6, v7, :cond_1

    .line 91
    iget v6, p0, Lnet/yostore/aws/handler/MearDataHandler;->importInfoPropFindRty:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lnet/yostore/aws/handler/MearDataHandler;->importInfoPropFindRty:I

    .line 92
    new-instance v4, Lnet/yostore/aws/api/helper/FindPropfindHelper;

    sget-wide v6, Lcom/ecareme/mear/Mear;->mear_folder_id:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const-string v7, "import.info"

    const-string v8, "system.file"

    invoke-direct {v4, v6, v7, v8}, Lnet/yostore/aws/api/helper/FindPropfindHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .local v4, helper:Lnet/yostore/aws/api/helper/FindPropfindHelper;
    const/4 v5, 0x0

    .line 96
    .local v5, response:Lnet/yostore/aws/api/entity/FindPropfindResponse;
    :try_start_0
    iget-object v6, p0, Lnet/yostore/aws/handler/MearDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v4, v6}, Lnet/yostore/aws/api/helper/FindPropfindHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lnet/yostore/aws/api/entity/FindPropfindResponse;

    move-object v5, v0

    .line 97
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getStatus()I

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 98
    invoke-virtual {v5}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 100
    :cond_0
    cmp-long v6, v2, v9

    if-lez v6, :cond_2

    .line 101
    sput-wide v2, Lcom/ecareme/mear/Mear;->import_info_id:J

    .line 102
    sget-wide v6, Lcom/ecareme/mear/Mear;->import_info_id:J

    cmp-long v6, v6, v9

    if-lez v6, :cond_1

    .line 103
    new-instance v6, Lnet/yostore/aws/handler/entity/ImportInfoBean;

    iget-object v7, p0, Lnet/yostore/aws/handler/MearDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-direct {v6, v7}, Lnet/yostore/aws/handler/entity/ImportInfoBean;-><init>(Lnet/yostore/aws/api/ApiConfig;)V

    sput-object v6, Lcom/ecareme/mear/Mear;->ipb:Lnet/yostore/aws/handler/entity/ImportInfoBean;

    .line 104
    sget-object v6, Lcom/ecareme/mear/Mear;->ipb:Lnet/yostore/aws/handler/entity/ImportInfoBean;

    invoke-virtual {v6}, Lnet/yostore/aws/handler/entity/ImportInfoBean;->getImportInfo()Z

    .line 118
    .end local v4           #helper:Lnet/yostore/aws/api/helper/FindPropfindHelper;
    .end local v5           #response:Lnet/yostore/aws/api/entity/FindPropfindResponse;
    :cond_1
    :goto_0
    return-wide v2

    .line 107
    .restart local v4       #helper:Lnet/yostore/aws/api/helper/FindPropfindHelper;
    .restart local v5       #response:Lnet/yostore/aws/api/entity/FindPropfindResponse;
    :cond_2
    invoke-virtual {p0}, Lnet/yostore/aws/handler/MearDataHandler;->importInfoPropFind()J
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 113
    .local v1, e:Lnet/yostore/aws/api/exception/APIException;
    invoke-virtual {v1}, Lnet/yostore/aws/api/exception/APIException;->printStackTrace()V

    goto :goto_0
.end method

.method public nowPlayInfoPropFind()J
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    .line 56
    const-wide/16 v2, -0x3e7

    .line 57
    .local v2, fileId:J
    sget-wide v6, Lcom/ecareme/mear/Mear;->mear_folder_id:J

    cmp-long v6, v6, v9

    if-lez v6, :cond_1

    iget v6, p0, Lnet/yostore/aws/handler/MearDataHandler;->nowPlayInfoPropFindRty:I

    iget v7, p0, Lnet/yostore/aws/handler/MearDataHandler;->rtyTimes:I

    if-ge v6, v7, :cond_1

    .line 58
    iget v6, p0, Lnet/yostore/aws/handler/MearDataHandler;->nowPlayInfoPropFindRty:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lnet/yostore/aws/handler/MearDataHandler;->nowPlayInfoPropFindRty:I

    .line 59
    new-instance v4, Lnet/yostore/aws/api/helper/FindPropfindHelper;

    sget-wide v6, Lcom/ecareme/mear/Mear;->mear_folder_id:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const-string v7, "nowplaying.info"

    const-string v8, "system.file"

    invoke-direct {v4, v6, v7, v8}, Lnet/yostore/aws/api/helper/FindPropfindHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .local v4, helper:Lnet/yostore/aws/api/helper/FindPropfindHelper;
    const/4 v5, 0x0

    .line 63
    .local v5, response:Lnet/yostore/aws/api/entity/FindPropfindResponse;
    :try_start_0
    iget-object v6, p0, Lnet/yostore/aws/handler/MearDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v4, v6}, Lnet/yostore/aws/api/helper/FindPropfindHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lnet/yostore/aws/api/entity/FindPropfindResponse;

    move-object v5, v0

    .line 64
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getStatus()I

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 65
    invoke-virtual {v5}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 67
    :cond_0
    cmp-long v6, v2, v9

    if-lez v6, :cond_2

    .line 68
    sput-wide v2, Lcom/ecareme/mear/Mear;->now_playing_info_id:J

    .line 69
    sget-wide v6, Lcom/ecareme/mear/Mear;->now_playing_info_id:J

    cmp-long v6, v6, v9

    if-lez v6, :cond_1

    .line 70
    new-instance v6, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;

    iget-object v7, p0, Lnet/yostore/aws/handler/MearDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-direct {v6, v7}, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;-><init>(Lnet/yostore/aws/api/ApiConfig;)V

    sput-object v6, Lcom/ecareme/mear/Mear;->npb:Lnet/yostore/aws/handler/entity/NowPlayInfoBean;

    .line 71
    sget-object v6, Lcom/ecareme/mear/Mear;->npb:Lnet/yostore/aws/handler/entity/NowPlayInfoBean;

    invoke-virtual {v6}, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->getNowPlayInfo()Z

    .line 84
    .end local v4           #helper:Lnet/yostore/aws/api/helper/FindPropfindHelper;
    .end local v5           #response:Lnet/yostore/aws/api/entity/FindPropfindResponse;
    :cond_1
    :goto_0
    return-wide v2

    .line 74
    .restart local v4       #helper:Lnet/yostore/aws/api/helper/FindPropfindHelper;
    .restart local v5       #response:Lnet/yostore/aws/api/entity/FindPropfindResponse;
    :cond_2
    invoke-virtual {p0}, Lnet/yostore/aws/handler/MearDataHandler;->nowPlayInfoPropFind()J
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 80
    .local v1, e:Lnet/yostore/aws/api/exception/APIException;
    invoke-virtual {v1}, Lnet/yostore/aws/api/exception/APIException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateImportInfo(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 14
    .parameter "data"
    .parameter "attribute"

    .prologue
    const-wide/16 v12, 0x0

    const/4 v11, 0x0

    .line 262
    sget-wide v2, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    cmp-long v2, v2, v12

    if-gez v2, :cond_0

    .line 263
    invoke-virtual {p0}, Lnet/yostore/aws/handler/MearDataHandler;->createMetaToPropFind()J

    move-result-wide v2

    sput-wide v2, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    .line 265
    :cond_0
    sget-wide v2, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    cmp-long v2, v2, v12

    if-ltz v2, :cond_4

    .line 266
    new-instance v1, Lnet/yostore/aws/api/helper/DirectUploadHelper;

    sget-wide v2, Lcom/ecareme/mear/Mear;->mear_folder_id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "import.info"

    sget-wide v4, Lcom/ecareme/mear/Mear;->import_info_id:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v7}, Lnet/yostore/aws/api/helper/DirectUploadHelper;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[B)V

    .line 267
    .local v1, helper:Lnet/yostore/aws/api/helper/DirectUploadHelper;
    const/4 v9, 0x0

    .line 270
    .local v9, response:Lnet/yostore/aws/api/entity/DirectUploadResponse;
    :try_start_0
    iget-object v2, p0, Lnet/yostore/aws/handler/MearDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/helper/DirectUploadHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lnet/yostore/aws/api/entity/DirectUploadResponse;

    move-object v9, v0

    .line 271
    if-nez v9, :cond_1

    move v2, v11

    .line 282
    .end local v1           #helper:Lnet/yostore/aws/api/helper/DirectUploadHelper;
    .end local v9           #response:Lnet/yostore/aws/api/entity/DirectUploadResponse;
    :goto_0
    return v2

    .line 272
    .restart local v1       #helper:Lnet/yostore/aws/api/helper/DirectUploadHelper;
    .restart local v9       #response:Lnet/yostore/aws/api/entity/DirectUploadResponse;
    :cond_1
    invoke-virtual {v9}, Lnet/yostore/aws/api/entity/DirectUploadResponse;->getStatus()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v9}, Lnet/yostore/aws/api/entity/DirectUploadResponse;->getFileId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v9}, Lnet/yostore/aws/api/entity/DirectUploadResponse;->getFileId()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v9}, Lnet/yostore/aws/api/entity/DirectUploadResponse;->getFileId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v2, v2, v12

    if-lez v2, :cond_3

    .line 273
    sget-wide v2, Lcom/ecareme/mear/Mear;->import_info_id:J

    cmp-long v2, v2, v12

    if-gez v2, :cond_2

    .line 274
    invoke-virtual {v9}, Lnet/yostore/aws/api/entity/DirectUploadResponse;->getFileId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Lcom/ecareme/mear/Mear;->import_info_id:J
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v11

    .line 277
    goto :goto_0

    .line 278
    :catch_0
    move-exception v2

    move-object v8, v2

    .local v8, e1:Lnet/yostore/aws/api/exception/APIException;
    move v2, v11

    .line 279
    goto :goto_0

    .end local v1           #helper:Lnet/yostore/aws/api/helper/DirectUploadHelper;
    .end local v8           #e1:Lnet/yostore/aws/api/exception/APIException;
    .end local v9           #response:Lnet/yostore/aws/api/entity/DirectUploadResponse;
    :cond_4
    move v2, v11

    .line 282
    goto :goto_0
.end method

.method public updateNowPlayInfo(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 14
    .parameter "data"
    .parameter "attribute"

    .prologue
    const-wide/16 v12, 0x0

    const/4 v11, 0x0

    .line 237
    sget-wide v2, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    cmp-long v2, v2, v12

    if-gez v2, :cond_0

    .line 238
    invoke-virtual {p0}, Lnet/yostore/aws/handler/MearDataHandler;->createMetaToPropFind()J

    move-result-wide v2

    sput-wide v2, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    .line 240
    :cond_0
    sget-wide v2, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    cmp-long v2, v2, v12

    if-ltz v2, :cond_4

    .line 241
    new-instance v1, Lnet/yostore/aws/api/helper/DirectUploadHelper;

    sget-wide v2, Lcom/ecareme/mear/Mear;->mear_folder_id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "nowplaying.info"

    sget-wide v4, Lcom/ecareme/mear/Mear;->now_playing_info_id:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v7}, Lnet/yostore/aws/api/helper/DirectUploadHelper;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[B)V

    .line 242
    .local v1, helper:Lnet/yostore/aws/api/helper/DirectUploadHelper;
    const/4 v9, 0x0

    .line 245
    .local v9, response:Lnet/yostore/aws/api/entity/DirectUploadResponse;
    :try_start_0
    iget-object v2, p0, Lnet/yostore/aws/handler/MearDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/helper/DirectUploadHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lnet/yostore/aws/api/entity/DirectUploadResponse;

    move-object v9, v0

    .line 246
    if-nez v9, :cond_1

    move v2, v11

    .line 257
    .end local v1           #helper:Lnet/yostore/aws/api/helper/DirectUploadHelper;
    .end local v9           #response:Lnet/yostore/aws/api/entity/DirectUploadResponse;
    :goto_0
    return v2

    .line 247
    .restart local v1       #helper:Lnet/yostore/aws/api/helper/DirectUploadHelper;
    .restart local v9       #response:Lnet/yostore/aws/api/entity/DirectUploadResponse;
    :cond_1
    invoke-virtual {v9}, Lnet/yostore/aws/api/entity/DirectUploadResponse;->getStatus()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v9}, Lnet/yostore/aws/api/entity/DirectUploadResponse;->getFileId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v9}, Lnet/yostore/aws/api/entity/DirectUploadResponse;->getFileId()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v9}, Lnet/yostore/aws/api/entity/DirectUploadResponse;->getFileId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v2, v2, v12

    if-lez v2, :cond_3

    .line 248
    sget-wide v2, Lcom/ecareme/mear/Mear;->now_playing_info_id:J

    cmp-long v2, v2, v12

    if-gez v2, :cond_2

    .line 249
    invoke-virtual {v9}, Lnet/yostore/aws/api/entity/DirectUploadResponse;->getFileId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Lcom/ecareme/mear/Mear;->now_playing_info_id:J
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v11

    .line 252
    goto :goto_0

    .line 253
    :catch_0
    move-exception v2

    move-object v8, v2

    .local v8, e1:Lnet/yostore/aws/api/exception/APIException;
    move v2, v11

    .line 254
    goto :goto_0

    .end local v1           #helper:Lnet/yostore/aws/api/helper/DirectUploadHelper;
    .end local v8           #e1:Lnet/yostore/aws/api/exception/APIException;
    .end local v9           #response:Lnet/yostore/aws/api/entity/DirectUploadResponse;
    :cond_4
    move v2, v11

    .line 257
    goto :goto_0
.end method

.method public uploadToPlayList(JLjava/lang/String;Ljava/lang/String;)J
    .locals 10
    .parameter "parent"
    .parameter "display"
    .parameter "attribute"

    .prologue
    .line 331
    const-wide/16 v4, -0x3e7

    .line 332
    .local v4, musicShutCut:J
    new-instance v1, Lnet/yostore/aws/api/helper/DirectUploadHelper;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lnet/yostore/aws/api/helper/DirectUploadHelper;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[B)V

    .line 333
    .local v1, helper:Lnet/yostore/aws/api/helper/DirectUploadHelper;
    const/4 v8, 0x0

    .line 336
    .local v8, response:Lnet/yostore/aws/api/entity/DirectUploadResponse;
    :try_start_0
    iget-object v2, p0, Lnet/yostore/aws/handler/MearDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/helper/DirectUploadHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lnet/yostore/aws/api/entity/DirectUploadResponse;

    move-object v8, v0

    .line 337
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lnet/yostore/aws/api/entity/DirectUploadResponse;->getStatus()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v8}, Lnet/yostore/aws/api/entity/DirectUploadResponse;->getFileId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v8}, Lnet/yostore/aws/api/entity/DirectUploadResponse;->getFileId()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v8}, Lnet/yostore/aws/api/entity/DirectUploadResponse;->getFileId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_0

    .line 338
    invoke-virtual {v8}, Lnet/yostore/aws/api/entity/DirectUploadResponse;->getFileId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 344
    :cond_0
    :goto_0
    return-wide v4

    .line 341
    :catch_0
    move-exception v2

    goto :goto_0
.end method
