.class public Lnet/yostore/aws/api/sax/GetSharedFolderList;
.super Lnet/yostore/aws/api/sax/BaseSaxHandler;
.source "GetSharedFolderList.java"


# instance fields
.field at:Lnet/yostore/aws/api/entity/Attribute;

.field fo:Lnet/yostore/aws/api/entity/UserSharedFolderInfo;

.field isAttr:Z

.field isFolder:Z

.field private response:Lnet/yostore/aws/api/entity/GetSharedFolderListResponse;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Lnet/yostore/aws/api/sax/BaseSaxHandler;-><init>()V

    .line 18
    new-instance v0, Lnet/yostore/aws/api/entity/GetSharedFolderListResponse;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/GetSharedFolderListResponse;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->response:Lnet/yostore/aws/api/entity/GetSharedFolderListResponse;

    .line 19
    iput-boolean v1, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->isFolder:Z

    .line 20
    iput-boolean v1, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->isAttr:Z

    .line 16
    return-void
.end method

.method private b64decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "b64"

    .prologue
    .line 88
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {p1}, Lcom/ecareme/utils/codec/Base64;->decodeFast(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "UTF8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-object v1

    .line 89
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 90
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 91
    const-string v1, ""

    goto :goto_0
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-super {p0, p1, p2, p3}, Lnet/yostore/aws/api/sax/BaseSaxHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-boolean v0, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->isFolder:Z

    if-eqz v0, :cond_8

    .line 30
    iget-boolean v0, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->isAttr:Z

    if-eqz v0, :cond_4

    .line 31
    const-string v0, "attribute"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->fo:Lnet/yostore/aws/api/entity/UserSharedFolderInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->at:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/UserSharedFolderInfo;->setAttribute(Lnet/yostore/aws/api/entity/Attribute;)V

    .line 33
    iput-boolean v2, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->isAttr:Z

    .line 65
    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 67
    return-void

    .line 34
    :cond_1
    const-string v0, "creationtime"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35
    iget-object v0, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->at:Lnet/yostore/aws/api/entity/Attribute;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/Attribute;->setCreationtime(Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_2
    const-string v0, "lastaccesstime"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 37
    iget-object v0, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->at:Lnet/yostore/aws/api/entity/Attribute;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/Attribute;->setLastaccesstime(Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_3
    const-string v0, "lastwritetime"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->at:Lnet/yostore/aws/api/entity/Attribute;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/Attribute;->setLastwritetime(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_4
    const-string v0, "folder"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 43
    iget-object v0, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->response:Lnet/yostore/aws/api/entity/GetSharedFolderListResponse;

    invoke-virtual {v0}, Lnet/yostore/aws/api/entity/GetSharedFolderListResponse;->getFolderList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->fo:Lnet/yostore/aws/api/entity/UserSharedFolderInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iput-boolean v2, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->isFolder:Z

    goto :goto_0

    .line 45
    :cond_5
    const-string v0, "id"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 46
    iget-object v0, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->fo:Lnet/yostore/aws/api/entity/UserSharedFolderInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/UserSharedFolderInfo;->setId(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :cond_6
    const-string v0, "display"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 48
    iget-object v0, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->fo:Lnet/yostore/aws/api/entity/UserSharedFolderInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/yostore/aws/api/sax/GetSharedFolderList;->b64decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/UserSharedFolderInfo;->setDisplay(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 51
    :cond_7
    const-string v0, "accesscontrol"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->fo:Lnet/yostore/aws/api/entity/UserSharedFolderInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/UserSharedFolderInfo;->setAccesscontrol(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 56
    :cond_8
    const-string v0, "status"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 57
    iget-object v0, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->response:Lnet/yostore/aws/api/entity/GetSharedFolderListResponse;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/GetSharedFolderListResponse;->setStatus(I)V

    goto/16 :goto_0

    .line 58
    :cond_9
    const-string v0, "logmessage"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 59
    iget-object v0, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->response:Lnet/yostore/aws/api/entity/GetSharedFolderListResponse;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/GetSharedFolderListResponse;->setLogmessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 60
    :cond_a
    const-string v0, "scrip"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->response:Lnet/yostore/aws/api/entity/GetSharedFolderListResponse;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/GetSharedFolderListResponse;->setScrip(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getResponse()Lnet/yostore/aws/api/entity/ApiResponse;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->response:Lnet/yostore/aws/api/entity/GetSharedFolderListResponse;

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

    .line 71
    invoke-super {p0, p1, p2, p3, p4}, Lnet/yostore/aws/api/sax/BaseSaxHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 72
    const-string v0, "folder"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Lnet/yostore/aws/api/entity/UserSharedFolderInfo;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/UserSharedFolderInfo;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->fo:Lnet/yostore/aws/api/entity/UserSharedFolderInfo;

    .line 74
    iput-boolean v1, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->isFolder:Z

    .line 76
    :cond_0
    const-string v0, "attribute"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    iput-boolean v1, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->isAttr:Z

    .line 78
    new-instance v0, Lnet/yostore/aws/api/entity/Attribute;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/Attribute;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->at:Lnet/yostore/aws/api/entity/Attribute;

    .line 80
    :cond_1
    return-void
.end method
