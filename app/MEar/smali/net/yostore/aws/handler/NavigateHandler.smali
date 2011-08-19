.class public Lnet/yostore/aws/handler/NavigateHandler;
.super Ljava/lang/Object;
.source "NavigateHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/handler/NavigateHandler$FileType;,
        Lnet/yostore/aws/handler/NavigateHandler$ROOT;,
        Lnet/yostore/aws/handler/NavigateHandler$SearchType;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$net$yostore$aws$handler$NavigateHandler$FileType:[I = null

.field private static synthetic $SWITCH_TABLE$net$yostore$aws$handler$NavigateHandler$ROOT:[I = null

.field static final DOC_EX:Ljava/lang/String; = "pdf or doc or docx or html or htm or txt"

.field private static final GB:J = 0x40000000L

.field private static final KB:J = 0x400L

.field private static final MB:J = 0x100000L

.field static final MUS_EX:Ljava/lang/String; = "aac or ac3 or aiff or ape or flac or mp2 or mp3 or ogg or wav or wma"

.field private static OR:Ljava/lang/String; = null

.field static final PIC_EX:Ljava/lang/String; = "jpeg or jpg or bmp or png"

.field private static final TAG:Ljava/lang/String; = "LibHandler"

.field private static final TB:J = 0x10000000000L

.field static final VID_EX:Ljava/lang/String; = "flv or 3gp"

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

.field private eventSharedInfo:Lnet/yostore/aws/api/entity/UserSharedFolderInfo;

.field folderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/api/entity/UserSharedFolderInfo;",
            ">;"
        }
    .end annotation
.end field

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

.field public searchtotal:I


# direct methods
.method static synthetic $SWITCH_TABLE$net$yostore$aws$handler$NavigateHandler$FileType()[I
    .locals 3

    .prologue
    .line 56
    sget-object v0, Lnet/yostore/aws/handler/NavigateHandler;->$SWITCH_TABLE$net$yostore$aws$handler$NavigateHandler$FileType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lnet/yostore/aws/handler/NavigateHandler$FileType;->values()[Lnet/yostore/aws/handler/NavigateHandler$FileType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lnet/yostore/aws/handler/NavigateHandler$FileType;->ALL:Lnet/yostore/aws/handler/NavigateHandler$FileType;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/NavigateHandler$FileType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lnet/yostore/aws/handler/NavigateHandler$FileType;->DOC:Lnet/yostore/aws/handler/NavigateHandler$FileType;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/NavigateHandler$FileType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lnet/yostore/aws/handler/NavigateHandler$FileType;->MUSIC:Lnet/yostore/aws/handler/NavigateHandler$FileType;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/NavigateHandler$FileType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lnet/yostore/aws/handler/NavigateHandler$FileType;->PIC:Lnet/yostore/aws/handler/NavigateHandler$FileType;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/NavigateHandler$FileType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lnet/yostore/aws/handler/NavigateHandler$FileType;->VIDEO:Lnet/yostore/aws/handler/NavigateHandler$FileType;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/NavigateHandler$FileType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lnet/yostore/aws/handler/NavigateHandler;->$SWITCH_TABLE$net$yostore$aws$handler$NavigateHandler$FileType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

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
    sget-object v1, Lnet/yostore/aws/handler/NavigateHandler$ROOT;->Lib:Lnet/yostore/aws/handler/NavigateHandler$ROOT;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/NavigateHandler$ROOT;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lnet/yostore/aws/handler/NavigateHandler$ROOT;->PlayList:Lnet/yostore/aws/handler/NavigateHandler$ROOT;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/NavigateHandler$ROOT;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lnet/yostore/aws/handler/NavigateHandler$ROOT;->Search:Lnet/yostore/aws/handler/NavigateHandler$ROOT;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/NavigateHandler$ROOT;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lnet/yostore/aws/handler/NavigateHandler;->$SWITCH_TABLE$net$yostore$aws$handler$NavigateHandler$ROOT:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-string v0, " or "

    sput-object v0, Lnet/yostore/aws/handler/NavigateHandler;->OR:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    sput-object v0, Lnet/yostore/aws/handler/NavigateHandler;->nav:Lnet/yostore/aws/handler/NavigateHandler;

    .line 56
    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/NavigateHandler;->errMsg:Ljava/lang/String;

    .line 72
    iput-object v1, p0, Lnet/yostore/aws/handler/NavigateHandler;->ctx:Landroid/content/Context;

    .line 73
    iput-object v1, p0, Lnet/yostore/aws/handler/NavigateHandler;->homeid:Ljava/lang/String;

    .line 74
    iput-object v1, p0, Lnet/yostore/aws/handler/NavigateHandler;->homedisp:Ljava/lang/String;

    .line 75
    iput-object v1, p0, Lnet/yostore/aws/handler/NavigateHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 77
    sget-object v0, Lnet/yostore/aws/handler/NavigateHandler$ROOT;->Lib:Lnet/yostore/aws/handler/NavigateHandler$ROOT;

    iput-object v0, p0, Lnet/yostore/aws/handler/NavigateHandler;->root:Lnet/yostore/aws/handler/NavigateHandler$ROOT;

    .line 80
    iput-object v1, p0, Lnet/yostore/aws/handler/NavigateHandler;->fsInfos:Ljava/util/List;

    .line 84
    iput-object v1, p0, Lnet/yostore/aws/handler/NavigateHandler;->_path:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Lnet/yostore/aws/handler/NavigateHandler;->_pathId:Ljava/lang/String;

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/handler/NavigateHandler;->searchtotal:I

    .line 97
    return-void
.end method

.method private static FileType2Ext(Lnet/yostore/aws/handler/NavigateHandler$FileType;)Ljava/lang/String;
    .locals 3
    .parameter "ft"

    .prologue
    .line 762
    const-string v0, ""

    .line 764
    .local v0, rtn:Ljava/lang/String;
    invoke-static {}, Lnet/yostore/aws/handler/NavigateHandler;->$SWITCH_TABLE$net$yostore$aws$handler$NavigateHandler$FileType()[I

    move-result-object v1

    invoke-virtual {p0}, Lnet/yostore/aws/handler/NavigateHandler$FileType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 781
    :goto_0
    return-object v0

    .line 766
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pdf or doc or docx or html or htm or txt"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lnet/yostore/aws/handler/NavigateHandler;->OR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "jpeg or jpg or bmp or png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lnet/yostore/aws/handler/NavigateHandler;->OR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "flv or 3gp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lnet/yostore/aws/handler/NavigateHandler;->OR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "aac or ac3 or aiff or ape or flac or mp2 or mp3 or ogg or wav or wma"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 767
    goto :goto_0

    .line 769
    :pswitch_1
    const-string v0, "pdf or doc or docx or html or htm or txt"

    .line 770
    goto :goto_0

    .line 772
    :pswitch_2
    const-string v0, "jpeg or jpg or bmp or png"

    .line 773
    goto :goto_0

    .line 775
    :pswitch_3
    const-string v0, "flv or 3gp"

    .line 776
    goto :goto_0

    .line 778
    :pswitch_4
    const-string v0, "aac or ac3 or aiff or ape or flac or mp2 or mp3 or ogg or wav or wma"

    goto :goto_0

    .line 764
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getBrowseRawIcon(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "disp"
    .parameter "isFolder"

    .prologue
    .line 594
    const/4 v0, 0x0

    .line 595
    .local v0, rtn:I
    const-string v2, "1"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 596
    const v0, 0x7f020050

    .line 608
    :goto_0
    return v0

    .line 598
    :cond_0
    invoke-virtual {p0, p1}, Lnet/yostore/aws/handler/NavigateHandler;->parseMIMEType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 599
    .local v1, tp:Ljava/lang/String;
    const-string v2, "audio/*"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 600
    const v0, 0x7f020088

    goto :goto_0

    .line 601
    :cond_1
    const-string v2, "video/*"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 602
    const v0, 0x7f020087

    goto :goto_0

    .line 603
    :cond_2
    const-string v2, "image/*"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 604
    const v0, 0x7f02009b

    goto :goto_0

    .line 606
    :cond_3
    const v0, 0x7f020046

    goto :goto_0
.end method

.method public static getFulltextQuery(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;[Lnet/yostore/aws/handler/NavigateHandler$FileType;II)Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    .locals 11
    .parameter "apicfg"
    .parameter "keyword"
    .parameter "fts"
    .parameter "pagesize"
    .parameter "offset"

    .prologue
    .line 715
    invoke-static {p2}, Lnet/yostore/aws/handler/NavigateHandler;->getKind([Lnet/yostore/aws/handler/NavigateHandler$FileType;)Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    move-result-object v6

    .line 716
    .local v6, kind:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;
    invoke-static {p2}, Lnet/yostore/aws/handler/NavigateHandler;->makeExtStr([Lnet/yostore/aws/handler/NavigateHandler$FileType;)Ljava/lang/String;

    move-result-object v7

    .line 718
    .local v7, extStr:Ljava/lang/String;
    new-instance v1, Lnet/yostore/aws/api/helper/FulltextQueryHelper;

    .line 720
    const-string v3, ""

    move-object v2, p1

    move v4, p3

    move v5, p4

    .line 718
    invoke-direct/range {v1 .. v7}, Lnet/yostore/aws/api/helper/FulltextQueryHelper;-><init>(Ljava/lang/String;Ljava/lang/String;IILnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;Ljava/lang/String;)V

    .line 726
    .local v1, apihelper:Lnet/yostore/aws/api/helper/FulltextQueryHelper;
    const/4 v9, 0x0

    .line 728
    .local v9, response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    :try_start_0
    invoke-virtual {v1, p0}, Lnet/yostore/aws/api/helper/FulltextQueryHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lnet/yostore/aws/api/entity/FulltextQueryResponse;

    move-object v9, v0
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    :goto_0
    return-object v9

    .line 729
    :catch_0
    move-exception v2

    move-object v8, v2

    .line 730
    .local v8, e:Lnet/yostore/aws/api/exception/APIException;
    invoke-virtual {v8}, Lnet/yostore/aws/api/exception/APIException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;Lnet/yostore/aws/handler/NavigateHandler$ROOT;Lnet/yostore/aws/api/ApiConfig;Landroid/content/SharedPreferences;)Lnet/yostore/aws/handler/NavigateHandler;
    .locals 4
    .parameter "ctx"
    .parameter "root"
    .parameter "apicfg"
    .parameter "mPrefs"

    .prologue
    .line 99
    sget-object v1, Lnet/yostore/aws/handler/NavigateHandler;->nav:Lnet/yostore/aws/handler/NavigateHandler;

    if-nez v1, :cond_0

    new-instance v1, Lnet/yostore/aws/handler/NavigateHandler;

    invoke-direct {v1}, Lnet/yostore/aws/handler/NavigateHandler;-><init>()V

    sput-object v1, Lnet/yostore/aws/handler/NavigateHandler;->nav:Lnet/yostore/aws/handler/NavigateHandler;

    .line 100
    :cond_0
    sget-object v1, Lnet/yostore/aws/handler/NavigateHandler;->nav:Lnet/yostore/aws/handler/NavigateHandler;

    const-string v2, ""

    iput-object v2, v1, Lnet/yostore/aws/handler/NavigateHandler;->errMsg:Ljava/lang/String;

    .line 101
    sget-object v1, Lnet/yostore/aws/handler/NavigateHandler;->nav:Lnet/yostore/aws/handler/NavigateHandler;

    iput-object p0, v1, Lnet/yostore/aws/handler/NavigateHandler;->ctx:Landroid/content/Context;

    .line 102
    sget-object v1, Lnet/yostore/aws/handler/NavigateHandler;->nav:Lnet/yostore/aws/handler/NavigateHandler;

    iput-object p1, v1, Lnet/yostore/aws/handler/NavigateHandler;->root:Lnet/yostore/aws/handler/NavigateHandler$ROOT;

    .line 103
    sget-object v1, Lnet/yostore/aws/handler/NavigateHandler;->nav:Lnet/yostore/aws/handler/NavigateHandler;

    iput-object p2, v1, Lnet/yostore/aws/handler/NavigateHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 104
    invoke-static {p2}, Lnet/yostore/aws/handler/LoginHandler;->validateApiCfg(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v0

    .line 105
    .local v0, aaastat:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-eq v0, v1, :cond_1

    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->FREEZE:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v1, :cond_3

    .line 106
    :cond_1
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->FREEZE:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v1, :cond_2

    sget-object v1, Lnet/yostore/aws/handler/NavigateHandler;->nav:Lnet/yostore/aws/handler/NavigateHandler;

    const-string v2, "err.login.freeze"

    iput-object v2, v1, Lnet/yostore/aws/handler/NavigateHandler;->errMsg:Ljava/lang/String;

    .line 109
    :goto_0
    invoke-static {p2, p3}, Lnet/yostore/aws/preferences/Ap;->apiCfg2Pref(Lnet/yostore/aws/api/ApiConfig;Landroid/content/SharedPreferences;)V

    .line 111
    invoke-static {}, Lnet/yostore/aws/handler/NavigateHandler;->$SWITCH_TABLE$net$yostore$aws$handler$NavigateHandler$ROOT()[I

    move-result-object v1

    invoke-virtual {p1}, Lnet/yostore/aws/handler/NavigateHandler$ROOT;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 125
    :goto_1
    sget-object v1, Lnet/yostore/aws/handler/NavigateHandler;->nav:Lnet/yostore/aws/handler/NavigateHandler;

    .line 137
    :goto_2
    return-object v1

    .line 107
    :cond_2
    sget-object v1, Lnet/yostore/aws/handler/NavigateHandler;->nav:Lnet/yostore/aws/handler/NavigateHandler;

    const-string v2, ""

    iput-object v2, v1, Lnet/yostore/aws/handler/NavigateHandler;->errMsg:Ljava/lang/String;

    goto :goto_0

    .line 113
    :pswitch_0
    sget-object v1, Lnet/yostore/aws/handler/NavigateHandler;->nav:Lnet/yostore/aws/handler/NavigateHandler;

    sget-wide v2, Lcom/ecareme/mear/Mear;->lib_folder_id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lnet/yostore/aws/handler/NavigateHandler;->homeid:Ljava/lang/String;

    .line 114
    sget-object v1, Lnet/yostore/aws/handler/NavigateHandler;->nav:Lnet/yostore/aws/handler/NavigateHandler;

    const v2, 0x7f06007d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lnet/yostore/aws/handler/NavigateHandler;->homedisp:Ljava/lang/String;

    goto :goto_1

    .line 117
    :pswitch_1
    sget-object v1, Lnet/yostore/aws/handler/NavigateHandler;->nav:Lnet/yostore/aws/handler/NavigateHandler;

    sget-wide v2, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lnet/yostore/aws/handler/NavigateHandler;->homeid:Ljava/lang/String;

    .line 118
    sget-object v1, Lnet/yostore/aws/handler/NavigateHandler;->nav:Lnet/yostore/aws/handler/NavigateHandler;

    const v2, 0x7f06007e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lnet/yostore/aws/handler/NavigateHandler;->homedisp:Ljava/lang/String;

    goto :goto_1

    .line 121
    :pswitch_2
    sget-object v1, Lnet/yostore/aws/handler/NavigateHandler;->nav:Lnet/yostore/aws/handler/NavigateHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "system."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p2, Lnet/yostore/aws/api/ApiConfig;->packageDisplay:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".home"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lnet/yostore/aws/handler/NavigateHandler;->homeid:Ljava/lang/String;

    .line 122
    sget-object v1, Lnet/yostore/aws/handler/NavigateHandler;->nav:Lnet/yostore/aws/handler/NavigateHandler;

    const v2, 0x7f060037

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lnet/yostore/aws/handler/NavigateHandler;->homedisp:Ljava/lang/String;

    goto :goto_1

    .line 127
    :cond_3
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->Err:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v1, :cond_4

    .line 128
    sget-object v1, Lnet/yostore/aws/handler/NavigateHandler;->nav:Lnet/yostore/aws/handler/NavigateHandler;

    const-string v2, "err.login.fail"

    iput-object v2, v1, Lnet/yostore/aws/handler/NavigateHandler;->errMsg:Ljava/lang/String;

    .line 129
    sget-object v1, Lnet/yostore/aws/handler/NavigateHandler;->nav:Lnet/yostore/aws/handler/NavigateHandler;

    goto :goto_2

    .line 131
    :cond_4
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v1, :cond_5

    .line 133
    sget-object v1, Lnet/yostore/aws/handler/NavigateHandler;->nav:Lnet/yostore/aws/handler/NavigateHandler;

    const-string v2, "err.login.reject"

    iput-object v2, v1, Lnet/yostore/aws/handler/NavigateHandler;->errMsg:Ljava/lang/String;

    .line 134
    sget-object v1, Lnet/yostore/aws/handler/NavigateHandler;->nav:Lnet/yostore/aws/handler/NavigateHandler;

    goto :goto_2

    .line 137
    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    .line 111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getKind([Lnet/yostore/aws/handler/NavigateHandler$FileType;)Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;
    .locals 5
    .parameter "fts"

    .prologue
    .line 747
    sget-object v1, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->FILE:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    .line 748
    .local v1, rtn:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    .line 754
    :goto_1
    return-object v1

    .line 748
    :cond_0
    aget-object v0, p0, v3

    .line 749
    .local v0, ft:Lnet/yostore/aws/handler/NavigateHandler$FileType;
    sget-object v4, Lnet/yostore/aws/handler/NavigateHandler$FileType;->ALL:Lnet/yostore/aws/handler/NavigateHandler$FileType;

    if-ne v0, v4, :cond_1

    .line 750
    sget-object v1, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->ALL:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    .line 751
    goto :goto_1

    .line 748
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getMySyncFolderId()Ljava/lang/String;
    .locals 9

    .prologue
    .line 553
    iget-object v6, p0, Lnet/yostore/aws/handler/NavigateHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v6, v6, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lnet/yostore/aws/handler/NavigateHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v6, v6, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 554
    :cond_0
    new-instance v1, Lnet/yostore/aws/api/helper/FindPropfindHelper;

    .line 555
    const-string v6, "-5"

    const-string v7, "MySyncFolder"

    const-string v8, "system.folder"

    .line 554
    invoke-direct {v1, v6, v7, v8}, Lnet/yostore/aws/api/helper/FindPropfindHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    .local v1, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    const/4 v5, 0x0

    .line 558
    .local v5, response:Lnet/yostore/aws/api/entity/FindPropfindResponse;
    :try_start_0
    iget-object v6, p0, Lnet/yostore/aws/handler/NavigateHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v1, v6}, Lnet/yostore/aws/api/helper/FindPropfindHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lnet/yostore/aws/api/entity/FindPropfindResponse;

    move-object v5, v0

    .line 559
    invoke-virtual {v5}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getStatus()I

    move-result v6

    if-nez v6, :cond_2

    .line 561
    iget-object v6, p0, Lnet/yostore/aws/handler/NavigateHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v5}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    .line 562
    iget-object v6, p0, Lnet/yostore/aws/handler/NavigateHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v6, v6, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 563
    new-instance v3, Lnet/yostore/aws/api/helper/FolderCreateHelper;

    .line 564
    const-string v6, "-5"

    const-string v7, "MySyncFolder"

    const-string v8, ""

    .line 563
    invoke-direct {v3, v6, v7, v8}, Lnet/yostore/aws/api/helper/FolderCreateHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    .local v3, fcapihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    const/4 v4, 0x0

    .line 566
    .local v4, fcresponse:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    iget-object v6, p0, Lnet/yostore/aws/handler/NavigateHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v3, v6}, Lnet/yostore/aws/api/helper/FolderCreateHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v4

    .end local v4           #fcresponse:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    check-cast v4, Lnet/yostore/aws/api/entity/FolderCreateResponse;

    .line 567
    .restart local v4       #fcresponse:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/FolderCreateResponse;->getStatus()I

    move-result v6

    if-nez v6, :cond_1

    .line 569
    iget-object v6, p0, Lnet/yostore/aws/handler/NavigateHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/FolderCreateResponse;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    .end local v3           #fcapihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .end local v4           #fcresponse:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    :cond_1
    :goto_0
    iget-object v6, p0, Lnet/yostore/aws/handler/NavigateHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v6, v6, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    .line 590
    .end local v1           #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .end local v5           #response:Lnet/yostore/aws/api/entity/FindPropfindResponse;
    :goto_1
    return-object v6

    .line 572
    .restart local v1       #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .restart local v5       #response:Lnet/yostore/aws/api/entity/FindPropfindResponse;
    :cond_2
    :try_start_1
    invoke-virtual {v5}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getStatus()I

    move-result v6

    const/16 v7, 0xda

    if-ne v6, v7, :cond_1

    .line 573
    new-instance v3, Lnet/yostore/aws/api/helper/FolderCreateHelper;

    .line 574
    const-string v6, "-5"

    const-string v7, "MySyncFolder"

    const-string v8, ""

    .line 573
    invoke-direct {v3, v6, v7, v8}, Lnet/yostore/aws/api/helper/FolderCreateHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    .restart local v3       #fcapihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    const/4 v4, 0x0

    .line 576
    .restart local v4       #fcresponse:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    iget-object v6, p0, Lnet/yostore/aws/handler/NavigateHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v3, v6}, Lnet/yostore/aws/api/helper/FolderCreateHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v4

    .end local v4           #fcresponse:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    check-cast v4, Lnet/yostore/aws/api/entity/FolderCreateResponse;

    .line 577
    .restart local v4       #fcresponse:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/FolderCreateResponse;->getStatus()I

    move-result v6

    if-nez v6, :cond_1

    .line 579
    iget-object v6, p0, Lnet/yostore/aws/handler/NavigateHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/FolderCreateResponse;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 582
    .end local v3           #fcapihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .end local v4           #fcresponse:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 583
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lnet/yostore/aws/handler/NavigateHandler;->errMsg:Ljava/lang/String;

    .line 584
    const/4 v6, 0x0

    goto :goto_1

    .line 590
    .end local v1           #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v5           #response:Lnet/yostore/aws/api/entity/FindPropfindResponse;
    :cond_3
    iget-object v6, p0, Lnet/yostore/aws/handler/NavigateHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v6, v6, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    goto :goto_1
.end method

.method private getSizeDisp(J)Ljava/lang/String;
    .locals 9
    .parameter "size"

    .prologue
    const-wide v7, 0x10000000000L

    const-wide/32 v5, 0x40000000

    const-wide/32 v3, 0x100000

    const-wide/16 v1, 0x400

    .line 544
    cmp-long v0, p1, v7

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    div-long v1, p1, v7

    long-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " TB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 548
    :goto_0
    return-object v0

    .line 545
    :cond_0
    cmp-long v0, p1, v5

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    div-long v1, p1, v5

    long-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " GB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 546
    :cond_1
    cmp-long v0, p1, v3

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    div-long v1, p1, v3

    long-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 547
    :cond_2
    cmp-long v0, p1, v1

    if-lez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    div-long v1, p1, v1

    long-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 548
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private initStack()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 397
    new-instance v5, Ljava/util/Stack;

    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    iput-object v5, p0, Lnet/yostore/aws/handler/NavigateHandler;->dstack:Ljava/util/Stack;

    .line 400
    iget-object v5, p0, Lnet/yostore/aws/handler/NavigateHandler;->eventSharedInfo:Lnet/yostore/aws/api/entity/UserSharedFolderInfo;

    if-eqz v5, :cond_1

    .line 401
    move-object v0, v4

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0

    .line 402
    .local v3, ids:[Ljava/lang/String;
    move-object v0, v4

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0

    .line 407
    .local v1, dsps:[Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    array-length v4, v3

    array-length v5, v1

    if-ne v4, v5, :cond_0

    .line 408
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v4, v3

    if-lt v2, v4, :cond_2

    .line 412
    .end local v2           #i:I
    :cond_0
    return-void

    .line 404
    .end local v1           #dsps:[Ljava/lang/String;
    .end local v3           #ids:[Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lnet/yostore/aws/handler/NavigateHandler;->eventInfo:Lnet/yostore/aws/api/entity/EntryInfo;

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/EntryInfo;->getAncestorid()Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 405
    .restart local v3       #ids:[Ljava/lang/String;
    iget-object v4, p0, Lnet/yostore/aws/handler/NavigateHandler;->eventInfo:Lnet/yostore/aws/api/entity/EntryInfo;

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/EntryInfo;->getAncestorname()Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .restart local v1       #dsps:[Ljava/lang/String;
    goto :goto_0

    .line 409
    .restart local v2       #i:I
    :cond_2
    iget-object v4, p0, Lnet/yostore/aws/handler/NavigateHandler;->dstack:Ljava/util/Stack;

    new-instance v5, Lnet/yostore/aws/handler/entity/CPath;

    aget-object v6, v1, v2

    aget-object v7, v3, v2

    invoke-direct {v5, v6, v7}, Lnet/yostore/aws/handler/entity/CPath;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 408
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static makeExtStr([Lnet/yostore/aws/handler/NavigateHandler$FileType;)Ljava/lang/String;
    .locals 4
    .parameter "ft"

    .prologue
    .line 785
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 786
    .local v1, sb:Ljava/lang/StringBuffer;
    if-eqz p0, :cond_0

    array-length v2, p0

    if-lez v2, :cond_0

    .line 787
    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-static {v2}, Lnet/yostore/aws/handler/NavigateHandler;->FileType2Ext(Lnet/yostore/aws/handler/NavigateHandler$FileType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 788
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_1

    .line 791
    .end local v0           #i:I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 789
    .restart local v0       #i:I
    :cond_1
    sget-object v2, Lnet/yostore/aws/handler/NavigateHandler;->OR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-static {v3}, Lnet/yostore/aws/handler/NavigateHandler;->FileType2Ext(Lnet/yostore/aws/handler/NavigateHandler$FileType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 788
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private parseIconId([Ljava/lang/String;[Ljava/lang/String;)[I
    .locals 6
    .parameter "disp"
    .parameter "isFolder"

    .prologue
    .line 611
    array-length v4, p1

    new-array v2, v4, [I

    .line 612
    .local v2, ii:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, p1

    if-lt v1, v4, :cond_0

    .line 634
    return-object v2

    .line 613
    :cond_0
    aget-object v0, p1, v1

    .line 619
    .local v0, dsp:Ljava/lang/String;
    const-string v4, "1"

    aget-object v5, p2, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 620
    const v4, 0x7f020050

    aput v4, v2, v1

    .line 612
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 622
    :cond_1
    invoke-virtual {p0, v0}, Lnet/yostore/aws/handler/NavigateHandler;->parseMIMEType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 623
    .local v3, tp:Ljava/lang/String;
    const-string v4, "audio/*"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 624
    const v4, 0x7f020088

    aput v4, v2, v1

    goto :goto_1

    .line 625
    :cond_2
    const-string v4, "video/*"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 626
    const v4, 0x7f020087

    aput v4, v2, v1

    goto :goto_1

    .line 627
    :cond_3
    const-string v4, "image/*"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 628
    const v4, 0x7f02009b

    aput v4, v2, v1

    goto :goto_1

    .line 630
    :cond_4
    const v4, 0x7f020046

    aput v4, v2, v1

    goto :goto_1
.end method


# virtual methods
.method public deleteItem(I)I
    .locals 8
    .parameter "position"

    .prologue
    .line 349
    const/16 v4, -0x3e7

    .line 350
    .local v4, rtn:I
    if-gez p1, :cond_0

    move v5, v4

    .line 368
    .end local v4           #rtn:I
    .local v5, rtn:I
    :goto_0
    return v5

    .line 352
    .end local v5           #rtn:I
    .restart local v4       #rtn:I
    :cond_0
    iget-object v6, p0, Lnet/yostore/aws/handler/NavigateHandler;->fsInfos:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/yostore/aws/handler/entity/FsInfo;

    .line 354
    .local v2, fi:Lnet/yostore/aws/handler/entity/FsInfo;
    const/4 v0, 0x0

    .line 355
    .local v0, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    const-string v6, "1"

    iget-object v7, v2, Lnet/yostore/aws/handler/entity/FsInfo;->isfolder:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 356
    new-instance v0, Lnet/yostore/aws/api/helper/FolderRemoveHelper;

    .end local v0           #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    iget-object v6, v2, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-direct {v0, v6}, Lnet/yostore/aws/api/helper/FolderRemoveHelper;-><init>(Ljava/lang/String;)V

    .line 360
    .restart local v0       #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    :goto_1
    const/4 v3, 0x0

    .line 362
    .local v3, response:Lnet/yostore/aws/api/entity/ApiResponse;
    :try_start_0
    iget-object v6, p0, Lnet/yostore/aws/handler/NavigateHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v0, v6}, Lnet/yostore/aws/api/helper/BaseHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v3

    .line 363
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/ApiResponse;->getStatus()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :goto_2
    move v5, v4

    .line 368
    .end local v4           #rtn:I
    .restart local v5       #rtn:I
    goto :goto_0

    .line 358
    .end local v3           #response:Lnet/yostore/aws/api/entity/ApiResponse;
    .end local v5           #rtn:I
    .restart local v4       #rtn:I
    :cond_1
    new-instance v0, Lnet/yostore/aws/api/helper/FileRemoveHelper;

    .end local v0           #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    iget-object v6, v2, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-direct {v0, v6}, Lnet/yostore/aws/api/helper/FileRemoveHelper;-><init>(Ljava/lang/String;)V

    .restart local v0       #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    goto :goto_1

    .line 364
    .restart local v3       #response:Lnet/yostore/aws/api/entity/ApiResponse;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 365
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
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
    .line 94
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
    .line 147
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
    .line 81
    iget-object v0, p0, Lnet/yostore/aws/handler/NavigateHandler;->fsInfos:Ljava/util/List;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lnet/yostore/aws/handler/NavigateHandler;->_path:Ljava/lang/String;

    return-object v0
.end method

.method public getPathId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lnet/yostore/aws/handler/NavigateHandler;->_pathId:Ljava/lang/String;

    return-object v0
.end method

.method public isTop()Z
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lnet/yostore/aws/handler/NavigateHandler;->dstack:Ljava/util/Stack;

    if-nez v0, :cond_0

    .line 795
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/handler/NavigateHandler;->dstack:Ljava/util/Stack;

    .line 796
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/handler/NavigateHandler;->dstack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public parseMIMEType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "end"

    .prologue
    .line 640
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 643
    const-string v0, "mp3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    const-string v0, "audio/*"

    .line 674
    :goto_0
    return-object v0

    .line 648
    :cond_0
    const-string v0, "avi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mp4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 649
    const-string v0, "mpeg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mpg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 650
    const-string v0, "m4v"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mov"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 651
    const-string v0, "mkv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "vob"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 652
    const-string v0, "vcd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "svcd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 653
    const-string v0, "rm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "rmvb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 654
    const-string v0, "divx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "wmv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 655
    const-string v0, "3gp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "3gpp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "flv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 657
    :cond_1
    const-string v0, "video/*"

    goto/16 :goto_0

    .line 659
    :cond_2
    const-string v0, "jpg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "gif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "jpeg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "bmp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 661
    :cond_3
    const-string v0, "image/*"

    goto/16 :goto_0

    .line 664
    :cond_4
    const-string v0, "pdf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "epub"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "rtf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "txt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 665
    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 666
    const-string v0, "xls"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "ppt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "doc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "xlsx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "pptx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "docx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 667
    const-string v0, "odt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "ods"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "odp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 670
    :cond_5
    const-string v0, "text/*"

    goto/16 :goto_0

    .line 674
    :cond_6
    const-string v0, "*/*"

    goto/16 :goto_0
.end method

.method public setCurrentEntryInfo(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 253
    iget-object v0, p0, Lnet/yostore/aws/handler/NavigateHandler;->elist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/api/entity/EntryInfo;

    iput-object v0, p0, Lnet/yostore/aws/handler/NavigateHandler;->eventInfo:Lnet/yostore/aws/api/entity/EntryInfo;

    .line 254
    return-void
.end method

.method public setCurrentFolderListInfo(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 304
    iget-object v0, p0, Lnet/yostore/aws/handler/NavigateHandler;->folderList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/api/entity/UserSharedFolderInfo;

    iput-object v0, p0, Lnet/yostore/aws/handler/NavigateHandler;->eventSharedInfo:Lnet/yostore/aws/api/entity/UserSharedFolderInfo;

    .line 305
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
    .line 95
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
    .line 150
    .local p1, elist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/EntryInfo;>;"
    iput-object p1, p0, Lnet/yostore/aws/handler/NavigateHandler;->elist:Ljava/util/List;

    .line 151
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
    .line 82
    .local p1, fsInfos:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/FsInfo;>;"
    iput-object p1, p0, Lnet/yostore/aws/handler/NavigateHandler;->fsInfos:Ljava/util/List;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .parameter "_path"

    .prologue
    .line 85
    iput-object p1, p0, Lnet/yostore/aws/handler/NavigateHandler;->_path:Ljava/lang/String;

    return-void
.end method

.method public setPathId(Ljava/lang/String;)V
    .locals 0
    .parameter "_pathId"

    .prologue
    .line 88
    iput-object p1, p0, Lnet/yostore/aws/handler/NavigateHandler;->_pathId:Ljava/lang/String;

    return-void
.end method
