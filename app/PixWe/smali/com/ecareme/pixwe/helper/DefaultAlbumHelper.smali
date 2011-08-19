.class public Lcom/ecareme/pixwe/helper/DefaultAlbumHelper;
.super Ljava/lang/Object;
.source "DefaultAlbumHelper.java"


# static fields
.field public static final Album:[Ljava/lang/String; = null

.field public static final Media:[Ljava/lang/String; = null

.field private static final MySyncFolder:Ljava/lang/String; = "-5"

.field private static final MySyncFolderId:I = -0x5

.field public static STATUS:Ljava/lang/String; = null

.field private static final TP_IMAGE:Ljava/lang/String; = "jpg jpeg png"

.field private static final TP_VIDEO:Ljava/lang/String; = " avi mp4 mpeg mpg m4v mov mkv vob vcd svcd rm rmvb divx wmv 3gp 3gpp flv"

.field public static final Top50Album:Ljava/lang/String; = "[Recent Photos]"

.field public static final Top50FolderId:I = 0x0

.field private static final pageSize:I = 0x32


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    const-string v0, ""

    sput-object v0, Lcom/ecareme/pixwe/helper/DefaultAlbumHelper;->STATUS:Ljava/lang/String;

    .line 39
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Pet"

    aput-object v1, v0, v2

    const-string v1, "Natural"

    aput-object v1, v0, v3

    const-string v1, "Scenery"

    aput-object v1, v0, v4

    sput-object v0, Lcom/ecareme/pixwe/helper/DefaultAlbumHelper;->Album:[Ljava/lang/String;

    .line 40
    new-array v0, v5, [Ljava/lang/String;

    .line 41
    const-string v1, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><mi><f><i>70941868</i><da>1298116000940</da><d>DC001.jpg</d><ty>0</ty><r>0</r><no></no><us>0</us></f><f><i>70941888</i><da>1298162015887</da><d>DC002.jpg</d><ty>0</ty><r>0</r><no></no><us>0</us></f><f><i>70941905</i><da>1298196024301</da><d>DC003.jpg</d><ty>0</ty><r>0</r><no></no><us>0</us></f><f><i>70941921</i><da>1298196124301</da><d>DC004.jpg</d><ty>0</ty><r>0</r><no></no><us>0</us></f></mi>"

    aput-object v1, v0, v2

    .line 42
    const-string v1, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><mi><f><i>70941787</i><da>1298216000940</da><d>DC001.jpg</d><ty>0</ty><r>0</r><no></no><us>0</us></f><f><i>70941809</i><da>1298262015887</da><d>DC002.jpg</d><ty>0</ty><r>0</r><no></no><us>0</us></f><f><i>70941842</i><da>1298296024301</da><d>DC003.jpg</d><ty>0</ty><r>0</r><no></no><us>0</us></f></mi>"

    aput-object v1, v0, v3

    .line 43
    const-string v1, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><mi><f><i>70941945</i><da>1298316000940</da><d>DC001.jpg</d><ty>0</ty><r>0</r><no></no><us>0</us></f><f><i>70941966</i><da>1298362015887</da><d>DC002.jpg</d><ty>0</ty><r>0</r><no></no><us>0</us></f><f><i>70941986</i><da>1298396024301</da><d>DC003.jpg</d><ty>0</ty><r>0</r><no></no><us>0</us></f><f><i>70942003</i><da>1298396324301</da><d>DC004.jpg</d><ty>0</ty><r>0</r><no></no><us>0</us></f></mi>"

    aput-object v1, v0, v4

    .line 40
    sput-object v0, Lcom/ecareme/pixwe/helper/DefaultAlbumHelper;->Media:[Ljava/lang/String;

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

.method private static convertEntryInfoToMediaInfoEntity(Lnet/yostore/aws/api/entity/EntryInfo;)Lnet/yostore/aws/api/entity/MediaInfoEntity;
    .locals 5
    .parameter "ei"

    .prologue
    const/4 v4, 0x0

    .line 90
    new-instance v0, Lnet/yostore/aws/api/entity/MediaInfoEntity;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/MediaInfoEntity;-><init>()V

    .line 91
    .local v0, mi:Lnet/yostore/aws/api/entity/MediaInfoEntity;
    invoke-virtual {p0}, Lnet/yostore/aws/api/entity/EntryInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lnet/yostore/aws/api/entity/MediaInfoEntity;->setI(J)V

    .line 92
    invoke-virtual {p0}, Lnet/yostore/aws/api/entity/EntryInfo;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lnet/yostore/aws/api/entity/MediaInfoEntity;->setDa(J)V

    .line 93
    invoke-virtual {p0}, Lnet/yostore/aws/api/entity/EntryInfo;->getRawentryname()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, name:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/MediaInfoEntity;->setD(Ljava/lang/String;)V

    .line 95
    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ".jpeg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {v0, v4}, Lnet/yostore/aws/api/entity/MediaInfoEntity;->setTy(I)V

    .line 100
    :goto_0
    invoke-virtual {v0, v4}, Lnet/yostore/aws/api/entity/MediaInfoEntity;->setUs(I)V

    .line 101
    const/4 v2, -0x5

    invoke-virtual {v0, v2}, Lnet/yostore/aws/api/entity/MediaInfoEntity;->setFr(I)V

    .line 103
    return-object v0

    .line 96
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lnet/yostore/aws/api/entity/MediaInfoEntity;->setTy(I)V

    goto :goto_0
.end method

.method public static getAlbumInfo(JLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "st"
    .parameter "uid"

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<pixwe_ai><ss>0</ss><bt>0</bt><st>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 50
    const-string v1, "</st><pw></pw><in>3</in><sty>0</sty><or>0</or><mfi>-999</mfi><su></su><on>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 51
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 52
    const-string v1, "</on></pixwe_ai>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMySyncTop50MediaInfoList(Lnet/yostore/aws/api/ApiConfig;)Ljava/util/List;
    .locals 15
    .parameter "apicfg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/yostore/aws/api/ApiConfig;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/MediaInfoBean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v14, 0x0

    .line 57
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 59
    .local v10, list:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/MediaInfoBean;>;"
    const-string v1, ""

    sput-object v1, Lcom/ecareme/pixwe/helper/DefaultAlbumHelper;->STATUS:Ljava/lang/String;

    .line 60
    new-instance v0, Lnet/yostore/aws/api/helper/SqlQueryHelper;

    const-string v1, ""

    const-string v2, ""

    const/16 v3, 0x32

    const/4 v4, 0x0

    sget-object v5, Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;->FILE:Lnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;

    const-string v6, "jpg jpeg png avi mp4 mpeg mpg m4v mov mkv vob vcd svcd rm rmvb divx wmv 3gp 3gpp flv"

    const-string v7, "-5"

    invoke-direct/range {v0 .. v7}, Lnet/yostore/aws/api/helper/SqlQueryHelper;-><init>(Ljava/lang/String;Ljava/lang/String;IILnet/yostore/aws/api/entity/FulltextQueryRequest$Kind;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .local v0, helper:Lnet/yostore/aws/api/helper/SqlQueryHelper;
    :try_start_0
    invoke-virtual {v0, p0}, Lnet/yostore/aws/api/helper/SqlQueryHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v13

    check-cast v13, Lnet/yostore/aws/api/entity/FulltextQueryResponse;

    .line 63
    .local v13, response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    if-eqz v13, :cond_1

    invoke-virtual {v13}, Lnet/yostore/aws/api/entity/FulltextQueryResponse;->getStatus()I

    move-result v1

    if-nez v1, :cond_1

    .line 64
    invoke-virtual {v13}, Lnet/yostore/aws/api/entity/FulltextQueryResponse;->getEntries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v1, v10

    .line 84
    .end local v13           #response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    :goto_1
    return-object v1

    .line 64
    .restart local v13       #response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/yostore/aws/api/entity/EntryInfo;

    .line 65
    .local v9, ei:Lnet/yostore/aws/api/entity/EntryInfo;
    new-instance v12, Lnet/yostore/aws/handler/entity/MediaInfoBean;

    invoke-direct {v12, p0}, Lnet/yostore/aws/handler/entity/MediaInfoBean;-><init>(Lnet/yostore/aws/api/ApiConfig;)V

    .line 66
    .local v12, mib:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    invoke-static {v9}, Lcom/ecareme/pixwe/helper/DefaultAlbumHelper;->convertEntryInfoToMediaInfoEntity(Lnet/yostore/aws/api/entity/EntryInfo;)Lnet/yostore/aws/api/entity/MediaInfoEntity;

    move-result-object v11

    .line 67
    .local v11, mi:Lnet/yostore/aws/api/entity/MediaInfoEntity;
    const-wide/16 v2, 0x0

    invoke-virtual {v12, v2, v3}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setMediaInfoFolder(J)V

    .line 68
    invoke-virtual {v12, v11}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setMediaInfo(Lnet/yostore/aws/api/entity/MediaInfoEntity;)V

    .line 69
    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/AAAException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 77
    .end local v9           #ei:Lnet/yostore/aws/api/entity/EntryInfo;
    .end local v11           #mi:Lnet/yostore/aws/api/entity/MediaInfoEntity;
    .end local v12           #mib:Lnet/yostore/aws/handler/entity/MediaInfoBean;
    .end local v13           #response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 78
    .local v8, e:Lnet/yostore/aws/api/exception/AAAException;
    const-string v1, "2"

    sput-object v1, Lcom/ecareme/pixwe/helper/DefaultAlbumHelper;->STATUS:Ljava/lang/String;

    .line 79
    invoke-virtual {v8}, Lnet/yostore/aws/api/exception/AAAException;->printStackTrace()V

    move-object v1, v14

    .line 80
    goto :goto_1

    .end local v8           #e:Lnet/yostore/aws/api/exception/AAAException;
    .restart local v13       #response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    :cond_1
    move-object v1, v14

    .line 74
    goto :goto_1

    .line 82
    .end local v13           #response:Lnet/yostore/aws/api/entity/FulltextQueryResponse;
    :catch_1
    move-exception v1

    move-object v8, v1

    .line 83
    .local v8, e:Lnet/yostore/aws/api/exception/APIException;
    invoke-virtual {v8}, Lnet/yostore/aws/api/exception/APIException;->printStackTrace()V

    move-object v1, v14

    .line 84
    goto :goto_1
.end method
