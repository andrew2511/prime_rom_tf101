.class public Lcom/aws/mycloud/helper/MEarPlayListHelper;
.super Ljava/lang/Object;
.source "MEarPlayListHelper.java"


# static fields
.field public static STATUS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, ""

    sput-object v0, Lcom/aws/mycloud/helper/MEarPlayListHelper;->STATUS:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileList(Lnet/yostore/aws/api/ApiConfig;)Ljava/util/List;
    .locals 11
    .parameter "apicfg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/yostore/aws/api/ApiConfig;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/api/entity/EntryInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 74
    const-string v1, ""

    sput-object v1, Lcom/aws/mycloud/helper/MEarPlayListHelper;->STATUS:Ljava/lang/String;

    .line 75
    invoke-static {p0}, Lcom/aws/mycloud/helper/FolderRootsConfig;->getMySync(Lnet/yostore/aws/api/ApiConfig;)Ljava/lang/String;

    move-result-object v7

    .line 76
    .local v7, fid:Ljava/lang/String;
    if-eqz v7, :cond_1

    const-string v1, "ERR:"

    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 77
    new-instance v0, Lnet/yostore/aws/api/helper/SqlQueryHelper;

    const-string v1, ""

    const-string v2, ""

    const/4 v3, 0x5

    const/4 v4, 0x0

    sget-object v5, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->FILE:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    const-string v6, "mp3"

    invoke-direct/range {v0 .. v7}, Lnet/yostore/aws/api/helper/SqlQueryHelper;-><init>(Ljava/lang/String;Ljava/lang/String;IILnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .local v0, helper:Lnet/yostore/aws/api/helper/SqlQueryHelper;
    :try_start_0
    invoke-virtual {v0, p0}, Lnet/yostore/aws/api/helper/SqlQueryHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v9

    check-cast v9, Lnet/yostore/aws/api/entity/FulltextQueryResponse;

    .line 80
    .local v9, response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lnet/yostore/aws/api/entity/FulltextQueryResponse;->getStatus()I

    move-result v1

    if-nez v1, :cond_0

    .line 81
    invoke-virtual {v9}, Lnet/yostore/aws/api/entity/FulltextQueryResponse;->getEntries()Ljava/util/List;
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/AAAException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 102
    .end local v0           #helper:Lnet/yostore/aws/api/helper/SqlQueryHelper;
    .end local v9           #response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    :goto_0
    return-object v1

    .restart local v0       #helper:Lnet/yostore/aws/api/helper/SqlQueryHelper;
    .restart local v9       #response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    :cond_0
    move-object v1, v10

    .line 84
    goto :goto_0

    .line 87
    .end local v9           #response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 88
    .local v8, e:Lnet/yostore/aws/api/exception/AAAException;
    const-string v1, "2"

    sput-object v1, Lcom/aws/mycloud/helper/MEarPlayListHelper;->STATUS:Ljava/lang/String;

    .line 89
    invoke-virtual {v8}, Lnet/yostore/aws/api/exception/AAAException;->printStackTrace()V

    move-object v1, v10

    .line 90
    goto :goto_0

    .line 92
    .end local v8           #e:Lnet/yostore/aws/api/exception/AAAException;
    :catch_1
    move-exception v1

    move-object v8, v1

    .line 93
    .local v8, e:Lnet/yostore/aws/api/exception/APIException;
    invoke-virtual {v8}, Lnet/yostore/aws/api/exception/APIException;->printStackTrace()V

    move-object v1, v10

    .line 94
    goto :goto_0

    .line 97
    .end local v0           #helper:Lnet/yostore/aws/api/helper/SqlQueryHelper;
    .end local v8           #e:Lnet/yostore/aws/api/exception/APIException;
    :cond_1
    if-eqz v7, :cond_2

    const-string v1, "ERR:"

    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    const-string v1, "ERR:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/aws/mycloud/helper/MEarPlayListHelper;->STATUS:Ljava/lang/String;

    move-object v1, v10

    .line 99
    goto :goto_0

    :cond_2
    move-object v1, v10

    .line 102
    goto :goto_0
.end method

.method private static getPlayList(Lnet/yostore/aws/api/ApiConfig;)Ljava/util/List;
    .locals 6
    .parameter "apicfg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/yostore/aws/api/ApiConfig;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/api/entity/FolderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 41
    const-string v4, ""

    sput-object v4, Lcom/aws/mycloud/helper/MEarPlayListHelper;->STATUS:Ljava/lang/String;

    .line 43
    invoke-static {p0}, Lcom/aws/mycloud/helper/FolderRootsConfig;->getMEarMeta(Lnet/yostore/aws/api/ApiConfig;)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, fid:Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v4, "ERR:"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 45
    new-instance v1, Lnet/yostore/aws/api/helper/FolderBrowseHelper;

    invoke-direct {v1, v2}, Lnet/yostore/aws/api/helper/FolderBrowseHelper;-><init>(Ljava/lang/String;)V

    .line 46
    .local v1, fbh:Lnet/yostore/aws/api/helper/FolderBrowseHelper;
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->setPagesize(I)V

    .line 48
    :try_start_0
    invoke-virtual {v1, p0}, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v3

    check-cast v3, Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    .line 49
    .local v3, response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->getStatus()I

    move-result v4

    if-nez v4, :cond_0

    .line 50
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->getFolderList()Ljava/util/List;
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/AAAException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 68
    .end local v1           #fbh:Lnet/yostore/aws/api/helper/FolderBrowseHelper;
    .end local v3           #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    :goto_0
    return-object v4

    .restart local v1       #fbh:Lnet/yostore/aws/api/helper/FolderBrowseHelper;
    .restart local v3       #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    :cond_0
    move-object v4, v5

    .line 53
    goto :goto_0

    .line 56
    .end local v3           #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 57
    .local v0, e:Lnet/yostore/aws/api/exception/AAAException;
    const-string v4, "2"

    sput-object v4, Lcom/aws/mycloud/helper/MEarPlayListHelper;->STATUS:Ljava/lang/String;

    .line 58
    invoke-virtual {v0}, Lnet/yostore/aws/api/exception/AAAException;->printStackTrace()V

    move-object v4, v5

    .line 59
    goto :goto_0

    .line 61
    .end local v0           #e:Lnet/yostore/aws/api/exception/AAAException;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 62
    .local v0, e:Lnet/yostore/aws/api/exception/APIException;
    const-string v4, "ERR:"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/aws/mycloud/helper/MEarPlayListHelper;->STATUS:Ljava/lang/String;

    .line 63
    invoke-virtual {v0}, Lnet/yostore/aws/api/exception/APIException;->printStackTrace()V

    move-object v4, v5

    .line 64
    goto :goto_0

    .end local v0           #e:Lnet/yostore/aws/api/exception/APIException;
    .end local v1           #fbh:Lnet/yostore/aws/api/helper/FolderBrowseHelper;
    :cond_1
    move-object v4, v5

    .line 68
    goto :goto_0
.end method

.method public static getPlayList(Lnet/yostore/aws/api/ApiConfig;Ljava/io/File;)Ljava/util/List;
    .locals 6
    .parameter "apicfg"
    .parameter "awsacc"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/yostore/aws/api/ApiConfig;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/api/entity/FolderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    invoke-static {p0}, Lcom/aws/mycloud/helper/MEarPlayListHelper;->getPlayList(Lnet/yostore/aws/api/ApiConfig;)Ljava/util/List;

    move-result-object v1

    .line 24
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    const-string v4, "2"

    sget-object v5, Lcom/aws/mycloud/helper/MEarPlayListHelper;->STATUS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 25
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 27
    .local v2, rtn:Ljava/lang/Boolean;
    :try_start_0
    invoke-static {p0}, Lnet/yostore/aws/handler/LoginHandler;->requestToken(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v3

    .line 28
    .local v3, status:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v3, v4, :cond_0

    .line 29
    invoke-virtual {p0, p1}, Lnet/yostore/aws/api/ApiConfig;->setToFile(Ljava/io/File;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 34
    .end local v3           #status:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 35
    invoke-static {p0}, Lcom/aws/mycloud/helper/MEarPlayListHelper;->getPlayList(Lnet/yostore/aws/api/ApiConfig;)Ljava/util/List;

    move-result-object v1

    .line 38
    .end local v2           #rtn:Ljava/lang/Boolean;
    :cond_1
    return-object v1

    .line 31
    .restart local v2       #rtn:Ljava/lang/Boolean;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 32
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
