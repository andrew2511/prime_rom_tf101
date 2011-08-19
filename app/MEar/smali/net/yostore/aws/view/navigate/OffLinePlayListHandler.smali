.class public Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;
.super Ljava/lang/Object;
.source "OffLinePlayListHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$FileType;,
        Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$ROOT;,
        Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$SearchType;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$net$yostore$aws$view$navigate$OffLinePlayListHandler$FileType:[I = null

.field static final DOC_EX:Ljava/lang/String; = "pdf or doc or docx or html or htm or txt"

.field private static final GB:J = 0x40000000L

.field private static final KB:J = 0x400L

.field private static final MB:J = 0x100000L

.field static final MUS_EX:Ljava/lang/String; = "aac or ac3 or aiff or ape or flac or mp2 or mp3 or ogg or wav or wma"

.field private static OR:Ljava/lang/String; = null

.field static final PIC_EX:Ljava/lang/String; = "jpeg or jpg or bmp or png"

.field private static final TAG:Ljava/lang/String; = "OffLinePlayListHandler"

.field private static final TB:J = 0x10000000000L

.field static final VID_EX:Ljava/lang/String; = "flv or 3gp"

.field private static nav:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;


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

.field public root:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$ROOT;

.field public searchtotal:I


# direct methods
.method static synthetic $SWITCH_TABLE$net$yostore$aws$view$navigate$OffLinePlayListHandler$FileType()[I
    .locals 3

    .prologue
    .line 64
    sget-object v0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->$SWITCH_TABLE$net$yostore$aws$view$navigate$OffLinePlayListHandler$FileType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$FileType;->values()[Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$FileType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$FileType;->ALL:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$FileType;

    invoke-virtual {v1}, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$FileType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$FileType;->DOC:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$FileType;

    invoke-virtual {v1}, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$FileType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$FileType;->MUSIC:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$FileType;

    invoke-virtual {v1}, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$FileType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$FileType;->PIC:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$FileType;

    invoke-virtual {v1}, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$FileType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$FileType;->VIDEO:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$FileType;

    invoke-virtual {v1}, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$FileType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->$SWITCH_TABLE$net$yostore$aws$view$navigate$OffLinePlayListHandler$FileType:[I

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

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const-string v0, " or "

    sput-object v0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->OR:Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    sput-object v0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->nav:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;

    .line 64
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->errMsg:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->ctx:Landroid/content/Context;

    .line 81
    iput-object v1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->homeid:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->homedisp:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 85
    sget-object v0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$ROOT;->Lib:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$ROOT;

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->root:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$ROOT;

    .line 88
    iput-object v1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->fsInfos:Ljava/util/List;

    .line 92
    iput-object v1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->_path:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->_pathId:Ljava/lang/String;

    .line 175
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->searchtotal:I

    .line 105
    return-void
.end method

.method private EntryInfoList2BrowseAdapter(Lnet/yostore/aws/view/navigate/BrowseAdapter;Ljava/util/List;)V
    .locals 13
    .parameter "libAdapter"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/yostore/aws/view/navigate/BrowseAdapter;",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/api/entity/EntryInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, elist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/EntryInfo;>;"
    const/4 v7, 0x1

    .line 187
    invoke-virtual {p1}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 188
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->fsInfos:Ljava/util/List;

    .line 194
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 198
    .local v12, itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/EntryInfo;>;"
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 225
    iget v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->searchtotal:I

    invoke-virtual {p1}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->getCount()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 226
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->fsInfos:Ljava/util/List;

    new-instance v1, Lnet/yostore/aws/handler/entity/FsInfo;

    invoke-direct {v1, v7}, Lnet/yostore/aws/handler/entity/FsInfo;-><init>(Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    new-instance v4, Lnet/yostore/aws/handler/entity/BrowseRaw;

    const-string v5, "MORE"

    const v6, 0x7f0200ac

    const-string v7, ""

    const-string v8, ""

    sget-wide v9, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    invoke-direct/range {v4 .. v10}, Lnet/yostore/aws/handler/entity/BrowseRaw;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p1, v4}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->add(Lnet/yostore/aws/handler/entity/BrowseRaw;)V

    .line 231
    :cond_0
    return-void

    .line 191
    .end local v12           #itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/EntryInfo;>;"
    :cond_1
    invoke-virtual {p1}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, v7

    invoke-virtual {p1, v0}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->getItem(I)Lnet/yostore/aws/handler/entity/BrowseRaw;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->remove(Lnet/yostore/aws/handler/entity/BrowseRaw;)V

    .line 192
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->fsInfos:Ljava/util/List;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->fsInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 199
    .restart local v12       #itms:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/api/entity/EntryInfo;>;"
    :cond_2
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/yostore/aws/api/entity/EntryInfo;

    .line 200
    .local v11, ei:Lnet/yostore/aws/api/entity/EntryInfo;
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->fsInfos:Ljava/util/List;

    new-instance v1, Lnet/yostore/aws/handler/entity/FsInfo;

    invoke-direct {v1, v11}, Lnet/yostore/aws/handler/entity/FsInfo;-><init>(Lnet/yostore/aws/api/entity/EntryInfo;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-virtual {v11}, Lnet/yostore/aws/api/entity/EntryInfo;->getKind()Lnet/yostore/aws/api/entity/EntryInfo$KIND;

    move-result-object v0

    sget-object v1, Lnet/yostore/aws/api/entity/EntryInfo$KIND;->FOLDER:Lnet/yostore/aws/api/entity/EntryInfo$KIND;

    if-ne v0, v1, :cond_3

    const-string v0, "1"

    move-object v3, v0

    .line 202
    .local v3, kind:Ljava/lang/String;
    :goto_2
    invoke-virtual {v11}, Lnet/yostore/aws/api/entity/EntryInfo;->getIsorigdeleted()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 203
    iget v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->searchtotal:I

    sub-int/2addr v0, v7

    iput v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->searchtotal:I

    goto :goto_1

    .line 201
    .end local v3           #kind:Ljava/lang/String;
    :cond_3
    const-string v0, "0"

    move-object v3, v0

    goto :goto_2

    .line 206
    .restart local v3       #kind:Ljava/lang/String;
    :cond_4
    new-instance v0, Lnet/yostore/aws/handler/entity/BrowseRaw;

    .line 207
    invoke-virtual {v11}, Lnet/yostore/aws/api/entity/EntryInfo;->getRawentryname()Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-virtual {v11}, Lnet/yostore/aws/api/entity/EntryInfo;->getRawentryname()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->getBrowseRawIcon(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 210
    invoke-virtual {v11}, Lnet/yostore/aws/api/entity/EntryInfo;->getId()Ljava/lang/String;

    move-result-object v4

    .line 211
    sget-wide v5, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    .line 206
    invoke-direct/range {v0 .. v6}, Lnet/yostore/aws/handler/entity/BrowseRaw;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V

    .line 205
    invoke-virtual {p1, v0}, Lnet/yostore/aws/view/navigate/BrowseAdapter;->add(Lnet/yostore/aws/handler/entity/BrowseRaw;)V

    goto/16 :goto_1
.end method

.method private static FileType2Ext(Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$FileType;)Ljava/lang/String;
    .locals 3
    .parameter "ft"

    .prologue
    .line 761
    const-string v0, ""

    .line 763
    .local v0, rtn:Ljava/lang/String;
    invoke-static {}, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->$SWITCH_TABLE$net$yostore$aws$view$navigate$OffLinePlayListHandler$FileType()[I

    move-result-object v1

    invoke-virtual {p0}, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$FileType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 780
    :goto_0
    return-object v0

    .line 765
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pdf or doc or docx or html or htm or txt"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->OR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "jpeg or jpg or bmp or png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->OR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "flv or 3gp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->OR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "aac or ac3 or aiff or ape or flac or mp2 or mp3 or ogg or wav or wma"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 766
    goto :goto_0

    .line 768
    :pswitch_1
    const-string v0, "pdf or doc or docx or html or htm or txt"

    .line 769
    goto :goto_0

    .line 771
    :pswitch_2
    const-string v0, "jpeg or jpg or bmp or png"

    .line 772
    goto :goto_0

    .line 774
    :pswitch_3
    const-string v0, "flv or 3gp"

    .line 775
    goto :goto_0

    .line 777
    :pswitch_4
    const-string v0, "aac or ac3 or aiff or ape or flac or mp2 or mp3 or ogg or wav or wma"

    goto :goto_0

    .line 763
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
    .line 593
    const/4 v0, 0x0

    .line 594
    .local v0, rtn:I
    const-string v2, "1"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 595
    const v0, 0x7f020050

    .line 607
    :goto_0
    return v0

    .line 597
    :cond_0
    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->parseMIMEType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 598
    .local v1, tp:Ljava/lang/String;
    const-string v2, "audio/*"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 599
    const v0, 0x7f020088

    goto :goto_0

    .line 600
    :cond_1
    const-string v2, "video/*"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 601
    const v0, 0x7f020087

    goto :goto_0

    .line 602
    :cond_2
    const-string v2, "image/*"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 603
    const v0, 0x7f02009b

    goto :goto_0

    .line 605
    :cond_3
    const v0, 0x7f020046

    goto :goto_0
.end method

.method private getCloudFileDir(Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/handler/entity/CPath;)Lnet/yostore/aws/view/navigate/BrowseAdapter;
    .locals 13
    .parameter "display"
    .parameter "fid"
    .parameter "xcpath"

    .prologue
    .line 395
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->_path:Ljava/lang/String;

    .line 396
    iput-object p2, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->_pathId:Ljava/lang/String;

    .line 397
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 398
    .local v8, brlist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/BrowseRaw;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->fsInfos:Ljava/util/List;

    .line 399
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-wide v1, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 400
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    invoke-static {v0, v1}, Lnet/yostore/aws/sqlite/helper/PlayListHelper;->getAllCompletePlayList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 401
    .local v11, pList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/PlayList;>;"
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-lt v10, v0, :cond_1

    .line 535
    .end local v11           #pList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/PlayList;>;"
    :cond_0
    new-instance v0, Lnet/yostore/aws/view/navigate/BrowseAdapter;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->ctx:Landroid/content/Context;

    const v2, 0x7f030007

    invoke-direct {v0, v1, v2, v8}, Lnet/yostore/aws/view/navigate/BrowseAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-object v0

    .line 402
    .restart local v11       #pList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/PlayList;>;"
    :cond_1
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/yostore/aws/sqlite/entity/PlayList;

    .line 404
    .local v7, _list:Lnet/yostore/aws/sqlite/entity/PlayList;
    new-instance v0, Lnet/yostore/aws/handler/entity/BrowseRaw;

    .line 405
    iget-object v1, v7, Lnet/yostore/aws/sqlite/entity/PlayList;->display:Ljava/lang/String;

    .line 406
    const v2, 0x7f020050

    .line 407
    const-string v3, "1"

    .line 408
    iget-object v4, v7, Lnet/yostore/aws/sqlite/entity/PlayList;->plistid:Ljava/lang/String;

    .line 409
    sget-wide v5, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    .line 404
    invoke-direct/range {v0 .. v6}, Lnet/yostore/aws/handler/entity/BrowseRaw;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V

    .line 403
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    new-instance v9, Lnet/yostore/aws/api/entity/FolderInfo;

    invoke-direct {v9}, Lnet/yostore/aws/api/entity/FolderInfo;-><init>()V

    .line 413
    .local v9, fi:Lnet/yostore/aws/api/entity/FolderInfo;
    const-string v0, ""

    invoke-virtual {v9, v0}, Lnet/yostore/aws/api/entity/FolderInfo;->setAttribute(Ljava/lang/String;)V

    .line 414
    iget-object v0, v7, Lnet/yostore/aws/sqlite/entity/PlayList;->display:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lnet/yostore/aws/api/entity/FolderInfo;->setDisplay(Ljava/lang/String;)V

    .line 415
    iget-object v0, v7, Lnet/yostore/aws/sqlite/entity/PlayList;->plistid:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lnet/yostore/aws/api/entity/FolderInfo;->setId(Ljava/lang/String;)V

    .line 416
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lnet/yostore/aws/api/entity/FolderInfo;->setIsbackup(Z)V

    .line 417
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lnet/yostore/aws/api/entity/FolderInfo;->setIsencrypted(Z)V

    .line 418
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lnet/yostore/aws/api/entity/FolderInfo;->setIsorigdeleted(Z)V

    .line 419
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Lnet/yostore/aws/api/entity/FolderInfo;->setIsowner(Z)V

    .line 420
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lnet/yostore/aws/api/entity/FolderInfo;->setIspublic(Z)V

    .line 421
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lnet/yostore/aws/api/entity/FolderInfo;->setIssharing(Z)V

    .line 422
    const-string v0, ""

    invoke-virtual {v9, v0}, Lnet/yostore/aws/api/entity/FolderInfo;->setMarkid(Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->fsInfos:Ljava/util/List;

    new-instance v1, Lnet/yostore/aws/handler/entity/FsInfo;

    invoke-direct {v1, v9}, Lnet/yostore/aws/handler/entity/FsInfo;-><init>(Lnet/yostore/aws/api/entity/FolderInfo;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 426
    .end local v7           #_list:Lnet/yostore/aws/sqlite/entity/PlayList;
    .end local v9           #fi:Lnet/yostore/aws/api/entity/FolderInfo;
    .end local v10           #i:I
    .end local v11           #pList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/PlayList;>;"
    :cond_2
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->ctx:Landroid/content/Context;

    invoke-static {v0, p2}, Lnet/yostore/aws/sqlite/helper/SongHelper;->getSongListByPlist(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 428
    .local v12, sList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/Song;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int v10, v0, v1

    .restart local v10       #i:I
    :goto_1
    if-ltz v10, :cond_0

    .line 429
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/yostore/aws/sqlite/entity/Song;

    .line 431
    .local v7, _list:Lnet/yostore/aws/sqlite/entity/Song;
    new-instance v0, Lnet/yostore/aws/handler/entity/BrowseRaw;

    .line 432
    iget-object v1, v7, Lnet/yostore/aws/sqlite/entity/Song;->display:Ljava/lang/String;

    .line 433
    const v2, 0x7f02004f

    .line 434
    const-string v3, "0"

    .line 435
    iget-object v4, v7, Lnet/yostore/aws/sqlite/entity/Song;->plistid:Ljava/lang/String;

    .line 436
    sget-wide v5, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    .line 431
    invoke-direct/range {v0 .. v6}, Lnet/yostore/aws/handler/entity/BrowseRaw;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V

    .line 430
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    new-instance v9, Lnet/yostore/aws/api/entity/FileInfo;

    invoke-direct {v9}, Lnet/yostore/aws/api/entity/FileInfo;-><init>()V

    .line 441
    .local v9, fi:Lnet/yostore/aws/api/entity/FileInfo;
    const-string v0, ""

    invoke-virtual {v9, v0}, Lnet/yostore/aws/api/entity/FileInfo;->setAttribute(Ljava/lang/String;)V

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, v7, Lnet/yostore/aws/sqlite/entity/Song;->mp3id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lnet/yostore/aws/sqlite/entity/Song;->display:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lnet/yostore/aws/api/entity/FileInfo;->setDisplay(Ljava/lang/String;)V

    .line 443
    iget-object v0, v7, Lnet/yostore/aws/sqlite/entity/Song;->shortcutid:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lnet/yostore/aws/api/entity/FileInfo;->setId(Ljava/lang/String;)V

    .line 444
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lnet/yostore/aws/api/entity/FileInfo;->setIsbackup(Z)V

    .line 445
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lnet/yostore/aws/api/entity/FileInfo;->setIsencrypted(Z)V

    .line 446
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lnet/yostore/aws/api/entity/FileInfo;->setIsorigdeleted(Z)V

    .line 447
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Lnet/yostore/aws/api/entity/FileInfo;->setIsowner(Z)V

    .line 448
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lnet/yostore/aws/api/entity/FileInfo;->setIspublic(Z)V

    .line 449
    const-string v0, ""

    invoke-virtual {v9, v0}, Lnet/yostore/aws/api/entity/FileInfo;->setMarkid(Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->fsInfos:Ljava/util/List;

    new-instance v1, Lnet/yostore/aws/handler/entity/FsInfo;

    invoke-direct {v1, v9}, Lnet/yostore/aws/handler/entity/FsInfo;-><init>(Lnet/yostore/aws/api/entity/FileInfo;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    add-int/lit8 v10, v10, -0x1

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$ROOT;Lnet/yostore/aws/api/ApiConfig;Landroid/content/SharedPreferences;)Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;
    .locals 4
    .parameter "ctx"
    .parameter "root"
    .parameter "apicfg"
    .parameter "mPrefs"

    .prologue
    .line 107
    sget-object v1, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->nav:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;

    if-nez v1, :cond_0

    new-instance v1, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;

    invoke-direct {v1}, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;-><init>()V

    sput-object v1, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->nav:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;

    .line 108
    :cond_0
    sget-object v1, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->nav:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;

    const-string v2, ""

    iput-object v2, v1, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->errMsg:Ljava/lang/String;

    .line 109
    sget-object v1, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->nav:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;

    iput-object p0, v1, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->ctx:Landroid/content/Context;

    .line 110
    sget-object v1, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->nav:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;

    iput-object p1, v1, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->root:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$ROOT;

    .line 111
    invoke-static {p0}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->getAccInfo(Landroid/content/Context;)Lnet/yostore/aws/sqlite/entity/AccInfo;

    move-result-object v0

    .line 112
    .local v0, ai:Lnet/yostore/aws/sqlite/entity/AccInfo;
    iget-object v1, v0, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lnet/yostore/aws/sqlite/entity/AccInfo;->pwd:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, v0, Lnet/yostore/aws/sqlite/entity/AccInfo;->pwd:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 113
    iget-object v1, v0, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    iput-object v1, p2, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    .line 114
    iget-object v1, v0, Lnet/yostore/aws/sqlite/entity/AccInfo;->pwd:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lnet/yostore/aws/api/ApiConfig;->password:Ljava/lang/String;

    .line 115
    iget-object v1, v0, Lnet/yostore/aws/sqlite/entity/AccInfo;->sgw:Ljava/lang/String;

    iput-object v1, p2, Lnet/yostore/aws/api/ApiConfig;->ServiceGateway:Ljava/lang/String;

    .line 116
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/entity/AccInfo;->getCapacity()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lnet/yostore/aws/api/ApiConfig;->capacity:Ljava/lang/String;

    .line 117
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/entity/AccInfo;->getExpireDate()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lnet/yostore/aws/api/ApiConfig;->expireDate:Ljava/lang/String;

    .line 118
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/entity/AccInfo;->getUsedquota()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lnet/yostore/aws/api/ApiConfig;->usedquota:Ljava/lang/String;

    .line 121
    :cond_1
    sget-object v1, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->nav:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;

    iput-object p2, v1, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 122
    sget-object v1, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->nav:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;

    sget-wide v2, Lcom/ecareme/mear/Mear;->meta_folder_id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->homeid:Ljava/lang/String;

    .line 123
    sget-object v1, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->nav:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;

    const v2, 0x7f06007e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->homedisp:Ljava/lang/String;

    .line 161
    sget-object v1, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->nav:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;

    return-object v1
.end method

.method private static getKind([Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$FileType;)Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;
    .locals 5
    .parameter "fts"

    .prologue
    .line 746
    sget-object v1, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->FILE:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    .line 747
    .local v1, rtn:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    .line 753
    :goto_1
    return-object v1

    .line 747
    :cond_0
    aget-object v0, p0, v3

    .line 748
    .local v0, ft:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$FileType;
    sget-object v4, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$FileType;->ALL:Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$FileType;

    if-ne v0, v4, :cond_1

    .line 749
    sget-object v1, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->ALL:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    .line 750
    goto :goto_1

    .line 747
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getMySyncFolderId()Ljava/lang/String;
    .locals 9

    .prologue
    .line 552
    iget-object v6, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v6, v6, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v6, v6, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 553
    :cond_0
    new-instance v1, Lnet/yostore/aws/api/helper/FindPropfindHelper;

    .line 554
    const-string v6, "-5"

    const-string v7, "MySyncFolder"

    const-string v8, "system.folder"

    .line 553
    invoke-direct {v1, v6, v7, v8}, Lnet/yostore/aws/api/helper/FindPropfindHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    .local v1, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    const/4 v5, 0x0

    .line 557
    .local v5, response:Lnet/yostore/aws/api/entity/FindPropfindResponse;
    :try_start_0
    iget-object v6, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v1, v6}, Lnet/yostore/aws/api/helper/FindPropfindHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lnet/yostore/aws/api/entity/FindPropfindResponse;

    move-object v5, v0

    .line 558
    invoke-virtual {v5}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getStatus()I

    move-result v6

    if-nez v6, :cond_2

    .line 560
    iget-object v6, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v5}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    .line 561
    iget-object v6, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v6, v6, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 562
    new-instance v3, Lnet/yostore/aws/api/helper/FolderCreateHelper;

    .line 563
    const-string v6, "-5"

    const-string v7, "MySyncFolder"

    const-string v8, ""

    .line 562
    invoke-direct {v3, v6, v7, v8}, Lnet/yostore/aws/api/helper/FolderCreateHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    .local v3, fcapihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    const/4 v4, 0x0

    .line 565
    .local v4, fcresponse:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    iget-object v6, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

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
    iget-object v6, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/FolderCreateResponse;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    .end local v3           #fcapihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .end local v4           #fcresponse:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    :cond_1
    :goto_0
    iget-object v6, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    iget-object v6, v6, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    .line 589
    .end local v1           #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .end local v5           #response:Lnet/yostore/aws/api/entity/FindPropfindResponse;
    :goto_1
    return-object v6

    .line 571
    .restart local v1       #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .restart local v5       #response:Lnet/yostore/aws/api/entity/FindPropfindResponse;
    :cond_2
    :try_start_1
    invoke-virtual {v5}, Lnet/yostore/aws/api/entity/FindPropfindResponse;->getStatus()I

    move-result v6

    const/16 v7, 0xda

    if-ne v6, v7, :cond_1

    .line 572
    new-instance v3, Lnet/yostore/aws/api/helper/FolderCreateHelper;

    .line 573
    const-string v6, "-5"

    const-string v7, "MySyncFolder"

    const-string v8, ""

    .line 572
    invoke-direct {v3, v6, v7, v8}, Lnet/yostore/aws/api/helper/FolderCreateHelper;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    .restart local v3       #fcapihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    const/4 v4, 0x0

    .line 575
    .restart local v4       #fcresponse:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    iget-object v6, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v3, v6}, Lnet/yostore/aws/api/helper/FolderCreateHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v4

    .end local v4           #fcresponse:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    check-cast v4, Lnet/yostore/aws/api/entity/FolderCreateResponse;

    .line 576
    .restart local v4       #fcresponse:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/FolderCreateResponse;->getStatus()I

    move-result v6

    if-nez v6, :cond_1

    .line 578
    iget-object v6, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/FolderCreateResponse;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 581
    .end local v3           #fcapihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .end local v4           #fcresponse:Lnet/yostore/aws/api/entity/FolderCreateResponse;
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 582
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->errMsg:Ljava/lang/String;

    .line 583
    const/4 v6, 0x0

    goto :goto_1

    .line 589
    .end local v1           #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v5           #response:Lnet/yostore/aws/api/entity/FindPropfindResponse;
    :cond_3
    iget-object v6, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

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

    .line 543
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

    .line 547
    :goto_0
    return-object v0

    .line 544
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

    .line 545
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

    .line 546
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

    .line 547
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

    .line 328
    new-instance v5, Ljava/util/Stack;

    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    iput-object v5, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->dstack:Ljava/util/Stack;

    .line 331
    iget-object v5, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->eventSharedInfo:Lnet/yostore/aws/api/entity/UserSharedFolderInfo;

    if-eqz v5, :cond_1

    .line 332
    move-object v0, v4

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0

    .line 333
    .local v3, ids:[Ljava/lang/String;
    move-object v0, v4

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0

    .line 338
    .local v1, dsps:[Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    array-length v4, v3

    array-length v5, v1

    if-ne v4, v5, :cond_0

    .line 339
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v4, v3

    if-lt v2, v4, :cond_2

    .line 343
    .end local v2           #i:I
    :cond_0
    return-void

    .line 335
    .end local v1           #dsps:[Ljava/lang/String;
    .end local v3           #ids:[Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->eventInfo:Lnet/yostore/aws/api/entity/EntryInfo;

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/EntryInfo;->getAncestorid()Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 336
    .restart local v3       #ids:[Ljava/lang/String;
    iget-object v4, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->eventInfo:Lnet/yostore/aws/api/entity/EntryInfo;

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/EntryInfo;->getAncestorname()Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .restart local v1       #dsps:[Ljava/lang/String;
    goto :goto_0

    .line 340
    .restart local v2       #i:I
    :cond_2
    iget-object v4, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->dstack:Ljava/util/Stack;

    new-instance v5, Lnet/yostore/aws/handler/entity/CPath;

    aget-object v6, v1, v2

    aget-object v7, v3, v2

    invoke-direct {v5, v6, v7}, Lnet/yostore/aws/handler/entity/CPath;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 339
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static makeExtStr([Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$FileType;)Ljava/lang/String;
    .locals 4
    .parameter "ft"

    .prologue
    .line 784
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 785
    .local v1, sb:Ljava/lang/StringBuffer;
    if-eqz p0, :cond_0

    array-length v2, p0

    if-lez v2, :cond_0

    .line 786
    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-static {v2}, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->FileType2Ext(Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$FileType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 787
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_1

    .line 790
    .end local v0           #i:I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 788
    .restart local v0       #i:I
    :cond_1
    sget-object v2, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->OR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-static {v3}, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->FileType2Ext(Lnet/yostore/aws/view/navigate/OffLinePlayListHandler$FileType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 787
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private parseIconId([Ljava/lang/String;[Ljava/lang/String;)[I
    .locals 6
    .parameter "disp"
    .parameter "isFolder"

    .prologue
    .line 610
    array-length v4, p1

    new-array v2, v4, [I

    .line 611
    .local v2, ii:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, p1

    if-lt v1, v4, :cond_0

    .line 633
    return-object v2

    .line 612
    :cond_0
    aget-object v0, p1, v1

    .line 618
    .local v0, dsp:Ljava/lang/String;
    const-string v4, "1"

    aget-object v5, p2, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 619
    const v4, 0x7f020050

    aput v4, v2, v1

    .line 611
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 621
    :cond_1
    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->parseMIMEType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 622
    .local v3, tp:Ljava/lang/String;
    const-string v4, "audio/*"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 623
    const v4, 0x7f020088

    aput v4, v2, v1

    goto :goto_1

    .line 624
    :cond_2
    const-string v4, "video/*"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 625
    const v4, 0x7f020087

    aput v4, v2, v1

    goto :goto_1

    .line 626
    :cond_3
    const-string v4, "image/*"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 627
    const v4, 0x7f02009b

    aput v4, v2, v1

    goto :goto_1

    .line 629
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
    .line 280
    const/16 v4, -0x3e7

    .line 281
    .local v4, rtn:I
    if-gez p1, :cond_0

    move v5, v4

    .line 299
    .end local v4           #rtn:I
    .local v5, rtn:I
    :goto_0
    return v5

    .line 283
    .end local v5           #rtn:I
    .restart local v4       #rtn:I
    :cond_0
    iget-object v6, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->fsInfos:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/yostore/aws/handler/entity/FsInfo;

    .line 285
    .local v2, fi:Lnet/yostore/aws/handler/entity/FsInfo;
    const/4 v0, 0x0

    .line 286
    .local v0, apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    const-string v6, "1"

    iget-object v7, v2, Lnet/yostore/aws/handler/entity/FsInfo;->isfolder:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 287
    new-instance v0, Lnet/yostore/aws/api/helper/FolderRemoveHelper;

    .end local v0           #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    iget-object v6, v2, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-direct {v0, v6}, Lnet/yostore/aws/api/helper/FolderRemoveHelper;-><init>(Ljava/lang/String;)V

    .line 291
    .restart local v0       #apihelper:Lnet/yostore/aws/api/helper/BaseHelper;
    :goto_1
    const/4 v3, 0x0

    .line 293
    .local v3, response:Lnet/yostore/aws/api/entity/ApiResponse;
    :try_start_0
    iget-object v6, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v0, v6}, Lnet/yostore/aws/api/helper/BaseHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v3

    .line 294
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/ApiResponse;->getStatus()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :goto_2
    move v5, v4

    .line 299
    .end local v4           #rtn:I
    .restart local v5       #rtn:I
    goto :goto_0

    .line 289
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

    .line 295
    .restart local v3       #response:Lnet/yostore/aws/api/entity/ApiResponse;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 296
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public diveDeep(Ljava/lang/String;Ljava/lang/String;)Lnet/yostore/aws/view/navigate/BrowseAdapter;
    .locals 2
    .parameter "display"
    .parameter "fid"

    .prologue
    .line 318
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->errMsg:Ljava/lang/String;

    .line 319
    const/4 v0, 0x0

    .line 321
    .local v0, cpath:Lnet/yostore/aws/handler/entity/CPath;
    new-instance v0, Lnet/yostore/aws/handler/entity/CPath;

    .end local v0           #cpath:Lnet/yostore/aws/handler/entity/CPath;
    invoke-direct {v0, p1, p2}, Lnet/yostore/aws/handler/entity/CPath;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    .restart local v0       #cpath:Lnet/yostore/aws/handler/entity/CPath;
    iget-object v1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->dstack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 324
    invoke-direct {p0, p1, p2, v0}, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->getCloudFileDir(Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/handler/entity/CPath;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v1

    return-object v1
.end method

.method public diveFloat()Lnet/yostore/aws/view/navigate/BrowseAdapter;
    .locals 8

    .prologue
    .line 362
    const-string v6, ""

    iput-object v6, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->errMsg:Ljava/lang/String;

    .line 363
    iget-object v6, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->dstack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 364
    invoke-virtual {p0}, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->diveTop()Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v6

    .line 389
    :goto_0
    return-object v6

    .line 365
    :cond_0
    iget-object v6, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->dstack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v6

    const/4 v7, 0x1

    if-gt v6, v7, :cond_1

    .line 366
    invoke-virtual {p0}, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->diveTop()Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v6

    goto :goto_0

    .line 368
    :cond_1
    iget-object v6, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->dstack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 369
    const/4 v2, 0x0

    .line 370
    .local v2, cpath:Lnet/yostore/aws/handler/entity/CPath;
    const/4 v4, 0x0

    .line 372
    .local v4, ppath:Lnet/yostore/aws/handler/entity/CPath;
    :try_start_0
    iget-object v6, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->dstack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->diveTop()Lnet/yostore/aws/view/navigate/BrowseAdapter;

    .line 389
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 374
    :cond_2
    iget-object v6, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->dstack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lnet/yostore/aws/handler/entity/CPath;

    move-object v2, v0

    .line 375
    iget-object v6, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->dstack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 376
    new-instance v5, Lnet/yostore/aws/handler/entity/CPath;

    iget-object v6, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->homedisp:Ljava/lang/String;

    iget-object v7, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->homeid:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lnet/yostore/aws/handler/entity/CPath;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .end local v4           #ppath:Lnet/yostore/aws/handler/entity/CPath;
    .local v5, ppath:Lnet/yostore/aws/handler/entity/CPath;
    move-object v4, v5

    .line 379
    .end local v5           #ppath:Lnet/yostore/aws/handler/entity/CPath;
    .restart local v4       #ppath:Lnet/yostore/aws/handler/entity/CPath;
    :goto_2
    iget-object v6, v2, Lnet/yostore/aws/handler/entity/CPath;->disp:Ljava/lang/String;

    iget-object v7, v2, Lnet/yostore/aws/handler/entity/CPath;->id:Ljava/lang/String;

    invoke-direct {p0, v6, v7, v4}, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->getCloudFileDir(Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/handler/entity/CPath;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v1

    .line 380
    .local v1, ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;
    iget-object v6, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->dstack:Ljava/util/Stack;

    invoke-virtual {v6, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    move-object v6, v1

    .line 381
    goto :goto_0

    .line 378
    .end local v1           #ba:Lnet/yostore/aws/view/navigate/BrowseAdapter;
    :cond_3
    iget-object v6, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->dstack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lnet/yostore/aws/handler/entity/CPath;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 384
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 385
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

    iput-object v6, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->errMsg:Ljava/lang/String;

    .line 386
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public diveHere()Lnet/yostore/aws/view/navigate/BrowseAdapter;
    .locals 4

    .prologue
    .line 346
    const-string v2, ""

    iput-object v2, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->errMsg:Ljava/lang/String;

    .line 347
    iget-object v2, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->dstack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 348
    invoke-virtual {p0}, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->diveTop()Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v2

    .line 356
    :goto_0
    return-object v2

    .line 350
    :cond_0
    iget-object v2, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->dstack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/handler/entity/CPath;

    .line 351
    .local v0, cpath:Lnet/yostore/aws/handler/entity/CPath;
    const/4 v1, 0x0

    .line 352
    .local v1, ppath:Lnet/yostore/aws/handler/entity/CPath;
    iget-object v2, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->dstack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 353
    const/4 v1, 0x0

    .line 356
    :goto_1
    iget-object v2, v0, Lnet/yostore/aws/handler/entity/CPath;->disp:Ljava/lang/String;

    iget-object v3, v0, Lnet/yostore/aws/handler/entity/CPath;->id:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->getCloudFileDir(Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/handler/entity/CPath;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

    move-result-object v2

    goto :goto_0

    .line 355
    :cond_1
    iget-object v2, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->dstack:Ljava/util/Stack;

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

    .line 304
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->errMsg:Ljava/lang/String;

    .line 305
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->dstack:Ljava/util/Stack;

    .line 307
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->homeid:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 308
    const-string v0, "can not init this folder"

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->errMsg:Ljava/lang/String;

    move-object v0, v2

    .line 312
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->homedisp:Ljava/lang/String;

    iget-object v1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->homeid:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->getCloudFileDir(Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/handler/entity/CPath;)Lnet/yostore/aws/view/navigate/BrowseAdapter;

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
    .line 102
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->dstack:Ljava/util/Stack;

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
    .line 169
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->elist:Ljava/util/List;

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
    .line 89
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->fsInfos:Ljava/util/List;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->_path:Ljava/lang/String;

    return-object v0
.end method

.method public getPathId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->_pathId:Ljava/lang/String;

    return-object v0
.end method

.method public isTop()Z
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->dstack:Ljava/util/Stack;

    if-nez v0, :cond_0

    .line 794
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->dstack:Ljava/util/Stack;

    .line 795
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->dstack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public parseMIMEType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "end"

    .prologue
    .line 639
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

    .line 642
    const-string v0, "mp3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    const-string v0, "audio/*"

    .line 673
    :goto_0
    return-object v0

    .line 647
    :cond_0
    const-string v0, "avi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mp4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 648
    const-string v0, "mpeg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mpg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 649
    const-string v0, "m4v"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mov"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 650
    const-string v0, "mkv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "vob"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 651
    const-string v0, "vcd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "svcd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 652
    const-string v0, "rm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "rmvb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 653
    const-string v0, "divx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "wmv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 654
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

    .line 656
    :cond_1
    const-string v0, "video/*"

    goto/16 :goto_0

    .line 658
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

    .line 660
    :cond_3
    const-string v0, "image/*"

    goto/16 :goto_0

    .line 663
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

    .line 664
    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 665
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

    .line 666
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

    .line 669
    :cond_5
    const-string v0, "text/*"

    goto/16 :goto_0

    .line 673
    :cond_6
    const-string v0, "*/*"

    goto/16 :goto_0
.end method

.method public setCurrentEntryInfo(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 183
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->elist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/api/entity/EntryInfo;

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->eventInfo:Lnet/yostore/aws/api/entity/EntryInfo;

    .line 184
    return-void
.end method

.method public setCurrentFolderListInfo(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 234
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->folderList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/api/entity/UserSharedFolderInfo;

    iput-object v0, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->eventSharedInfo:Lnet/yostore/aws/api/entity/UserSharedFolderInfo;

    .line 235
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
    .line 103
    .local p1, dstack:Ljava/util/Stack;,"Ljava/util/Stack<Lnet/yostore/aws/handler/entity/CPath;>;"
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->dstack:Ljava/util/Stack;

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
    .line 172
    .local p1, elist:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/EntryInfo;>;"
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->elist:Ljava/util/List;

    .line 173
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
    .line 90
    .local p1, fsInfos:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/FsInfo;>;"
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->fsInfos:Ljava/util/List;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .parameter "_path"

    .prologue
    .line 93
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->_path:Ljava/lang/String;

    return-void
.end method

.method public setPathId(Ljava/lang/String;)V
    .locals 0
    .parameter "_pathId"

    .prologue
    .line 96
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/OffLinePlayListHandler;->_pathId:Ljava/lang/String;

    return-void
.end method
