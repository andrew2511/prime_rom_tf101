.class public Lnet/yostore/aws/handler/NavigateHandler;
.super Ljava/lang/Object;
.source "NavigateHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/handler/NavigateHandler$ROOT;,
        Lnet/yostore/aws/handler/NavigateHandler$TopBrowseRawList;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$net$yostore$aws$handler$NavigateHandler$ROOT:[I = null

.field private static OR:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "NavigateHandler"

.field private static nav:Lnet/yostore/aws/handler/NavigateHandler;


# instance fields
.field private _path:Ljava/lang/String;

.field private _pathId:Ljava/lang/String;

.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private ctx:Landroid/content/Context;

.field private dstack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lnet/yostore/aws/handler/entity/CPath;",
            ">;"
        }
    .end annotation
.end field

.field elist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/api/entity/EntryInfo;",
            ">;"
        }
    .end annotation
.end field

.field public errMsg:Ljava/lang/String;

.field private eventInfo:Lnet/yostore/aws/api/entity/EntryInfo;

.field private fsInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/FsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private homedisp:Ljava/lang/String;

.field private homeid:Ljava/lang/String;

.field public root:Lnet/yostore/aws/handler/NavigateHandler$ROOT;


# direct methods
.method static synthetic $SWITCH_TABLE$net$yostore$aws$handler$NavigateHandler$ROOT()[I
    .locals 3

    .prologue
    .line 56
    sget-object v0, Lnet/yostore/aws/handler/NavigateHandler;->$SWITCH_TABLE$net$yostore$aws$handler$NavigateHandler$ROOT:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lnet/yostore/aws/handler/NavigateHandler$ROOT;->values()[Lnet/yostore/aws/handler/NavigateHandler$ROOT;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lnet/yostore/aws/handler/NavigateHandler$ROOT;->AWS_ROOT:Lnet/yostore/aws/handler/NavigateHandler$ROOT;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/NavigateHandler$ROOT;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lnet/yostore/aws/handler/NavigateHandler$ROOT;->MyBackups:Lnet/yostore/aws/handler/NavigateHandler$ROOT;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/NavigateHandler$ROOT;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lnet/yostore/aws/handler/NavigateHandler$ROOT;->MyCollection:Lnet/yostore/aws/handler/NavigateHandler$ROOT;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/NavigateHandler$ROOT;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lnet/yostore/aws/handler/NavigateHandler$ROOT;->MySyncFolder:Lnet/yostore/aws/handler/NavigateHandler$ROOT;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/NavigateHandler$ROOT;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lnet/yostore/aws/handler/NavigateHandler;->$SWITCH_TABLE$net$yostore$aws$handler$NavigateHandler$ROOT:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-string v0, " or "

    sput-object v0, Lnet/yostore/aws/handler/NavigateHandler;->OR:Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lnet/yostore/aws/handler/NavigateHandler;->nav:Lnet/yostore/aws/handler/NavigateHandler;

    .line 56
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/NavigateHandler;->errMsg:Ljava/lang/String;

    .line 73
    iput-object v1, p0, Lnet/yostore/aws/handler/NavigateHandler;->ctx:Landroid/content/Context;

    .line 74
    iput-object v1, p0, Lnet/yostore/aws/handler/NavigateHandler;->homeid:Ljava/lang/String;

    .line 75
    iput-object v1, p0, Lnet/yostore/aws/handler/NavigateHandler;->homedisp:Ljava/lang/String;

    .line 76
    iput-object v1, p0, Lnet/yostore/aws/handler/NavigateHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 78
    sget-object v0, Lnet/yostore/aws/handler/NavigateHandler$ROOT;->AWS_ROOT:Lnet/yostore/aws/handler/NavigateHandler$ROOT;

    iput-object v0, p0, Lnet/yostore/aws/handler/NavigateHandler;->root:Lnet/yostore/aws/handler/NavigateHandler$ROOT;

    .line 81
    iput-object v1, p0, Lnet/yostore/aws/handler/NavigateHandler;->fsInfos:Ljava/util/List;

    .line 85
    iput-object v1, p0, Lnet/yostore/aws/handler/NavigateHandler;->_path:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lnet/yostore/aws/handler/NavigateHandler;->_pathId:Ljava/lang/String;

    .line 96
    return-void
.end method

.method static synthetic access$0(Lnet/yostore/aws/handler/NavigateHandler;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lnet/yostore/aws/handler/NavigateHandler;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lnet/yostore/aws/handler/NavigateHandler;)Lnet/yostore/aws/api/ApiConfig;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lnet/yostore/aws/handler/NavigateHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-object v0
.end method

.method private getCloudFileDir(Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/handler/entity/CPath;)Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;
    .locals 13
    .parameter "display"
    .parameter "fid"
    .parameter "xcpath"

    .prologue
    .line 495
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/handler/NavigateHandler;->_path:Ljava/lang/String;

    .line 496
    iput-object p2, p0, Lnet/yostore/aws/handler/NavigateHandler;->_pathId:Ljava/lang/String;

    .line 497
    const/4 v3, 0x0

    .line 498
    .local v3, brlist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/AWSBrowseRaw;>;"
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 499
    const/4 v11, 0x0

    .line 500
    .local v11, response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    new-instance v6, Lnet/yostore/aws/api/helper/FolderBrowseHelper;

    invoke-direct {v6, p2}, Lnet/yostore/aws/api/helper/FolderBrowseHelper;-><init>(Ljava/lang/String;)V

    .line 502
    .local v6, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/handler/NavigateHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v6, v0}, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v11

    .end local v11           #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    check-cast v11, Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    .restart local v11       #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/handler/NavigateHandler;->fsInfos:Ljava/util/List;

    .line 511
    invoke-virtual {v11}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->getFolderList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 514
    .local v10, folderItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 516
    .end local v3           #brlist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/AWSBrowseRaw;>;"
    .local v7, brlist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/AWSBrowseRaw;>;"
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v3, v7

    .line 555
    .end local v6           #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .end local v7           #brlist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/AWSBrowseRaw;>;"
    .end local v10           #folderItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    .end local v11           #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    .restart local v3       #brlist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/AWSBrowseRaw;>;"
    :goto_1
    new-instance v0, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;

    iget-object v1, p0, Lnet/yostore/aws/handler/NavigateHandler;->ctx:Landroid/content/Context;

    const v2, 0x7f030001

    iget-object v4, p0, Lnet/yostore/aws/handler/NavigateHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v4, v4, Lnet/yostore/aws/api/ApiConfig;->infoRelay:Ljava/lang/String;

    iget-object v5, p0, Lnet/yostore/aws/handler/NavigateHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v5, v5, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v0

    .line 503
    .restart local v6       #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 504
    .local v8, e:Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ">>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/handler/NavigateHandler;->errMsg:Ljava/lang/String;

    .line 505
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 506
    const/4 v0, 0x0

    goto :goto_2

    .line 517
    .end local v3           #brlist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/AWSBrowseRaw;>;"
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v7       #brlist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/AWSBrowseRaw;>;"
    .restart local v10       #folderItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    .restart local v11       #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/yostore/aws/api/entity/FolderInfo;

    .line 518
    .local v9, fi:Lnet/yostore/aws/api/entity/FolderInfo;
    const-string v0, "system.my.encrypted.root"

    invoke-virtual {v9}, Lnet/yostore/aws/api/entity/FolderInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 520
    new-instance v0, Lnet/yostore/aws/handler/entity/AWSBrowseRaw;

    .line 521
    invoke-virtual {v9}, Lnet/yostore/aws/api/entity/FolderInfo;->getDisplay()Ljava/lang/String;

    move-result-object v1

    .line 522
    const v2, 0x7f020016

    .line 523
    const-string v3, "1"

    .line 524
    invoke-virtual {v9}, Lnet/yostore/aws/api/entity/FolderInfo;->getId()Ljava/lang/String;

    move-result-object v4

    move-object v5, p2

    .line 520
    invoke-direct/range {v0 .. v5}, Lnet/yostore/aws/handler/entity/AWSBrowseRaw;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    iget-object v0, p0, Lnet/yostore/aws/handler/NavigateHandler;->fsInfos:Ljava/util/List;

    new-instance v1, Lnet/yostore/aws/handler/entity/FsInfo;

    invoke-direct {v1, v9}, Lnet/yostore/aws/handler/entity/FsInfo;-><init>(Lnet/yostore/aws/api/entity/FolderInfo;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 550
    .end local v6           #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .end local v7           #brlist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/AWSBrowseRaw;>;"
    .end local v9           #fi:Lnet/yostore/aws/api/entity/FolderInfo;
    .end local v10           #folderItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    .end local v11           #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    .restart local v3       #brlist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/AWSBrowseRaw;>;"
    :cond_2
    new-instance v12, Lnet/yostore/aws/handler/NavigateHandler$TopBrowseRawList;

    invoke-direct {v12, p0}, Lnet/yostore/aws/handler/NavigateHandler$TopBrowseRawList;-><init>(Lnet/yostore/aws/handler/NavigateHandler;)V

    .line 551
    .local v12, tbr:Lnet/yostore/aws/handler/NavigateHandler$TopBrowseRawList;
    invoke-virtual {v12}, Lnet/yostore/aws/handler/NavigateHandler$TopBrowseRawList;->getList()Ljava/util/List;

    move-result-object v3

    .line 552
    invoke-virtual {v12}, Lnet/yostore/aws/handler/NavigateHandler$TopBrowseRawList;->getFsList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/handler/NavigateHandler;->fsInfos:Ljava/util/List;

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;Lnet/yostore/aws/handler/NavigateHandler$ROOT;Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/NavigateHandler;
    .locals 2
    .parameter "ctx"
    .parameter "root"
    .parameter "apicfg"

    .prologue
    .line 98
    sget-object v0, Lnet/yostore/aws/handler/NavigateHandler;->nav:Lnet/yostore/aws/handler/NavigateHandler;

    if-nez v0, :cond_0

    new-instance v0, Lnet/yostore/aws/handler/NavigateHandler;

    invoke-direct {v0}, Lnet/yostore/aws/handler/NavigateHandler;-><init>()V

    sput-object v0, Lnet/yostore/aws/handler/NavigateHandler;->nav:Lnet/yostore/aws/handler/NavigateHandler;

    .line 99
    :cond_0
    sget-object v0, Lnet/yostore/aws/handler/NavigateHandler;->nav:Lnet/yostore/aws/handler/NavigateHandler;

    const-string v1, ""

    iput-object v1, v0, Lnet/yostore/aws/handler/NavigateHandler;->errMsg:Ljava/lang/String;

    .line 100
    sget-object v0, Lnet/yostore/aws/handler/NavigateHandler;->nav:Lnet/yostore/aws/handler/NavigateHandler;

    iput-object p0, v0, Lnet/yostore/aws/handler/NavigateHandler;->ctx:Landroid/content/Context;

    .line 101
    sget-object v0, Lnet/yostore/aws/handler/NavigateHandler;->nav:Lnet/yostore/aws/handler/NavigateHandler;

    iput-object p1, v0, Lnet/yostore/aws/handler/NavigateHandler;->root:Lnet/yostore/aws/handler/NavigateHandler$ROOT;

    .line 102
    sget-object v0, Lnet/yostore/aws/handler/NavigateHandler;->nav:Lnet/yostore/aws/handler/NavigateHandler;

    iput-object p2, v0, Lnet/yostore/aws/handler/NavigateHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 105
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lnet/yostore/aws/handler/NavigateHandler;->validateApicfg(Landroid/content/Context;Lnet/yostore/aws/handler/NavigateHandler$ROOT;Lnet/yostore/aws/api/ApiConfig;I)Lnet/yostore/aws/handler/NavigateHandler;

    move-result-object v0

    return-object v0
.end method

.method private initStack()V
    .locals 1

    .prologue
    .line 429
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/handler/NavigateHandler;->dstack:Ljava/util/Stack;

    .line 444
    return-void
.end method

.method public static validateApicfg(Landroid/content/Context;Lnet/yostore/aws/handler/NavigateHandler$ROOT;Lnet/yostore/aws/api/ApiConfig;I)Lnet/yostore/aws/handler/NavigateHandler;
    .locals 6
    .parameter "ctx"
    .parameter "root"
    .parameter "apicfg"
    .parameter "rtyCnt"

    .prologue
    const/4 v3, 0x0

    .line 110
    invoke-static {p2}, Lnet/yostore/aws/handler/LoginHandler;->validateApiCfg(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v0

    .line 111
    .local v0, aaastat:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-eq v0, v1, :cond_0

    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->FREEZE:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v1, :cond_3

    .line 112
    :cond_0
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->FREEZE:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v1, :cond_1

    sget-object v1, Lnet/yostore/aws/handler/NavigateHandler;->nav:Lnet/yostore/aws/handler/NavigateHandler;

    const-string v2, "err.login.freeze"

    iput-object v2, v1, Lnet/yostore/aws/handler/NavigateHandler;->errMsg:Ljava/lang/String;

    .line 115
    :goto_0
    invoke-static {p2}, Lcom/ecareme/pixwe/PixWe;->saveApiCfg(Lnet/yostore/aws/api/ApiConfig;)V

    .line 117
    invoke-static {}, Lnet/yostore/aws/handler/NavigateHandler;->$SWITCH_TABLE$net$yostore$aws$handler$NavigateHandler$ROOT()[I

    move-result-object v1

    invoke-virtual {p1}, Lnet/yostore/aws/handler/NavigateHandler$ROOT;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 141
    :goto_1
    sget-object v1, Lnet/yostore/aws/handler/NavigateHandler;->nav:Lnet/yostore/aws/handler/NavigateHandler;

    .line 158
    :goto_2
    return-object v1

    .line 113
    :cond_1
    sget-object v1, Lnet/yostore/aws/handler/NavigateHandler;->nav:Lnet/yostore/aws/handler/NavigateHandler;

    const-string v2, ""

    iput-object v2, v1, Lnet/yostore/aws/handler/NavigateHandler;->errMsg:Ljava/lang/String;

    goto :goto_0

    .line 119
    :pswitch_0
    sget-object v1, Lnet/yostore/aws/handler/NavigateHandler;->nav:Lnet/yostore/aws/handler/NavigateHandler;

    iput-object v3, v1, Lnet/yostore/aws/handler/NavigateHandler;->homeid:Ljava/lang/String;

    .line 120
    sget-object v1, Lnet/yostore/aws/handler/NavigateHandler;->nav:Lnet/yostore/aws/handler/NavigateHandler;

    const v2, 0x7f060095

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lnet/yostore/aws/handler/NavigateHandler;->homedisp:Ljava/lang/String;

    goto :goto_1

    .line 123
    :pswitch_1
    sget-object v1, Lnet/yostore/aws/handler/NavigateHandler;->nav:Lnet/yostore/aws/handler/NavigateHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "system."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p2, Lnet/yostore/aws/api/ApiConfig;->packageDisplay:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".home.root"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lnet/yostore/aws/handler/NavigateHandler;->homeid:Ljava/lang/String;

    .line 124
    sget-object v1, Lnet/yostore/aws/handler/NavigateHandler;->nav:Lnet/yostore/aws/handler/NavigateHandler;

    const v2, 0x7f060096

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lnet/yostore/aws/handler/NavigateHandler;->homedisp:Ljava/lang/String;

    goto :goto_1

    .line 127
    :pswitch_2
    sget-object v1, Lnet/yostore/aws/handler/NavigateHandler;->nav:Lnet/yostore/aws/handler/NavigateHandler;

    sget-wide v2, Lcom/ecareme/pixwe/PixWe;->mySyncFolderId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    sget-wide v2, Lcom/ecareme/pixwe/PixWe;->mySyncFolderId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    :goto_3
    iput-object v2, v1, Lnet/yostore/aws/handler/NavigateHandler;->homeid:Ljava/lang/String;

    .line 128
    sget-object v1, Lnet/yostore/aws/handler/NavigateHandler;->nav:Lnet/yostore/aws/handler/NavigateHandler;

    const v2, 0x7f060097

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lnet/yostore/aws/handler/NavigateHandler;->homedisp:Ljava/lang/String;

    goto :goto_1

    .line 127
    :cond_2
    invoke-static {}, Lcom/ecareme/pixwe/PixWe;->getMySyncFolder()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 131
    :pswitch_3
    sget-object v1, Lnet/yostore/aws/handler/NavigateHandler;->nav:Lnet/yostore/aws/handler/NavigateHandler;

    const-string v2, "system.backup.root"

    iput-object v2, v1, Lnet/yostore/aws/handler/NavigateHandler;->homeid:Ljava/lang/String;

    .line 133
    sget-object v1, Lnet/yostore/aws/handler/NavigateHandler;->nav:Lnet/yostore/aws/handler/NavigateHandler;

    const v2, 0x7f060098

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lnet/yostore/aws/handler/NavigateHandler;->homedisp:Ljava/lang/String;

    goto :goto_1

    .line 143
    :cond_3
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v1, :cond_4

    .line 144
    sget-object v1, Lnet/yostore/aws/handler/NavigateHandler;->nav:Lnet/yostore/aws/handler/NavigateHandler;

    const-string v2, "err.login.fail"

    iput-object v2, v1, Lnet/yostore/aws/handler/NavigateHandler;->errMsg:Ljava/lang/String;

    .line 145
    sget-object v1, Lnet/yostore/aws/handler/NavigateHandler;->nav:Lnet/yostore/aws/handler/NavigateHandler;

    goto/16 :goto_2

    .line 147
    :cond_4
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->Err:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v1, :cond_6

    .line 150
    add-int/lit8 p3, p3, 0x1

    const/4 v1, 0x3

    if-lt p3, v1, :cond_5

    .line 151
    sget-object v1, Lnet/yostore/aws/handler/NavigateHandler;->nav:Lnet/yostore/aws/handler/NavigateHandler;

    const-string v2, "err.connect"

    iput-object v2, v1, Lnet/yostore/aws/handler/NavigateHandler;->errMsg:Ljava/lang/String;

    .line 152
    sget-object v1, Lnet/yostore/aws/handler/NavigateHandler;->nav:Lnet/yostore/aws/handler/NavigateHandler;

    goto/16 :goto_2

    .line 154
    :cond_5
    invoke-static {p0, p1, p2, p3}, Lnet/yostore/aws/handler/NavigateHandler;->validateApicfg(Landroid/content/Context;Lnet/yostore/aws/handler/NavigateHandler$ROOT;Lnet/yostore/aws/api/ApiConfig;I)Lnet/yostore/aws/handler/NavigateHandler;

    move-result-object v1

    goto/16 :goto_2

    :cond_6
    move-object v1, v3

    .line 158
    goto/16 :goto_2

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public diveDeep(Ljava/lang/String;Ljava/lang/String;)Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;
    .locals 2
    .parameter "display"
    .parameter "fid"

    .prologue
    .line 420
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/NavigateHandler;->errMsg:Ljava/lang/String;

    .line 421
    const/4 v0, 0x0

    .line 422
    .local v0, cpath:Lnet/yostore/aws/handler/entity/CPath;
    new-instance v0, Lnet/yostore/aws/handler/entity/CPath;

    .end local v0           #cpath:Lnet/yostore/aws/handler/entity/CPath;
    invoke-direct {v0, p1, p2}, Lnet/yostore/aws/handler/entity/CPath;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    .restart local v0       #cpath:Lnet/yostore/aws/handler/entity/CPath;
    iget-object v1, p0, Lnet/yostore/aws/handler/NavigateHandler;->dstack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 425
    invoke-direct {p0, p1, p2, v0}, Lnet/yostore/aws/handler/NavigateHandler;->getCloudFileDir(Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/handler/entity/CPath;)Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;

    move-result-object v1

    return-object v1
.end method

.method public diveFloat()Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;
    .locals 8

    .prologue
    .line 463
    const-string v6, ""

    iput-object v6, p0, Lnet/yostore/aws/handler/NavigateHandler;->errMsg:Ljava/lang/String;

    .line 464
    iget-object v6, p0, Lnet/yostore/aws/handler/NavigateHandler;->dstack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 465
    invoke-virtual {p0}, Lnet/yostore/aws/handler/NavigateHandler;->diveTop()Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;

    move-result-object v6

    .line 490
    :goto_0
    return-object v6

    .line 466
    :cond_0
    iget-object v6, p0, Lnet/yostore/aws/handler/NavigateHandler;->dstack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v6

    const/4 v7, 0x1

    if-gt v6, v7, :cond_1

    .line 467
    invoke-virtual {p0}, Lnet/yostore/aws/handler/NavigateHandler;->diveTop()Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;

    move-result-object v6

    goto :goto_0

    .line 469
    :cond_1
    iget-object v6, p0, Lnet/yostore/aws/handler/NavigateHandler;->dstack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 470
    const/4 v2, 0x0

    .line 471
    .local v2, cpath:Lnet/yostore/aws/handler/entity/CPath;
    const/4 v4, 0x0

    .line 473
    .local v4, ppath:Lnet/yostore/aws/handler/entity/CPath;
    :try_start_0
    iget-object v6, p0, Lnet/yostore/aws/handler/NavigateHandler;->dstack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lnet/yostore/aws/handler/NavigateHandler;->diveTop()Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;

    .line 490
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 475
    :cond_2
    iget-object v6, p0, Lnet/yostore/aws/handler/NavigateHandler;->dstack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lnet/yostore/aws/handler/entity/CPath;

    move-object v2, v0

    .line 476
    iget-object v6, p0, Lnet/yostore/aws/handler/NavigateHandler;->dstack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 477
    new-instance v5, Lnet/yostore/aws/handler/entity/CPath;

    iget-object v6, p0, Lnet/yostore/aws/handler/NavigateHandler;->homedisp:Ljava/lang/String;

    iget-object v7, p0, Lnet/yostore/aws/handler/NavigateHandler;->homeid:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lnet/yostore/aws/handler/entity/CPath;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .end local v4           #ppath:Lnet/yostore/aws/handler/entity/CPath;
    .local v5, ppath:Lnet/yostore/aws/handler/entity/CPath;
    move-object v4, v5

    .line 480
    .end local v5           #ppath:Lnet/yostore/aws/handler/entity/CPath;
    .restart local v4       #ppath:Lnet/yostore/aws/handler/entity/CPath;
    :goto_2
    iget-object v6, v2, Lnet/yostore/aws/handler/entity/CPath;->disp:Ljava/lang/String;

    iget-object v7, v2, Lnet/yostore/aws/handler/entity/CPath;->id:Ljava/lang/String;

    invoke-direct {p0, v6, v7, v4}, Lnet/yostore/aws/handler/NavigateHandler;->getCloudFileDir(Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/handler/entity/CPath;)Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;

    move-result-object v1

    .line 481
    .local v1, ba:Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;
    iget-object v6, p0, Lnet/yostore/aws/handler/NavigateHandler;->dstack:Ljava/util/Stack;

    invoke-virtual {v6, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    move-object v6, v1

    .line 482
    goto :goto_0

    .line 479
    .end local v1           #ba:Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;
    :cond_3
    iget-object v6, p0, Lnet/yostore/aws/handler/NavigateHandler;->dstack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lnet/yostore/aws/handler/entity/CPath;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 485
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 486
    .local v3, ex:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ">>"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lnet/yostore/aws/handler/NavigateHandler;->errMsg:Ljava/lang/String;

    .line 487
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public diveHere()Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;
    .locals 4

    .prologue
    .line 447
    const-string v2, ""

    iput-object v2, p0, Lnet/yostore/aws/handler/NavigateHandler;->errMsg:Ljava/lang/String;

    .line 448
    iget-object v2, p0, Lnet/yostore/aws/handler/NavigateHandler;->dstack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 449
    invoke-virtual {p0}, Lnet/yostore/aws/handler/NavigateHandler;->diveTop()Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;

    move-result-object v2

    .line 457
    :goto_0
    return-object v2

    .line 451
    :cond_0
    iget-object v2, p0, Lnet/yostore/aws/handler/NavigateHandler;->dstack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/handler/entity/CPath;

    .line 452
    .local v0, cpath:Lnet/yostore/aws/handler/entity/CPath;
    const/4 v1, 0x0

    .line 453
    .local v1, ppath:Lnet/yostore/aws/handler/entity/CPath;
    iget-object v2, p0, Lnet/yostore/aws/handler/NavigateHandler;->dstack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 454
    const/4 v1, 0x0

    .line 457
    :goto_1
    iget-object v2, v0, Lnet/yostore/aws/handler/entity/CPath;->disp:Ljava/lang/String;

    iget-object v3, v0, Lnet/yostore/aws/handler/entity/CPath;->id:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Lnet/yostore/aws/handler/NavigateHandler;->getCloudFileDir(Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/handler/entity/CPath;)Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;

    move-result-object v2

    goto :goto_0

    .line 456
    :cond_1
    iget-object v2, p0, Lnet/yostore/aws/handler/NavigateHandler;->dstack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #ppath:Lnet/yostore/aws/handler/entity/CPath;
    check-cast v1, Lnet/yostore/aws/handler/entity/CPath;

    .restart local v1       #ppath:Lnet/yostore/aws/handler/entity/CPath;
    goto :goto_1
.end method

.method public diveTop()Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;
    .locals 3

    .prologue
    .line 406
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/NavigateHandler;->errMsg:Ljava/lang/String;

    .line 407
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/handler/NavigateHandler;->dstack:Ljava/util/Stack;

    .line 415
    iget-object v0, p0, Lnet/yostore/aws/handler/NavigateHandler;->homedisp:Ljava/lang/String;

    iget-object v1, p0, Lnet/yostore/aws/handler/NavigateHandler;->homeid:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lnet/yostore/aws/handler/NavigateHandler;->getCloudFileDir(Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/handler/entity/CPath;)Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getDstack()Ljava/util/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack",
            "<",
            "Lnet/yostore/aws/handler/entity/CPath;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lnet/yostore/aws/handler/NavigateHandler;->dstack:Ljava/util/Stack;

    return-object v0
.end method

.method public getEntryInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/api/entity/EntryInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lnet/yostore/aws/handler/NavigateHandler;->elist:Ljava/util/List;

    return-object v0
.end method

.method public getFsInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/FsInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lnet/yostore/aws/handler/NavigateHandler;->fsInfos:Ljava/util/List;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lnet/yostore/aws/handler/NavigateHandler;->_path:Ljava/lang/String;

    return-object v0
.end method

.method public getPathId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lnet/yostore/aws/handler/NavigateHandler;->_pathId:Ljava/lang/String;

    return-object v0
.end method

.method public isTop()Z
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Lnet/yostore/aws/handler/NavigateHandler;->dstack:Ljava/util/Stack;

    if-nez v0, :cond_0

    .line 872
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/handler/NavigateHandler;->dstack:Ljava/util/Stack;

    .line 873
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/handler/NavigateHandler;->dstack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public setCurrentEntryInfo(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 276
    new-instance v1, Lnet/yostore/aws/api/entity/EntryInfo;

    invoke-direct {v1}, Lnet/yostore/aws/api/entity/EntryInfo;-><init>()V

    iput-object v1, p0, Lnet/yostore/aws/handler/NavigateHandler;->eventInfo:Lnet/yostore/aws/api/entity/EntryInfo;

    .line 277
    iget-object v1, p0, Lnet/yostore/aws/handler/NavigateHandler;->fsInfos:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/handler/entity/FsInfo;

    .line 278
    .local v0, fsInfo:Lnet/yostore/aws/handler/entity/FsInfo;
    iget-object v1, p0, Lnet/yostore/aws/handler/NavigateHandler;->eventInfo:Lnet/yostore/aws/api/entity/EntryInfo;

    iget-object v2, v0, Lnet/yostore/aws/handler/entity/FsInfo;->accesscontrol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/EntryInfo;->setAncestorid(Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lnet/yostore/aws/handler/NavigateHandler;->eventInfo:Lnet/yostore/aws/api/entity/EntryInfo;

    iget-object v2, v0, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/EntryInfo;->setId(Ljava/lang/String;)V

    .line 280
    iget-object v1, p0, Lnet/yostore/aws/handler/NavigateHandler;->eventInfo:Lnet/yostore/aws/api/entity/EntryInfo;

    sget-object v2, Lnet/yostore/aws/api/entity/EntryInfo$KIND;->FOLDER:Lnet/yostore/aws/api/entity/EntryInfo$KIND;

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/EntryInfo;->setKind(Lnet/yostore/aws/api/entity/EntryInfo$KIND;)V

    .line 281
    iget-object v1, p0, Lnet/yostore/aws/handler/NavigateHandler;->eventInfo:Lnet/yostore/aws/api/entity/EntryInfo;

    iget-object v2, v0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/EntryInfo;->setRawentryname(Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method public setDstack(Ljava/util/Stack;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Lnet/yostore/aws/handler/entity/CPath;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, dstack:Ljava/util/Stack;,"Ljava/util/Stack<Lnet/yostore/aws/handler/entity/CPath;>;"
    iput-object p1, p0, Lnet/yostore/aws/handler/NavigateHandler;->dstack:Ljava/util/Stack;

    return-void
.end method

.method public setEntryInfoList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/api/entity/EntryInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, elist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/EntryInfo;>;"
    iput-object p1, p0, Lnet/yostore/aws/handler/NavigateHandler;->elist:Ljava/util/List;

    .line 172
    return-void
.end method

.method public setFsInfos(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/FsInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, fsInfos:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/FsInfo;>;"
    iput-object p1, p0, Lnet/yostore/aws/handler/NavigateHandler;->fsInfos:Ljava/util/List;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .parameter "_path"

    .prologue
    .line 86
    iput-object p1, p0, Lnet/yostore/aws/handler/NavigateHandler;->_path:Ljava/lang/String;

    return-void
.end method

.method public setPathId(Ljava/lang/String;)V
    .locals 0
    .parameter "_pathId"

    .prologue
    .line 89
    iput-object p1, p0, Lnet/yostore/aws/handler/NavigateHandler;->_pathId:Ljava/lang/String;

    return-void
.end method
