.class public Lnet/yostore/aws/api/sax/GetSharedFolderList;
.super Lnet/yostore/aws/api/sax/BaseSaxHandler;
.source "GetSharedFolderList.java"


# instance fields
.field fo:Lnet/yostore/aws/api/entity/UserSharedFolderInfo;

.field isFolder:Z

.field private response:Lnet/yostore/aws/api/entity/GetSharedFolderListResponse;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lnet/yostore/aws/api/sax/BaseSaxHandler;-><init>()V

    .line 13
    new-instance v0, Lnet/yostore/aws/api/entity/GetSharedFolderListResponse;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/GetSharedFolderListResponse;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->response:Lnet/yostore/aws/api/entity/GetSharedFolderListResponse;

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->isFolder:Z

    .line 11
    return-void
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

    .line 20
    invoke-super {p0, p1, p2, p3}, Lnet/yostore/aws/api/sax/BaseSaxHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-boolean v0, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->isFolder:Z

    if-eqz v0, :cond_5

    .line 23
    const-string v0, "folder"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    iget-object v0, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->response:Lnet/yostore/aws/api/entity/GetSharedFolderListResponse;

    invoke-virtual {v0}, Lnet/yostore/aws/api/entity/GetSharedFolderListResponse;->getFolderList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->fo:Lnet/yostore/aws/api/entity/UserSharedFolderInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iput-boolean v2, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->isFolder:Z

    .line 45
    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 47
    return-void

    .line 26
    :cond_1
    const-string v0, "id"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 27
    iget-object v0, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->fo:Lnet/yostore/aws/api/entity/UserSharedFolderInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/UserSharedFolderInfo;->setId(Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :cond_2
    const-string v0, "display"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 29
    iget-object v0, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->fo:Lnet/yostore/aws/api/entity/UserSharedFolderInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/UserSharedFolderInfo;->setDisplay(Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :cond_3
    const-string v0, "attribute"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 31
    iget-object v0, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->fo:Lnet/yostore/aws/api/entity/UserSharedFolderInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/UserSharedFolderInfo;->setAttribute(Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_4
    const-string v0, "accesscontrol"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->fo:Lnet/yostore/aws/api/entity/UserSharedFolderInfo;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/UserSharedFolderInfo;->setAccesscontrol(Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :cond_5
    const-string v0, "status"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 37
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

    .line 38
    :cond_6
    const-string v0, "logmessage"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 39
    iget-object v0, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->response:Lnet/yostore/aws/api/entity/GetSharedFolderListResponse;

    iget-object v1, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/GetSharedFolderListResponse;->setLogmessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 40
    :cond_7
    const-string v0, "scrip"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
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
    .line 59
    iget-object v0, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->response:Lnet/yostore/aws/api/entity/GetSharedFolderListResponse;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
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
    .line 51
    invoke-super {p0, p1, p2, p3, p4}, Lnet/yostore/aws/api/sax/BaseSaxHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 52
    const-string v0, "folder"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Lnet/yostore/aws/api/entity/UserSharedFolderInfo;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/UserSharedFolderInfo;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->fo:Lnet/yostore/aws/api/entity/UserSharedFolderInfo;

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/yostore/aws/api/sax/GetSharedFolderList;->isFolder:Z

    .line 56
    :cond_0
    return-void
.end method
