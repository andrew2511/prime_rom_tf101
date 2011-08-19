.class public Lcom/aws/mycloud/helper/MySyncFolderHelper;
.super Ljava/lang/Object;
.source "MySyncFolderHelper.java"


# static fields
.field public static STATUS:Ljava/lang/String;

.field private static final TP_X:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const-string v0, ""

    sput-object v0, Lcom/aws/mycloud/helper/MySyncFolderHelper;->STATUS:Ljava/lang/String;

    .line 22
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".jpg"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ".jpeg"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 23
    const-string v2, ".avi"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, ".mp4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, ".mpeg"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ".mpg"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ".m4v"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ".mov"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, ".mkv"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, ".vob"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, ".vcd"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, ".svcd"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, ".rm"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, ".rmvb"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, ".divx"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, ".wmv"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, ".3gp"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, ".3gpp"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, ".flv"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 24
    const-string v2, ".mp3"

    aput-object v2, v0, v1

    .line 21
    sput-object v0, Lcom/aws/mycloud/helper/MySyncFolderHelper;->TP_X:[Ljava/lang/String;

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

.method private static getFileList(Lnet/yostore/aws/api/ApiConfig;)Ljava/util/List;
    .locals 8
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
    .line 46
    const-string v0, ""

    sput-object v0, Lcom/aws/mycloud/helper/MySyncFolderHelper;->STATUS:Ljava/lang/String;

    .line 47
    invoke-static {p0}, Lcom/aws/mycloud/helper/FolderRootsConfig;->getMySync(Lnet/yostore/aws/api/ApiConfig;)Ljava/lang/String;

    move-result-object v7

    .line 48
    .local v7, fid:Ljava/lang/String;
    if-eqz v7, :cond_5

    const-string v0, "ERR:"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 49
    new-instance v0, Lnet/yostore/aws/api/helper/SqlQueryHelper;

    const-string v1, ""

    const-string v2, ""

    const/16 v3, 0xf

    const/4 v4, 0x0

    sget-object v5, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->FILE:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    const-string v6, ""

    invoke-direct/range {v0 .. v7}, Lnet/yostore/aws/api/helper/SqlQueryHelper;-><init>(Ljava/lang/String;Ljava/lang/String;IILnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .local v0, helper:Lnet/yostore/aws/api/helper/SqlQueryHelper;
    :try_start_0
    invoke-virtual {v0, p0}, Lnet/yostore/aws/api/helper/SqlQueryHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/api/entity/FulltextQueryResponse;

    .line 52
    .local p0, response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lnet/yostore/aws/api/entity/FulltextQueryResponse;->getStatus()I

    move-result v0

    .end local v0           #helper:Lnet/yostore/aws/api/helper/SqlQueryHelper;
    if-nez v0, :cond_4

    .line 53
    invoke-virtual {p0}, Lnet/yostore/aws/api/entity/FulltextQueryResponse;->getEntries()Ljava/util/List;

    move-result-object p0

    .line 54
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/EntryInfo;>;"
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 56
    .local v2, oklist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/EntryInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v7           #fid:Ljava/lang/String;
    .end local p0           #list:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/EntryInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-nez p0, :cond_1

    move-object p0, v2

    .line 87
    .end local v2           #oklist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/EntryInfo;>;"
    :goto_1
    return-object p0

    .line 56
    .restart local v2       #oklist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/EntryInfo;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/yostore/aws/api/entity/EntryInfo;

    .line 57
    .local v1, itm:Lnet/yostore/aws/api/entity/EntryInfo;
    const/4 v0, 0x1

    .line 58
    .local v0, isOK:Z
    sget-object v4, Lcom/aws/mycloud/helper/MySyncFolderHelper;->TP_X:[Ljava/lang/String;

    array-length v5, v4

    const/4 p0, 0x0

    move v6, p0

    :goto_2
    if-lt v6, v5, :cond_2

    move p0, v0

    .line 64
    .end local v0           #isOK:Z
    .local p0, isOK:Z
    :goto_3
    if-eqz p0, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/AAAException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 72
    .end local v1           #itm:Lnet/yostore/aws/api/entity/EntryInfo;
    .end local v2           #oklist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/EntryInfo;>;"
    .end local p0           #isOK:Z
    :catch_0
    move-exception p0

    .line 73
    .local p0, e:Lnet/yostore/aws/api/exception/AAAException;
    const-string v0, "2"

    sput-object v0, Lcom/aws/mycloud/helper/MySyncFolderHelper;->STATUS:Ljava/lang/String;

    .line 74
    invoke-virtual {p0}, Lnet/yostore/aws/api/exception/AAAException;->printStackTrace()V

    .line 75
    const/4 p0, 0x0

    goto :goto_1

    .line 58
    .end local p0           #e:Lnet/yostore/aws/api/exception/AAAException;
    .restart local v0       #isOK:Z
    .restart local v1       #itm:Lnet/yostore/aws/api/entity/EntryInfo;
    .restart local v2       #oklist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/EntryInfo;>;"
    :cond_2
    :try_start_1
    aget-object p0, v4, v6

    .line 59
    .local p0, ext:Ljava/lang/String;
    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/EntryInfo;->getRawentryname()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_1
    .catch Lnet/yostore/aws/api/exception/AAAException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_1 .. :try_end_1} :catch_1

    move-result p0

    .end local p0           #ext:Ljava/lang/String;
    if-eqz p0, :cond_3

    .line 60
    const/4 p0, 0x0

    .line 61
    .end local v0           #isOK:Z
    .local p0, isOK:Z
    goto :goto_3

    .line 58
    .end local p0           #isOK:Z
    .restart local v0       #isOK:Z
    :cond_3
    add-int/lit8 p0, v6, 0x1

    move v6, p0

    goto :goto_2

    .line 69
    .end local v0           #isOK:Z
    .end local v1           #itm:Lnet/yostore/aws/api/entity/EntryInfo;
    .end local v2           #oklist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/EntryInfo;>;"
    .restart local v7       #fid:Ljava/lang/String;
    .local p0, response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    :cond_4
    const/4 p0, 0x0

    goto :goto_1

    .line 77
    .end local v7           #fid:Ljava/lang/String;
    .end local p0           #response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    :catch_1
    move-exception p0

    .line 78
    .local p0, e:Lnet/yostore/aws/api/exception/APIException;
    invoke-virtual {p0}, Lnet/yostore/aws/api/exception/APIException;->printStackTrace()V

    .line 79
    const/4 p0, 0x0

    goto :goto_1

    .line 82
    .restart local v7       #fid:Ljava/lang/String;
    .local p0, apicfg:Lnet/yostore/aws/api/ApiConfig;
    :cond_5
    if-eqz v7, :cond_6

    const-string p0, "ERR:"

    .end local p0           #apicfg:Lnet/yostore/aws/api/ApiConfig;
    invoke-virtual {v7, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 83
    const-string p0, "ERR:"

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v7, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/aws/mycloud/helper/MySyncFolderHelper;->STATUS:Ljava/lang/String;

    .line 84
    const/4 p0, 0x0

    goto :goto_1

    .line 87
    :cond_6
    const/4 p0, 0x0

    goto :goto_1
.end method

.method public static getFileList(Lnet/yostore/aws/api/ApiConfig;Ljava/io/File;)Ljava/util/List;
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
            "Lnet/yostore/aws/api/entity/EntryInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    invoke-static {p0}, Lcom/aws/mycloud/helper/MySyncFolderHelper;->getFileList(Lnet/yostore/aws/api/ApiConfig;)Ljava/util/List;

    move-result-object v1

    .line 28
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/EntryInfo;>;"
    const-string v4, "2"

    sget-object v5, Lcom/aws/mycloud/helper/MySyncFolderHelper;->STATUS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 29
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 31
    .local v2, rtn:Ljava/lang/Boolean;
    :try_start_0
    invoke-static {p0}, Lnet/yostore/aws/handler/LoginHandler;->requestToken(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v3

    .line 32
    .local v3, status:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    sget-object v4, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v3, v4, :cond_0

    .line 33
    invoke-virtual {p0, p1}, Lnet/yostore/aws/api/ApiConfig;->setToFile(Ljava/io/File;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 38
    .end local v3           #status:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 39
    invoke-static {p0}, Lcom/aws/mycloud/helper/MySyncFolderHelper;->getFileList(Lnet/yostore/aws/api/ApiConfig;)Ljava/util/List;

    move-result-object v1

    .line 42
    .end local v2           #rtn:Ljava/lang/Boolean;
    :cond_1
    return-object v1

    .line 35
    .restart local v2       #rtn:Ljava/lang/Boolean;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 36
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
