.class public Lnet/yostore/aws/api/sax/LatestChangeFiles;
.super Lnet/yostore/aws/api/sax/BaseSaxHandler;
.source "LatestChangeFiles.java"


# instance fields
.field at:Lnet/yostore/aws/api/entity/Attribute;

.field isAttr:Z

.field isLatestChangeFiles:Z

.field lcf:Lnet/yostore/aws/api/entity/BaseEntry;

.field private response:Lnet/yostore/aws/api/entity/GetLatestChangeFilesResponse;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Lnet/yostore/aws/api/sax/BaseSaxHandler;-><init>()V

    .line 17
    new-instance v0, Lnet/yostore/aws/api/entity/GetLatestChangeFilesResponse;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/GetLatestChangeFilesResponse;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/sax/LatestChangeFiles;->response:Lnet/yostore/aws/api/entity/GetLatestChangeFilesResponse;

    .line 18
    iput-boolean v1, p0, Lnet/yostore/aws/api/sax/LatestChangeFiles;->isLatestChangeFiles:Z

    .line 19
    iput-boolean v1, p0, Lnet/yostore/aws/api/sax/LatestChangeFiles;->isAttr:Z

    .line 15
    return-void
.end method

.method private b64decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "b64"

    .prologue
    .line 100
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {p1}, Lcom/ecareme/utils/codec/Base64;->decodeFast(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "UTF8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-object v1

    .line 101
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 102
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 103
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

    .line 26
    invoke-super {p0, p1, p2, p3}, Lnet/yostore/aws/api/sax/BaseSaxHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-boolean v0, p0, Lnet/yostore/aws/api/sax/LatestChangeFiles;->isLatestChangeFiles:Z

    if-eqz v0, :cond_14

    .line 28
    iget-boolean v0, p0, Lnet/yostore/aws/api/sax/LatestChangeFiles;->isAttr:Z

    if-eqz v0, :cond_4

    .line 29
    const-string v0, "attribute"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    iget-object v0, p0, Lnet/yostore/aws/api/sax/LatestChangeFiles;->lcf:Lnet/yostore/aws/api/entity/BaseEntry;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/LatestChangeFiles;->at:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/BaseEntry;->setAttribute(Lnet/yostore/aws/api/entity/Attribute;)V

    .line 31
    iput-boolean v3, p0, Lnet/yostore/aws/api/sax/LatestChangeFiles;->isAttr:Z

    .line 76
    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/yostore/aws/api/sax/LatestChangeFiles;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 78
    return-void

    .line 32
    :cond_1
    const-string v0, "creationtime"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33
    iget-object v0, p0, Lnet/yostore/aws/api/sax/LatestChangeFiles;->at:Lnet/yostore/aws/api/entity/Attribute;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/LatestChangeFiles;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/Attribute;->setCreationtime(Ljava/lang/String;)V

    goto :goto_0

    .line 34
    :cond_2
    const-string v0, "lastaccesstime"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 35
    iget-object v0, p0, Lnet/yostore/aws/api/sax/LatestChangeFiles;->at:Lnet/yostore/aws/api/entity/Attribute;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/LatestChangeFiles;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/Attribute;->setLastaccesstime(Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_3
    const-string v0, "lastwritetime"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lnet/yostore/aws/api/sax/LatestChangeFiles;->at:Lnet/yostore/aws/api/entity/Attribute;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/LatestChangeFiles;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/Attribute;->setLastwritetime(Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_4
    const-string v0, "entry"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 41
    iget-object v0, p0, Lnet/yostore/aws/api/sax/LatestChangeFiles;->response:Lnet/yostore/aws/api/entity/GetLatestChangeFilesResponse;

    invoke-virtual {v0}, Lnet/yostore/aws/api/entity/GetLatestChangeFilesResponse;->getLatestChangeFileList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/api/sax/LatestChangeFiles;->lcf:Lnet/yostore/aws/api/entity/BaseEntry;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    iput-boolean v3, p0, Lnet/yostore/aws/api/sax/LatestChangeFiles;->isLatestChangeFiles:Z

    goto :goto_0

    .line 43
    :cond_5
    const-string v0, "id"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 44
    iget-object v0, p0, Lnet/yostore/aws/api/sax/LatestChangeFiles;->lcf:Lnet/yostore/aws/api/entity/BaseEntry;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/LatestChangeFiles;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/BaseEntry;->setId(Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_6
    const-string v0, "parent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 46
    iget-object v0, p0, Lnet/yostore/aws/api/sax/LatestChangeFiles;->lcf:Lnet/yostore/aws/api/entity/BaseEntry;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/LatestChangeFiles;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/BaseEntry;->setParent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 47
    :cond_7
    const-string v0, "rawfilename"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 48
    iget-object v0, p0, Lnet/yostore/aws/api/sax/LatestChangeFiles;->lcf:Lnet/yostore/aws/api/entity/BaseEntry;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/LatestChangeFiles;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/BaseEntry;->setRawfilename(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 49
    :cond_8
    const-string v0, "isbackup"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 50
    iget-object v0, p0, Lnet/yostore/aws/api/sax/LatestChangeFiles;->lcf:Lnet/yostore/aws/api/entity/BaseEntry;

    const-string v1, "1"

    iget-object v2, p0, Lnet/yostore/aws/api/sax/LatestChangeFiles;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/BaseEntry;->setIsBackup(Z)V

    goto/16 :goto_0

    :cond_9
    move v1, v3

    goto :goto_1

    .line 51
    :cond_a
    const-string v0, "isorigdeleted"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 52
    iget-object v0, p0, Lnet/yostore/aws/api/sax/LatestChangeFiles;->lcf:Lnet/yostore/aws/api/entity/BaseEntry;

    const-string v1, "1"

    iget-object v2, p0, Lnet/yostore/aws/api/sax/LatestChangeFiles;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v1, v4

    :goto_2
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/BaseEntry;->setIsorigdeleted(Z)V

    goto/16 :goto_0

    :cond_b
    move v1, v3

    goto :goto_2

    .line 53
    :cond_c
    const-string v0, "marks"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 54
    iget-object v0, p0, Lnet/yostore/aws/api/sax/LatestChangeFiles;->lcf:Lnet/yostore/aws/api/entity/BaseEntry;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/LatestChangeFiles;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/BaseEntry;->setMarks(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 55
    :cond_d
    const-string v0, "createdtime"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 56
    iget-object v0, p0, Lnet/yostore/aws/api/sax/LatestChangeFiles;->lcf:Lnet/yostore/aws/api/entity/BaseEntry;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/LatestChangeFiles;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/BaseEntry;->setCreatedtime(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 57
    :cond_e
    const-string v0, "lastchangetime"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 58
    iget-object v0, p0, Lnet/yostore/aws/api/sax/LatestChangeFiles;->lcf:Lnet/yostore/aws/api/entity/BaseEntry;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/LatestChangeFiles;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/api/entity/BaseEntry;->setLastchangetime(J)V

    goto/16 :goto_0

    .line 59
    :cond_f
    const-string v0, "isinfected"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 60
    iget-object v0, p0, Lnet/yostore/aws/api/sax/LatestChangeFiles;->lcf:Lnet/yostore/aws/api/entity/BaseEntry;

    const-string v1, "1"

    iget-object v2, p0, Lnet/yostore/aws/api/sax/LatestChangeFiles;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    move v1, v4

    :goto_3
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/BaseEntry;->setIsinfected(Z)V

    goto/16 :goto_0

    :cond_10
    move v1, v3

    goto :goto_3

    .line 61
    :cond_11
    const-string v0, "size"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 62
    iget-object v0, p0, Lnet/yostore/aws/api/sax/LatestChangeFiles;->lcf:Lnet/yostore/aws/api/entity/BaseEntry;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/LatestChangeFiles;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/api/entity/BaseEntry;->setSize(J)V

    goto/16 :goto_0

    .line 63
    :cond_12
    const-string v0, "ispublic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lnet/yostore/aws/api/sax/LatestChangeFiles;->lcf:Lnet/yostore/aws/api/entity/BaseEntry;

    const-string v1, "1"

    iget-object v2, p0, Lnet/yostore/aws/api/sax/LatestChangeFiles;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v4

    :goto_4
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/BaseEntry;->setIspublic(Z)V

    goto/16 :goto_0

    :cond_13
    move v1, v3

    goto :goto_4

    .line 68
    :cond_14
    const-string v0, "status"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 69
    iget-object v0, p0, Lnet/yostore/aws/api/sax/LatestChangeFiles;->response:Lnet/yostore/aws/api/entity/GetLatestChangeFilesResponse;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/LatestChangeFiles;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/GetLatestChangeFilesResponse;->setStatus(I)V

    goto/16 :goto_0

    .line 70
    :cond_15
    const-string v0, "logmessage"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lnet/yostore/aws/api/sax/LatestChangeFiles;->response:Lnet/yostore/aws/api/entity/GetLatestChangeFilesResponse;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/LatestChangeFiles;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/GetLatestChangeFilesResponse;->setLogmessage(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getResponse()Lnet/yostore/aws/api/entity/ApiResponse;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lnet/yostore/aws/api/sax/LatestChangeFiles;->response:Lnet/yostore/aws/api/entity/GetLatestChangeFilesResponse;

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

    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Lnet/yostore/aws/api/sax/BaseSaxHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 83
    const-string v0, "entry"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iput-boolean v1, p0, Lnet/yostore/aws/api/sax/LatestChangeFiles;->isLatestChangeFiles:Z

    .line 85
    new-instance v0, Lnet/yostore/aws/api/entity/BaseEntry;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/BaseEntry;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/sax/LatestChangeFiles;->lcf:Lnet/yostore/aws/api/entity/BaseEntry;

    .line 88
    :cond_0
    const-string v0, "attribute"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    iput-boolean v1, p0, Lnet/yostore/aws/api/sax/LatestChangeFiles;->isAttr:Z

    .line 90
    new-instance v0, Lnet/yostore/aws/api/entity/Attribute;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/Attribute;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/sax/LatestChangeFiles;->at:Lnet/yostore/aws/api/entity/Attribute;

    .line 92
    :cond_1
    return-void
.end method
