.class public Lnet/yostore/aws/view/navigate/PlayListHandler;
.super Ljava/lang/Object;
.source "PlayListHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/view/navigate/PlayListHandler$FileType;,
        Lnet/yostore/aws/view/navigate/PlayListHandler$ROOT;,
        Lnet/yostore/aws/view/navigate/PlayListHandler$SearchType;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$net$yostore$aws$view$navigate$PlayListHandler$FileType:[I = null

.field private static synthetic $SWITCH_TABLE$net$yostore$aws$view$navigate$PlayListHandler$ROOT:[I = null

.field static final DOC_EX:Ljava/lang/String; = "pdf or doc or docx or html or htm or txt"

.field private static final GB:J = 0x40000000L

.field private static final KB:J = 0x400L

.field private static final MB:J = 0x100000L

.field static final MUS_EX:Ljava/lang/String; = "aac or ac3 or aiff or ape or flac or mp2 or mp3 or ogg or wav or wma"

.field private static OR:Ljava/lang/String; = null

.field static final PIC_EX:Ljava/lang/String; = "jpeg or jpg or bmp or png"

.field private static final TAG:Ljava/lang/String; = "PlayListHandler"

.field private static final TB:J = 0x10000000000L

.field static final VID_EX:Ljava/lang/String; = "flv or 3gp"

.field public static nav:Lnet/yostore/aws/view/navigate/PlayListHandler;


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

.field public root:Lnet/yostore/aws/view/navigate/PlayListHandler$ROOT;

.field public searchtotal:I


# direct methods
.method static synthetic $SWITCH_TABLE$net$yostore$aws$view$navigate$PlayListHandler$FileType()[I
    .locals 3

    .prologue
    .line 62
    sget-object v0, Lnet/yostore/aws/view/navigate/PlayListHandler;->$SWITCH_TABLE$net$yostore$aws$view$navigate$PlayListHandler$FileType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lnet/yostore/aws/view/navigate/PlayListHandler$FileType;->values()[Lnet/yostore/aws/view/navigate/PlayListHandler$FileType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lnet/yostore/aws/view/navigate/PlayListHandler$FileType;->ALL:Lnet/yostore/aws/view/navigate/PlayListHandler$FileType;

    invoke-virtual {v1}, Lnet/yostore/aws/view/navigate/PlayListHandler$FileType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lnet/yostore/aws/view/navigate/PlayListHandler$FileType;->DOC:Lnet/yostore/aws/view/navigate/PlayListHandler$FileType;

    invoke-virtual {v1}, Lnet/yostore/aws/view/navigate/PlayListHandler$FileType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lnet/yostore/aws/view/navigate/PlayListHandler$FileType;->MUSIC:Lnet/yostore/aws/view/navigate/PlayListHandler$FileType;

    invoke-virtual {v1}, Lnet/yostore/aws/view/navigate/PlayListHandler$FileType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lnet/yostore/aws/view/navigate/PlayListHandler$FileType;->PIC:Lnet/yostore/aws/view/navigate/PlayListHandler$FileType;

    invoke-virtual {v1}, Lnet/yostore/aws/view/navigate/PlayListHandler$FileType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lnet/yostore/aws/view/navigate/PlayListHandler$FileType;->VIDEO:Lnet/yostore/aws/view/navigate/PlayListHandler$FileType;

    invoke-virtual {v1}, Lnet/yostore/aws/view/navigate/PlayListHandler$FileType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lnet/yostore/aws/view/navigate/PlayListHandler;->$SWITCH_TABLE$net$yostore$aws$view$navigate$PlayListHandler$FileType:[I

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

.method static synthetic $SWITCH_TABLE$net$yostore$aws$view$navigate$PlayListHandler$ROOT()[I
    .locals 3

    .prologue
    .line 62
    sget-object v0, Lnet/yostore/aws/view/navigate/PlayListHandler;->$SWITCH_TABLE$net$yostore$aws$view$navigate$PlayListHandler$ROOT:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lnet/yostore/aws/view/navigate/PlayListHandler$ROOT;->values()[Lnet/yostore/aws/view/navigate/PlayListHandler$ROOT;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lnet/yostore/aws/view/navigate/PlayListHandler$ROOT;->Lib:Lnet/yostore/aws/view/navigate/PlayListHandler$ROOT;

    invoke-virtual {v1}, Lnet/yostore/aws/view/navigate/PlayListHandler$ROOT;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lnet/yostore/aws/view/navigate/PlayListHandler$ROOT;->PlayList:Lnet/yostore/aws/view/navigate/PlayListHandler$ROOT;

    invoke-virtual {v1}, Lnet/yostore/aws/view/navigate/PlayListHandler$ROOT;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lnet/yostore/aws/view/navigate/PlayListHandler$ROOT;->Search:Lnet/yostore/aws/view/navigate/PlayListHandler$ROOT;

    invoke-virtual {v1}, Lnet/yostore/aws/view/navigate/PlayListHandler$ROOT;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lnet/yostore/aws/view/navigate/PlayListHandler;->$SWITCH_TABLE$net$yostore$aws$view$navigate$PlayListHandler$ROOT:[I

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
    .line 73
    const-string v0, " or "

    sput-object v0, Lnet/yostore/aws/view/navigate/PlayListHandler;->OR:Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    sput-object v0, Lnet/yostore/aws/view/navigate/PlayListHandler;->nav:Lnet/yostore/aws/view/navigate/PlayListHandler;

    .line 62
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->errMsg:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->ctx:Landroid/content/Context;

    .line 79
    iput-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->homeid:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->homedisp:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 83
    sget-object v0, Lnet/yostore/aws/view/navigate/PlayListHandler$ROOT;->Lib:Lnet/yostore/aws/view/navigate/PlayListHandler$ROOT;

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->root:Lnet/yostore/aws/view/navigate/PlayListHandler$ROOT;

    .line 86
    iput-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->fsInfos:Ljava/util/List;

    .line 90
    iput-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->_path:Ljava/lang/String;

    .line 93
    iput-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->_pathId:Ljava/lang/String;

    .line 162
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->searchtotal:I

    .line 103
    return-void
.end method

.method private static FileType2Ext(Lnet/yostore/aws/view/navigate/PlayListHandler$FileType;)Ljava/lang/String;
    .locals 3
    .parameter "ft"

    .prologue
    .line 751
    const-string v0, ""

    .line 753
    .local v0, rtn:Ljava/lang/String;
    invoke-static {}, Lnet/yostore/aws/view/navigate/PlayListHandler;->$SWITCH_TABLE$net$yostore$aws$view$navigate$PlayListHandler$FileType()[I

    move-result-object v1

    invoke-virtual {p0}, Lnet/yostore/aws/view/navigate/PlayListHandler$FileType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 770
    :goto_0
    return-object v0

    .line 755
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pdf or doc or docx or html or htm or txt"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lnet/yostore/aws/view/navigate/PlayListHandler;->OR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "jpeg or jpg or bmp or png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lnet/yostore/aws/view/navigate/PlayListHandler;->OR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "flv or 3gp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lnet/yostore/aws/view/navigate/PlayListHandler;->OR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "aac or ac3 or aiff or ape or flac or mp2 or mp3 or ogg or wav or wma"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 756
    goto :goto_0

    .line 758
    :pswitch_1
    const-string v0, "pdf or doc or docx or html or htm or txt"

    .line 759
    goto :goto_0

    .line 761
    :pswitch_2
    const-string v0, "jpeg or jpg or bmp or png"

    .line 762
    goto :goto_0

    .line 764
    :pswitch_3
    const-string v0, "flv or 3gp"

    .line 765
    goto :goto_0

    .line 767
    :pswitch_4
    const-string v0, "aac or ac3 or aiff or ape or flac or mp2 or mp3 or ogg or wav or wma"

    goto :goto_0

    .line 753
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
    .line 583
    const/4 v0, 0x0

    .line 584
    .local v0, rtn:I
    const-string v2, "1"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 585
    const v0, 0x7f020050

    .line 597
    :goto_0
    return v0

    .line 587
    :cond_0
    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/navigate/PlayListHandler;->parseMIMEType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 588
    .local v1, tp:Ljava/lang/String;
    const-string v2, "audio/*"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 589
    const v0, 0x7f020088

    goto :goto_0

    .line 590
    :cond_1
    const-string v2, "video/*"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 591
    const v0, 0x7f020087

    goto :goto_0

    .line 592
    :cond_2
    const-string v2, "image/*"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 593
    const v0, 0x7f02009b

    goto :goto_0

    .line 595
    :cond_3
    const v0, 0x7f020046

    goto :goto_0
.end method

.method private getCloudFileDir(Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/handler/entity/CPath;)Lnet/yostore/aws/view/navigate/BrowseAdapter;
    .locals 16
    .parameter "display"
    .parameter "fid"
    .parameter "xcpath"

    .prologue
    .line 383
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/yostore/aws/view/navigate/PlayListHandler;->_path:Ljava/lang/String;

    .line 384
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/yostore/aws/view/navigate/PlayListHandler;->_pathId:Ljava/lang/String;

    .line 385
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 386
    .local v11, brlist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/BrowseRaw;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/yostore/aws/view/navigate/PlayListHandler;->fsInfos:Ljava/util/List;

    .line 387
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-wide v3, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/navigate/PlayListHandler;->ctx:Landroid/content/Context;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/navigate/PlayListHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    move-object v3, v0

    iget-object v3, v3, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-static {v2, v3}, Lnet/yostore/aws/sqlite/helper/PlayListHelper;->getAllPlayList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 389
    .local v14, pList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/PlayList;>;"
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    if-lt v13, v2, :cond_1

    .line 523
    .end local v14           #pList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/PlayList;>;"
    :cond_0
    new-instance v10, Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/navigate/PlayListHandler;->ctx:Landroid/content/Context;

    move-object v2, v0

    const v3, 0x7f030007

    invoke-direct {v10, v2, v3, v11}, Lnet/yostore/aws/view/navigate/BrowseAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 524
    .local v10, ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;
    invoke-static/range {p2 .. p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v10, Lnet/yostore/aws/view/navigate/BrowseAdapter;->browseFolderid:J

    .line 525
    return-object v10

    .line 390
    .end local v10           #ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;
    .restart local v14       #pList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/PlayList;>;"
    :cond_1
    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/yostore/aws/sqlite/entity/PlayList;

    .line 392
    .local v9, _list:Lnet/yostore/aws/sqlite/entity/PlayList;
    new-instance v2, Lnet/yostore/aws/handler/entity/BrowseRaw;

    .line 393
    iget-object v3, v9, Lnet/yostore/aws/sqlite/entity/PlayList;->display:Ljava/lang/String;

    .line 394
    const v4, 0x7f020050

    .line 395
    const-string v5, "1"

    .line 396
    iget-object v6, v9, Lnet/yostore/aws/sqlite/entity/PlayList;->plistid:Ljava/lang/String;

    .line 397
    sget-wide v7, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    .line 392
    invoke-direct/range {v2 .. v8}, Lnet/yostore/aws/handler/entity/BrowseRaw;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V

    .line 391
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    new-instance v12, Lnet/yostore/aws/api/entity/FolderInfo;

    invoke-direct {v12}, Lnet/yostore/aws/api/entity/FolderInfo;-><init>()V

    .line 401
    .local v12, fi:Lnet/yostore/aws/api/entity/FolderInfo;
    const-string v2, ""

    invoke-virtual {v12, v2}, Lnet/yostore/aws/api/entity/FolderInfo;->setAttribute(Ljava/lang/String;)V

    .line 402
    iget-object v2, v9, Lnet/yostore/aws/sqlite/entity/PlayList;->display:Ljava/lang/String;

    invoke-virtual {v12, v2}, Lnet/yostore/aws/api/entity/FolderInfo;->setDisplay(Ljava/lang/String;)V

    .line 403
    iget-object v2, v9, Lnet/yostore/aws/sqlite/entity/PlayList;->plistid:Ljava/lang/String;

    invoke-virtual {v12, v2}, Lnet/yostore/aws/api/entity/FolderInfo;->setId(Ljava/lang/String;)V

    .line 404
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lnet/yostore/aws/api/entity/FolderInfo;->setIsbackup(Z)V

    .line 405
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lnet/yostore/aws/api/entity/FolderInfo;->setIsencrypted(Z)V

    .line 406
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lnet/yostore/aws/api/entity/FolderInfo;->setIsorigdeleted(Z)V

    .line 407
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Lnet/yostore/aws/api/entity/FolderInfo;->setIsowner(Z)V

    .line 408
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lnet/yostore/aws/api/entity/FolderInfo;->setIspublic(Z)V

    .line 409
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lnet/yostore/aws/api/entity/FolderInfo;->setIssharing(Z)V

    .line 410
    const-string v2, ""

    invoke-virtual {v12, v2}, Lnet/yostore/aws/api/entity/FolderInfo;->setMarkid(Ljava/lang/String;)V

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/navigate/PlayListHandler;->fsInfos:Ljava/util/List;

    move-object v2, v0

    new-instance v3, Lnet/yostore/aws/handler/entity/FsInfo;

    invoke-direct {v3, v12}, Lnet/yostore/aws/handler/entity/FsInfo;-><init>(Lnet/yostore/aws/api/entity/FolderInfo;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 414
    .end local v9           #_list:Lnet/yostore/aws/sqlite/entity/PlayList;
    .end local v12           #fi:Lnet/yostore/aws/api/entity/FolderInfo;
    .end local v13           #i:I
    .end local v14           #pList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/PlayList;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/navigate/PlayListHandler;->ctx:Landroid/content/Context;

    move-object v2, v0

    move-object v0, v2

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lnet/yostore/aws/sqlite/helper/SongHelper;->getSongListByPlist(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 416
    .local v15, sList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/Song;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v13, v2, v3

    .restart local v13       #i:I
    :goto_1
    if-ltz v13, :cond_0

    .line 417
    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/yostore/aws/sqlite/entity/Song;

    .line 419
    .local v9, _list:Lnet/yostore/aws/sqlite/entity/Song;
    new-instance v2, Lnet/yostore/aws/handler/entity/BrowseRaw;

    .line 420
    iget-object v3, v9, Lnet/yostore/aws/sqlite/entity/Song;->display:Ljava/lang/String;

    .line 421
    const v4, 0x7f02004f

    .line 422
    const-string v5, "0"

    .line 423
    iget-object v6, v9, Lnet/yostore/aws/sqlite/entity/Song;->plistid:Ljava/lang/String;

    .line 424
    sget-wide v7, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    .line 419
    invoke-direct/range {v2 .. v8}, Lnet/yostore/aws/handler/entity/BrowseRaw;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V

    .line 418
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    new-instance v12, Lnet/yostore/aws/api/entity/FileInfo;

    invoke-direct {v12}, Lnet/yostore/aws/api/entity/FileInfo;-><init>()V

    .line 429
    .local v12, fi:Lnet/yostore/aws/api/entity/FileInfo;
    const-string v2, ""

    invoke-virtual {v12, v2}, Lnet/yostore/aws/api/entity/FileInfo;->setAttribute(Ljava/lang/String;)V

    .line 430
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, v9, Lnet/yostore/aws/sqlite/entity/Song;->mp3id:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v9, Lnet/yostore/aws/sqlite/entity/Song;->display:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lnet/yostore/aws/api/entity/FileInfo;->setDisplay(Ljava/lang/String;)V

    .line 431
    iget-object v2, v9, Lnet/yostore/aws/sqlite/entity/Song;->shortcutid:Ljava/lang/String;

    invoke-virtual {v12, v2}, Lnet/yostore/aws/api/entity/FileInfo;->setId(Ljava/lang/String;)V

    .line 432
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lnet/yostore/aws/api/entity/FileInfo;->setIsbackup(Z)V

    .line 433
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lnet/yostore/aws/api/entity/FileInfo;->setIsencrypted(Z)V

    .line 434
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lnet/yostore/aws/api/entity/FileInfo;->setIsorigdeleted(Z)V

    .line 435
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Lnet/yostore/aws/api/entity/FileInfo;->setIsowner(Z)V

    .line 436
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lnet/yostore/aws/api/entity/FileInfo;->setIspublic(Z)V

    .line 437
    const-string v2, ""

    invoke-virtual {v12, v2}, Lnet/yostore/aws/api/entity/FileInfo;->setMarkid(Ljava/lang/String;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/view/navigate/PlayListHandler;->fsInfos:Ljava/util/List;

    move-object v2, v0

    new-instance v3, Lnet/yostore/aws/handler/entity/FsInfo;

    invoke-direct {v3, v12}, Lnet/yostore/aws/handler/entity/FsInfo;-><init>(Lnet/yostore/aws/api/entity/FileInfo;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    add-int/lit8 v13, v13, -0x1

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;Lnet/yostore/aws/view/navigate/PlayListHandler$ROOT;Lnet/yostore/aws/api/ApiConfig;Landroid/content/SharedPreferences;)Lnet/yostore/aws/view/navigate/PlayListHandler;
    .locals 4
    .parameter "ctx"
    .parameter "root"
    .parameter "apicfg"
    .parameter "mPrefs"

    .prologue
    .line 105
    sget-object v1, Lnet/yostore/aws/view/navigate/PlayListHandler;->nav:Lnet/yostore/aws/view/navigate/PlayListHandler;

    if-nez v1, :cond_5

    .line 106
    new-instance v1, Lnet/yostore/aws/view/navigate/PlayListHandler;

    invoke-direct {v1}, Lnet/yostore/aws/view/navigate/PlayListHandler;-><init>()V

    sput-object v1, Lnet/yostore/aws/view/navigate/PlayListHandler;->nav:Lnet/yostore/aws/view/navigate/PlayListHandler;

    .line 107
    sget-object v1, Lnet/yostore/aws/view/navigate/PlayListHandler;->nav:Lnet/yostore/aws/view/navigate/PlayListHandler;

    const-string v2, ""

    iput-object v2, v1, Lnet/yostore/aws/view/navigate/PlayListHandler;->errMsg:Ljava/lang/String;

    .line 108
    sget-object v1, Lnet/yostore/aws/view/navigate/PlayListHandler;->nav:Lnet/yostore/aws/view/navigate/PlayListHandler;

    iput-object p0, v1, Lnet/yostore/aws/view/navigate/PlayListHandler;->ctx:Landroid/content/Context;

    .line 109
    sget-object v1, Lnet/yostore/aws/view/navigate/PlayListHandler;->nav:Lnet/yostore/aws/view/navigate/PlayListHandler;

    iput-object p1, v1, Lnet/yostore/aws/view/navigate/PlayListHandler;->root:Lnet/yostore/aws/view/navigate/PlayListHandler$ROOT;

    .line 110
    sget-object v1, Lnet/yostore/aws/view/navigate/PlayListHandler;->nav:Lnet/yostore/aws/view/navigate/PlayListHandler;

    iput-object p2, v1, Lnet/yostore/aws/view/navigate/PlayListHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 111
    invoke-static {p2}, Lnet/yostore/aws/handler/LoginHandler;->validateApiCfg(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v0

    .line 112
    .local v0, aaastat:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-eq v0, v1, :cond_0

    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->FREEZE:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v1, :cond_2

    .line 113
    :cond_0
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->FREEZE:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v1, :cond_1

    sget-object v1, Lnet/yostore/aws/view/navigate/PlayListHandler;->nav:Lnet/yostore/aws/view/navigate/PlayListHandler;

    const-string v2, "err.login.freeze"

    iput-object v2, v1, Lnet/yostore/aws/view/navigate/PlayListHandler;->errMsg:Ljava/lang/String;

    .line 116
    :goto_0
    invoke-static {p2, p3}, Lnet/yostore/aws/preferences/Ap;->apiCfg2Pref(Lnet/yostore/aws/api/ApiConfig;Landroid/content/SharedPreferences;)V

    .line 118
    invoke-static {}, Lnet/yostore/aws/view/navigate/PlayListHandler;->$SWITCH_TABLE$net$yostore$aws$view$navigate$PlayListHandler$ROOT()[I

    move-result-object v1

    invoke-virtual {p1}, Lnet/yostore/aws/view/navigate/PlayListHandler$ROOT;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 132
    :goto_1
    sget-object v1, Lnet/yostore/aws/view/navigate/PlayListHandler;->nav:Lnet/yostore/aws/view/navigate/PlayListHandler;

    .line 147
    .end local v0           #aaastat:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    :goto_2
    return-object v1

    .line 114
    .restart local v0       #aaastat:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    :cond_1
    sget-object v1, Lnet/yostore/aws/view/navigate/PlayListHandler;->nav:Lnet/yostore/aws/view/navigate/PlayListHandler;

    const-string v2, ""

    iput-object v2, v1, Lnet/yostore/aws/view/navigate/PlayListHandler;->errMsg:Ljava/lang/String;

    goto :goto_0

    .line 120
    :pswitch_0
    sget-object v1, Lnet/yostore/aws/view/navigate/PlayListHandler;->nav:Lnet/yostore/aws/view/navigate/PlayListHandler;

    sget-wide v2, Lcom/ecareme/mear/Mear;->lib_folder_id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lnet/yostore/aws/view/navigate/PlayListHandler;->homeid:Ljava/lang/String;

    .line 121
    sget-object v1, Lnet/yostore/aws/view/navigate/PlayListHandler;->nav:Lnet/yostore/aws/view/navigate/PlayListHandler;

    const v2, 0x7f06007d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lnet/yostore/aws/view/navigate/PlayListHandler;->homedisp:Ljava/lang/String;

    goto :goto_1

    .line 124
    :pswitch_1
    sget-object v1, Lnet/yostore/aws/view/navigate/PlayListHandler;->nav:Lnet/yostore/aws/view/navigate/PlayListHandler;

    sget-wide v2, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lnet/yostore/aws/view/navigate/PlayListHandler;->homeid:Ljava/lang/String;

    .line 125
    sget-object v1, Lnet/yostore/aws/view/navigate/PlayListHandler;->nav:Lnet/yostore/aws/view/navigate/PlayListHandler;

    const v2, 0x7f06007e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lnet/yostore/aws/view/navigate/PlayListHandler;->homedisp:Ljava/lang/String;

    goto :goto_1

    .line 128
    :pswitch_2
    sget-object v1, Lnet/yostore/aws/view/navigate/PlayListHandler;->nav:Lnet/yostore/aws/view/navigate/PlayListHandler;

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

    iput-object v2, v1, Lnet/yostore/aws/view/navigate/PlayListHandler;->homeid:Ljava/lang/String;

    .line 129
    sget-object v1, Lnet/yostore/aws/view/navigate/PlayListHandler;->nav:Lnet/yostore/aws/view/navigate/PlayListHandler;

    const v2, 0x7f060037

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lnet/yostore/aws/view/navigate/PlayListHandler;->homedisp:Ljava/lang/String;

    goto :goto_1

    .line 134
    :cond_2
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->Err:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v1, :cond_3

    .line 135
    sget-object v1, Lnet/yostore/aws/view/navigate/PlayListHandler;->nav:Lnet/yostore/aws/view/navigate/PlayListHandler;

    const-string v2, "err.login.fail"

    iput-object v2, v1, Lnet/yostore/aws/view/navigate/PlayListHandler;->errMsg:Ljava/lang/String;

    .line 136
    sget-object v1, Lnet/yostore/aws/view/navigate/PlayListHandler;->nav:Lnet/yostore/aws/view/navigate/PlayListHandler;

    goto :goto_2

    .line 138
    :cond_3
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v1, :cond_4

    .line 140
    sget-object v1, Lnet/yostore/aws/view/navigate/PlayListHandler;->nav:Lnet/yostore/aws/view/navigate/PlayListHandler;

    const-string v2, "err.login.reject"

    iput-object v2, v1, Lnet/yostore/aws/view/navigate/PlayListHandler;->errMsg:Ljava/lang/String;

    .line 141
    sget-object v1, Lnet/yostore/aws/view/navigate/PlayListHandler;->nav:Lnet/yostore/aws/view/navigate/PlayListHandler;

    goto :goto_2

    .line 144
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 147
    .end local v0           #aaastat:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    :cond_5
    sget-object v1, Lnet/yostore/aws/view/navigate/PlayListHandler;->nav:Lnet/yostore/aws/view/navigate/PlayListHandler;

    goto :goto_2

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getKind([Lnet/yostore/aws/view/navigate/PlayListHandler$FileType;)Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;
    .locals 5
    .parameter "fts"

    .prologue
    .line 736
    sget-object v1, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->FILE:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    .line 737
    .local v1, rtn:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    .line 743
    :goto_1
    return-object v1

    .line 737
    :cond_0
    aget-object v0, p0, v3

    .line 738
    .local v0, ft:Lnet/yostore/aws/view/navigate/PlayListHandler$FileType;
    sget-object v4, Lnet/yostore/aws/view/navigate/PlayListHandler$FileType;->ALL:Lnet/yostore/aws/view/navigate/PlayListHandler$FileType;

    if-ne v0, v4, :cond_1

    .line 739
    sget-object v1, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->ALL:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    .line 740
    goto :goto_1

    .line 737
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getMySyncFolderId()Ljava/lang/String;
    .locals 9

    .prologue
    .line 542
    iget-object v6, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v6, v6, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v6, v6, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 543
    :cond_0
    new-instance v1, Lnet/yostore/aws/api/helper/FindPropfindHelper;

    .line 544
    const-string v6, "-5"

    const-string v7, "MySyncFolder"

    const-string v8, "system.folder"

    .line 543
    invoke-direct {v1, v6, v7, v8}, Lnet/yostore/aws/api/helper/FindPropfindHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    .local v1, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    const/4 v5, 0x0

    .line 547
    .local v5, response:Lnet/yostore/aws/api/entity/FindPropfindResponse;
    :try_start_0
    iget-object v6, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v1, v6}, Lnet/yostore/aws/api/helper/FindPropfindHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lnet/yostore/aws/api/entity/FindPropfindResponse;

    move-object v5, v0

    .line 548
    invoke-virtual {v5}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getStatus()I

    move-result v6

    if-nez v6, :cond_2

    .line 550
    iget-object v6, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v5}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    .line 551
    iget-object v6, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v6, v6, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 552
    new-instance v3, Lnet/yostore/aws/api/helper/FolderCreateHelper;

    .line 553
    const-string v6, "-5"

    const-string v7, "MySyncFolder"

    const-string v8, ""

    .line 552
    invoke-direct {v3, v6, v7, v8}, Lnet/yostore/aws/api/helper/FolderCreateHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    .local v3, fcapihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    const/4 v4, 0x0

    .line 555
    .local v4, fcresponse:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    iget-object v6, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v3, v6}, Lnet/yostore/aws/api/helper/FolderCreateHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v4

    .end local v4           #fcresponse:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    check-cast v4, Lnet/yostore/aws/api/entity/FolderCreateResponse;

    .line 556
    .restart local v4       #fcresponse:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/FolderCreateResponse;->getStatus()I

    move-result v6

    if-nez v6, :cond_1

    .line 558
    iget-object v6, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/FolderCreateResponse;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    .end local v3           #fcapihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .end local v4           #fcresponse:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    :cond_1
    :goto_0
    iget-object v6, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v6, v6, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    .line 579
    .end local v1           #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .end local v5           #response:Lnet/yostore/aws/api/entity/FindPropfindResponse;
    :goto_1
    return-object v6

    .line 561
    .restart local v1       #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .restart local v5       #response:Lnet/yostore/aws/api/entity/FindPropfindResponse;
    :cond_2
    :try_start_1
    invoke-virtual {v5}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getStatus()I

    move-result v6

    const/16 v7, 0xda

    if-ne v6, v7, :cond_1

    .line 562
    new-instance v3, Lnet/yostore/aws/api/helper/FolderCreateHelper;

    .line 563
    const-string v6, "-5"

    const-string v7, "MySyncFolder"

    const-string v8, ""

    .line 562
    invoke-direct {v3, v6, v7, v8}, Lnet/yostore/aws/api/helper/FolderCreateHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    .restart local v3       #fcapihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    const/4 v4, 0x0

    .line 565
    .restart local v4       #fcresponse:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    iget-object v6, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v3, v6}, Lnet/yostore/aws/api/helper/FolderCreateHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v4

    .end local v4           #fcresponse:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    check-cast v4, Lnet/yostore/aws/api/entity/FolderCreateResponse;

    .line 566
    .restart local v4       #fcresponse:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/FolderCreateResponse;->getStatus()I

    move-result v6

    if-nez v6, :cond_1

    .line 568
    iget-object v6, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/FolderCreateResponse;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 571
    .end local v3           #fcapihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .end local v4           #fcresponse:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 572
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->errMsg:Ljava/lang/String;

    .line 573
    const/4 v6, 0x0

    goto :goto_1

    .line 579
    .end local v1           #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v5           #response:Lnet/yostore/aws/api/entity/FindPropfindResponse;
    :cond_3
    iget-object v6, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

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

    .line 533
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

    .line 537
    :goto_0
    return-object v0

    .line 534
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

    .line 535
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

    .line 536
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

    .line 537
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

    .line 316
    new-instance v5, Ljava/util/Stack;

    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    iput-object v5, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->dstack:Ljava/util/Stack;

    .line 319
    iget-object v5, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->eventSharedInfo:Lnet/yostore/aws/api/entity/UserSharedFolderInfo;

    if-eqz v5, :cond_1

    .line 320
    move-object v0, v4

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0

    .line 321
    .local v3, ids:[Ljava/lang/String;
    move-object v0, v4

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0

    .line 326
    .local v1, dsps:[Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    array-length v4, v3

    array-length v5, v1

    if-ne v4, v5, :cond_0

    .line 327
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v4, v3

    if-lt v2, v4, :cond_2

    .line 331
    .end local v2           #i:I
    :cond_0
    return-void

    .line 323
    .end local v1           #dsps:[Ljava/lang/String;
    .end local v3           #ids:[Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->eventInfo:Lnet/yostore/aws/api/entity/EntryInfo;

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/EntryInfo;->getAncestorid()Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 324
    .restart local v3       #ids:[Ljava/lang/String;
    iget-object v4, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->eventInfo:Lnet/yostore/aws/api/entity/EntryInfo;

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/EntryInfo;->getAncestorname()Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .restart local v1       #dsps:[Ljava/lang/String;
    goto :goto_0

    .line 328
    .restart local v2       #i:I
    :cond_2
    iget-object v4, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->dstack:Ljava/util/Stack;

    new-instance v5, Lnet/yostore/aws/handler/entity/CPath;

    aget-object v6, v1, v2

    aget-object v7, v3, v2

    invoke-direct {v5, v6, v7}, Lnet/yostore/aws/handler/entity/CPath;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 327
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static makeExtStr([Lnet/yostore/aws/view/navigate/PlayListHandler$FileType;)Ljava/lang/String;
    .locals 4
    .parameter "ft"

    .prologue
    .line 774
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 775
    .local v1, sb:Ljava/lang/StringBuffer;
    if-eqz p0, :cond_0

    array-length v2, p0

    if-lez v2, :cond_0

    .line 776
    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-static {v2}, Lnet/yostore/aws/view/navigate/PlayListHandler;->FileType2Ext(Lnet/yostore/aws/view/navigate/PlayListHandler$FileType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 777
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_1

    .line 780
    .end local v0           #i:I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 778
    .restart local v0       #i:I
    :cond_1
    sget-object v2, Lnet/yostore/aws/view/navigate/PlayListHandler;->OR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-static {v3}, Lnet/yostore/aws/view/navigate/PlayListHandler;->FileType2Ext(Lnet/yostore/aws/view/navigate/PlayListHandler$FileType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 777
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private parseIconId([Ljava/lang/String;[Ljava/lang/String;)[I
    .locals 6
    .parameter "disp"
    .parameter "isFolder"

    .prologue
    .line 600
    array-length v4, p1

    new-array v2, v4, [I

    .line 601
    .local v2, ii:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, p1

    if-lt v1, v4, :cond_0

    .line 623
    return-object v2

    .line 602
    :cond_0
    aget-object v0, p1, v1

    .line 608
    .local v0, dsp:Ljava/lang/String;
    const-string v4, "1"

    aget-object v5, p2, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 609
    const v4, 0x7f020050

    aput v4, v2, v1

    .line 601
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 611
    :cond_1
    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/navigate/PlayListHandler;->parseMIMEType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 612
    .local v3, tp:Ljava/lang/String;
    const-string v4, "audio/*"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 613
    const v4, 0x7f020088

    aput v4, v2, v1

    goto :goto_1

    .line 614
    :cond_2
    const-string v4, "video/*"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 615
    const v4, 0x7f020087

    aput v4, v2, v1

    goto :goto_1

    .line 616
    :cond_3
    const-string v4, "image/*"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 617
    const v4, 0x7f02009b

    aput v4, v2, v1

    goto :goto_1

    .line 619
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
    .line 268
    const/16 v4, -0x3e7

    .line 269
    .local v4, rtn:I
    if-gez p1, :cond_0

    move v5, v4

    .line 287
    .end local v4           #rtn:I
    .local v5, rtn:I
    :goto_0
    return v5

    .line 271
    .end local v5           #rtn:I
    .restart local v4       #rtn:I
    :cond_0
    iget-object v6, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->fsInfos:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/yostore/aws/handler/entity/FsInfo;

    .line 273
    .local v2, fi:Lnet/yostore/aws/handler/entity/FsInfo;
    const/4 v0, 0x0

    .line 274
    .local v0, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    const-string v6, "1"

    iget-object v7, v2, Lnet/yostore/aws/handler/entity/FsInfo;->isfolder:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 275
    new-instance v0, Lnet/yostore/aws/api/helper/FolderRemoveHelper;

    .end local v0           #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    iget-object v6, v2, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-direct {v0, v6}, Lnet/yostore/aws/api/helper/FolderRemoveHelper;-><init>(Ljava/lang/String;)V

    .line 279
    .restart local v0       #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    :goto_1
    const/4 v3, 0x0

    .line 281
    .local v3, response:Lnet/yostore/aws/api/entity/ApiResponse;
    :try_start_0
    iget-object v6, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v0, v6}, Lnet/yostore/aws/api/helper/BaseHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v3

    .line 282
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/ApiResponse;->getStatus()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :goto_2
    move v5, v4

    .line 287
    .end local v4           #rtn:I
    .restart local v5       #rtn:I
    goto :goto_0

    .line 277
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

    .line 283
    .restart local v3       #response:Lnet/yostore/aws/api/entity/ApiResponse;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 284
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public diveDeep(Ljava/lang/String;Ljava/lang/String;)Lnet/yostore/aws/view/navigate/BrowseAdapter;
    .locals 2
    .parameter "display"
    .parameter "fid"

    .prologue
    .line 306
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->errMsg:Ljava/lang/String;

    .line 307
    const/4 v0, 0x0

    .line 309
    .local v0, cpath:Lnet/yostore/aws/handler/entity/CPath;
    new-instance v0, Lnet/yostore/aws/handler/entity/CPath;

    .end local v0           #cpath:Lnet/yostore/aws/handler/entity/CPath;
    invoke-direct {v0, p1, p2}, Lnet/yostore/aws/handler/entity/CPath;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    .restart local v0       #cpath:Lnet/yostore/aws/handler/entity/CPath;
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->dstack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 312
    invoke-direct {p0, p1, p2, v0}, Lnet/yostore/aws/view/navigate/PlayListHandler;->getCloudFileDir(Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/handler/entity/CPath;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v1

    return-object v1
.end method

.method public diveFloat()Lnet/yostore/aws/view/navigate/BrowseAdapter;
    .locals 8

    .prologue
    .line 350
    const-string v6, ""

    iput-object v6, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->errMsg:Ljava/lang/String;

    .line 351
    iget-object v6, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->dstack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 352
    invoke-virtual {p0}, Lnet/yostore/aws/view/navigate/PlayListHandler;->diveTop()Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v6

    .line 377
    :goto_0
    return-object v6

    .line 353
    :cond_0
    iget-object v6, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->dstack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v6

    const/4 v7, 0x1

    if-gt v6, v7, :cond_1

    .line 354
    invoke-virtual {p0}, Lnet/yostore/aws/view/navigate/PlayListHandler;->diveTop()Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v6

    goto :goto_0

    .line 356
    :cond_1
    iget-object v6, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->dstack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 357
    const/4 v2, 0x0

    .line 358
    .local v2, cpath:Lnet/yostore/aws/handler/entity/CPath;
    const/4 v4, 0x0

    .line 360
    .local v4, ppath:Lnet/yostore/aws/handler/entity/CPath;
    :try_start_0
    iget-object v6, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->dstack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lnet/yostore/aws/view/navigate/PlayListHandler;->diveTop()Lnet/yostore/aws/view/navigate/BrowseAdapter;

    .line 377
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 362
    :cond_2
    iget-object v6, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->dstack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lnet/yostore/aws/handler/entity/CPath;

    move-object v2, v0

    .line 363
    iget-object v6, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->dstack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 364
    new-instance v5, Lnet/yostore/aws/handler/entity/CPath;

    iget-object v6, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->homedisp:Ljava/lang/String;

    iget-object v7, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->homeid:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lnet/yostore/aws/handler/entity/CPath;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .end local v4           #ppath:Lnet/yostore/aws/handler/entity/CPath;
    .local v5, ppath:Lnet/yostore/aws/handler/entity/CPath;
    move-object v4, v5

    .line 367
    .end local v5           #ppath:Lnet/yostore/aws/handler/entity/CPath;
    .restart local v4       #ppath:Lnet/yostore/aws/handler/entity/CPath;
    :goto_2
    iget-object v6, v2, Lnet/yostore/aws/handler/entity/CPath;->disp:Ljava/lang/String;

    iget-object v7, v2, Lnet/yostore/aws/handler/entity/CPath;->id:Ljava/lang/String;

    invoke-direct {p0, v6, v7, v4}, Lnet/yostore/aws/view/navigate/PlayListHandler;->getCloudFileDir(Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/handler/entity/CPath;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v1

    .line 368
    .local v1, ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;
    iget-object v6, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->dstack:Ljava/util/Stack;

    invoke-virtual {v6, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    move-object v6, v1

    .line 369
    goto :goto_0

    .line 366
    .end local v1           #ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;
    :cond_3
    iget-object v6, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->dstack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lnet/yostore/aws/handler/entity/CPath;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 372
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 373
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

    iput-object v6, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->errMsg:Ljava/lang/String;

    .line 374
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public diveHere()Lnet/yostore/aws/view/navigate/BrowseAdapter;
    .locals 4

    .prologue
    .line 334
    const-string v2, ""

    iput-object v2, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->errMsg:Ljava/lang/String;

    .line 335
    iget-object v2, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->dstack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 336
    invoke-virtual {p0}, Lnet/yostore/aws/view/navigate/PlayListHandler;->diveTop()Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v2

    .line 344
    :goto_0
    return-object v2

    .line 338
    :cond_0
    iget-object v2, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->dstack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/handler/entity/CPath;

    .line 339
    .local v0, cpath:Lnet/yostore/aws/handler/entity/CPath;
    const/4 v1, 0x0

    .line 340
    .local v1, ppath:Lnet/yostore/aws/handler/entity/CPath;
    iget-object v2, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->dstack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 341
    const/4 v1, 0x0

    .line 344
    :goto_1
    iget-object v2, v0, Lnet/yostore/aws/handler/entity/CPath;->disp:Ljava/lang/String;

    iget-object v3, v0, Lnet/yostore/aws/handler/entity/CPath;->id:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Lnet/yostore/aws/view/navigate/PlayListHandler;->getCloudFileDir(Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/handler/entity/CPath;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v2

    goto :goto_0

    .line 343
    :cond_1
    iget-object v2, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->dstack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #ppath:Lnet/yostore/aws/handler/entity/CPath;
    check-cast v1, Lnet/yostore/aws/handler/entity/CPath;

    .restart local v1       #ppath:Lnet/yostore/aws/handler/entity/CPath;
    goto :goto_1
.end method

.method public diveTop()Lnet/yostore/aws/view/navigate/BrowseAdapter;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 292
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->errMsg:Ljava/lang/String;

    .line 293
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->dstack:Ljava/util/Stack;

    .line 295
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->homeid:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 296
    const-string v0, "can not init this folder"

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->errMsg:Ljava/lang/String;

    move-object v0, v2

    .line 300
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->homedisp:Ljava/lang/String;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->homeid:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lnet/yostore/aws/view/navigate/PlayListHandler;->getCloudFileDir(Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/handler/entity/CPath;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v0

    goto :goto_0
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
    .line 100
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->dstack:Ljava/util/Stack;

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
    .line 156
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->elist:Ljava/util/List;

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
    .line 87
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->fsInfos:Ljava/util/List;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->_path:Ljava/lang/String;

    return-object v0
.end method

.method public getPathId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->_pathId:Ljava/lang/String;

    return-object v0
.end method

.method public isTop()Z
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->dstack:Ljava/util/Stack;

    if-nez v0, :cond_0

    .line 784
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->dstack:Ljava/util/Stack;

    .line 785
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->dstack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public parseMIMEType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "end"

    .prologue
    .line 629
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

    .line 632
    const-string v0, "mp3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    const-string v0, "audio/*"

    .line 663
    :goto_0
    return-object v0

    .line 637
    :cond_0
    const-string v0, "avi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mp4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 638
    const-string v0, "mpeg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mpg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 639
    const-string v0, "m4v"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mov"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 640
    const-string v0, "mkv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "vob"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 641
    const-string v0, "vcd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "svcd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 642
    const-string v0, "rm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "rmvb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 643
    const-string v0, "divx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "wmv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 644
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

    .line 646
    :cond_1
    const-string v0, "video/*"

    goto/16 :goto_0

    .line 648
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

    .line 650
    :cond_3
    const-string v0, "image/*"

    goto/16 :goto_0

    .line 653
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

    .line 654
    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 655
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

    .line 656
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

    .line 659
    :cond_5
    const-string v0, "text/*"

    goto/16 :goto_0

    .line 663
    :cond_6
    const-string v0, "*/*"

    goto/16 :goto_0
.end method

.method public setCurrentEntryInfo(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 170
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->elist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/api/entity/EntryInfo;

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->eventInfo:Lnet/yostore/aws/api/entity/EntryInfo;

    .line 171
    return-void
.end method

.method public setCurrentFolderListInfo(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 222
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->folderList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/api/entity/UserSharedFolderInfo;

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->eventSharedInfo:Lnet/yostore/aws/api/entity/UserSharedFolderInfo;

    .line 223
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
    .line 101
    .local p1, dstack:Ljava/util/Stack;,"Ljava/util/Stack<Lnet/yostore/aws/handler/entity/CPath;>;"
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->dstack:Ljava/util/Stack;

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
    .line 159
    .local p1, elist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/EntryInfo;>;"
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->elist:Ljava/util/List;

    .line 160
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
    .line 88
    .local p1, fsInfos:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/FsInfo;>;"
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->fsInfos:Ljava/util/List;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .parameter "_path"

    .prologue
    .line 91
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->_path:Ljava/lang/String;

    return-void
.end method

.method public setPathId(Ljava/lang/String;)V
    .locals 0
    .parameter "_pathId"

    .prologue
    .line 94
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/PlayListHandler;->_pathId:Ljava/lang/String;

    return-void
.end method
