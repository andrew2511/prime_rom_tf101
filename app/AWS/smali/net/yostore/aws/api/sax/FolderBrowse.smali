.class public Lnet/yostore/aws/api/sax/FolderBrowse;
.super Lnet/yostore/aws/api/sax/BaseSaxHandler;
.source "FolderBrowse.java"


# instance fields
.field ai:Lnet/yostore/aws/api/entity/AlbumInfo;

.field at:Lnet/yostore/aws/api/entity/Attribute;

.field fi:Lnet/yostore/aws/api/entity/FileInfo;

.field fo:Lnet/yostore/aws/api/entity/FolderInfo;

.field isAlbumInfo:Z

.field isAttr:Z

.field isFile:Z

.field isFolder:Z

.field isParentFolder:Z

.field pf:Lnet/yostore/aws/api/entity/ParentFolder;

.field private response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Lnet/yostore/aws/api/sax/BaseSaxHandler;-><init>()V

    .line 21
    new-instance v0, Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    .line 22
    iput-boolean v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isFolder:Z

    .line 23
    iput-boolean v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isFile:Z

    .line 24
    iput-boolean v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isAttr:Z

    .line 25
    iput-boolean v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isAlbumInfo:Z

    .line 26
    iput-boolean v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isParentFolder:Z

    .line 19
    return-void
.end method

