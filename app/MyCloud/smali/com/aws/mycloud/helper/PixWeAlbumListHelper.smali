.class public Lcom/aws/mycloud/helper/PixWeAlbumListHelper;
.super Ljava/lang/Object;
.source "PixWeAlbumListHelper.java"


# static fields
.field public static STATUS:Ljava/lang/String; = null

.field private static final TP_IMAGE:Ljava/lang/String; = "jpg jpeg png"

.field private static final TP_VIDEO:Ljava/lang/String; = " avi mp4 mpeg mpg m4v mov mkv vob vcd svcd rm rmvb divx wmv 3gp 3gpp flv"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, ""

    sput-object v0, Lcom/aws/mycloud/helper/PixWeAlbumListHelper;->STATUS:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAlbumList(Lnet/yostore/aws/api/ApiConfig;)Ljava/util/List;
    .locals 7
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
    const/4 v6, 0x0

    .line 51
    const-string v5, ""

    sput-object v5, Lcom/aws/mycloud/helper/PixWeAlbumListHelper;->STATUS:Ljava/lang/String;

    .line 53
    invoke-static {p0}, Lcom/aws/mycloud/helper/FolderRootsConfig;->getPixWeAlbum(Lnet/yostore/aws/api/ApiConfig;)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, fid:Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v5, "ERR:"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 55
    new-instance v1, Lnet/yostore/aws/api/helper/FolderBrowseHelper;

    invoke-direct {v1, v2}, Lnet/yostore/aws/api/helper/FolderBrowseHelper;-><init>(Ljava/lang/String;)V

    .line 56
    .local v1, fbh:Lnet/yostore/aws/api/helper/FolderBrowseHelper;
    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->setPagesize(I)V

    .line 58
    :try_start_0
    invoke-virtual {v1, p0}, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v4

    check-cast v4, Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    .line 59
    .local v4, response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->getStatus()I

    move-result v5

    if-nez v5, :cond_0

    .line 61
    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->getFolderList()Ljava/util/List;

    move-result-object v3

    .line 62
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    new-instance v5, Lcom/aws/mycloud/helper/PixWeAlbumListHelper$1;

    invoke-direct {v5}, Lcom/aws/mycloud/helper/PixWeAlbumListHelper$1;-><init>()V

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/AAAException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v5, v3

    .line 103
    .end local v1           #fbh:Lnet/yostore/aws/api/helper/FolderBrowseHelper;
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    .end local v4           #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    :goto_0
    return-object v5

    .restart local v1       #fbh:Lnet/yostore/aws/api/helper/FolderBrowseHelper;
    .restart local v4       #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    :cond_0
    move-object v5, v6

    .line 85
    goto :goto_0

    .line 88
    .end local v4           #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 89
    .local v0, e:Lnet/yostore/aws/api/exception/AAAException;
    const-string v5, "2"

    sput-object v5, Lcom/aws/mycloud/helper/PixWeAlbumListHelper;->STATUS:Ljava/lang/String;

    .line 90
    invoke-virtual {v0}, Lnet/yostore/aws/api/exception/AAAException;->printStackTrace()V

    move-object v5, v6

    .line 91
    goto :goto_0

    .line 93
    .end local v0           #e:Lnet/yostore/aws/api/exception/AAAException;
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 94
    .local v0, e:Lnet/yostore/aws/api/exception/APIException;
    invoke-virtual {v0}, Lnet/yostore/aws/api/exception/APIException;->printStackTrace()V

    move-object v5, v6

    .line 95
    goto :goto_0

    .line 98
    .end local v0           #e:Lnet/yostore/aws/api/exception/APIException;
    .end local v1           #fbh:Lnet/yostore/aws/api/helper/FolderBrowseHelper;
    :cond_1
    if-eqz v2, :cond_2

    const-string v5, "ERR:"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 99
    const-string v5, "ERR:"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/aws/mycloud/helper/PixWeAlbumListHelper;->STATUS:Ljava/lang/String;

    move-object v5, v6

    .line 100
    goto :goto_0

    :cond_2
    move-object v5, v6

    .line 103
    goto :goto_0
.end method

