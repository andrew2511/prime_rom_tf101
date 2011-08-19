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

    .line 13
    invoke-direct {p0}, Lnet/yostore/aws/api/sax/BaseSaxHandler;-><init>()V

    .line 15
    new-instance v0, Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    .line 16
    iput-boolean v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isFolder:Z

    .line 17
    iput-boolean v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isFile:Z

    .line 18
    iput-boolean v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->attr:Z

    .line 19
    iput-boolean v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isAlbumInfo:Z

    .line 13
    return-void
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

    .line 27
    invoke-super {p0, p1, p2, p3}, Lnet/yostore/aws/api/sax/BaseSaxHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-boolean v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isFolder:Z

    if-eqz v0, :cond_1e

    .line 30
    iget-boolean v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isAlbumInfo:Z

    if-eqz v0, :cond_c

    .line 31
    const-string v0, "pixwe_ai"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fo:Lnet/yostore/aws/api/entity/FolderInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->ai:Lnet/yostore/aws/api/entity/AlbumInfo;

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderInfo;->setAlbumInfo(Lnet/yostore/aws/api/entity/AlbumInfo;)V

    .line 33
    iput-boolean v3, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isAlbumInfo:Z

    .line 136
    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 138
    return-void

    .line 34
    :cond_1
    const-string v0, "ss"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35
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

    .line 36
    :cond_2
    const-string v0, "bt"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 37
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

    .line 38
    :cond_3
    const-string v0, "st"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 39
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

    .line 40
    :cond_4
    const-string v0, "pw"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 41
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->ai:Lnet/yostore/aws/api/entity/AlbumInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/AlbumInfo;->setPw(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_5
    const-string v0, "in"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 43
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

    .line 44
    :cond_6
    const-string v0, "sty"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 45
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

    .line 46
    :cond_7
    const-string v0, "or"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 47
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

    .line 48
    :cond_8
    const-string v0, "mfi"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 49
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->ai:Lnet/yostore/aws/api/entity/AlbumInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_1
    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/api/entity/AlbumInfo;->setMfi(J)V

    goto/16 :goto_0

    :cond_9
    const-wide/16 v1, -0x1

    goto :goto_1

    .line 50
    :cond_a
    const-string v0, "su"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->ai:Lnet/yostore/aws/api/entity/AlbumInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/AlbumInfo;->setSu(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string v1, ""

    goto :goto_2

    .line 55
    :cond_c
    const-string v0, "folder"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 56
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    invoke-virtual {v0}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->getFolderList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fo:Lnet/yostore/aws/api/entity/FolderInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iput-boolean v3, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isFolder:Z

    goto/16 :goto_0

    .line 58
    :cond_d
    const-string v0, "id"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 59
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fo:Lnet/yostore/aws/api/entity/FolderInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderInfo;->setId(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 60
    :cond_e
    const-string v0, "display"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 61
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fo:Lnet/yostore/aws/api/entity/FolderInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderInfo;->setDisplay(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 62
    :cond_f
    const-string v0, "attribute"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 63
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fo:Lnet/yostore/aws/api/entity/FolderInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderInfo;->setAttribute(Ljava/lang/String;)V

    .line 64
    iput-boolean v3, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->attr:Z

    goto/16 :goto_0

    .line 65
    :cond_10
    const-string v0, "issharing"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

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

    if-eqz v1, :cond_11

    move v1, v4

    :goto_3
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderInfo;->setIssharing(Z)V

    goto/16 :goto_0

    :cond_11
    move v1, v3

    goto :goto_3

    .line 67
    :cond_12
    const-string v0, "isencrypted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

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

    if-eqz v1, :cond_13

    move v1, v4

    :goto_4
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderInfo;->setIsencrypted(Z)V

    goto/16 :goto_0

    :cond_13
    move v1, v3

    goto :goto_4

    .line 69
    :cond_14
    const-string v0, "isowner"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

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

    if-eqz v1, :cond_15

    move v1, v4

    :goto_5
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderInfo;->setIsowner(Z)V

    goto/16 :goto_0

    :cond_15
    move v1, v3

    goto :goto_5

    .line 71
    :cond_16
    const-string v0, "isbackup"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

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

    if-eqz v1, :cond_17

    move v1, v4

    :goto_6
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderInfo;->setIsbackup(Z)V

    goto/16 :goto_0

    :cond_17
    move v1, v3

    goto :goto_6

    .line 73
    :cond_18
    const-string v0, "isorigdeleted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

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

    if-eqz v1, :cond_19

    move v1, v4

    :goto_7
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderInfo;->setIsorigdeleted(Z)V

    goto/16 :goto_0

    :cond_19
    move v1, v3

    goto :goto_7

    .line 75
    :cond_1a
    const-string v0, "ispublic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

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

    if-eqz v1, :cond_1b

    move v1, v4

    :goto_8
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderInfo;->setIspublic(Z)V

    goto/16 :goto_0

    :cond_1b
    move v1, v3

    goto :goto_8

    .line 77
    :cond_1c
    const-string v0, "createdtime"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 78
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fo:Lnet/yostore/aws/api/entity/FolderInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderInfo;->setCreatedtime(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 79
    :cond_1d
    const-string v0, "markid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fo:Lnet/yostore/aws/api/entity/FolderInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderInfo;->setMarkid(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 83
    :cond_1e
    iget-boolean v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isFile:Z

    if-eqz v0, :cond_33

    .line 84
    const-string v0, "file"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 85
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    invoke-virtual {v0}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->getFileList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fi:Lnet/yostore/aws/api/entity/FileInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iput-boolean v3, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isFile:Z

    goto/16 :goto_0

    .line 87
    :cond_1f
    const-string v0, "id"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 88
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fi:Lnet/yostore/aws/api/entity/FileInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FileInfo;->setId(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 89
    :cond_20
    const-string v0, "status"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 90
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

    .line 91
    :cond_21
    const-string v0, "display"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 92
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fi:Lnet/yostore/aws/api/entity/FileInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FileInfo;->setDisplay(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 93
    :cond_22
    const-string v0, "attribute"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 94
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fi:Lnet/yostore/aws/api/entity/FileInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FileInfo;->setAttribute(Ljava/lang/String;)V

    .line 95
    iput-boolean v3, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->attr:Z

    goto/16 :goto_0

    .line 96
    :cond_23
    const-string v0, "isencrypted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 97
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
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FileInfo;->setIsencrypted(Z)V

    goto/16 :goto_0

    :cond_24
    move v1, v3

    goto :goto_9

    .line 98
    :cond_25
    const-string v0, "size"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 99
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

    .line 100
    :cond_26
    const-string v0, "isowner"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 101
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fi:Lnet/yostore/aws/api/entity/FileInfo;

    const-string v1, "1"

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    move v1, v4

    :goto_a
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FileInfo;->setIsowner(Z)V

    goto/16 :goto_0

    :cond_27
    move v1, v3

    goto :goto_a

    .line 102
    :cond_28
    const-string v0, "isbackup"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 103
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fi:Lnet/yostore/aws/api/entity/FileInfo;

    const-string v1, "1"

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    move v1, v4

    :goto_b
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FileInfo;->setIsbackup(Z)V

    goto/16 :goto_0

    :cond_29
    move v1, v3

    goto :goto_b

    .line 104
    :cond_2a
    const-string v0, "isorigdeleted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 105
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fi:Lnet/yostore/aws/api/entity/FileInfo;

    const-string v1, "1"

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    move v1, v4

    :goto_c
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FileInfo;->setIsorigdeleted(Z)V

    goto/16 :goto_0

    :cond_2b
    move v1, v3

    goto :goto_c

    .line 106
    :cond_2c
    const-string v0, "isinfected"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 107
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fi:Lnet/yostore/aws/api/entity/FileInfo;

    const-string v1, "1"

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    move v1, v4

    :goto_d
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FileInfo;->setIsinfected(Z)V

    goto/16 :goto_0

    :cond_2d
    move v1, v3

    goto :goto_d

    .line 108
    :cond_2e
    const-string v0, "ispublic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 109
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fi:Lnet/yostore/aws/api/entity/FileInfo;

    const-string v1, "1"

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    move v1, v4

    :goto_e
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FileInfo;->setIspublic(Z)V

    goto/16 :goto_0

    :cond_2f
    move v1, v3

    goto :goto_e

    .line 110
    :cond_30
    const-string v0, "headversion"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 111
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

    .line 112
    :cond_31
    const-string v0, "createdtime"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 113
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fi:Lnet/yostore/aws/api/entity/FileInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FileInfo;->setCreatedtime(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 114
    :cond_32
    const-string v0, "markid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fi:Lnet/yostore/aws/api/entity/FileInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FileInfo;->setMarkid(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 119
    :cond_33
    const-string v0, "status"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 120
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

    .line 121
    :cond_34
    const-string v0, "logmessage"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 122
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->setLogmessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 123
    :cond_35
    const-string v0, "scrip"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 124
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->setScrip(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 125
    :cond_36
    const-string v0, "pageno"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 126
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

    .line 127
    :cond_37
    const-string v0, "pagesize"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 128
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

    .line 129
    :cond_38
    const-string v0, "totalcount"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 130
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

    .line 131
    :cond_39
    const-string v0, "hasnextpage"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    const-string v1, "1"

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    move v1, v4

    :goto_f
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->setHasnextpage(Z)V

    goto/16 :goto_0

    :cond_3a
    move v1, v3

    goto :goto_f
.end method

.method public getResponse()Lnet/yostore/aws/api/entity/ApiResponse;
    .locals 1

    .prologue
    .line 162
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

    .line 142
    invoke-super {p0, p1, p2, p3, p4}, Lnet/yostore/aws/api/sax/BaseSaxHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 143
    const-string v0, "folder"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 144
    new-instance v0, Lnet/yostore/aws/api/entity/FolderInfo;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/FolderInfo;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fo:Lnet/yostore/aws/api/entity/FolderInfo;

    .line 145
    iput-boolean v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isFolder:Z

    .line 151
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->attr:Z

    if-eqz v0, :cond_1

    const-string v0, "pixwe_ai"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    new-instance v0, Lnet/yostore/aws/api/entity/AlbumInfo;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/AlbumInfo;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->ai:Lnet/yostore/aws/api/entity/AlbumInfo;

    .line 153
    iput-boolean v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isAlbumInfo:Z

    .line 156
    :cond_1
    const-string v0, "attribute"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    iput-boolean v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->attr:Z

    .line 159
    :cond_2
    return-void

    .line 146
    :cond_3
    const-string v0, "file"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    new-instance v0, Lnet/yostore/aws/api/entity/FileInfo;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/FileInfo;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fi:Lnet/yostore/aws/api/entity/FileInfo;

    .line 148
    iput-boolean v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isFile:Z

    goto :goto_0
.end method
