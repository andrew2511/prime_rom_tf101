.class public Lnet/yostore/aws/api/sax/FolderBrowse;
.super Lnet/yostore/aws/api/sax/BaseSaxHandler;
.source "FolderBrowse.java"


# instance fields
.field ai:Lnet/yostore/aws/api/entity/AlbumInfo;

.field attr:Z

.field fi:Lnet/yostore/aws/api/entity/FileInfo;

.field fo:Lnet/yostore/aws/api/entity/FolderInfo;

.field isAlbumInfo:Z

.field isFile:Z

.field isFolder:Z

.field private response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Lnet/yostore/aws/api/sax/BaseSaxHandler;-><init>()V

    .line 19
    new-instance v0, Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    .line 20
    iput-boolean v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isFolder:Z

    .line 21
    iput-boolean v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isFile:Z

    .line 22
    iput-boolean v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->attr:Z

    .line 23
    iput-boolean v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isAlbumInfo:Z

    .line 17
    return-void
.end method

.method private b64decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "b64"

    .prologue
    .line 166
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {p1}, Lcom/ecareme/utils/codec/Base64;->decodeFast(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "UTF8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    return-object v1

    .line 167
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 168
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 169
    const-string v1, ""

    goto :goto_0
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    invoke-super {p0, p1, p2, p3}, Lnet/yostore/aws/api/sax/BaseSaxHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-boolean v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isFolder:Z

    if-eqz v0, :cond_19

    .line 34
    iget-boolean v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isAlbumInfo:Z

    if-eqz v0, :cond_7

    .line 35
    const-string v0, "ai"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fo:Lnet/yostore/aws/api/entity/FolderInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->ai:Lnet/yostore/aws/api/entity/AlbumInfo;

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderInfo;->setAlbumInfo(Lnet/yostore/aws/api/entity/AlbumInfo;)V

    .line 37
    iput-boolean v3, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isAlbumInfo:Z

    .line 135
    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 137
    return-void

    .line 38
    :cond_1
    const-string v0, "ss"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->ai:Lnet/yostore/aws/api/entity/AlbumInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/AlbumInfo;->setSs(I)V

    goto :goto_0

    .line 40
    :cond_2
    const-string v0, "bt"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 41
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->ai:Lnet/yostore/aws/api/entity/AlbumInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/AlbumInfo;->setBt(I)V

    goto :goto_0

    .line 42
    :cond_3
    const-string v0, "st"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 43
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->ai:Lnet/yostore/aws/api/entity/AlbumInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/api/entity/AlbumInfo;->setSt(J)V

    goto :goto_0

    .line 44
    :cond_4
    const-string v0, "pw"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 45
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->ai:Lnet/yostore/aws/api/entity/AlbumInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/AlbumInfo;->setPw(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_5
    const-string v0, "in"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 47
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->ai:Lnet/yostore/aws/api/entity/AlbumInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/AlbumInfo;->setIn(I)V

    goto/16 :goto_0

    .line 48
    :cond_6
    const-string v0, "sty"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->ai:Lnet/yostore/aws/api/entity/AlbumInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/AlbumInfo;->setSty(I)V

    goto/16 :goto_0

    .line 53
    :cond_7
    const-string v0, "folder"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 54
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    invoke-virtual {v0}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->getFolderList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fo:Lnet/yostore/aws/api/entity/FolderInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iput-boolean v3, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isFolder:Z

    goto/16 :goto_0

    .line 56
    :cond_8
    const-string v0, "id"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 57
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fo:Lnet/yostore/aws/api/entity/FolderInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderInfo;->setId(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 58
    :cond_9
    const-string v0, "display"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 59
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fo:Lnet/yostore/aws/api/entity/FolderInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/yostore/aws/api/sax/FolderBrowse;->b64decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderInfo;->setDisplay(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 60
    :cond_a
    const-string v0, "attribute"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 61
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fo:Lnet/yostore/aws/api/entity/FolderInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderInfo;->setAttribute(Ljava/lang/String;)V

    .line 62
    iput-boolean v3, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->attr:Z

    goto/16 :goto_0

    .line 63
    :cond_b
    const-string v0, "issharing"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 64
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fo:Lnet/yostore/aws/api/entity/FolderInfo;

    const-string v1, "1"

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    move v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderInfo;->setIssharing(Z)V

    goto/16 :goto_0

    :cond_c
    move v1, v3

    goto :goto_1

    .line 65
    :cond_d
    const-string v0, "isencrypted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 66
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fo:Lnet/yostore/aws/api/entity/FolderInfo;

    const-string v1, "1"

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    move v1, v4

    :goto_2
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderInfo;->setIsencrypted(Z)V

    goto/16 :goto_0

    :cond_e
    move v1, v3

    goto :goto_2

    .line 67
    :cond_f
    const-string v0, "isowner"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 68
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fo:Lnet/yostore/aws/api/entity/FolderInfo;

    const-string v1, "1"

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    move v1, v4

    :goto_3
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderInfo;->setIsowner(Z)V

    goto/16 :goto_0

    :cond_10
    move v1, v3

    goto :goto_3

    .line 69
    :cond_11
    const-string v0, "isbackup"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 70
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fo:Lnet/yostore/aws/api/entity/FolderInfo;

    const-string v1, "1"

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    move v1, v4

    :goto_4
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderInfo;->setIsbackup(Z)V

    goto/16 :goto_0

    :cond_12
    move v1, v3

    goto :goto_4

    .line 71
    :cond_13
    const-string v0, "isorigdeleted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 72
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fo:Lnet/yostore/aws/api/entity/FolderInfo;

    const-string v1, "1"

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    move v1, v4

    :goto_5
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderInfo;->setIsorigdeleted(Z)V

    goto/16 :goto_0

    :cond_14
    move v1, v3

    goto :goto_5

    .line 73
    :cond_15
    const-string v0, "ispublic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 74
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fo:Lnet/yostore/aws/api/entity/FolderInfo;

    const-string v1, "1"

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    move v1, v4

    :goto_6
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderInfo;->setIspublic(Z)V

    goto/16 :goto_0

    :cond_16
    move v1, v3

    goto :goto_6

    .line 75
    :cond_17
    const-string v0, "createdtime"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 76
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fo:Lnet/yostore/aws/api/entity/FolderInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderInfo;->setCreatedtime(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 77
    :cond_18
    const-string v0, "markid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fo:Lnet/yostore/aws/api/entity/FolderInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderInfo;->setMarkid(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 81
    :cond_19
    iget-boolean v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isFile:Z

    if-eqz v0, :cond_2e

    .line 82
    const-string v0, "file"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 83
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    invoke-virtual {v0}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->getFileList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fi:Lnet/yostore/aws/api/entity/FileInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iput-boolean v3, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isFile:Z

    goto/16 :goto_0

    .line 85
    :cond_1a
    const-string v0, "id"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 86
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fi:Lnet/yostore/aws/api/entity/FileInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FileInfo;->setId(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 87
    :cond_1b
    const-string v0, "status"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 88
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fi:Lnet/yostore/aws/api/entity/FileInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FileInfo;->setStatus(I)V

    goto/16 :goto_0

    .line 89
    :cond_1c
    const-string v0, "display"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 91
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fi:Lnet/yostore/aws/api/entity/FileInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/yostore/aws/api/sax/FolderBrowse;->b64decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FileInfo;->setDisplay(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 92
    :cond_1d
    const-string v0, "attribute"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 93
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fi:Lnet/yostore/aws/api/entity/FileInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FileInfo;->setAttribute(Ljava/lang/String;)V

    .line 94
    iput-boolean v3, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->attr:Z

    goto/16 :goto_0

    .line 95
    :cond_1e
    const-string v0, "isencrypted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 96
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fi:Lnet/yostore/aws/api/entity/FileInfo;

    const-string v1, "1"

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    move v1, v4

    :goto_7
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FileInfo;->setIsencrypted(Z)V

    goto/16 :goto_0

    :cond_1f
    move v1, v3

    goto :goto_7

    .line 97
    :cond_20
    const-string v0, "size"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 98
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fi:Lnet/yostore/aws/api/entity/FileInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/api/entity/FileInfo;->setSize(J)V

    goto/16 :goto_0

    .line 99
    :cond_21
    const-string v0, "isowner"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 100
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fi:Lnet/yostore/aws/api/entity/FileInfo;

    const-string v1, "1"

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    move v1, v4

    :goto_8
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FileInfo;->setIsowner(Z)V

    goto/16 :goto_0

    :cond_22
    move v1, v3

    goto :goto_8

    .line 101
    :cond_23
    const-string v0, "isbackup"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 102
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fi:Lnet/yostore/aws/api/entity/FileInfo;

    const-string v1, "1"

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    move v1, v4

    :goto_9
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FileInfo;->setIsbackup(Z)V

    goto/16 :goto_0

    :cond_24
    move v1, v3

    goto :goto_9

    .line 103
    :cond_25
    const-string v0, "isorigdeleted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 104
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fi:Lnet/yostore/aws/api/entity/FileInfo;

    const-string v1, "1"

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    move v1, v4

    :goto_a
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FileInfo;->setIsorigdeleted(Z)V

    goto/16 :goto_0

    :cond_26
    move v1, v3

    goto :goto_a

    .line 105
    :cond_27
    const-string v0, "isinfected"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 106
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fi:Lnet/yostore/aws/api/entity/FileInfo;

    const-string v1, "1"

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    move v1, v4

    :goto_b
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FileInfo;->setIsinfected(Z)V

    goto/16 :goto_0

    :cond_28
    move v1, v3

    goto :goto_b

    .line 107
    :cond_29
    const-string v0, "ispublic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 108
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fi:Lnet/yostore/aws/api/entity/FileInfo;

    const-string v1, "1"

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    move v1, v4

    :goto_c
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FileInfo;->setIspublic(Z)V

    goto/16 :goto_0

    :cond_2a
    move v1, v3

    goto :goto_c

    .line 109
    :cond_2b
    const-string v0, "headversion"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 110
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fi:Lnet/yostore/aws/api/entity/FileInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FileInfo;->setHeadversion(I)V

    goto/16 :goto_0

    .line 111
    :cond_2c
    const-string v0, "createdtime"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 112
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fi:Lnet/yostore/aws/api/entity/FileInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FileInfo;->setCreatedtime(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 113
    :cond_2d
    const-string v0, "markid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fi:Lnet/yostore/aws/api/entity/FileInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FileInfo;->setMarkid(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 118
    :cond_2e
    const-string v0, "status"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 119
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->setStatus(I)V

    goto/16 :goto_0

    .line 120
    :cond_2f
    const-string v0, "logmessage"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 121
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->setLogmessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 122
    :cond_30
    const-string v0, "scrip"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 123
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->setScrip(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 124
    :cond_31
    const-string v0, "pageno"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 125
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->setPageno(I)V

    goto/16 :goto_0

    .line 126
    :cond_32
    const-string v0, "pagesize"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 127
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->setPagesize(I)V

    goto/16 :goto_0

    .line 128
    :cond_33
    const-string v0, "totalcount"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 129
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->setTotalcount(I)V

    goto/16 :goto_0

    .line 130
    :cond_34
    const-string v0, "hasnextpage"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    const-string v1, "1"

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    move v1, v4

    :goto_d
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->setHasnextpage(Z)V

    goto/16 :goto_0

    :cond_35
    move v1, v3

    goto :goto_d
.end method

.method public getResponse()Lnet/yostore/aws/api/entity/ApiResponse;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 141
    invoke-super {p0, p1, p2, p3, p4}, Lnet/yostore/aws/api/sax/BaseSaxHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 142
    const-string v0, "folder"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 143
    new-instance v0, Lnet/yostore/aws/api/entity/FolderInfo;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/FolderInfo;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fo:Lnet/yostore/aws/api/entity/FolderInfo;

    .line 144
    iput-boolean v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isFolder:Z

    .line 150
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->attr:Z

    if-eqz v0, :cond_1

    const-string v0, "ai"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    new-instance v0, Lnet/yostore/aws/api/entity/AlbumInfo;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/AlbumInfo;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->ai:Lnet/yostore/aws/api/entity/AlbumInfo;

    .line 152
    iput-boolean v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isAlbumInfo:Z

    .line 155
    :cond_1
    const-string v0, "attribute"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    iput-boolean v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->attr:Z

    .line 158
    :cond_2
    return-void

    .line 145
    :cond_3
    const-string v0, "file"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    new-instance v0, Lnet/yostore/aws/api/entity/FileInfo;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/FileInfo;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fi:Lnet/yostore/aws/api/entity/FileInfo;

    .line 147
    iput-boolean v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isFile:Z

    goto :goto_0
.end method