.method public static getAlbumList(Lnet/yostore/aws/api/ApiConfig;Ljava/io/File;)Ljava/util/List;
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
    .line 31
    invoke-static {p0}, Lcom/aws/mycloud/helper/PixWeAlbumListHelper;->getAlbumList(Lnet/yostore/aws/api/ApiConfig;)Ljava/util/List;

    move-result-object v1

    .line 32
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    const-string v4, "2"

    sget-object v5, Lcom/aws/mycloud/helper/PixWeAlbumListHelper;->STATUS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 33
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 35
    .local v2, rtn:Ljava/lang/Boolean;
    :try_start_0
    invoke-static {p0}, Lnet/yostore/aws/handler/LoginHandler;->requestToken(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v3

    .line 36
    .local v3, status:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v3, v4, :cond_0

    .line 37
    invoke-virtual {p0, p1}, Lnet/yostore/aws/api/ApiConfig;->setToFile(Ljava/io/File;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 44
    .end local v3           #status:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 45
    invoke-static {p0}, Lcom/aws/mycloud/helper/PixWeAlbumListHelper;->getAlbumList(Lnet/yostore/aws/api/ApiConfig;)Ljava/util/List;

    move-result-object v1

    .line 48
    .end local v2           #rtn:Ljava/lang/Boolean;
    :cond_1
    return-object v1

    .line 41
    .restart local v2       #rtn:Ljava/lang/Boolean;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 42
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static ifMySyncFileExists(Lnet/yostore/aws/api/ApiConfig;)Z
    .locals 11
    .parameter "apicfg"

    .prologue
    .line 108
    const-string v1, ""

    sput-object v1, Lcom/aws/mycloud/helper/PixWeAlbumListHelper;->STATUS:Ljava/lang/String;

    .line 109
    const/4 v10, 0x0

    .line 110
    .local v10, rtn:Z
    invoke-static {p0}, Lcom/aws/mycloud/helper/FolderRootsConfig;->getMySync(Lnet/yostore/aws/api/ApiConfig;)Ljava/lang/String;

    move-result-object v7

    .line 111
    .local v7, fid:Ljava/lang/String;
    if-eqz v7, :cond_2

    const-string v1, "ERR:"

    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 112
    new-instance v0, Lnet/yostore/aws/api/helper/SqlQueryHelper;

    const-string v1, ""

    const-string v2, ""

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-object v5, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->FILE:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    const-string v6, "jpg jpeg png avi mp4 mpeg mpg m4v mov mkv vob vcd svcd rm rmvb divx wmv 3gp 3gpp flv"

    invoke-direct/range {v0 .. v7}, Lnet/yostore/aws/api/helper/SqlQueryHelper;-><init>(Ljava/lang/String;Ljava/lang/String;IILnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .local v0, helper:Lnet/yostore/aws/api/helper/SqlQueryHelper;
    :try_start_0
    invoke-virtual {v0, p0}, Lnet/yostore/aws/api/helper/SqlQueryHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v9

    check-cast v9, Lnet/yostore/aws/api/entity/FulltextQueryResponse;

    .line 115
    .local v9, response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Lnet/yostore/aws/api/entity/FulltextQueryResponse;->getStatus()I

    move-result v1

    if-nez v1, :cond_1

    .line 116
    invoke-virtual {v9}, Lnet/yostore/aws/api/entity/FulltextQueryResponse;->getEntries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/AAAException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-lez v1, :cond_0

    const/4 v10, 0x1

    .line 139
    .end local v0           #helper:Lnet/yostore/aws/api/helper/SqlQueryHelper;
    .end local v9           #response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    :cond_0
    :goto_0
    return v10

    .line 119
    .restart local v0       #helper:Lnet/yostore/aws/api/helper/SqlQueryHelper;
    .restart local v9       #response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 122
    .end local v9           #response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 123
    .local v8, e:Lnet/yostore/aws/api/exception/AAAException;
    const-string v1, "2"

    sput-object v1, Lcom/aws/mycloud/helper/PixWeAlbumListHelper;->STATUS:Ljava/lang/String;

    .line 124
    invoke-virtual {v8}, Lnet/yostore/aws/api/exception/AAAException;->printStackTrace()V

    .line 125
    const/4 v10, 0x0

    goto :goto_0

    .line 127
    .end local v8           #e:Lnet/yostore/aws/api/exception/AAAException;
    :catch_1
    move-exception v1

    move-object v8, v1

    .line 128
    .local v8, e:Lnet/yostore/aws/api/exception/APIException;
    invoke-virtual {v8}, Lnet/yostore/aws/api/exception/APIException;->printStackTrace()V

    .line 129
    const/4 v10, 0x0

    goto :goto_0

    .line 132
    .end local v0           #helper:Lnet/yostore/aws/api/helper/SqlQueryHelper;
    .end local v8           #e:Lnet/yostore/aws/api/exception/APIException;
    :cond_2
    if-eqz v7, :cond_3

    const-string v1, "ERR:"

    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 133
    const-string v1, "ERR:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/aws/mycloud/helper/PixWeAlbumListHelper;->STATUS:Ljava/lang/String;

    .line 134
    const/4 v10, 0x0

    goto :goto_0

    .line 137
    :cond_3
    const/4 v10, 0x0

    goto :goto_0
.end method
