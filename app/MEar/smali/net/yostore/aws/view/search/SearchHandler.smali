.class public Lnet/yostore/aws/view/search/SearchHandler;
.super Ljava/lang/Object;
.source "SearchHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/view/search/SearchHandler$FileType;,
        Lnet/yostore/aws/view/search/SearchHandler$ROOT;,
        Lnet/yostore/aws/view/search/SearchHandler$SearchType;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$net$yostore$aws$view$search$SearchHandler$FileType:[I = null

.field private static synthetic $SWITCH_TABLE$net$yostore$aws$view$search$SearchHandler$ROOT:[I = null

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

.field private static nav:Lnet/yostore/aws/view/search/SearchHandler;


# instance fields
.field private _path:Ljava/lang/String;

.field private _pathId:Ljava/lang/String;

.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private brlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/BrowseRaw;",
            ">;"
        }
    .end annotation
.end field

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

.field public root:Lnet/yostore/aws/view/search/SearchHandler$ROOT;

.field public searchtotal:I


# direct methods
.method static synthetic $SWITCH_TABLE$net$yostore$aws$view$search$SearchHandler$FileType()[I
    .locals 3

    .prologue
    .line 50
    sget-object v0, Lnet/yostore/aws/view/search/SearchHandler;->$SWITCH_TABLE$net$yostore$aws$view$search$SearchHandler$FileType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lnet/yostore/aws/view/search/SearchHandler$FileType;->values()[Lnet/yostore/aws/view/search/SearchHandler$FileType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lnet/yostore/aws/view/search/SearchHandler$FileType;->ALL:Lnet/yostore/aws/view/search/SearchHandler$FileType;

    invoke-virtual {v1}, Lnet/yostore/aws/view/search/SearchHandler$FileType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lnet/yostore/aws/view/search/SearchHandler$FileType;->DOC:Lnet/yostore/aws/view/search/SearchHandler$FileType;

    invoke-virtual {v1}, Lnet/yostore/aws/view/search/SearchHandler$FileType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lnet/yostore/aws/view/search/SearchHandler$FileType;->MUSIC:Lnet/yostore/aws/view/search/SearchHandler$FileType;

    invoke-virtual {v1}, Lnet/yostore/aws/view/search/SearchHandler$FileType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lnet/yostore/aws/view/search/SearchHandler$FileType;->PIC:Lnet/yostore/aws/view/search/SearchHandler$FileType;

    invoke-virtual {v1}, Lnet/yostore/aws/view/search/SearchHandler$FileType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lnet/yostore/aws/view/search/SearchHandler$FileType;->VIDEO:Lnet/yostore/aws/view/search/SearchHandler$FileType;

    invoke-virtual {v1}, Lnet/yostore/aws/view/search/SearchHandler$FileType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lnet/yostore/aws/view/search/SearchHandler;->$SWITCH_TABLE$net$yostore$aws$view$search$SearchHandler$FileType:[I

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

.method static synthetic $SWITCH_TABLE$net$yostore$aws$view$search$SearchHandler$ROOT()[I
    .locals 3

    .prologue
    .line 50
    sget-object v0, Lnet/yostore/aws/view/search/SearchHandler;->$SWITCH_TABLE$net$yostore$aws$view$search$SearchHandler$ROOT:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lnet/yostore/aws/view/search/SearchHandler$ROOT;->values()[Lnet/yostore/aws/view/search/SearchHandler$ROOT;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lnet/yostore/aws/view/search/SearchHandler$ROOT;->Lib:Lnet/yostore/aws/view/search/SearchHandler$ROOT;

    invoke-virtual {v1}, Lnet/yostore/aws/view/search/SearchHandler$ROOT;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lnet/yostore/aws/view/search/SearchHandler$ROOT;->PlayList:Lnet/yostore/aws/view/search/SearchHandler$ROOT;

    invoke-virtual {v1}, Lnet/yostore/aws/view/search/SearchHandler$ROOT;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lnet/yostore/aws/view/search/SearchHandler$ROOT;->Search:Lnet/yostore/aws/view/search/SearchHandler$ROOT;

    invoke-virtual {v1}, Lnet/yostore/aws/view/search/SearchHandler$ROOT;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lnet/yostore/aws/view/search/SearchHandler;->$SWITCH_TABLE$net$yostore$aws$view$search$SearchHandler$ROOT:[I

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
    .line 61
    const-string v0, " or "

    sput-object v0, Lnet/yostore/aws/view/search/SearchHandler;->OR:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lnet/yostore/aws/view/search/SearchHandler;->nav:Lnet/yostore/aws/view/search/SearchHandler;

    .line 50
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/view/search/SearchHandler;->errMsg:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lnet/yostore/aws/view/search/SearchHandler;->ctx:Landroid/content/Context;

    .line 67
    iput-object v1, p0, Lnet/yostore/aws/view/search/SearchHandler;->homeid:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lnet/yostore/aws/view/search/SearchHandler;->homedisp:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lnet/yostore/aws/view/search/SearchHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 71
    sget-object v0, Lnet/yostore/aws/view/search/SearchHandler$ROOT;->Lib:Lnet/yostore/aws/view/search/SearchHandler$ROOT;

    iput-object v0, p0, Lnet/yostore/aws/view/search/SearchHandler;->root:Lnet/yostore/aws/view/search/SearchHandler$ROOT;

    .line 74
    iput-object v1, p0, Lnet/yostore/aws/view/search/SearchHandler;->fsInfos:Ljava/util/List;

    .line 78
    iput-object v1, p0, Lnet/yostore/aws/view/search/SearchHandler;->_path:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lnet/yostore/aws/view/search/SearchHandler;->_pathId:Ljava/lang/String;

    .line 313
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/view/search/SearchHandler;->searchtotal:I

    .line 93
    return-void
.end method

.method private static FileType2Ext(Lnet/yostore/aws/view/search/SearchHandler$FileType;)Ljava/lang/String;
    .locals 3
    .parameter "ft"

    .prologue
    .line 556
    const-string v0, ""

    .line 558
    .local v0, rtn:Ljava/lang/String;
    invoke-static {}, Lnet/yostore/aws/view/search/SearchHandler;->$SWITCH_TABLE$net$yostore$aws$view$search$SearchHandler$FileType()[I

    move-result-object v1

    invoke-virtual {p0}, Lnet/yostore/aws/view/search/SearchHandler$FileType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 575
    :goto_0
    return-object v0

    .line 560
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pdf or doc or docx or html or htm or txt"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lnet/yostore/aws/view/search/SearchHandler;->OR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "jpeg or jpg or bmp or png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lnet/yostore/aws/view/search/SearchHandler;->OR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "flv or 3gp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lnet/yostore/aws/view/search/SearchHandler;->OR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "aac or ac3 or aiff or ape or flac or mp2 or mp3 or ogg or wav or wma"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 561
    goto :goto_0

    .line 563
    :pswitch_1
    const-string v0, "pdf or doc or docx or html or htm or txt"

    .line 564
    goto :goto_0

    .line 566
    :pswitch_2
    const-string v0, "jpeg or jpg or bmp or png"

    .line 567
    goto :goto_0

    .line 569
    :pswitch_3
    const-string v0, "flv or 3gp"

    .line 570
    goto :goto_0

    .line 572
    :pswitch_4
    const-string v0, "aac or ac3 or aiff or ape or flac or mp2 or mp3 or ogg or wav or wma"

    goto :goto_0

    .line 558
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private addMoreItem(Lnet/yostore/aws/view/navigate/BrowseAdapter;)Z
    .locals 8
    .parameter "browserAdapter"

    .prologue
    const/4 v7, 0x1

    .line 144
    invoke-virtual {p1}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, v7

    invoke-virtual {p1, v0}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->getItem(I)Lnet/yostore/aws/handler/entity/BrowseRaw;

    move-result-object v0

    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/BrowseRaw;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "More"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchHandler;->fsInfos:Ljava/util/List;

    new-instance v1, Lnet/yostore/aws/handler/entity/FsInfo;

    invoke-direct {v1, v7}, Lnet/yostore/aws/handler/entity/FsInfo;-><init>(Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance v0, Lnet/yostore/aws/handler/entity/BrowseRaw;

    .line 147
    const-string v1, "More"

    .line 148
    const/4 v2, -0x1

    .line 149
    const-string v3, "more"

    .line 150
    const/4 v4, 0x0

    .line 151
    sget-object v5, Lnet/yostore/aws/view/navigate/LibActivity;->awsl:Ljava/util/List;

    sget v6, Lnet/yostore/aws/view/search/SearchActivity;->awsSearchIdx:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lnet/yostore/aws/handler/entity/BrowseRaw;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V

    .line 146
    invoke-virtual {p1, v0}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->add(Lnet/yostore/aws/handler/entity/BrowseRaw;)V

    move v0, v7

    .line 160
    :goto_0
    return v0

    .line 155
    .restart local p0
    :cond_0
    sget-object v0, Lnet/yostore/aws/view/navigate/LibActivity;->awsl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lnet/yostore/aws/view/search/SearchActivity;->awsSearchIdx:I

    if-le v0, v1, :cond_1

    .line 156
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchHandler;->fsInfos:Ljava/util/List;

    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchHandler;->fsInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 157
    invoke-virtual {p1}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->getCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->getItem(I)Lnet/yostore/aws/handler/entity/BrowseRaw;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->remove(Lnet/yostore/aws/handler/entity/BrowseRaw;)V

    move v0, v7

    .line 158
    goto :goto_0

    .line 160
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getBrowseRawIcon(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "disp"
    .parameter "isFolder"

    .prologue
    .line 403
    const/4 v0, 0x0

    .line 404
    .local v0, rtn:I
    const-string v2, "1"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 405
    const v0, 0x7f020050

    .line 417
    :goto_0
    return v0

    .line 407
    :cond_0
    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/search/SearchHandler;->parseMIMEType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 408
    .local v1, tp:Ljava/lang/String;
    const-string v2, "audio/*"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 409
    const v0, 0x7f020088

    goto :goto_0

    .line 410
    :cond_1
    const-string v2, "video/*"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 411
    const v0, 0x7f020087

    goto :goto_0

    .line 412
    :cond_2
    const-string v2, "image/*"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 413
    const v0, 0x7f02009b

    goto :goto_0

    .line 415
    :cond_3
    const v0, 0x7f020046

    goto :goto_0
.end method

.method public static getFulltextQuery(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    .locals 11
    .parameter "apicfg"
    .parameter "keyword"
    .parameter "markid"
    .parameter "ext"
    .parameter "pagesize"
    .parameter "offset"

    .prologue
    .line 514
    sget-object v6, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->ALL:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    .line 515
    .local v6, kind:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    sget-object v6, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->FILE:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    .line 518
    :cond_0
    new-instance v1, Lnet/yostore/aws/api/helper/FulltextQueryHelper;

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move/from16 v5, p5

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lnet/yostore/aws/api/helper/FulltextQueryHelper;-><init>(Ljava/lang/String;Ljava/lang/String;IILnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;Ljava/lang/String;)V

    .line 525
    .local v1, apihelper:Lnet/yostore/aws/api/helper/FulltextQueryHelper;
    const/4 v9, 0x0

    .line 527
    .local v9, response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    :try_start_0
    invoke-virtual {v1, p0}, Lnet/yostore/aws/api/helper/FulltextQueryHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lnet/yostore/aws/api/entity/FulltextQueryResponse;

    move-object v9, v0
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    :goto_0
    return-object v9

    .line 528
    :catch_0
    move-exception v2

    move-object v8, v2

    .line 529
    .local v8, e:Lnet/yostore/aws/api/exception/APIException;
    invoke-virtual {v8}, Lnet/yostore/aws/api/exception/APIException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;Lnet/yostore/aws/view/search/SearchHandler$ROOT;Lnet/yostore/aws/api/ApiConfig;Landroid/content/SharedPreferences;)Lnet/yostore/aws/view/search/SearchHandler;
    .locals 4
    .parameter "ctx"
    .parameter "root"
    .parameter "apicfg"
    .parameter "mPrefs"

    .prologue
    .line 95
    sget-object v1, Lnet/yostore/aws/view/search/SearchHandler;->nav:Lnet/yostore/aws/view/search/SearchHandler;

    if-nez v1, :cond_0

    new-instance v1, Lnet/yostore/aws/view/search/SearchHandler;

    invoke-direct {v1}, Lnet/yostore/aws/view/search/SearchHandler;-><init>()V

    sput-object v1, Lnet/yostore/aws/view/search/SearchHandler;->nav:Lnet/yostore/aws/view/search/SearchHandler;

    .line 96
    :cond_0
    sget-object v1, Lnet/yostore/aws/view/search/SearchHandler;->nav:Lnet/yostore/aws/view/search/SearchHandler;

    const-string v2, ""

    iput-object v2, v1, Lnet/yostore/aws/view/search/SearchHandler;->errMsg:Ljava/lang/String;

    .line 97
    sget-object v1, Lnet/yostore/aws/view/search/SearchHandler;->nav:Lnet/yostore/aws/view/search/SearchHandler;

    iput-object p0, v1, Lnet/yostore/aws/view/search/SearchHandler;->ctx:Landroid/content/Context;

    .line 98
    sget-object v1, Lnet/yostore/aws/view/search/SearchHandler;->nav:Lnet/yostore/aws/view/search/SearchHandler;

    iput-object p1, v1, Lnet/yostore/aws/view/search/SearchHandler;->root:Lnet/yostore/aws/view/search/SearchHandler$ROOT;

    .line 99
    sget-object v1, Lnet/yostore/aws/view/search/SearchHandler;->nav:Lnet/yostore/aws/view/search/SearchHandler;

    iput-object p2, v1, Lnet/yostore/aws/view/search/SearchHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 101
    invoke-static {p2}, Lnet/yostore/aws/handler/LoginHandler;->validateApiCfg(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v0

    .line 102
    .local v0, aaastat:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-eq v0, v1, :cond_1

    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->FREEZE:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v1, :cond_3

    .line 103
    :cond_1
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->FREEZE:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v1, :cond_2

    sget-object v1, Lnet/yostore/aws/view/search/SearchHandler;->nav:Lnet/yostore/aws/view/search/SearchHandler;

    const-string v2, "err.login.freeze"

    iput-object v2, v1, Lnet/yostore/aws/view/search/SearchHandler;->errMsg:Ljava/lang/String;

    .line 106
    :goto_0
    invoke-static {p2, p3}, Lnet/yostore/aws/preferences/Ap;->apiCfg2Pref(Lnet/yostore/aws/api/ApiConfig;Landroid/content/SharedPreferences;)V

    .line 108
    invoke-static {}, Lnet/yostore/aws/view/search/SearchHandler;->$SWITCH_TABLE$net$yostore$aws$view$search$SearchHandler$ROOT()[I

    move-result-object v1

    invoke-virtual {p1}, Lnet/yostore/aws/view/search/SearchHandler$ROOT;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 122
    :goto_1
    sget-object v1, Lnet/yostore/aws/view/search/SearchHandler;->nav:Lnet/yostore/aws/view/search/SearchHandler;

    .line 134
    :goto_2
    return-object v1

    .line 104
    :cond_2
    sget-object v1, Lnet/yostore/aws/view/search/SearchHandler;->nav:Lnet/yostore/aws/view/search/SearchHandler;

    const-string v2, ""

    iput-object v2, v1, Lnet/yostore/aws/view/search/SearchHandler;->errMsg:Ljava/lang/String;

    goto :goto_0

    .line 110
    :pswitch_0
    sget-object v1, Lnet/yostore/aws/view/search/SearchHandler;->nav:Lnet/yostore/aws/view/search/SearchHandler;

    sget-wide v2, Lcom/ecareme/mear/Mear;->lib_folder_id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lnet/yostore/aws/view/search/SearchHandler;->homeid:Ljava/lang/String;

    .line 111
    sget-object v1, Lnet/yostore/aws/view/search/SearchHandler;->nav:Lnet/yostore/aws/view/search/SearchHandler;

    const v2, 0x7f06007d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lnet/yostore/aws/view/search/SearchHandler;->homedisp:Ljava/lang/String;

    goto :goto_1

    .line 114
    :pswitch_1
    sget-object v1, Lnet/yostore/aws/view/search/SearchHandler;->nav:Lnet/yostore/aws/view/search/SearchHandler;

    sget-wide v2, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lnet/yostore/aws/view/search/SearchHandler;->homeid:Ljava/lang/String;

    .line 115
    sget-object v1, Lnet/yostore/aws/view/search/SearchHandler;->nav:Lnet/yostore/aws/view/search/SearchHandler;

    const v2, 0x7f06007e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lnet/yostore/aws/view/search/SearchHandler;->homedisp:Ljava/lang/String;

    goto :goto_1

    .line 118
    :pswitch_2
    sget-object v1, Lnet/yostore/aws/view/search/SearchHandler;->nav:Lnet/yostore/aws/view/search/SearchHandler;

    sget-wide v2, Lcom/ecareme/mear/Mear;->lib_folder_id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lnet/yostore/aws/view/search/SearchHandler;->homeid:Ljava/lang/String;

    .line 119
    sget-object v1, Lnet/yostore/aws/view/search/SearchHandler;->nav:Lnet/yostore/aws/view/search/SearchHandler;

    const v2, 0x7f060037

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lnet/yostore/aws/view/search/SearchHandler;->homedisp:Ljava/lang/String;

    goto :goto_1

    .line 124
    :cond_3
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->Err:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v1, :cond_4

    .line 125
    sget-object v1, Lnet/yostore/aws/view/search/SearchHandler;->nav:Lnet/yostore/aws/view/search/SearchHandler;

    const-string v2, "err.login.fail"

    iput-object v2, v1, Lnet/yostore/aws/view/search/SearchHandler;->errMsg:Ljava/lang/String;

    .line 126
    sget-object v1, Lnet/yostore/aws/view/search/SearchHandler;->nav:Lnet/yostore/aws/view/search/SearchHandler;

    goto :goto_2

    .line 128
    :cond_4
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v1, :cond_5

    .line 130
    sget-object v1, Lnet/yostore/aws/view/search/SearchHandler;->nav:Lnet/yostore/aws/view/search/SearchHandler;

    const-string v2, "err.login.reject"

    iput-object v2, v1, Lnet/yostore/aws/view/search/SearchHandler;->errMsg:Ljava/lang/String;

    .line 131
    sget-object v1, Lnet/yostore/aws/view/search/SearchHandler;->nav:Lnet/yostore/aws/view/search/SearchHandler;

    goto :goto_2

    .line 134
    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getKind([Lnet/yostore/aws/view/search/SearchHandler$FileType;)Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;
    .locals 5
    .parameter "fts"

    .prologue
    .line 541
    sget-object v1, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->FILE:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    .line 542
    .local v1, rtn:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    .line 548
    :goto_1
    return-object v1

    .line 542
    :cond_0
    aget-object v0, p0, v3

    .line 543
    .local v0, ft:Lnet/yostore/aws/view/search/SearchHandler$FileType;
    sget-object v4, Lnet/yostore/aws/view/search/SearchHandler$FileType;->ALL:Lnet/yostore/aws/view/search/SearchHandler$FileType;

    if-ne v0, v4, :cond_1

    .line 544
    sget-object v1, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->ALL:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    .line 545
    goto :goto_1

    .line 542
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getMySyncFolderId()Ljava/lang/String;
    .locals 9

    .prologue
    .line 362
    iget-object v6, p0, Lnet/yostore/aws/view/search/SearchHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v6, v6, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lnet/yostore/aws/view/search/SearchHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v6, v6, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 363
    :cond_0
    new-instance v1, Lnet/yostore/aws/api/helper/FindPropfindHelper;

    .line 364
    const-string v6, "-5"

    const-string v7, "MySyncFolder"

    const-string v8, "system.folder"

    .line 363
    invoke-direct {v1, v6, v7, v8}, Lnet/yostore/aws/api/helper/FindPropfindHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    .local v1, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    const/4 v5, 0x0

    .line 367
    .local v5, response:Lnet/yostore/aws/api/entity/FindPropfindResponse;
    :try_start_0
    iget-object v6, p0, Lnet/yostore/aws/view/search/SearchHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v1, v6}, Lnet/yostore/aws/api/helper/FindPropfindHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lnet/yostore/aws/api/entity/FindPropfindResponse;

    move-object v5, v0

    .line 368
    invoke-virtual {v5}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getStatus()I

    move-result v6

    if-nez v6, :cond_2

    .line 370
    iget-object v6, p0, Lnet/yostore/aws/view/search/SearchHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v5}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    .line 371
    iget-object v6, p0, Lnet/yostore/aws/view/search/SearchHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v6, v6, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 372
    new-instance v3, Lnet/yostore/aws/api/helper/FolderCreateHelper;

    .line 373
    const-string v6, "-5"

    const-string v7, "MySyncFolder"

    const-string v8, ""

    .line 372
    invoke-direct {v3, v6, v7, v8}, Lnet/yostore/aws/api/helper/FolderCreateHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    .local v3, fcapihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    const/4 v4, 0x0

    .line 375
    .local v4, fcresponse:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    iget-object v6, p0, Lnet/yostore/aws/view/search/SearchHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v3, v6}, Lnet/yostore/aws/api/helper/FolderCreateHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v4

    .end local v4           #fcresponse:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    check-cast v4, Lnet/yostore/aws/api/entity/FolderCreateResponse;

    .line 376
    .restart local v4       #fcresponse:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/FolderCreateResponse;->getStatus()I

    move-result v6

    if-nez v6, :cond_1

    .line 378
    iget-object v6, p0, Lnet/yostore/aws/view/search/SearchHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/FolderCreateResponse;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    .end local v3           #fcapihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .end local v4           #fcresponse:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    :cond_1
    :goto_0
    iget-object v6, p0, Lnet/yostore/aws/view/search/SearchHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v6, v6, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    .line 399
    .end local v1           #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .end local v5           #response:Lnet/yostore/aws/api/entity/FindPropfindResponse;
    :goto_1
    return-object v6

    .line 381
    .restart local v1       #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .restart local v5       #response:Lnet/yostore/aws/api/entity/FindPropfindResponse;
    :cond_2
    :try_start_1
    invoke-virtual {v5}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getStatus()I

    move-result v6

    const/16 v7, 0xda

    if-ne v6, v7, :cond_1

    .line 382
    new-instance v3, Lnet/yostore/aws/api/helper/FolderCreateHelper;

    .line 383
    const-string v6, "-5"

    const-string v7, "MySyncFolder"

    const-string v8, ""

    .line 382
    invoke-direct {v3, v6, v7, v8}, Lnet/yostore/aws/api/helper/FolderCreateHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    .restart local v3       #fcapihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    const/4 v4, 0x0

    .line 385
    .restart local v4       #fcresponse:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    iget-object v6, p0, Lnet/yostore/aws/view/search/SearchHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v3, v6}, Lnet/yostore/aws/api/helper/FolderCreateHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v4

    .end local v4           #fcresponse:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    check-cast v4, Lnet/yostore/aws/api/entity/FolderCreateResponse;

    .line 386
    .restart local v4       #fcresponse:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/FolderCreateResponse;->getStatus()I

    move-result v6

    if-nez v6, :cond_1

    .line 388
    iget-object v6, p0, Lnet/yostore/aws/view/search/SearchHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/FolderCreateResponse;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 391
    .end local v3           #fcapihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .end local v4           #fcresponse:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 392
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lnet/yostore/aws/view/search/SearchHandler;->errMsg:Ljava/lang/String;

    .line 393
    const/4 v6, 0x0

    goto :goto_1

    .line 399
    .end local v1           #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v5           #response:Lnet/yostore/aws/api/entity/FindPropfindResponse;
    :cond_3
    iget-object v6, p0, Lnet/yostore/aws/view/search/SearchHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

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

    .line 353
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

    .line 357
    :goto_0
    return-object v0

    .line 354
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

    .line 355
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

    .line 356
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

    .line 357
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

.method public static getSqlQuery(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;Ljava/lang/String;)Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    .locals 8
    .parameter "apicfg"
    .parameter "keyword"
    .parameter "markid"
    .parameter "ext"
    .parameter "pagesize"
    .parameter "offset"
    .parameter "kind"
    .parameter "ancestorid"

    .prologue
    .line 494
    new-instance v0, Lnet/yostore/aws/api/helper/SqlQueryHelper;

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p5

    move-object v5, p6

    move-object v6, p3

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lnet/yostore/aws/api/helper/SqlQueryHelper;-><init>(Ljava/lang/String;Ljava/lang/String;IILnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    .local v0, apihelper:Lnet/yostore/aws/api/helper/SqlQueryHelper;
    const/4 p1, 0x0

    .line 505
    .local p1, response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    :try_start_0
    invoke-virtual {v0, p0}, Lnet/yostore/aws/api/helper/SqlQueryHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    .end local p1           #response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    .local p0, response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    :goto_0
    return-object p0

    .line 506
    .end local p0           #response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    .restart local p1       #response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    :catch_0
    move-exception p0

    .line 507
    .local p0, e:Lnet/yostore/aws/api/exception/APIException;
    invoke-virtual {p0}, Lnet/yostore/aws/api/exception/APIException;->printStackTrace()V

    move-object p0, p1

    .end local p1           #response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    .local p0, response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    goto :goto_0
.end method

.method private static makeExtStr([Lnet/yostore/aws/view/search/SearchHandler$FileType;)Ljava/lang/String;
    .locals 4
    .parameter "ft"

    .prologue
    .line 579
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 580
    .local v1, sb:Ljava/lang/StringBuffer;
    if-eqz p0, :cond_0

    array-length v2, p0

    if-lez v2, :cond_0

    .line 581
    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-static {v2}, Lnet/yostore/aws/view/search/SearchHandler;->FileType2Ext(Lnet/yostore/aws/view/search/SearchHandler$FileType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 582
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_1

    .line 585
    .end local v0           #i:I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 583
    .restart local v0       #i:I
    :cond_1
    sget-object v2, Lnet/yostore/aws/view/search/SearchHandler;->OR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-static {v3}, Lnet/yostore/aws/view/search/SearchHandler;->FileType2Ext(Lnet/yostore/aws/view/search/SearchHandler$FileType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 582
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private parseIconId([Ljava/lang/String;[Ljava/lang/String;)[I
    .locals 6
    .parameter "disp"
    .parameter "isFolder"

    .prologue
    .line 420
    array-length v4, p1

    new-array v2, v4, [I

    .line 421
    .local v2, ii:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, p1

    if-lt v1, v4, :cond_0

    .line 437
    return-object v2

    .line 422
    :cond_0
    aget-object v0, p1, v1

    .line 423
    .local v0, dsp:Ljava/lang/String;
    const-string v4, "1"

    aget-object v5, p2, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 424
    const v4, 0x7f020050

    aput v4, v2, v1

    .line 421
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 426
    :cond_1
    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/search/SearchHandler;->parseMIMEType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 427
    .local v3, tp:Ljava/lang/String;
    const-string v4, "audio/*"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 428
    const v4, 0x7f020088

    aput v4, v2, v1

    goto :goto_1

    .line 429
    :cond_2
    const-string v4, "video/*"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 430
    const v4, 0x7f020087

    aput v4, v2, v1

    goto :goto_1

    .line 431
    :cond_3
    const-string v4, "image/*"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 432
    const v4, 0x7f02009b

    aput v4, v2, v1

    goto :goto_1

    .line 434
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
    .line 325
    const/16 v4, -0x3e7

    .line 326
    .local v4, rtn:I
    if-gez p1, :cond_0

    move v5, v4

    .line 344
    .end local v4           #rtn:I
    .local v5, rtn:I
    :goto_0
    return v5

    .line 328
    .end local v5           #rtn:I
    .restart local v4       #rtn:I
    :cond_0
    iget-object v6, p0, Lnet/yostore/aws/view/search/SearchHandler;->fsInfos:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/yostore/aws/handler/entity/FsInfo;

    .line 330
    .local v2, fi:Lnet/yostore/aws/handler/entity/FsInfo;
    const/4 v0, 0x0

    .line 331
    .local v0, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    const-string v6, "1"

    iget-object v7, v2, Lnet/yostore/aws/handler/entity/FsInfo;->isfolder:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 332
    new-instance v0, Lnet/yostore/aws/api/helper/FolderRemoveHelper;

    .end local v0           #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    iget-object v6, v2, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-direct {v0, v6}, Lnet/yostore/aws/api/helper/FolderRemoveHelper;-><init>(Ljava/lang/String;)V

    .line 336
    .restart local v0       #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    :goto_1
    const/4 v3, 0x0

    .line 338
    .local v3, response:Lnet/yostore/aws/api/entity/ApiResponse;
    :try_start_0
    iget-object v6, p0, Lnet/yostore/aws/view/search/SearchHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v0, v6}, Lnet/yostore/aws/api/helper/BaseHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v3

    .line 339
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/ApiResponse;->getStatus()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :goto_2
    move v5, v4

    .line 344
    .end local v4           #rtn:I
    .restart local v5       #rtn:I
    goto :goto_0

    .line 334
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

    .line 340
    .restart local v3       #response:Lnet/yostore/aws/api/entity/ApiResponse;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 341
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public getAllCount(Lnet/yostore/aws/view/navigate/BrowseAdapter;)V
    .locals 0
    .parameter "browserAdapter"

    .prologue
    .line 141
    return-void
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
    .line 90
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchHandler;->dstack:Ljava/util/Stack;

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
    .line 307
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchHandler;->elist:Ljava/util/List;

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
    .line 75
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchHandler;->fsInfos:Ljava/util/List;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchHandler;->_path:Ljava/lang/String;

    return-object v0
.end method

.method public getPathId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchHandler;->_pathId:Ljava/lang/String;

    return-object v0
.end method

.method public isTop()Z
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchHandler;->dstack:Ljava/util/Stack;

    if-nez v0, :cond_0

    .line 589
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/view/search/SearchHandler;->dstack:Ljava/util/Stack;

    .line 590
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchHandler;->dstack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public parseMIMEType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "end"

    .prologue
    .line 443
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

    .line 446
    const-string v0, "mp3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    const-string v0, "audio/*"

    .line 477
    :goto_0
    return-object v0

    .line 451
    :cond_0
    const-string v0, "avi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mp4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 452
    const-string v0, "mpeg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mpg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 453
    const-string v0, "m4v"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mov"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 454
    const-string v0, "mkv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "vob"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 455
    const-string v0, "vcd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "svcd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 456
    const-string v0, "rm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "rmvb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 457
    const-string v0, "divx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "wmv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 458
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

    .line 460
    :cond_1
    const-string v0, "video/*"

    goto/16 :goto_0

    .line 462
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

    .line 464
    :cond_3
    const-string v0, "image/*"

    goto/16 :goto_0

    .line 467
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

    .line 468
    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 469
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

    .line 470
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

    .line 473
    :cond_5
    const-string v0, "text/*"

    goto/16 :goto_0

    .line 477
    :cond_6
    const-string v0, "*/*"

    goto/16 :goto_0
.end method

.method public searchFileDir(Lnet/yostore/aws/view/navigate/BrowseAdapter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11
    .parameter "browserAdapter"
    .parameter "isFullTextSearch"
    .parameter "keyword"
    .parameter "markid"
    .parameter "ext"
    .parameter "pagesize"

    .prologue
    .line 167
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchHandler;->elist:Ljava/util/List;

    if-nez v0, :cond_0

    .line 168
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/view/search/SearchHandler;->searchtotal:I

    .line 169
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/view/search/SearchHandler;->elist:Ljava/util/List;

    .line 171
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    sget v5, Lnet/yostore/aws/view/search/SearchActivity;->offset:I

    sget-object v6, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->FILE:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    sget-object v1, Lnet/yostore/aws/view/navigate/LibActivity;->awsl:Ljava/util/List;

    sget v2, Lnet/yostore/aws/view/search/SearchActivity;->awsSearchIdx:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v1, p3

    move-object v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p6

    invoke-static/range {v0 .. v7}, Lnet/yostore/aws/view/search/SearchHandler;->getSqlQuery(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;Ljava/lang/String;)Lnet/yostore/aws/api/entity/FulltextQueryResponse;

    move-result-object v10

    .line 172
    .local v10, response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    if-nez v10, :cond_3

    .line 173
    const-string v0, "err.sql.folder.null"

    iput-object v0, p0, Lnet/yostore/aws/view/search/SearchHandler;->errMsg:Ljava/lang/String;

    .line 174
    const-string v0, "LibHandler"

    const-string v1, "getDefaultSqlQuery: response is null(query file)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_1
    :goto_0
    iget v0, p0, Lnet/yostore/aws/view/search/SearchHandler;->searchtotal:I

    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchHandler;->fsInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_7

    .line 227
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/search/SearchHandler;->addMoreItem(Lnet/yostore/aws/view/navigate/BrowseAdapter;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    sget v0, Lnet/yostore/aws/view/search/SearchActivity;->offset:I

    add-int v0, v0, p6

    sput v0, Lnet/yostore/aws/view/search/SearchActivity;->offset:I

    .line 300
    .end local p2
    :cond_2
    :goto_1
    return-void

    .line 176
    .restart local p2
    :cond_3
    invoke-virtual {v10}, Lnet/yostore/aws/api/entity/FulltextQueryResponse;->getStatus()I

    move-result v0

    if-eqz v0, :cond_4

    .line 177
    const-string v0, "err.sql.folder.ngstatus"

    iput-object v0, p0, Lnet/yostore/aws/view/search/SearchHandler;->errMsg:Ljava/lang/String;

    .line 178
    const-string v0, "LibHandler"

    const-string v1, "getDefaultSqlQuery: response file status is not 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 181
    :cond_4
    invoke-virtual {v10}, Lnet/yostore/aws/api/entity/FulltextQueryResponse;->getTotal()I

    move-result v0

    iput v0, p0, Lnet/yostore/aws/view/search/SearchHandler;->searchtotal:I

    .line 183
    invoke-virtual {v10}, Lnet/yostore/aws/api/entity/FulltextQueryResponse;->getEntries()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/search/SearchHandler;->elist:Ljava/util/List;

    .line 184
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchHandler;->elist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 187
    .local v9, itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/EntryInfo;>;"
    invoke-virtual {p1}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_6

    .line 188
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/view/search/SearchHandler;->fsInfos:Ljava/util/List;

    .line 196
    :cond_5
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/yostore/aws/api/entity/EntryInfo;

    .line 198
    .local v8, ei:Lnet/yostore/aws/api/entity/EntryInfo;
    sget-object v0, Lnet/yostore/aws/view/navigate/LibActivity;->awsl:Ljava/util/List;

    sget v1, Lnet/yostore/aws/view/search/SearchActivity;->awsSearchIdx:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lnet/yostore/aws/api/entity/EntryInfo;->setRootFolder(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v8}, Lnet/yostore/aws/api/entity/EntryInfo;->getRawentryname()Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, dsp:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchHandler;->fsInfos:Ljava/util/List;

    new-instance v2, Lnet/yostore/aws/handler/entity/FsInfo;

    invoke-direct {v2, v8}, Lnet/yostore/aws/handler/entity/FsInfo;-><init>(Lnet/yostore/aws/api/entity/EntryInfo;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    new-instance v0, Lnet/yostore/aws/handler/entity/BrowseRaw;

    .line 204
    const-string v2, "0"

    invoke-direct {p0, v1, v2}, Lnet/yostore/aws/view/search/SearchHandler;->getBrowseRawIcon(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 205
    const-string v3, "0"

    .line 206
    invoke-virtual {v8}, Lnet/yostore/aws/api/entity/EntryInfo;->getId()Ljava/lang/String;

    move-result-object v4

    .line 207
    sget-object v5, Lnet/yostore/aws/view/navigate/LibActivity;->awsl:Ljava/util/List;

    sget v6, Lnet/yostore/aws/view/search/SearchActivity;->awsSearchIdx:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 202
    invoke-direct/range {v0 .. v6}, Lnet/yostore/aws/handler/entity/BrowseRaw;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V

    .line 201
    invoke-virtual {p1, v0}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->add(Lnet/yostore/aws/handler/entity/BrowseRaw;)V

    goto :goto_2

    .line 190
    .end local v1           #dsp:Ljava/lang/String;
    .end local v8           #ei:Lnet/yostore/aws/api/entity/EntryInfo;
    :cond_6
    iget v0, p0, Lnet/yostore/aws/view/search/SearchHandler;->searchtotal:I

    if-eqz v0, :cond_5

    .line 191
    invoke-virtual {p1}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->getItem(I)Lnet/yostore/aws/handler/entity/BrowseRaw;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->remove(Lnet/yostore/aws/handler/entity/BrowseRaw;)V

    .line 192
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchHandler;->fsInfos:Ljava/util/List;

    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchHandler;->fsInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 229
    .end local v9           #itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/EntryInfo;>;"
    :cond_7
    iget v0, p0, Lnet/yostore/aws/view/search/SearchHandler;->searchtotal:I

    if-lez v0, :cond_b

    .line 230
    const/4 v0, 0x0

    sput v0, Lnet/yostore/aws/view/search/SearchActivity;->offset:I

    .line 231
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/view/search/SearchHandler;->searchtotal:I

    .line 232
    sget v0, Lnet/yostore/aws/view/search/SearchActivity;->awsSearchIdx:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lnet/yostore/aws/view/search/SearchActivity;->awsSearchIdx:I

    .line 233
    .end local p2
    :goto_3
    sget v0, Lnet/yostore/aws/view/search/SearchActivity;->awsSearchIdx:I

    sget-object v1, Lnet/yostore/aws/view/search/SearchActivity;->awsSearchCnt:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_9

    .line 241
    :cond_8
    sget v0, Lnet/yostore/aws/view/search/SearchActivity;->awsSearchIdx:I

    sget-object v1, Lnet/yostore/aws/view/navigate/LibActivity;->awsl:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 252
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/search/SearchHandler;->addMoreItem(Lnet/yostore/aws/view/navigate/BrowseAdapter;)Z

    goto/16 :goto_1

    .line 234
    :cond_9
    sget v0, Lnet/yostore/aws/view/search/SearchActivity;->awsSearchIdx:I

    sget-object v1, Lnet/yostore/aws/view/search/SearchActivity;->awsSearchCnt:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    sget-object v0, Lnet/yostore/aws/view/search/SearchActivity;->awsSearchCnt:Ljava/util/List;

    sget v1, Lnet/yostore/aws/view/search/SearchActivity;->awsSearchIdx:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_8

    .line 237
    :cond_a
    sget v0, Lnet/yostore/aws/view/search/SearchActivity;->awsSearchIdx:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lnet/yostore/aws/view/search/SearchActivity;->awsSearchIdx:I

    .line 238
    const/4 v0, 0x0

    sput v0, Lnet/yostore/aws/view/search/SearchActivity;->offset:I

    goto :goto_3

    .line 254
    .restart local p2
    :cond_b
    iget v0, p0, Lnet/yostore/aws/view/search/SearchHandler;->searchtotal:I

    if-nez v0, :cond_10

    .line 255
    const/4 v0, 0x0

    sput v0, Lnet/yostore/aws/view/search/SearchActivity;->offset:I

    .line 256
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/view/search/SearchHandler;->searchtotal:I

    .line 257
    sget v0, Lnet/yostore/aws/view/search/SearchActivity;->awsSearchIdx:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lnet/yostore/aws/view/search/SearchActivity;->awsSearchIdx:I

    .line 258
    :goto_4
    sget v0, Lnet/yostore/aws/view/search/SearchActivity;->awsSearchIdx:I

    sget-object v1, Lnet/yostore/aws/view/search/SearchActivity;->awsSearchCnt:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_d

    .line 266
    :cond_c
    sget v0, Lnet/yostore/aws/view/search/SearchActivity;->awsSearchIdx:I

    sget-object v1, Lnet/yostore/aws/view/navigate/LibActivity;->awsl:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_f

    .line 267
    invoke-virtual/range {p0 .. p6}, Lnet/yostore/aws/view/search/SearchHandler;->searchFileDir(Lnet/yostore/aws/view/navigate/BrowseAdapter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 259
    :cond_d
    sget v0, Lnet/yostore/aws/view/search/SearchActivity;->awsSearchIdx:I

    sget-object v1, Lnet/yostore/aws/view/search/SearchActivity;->awsSearchCnt:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_e

    sget-object v0, Lnet/yostore/aws/view/search/SearchActivity;->awsSearchCnt:Ljava/util/List;

    sget v1, Lnet/yostore/aws/view/search/SearchActivity;->awsSearchIdx:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_c

    .line 262
    :cond_e
    sget v0, Lnet/yostore/aws/view/search/SearchActivity;->awsSearchIdx:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lnet/yostore/aws/view/search/SearchActivity;->awsSearchIdx:I

    .line 263
    const/4 v0, 0x0

    sput v0, Lnet/yostore/aws/view/search/SearchActivity;->offset:I

    goto :goto_4

    .line 269
    :cond_f
    invoke-virtual {p1}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 270
    invoke-virtual {p1}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->getItem(I)Lnet/yostore/aws/handler/entity/BrowseRaw;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->remove(Lnet/yostore/aws/handler/entity/BrowseRaw;)V

    .line 271
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchHandler;->fsInfos:Ljava/util/List;

    iget-object v1, p0, Lnet/yostore/aws/view/search/SearchHandler;->fsInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 275
    :cond_10
    const/4 v0, 0x0

    sput v0, Lnet/yostore/aws/view/search/SearchActivity;->offset:I

    .line 276
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/view/search/SearchHandler;->searchtotal:I

    .line 277
    sget v0, Lnet/yostore/aws/view/search/SearchActivity;->awsSearchIdx:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lnet/yostore/aws/view/search/SearchActivity;->awsSearchIdx:I

    .line 278
    .end local p2
    :goto_5
    sget v0, Lnet/yostore/aws/view/search/SearchActivity;->awsSearchIdx:I

    sget-object v1, Lnet/yostore/aws/view/search/SearchActivity;->awsSearchCnt:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_12

    .line 286
    :cond_11
    sget v0, Lnet/yostore/aws/view/search/SearchActivity;->awsSearchIdx:I

    sget-object v1, Lnet/yostore/aws/view/navigate/LibActivity;->awsl:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 296
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/search/SearchHandler;->addMoreItem(Lnet/yostore/aws/view/navigate/BrowseAdapter;)Z

    goto/16 :goto_1

    .line 279
    :cond_12
    sget v0, Lnet/yostore/aws/view/search/SearchActivity;->awsSearchIdx:I

    sget-object v1, Lnet/yostore/aws/view/search/SearchActivity;->awsSearchCnt:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_13

    sget-object v0, Lnet/yostore/aws/view/search/SearchActivity;->awsSearchCnt:Ljava/util/List;

    sget v1, Lnet/yostore/aws/view/search/SearchActivity;->awsSearchIdx:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_11

    .line 282
    :cond_13
    sget v0, Lnet/yostore/aws/view/search/SearchActivity;->awsSearchIdx:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lnet/yostore/aws/view/search/SearchActivity;->awsSearchIdx:I

    .line 283
    const/4 v0, 0x0

    sput v0, Lnet/yostore/aws/view/search/SearchActivity;->offset:I

    goto :goto_5
.end method

.method public setCurrentEntryInfo(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 321
    iget-object v0, p0, Lnet/yostore/aws/view/search/SearchHandler;->elist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/api/entity/EntryInfo;

    iput-object v0, p0, Lnet/yostore/aws/view/search/SearchHandler;->eventInfo:Lnet/yostore/aws/api/entity/EntryInfo;

    .line 322
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
    .line 91
    .local p1, dstack:Ljava/util/Stack;,"Ljava/util/Stack<Lnet/yostore/aws/handler/entity/CPath;>;"
    iput-object p1, p0, Lnet/yostore/aws/view/search/SearchHandler;->dstack:Ljava/util/Stack;

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
    .line 310
    .local p1, elist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/EntryInfo;>;"
    iput-object p1, p0, Lnet/yostore/aws/view/search/SearchHandler;->elist:Ljava/util/List;

    .line 311
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
    .line 76
    .local p1, fsInfos:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/FsInfo;>;"
    iput-object p1, p0, Lnet/yostore/aws/view/search/SearchHandler;->fsInfos:Ljava/util/List;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .parameter "_path"

    .prologue
    .line 79
    iput-object p1, p0, Lnet/yostore/aws/view/search/SearchHandler;->_path:Ljava/lang/String;

    return-void
.end method

.method public setPathId(Ljava/lang/String;)V
    .locals 0
    .parameter "_pathId"

    .prologue
    .line 82
    iput-object p1, p0, Lnet/yostore/aws/view/search/SearchHandler;->_pathId:Ljava/lang/String;

    return-void
.end method