.method private b64decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "b64"

    .prologue
    .line 209
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {p1}, Lcom/ecareme/utils/codec/Base64;->decodeFast(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "UTF8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    return-object v1

    .line 210
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 211
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 212
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

    .line 36
    invoke-super {p0, p1, p2, p3}, Lnet/yostore/aws/api/sax/BaseSaxHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-boolean v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isFolder:Z

    if-eqz v0, :cond_1e

    .line 39
    iget-boolean v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isAlbumInfo:Z

    if-eqz v0, :cond_d

    .line 40
    const-string v0, "pixwe_ai"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fo:Lnet/yostore/aws/api/entity/FolderInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->ai:Lnet/yostore/aws/api/entity/AlbumInfo;

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderInfo;->setAlbumInfo(Lnet/yostore/aws/api/entity/AlbumInfo;)V

    .line 42
    iput-boolean v3, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isAlbumInfo:Z

    .line 155
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isAttr:Z

    if-eqz v0, :cond_1

    .line 156
    const-string v0, "attribute"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 157
    iget-boolean v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isFile:Z

    if-eqz v0, :cond_3d

    .line 158
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fi:Lnet/yostore/aws/api/entity/FileInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->at:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FileInfo;->setAttribute(Lnet/yostore/aws/api/entity/Attribute;)V

    .line 164
    :goto_1
    iput-boolean v3, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isAttr:Z

    .line 173
    :cond_1
    :goto_2
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 175
    return-void

    .line 43
    :cond_2
    const-string v0, "ss"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 44
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

    .line 45
    :cond_3
    const-string v0, "bt"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 46
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

    .line 47
    :cond_4
    const-string v0, "st"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 48
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

    .line 49
    :cond_5
    const-string v0, "pw"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 50
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->ai:Lnet/yostore/aws/api/entity/AlbumInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/AlbumInfo;->setPw(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 51
    :cond_6
    const-string v0, "in"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 52
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

    .line 53
    :cond_7
    const-string v0, "sty"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 54
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

    .line 55
    :cond_8
    const-string v0, "or"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 56
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->ai:Lnet/yostore/aws/api/entity/AlbumInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/AlbumInfo;->setOr(I)V

    goto/16 :goto_0

    .line 57
    :cond_9
    const-string v0, "mfi"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 58
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->ai:Lnet/yostore/aws/api/entity/AlbumInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_a

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_3
    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/api/entity/AlbumInfo;->setMfi(J)V

    goto/16 :goto_0

    :cond_a
    const-wide/16 v1, -0x1

    goto :goto_3

    .line 59
    :cond_b
    const-string v0, "su"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->ai:Lnet/yostore/aws/api/entity/AlbumInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/AlbumInfo;->setSu(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const-string v1, ""

    goto :goto_4

    .line 64
    :cond_d
    const-string v0, "folder"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 65
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    invoke-virtual {v0}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->getFolderList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fo:Lnet/yostore/aws/api/entity/FolderInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iput-boolean v3, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isFolder:Z

    goto/16 :goto_0

    .line 67
    :cond_e
    const-string v0, "id"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 68
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fo:Lnet/yostore/aws/api/entity/FolderInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderInfo;->setId(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 69
    :cond_f
    const-string v0, "display"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 71
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

    .line 75
    :cond_10
    const-string v0, "issharing"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 76
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fo:Lnet/yostore/aws/api/entity/FolderInfo;

    const-string v1, "1"

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    move v1, v4

    :goto_5
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderInfo;->setIssharing(Z)V

    goto/16 :goto_0

    :cond_11
    move v1, v3

    goto :goto_5

    .line 77
    :cond_12
    const-string v0, "isencrypted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 78
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fo:Lnet/yostore/aws/api/entity/FolderInfo;

    const-string v1, "1"

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v4

    :goto_6
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderInfo;->setIsencrypted(Z)V

    goto/16 :goto_0

    :cond_13
    move v1, v3

    goto :goto_6

    .line 79
    :cond_14
    const-string v0, "isowner"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 80
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fo:Lnet/yostore/aws/api/entity/FolderInfo;

    const-string v1, "1"

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    move v1, v4

    :goto_7
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderInfo;->setIsowner(Z)V

    goto/16 :goto_0

    :cond_15
    move v1, v3

    goto :goto_7

    .line 81
    :cond_16
    const-string v0, "isbackup"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 82
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fo:Lnet/yostore/aws/api/entity/FolderInfo;

    const-string v1, "1"

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    move v1, v4

    :goto_8
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderInfo;->setIsbackup(Z)V

    goto/16 :goto_0

    :cond_17
    move v1, v3

    goto :goto_8

    .line 83
    :cond_18
    const-string v0, "isorigdeleted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 84
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fo:Lnet/yostore/aws/api/entity/FolderInfo;

    const-string v1, "1"

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    move v1, v4

    :goto_9
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderInfo;->setIsorigdeleted(Z)V

    goto/16 :goto_0

    :cond_19
    move v1, v3

    goto :goto_9

    .line 85
    :cond_1a
    const-string v0, "ispublic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 86
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fo:Lnet/yostore/aws/api/entity/FolderInfo;

    const-string v1, "1"

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    move v1, v4

    :goto_a
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderInfo;->setIspublic(Z)V

    goto/16 :goto_0

    :cond_1b
    move v1, v3

    goto :goto_a

    .line 87
    :cond_1c
    const-string v0, "createdtime"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 88
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fo:Lnet/yostore/aws/api/entity/FolderInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderInfo;->setCreatedtime(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 89
    :cond_1d
    const-string v0, "markid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fo:Lnet/yostore/aws/api/entity/FolderInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderInfo;->setMarkid(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 93
    :cond_1e
    iget-boolean v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isFile:Z

    if-eqz v0, :cond_32

    .line 94
    const-string v0, "file"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 95
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    invoke-virtual {v0}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->getFileList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fi:Lnet/yostore/aws/api/entity/FileInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iput-boolean v3, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isFile:Z

    goto/16 :goto_0

    .line 97
    :cond_1f
    const-string v0, "id"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 98
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fi:Lnet/yostore/aws/api/entity/FileInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FileInfo;->setId(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 99
    :cond_20
    const-string v0, "status"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 100
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

    .line 101
    :cond_21
    const-string v0, "display"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 103
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

    .line 107
    :cond_22
    const-string v0, "isencrypted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

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

    if-eqz v1, :cond_23

    move v1, v4

    :goto_b
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FileInfo;->setIsencrypted(Z)V

    goto/16 :goto_0

    :cond_23
    move v1, v3

    goto :goto_b

    .line 109
    :cond_24
    const-string v0, "size"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 110
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

    .line 111
    :cond_25
    const-string v0, "isowner"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 112
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

    :goto_c
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FileInfo;->setIsowner(Z)V

    goto/16 :goto_0

    :cond_26
    move v1, v3

    goto :goto_c

    .line 113
    :cond_27
    const-string v0, "isbackup"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 114
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

    :goto_d
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FileInfo;->setIsbackup(Z)V

    goto/16 :goto_0

    :cond_28
    move v1, v3

    goto :goto_d

    .line 115
    :cond_29
    const-string v0, "isorigdeleted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 116
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

    :goto_e
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FileInfo;->setIsorigdeleted(Z)V

    goto/16 :goto_0

    :cond_2a
    move v1, v3

    goto :goto_e

    .line 117
    :cond_2b
    const-string v0, "isinfected"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 118
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fi:Lnet/yostore/aws/api/entity/FileInfo;

    const-string v1, "1"

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    move v1, v4

    :goto_f
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FileInfo;->setIsinfected(Z)V

    goto/16 :goto_0

    :cond_2c
    move v1, v3

    goto :goto_f

    .line 119
    :cond_2d
    const-string v0, "ispublic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 120
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fi:Lnet/yostore/aws/api/entity/FileInfo;

    const-string v1, "1"

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    move v1, v4

    :goto_10
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FileInfo;->setIspublic(Z)V

    goto/16 :goto_0

    :cond_2e
    move v1, v3

    goto :goto_10

    .line 121
    :cond_2f
    const-string v0, "headversion"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 122
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

    .line 123
    :cond_30
    const-string v0, "createdtime"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 124
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fi:Lnet/yostore/aws/api/entity/FileInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FileInfo;->setCreatedtime(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 125
    :cond_31
    const-string v0, "markid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fi:Lnet/yostore/aws/api/entity/FileInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FileInfo;->setMarkid(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 129
    :cond_32
    iget-boolean v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isParentFolder:Z

    if-eqz v0, :cond_35

    .line 130
    const-string v0, "parentfolder"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 131
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->pf:Lnet/yostore/aws/api/entity/ParentFolder;

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->setParentFolder(Lnet/yostore/aws/api/entity/ParentFolder;)V

    .line 132
    iput-boolean v3, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isParentFolder:Z

    goto/16 :goto_0

    .line 133
    :cond_33
    const-string v0, "name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 134
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->pf:Lnet/yostore/aws/api/entity/ParentFolder;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/ParentFolder;->setName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 135
    :cond_34
    const-string v0, "id"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->pf:Lnet/yostore/aws/api/entity/ParentFolder;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/ParentFolder;->setId(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 139
    :cond_35
    const-string v0, "status"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 140
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

    .line 141
    :cond_36
    const-string v0, "logmessage"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 142
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->setLogmessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 143
    :cond_37
    const-string v0, "scrip"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 144
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->setScrip(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 145
    :cond_38
    const-string v0, "pageno"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 146
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

    .line 147
    :cond_39
    const-string v0, "pagesize"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 148
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

    .line 149
    :cond_3a
    const-string v0, "totalcount"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 150
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

    .line 151
    :cond_3b
    const-string v0, "hasnextpage"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    const-string v1, "1"

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    move v1, v4

    :goto_11
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->setHasnextpage(Z)V

    goto/16 :goto_0

    :cond_3c
    move v1, v3

    goto :goto_11

    .line 159
    :cond_3d
    iget-boolean v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isFolder:Z

    if-eqz v0, :cond_3e

    .line 160
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fo:Lnet/yostore/aws/api/entity/FolderInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->at:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderInfo;->setAttribute(Lnet/yostore/aws/api/entity/Attribute;)V

    goto/16 :goto_1

    .line 162
    :cond_3e
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->at:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->setAttribute(Lnet/yostore/aws/api/entity/Attribute;)V

    goto/16 :goto_1

    .line 165
    :cond_3f
    const-string v0, "creationtime"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 166
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->at:Lnet/yostore/aws/api/entity/Attribute;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/Attribute;->setCreationtime(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 167
    :cond_40
    const-string v0, "lastaccesstime"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 168
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->at:Lnet/yostore/aws/api/entity/Attribute;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/Attribute;->setLastaccesstime(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 169
    :cond_41
    const-string v0, "lastwritetime"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->at:Lnet/yostore/aws/api/entity/Attribute;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/Attribute;->setLastwritetime(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public getResponse()Lnet/yostore/aws/api/entity/ApiResponse;
    .locals 1

    .prologue
    .line 205
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

    .line 179
    invoke-super {p0, p1, p2, p3, p4}, Lnet/yostore/aws/api/sax/BaseSaxHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 180
    const-string v0, "folder"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 181
    new-instance v0, Lnet/yostore/aws/api/entity/FolderInfo;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/FolderInfo;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fo:Lnet/yostore/aws/api/entity/FolderInfo;

    .line 182
    iput-boolean v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isFolder:Z

    .line 188
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isAttr:Z

    if-eqz v0, :cond_1

    const-string v0, "pixwe_ai"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    new-instance v0, Lnet/yostore/aws/api/entity/AlbumInfo;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/AlbumInfo;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->ai:Lnet/yostore/aws/api/entity/AlbumInfo;

    .line 190
    iput-boolean v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isAlbumInfo:Z

    .line 193
    :cond_1
    const-string v0, "attribute"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    new-instance v0, Lnet/yostore/aws/api/entity/Attribute;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/Attribute;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->at:Lnet/yostore/aws/api/entity/Attribute;

    .line 195
    iput-boolean v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isAttr:Z

    .line 198
    :cond_2
    const-string v0, "parentfolder"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 199
    new-instance v0, Lnet/yostore/aws/api/entity/ParentFolder;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/ParentFolder;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->pf:Lnet/yostore/aws/api/entity/ParentFolder;

    .line 200
    iput-boolean v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isParentFolder:Z

    .line 202
    :cond_3
    return-void

    .line 183
    :cond_4
    const-string v0, "file"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    new-instance v0, Lnet/yostore/aws/api/entity/FileInfo;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/FileInfo;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fi:Lnet/yostore/aws/api/entity/FileInfo;

    .line 185
    iput-boolean v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isFile:Z

    goto :goto_0
.end method
