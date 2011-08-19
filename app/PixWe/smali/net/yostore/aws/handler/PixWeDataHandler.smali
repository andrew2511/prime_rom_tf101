.class public Lnet/yostore/aws/handler/PixWeDataHandler;
.super Ljava/lang/Object;
.source "PixWeDataHandler.java"


# instance fields
.field private final albums_meta_folder_name:Ljava/lang/String;

.field apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private ctx:Landroid/content/Context;

.field private mediasInfoPropFindRty:I

.field public final medias_info_file:Ljava/lang/String;

.field private final pixwe_folder_name:Ljava/lang/String;

.field private rtyTimes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;)V
    .locals 1
    .parameter "ctx"
    .parameter "apicfg"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "pixwefiles"

    iput-object v0, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->pixwe_folder_name:Ljava/lang/String;

    .line 55
    const-string v0, "pixwe"

    iput-object v0, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->albums_meta_folder_name:Ljava/lang/String;

    .line 56
    const-string v0, "medias.pixweinfo"

    iput-object v0, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->medias_info_file:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->mediasInfoPropFindRty:I

    .line 60
    const/4 v0, 0x3

    iput v0, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->rtyTimes:I

    .line 66
    iput-object p1, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->ctx:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 68
    return-void
.end method

.method public constructor <init>(Lnet/yostore/aws/api/ApiConfig;)V
    .locals 1
    .parameter "apicfg"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "pixwefiles"

    iput-object v0, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->pixwe_folder_name:Ljava/lang/String;

    .line 55
    const-string v0, "pixwe"

    iput-object v0, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->albums_meta_folder_name:Ljava/lang/String;

    .line 56
    const-string v0, "medias.pixweinfo"

    iput-object v0, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->medias_info_file:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->mediasInfoPropFindRty:I

    .line 60
    const/4 v0, 0x3

    iput v0, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->rtyTimes:I

    .line 71
    iput-object p1, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 72
    return-void
.end method

