.class public Lnet/yostore/aws/handler/FolderBrowseHandler;
.super Ljava/lang/Object;
.source "FolderBrowseHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/handler/FolderBrowseHandler$FileType;,
        Lnet/yostore/aws/handler/FolderBrowseHandler$SearchType;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$net$yostore$aws$handler$FolderBrowseHandler$FileType:[I = null

.field private static final TAG:Ljava/lang/String; = "FolderBrowseHandler"


# instance fields
.field final DOC_EX:Ljava/lang/String;

.field private final GB:J

.field private final KB:J

.field private final MB:J

.field final MUS_EX:Ljava/lang/String;

.field private final OR:Ljava/lang/String;

.field final PIC_EX:Ljava/lang/String;

.field private final TB:J

.field final VID_EX:Ljava/lang/String;

.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private ctx:Landroid/content/Context;

.field public errMsg:Ljava/lang/String;

.field public isBackup:Z

.field public isOriginalDel:Z

.field public isReadOnly:Z


# direct methods
.method static synthetic $SWITCH_TABLE$net$yostore$aws$handler$FolderBrowseHandler$FileType()[I
    .locals 3

    .prologue
    .line 57
    sget-object v0, Lnet/yostore/aws/handler/FolderBrowseHandler;->$SWITCH_TABLE$net$yostore$aws$handler$FolderBrowseHandler$FileType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lnet/yostore/aws/handler/FolderBrowseHandler$FileType;->values()[Lnet/yostore/aws/handler/FolderBrowseHandler$FileType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lnet/yostore/aws/handler/FolderBrowseHandler$FileType;->ALL:Lnet/yostore/aws/handler/FolderBrowseHandler$FileType;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/FolderBrowseHandler$FileType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lnet/yostore/aws/handler/FolderBrowseHandler$FileType;->DOC:Lnet/yostore/aws/handler/FolderBrowseHandler$FileType;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/FolderBrowseHandler$FileType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lnet/yostore/aws/handler/FolderBrowseHandler$FileType;->MUSIC:Lnet/yostore/aws/handler/FolderBrowseHandler$FileType;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/FolderBrowseHandler$FileType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lnet/yostore/aws/handler/FolderBrowseHandler$FileType;->PIC:Lnet/yostore/aws/handler/FolderBrowseHandler$FileType;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/FolderBrowseHandler$FileType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lnet/yostore/aws/handler/FolderBrowseHandler$FileType;->VIDEO:Lnet/yostore/aws/handler/FolderBrowseHandler$FileType;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/FolderBrowseHandler$FileType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lnet/yostore/aws/handler/FolderBrowseHandler;->$SWITCH_TABLE$net$yostore$aws$handler$FolderBrowseHandler$FileType:[I

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

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->errMsg:Ljava/lang/String;

    .line 63
    iput-object v2, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->ctx:Landroid/content/Context;

    .line 66
    iput-object v2, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 67
    const-string v0, " or "

    iput-object v0, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->OR:Ljava/lang/String;

    .line 69
    iput-boolean v1, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->isBackup:Z

    .line 70
    iput-boolean v1, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->isOriginalDel:Z

    .line 71
    iput-boolean v1, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->isReadOnly:Z

    .line 603
    const-wide/16 v0, 0x400

    iput-wide v0, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->KB:J

    .line 604
    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->MB:J

    .line 605
    const-wide/32 v0, 0x40000000

    iput-wide v0, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->GB:J

    .line 606
    const-wide v0, 0x10000000000L

    iput-wide v0, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->TB:J

    .line 692
    const-string v0, "pdf or doc or docx or html or htm or txt"

    iput-object v0, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->DOC_EX:Ljava/lang/String;

    .line 693
    const-string v0, "jpeg or jpg or bmp or png"

    iput-object v0, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->PIC_EX:Ljava/lang/String;

    .line 694
    const-string v0, "flv or 3gp"

    iput-object v0, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->VID_EX:Ljava/lang/String;

    .line 695
    const-string v0, "aac or ac3 or aiff or ape or flac or mp2 or mp3 or ogg or wav or wma"

    iput-object v0, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->MUS_EX:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;)V
    .locals 3
    .parameter "ctx"
    .parameter "apicfg"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->errMsg:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->ctx:Landroid/content/Context;

    .line 66
    iput-object v1, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 67
    const-string v0, " or "

    iput-object v0, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->OR:Ljava/lang/String;

    .line 69
    iput-boolean v2, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->isBackup:Z

    .line 70
    iput-boolean v2, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->isOriginalDel:Z

    .line 71
    iput-boolean v2, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->isReadOnly:Z

    .line 603
    const-wide/16 v0, 0x400

    iput-wide v0, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->KB:J

    .line 604
    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->MB:J

    .line 605
    const-wide/32 v0, 0x40000000

    iput-wide v0, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->GB:J

    .line 606
    const-wide v0, 0x10000000000L

    iput-wide v0, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->TB:J

    .line 692
    const-string v0, "pdf or doc or docx or html or htm or txt"

    iput-object v0, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->DOC_EX:Ljava/lang/String;

    .line 693
    const-string v0, "jpeg or jpg or bmp or png"

    iput-object v0, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->PIC_EX:Ljava/lang/String;

    .line 694
    const-string v0, "flv or 3gp"

    iput-object v0, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->VID_EX:Ljava/lang/String;

    .line 695
    const-string v0, "aac or ac3 or aiff or ape or flac or mp2 or mp3 or ogg or wav or wma"

    iput-object v0, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->MUS_EX:Ljava/lang/String;

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->errMsg:Ljava/lang/String;

    .line 102
    iput-object p1, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->ctx:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 105
    invoke-virtual {p0, p1, p2, v2}, Lnet/yostore/aws/handler/FolderBrowseHandler;->validateApicfg(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;I)V

    .line 106
    return-void
.end method

.method private EntryInfoList2Browse(Ljava/util/List;I)Lnet/yostore/aws/handler/entity/FolderBrowseReturn;
    .locals 5
    .parameter
    .parameter "total"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/api/entity/EntryInfo;",
            ">;I)",
            "Lnet/yostore/aws/handler/entity/FolderBrowseReturn;"
        }
    .end annotation

    .prologue
    .local p1, elist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/EntryInfo;>;"
    const/4 v4, 0x0

    .line 316
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 317
    .local v1, fsInfos:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/FsInfo;>;"
    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    .line 318
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 320
    .local v2, itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/EntryInfo;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 340
    .end local v2           #itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/EntryInfo;>;"
    :cond_0
    new-instance v3, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;

    invoke-direct {v3, v1, v4, v4, p2}, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v3

    .line 322
    .restart local v2       #itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/EntryInfo;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/api/entity/EntryInfo;

    .line 325
    .local v0, ei:Lnet/yostore/aws/api/entity/EntryInfo;
    invoke-virtual {v0}, Lnet/yostore/aws/api/entity/EntryInfo;->getIsorigdeleted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 327
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 331
    :cond_2
    new-instance v3, Lnet/yostore/aws/handler/entity/FsInfo;

    invoke-direct {v3, v0}, Lnet/yostore/aws/handler/entity/FsInfo;-><init>(Lnet/yostore/aws/api/entity/EntryInfo;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private FileType2Ext(Lnet/yostore/aws/handler/FolderBrowseHandler$FileType;)Ljava/lang/String;
    .locals 3
    .parameter "ft"

    .prologue
    .line 699
    const-string v0, ""

    .line 701
    .local v0, rtn:Ljava/lang/String;
    invoke-static {}, Lnet/yostore/aws/handler/FolderBrowseHandler;->$SWITCH_TABLE$net$yostore$aws$handler$FolderBrowseHandler$FileType()[I

    move-result-object v1

    invoke-virtual {p1}, Lnet/yostore/aws/handler/FolderBrowseHandler$FileType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 719
    :goto_0
    return-object v0

    .line 704
    :pswitch_0
    const-string v0, "pdf or doc or docx or html or htm or txt or jpeg or jpg or bmp or png or flv or 3gp or aac or ac3 or aiff or ape or flac or mp2 or mp3 or ogg or wav or wma"

    .line 705
    goto :goto_0

    .line 707
    :pswitch_1
    const-string v0, "pdf or doc or docx or html or htm or txt"

    .line 708
    goto :goto_0

    .line 710
    :pswitch_2
    const-string v0, "jpeg or jpg or bmp or png"

    .line 711
    goto :goto_0

    .line 713
    :pswitch_3
    const-string v0, "flv or 3gp"

    .line 714
    goto :goto_0

    .line 716
    :pswitch_4
    const-string v0, "aac or ac3 or aiff or ape or flac or mp2 or mp3 or ogg or wav or wma"

    goto :goto_0

    .line 701
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getFulltextQuery(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;[Lnet/yostore/aws/handler/FolderBrowseHandler$FileType;II)Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    .locals 11
    .parameter "apicfg"
    .parameter "keyword"
    .parameter "fts"
    .parameter "pagesize"
    .parameter "offset"

    .prologue
    .line 653
    invoke-direct {p0, p3}, Lnet/yostore/aws/handler/FolderBrowseHandler;->getKind([Lnet/yostore/aws/handler/FolderBrowseHandler$FileType;)Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    move-result-object v6

    .line 654
    .local v6, kind:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;
    invoke-direct {p0, p3}, Lnet/yostore/aws/handler/FolderBrowseHandler;->makeExtStr([Lnet/yostore/aws/handler/FolderBrowseHandler$FileType;)Ljava/lang/String;

    move-result-object v7

    .line 656
    .local v7, extStr:Ljava/lang/String;
    new-instance v1, Lnet/yostore/aws/api/helper/FulltextQueryHelper;

    const-string v3, ""

    move-object v2, p2

    move v4, p4

    move/from16 v5, p5

    invoke-direct/range {v1 .. v7}, Lnet/yostore/aws/api/helper/FulltextQueryHelper;-><init>(Ljava/lang/String;Ljava/lang/String;IILnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;Ljava/lang/String;)V

    .line 658
    .local v1, apihelper:Lnet/yostore/aws/api/helper/FulltextQueryHelper;
    const/4 v9, 0x0

    .line 661
    .local v9, response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    :try_start_0
    invoke-virtual {v1, p1}, Lnet/yostore/aws/api/helper/FulltextQueryHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lnet/yostore/aws/api/entity/FulltextQueryResponse;

    move-object v9, v0
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    :goto_0
    return-object v9

    .line 663
    :catch_0
    move-exception v2

    move-object v8, v2

    .line 665
    .local v8, e:Lnet/yostore/aws/api/exception/APIException;
    invoke-virtual {v8}, Lnet/yostore/aws/api/exception/APIException;->printStackTrace()V

    goto :goto_0
.end method

.method private getKind([Lnet/yostore/aws/handler/FolderBrowseHandler$FileType;)Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;
    .locals 5
    .parameter "fts"

    .prologue
    .line 680
    sget-object v1, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->FILE:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    .line 681
    .local v1, rtn:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    .line 689
    :goto_1
    return-object v1

    .line 681
    :cond_0
    aget-object v0, p1, v3

    .line 683
    .local v0, ft:Lnet/yostore/aws/handler/FolderBrowseHandler$FileType;
    sget-object v4, Lnet/yostore/aws/handler/FolderBrowseHandler$FileType;->ALL:Lnet/yostore/aws/handler/FolderBrowseHandler$FileType;

    if-ne v0, v4, :cond_1

    .line 685
    sget-object v1, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->ALL:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    .line 686
    goto :goto_1

    .line 681
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getSqlQuery(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;Ljava/lang/String;[Lnet/yostore/aws/handler/FolderBrowseHandler$FileType;II)Lnet/yostore/aws/api/entity/SqlQueryResponse;
    .locals 13
    .parameter "apicfg"
    .parameter "keyword"
    .parameter "markid"
    .parameter "fts"
    .parameter "pagesize"
    .parameter "offset"

    .prologue
    .line 633
    move-object v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lnet/yostore/aws/handler/FolderBrowseHandler;->getKind([Lnet/yostore/aws/handler/FolderBrowseHandler$FileType;)Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    move-result-object v7

    .line 634
    .local v7, kind:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;
    move-object v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lnet/yostore/aws/handler/FolderBrowseHandler;->makeExtStr([Lnet/yostore/aws/handler/FolderBrowseHandler$FileType;)Ljava/lang/String;

    move-result-object v8

    .line 636
    .local v8, extStr:Ljava/lang/String;
    new-instance v2, Lnet/yostore/aws/api/helper/SqlQueryHelper;

    const/4 v9, 0x0

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v2 .. v9}, Lnet/yostore/aws/api/helper/SqlQueryHelper;-><init>(Ljava/lang/String;Ljava/lang/String;IILnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    .local v2, apihelper:Lnet/yostore/aws/api/helper/SqlQueryHelper;
    const/4 v11, 0x0

    .line 641
    .local v11, response:Lnet/yostore/aws/api/entity/SqlQueryResponse;
    :try_start_0
    invoke-virtual {v2, p1}, Lnet/yostore/aws/api/helper/SqlQueryHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Lnet/yostore/aws/api/entity/SqlQueryResponse;

    move-object v11, v0
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    :goto_0
    return-object v11

    .line 643
    :catch_0
    move-exception v3

    move-object v10, v3

    .line 645
    .local v10, e:Lnet/yostore/aws/api/exception/APIException;
    invoke-virtual {v10}, Lnet/yostore/aws/api/exception/APIException;->printStackTrace()V

    goto :goto_0
.end method

.method private getUploadFileDir(J)Ljava/util/List;
    .locals 7
    .parameter "folderid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/FsInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 585
    const/4 v1, 0x0

    .line 587
    .local v1, isBackUp:Z
    iget-object v5, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->ctx:Landroid/content/Context;

    iget-object v6, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v6, v6, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-static {v5, v6, p1, p2}, Lnet/yostore/aws/sqlite/helper/UploadQueueHelper;->getAllUploadNoReadyQueueByFolderId(Landroid/content/Context;Ljava/lang/String;J)Ljava/util/LinkedList;

    move-result-object v3

    .line 589
    .local v3, uiList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lnet/yostore/aws/sqlite/entity/UploadItem;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 591
    .local v0, fsInfos:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/FsInfo;>;"
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 593
    .local v4, uploadItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/sqlite/entity/UploadItem;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 600
    return-object v0

    .line 595
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/yostore/aws/sqlite/entity/UploadItem;

    .line 596
    .local v2, ui:Lnet/yostore/aws/sqlite/entity/UploadItem;
    new-instance v5, Lnet/yostore/aws/handler/entity/FsInfo;

    invoke-direct {v5, v2}, Lnet/yostore/aws/handler/entity/FsInfo;-><init>(Lnet/yostore/aws/sqlite/entity/UploadItem;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private makeExtStr([Lnet/yostore/aws/handler/FolderBrowseHandler$FileType;)Ljava/lang/String;
    .locals 4
    .parameter "ft"

    .prologue
    .line 724
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 725
    .local v1, sb:Ljava/lang/StringBuffer;
    if-eqz p1, :cond_0

    array-length v2, p1

    if-lez v2, :cond_0

    .line 727
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-direct {p0, v2}, Lnet/yostore/aws/handler/FolderBrowseHandler;->FileType2Ext(Lnet/yostore/aws/handler/FolderBrowseHandler$FileType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 728
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_1

    .line 731
    .end local v0           #i:I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 729
    .restart local v0       #i:I
    :cond_1
    const-string v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-direct {p0, v3}, Lnet/yostore/aws/handler/FolderBrowseHandler;->FileType2Ext(Lnet/yostore/aws/handler/FolderBrowseHandler$FileType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 728
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private parseFolderInfoList(Ljava/util/List;)Lnet/yostore/aws/handler/entity/FolderBrowseReturn;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/api/entity/FileInfo;",
            ">;)",
            "Lnet/yostore/aws/handler/entity/FolderBrowseReturn;"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, finfolist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/FileInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v3, savedsearchlist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/FsInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 202
    .local v1, fitm:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FileInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 214
    new-instance v5, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v3, v6}, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;-><init>(Ljava/util/List;I)V

    return-object v5

    .line 203
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/api/entity/FileInfo;

    .line 204
    .local v0, fi:Lnet/yostore/aws/api/entity/FileInfo;
    invoke-virtual {v0}, Lnet/yostore/aws/api/entity/FileInfo;->getIsorigdeleted()Z

    move-result v5

    if-nez v5, :cond_0

    .line 207
    new-instance v4, Lnet/yostore/aws/handler/entity/Search;

    invoke-virtual {v0}, Lnet/yostore/aws/api/entity/FileInfo;->getDisplay()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lnet/yostore/aws/handler/entity/Search;-><init>(Ljava/lang/String;)V

    .line 208
    .local v4, search:Lnet/yostore/aws/handler/entity/Search;
    new-instance v2, Lnet/yostore/aws/handler/entity/FsInfo;

    const/4 v5, 0x1

    invoke-direct {v2, v0, v5}, Lnet/yostore/aws/handler/entity/FsInfo;-><init>(Lnet/yostore/aws/api/entity/FileInfo;Z)V

    .line 209
    .local v2, fsinfo:Lnet/yostore/aws/handler/entity/FsInfo;
    sget-object v5, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->SavedSearch:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    iput-object v5, v2, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    .line 210
    invoke-virtual {v4}, Lnet/yostore/aws/handler/entity/Search;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public getFolderBrowseReturn(Ljava/lang/String;IIZII)Lnet/yostore/aws/handler/entity/FolderBrowseReturn;
    .locals 19
    .parameter "fid"
    .parameter "sort"
    .parameter "sortByDesc"
    .parameter "pageEnable"
    .parameter "pagesize"
    .parameter "page"

    .prologue
    .line 427
    const/4 v15, 0x0

    .line 428
    .local v15, isBackUp:Z
    const-string v4, "system.backup.root"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 430
    const/4 v15, 0x1

    .line 432
    :cond_0
    new-instance v14, Ljava/util/LinkedList;

    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V

    .line 433
    .local v14, fsInfos:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/FsInfo;>;"
    if-nez v15, :cond_1

    .line 435
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "system."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/handler/FolderBrowseHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    move-object v5, v0

    iget-object v5, v5, Lnet/yostore/aws/api/ApiConfig;->packageDisplay:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".home.root"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 436
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    move-wide v1, v4

    invoke-direct {v0, v1, v2}, Lnet/yostore/aws/handler/FolderBrowseHandler;->getUploadFileDir(J)Ljava/util/List;

    move-result-object v14

    .line 449
    :cond_1
    :goto_0
    const/16 v16, 0x0

    .line 450
    .local v16, response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    new-instance v3, Lnet/yostore/aws/api/helper/FolderBrowseHelper;

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v3 .. v9}, Lnet/yostore/aws/api/helper/FolderBrowseHelper;-><init>(Ljava/lang/String;IIZII)V

    .line 453
    .local v3, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/yostore/aws/handler/FolderBrowseHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lnet/yostore/aws/api/helper/BaseHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    move-object/from16 v16, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    invoke-virtual/range {v16 .. v16}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->getFolderList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 463
    .local v13, folderItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    invoke-virtual/range {v16 .. v16}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->getFileList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 465
    .local v12, fileItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FileInfo;>;"
    :cond_2
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_5

    .line 475
    :cond_3
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_6

    .line 487
    new-instance v4, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;

    invoke-virtual/range {v16 .. v16}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->getParentFolder()Lnet/yostore/aws/api/entity/ParentFolder;

    move-result-object v5

    invoke-virtual {v5}, Lnet/yostore/aws/api/entity/ParentFolder;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->getParentFolder()Lnet/yostore/aws/api/entity/ParentFolder;

    move-result-object v6

    invoke-virtual {v6}, Lnet/yostore/aws/api/entity/ParentFolder;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->getTotalcount()I

    move-result v7

    invoke-direct {v4, v14, v5, v6, v7}, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    .end local v12           #fileItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FileInfo;>;"
    .end local v13           #folderItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    :goto_3
    return-object v4

    .line 441
    .end local v3           #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .end local v16           #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    :cond_4
    :try_start_1
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 442
    .local v17, uploadFolder:J
    const-wide/16 v4, 0x0

    cmp-long v4, v17, v4

    if-lez v4, :cond_1

    .line 443
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lnet/yostore/aws/handler/FolderBrowseHandler;->getUploadFileDir(J)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v14

    goto :goto_0

    .line 455
    .end local v17           #uploadFolder:J
    .restart local v3       #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .restart local v16       #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    :catch_0
    move-exception v4

    move-object v10, v4

    .line 457
    .local v10, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ">>"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lnet/yostore/aws/handler/FolderBrowseHandler;->errMsg:Ljava/lang/String;

    .line 458
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 459
    const/4 v4, 0x0

    goto :goto_3

    .line 467
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v12       #fileItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FileInfo;>;"
    .restart local v13       #folderItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    :cond_5
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/yostore/aws/api/entity/FolderInfo;

    .line 468
    .local v11, fi:Lnet/yostore/aws/api/entity/FolderInfo;
    const-string v4, "system.my.encrypted.root"

    invoke-virtual {v11}, Lnet/yostore/aws/api/entity/FolderInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 472
    new-instance v4, Lnet/yostore/aws/handler/entity/FsInfo;

    invoke-direct {v4, v11}, Lnet/yostore/aws/handler/entity/FsInfo;-><init>(Lnet/yostore/aws/api/entity/FolderInfo;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 477
    .end local v11           #fi:Lnet/yostore/aws/api/entity/FolderInfo;
    :cond_6
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/yostore/aws/api/entity/FileInfo;

    .line 478
    .local v11, fi:Lnet/yostore/aws/api/entity/FileInfo;
    invoke-virtual {v11}, Lnet/yostore/aws/api/entity/FileInfo;->getIsencrypted()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v11}, Lnet/yostore/aws/api/entity/FileInfo;->getIsorigdeleted()Z

    move-result v4

    if-nez v4, :cond_3

    .line 482
    if-eqz v15, :cond_7

    .line 483
    const/4 v4, 0x1

    invoke-virtual {v11, v4}, Lnet/yostore/aws/api/entity/FileInfo;->setIsbackup(Z)V

    .line 484
    :cond_7
    new-instance v4, Lnet/yostore/aws/handler/entity/FsInfo;

    invoke-direct {v4, v11}, Lnet/yostore/aws/handler/entity/FsInfo;-><init>(Lnet/yostore/aws/api/entity/FileInfo;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 445
    .end local v3           #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .end local v11           #fi:Lnet/yostore/aws/api/entity/FileInfo;
    .end local v12           #fileItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FileInfo;>;"
    .end local v13           #folderItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    .end local v16           #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    :catch_1
    move-exception v4

    goto/16 :goto_0
.end method

.method public getRecentChanges(II)Lnet/yostore/aws/handler/entity/FolderBrowseReturn;
    .locals 11
    .parameter "top"
    .parameter "sortdirection"

    .prologue
    .line 526
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 528
    .local v5, fsInfos:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/FsInfo;>;"
    const/4 v6, 0x0

    .line 529
    .local v6, response:Lnet/yostore/aws/api/entity/GetLatestChangeFilesResponse;
    const-string v7, "0,-3,-5"

    .line 531
    .local v7, targetroot:Ljava/lang/String;
    new-instance v1, Lnet/yostore/aws/api/helper/GetLatestChangeFilesHelper;

    invoke-direct {v1, p1, v7, p2}, Lnet/yostore/aws/api/helper/GetLatestChangeFilesHelper;-><init>(ILjava/lang/String;I)V

    .line 534
    .local v1, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    :try_start_0
    iget-object v8, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v1, v8}, Lnet/yostore/aws/api/helper/BaseHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lnet/yostore/aws/api/entity/GetLatestChangeFilesResponse;

    move-object v6, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    invoke-virtual {v6}, Lnet/yostore/aws/api/entity/GetLatestChangeFilesResponse;->getLatestChangeFileList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 545
    .local v4, fileItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/BaseEntry;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 550
    new-instance v8, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;

    const-string v9, ""

    const-string v10, ""

    invoke-direct {v8, v5, v9, v10, p1}, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    .end local v4           #fileItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/BaseEntry;>;"
    :goto_1
    return-object v8

    .line 536
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 538
    .local v2, e:Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, ">>"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->errMsg:Ljava/lang/String;

    .line 539
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 540
    const/4 v8, 0x0

    goto :goto_1

    .line 547
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v4       #fileItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/BaseEntry;>;"
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/yostore/aws/api/entity/BaseEntry;

    .line 548
    .local v3, fi:Lnet/yostore/aws/api/entity/BaseEntry;
    new-instance v8, Lnet/yostore/aws/handler/entity/FsInfo;

    invoke-direct {v8, v3}, Lnet/yostore/aws/handler/entity/FsInfo;-><init>(Lnet/yostore/aws/api/entity/BaseEntry;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getRecentUploads(II)Lnet/yostore/aws/handler/entity/FolderBrowseReturn;
    .locals 11
    .parameter "top"
    .parameter "sortdirection"

    .prologue
    .line 555
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 557
    .local v5, fsInfos:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/FsInfo;>;"
    const/4 v6, 0x0

    .line 558
    .local v6, response:Lnet/yostore/aws/api/entity/GetLatestUploadsResponse;
    const-string v7, "0,-3,-5"

    .line 560
    .local v7, targetroot:Ljava/lang/String;
    new-instance v1, Lnet/yostore/aws/api/helper/GetLatestUploadsHelper;

    invoke-direct {v1, p1, v7, p2}, Lnet/yostore/aws/api/helper/GetLatestUploadsHelper;-><init>(ILjava/lang/String;I)V

    .line 563
    .local v1, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    :try_start_0
    iget-object v8, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v1, v8}, Lnet/yostore/aws/api/helper/BaseHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lnet/yostore/aws/api/entity/GetLatestUploadsResponse;

    move-object v6, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    invoke-virtual {v6}, Lnet/yostore/aws/api/entity/GetLatestUploadsResponse;->getLLastestUploadsList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 574
    .local v4, fileItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/BaseEntry;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 579
    new-instance v8, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;

    const-string v9, ""

    const-string v10, ""

    invoke-direct {v8, v5, v9, v10, p1}, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    .end local v4           #fileItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/BaseEntry;>;"
    :goto_1
    return-object v8

    .line 565
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 567
    .local v2, e:Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, ">>"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->errMsg:Ljava/lang/String;

    .line 568
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 569
    const/4 v8, 0x0

    goto :goto_1

    .line 576
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v4       #fileItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/BaseEntry;>;"
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/yostore/aws/api/entity/BaseEntry;

    .line 577
    .local v3, fi:Lnet/yostore/aws/api/entity/BaseEntry;
    new-instance v8, Lnet/yostore/aws/handler/entity/FsInfo;

    invoke-direct {v8, v3}, Lnet/yostore/aws/handler/entity/FsInfo;-><init>(Lnet/yostore/aws/api/entity/BaseEntry;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getSavedSearchList()Lnet/yostore/aws/handler/entity/FolderBrowseReturn;
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lnet/yostore/aws/handler/FolderBrowseHandler;->getSavedSearchListRty(Lnet/yostore/aws/api/ApiConfig;I)Lnet/yostore/aws/handler/entity/FolderBrowseReturn;

    move-result-object v0

    return-object v0
.end method

.method public getSavedSearchListRty(Lnet/yostore/aws/api/ApiConfig;I)Lnet/yostore/aws/handler/entity/FolderBrowseReturn;
    .locals 13
    .parameter "apicfg"
    .parameter "rtyCnt"

    .prologue
    const/4 v12, 0x0

    .line 160
    invoke-static {p1}, Lnet/yostore/aws/handler/LoginHandler;->validateApiCfg(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v8

    .line 161
    .local v8, aaastat:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    sget-object v2, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-eq v8, v2, :cond_0

    sget-object v2, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->FREEZE:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v8, v2, :cond_3

    .line 162
    :cond_0
    sget-object v2, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->FREEZE:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v8, v2, :cond_1

    const-string v2, "err.login.freeze"

    iput-object v2, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->errMsg:Ljava/lang/String;

    .line 165
    :goto_0
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object p1

    .line 167
    const/4 v10, 0x0

    .line 168
    .local v10, response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    new-instance v1, Lnet/yostore/aws/api/helper/FolderBrowseHelper;

    const-string v2, "system.searchcriteria.root"

    sget v3, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSort:I

    sget v4, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->browseSortByDesc:I

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lnet/yostore/aws/api/helper/FolderBrowseHelper;-><init>(Ljava/lang/String;IIZII)V

    .line 170
    .local v1, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    :try_start_0
    invoke-virtual {v1, p1}, Lnet/yostore/aws/api/helper/BaseHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    move-object v10, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_1
    if-eqz v10, :cond_2

    .line 175
    invoke-virtual {v10}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->getFileList()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lnet/yostore/aws/handler/FolderBrowseHandler;->parseFolderInfoList(Ljava/util/List;)Lnet/yostore/aws/handler/entity/FolderBrowseReturn;

    move-result-object v2

    .line 194
    .end local v1           #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .end local v10           #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    :goto_2
    return-object v2

    .line 163
    :cond_1
    const-string v2, ""

    iput-object v2, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->errMsg:Ljava/lang/String;

    goto :goto_0

    .line 171
    .restart local v1       #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .restart local v10       #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    :catch_0
    move-exception v2

    move-object v9, v2

    .line 172
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v9           #e:Ljava/lang/Exception;
    :cond_2
    move-object v2, v12

    .line 177
    goto :goto_2

    .line 179
    .end local v1           #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .end local v10           #response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;
    :cond_3
    sget-object v2, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v8, v2, :cond_4

    .line 180
    const-string v2, "err.login.fail"

    iput-object v2, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->errMsg:Ljava/lang/String;

    move-object v2, v12

    .line 181
    goto :goto_2

    .line 183
    :cond_4
    sget-object v2, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->Err:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v8, v2, :cond_6

    .line 185
    add-int/lit8 p2, p2, 0x1

    .line 186
    const/4 v2, 0x3

    if-lt p2, v2, :cond_5

    .line 187
    const-string v2, "err.connect"

    iput-object v2, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->errMsg:Ljava/lang/String;

    move-object v2, v12

    .line 188
    goto :goto_2

    .line 190
    :cond_5
    invoke-virtual {p0, p1, p2}, Lnet/yostore/aws/handler/FolderBrowseHandler;->getSavedSearchListRty(Lnet/yostore/aws/api/ApiConfig;I)Lnet/yostore/aws/handler/entity/FolderBrowseReturn;

    move-result-object v2

    goto :goto_2

    :cond_6
    move-object v2, v12

    .line 194
    goto :goto_2
.end method

.method public getSharedEntries(IIILjava/lang/String;)Lnet/yostore/aws/handler/entity/FolderBrowseReturn;
    .locals 12
    .parameter "sortby"
    .parameter "sortdirection"
    .parameter "pagesize"
    .parameter "firstentrybound"

    .prologue
    .line 492
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 494
    .local v8, fsInfos:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/FsInfo;>;"
    const/4 v9, 0x0

    .line 501
    .local v9, response:Lnet/yostore/aws/api/entity/GetSharedEntriesResponse;
    new-instance v1, Lnet/yostore/aws/api/helper/GetSharedEntriesHelper;

    sget-object v2, Lnet/yostore/aws/api/entity/EntryInfo$KIND;->ALL:Lnet/yostore/aws/api/entity/EntryInfo$KIND;

    move v3, p3

    move v4, p1

    move v5, p2

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lnet/yostore/aws/api/helper/GetSharedEntriesHelper;-><init>(Lnet/yostore/aws/api/entity/EntryInfo$KIND;IIILjava/lang/String;)V

    .line 504
    .local v1, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    :try_start_0
    iget-object v2, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/helper/BaseHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lnet/yostore/aws/api/entity/GetSharedEntriesResponse;

    move-object v9, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    invoke-virtual {v9}, Lnet/yostore/aws/api/entity/GetSharedEntriesResponse;->getSharedEntryList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 515
    .local v11, seItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/SharedEntry;>;"
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 520
    new-instance v2, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;

    const-string v3, ""

    const-string v4, ""

    const/4 v5, -0x1

    invoke-direct {v2, v8, v3, v4, v5}, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V

    .end local v11           #seItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/SharedEntry;>;"
    :goto_1
    return-object v2

    .line 506
    :catch_0
    move-exception v2

    move-object v7, v2

    .line 508
    .local v7, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ">>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->errMsg:Ljava/lang/String;

    .line 509
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 510
    const/4 v2, 0x0

    goto :goto_1

    .line 517
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v11       #seItems:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/SharedEntry;>;"
    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnet/yostore/aws/api/entity/SharedEntry;

    .line 518
    .local v10, se:Lnet/yostore/aws/api/entity/SharedEntry;
    new-instance v2, Lnet/yostore/aws/handler/entity/FsInfo;

    invoke-direct {v2, v10}, Lnet/yostore/aws/handler/entity/FsInfo;-><init>(Lnet/yostore/aws/api/entity/SharedEntry;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public quickSearchFileDir(ZLjava/lang/String;Ljava/lang/String;II)Lnet/yostore/aws/handler/entity/FolderBrowseReturn;
    .locals 7
    .parameter "isFullTextSearch"
    .parameter "keyword"
    .parameter "markid"
    .parameter "pagesize"
    .parameter "offset"

    .prologue
    .line 221
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lnet/yostore/aws/handler/FolderBrowseHandler;->searchFileDir(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lnet/yostore/aws/handler/entity/FolderBrowseReturn;

    move-result-object v0

    return-object v0
.end method

.method public searchFileDir(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lnet/yostore/aws/handler/entity/FolderBrowseReturn;
    .locals 10
    .parameter "isFullTextSearch"
    .parameter "keyword"
    .parameter "markid"
    .parameter "ext"
    .parameter "pagesize"
    .parameter "offset"

    .prologue
    .line 228
    const/4 v7, 0x0

    .line 229
    .local v7, elist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/EntryInfo;>;"
    const/4 v8, -0x1

    .line 230
    .local v8, naviTotal:I
    if-eqz p1, :cond_3

    .line 232
    iget-object v0, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lnet/yostore/aws/handler/SearchHandler;->getFulltextQuery(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lnet/yostore/aws/api/entity/FulltextQueryResponse;

    move-result-object v9

    .line 233
    .local v9, response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    if-nez v9, :cond_1

    .line 235
    const-string v0, "err.full.text.null"

    iput-object v0, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->errMsg:Ljava/lang/String;

    .line 236
    const-string v0, "FolderBrowseHandler"

    const-string v1, "getDefaultFulltextQuery null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_0
    :goto_0
    invoke-direct {p0, v7, v8}, Lnet/yostore/aws/handler/FolderBrowseHandler;->EntryInfoList2Browse(Ljava/util/List;I)Lnet/yostore/aws/handler/entity/FolderBrowseReturn;

    move-result-object v0

    return-object v0

    .line 239
    :cond_1
    invoke-virtual {v9}, Lnet/yostore/aws/api/entity/FulltextQueryResponse;->getStatus()I

    move-result v0

    if-eqz v0, :cond_2

    .line 241
    const-string v0, "err.full.text.ngstatus"

    iput-object v0, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->errMsg:Ljava/lang/String;

    .line 242
    const-string v0, "FolderBrowseHandler"

    const-string v1, "getDefaultFulltextQuery status!=0"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 247
    :cond_2
    invoke-virtual {v9}, Lnet/yostore/aws/api/entity/FulltextQueryResponse;->getTotal()I

    move-result v8

    .line 248
    invoke-virtual {v9}, Lnet/yostore/aws/api/entity/FulltextQueryResponse;->getEntries()Ljava/util/List;

    move-result-object v7

    goto :goto_0

    .line 253
    .end local v9           #response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    :cond_3
    if-eqz p4, :cond_4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    .line 255
    :cond_4
    iget-object v0, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    sget-object v6, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->FOLDER:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move/from16 v5, p6

    invoke-static/range {v0 .. v6}, Lnet/yostore/aws/handler/SearchHandler;->getSqlQuery(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;)Lnet/yostore/aws/api/entity/FulltextQueryResponse;

    move-result-object v9

    .line 256
    .restart local v9       #response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    if-nez v9, :cond_5

    .line 259
    const-string v0, "err.sql.folder.null"

    iput-object v0, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->errMsg:Ljava/lang/String;

    .line 260
    const-string v0, "FolderBrowseHandler"

    const-string v1, "getDefaultSqlQuery: response is null(query folder)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    .end local v9           #response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    :goto_1
    iget-object v0, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    sget-object v6, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->FILE:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move/from16 v5, p6

    invoke-static/range {v0 .. v6}, Lnet/yostore/aws/handler/SearchHandler;->getSqlQuery(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;)Lnet/yostore/aws/api/entity/FulltextQueryResponse;

    move-result-object v9

    .line 280
    .restart local v9       #response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    if-nez v9, :cond_8

    .line 283
    const-string v0, "err.sql.folder.null"

    iput-object v0, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->errMsg:Ljava/lang/String;

    .line 284
    const-string v0, "FolderBrowseHandler"

    const-string v1, "getDefaultSqlQuery: response is null(query file)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 262
    :cond_5
    invoke-virtual {v9}, Lnet/yostore/aws/api/entity/FulltextQueryResponse;->getStatus()I

    move-result v0

    if-eqz v0, :cond_6

    .line 265
    const-string v0, "err.sql.folder.ngstatus"

    iput-object v0, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->errMsg:Ljava/lang/String;

    .line 266
    const-string v0, "FolderBrowseHandler"

    const-string v1, "getDefaultSqlQuery: response folder status is not 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 270
    :cond_6
    invoke-virtual {v9}, Lnet/yostore/aws/api/entity/FulltextQueryResponse;->getTotal()I

    move-result v8

    .line 271
    invoke-virtual {v9}, Lnet/yostore/aws/api/entity/FulltextQueryResponse;->getEntries()Ljava/util/List;

    move-result-object v7

    goto :goto_1

    .line 276
    .end local v9           #response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    :cond_7
    new-instance v7, Ljava/util/LinkedList;

    .end local v7           #elist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/EntryInfo;>;"
    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 277
    .restart local v7       #elist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/EntryInfo;>;"
    const/4 v8, 0x0

    goto :goto_1

    .line 286
    .restart local v9       #response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    :cond_8
    invoke-virtual {v9}, Lnet/yostore/aws/api/entity/FulltextQueryResponse;->getStatus()I

    move-result v0

    if-eqz v0, :cond_9

    .line 289
    const-string v0, "err.sql.folder.ngstatus"

    iput-object v0, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->errMsg:Ljava/lang/String;

    .line 290
    const-string v0, "FolderBrowseHandler"

    const-string v1, "getDefaultSqlQuery: response file status is not 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 294
    :cond_9
    invoke-virtual {v9}, Lnet/yostore/aws/api/entity/FulltextQueryResponse;->getTotal()I

    move-result v0

    add-int/2addr v8, v0

    .line 299
    invoke-virtual {v9}, Lnet/yostore/aws/api/entity/FulltextQueryResponse;->getEntries()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v9}, Lnet/yostore/aws/api/entity/FulltextQueryResponse;->getEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0
.end method

.method public validateApicfg(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;I)V
    .locals 2
    .parameter "ctx"
    .parameter "apicfg"
    .parameter "rtyCnt"

    .prologue
    .line 112
    invoke-static {p2}, Lnet/yostore/aws/handler/LoginHandler;->validateApiCfg(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v0

    .line 113
    .local v0, aaastat:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-eq v0, v1, :cond_0

    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->FREEZE:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v1, :cond_3

    .line 115
    :cond_0
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->FREEZE:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v1, :cond_2

    .line 116
    const-string v1, "err.login.freeze"

    iput-object v1, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->errMsg:Ljava/lang/String;

    .line 120
    :goto_0
    invoke-static {}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->getApiCfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 138
    :cond_1
    :goto_1
    return-void

    .line 118
    :cond_2
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->errMsg:Ljava/lang/String;

    goto :goto_0

    .line 122
    :cond_3
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v1, :cond_4

    .line 124
    const-string v1, "err.login.fail"

    iput-object v1, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->errMsg:Ljava/lang/String;

    goto :goto_1

    .line 126
    :cond_4
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->Err:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    if-ne v0, v1, :cond_1

    .line 129
    add-int/lit8 p3, p3, 0x1

    const/4 v1, 0x3

    if-lt p3, v1, :cond_5

    .line 131
    const-string v1, "err.connect"

    iput-object v1, p0, Lnet/yostore/aws/handler/FolderBrowseHandler;->errMsg:Ljava/lang/String;

    goto :goto_1

    .line 135
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lnet/yostore/aws/handler/FolderBrowseHandler;->validateApicfg(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;I)V

    goto :goto_1
.end method
