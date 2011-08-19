.class public Lnet/yostore/aws/api/sax/FolderBrowse;
.super Lnet/yostore/aws/api/sax/BaseSaxHandler;
.source "FolderBrowse.java"


# instance fields
.field fi:Lnet/yostore/aws/api/entity/FileInfo;

.field fo:Lnet/yostore/aws/api/entity/FolderInfo;

.field isFile:Z

.field isFolder:Z

.field private response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Lnet/yostore/aws/api/sax/BaseSaxHandler;-><init>()V

    .line 14
    new-instance v0, Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    .line 15
    iput-boolean v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isFolder:Z

    .line 16
    iput-boolean v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isFile:Z

    .line 12
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

    .line 23
    invoke-super {p0, p1, p2, p3}, Lnet/yostore/aws/api/sax/BaseSaxHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-boolean v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isFolder:Z

    if-eqz v0, :cond_12

    .line 26
    const-string v0, "folder"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    invoke-virtual {v0}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->getFolderList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fo:Lnet/yostore/aws/api/entity/FolderInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iput-boolean v3, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isFolder:Z

    .line 103
    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 105
    return-void

    .line 29
    :cond_1
    const-string v0, "id"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fo:Lnet/yostore/aws/api/entity/FolderInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderInfo;->setId(Ljava/lang/String;)V

    goto :goto_0

    .line 31
    :cond_2
    const-string v0, "display"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 32
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fo:Lnet/yostore/aws/api/entity/FolderInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderInfo;->setDisplay(Ljava/lang/String;)V

    goto :goto_0

    .line 33
    :cond_3
    const-string v0, "attribute"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 34
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fo:Lnet/yostore/aws/api/entity/FolderInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderInfo;->setAttribute(Ljava/lang/String;)V

    goto :goto_0

    .line 35
    :cond_4
    const-string v0, "issharing"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 36
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fo:Lnet/yostore/aws/api/entity/FolderInfo;

    const-string v1, "1"

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderInfo;->setIssharing(Z)V

    goto :goto_0

    :cond_5
    move v1, v3

    goto :goto_1

    .line 37
    :cond_6
    const-string v0, "isencrypted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 38
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fo:Lnet/yostore/aws/api/entity/FolderInfo;

    const-string v1, "1"

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v4

    :goto_2
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderInfo;->setIsencrypted(Z)V

    goto/16 :goto_0

    :cond_7
    move v1, v3

    goto :goto_2

    .line 39
    :cond_8
    const-string v0, "isowner"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 40
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fo:Lnet/yostore/aws/api/entity/FolderInfo;

    const-string v1, "1"

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v4

    :goto_3
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderInfo;->setIsowner(Z)V

    goto/16 :goto_0

    :cond_9
    move v1, v3

    goto :goto_3

    .line 41
    :cond_a
    const-string v0, "isbackup"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 42
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fo:Lnet/yostore/aws/api/entity/FolderInfo;

    const-string v1, "1"

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v1, v4

    :goto_4
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderInfo;->setIsbackup(Z)V

    goto/16 :goto_0

    :cond_b
    move v1, v3

    goto :goto_4

    .line 43
    :cond_c
    const-string v0, "isorigdeleted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 44
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fo:Lnet/yostore/aws/api/entity/FolderInfo;

    const-string v1, "1"

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    move v1, v4

    :goto_5
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderInfo;->setIsorigdeleted(Z)V

    goto/16 :goto_0

    :cond_d
    move v1, v3

    goto :goto_5

    .line 45
    :cond_e
    const-string v0, "ispublic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 46
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fo:Lnet/yostore/aws/api/entity/FolderInfo;

    const-string v1, "1"

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    move v1, v4

    :goto_6
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderInfo;->setIspublic(Z)V

    goto/16 :goto_0

    :cond_f
    move v1, v3

    goto :goto_6

    .line 47
    :cond_10
    const-string v0, "createdtime"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 48
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fo:Lnet/yostore/aws/api/entity/FolderInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderInfo;->setCreatedtime(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 49
    :cond_11
    const-string v0, "markid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fo:Lnet/yostore/aws/api/entity/FolderInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderInfo;->setMarkid(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 52
    :cond_12
    iget-boolean v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isFile:Z

    if-eqz v0, :cond_27

    .line 53
    const-string v0, "file"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 54
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    invoke-virtual {v0}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->getFileList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fi:Lnet/yostore/aws/api/entity/FileInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iput-boolean v3, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isFile:Z

    goto/16 :goto_0

    .line 56
    :cond_13
    const-string v0, "id"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 57
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fi:Lnet/yostore/aws/api/entity/FileInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FileInfo;->setId(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 58
    :cond_14
    const-string v0, "status"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 59
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

    .line 60
    :cond_15
    const-string v0, "display"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 61
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fi:Lnet/yostore/aws/api/entity/FileInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FileInfo;->setDisplay(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 62
    :cond_16
    const-string v0, "attribute"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 63
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fi:Lnet/yostore/aws/api/entity/FileInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FileInfo;->setAttribute(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 64
    :cond_17
    const-string v0, "isencrypted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 65
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fi:Lnet/yostore/aws/api/entity/FileInfo;

    const-string v1, "1"

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    move v1, v4

    :goto_7
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FileInfo;->setIsencrypted(Z)V

    goto/16 :goto_0

    :cond_18
    move v1, v3

    goto :goto_7

    .line 66
    :cond_19
    const-string v0, "size"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 67
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

    .line 68
    :cond_1a
    const-string v0, "isowner"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 69
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fi:Lnet/yostore/aws/api/entity/FileInfo;

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
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FileInfo;->setIsowner(Z)V

    goto/16 :goto_0

    :cond_1b
    move v1, v3

    goto :goto_8

    .line 70
    :cond_1c
    const-string v0, "isbackup"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 71
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fi:Lnet/yostore/aws/api/entity/FileInfo;

    const-string v1, "1"

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    move v1, v4

    :goto_9
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FileInfo;->setIsbackup(Z)V

    goto/16 :goto_0

    :cond_1d
    move v1, v3

    goto :goto_9

    .line 72
    :cond_1e
    const-string v0, "isorigdeleted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 73
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

    :goto_a
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FileInfo;->setIsorigdeleted(Z)V

    goto/16 :goto_0

    :cond_1f
    move v1, v3

    goto :goto_a

    .line 74
    :cond_20
    const-string v0, "isinfected"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 75
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fi:Lnet/yostore/aws/api/entity/FileInfo;

    const-string v1, "1"

    iget-object v2, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    move v1, v4

    :goto_b
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FileInfo;->setIsinfected(Z)V

    goto/16 :goto_0

    :cond_21
    move v1, v3

    goto :goto_b

    .line 76
    :cond_22
    const-string v0, "ispublic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 77
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

    :goto_c
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FileInfo;->setIspublic(Z)V

    goto/16 :goto_0

    :cond_23
    move v1, v3

    goto :goto_c

    .line 78
    :cond_24
    const-string v0, "headversion"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 79
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

    .line 80
    :cond_25
    const-string v0, "createdtime"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 81
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fi:Lnet/yostore/aws/api/entity/FileInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FileInfo;->setCreatedtime(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 82
    :cond_26
    const-string v0, "markid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fi:Lnet/yostore/aws/api/entity/FileInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FileInfo;->setMarkid(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 86
    :cond_27
    const-string v0, "status"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 87
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

    .line 88
    :cond_28
    const-string v0, "logmessage"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 89
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->setLogmessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 90
    :cond_29
    const-string v0, "scrip"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 91
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->setScrip(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 92
    :cond_2a
    const-string v0, "pageno"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 93
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

    .line 94
    :cond_2b
    const-string v0, "pagesize"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 95
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

    .line 96
    :cond_2c
    const-string v0, "totalcount"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 97
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

    .line 98
    :cond_2d
    const-string v0, "hasnextpage"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->response:Lnet/yostore/aws/api/entity/FolderBrowseResponse;

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

    :goto_d
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->setHasnextpage(Z)V

    goto/16 :goto_0

    :cond_2e
    move v1, v3

    goto :goto_d
.end method

.method public getResponse()Lnet/yostore/aws/api/entity/ApiResponse;
    .locals 1

    .prologue
    .line 120
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

    .line 109
    invoke-super {p0, p1, p2, p3, p4}, Lnet/yostore/aws/api/sax/BaseSaxHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 110
    const-string v0, "folder"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    new-instance v0, Lnet/yostore/aws/api/entity/FolderInfo;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/FolderInfo;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fo:Lnet/yostore/aws/api/entity/FolderInfo;

    .line 112
    iput-boolean v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isFolder:Z

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    const-string v0, "file"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Lnet/yostore/aws/api/entity/FileInfo;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/FileInfo;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->fi:Lnet/yostore/aws/api/entity/FileInfo;

    .line 115
    iput-boolean v1, p0, Lnet/yostore/aws/api/sax/FolderBrowse;->isFile:Z

    goto :goto_0
.end method