.method private createDefaultAlbum()V
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/yostore/aws/api/exception/APIException;
        }
    .end annotation

    .prologue
    .line 169
    const/16 v19, 0x0

    .local v19, i:I
    :goto_0
    sget-object v5, Lcom/ecareme/pixwe/helper/DefaultAlbumHelper;->Album:[Ljava/lang/String;

    array-length v5, v5

    move/from16 v0, v19

    move v1, v5

    if-lt v0, v1, :cond_1

    .line 209
    :cond_0
    return-void

    .line 170
    :cond_1
    const-wide/16 v17, -0x3e7

    .line 171
    .local v17, folderId:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 172
    .local v26, st:J
    invoke-virtual/range {p0 .. p0}, Lnet/yostore/aws/handler/PixWeDataHandler;->createAlbumsMetaToPropFind()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/ecareme/pixwe/helper/DefaultAlbumHelper;->Album:[Ljava/lang/String;

    aget-object v6, v6, v19

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lnet/yostore/aws/handler/PixWeDataHandler;->createFolderToPropFind(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v17

    .line 173
    sget-object v5, Lcom/ecareme/pixwe/helper/DefaultAlbumHelper;->Album:[Ljava/lang/String;

    aget-object v5, v5, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/handler/PixWeDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    move-object v6, v0

    iget-object v6, v6, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    move-wide/from16 v0, v26

    move-object v2, v6

    invoke-static {v0, v1, v2}, Lcom/ecareme/pixwe/helper/DefaultAlbumHelper;->getAlbumInfo(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    move-object v3, v5

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/yostore/aws/handler/PixWeDataHandler;->updateAlbumInfo(JLjava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v13, Lnet/yostore/aws/handler/entity/AlbumInfoBean;

    invoke-direct {v13}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;-><init>()V

    .line 175
    .local v13, aib:Lnet/yostore/aws/handler/entity/AlbumInfoBean;
    move-object v0, v13

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->setAlbumInfoFolder(J)V

    .line 176
    sget-object v5, Lcom/ecareme/pixwe/helper/DefaultAlbumHelper;->Album:[Ljava/lang/String;

    aget-object v5, v5, v19

    invoke-virtual {v13, v5}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->setDisplay(Ljava/lang/String;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/handler/PixWeDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    move-object v5, v0

    iget-object v5, v5, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v13, v5}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->setUserName(Ljava/lang/String;)V

    .line 178
    move-object v0, v13

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->setSt(J)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/handler/PixWeDataHandler;->ctx:Landroid/content/Context;

    move-object v5, v0

    invoke-static {v5, v13}, Lnet/yostore/aws/sqlite/helper/AlbumListHelper;->insertAlbum(Landroid/content/Context;Lnet/yostore/aws/handler/entity/AlbumInfoBean;)J

    move-result-wide v20

    .line 181
    .local v20, insertRtn:J
    const-wide/16 v5, 0x0

    cmp-long v5, v20, v5

    if-lez v5, :cond_0

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/handler/PixWeDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    move-object v5, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/handler/PixWeDataHandler;->doGetChangeSeq(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;)J

    move-result-wide v14

    .line 183
    .local v14, chgSeq:J
    new-instance v16, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;

    invoke-direct/range {v16 .. v16}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;-><init>()V

    .line 184
    .local v16, folderChgSeq:Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;
    move-object/from16 v0, v16

    move-wide v1, v14

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setChangeSeq(J)V

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/handler/PixWeDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    move-object v5, v0

    iget-object v5, v5, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setUserName(Ljava/lang/String;)V

    .line 186
    sget-object v5, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->formatter:Ljava/text/Format;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    .line 187
    .local v24, now:J
    move-object/from16 v0, v16

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setChangeSeqTime(J)V

    .line 188
    move-object/from16 v0, v16

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setLocalUpdateTime(J)V

    .line 189
    invoke-virtual/range {v16 .. v18}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setFolderId(J)V

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/handler/PixWeDataHandler;->ctx:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqHelper;->insertFolderChgSeq(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/handler/PixWeDataHandler;->ctx:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, v17

    invoke-static {v0, v1, v2}, Lcom/ecareme/pixwe/PixWe;->updateDBFlg(Landroid/content/Context;J)V

    .line 194
    sget-object v5, Lcom/ecareme/pixwe/helper/DefaultAlbumHelper;->Media:[Ljava/lang/String;

    aget-object v5, v5, v19

    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, v17

    invoke-virtual {v0, v1, v2, v3}, Lnet/yostore/aws/handler/PixWeDataHandler;->getMediaInfo(Ljava/lang/String;J)Ljava/util/List;

    move-result-object v23

    .line 195
    .local v23, mibList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    const-string v5, "#############"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mibList size "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/16 v28, 0x0

    .line 198
    .local v28, uploadDefaultAlbumRtn:Z
    const/16 v22, 0x0

    .local v22, j:I
    :goto_1
    const/4 v5, 0x3

    move/from16 v0, v22

    move v1, v5

    if-lt v0, v1, :cond_3

    .line 169
    :cond_2
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    .line 199
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/handler/PixWeDataHandler;->ctx:Landroid/content/Context;

    move-object v6, v0

    sget-object v5, Lcom/ecareme/pixwe/helper/DefaultAlbumHelper;->Media:[Ljava/lang/String;

    aget-object v7, v5, v19

    const-string v8, "medias.pixweinfo"

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    const-wide/16 v10, -0x3e7

    const-string v12, ""

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v12}, Lnet/yostore/aws/handler/PixWeDataHandler;->updateXmlToFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    move-result v28

    .line 200
    if-nez v28, :cond_2

    .line 202
    const/4 v5, 0x2

    move/from16 v0, v19

    move v1, v5

    if-ne v0, v1, :cond_4

    if-nez v28, :cond_4

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/handler/PixWeDataHandler;->ctx:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, v17

    invoke-static {v0, v1, v2}, Lnet/yostore/aws/sqlite/helper/AlbumListHelper;->delAlbumByAlbumId(Landroid/content/Context;J)I

    .line 198
    :cond_4
    add-int/lit8 v22, v22, 0x1

    goto :goto_1
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
    .line 121
    const-wide/16 v2, -0x3e7

    .line 122
    .local v2, folderId:J
    new-instance v0, Lnet/yostore/aws/api/helper/FolderCreateHelper;

    const-string v4, ""

    invoke-direct {v0, p1, p2, v4}, Lnet/yostore/aws/api/helper/FolderCreateHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .local v0, fcHelper:Lnet/yostore/aws/api/helper/FolderCreateHelper;
    const/4 v1, 0x0

    .line 124
    .local v1, fcRes:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    iget-object v4, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v0, v4}, Lnet/yostore/aws/api/helper/FolderCreateHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v1

    .end local v1           #fcRes:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    check-cast v1, Lnet/yostore/aws/api/entity/FolderCreateResponse;

    .line 125
    .restart local v1       #fcRes:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/FolderCreateResponse;->getStatus()I

    move-result v4

    if-nez v4, :cond_0

    .line 126
    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/FolderCreateResponse;->getId()J

    move-result-wide v2

    .line 129
    :cond_0
    return-wide v2
.end method

.method private createFolderToPropFind(Ljava/lang/String;Ljava/lang/String;)J
    .locals 8
    .parameter "parent"
    .parameter "display"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/yostore/aws/api/exception/APIException;
        }
    .end annotation

    .prologue
    .line 81
    const-wide/16 v2, -0x3e7

    .line 82
    .local v2, folderId:J
    invoke-static {}, Lcom/ecareme/pixwe/PixWe;->haveInternet()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 83
    new-instance v4, Lnet/yostore/aws/api/helper/FindPropfindHelper;

    const-string v6, "system.folder"

    invoke-direct {v4, p1, p2, v6}, Lnet/yostore/aws/api/helper/FindPropfindHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .local v4, helper:Lnet/yostore/aws/api/helper/FindPropfindHelper;
    const/4 v5, 0x0

    .line 87
    .local v5, response:Lnet/yostore/aws/api/entity/FindPropfindResponse;
    :try_start_0
    iget-object v6, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v4, v6}, Lnet/yostore/aws/api/helper/FindPropfindHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lnet/yostore/aws/api/entity/FindPropfindResponse;

    move-object v5, v0
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    if-eqz v5, :cond_2

    .line 98
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

    .line 99
    invoke-virtual {v5}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v2

    .line 117
    .end local v4           #helper:Lnet/yostore/aws/api/helper/FindPropfindHelper;
    .end local v5           #response:Lnet/yostore/aws/api/entity/FindPropfindResponse;
    :cond_0
    :goto_1
    return-wide v2

    .line 89
    .restart local v4       #helper:Lnet/yostore/aws/api/helper/FindPropfindHelper;
    .restart local v5       #response:Lnet/yostore/aws/api/entity/FindPropfindResponse;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 94
    .local v1, e:Lnet/yostore/aws/api/exception/APIException;
    invoke-direct {p0, p1, p2}, Lnet/yostore/aws/handler/PixWeDataHandler;->createFolder(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0

    .line 102
    .end local v1           #e:Lnet/yostore/aws/api/exception/APIException;
    :cond_1
    :try_start_2
    invoke-direct {p0, p1, p2}, Lnet/yostore/aws/handler/PixWeDataHandler;->createFolder(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 103
    sget-object v6, Lnet/yostore/aws/api/ApiConfig;->PixWe_Meta_PARENT:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "pixwe"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_0

    .line 106
    invoke-direct {p0}, Lnet/yostore/aws/handler/PixWeDataHandler;->createDefaultAlbum()V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 109
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 110
    .local v1, e:Ljava/lang/NumberFormatException;
    const-wide/16 v2, -0x3e7

    goto :goto_1

    .line 114
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_2
    const-wide/16 v2, -0x3e7

    goto :goto_1
.end method


# virtual methods
.method public createAlbum(Ljava/lang/String;)J
    .locals 12
    .parameter "display"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/yostore/aws/api/exception/APIException;
        }
    .end annotation

    .prologue
    .line 140
    const-wide/16 v4, -0x3e7

    .line 141
    .local v4, folderId:J
    invoke-virtual {p0}, Lnet/yostore/aws/handler/PixWeDataHandler;->createAlbumsMetaToPropFind()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10, p1}, Lnet/yostore/aws/handler/PixWeDataHandler;->createFolderToPropFind(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 144
    .local v8, st:J
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "<pixwe_ai><ss>0</ss><bt>0</bt><st>"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "</st><pw></pw><in>3</in><sty>0</sty><or>0</or><mfi>-999</mfi><su></su></pixwe_ai>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v4, v5, p1, v10}, Lnet/yostore/aws/handler/PixWeDataHandler;->updateAlbumInfo(JLjava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;

    invoke-direct {v0}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;-><init>()V

    .line 146
    .local v0, aib:Lnet/yostore/aws/handler/entity/AlbumInfoBean;
    invoke-virtual {v0, v4, v5}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->setAlbumInfoFolder(J)V

    .line 147
    invoke-virtual {v0, p1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->setDisplay(Ljava/lang/String;)V

    .line 148
    iget-object v10, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v10, v10, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v0, v10}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->setUserName(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0, v8, v9}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->setSt(J)V

    .line 150
    iget-object v10, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->ctx:Landroid/content/Context;

    invoke-static {v10, v0}, Lnet/yostore/aws/sqlite/helper/AlbumListHelper;->insertAlbum(Landroid/content/Context;Lnet/yostore/aws/handler/entity/AlbumInfoBean;)J

    .line 151
    iget-object v10, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lnet/yostore/aws/handler/PixWeDataHandler;->doGetChangeSeq(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;)J

    move-result-wide v1

    .line 152
    .local v1, chgSeq:J
    new-instance v3, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;

    invoke-direct {v3}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;-><init>()V

    .line 153
    .local v3, folderChgSeq:Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;
    invoke-virtual {v3, v1, v2}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setChangeSeq(J)V

    .line 154
    iget-object v10, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v10, v10, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v3, v10}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setUserName(Ljava/lang/String;)V

    .line 155
    sget-object v10, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->formatter:Ljava/text/Format;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10, v11}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 156
    .local v6, now:J
    invoke-virtual {v3, v6, v7}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setChangeSeqTime(J)V

    .line 157
    invoke-virtual {v3, v6, v7}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setLocalUpdateTime(J)V

    .line 158
    invoke-virtual {v3, v4, v5}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setFolderId(J)V

    .line 159
    iget-object v10, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->ctx:Landroid/content/Context;

    invoke-static {v10, v3}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqHelper;->insertFolderChgSeq(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;)V

    .line 160
    iget-object v10, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->ctx:Landroid/content/Context;

    invoke-static {v10, v4, v5}, Lcom/ecareme/pixwe/PixWe;->updateDBFlg(Landroid/content/Context;J)V

    .line 161
    return-wide v4
.end method

.method public createAlbumsMetaToPropFind()J
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 311
    :try_start_0
    iget-object v1, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-wide v1, v1, Lnet/yostore/aws/api/ApiConfig;->albums_meta_folder_id:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    .line 312
    sget-object v1, Lnet/yostore/aws/api/ApiConfig;->PixWe_Meta_PARENT:Ljava/lang/String;

    const-string v2, "pixwe"

    invoke-direct {p0, v1, v2}, Lnet/yostore/aws/handler/PixWeDataHandler;->createFolderToPropFind(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    sput-wide v1, Lcom/ecareme/pixwe/PixWe;->albums_meta_folder_id:J

    .line 313
    sget-wide v1, Lcom/ecareme/pixwe/PixWe;->albums_meta_folder_id:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 314
    iget-object v1, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->ctx:Landroid/content/Context;

    sget-wide v2, Lcom/ecareme/pixwe/PixWe;->albums_meta_folder_id:J

    invoke-static {v1, v2, v3}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->updateAccMetaFolder(Landroid/content/Context;J)V
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :cond_0
    :goto_0
    iget-object v1, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    sget-wide v2, Lcom/ecareme/pixwe/PixWe;->albums_meta_folder_id:J

    iput-wide v2, v1, Lnet/yostore/aws/api/ApiConfig;->albums_meta_folder_id:J

    .line 326
    sget-wide v1, Lcom/ecareme/pixwe/PixWe;->albums_meta_folder_id:J

    return-wide v1

    .line 317
    :cond_1
    :try_start_1
    iget-object v1, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-wide v1, v1, Lnet/yostore/aws/api/ApiConfig;->albums_meta_folder_id:J

    sput-wide v1, Lcom/ecareme/pixwe/PixWe;->albums_meta_folder_id:J
    :try_end_1
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 320
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 323
    .local v0, e:Lnet/yostore/aws/api/exception/APIException;
    invoke-virtual {v0}, Lnet/yostore/aws/api/exception/APIException;->printStackTrace()V

    goto :goto_0
.end method

.method public createMediasFolder(Ljava/lang/String;)J
    .locals 4
    .parameter "display"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/yostore/aws/api/exception/APIException;
        }
    .end annotation

    .prologue
    .line 276
    const-wide/16 v0, -0x3e7

    .line 277
    .local v0, folderId:J
    invoke-virtual {p0}, Lnet/yostore/aws/handler/PixWeDataHandler;->createPixWeToPropFind()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lnet/yostore/aws/handler/PixWeDataHandler;->createFolderToPropFind(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 278
    return-wide v0
.end method

.method public createMySyncFolderToPropFind()J
    .locals 5

    .prologue
    .line 333
    const-wide/16 v1, -0x3e7

    .line 336
    .local v1, rtnFolderId:J
    :try_start_0
    iget-object v3, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v3, v3, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v3, v3, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 337
    :cond_0
    const-string v3, "-5"

    const-string v4, "MySyncFolder"

    invoke-direct {p0, v3, v4}, Lnet/yostore/aws/handler/PixWeDataHandler;->createFolderToPropFind(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    .line 338
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 339
    sput-wide v1, Lcom/ecareme/pixwe/PixWe;->mySyncFolderId:J

    .line 340
    iget-object v3, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    .line 341
    iget-object v3, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-static {v3}, Lcom/ecareme/pixwe/PixWe;->saveApiCfg(Lnet/yostore/aws/api/ApiConfig;)V
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :cond_1
    :goto_0
    iget-object v3, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v3, v3, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sput-wide v3, Lcom/ecareme/pixwe/PixWe;->mySyncFolderId:J

    .line 351
    sget-wide v3, Lcom/ecareme/pixwe/PixWe;->mySyncFolderId:J

    return-wide v3

    .line 345
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 348
    .local v0, e:Lnet/yostore/aws/api/exception/APIException;
    invoke-virtual {v0}, Lnet/yostore/aws/api/exception/APIException;->printStackTrace()V

    goto :goto_0
.end method

.method public createPixWeToPropFind()J
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 287
    :try_start_0
    iget-object v1, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-wide v1, v1, Lnet/yostore/aws/api/ApiConfig;->pixwe_folder_id:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    .line 288
    sget-object v1, Lnet/yostore/aws/api/ApiConfig;->PixWe_PARENT:Ljava/lang/String;

    const-string v2, "pixwefiles"

    invoke-direct {p0, v1, v2}, Lnet/yostore/aws/handler/PixWeDataHandler;->createFolderToPropFind(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    sput-wide v1, Lcom/ecareme/pixwe/PixWe;->pixwe_folder_id:J

    .line 289
    sget-wide v1, Lcom/ecareme/pixwe/PixWe;->pixwe_folder_id:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 290
    iget-object v1, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->ctx:Landroid/content/Context;

    sget-wide v2, Lcom/ecareme/pixwe/PixWe;->pixwe_folder_id:J

    invoke-static {v1, v2, v3}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->updateAccPixWeFolder(Landroid/content/Context;J)V
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :cond_0
    :goto_0
    iget-object v1, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    sget-wide v2, Lcom/ecareme/pixwe/PixWe;->pixwe_folder_id:J

    iput-wide v2, v1, Lnet/yostore/aws/api/ApiConfig;->pixwe_folder_id:J

    .line 302
    sget-wide v1, Lcom/ecareme/pixwe/PixWe;->pixwe_folder_id:J

    return-wide v1

    .line 293
    :cond_1
    :try_start_1
    iget-object v1, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-wide v1, v1, Lnet/yostore/aws/api/ApiConfig;->pixwe_folder_id:J

    sput-wide v1, Lcom/ecareme/pixwe/PixWe;->pixwe_folder_id:J
    :try_end_1
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 296
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 299
    .local v0, e:Lnet/yostore/aws/api/exception/APIException;
    invoke-virtual {v0}, Lnet/yostore/aws/api/exception/APIException;->printStackTrace()V

    goto :goto_0
.end method

.method public createTop50Album()V
    .locals 5

    .prologue
    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 221
    .local v1, st:J
    new-instance v0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;

    invoke-direct {v0}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;-><init>()V

    .line 222
    .local v0, aib:Lnet/yostore/aws/handler/entity/AlbumInfoBean;
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->setAlbumInfoFolder(J)V

    .line 223
    const-string v3, "[Recent Photos]"

    invoke-virtual {v0, v3}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->setDisplay(Ljava/lang/String;)V

    .line 224
    iget-object v3, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v3, v3, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->setUserName(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->setSt(J)V

    .line 226
    iget-object v3, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->ctx:Landroid/content/Context;

    invoke-static {v3, v0}, Lnet/yostore/aws/sqlite/helper/AlbumListHelper;->insertAlbum(Landroid/content/Context;Lnet/yostore/aws/handler/entity/AlbumInfoBean;)J

    .line 247
    return-void
.end method

.method public doGetChangeSeq(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;)J
    .locals 8
    .parameter "apicfg"
    .parameter "folderId"

    .prologue
    const-wide/16 v6, -0x64

    .line 673
    new-instance v1, Lnet/yostore/aws/api/InfoRelayApi;

    iget-object v4, p1, Lnet/yostore/aws/api/ApiConfig;->infoRelay:Ljava/lang/String;

    const-string v5, "https://approxy.asuswebstorage.com/api/"

    invoke-direct {v1, v4, v5}, Lnet/yostore/aws/api/InfoRelayApi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    .local v1, ir:Lnet/yostore/aws/api/InfoRelayApi;
    new-instance v2, Lnet/yostore/aws/api/entity/GetChangeSeqRequest;

    iget-object v4, p1, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    invoke-direct {v2, v4, p2}, Lnet/yostore/aws/api/entity/GetChangeSeqRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    .local v2, request:Lnet/yostore/aws/api/entity/GetChangeSeqRequest;
    :try_start_0
    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/InfoRelayApi;->folderGetChangeSeq(Lnet/yostore/aws/api/entity/GetChangeSeqRequest;)Lnet/yostore/aws/api/entity/GetChangeSeqResponse;

    move-result-object v3

    .line 677
    .local v3, response:Lnet/yostore/aws/api/entity/GetChangeSeqResponse;
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/GetChangeSeqResponse;->getChangeSeq()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v4

    .line 686
    .end local v3           #response:Lnet/yostore/aws/api/entity/GetChangeSeqResponse;
    :goto_0
    return-wide v4

    .line 678
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 679
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-wide v4, v6

    .line 680
    goto :goto_0

    .line 681
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 682
    .local v0, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    move-wide v4, v6

    .line 683
    goto :goto_0

    .line 684
    .end local v0           #e:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v4

    move-object v0, v4

    .line 685
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-wide v4, v6

    .line 686
    goto :goto_0
.end method

.method public getAlbums()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/api/entity/FolderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 519
    const/4 v5, 0x0

    .line 520
    .local v5, folderList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    iget-object v6, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->ctx:Landroid/content/Context;

    iget-object v7, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v7, v7, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-static {v6, v7}, Lnet/yostore/aws/sqlite/helper/AlbumListHelper;->getAlbumList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 521
    .local v4, albumList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/AlbumInfoBean;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 522
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #folderList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 523
    .restart local v5       #folderList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 524
    .local v3, aitms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/handler/entity/AlbumInfoBean;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 543
    .end local v3           #aitms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/handler/entity/AlbumInfoBean;>;"
    :cond_0
    return-object v5

    .line 525
    .restart local v3       #aitms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/handler/entity/AlbumInfoBean;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;

    .line 526
    .local v0, _aib:Lnet/yostore/aws/handler/entity/AlbumInfoBean;
    new-instance v1, Lnet/yostore/aws/api/entity/FolderInfo;

    invoke-direct {v1}, Lnet/yostore/aws/api/entity/FolderInfo;-><init>()V

    .line 527
    .local v1, _folderInfo:Lnet/yostore/aws/api/entity/FolderInfo;
    new-instance v2, Lnet/yostore/aws/api/entity/AlbumInfo;

    invoke-direct {v2}, Lnet/yostore/aws/api/entity/AlbumInfo;-><init>()V

    .line 528
    .local v2, ai:Lnet/yostore/aws/api/entity/AlbumInfo;
    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getBt()I

    move-result v6

    invoke-virtual {v2, v6}, Lnet/yostore/aws/api/entity/AlbumInfo;->setBt(I)V

    .line 529
    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getIn()I

    move-result v6

    invoke-virtual {v2, v6}, Lnet/yostore/aws/api/entity/AlbumInfo;->setIn(I)V

    .line 530
    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getPw()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lnet/yostore/aws/api/entity/AlbumInfo;->setPw(Ljava/lang/String;)V

    .line 531
    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getSs()I

    move-result v6

    invoke-virtual {v2, v6}, Lnet/yostore/aws/api/entity/AlbumInfo;->setSs(I)V

    .line 532
    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getSt()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lnet/yostore/aws/api/entity/AlbumInfo;->setSt(J)V

    .line 533
    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getSty()I

    move-result v6

    invoke-virtual {v2, v6}, Lnet/yostore/aws/api/entity/AlbumInfo;->setSty(I)V

    .line 534
    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getOr()I

    move-result v6

    invoke-virtual {v2, v6}, Lnet/yostore/aws/api/entity/AlbumInfo;->setOr(I)V

    .line 535
    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getMfi()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lnet/yostore/aws/api/entity/AlbumInfo;->setMfi(J)V

    .line 536
    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getSu()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lnet/yostore/aws/api/entity/AlbumInfo;->setSu(Ljava/lang/String;)V

    .line 537
    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/FolderInfo;->setAlbumInfo(Lnet/yostore/aws/api/entity/AlbumInfo;)V

    .line 538
    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getAlbumInfoFolder()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lnet/yostore/aws/api/entity/FolderInfo;->setId(Ljava/lang/String;)V

    .line 539
    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getDisplay()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lnet/yostore/aws/api/entity/FolderInfo;->setDisplay(Ljava/lang/String;)V

    .line 540
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getCloudAlbums()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/api/entity/FolderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 426
    const/4 v3, 0x0

    .line 427
    .local v3, folderList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    invoke-virtual {p0}, Lnet/yostore/aws/handler/PixWeDataHandler;->createAlbumsMetaToPropFind()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 428
    const/4 v4, 0x0

    .line 429
    .local v4, response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    new-instance v0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;

    sget-wide v5, Lcom/ecareme/pixwe/PixWe;->albums_meta_folder_id:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lnet/yostore/aws/api/helper/FolderBrowseHelper;-><init>(Ljava/lang/String;)V

    .line 431
    .local v0, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    :try_start_0
    iget-object v5, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v0, v5}, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v4

    .end local v4           #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    check-cast v4, Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    .restart local v4       #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->getFolderList()Ljava/util/List;

    move-result-object v3

    .line 438
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 441
    .end local p0
    .local v2, folderItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .end local v0           #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .end local v2           #folderItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    .end local v4           #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    :cond_0
    move-object v5, v3

    .line 459
    :goto_1
    return-object v5

    .line 432
    .restart local v0       #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .restart local p0
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 434
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 435
    const/4 v5, 0x0

    goto :goto_1

    .line 442
    .end local v1           #e:Ljava/lang/Exception;
    .end local p0
    .restart local v2       #folderItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    .restart local v4       #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/yostore/aws/api/entity/FolderInfo;

    goto :goto_0
.end method

.method public getCloudAlbums(JJ)Ljava/util/List;
    .locals 9
    .parameter "startTime"
    .parameter "endTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/api/entity/FolderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 473
    const/4 v3, 0x0

    .line 474
    .local v3, folderList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    invoke-virtual {p0}, Lnet/yostore/aws/handler/PixWeDataHandler;->createAlbumsMetaToPropFind()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 475
    const/4 v4, 0x0

    .line 476
    .local v4, response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    new-instance v0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;

    sget-wide v5, Lcom/ecareme/pixwe/PixWe;->albums_meta_folder_id:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lnet/yostore/aws/api/helper/FolderBrowseHelper;-><init>(Ljava/lang/String;)V

    .line 479
    .local v0, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    :try_start_0
    iget-object v5, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v0, v5}, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v4

    .end local v4           #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    check-cast v4, Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    .restart local v4       #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->getFolderList()Ljava/util/List;

    move-result-object v3

    .line 486
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 489
    .end local p0
    .local v2, folderItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .end local v0           #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .end local v2           #folderItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    .end local v4           #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    :cond_0
    move-object v5, v3

    .line 507
    :goto_1
    return-object v5

    .line 480
    .restart local v0       #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .restart local p0
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 482
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 483
    const/4 v5, 0x0

    goto :goto_1

    .line 490
    .end local v1           #e:Ljava/lang/Exception;
    .end local p0
    .restart local v2       #folderItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    .restart local v4       #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/yostore/aws/api/entity/FolderInfo;

    goto :goto_0
.end method

.method public getMediaInfo(J)Ljava/util/List;
    .locals 6
    .parameter "fileId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/api/entity/MediaInfoEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 616
    new-instance v2, Lnet/yostore/aws/api/helper/MediaInfoHelper;

    invoke-direct {v2, p1, p2}, Lnet/yostore/aws/api/helper/MediaInfoHelper;-><init>(J)V

    .line 617
    .local v2, helper:Lnet/yostore/aws/api/helper/MediaInfoHelper;
    const/4 v4, 0x0

    .line 618
    .local v4, response:Lnet/yostore/aws/api/entity/MediaInfoResponse;
    const/4 v3, 0x0

    .line 621
    .local v3, mieList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/MediaInfoEntity;>;"
    :try_start_0
    iget-object v5, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v2, v5}, Lnet/yostore/aws/api/helper/MediaInfoHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lnet/yostore/aws/api/entity/MediaInfoResponse;

    move-object v4, v0

    .line 622
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/MediaInfoResponse;->getStatus()I

    move-result v5

    if-nez v5, :cond_0

    .line 623
    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/MediaInfoResponse;->getMieList()Ljava/util/List;
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 628
    :cond_0
    :goto_0
    return-object v3

    .line 625
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 626
    .local v1, e1:Lnet/yostore/aws/api/exception/APIException;
    invoke-virtual {v1}, Lnet/yostore/aws/api/exception/APIException;->printStackTrace()V

    goto :goto_0
.end method

.method public getMediaInfo(Ljava/lang/String;J)Ljava/util/List;
    .locals 11
    .parameter "miderinfoXml"
    .parameter "folderId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/MediaInfoBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 636
    new-instance v0, Lnet/yostore/aws/api/sax/MediaInfo;

    invoke-direct {v0}, Lnet/yostore/aws/api/sax/MediaInfo;-><init>()V

    .line 637
    .local v0, handler:Lnet/yostore/aws/api/sax/MediaInfo;
    const/4 v6, 0x0

    .line 638
    .local v6, mieList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/MediaInfoEntity;>;"
    const/4 v2, 0x0

    .line 640
    .local v2, mediaInfoBeanList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    :try_start_0
    invoke-static {p1, v0}, Landroid/util/Xml;->parse(Ljava/lang/String;Lorg/xml/sax/ContentHandler;)V

    .line 641
    invoke-virtual {v0}, Lnet/yostore/aws/api/sax/MediaInfo;->getResponse()Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v7

    check-cast v7, Lnet/yostore/aws/api/entity/MediaInfoResponse;

    .line 642
    .local v7, response:Lnet/yostore/aws/api/entity/MediaInfoResponse;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lnet/yostore/aws/api/entity/MediaInfoResponse;->getStatus()I

    move-result v8

    if-nez v8, :cond_0

    .line 643
    invoke-virtual {v7}, Lnet/yostore/aws/api/entity/MediaInfoResponse;->getMieList()Ljava/util/List;

    move-result-object v6

    .line 644
    if-eqz v6, :cond_0

    .line 645
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 646
    .local v1, itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/MediaInfoEntity;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    .line 647
    .end local v2           #mediaInfoBeanList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    .local v3, mediaInfoBeanList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    :goto_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 656
    const-string v8, "##############PixWeDataHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " insert medias "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v8, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->ctx:Landroid/content/Context;

    invoke-static {v8, v3}, Lnet/yostore/aws/sqlite/helper/MediaHelper;->insertMediaLists(Landroid/content/Context;Ljava/util/List;)V

    move-object v2, v3

    .line 666
    .end local v1           #itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/MediaInfoEntity;>;"
    .end local v3           #mediaInfoBeanList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    .end local v7           #response:Lnet/yostore/aws/api/entity/MediaInfoResponse;
    .restart local v2       #mediaInfoBeanList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    :cond_0
    :goto_1
    return-object v2

    .line 648
    .end local v2           #mediaInfoBeanList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    .restart local v1       #itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/MediaInfoEntity;>;"
    .restart local v3       #mediaInfoBeanList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    .restart local v7       #response:Lnet/yostore/aws/api/entity/MediaInfoResponse;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/yostore/aws/api/entity/MediaInfoEntity;

    .line 649
    .local v4, mi:Lnet/yostore/aws/api/entity/MediaInfoEntity;
    new-instance v5, Lnet/yostore/aws/handler/entity/MediaInfoBean;

    iget-object v8, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-direct {v5, v8}, Lnet/yostore/aws/handler/entity/MediaInfoBean;-><init>(Lnet/yostore/aws/api/ApiConfig;)V

    .line 650
    .local v5, mib:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    invoke-virtual {v5, p2, p3}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setMediaInfoFolder(J)V

    .line 652
    invoke-virtual {v5, v4}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setMediaInfo(Lnet/yostore/aws/api/entity/MediaInfoEntity;)V

    .line 653
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 661
    .end local v4           #mi:Lnet/yostore/aws/api/entity/MediaInfoEntity;
    .end local v5           #mib:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    :catch_0
    move-exception v8

    move-object v2, v3

    .end local v3           #mediaInfoBeanList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    .restart local v2       #mediaInfoBeanList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    goto :goto_1

    .end local v1           #itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/MediaInfoEntity;>;"
    .end local v7           #response:Lnet/yostore/aws/api/entity/MediaInfoResponse;
    :catch_1
    move-exception v8

    goto :goto_1
.end method

.method public getMediasInfoBeanList(J)Ljava/util/List;
    .locals 21
    .parameter "folderId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/MediaInfoBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 557
    const/4 v12, 0x0

    .line 558
    .local v12, mediaInfoBeanList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    const-wide/16 v17, 0x0

    cmp-long v17, p1, v17

    if-lez v17, :cond_2

    .line 559
    const-wide/16 v8, -0x3e7

    .line 560
    .local v8, fileId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/handler/PixWeDataHandler;->ctx:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Lnet/yostore/aws/sqlite/helper/AlbumFileHelper;->getAlbumFile(Landroid/content/Context;J)Lnet/yostore/aws/sqlite/entity/AlbumFile;

    move-result-object v4

    .line 561
    .local v4, af:Lnet/yostore/aws/sqlite/entity/AlbumFile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/handler/PixWeDataHandler;->ctx:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Lnet/yostore/aws/sqlite/helper/AlbumListHelper;->getAlbum(Landroid/content/Context;J)Lnet/yostore/aws/handler/entity/AlbumInfoBean;

    move-result-object v6

    .line 563
    .local v6, aib:Lnet/yostore/aws/handler/entity/AlbumInfoBean;
    if-nez v6, :cond_0

    invoke-virtual {v6}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getMfi()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-gtz v17, :cond_4

    .line 564
    :cond_0
    new-instance v10, Lnet/yostore/aws/api/helper/FindPropfindHelper;

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    const-string v18, "medias.pixweinfo"

    const-string v19, "system.file"

    move-object v0, v10

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lnet/yostore/aws/api/helper/FindPropfindHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    .local v10, helper:Lnet/yostore/aws/api/helper/FindPropfindHelper;
    const/16 v16, 0x0

    .line 568
    .local v16, response:Lnet/yostore/aws/api/entity/FindPropfindResponse;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/handler/PixWeDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    move-object/from16 v17, v0

    move-object v0, v10

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/helper/FindPropfindHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Lnet/yostore/aws/api/entity/FindPropfindResponse;

    move-object/from16 v16, v0

    .line 569
    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getStatus()I

    move-result v17

    if-nez v17, :cond_3

    invoke-virtual/range {v16 .. v16}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getId()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_3

    invoke-virtual/range {v16 .. v16}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getId()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_3

    .line 570
    invoke-virtual/range {v16 .. v16}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getId()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 572
    invoke-virtual {v6, v8, v9}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->setMfi(J)V

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/handler/PixWeDataHandler;->ctx:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-static {v0, v1}, Lnet/yostore/aws/sqlite/helper/AlbumListHelper;->updateMediaFileId(Landroid/content/Context;Lnet/yostore/aws/handler/entity/AlbumInfoBean;)V

    .line 575
    new-instance v5, Lnet/yostore/aws/sqlite/entity/AlbumFile;

    invoke-direct {v5}, Lnet/yostore/aws/sqlite/entity/AlbumFile;-><init>()V
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    .end local v4           #af:Lnet/yostore/aws/sqlite/entity/AlbumFile;
    .local v5, af:Lnet/yostore/aws/sqlite/entity/AlbumFile;
    :try_start_1
    move-object v0, v5

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/sqlite/entity/AlbumFile;->setAlbumFolder(J)V

    .line 577
    invoke-virtual {v5, v8, v9}, Lnet/yostore/aws/sqlite/entity/AlbumFile;->setMediaInfoId(J)V

    .line 578
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-object v0, v5

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/sqlite/entity/AlbumFile;->setUpdateTime(J)V

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/handler/PixWeDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lnet/yostore/aws/sqlite/entity/AlbumFile;->setUserName(Ljava/lang/String;)V

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/handler/PixWeDataHandler;->ctx:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-static {v0, v1}, Lnet/yostore/aws/sqlite/helper/AlbumFileHelper;->updateAlbumToSave(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/AlbumFile;)V
    :try_end_1
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    .line 594
    .end local v5           #af:Lnet/yostore/aws/sqlite/entity/AlbumFile;
    .end local v10           #helper:Lnet/yostore/aws/api/helper/FindPropfindHelper;
    .end local v16           #response:Lnet/yostore/aws/api/entity/FindPropfindResponse;
    .restart local v4       #af:Lnet/yostore/aws/sqlite/entity/AlbumFile;
    :cond_1
    :goto_0
    const-wide/16 v17, 0x0

    cmp-long v17, v8, v17

    if-lez v17, :cond_2

    .line 595
    move-object/from16 v0, p0

    move-wide v1, v8

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/handler/PixWeDataHandler;->getMediaInfo(J)Ljava/util/List;

    move-result-object v13

    .line 596
    .local v13, mediaInfoList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/MediaInfoEntity;>;"
    if-eqz v13, :cond_2

    .line 597
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 598
    .local v11, itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/MediaInfoEntity;>;"
    new-instance v12, Ljava/util/ArrayList;

    .end local v12           #mediaInfoBeanList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 599
    .restart local v12       #mediaInfoBeanList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_5

    .line 610
    .end local v4           #af:Lnet/yostore/aws/sqlite/entity/AlbumFile;
    .end local v6           #aib:Lnet/yostore/aws/handler/entity/AlbumInfoBean;
    .end local v8           #fileId:J
    .end local v11           #itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/MediaInfoEntity;>;"
    .end local v13           #mediaInfoList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/MediaInfoEntity;>;"
    :cond_2
    return-object v12

    .line 582
    .restart local v4       #af:Lnet/yostore/aws/sqlite/entity/AlbumFile;
    .restart local v6       #aib:Lnet/yostore/aws/handler/entity/AlbumInfoBean;
    .restart local v8       #fileId:J
    .restart local v10       #helper:Lnet/yostore/aws/api/helper/FindPropfindHelper;
    .restart local v16       #response:Lnet/yostore/aws/api/entity/FindPropfindResponse;
    :cond_3
    if-eqz v16, :cond_1

    :try_start_2
    invoke-virtual/range {v16 .. v16}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getStatus()I

    move-result v17

    const/16 v18, 0xda

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    invoke-virtual/range {v16 .. v16}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getStatus()I
    :try_end_2
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 586
    :catch_0
    move-exception v17

    move-object/from16 v7, v17

    .line 589
    .local v7, e:Lnet/yostore/aws/api/exception/APIException;
    :goto_2
    invoke-virtual {v7}, Lnet/yostore/aws/api/exception/APIException;->printStackTrace()V

    goto :goto_0

    .line 592
    .end local v7           #e:Lnet/yostore/aws/api/exception/APIException;
    .end local v10           #helper:Lnet/yostore/aws/api/helper/FindPropfindHelper;
    .end local v16           #response:Lnet/yostore/aws/api/entity/FindPropfindResponse;
    :cond_4
    invoke-virtual {v4}, Lnet/yostore/aws/sqlite/entity/AlbumFile;->getMediaInfoId()J

    move-result-wide v8

    goto :goto_0

    .line 600
    .restart local v11       #itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/MediaInfoEntity;>;"
    .restart local v13       #mediaInfoList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/MediaInfoEntity;>;"
    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lnet/yostore/aws/api/entity/MediaInfoEntity;

    .line 601
    .local v14, mi:Lnet/yostore/aws/api/entity/MediaInfoEntity;
    new-instance v15, Lnet/yostore/aws/handler/entity/MediaInfoBean;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/handler/PixWeDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    move-object/from16 v17, v0

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;-><init>(Lnet/yostore/aws/api/ApiConfig;)V

    .line 602
    .local v15, mib:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    move-object v0, v15

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setMediaInfoFolder(J)V

    .line 604
    invoke-virtual {v15, v14}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setMediaInfo(Lnet/yostore/aws/api/entity/MediaInfoEntity;)V

    .line 605
    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 586
    .end local v4           #af:Lnet/yostore/aws/sqlite/entity/AlbumFile;
    .end local v11           #itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/MediaInfoEntity;>;"
    .end local v13           #mediaInfoList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/MediaInfoEntity;>;"
    .end local v14           #mi:Lnet/yostore/aws/api/entity/MediaInfoEntity;
    .end local v15           #mib:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    .restart local v5       #af:Lnet/yostore/aws/sqlite/entity/AlbumFile;
    .restart local v10       #helper:Lnet/yostore/aws/api/helper/FindPropfindHelper;
    .restart local v16       #response:Lnet/yostore/aws/api/entity/FindPropfindResponse;
    :catch_1
    move-exception v17

    move-object/from16 v7, v17

    move-object v4, v5

    .end local v5           #af:Lnet/yostore/aws/sqlite/entity/AlbumFile;
    .restart local v4       #af:Lnet/yostore/aws/sqlite/entity/AlbumFile;
    goto :goto_2
.end method

.method public insertTop50Photos()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 251
    .local v3, st:J
    new-instance v0, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;

    invoke-direct {v0}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;-><init>()V

    .line 252
    .local v0, folderChgSeq:Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;
    invoke-virtual {v0, v3, v4}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setChangeSeq(J)V

    .line 253
    iget-object v5, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v5, v5, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setUserName(Ljava/lang/String;)V

    .line 254
    sget-object v5, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->formatter:Ljava/text/Format;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 255
    .local v1, now:J
    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setChangeSeqTime(J)V

    .line 256
    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setLocalUpdateTime(J)V

    .line 257
    invoke-virtual {v0, v7, v8}, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->setFolderId(J)V

    .line 258
    iget-object v5, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->ctx:Landroid/content/Context;

    invoke-static {v5, v0}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqHelper;->insertFolderChgSeq(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;)V

    .line 259
    iget-object v5, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->ctx:Landroid/content/Context;

    invoke-static {v5, v7, v8}, Lcom/ecareme/pixwe/PixWe;->updateDBFlg(Landroid/content/Context;J)V

    .line 264
    iget-object v5, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->ctx:Landroid/content/Context;

    invoke-static {v5, v7, v8}, Lnet/yostore/aws/sqlite/helper/MediaHelper;->delByAlbum(Landroid/content/Context;J)V

    .line 266
    iget-object v5, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->ctx:Landroid/content/Context;

    .line 267
    iget-object v6, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-static {v6}, Lcom/ecareme/pixwe/helper/DefaultAlbumHelper;->getMySyncTop50MediaInfoList(Lnet/yostore/aws/api/ApiConfig;)Ljava/util/List;

    move-result-object v6

    .line 265
    invoke-static {v5, v6}, Lnet/yostore/aws/sqlite/helper/MediaHelper;->insertMediaLists(Landroid/content/Context;Ljava/util/List;)V

    .line 269
    return-void
.end method

.method public updateAlbumInfo(JLjava/lang/String;Ljava/lang/String;)I
    .locals 11
    .parameter "folderId"
    .parameter "display"
    .parameter "attribute"

    .prologue
    const/16 v10, 0x3e7

    .line 399
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_1

    .line 402
    new-instance v1, Lnet/yostore/aws/api/helper/UpdateFolderAttributeHelper;

    sget-wide v2, Lcom/ecareme/pixwe/PixWe;->albums_meta_folder_id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    move-object v3, p3

    move-wide v4, p1

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lnet/yostore/aws/api/helper/UpdateFolderAttributeHelper;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 403
    .local v1, helper:Lnet/yostore/aws/api/helper/UpdateFolderAttributeHelper;
    const/4 v8, 0x0

    .line 406
    .local v8, response:Lnet/yostore/aws/api/entity/UpdateFolderAttributeResponse;
    :try_start_0
    iget-object v2, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/helper/UpdateFolderAttributeHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lnet/yostore/aws/api/entity/UpdateFolderAttributeResponse;

    move-object v8, v0

    .line 407
    if-nez v8, :cond_0

    move v2, v10

    .line 413
    .end local v1           #helper:Lnet/yostore/aws/api/helper/UpdateFolderAttributeHelper;
    .end local v8           #response:Lnet/yostore/aws/api/entity/UpdateFolderAttributeResponse;
    :goto_0
    return v2

    .line 408
    .restart local v1       #helper:Lnet/yostore/aws/api/helper/UpdateFolderAttributeHelper;
    .restart local v8       #response:Lnet/yostore/aws/api/entity/UpdateFolderAttributeResponse;
    :cond_0
    invoke-virtual {v8}, Lnet/yostore/aws/api/entity/UpdateFolderAttributeResponse;->getStatus()I
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 409
    :catch_0
    move-exception v2

    move-object v7, v2

    .local v7, e1:Lnet/yostore/aws/api/exception/APIException;
    move v2, v10

    .line 410
    goto :goto_0

    .end local v1           #helper:Lnet/yostore/aws/api/helper/UpdateFolderAttributeHelper;
    .end local v7           #e1:Lnet/yostore/aws/api/exception/APIException;
    .end local v8           #response:Lnet/yostore/aws/api/entity/UpdateFolderAttributeResponse;
    :cond_1
    move v2, v10

    .line 413
    goto :goto_0
.end method

.method public updateMediaInfo(JJLjava/lang/String;Ljava/lang/String;)J
    .locals 11
    .parameter "folderid"
    .parameter "fileId"
    .parameter "data"
    .parameter "attribute"

    .prologue
    .line 357
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-ltz v2, :cond_2

    .line 358
    new-instance v1, Lnet/yostore/aws/api/helper/DirectUploadHelper;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "medias.pixweinfo"

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    move-wide v4, p3

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v7}, Lnet/yostore/aws/api/helper/DirectUploadHelper;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[B)V

    .line 359
    .local v1, helper:Lnet/yostore/aws/api/helper/DirectUploadHelper;
    const/4 v9, 0x0

    .line 362
    .local v9, response:Lnet/yostore/aws/api/entity/DirectUploadResponse;
    :try_start_0
    iget-object v2, p0, Lnet/yostore/aws/handler/PixWeDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/helper/DirectUploadHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lnet/yostore/aws/api/entity/DirectUploadResponse;

    move-object v9, v0

    .line 363
    if-nez v9, :cond_0

    const-wide/16 v2, -0x3e7

    .line 372
    .end local v1           #helper:Lnet/yostore/aws/api/helper/DirectUploadHelper;
    .end local v9           #response:Lnet/yostore/aws/api/entity/DirectUploadResponse;
    :goto_0
    return-wide v2

    .line 364
    .restart local v1       #helper:Lnet/yostore/aws/api/helper/DirectUploadHelper;
    .restart local v9       #response:Lnet/yostore/aws/api/entity/DirectUploadResponse;
    :cond_0
    invoke-virtual {v9}, Lnet/yostore/aws/api/entity/DirectUploadResponse;->getStatus()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v9}, Lnet/yostore/aws/api/entity/DirectUploadResponse;->getFileId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v9}, Lnet/yostore/aws/api/entity/DirectUploadResponse;->getFileId()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v9}, Lnet/yostore/aws/api/entity/DirectUploadResponse;->getFileId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    move-wide v2, p3

    .line 366
    goto :goto_0

    .line 367
    :cond_1
    const-wide/16 v2, -0x3e7

    goto :goto_0

    .line 368
    :catch_0
    move-exception v2

    move-object v8, v2

    .line 369
    .local v8, e1:Lnet/yostore/aws/api/exception/APIException;
    const-wide/16 v2, -0x3e7

    goto :goto_0

    .line 372
    .end local v1           #helper:Lnet/yostore/aws/api/helper/DirectUploadHelper;
    .end local v8           #e1:Lnet/yostore/aws/api/exception/APIException;
    .end local v9           #response:Lnet/yostore/aws/api/entity/DirectUploadResponse;
    :cond_2
    const-wide/16 v2, -0x3e7

    goto :goto_0
.end method

.method public updateXmlToFolder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
    .locals 18
    .parameter "ctx"
    .parameter "data"
    .parameter "fileName"
    .parameter "folderId"
    .parameter "fileId"
    .parameter "attribute"

    .prologue
    .line 695
    new-instance v5, Lnet/yostore/aws/api/helper/DirectUploadHelper;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    move-object/from16 v6, p4

    move-object/from16 v7, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    invoke-direct/range {v5 .. v11}, Lnet/yostore/aws/api/helper/DirectUploadHelper;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[B)V

    .line 696
    .local v5, helper:Lnet/yostore/aws/api/helper/DirectUploadHelper;
    const/16 v16, 0x0

    .line 699
    .local v16, response:Lnet/yostore/aws/api/entity/DirectUploadResponse;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/handler/PixWeDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lnet/yostore/aws/api/helper/DirectUploadHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Lnet/yostore/aws/api/entity/DirectUploadResponse;

    move-object/from16 v16, v0

    .line 700
    if-nez v16, :cond_0

    const/4 v6, 0x0

    .line 727
    :goto_0
    return v6

    .line 701
    :cond_0
    invoke-virtual/range {v16 .. v16}, Lnet/yostore/aws/api/entity/DirectUploadResponse;->getStatus()I

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual/range {v16 .. v16}, Lnet/yostore/aws/api/entity/DirectUploadResponse;->getFileId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual/range {v16 .. v16}, Lnet/yostore/aws/api/entity/DirectUploadResponse;->getFileId()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual/range {v16 .. v16}, Lnet/yostore/aws/api/entity/DirectUploadResponse;->getFileId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    .line 702
    const-wide/16 v6, 0x0

    cmp-long v6, p5, v6

    if-gez v6, :cond_2

    .line 704
    invoke-static/range {p4 .. p4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p1

    move-wide v1, v6

    invoke-static {v0, v1, v2}, Lnet/yostore/aws/sqlite/helper/AlbumListHelper;->getAlbum(Landroid/content/Context;J)Lnet/yostore/aws/handler/entity/AlbumInfoBean;

    move-result-object v14

    .line 705
    .local v14, aib:Lnet/yostore/aws/handler/entity/AlbumInfoBean;
    if-eqz v14, :cond_1

    .line 706
    invoke-virtual/range {v16 .. v16}, Lnet/yostore/aws/api/entity/DirectUploadResponse;->getFileId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v14, v6, v7}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->setMfi(J)V

    .line 707
    move-object/from16 v0, p1

    move-object v1, v14

    invoke-static {v0, v1}, Lnet/yostore/aws/sqlite/helper/AlbumListHelper;->updateMediaFileId(Landroid/content/Context;Lnet/yostore/aws/handler/entity/AlbumInfoBean;)V

    .line 710
    :cond_1
    new-instance v13, Lnet/yostore/aws/sqlite/entity/AlbumFile;

    invoke-direct {v13}, Lnet/yostore/aws/sqlite/entity/AlbumFile;-><init>()V

    .line 711
    .local v13, af:Lnet/yostore/aws/sqlite/entity/AlbumFile;
    invoke-static/range {p4 .. p4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v13, v6, v7}, Lnet/yostore/aws/sqlite/entity/AlbumFile;->setAlbumFolder(J)V

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/handler/PixWeDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/handler/PixWeDataHandler;->doGetChangeSeq(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v13, v6, v7}, Lnet/yostore/aws/sqlite/entity/AlbumFile;->setChangeSeq(J)V

    .line 713
    sget-object v6, Lnet/yostore/aws/sqlite/entity/FolderChangeSeq;->formatter:Ljava/text/Format;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v7}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 714
    .local v11, now:J
    invoke-virtual/range {v16 .. v16}, Lnet/yostore/aws/api/entity/DirectUploadResponse;->getFileId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v13, v6, v7}, Lnet/yostore/aws/sqlite/entity/AlbumFile;->setMediaInfoId(J)V

    .line 715
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v13, v6, v7}, Lnet/yostore/aws/sqlite/entity/AlbumFile;->setUpdateTime(J)V

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/handler/PixWeDataHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    move-object v6, v0

    iget-object v6, v6, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-virtual {v13, v6}, Lnet/yostore/aws/sqlite/entity/AlbumFile;->setUserName(Ljava/lang/String;)V

    .line 717
    move-object/from16 v0, p1

    move-object v1, v13

    invoke-static {v0, v1}, Lnet/yostore/aws/sqlite/helper/AlbumFileHelper;->updateAlbumToSave(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/AlbumFile;)V

    .line 719
    invoke-virtual {v13}, Lnet/yostore/aws/sqlite/entity/AlbumFile;->getAlbumFolder()J

    move-result-wide v7

    invoke-virtual {v13}, Lnet/yostore/aws/sqlite/entity/AlbumFile;->getChangeSeq()J

    move-result-wide v9

    move-object/from16 v6, p1

    invoke-static/range {v6 .. v12}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqHelper;->updateChgSeqUpdate(Landroid/content/Context;JJJ)V

    .line 721
    sget-wide v6, Lcom/ecareme/pixwe/PixWe;->albums_meta_folder_id:J

    move-object/from16 v0, p1

    move-wide v1, v6

    move-wide v3, v11

    invoke-static {v0, v1, v2, v3, v4}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqHelper;->updateLocalUpdateTime(Landroid/content/Context;JJ)V

    .line 722
    invoke-virtual {v13}, Lnet/yostore/aws/sqlite/entity/AlbumFile;->getAlbumFolder()J

    move-result-wide v6

    move-object/from16 v0, p1

    move-wide v1, v6

    move-wide v3, v11

    invoke-static {v0, v1, v2, v3, v4}, Lnet/yostore/aws/sqlite/helper/FolderChgSeqHelper;->updateLocalUpdateTime(Landroid/content/Context;JJ)V
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    .end local v11           #now:J
    .end local v13           #af:Lnet/yostore/aws/sqlite/entity/AlbumFile;
    .end local v14           #aib:Lnet/yostore/aws/handler/entity/AlbumInfoBean;
    :cond_2
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 725
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 726
    :catch_0
    move-exception v6

    move-object v15, v6

    .line 727
    .local v15, e1:Lnet/yostore/aws/api/exception/APIException;
    const/4 v6, 0x0

    goto/16 :goto_0
.end method
