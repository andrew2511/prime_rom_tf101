.class public Lnet/yostore/aws/api/entity/GetLatestUploadsRequest;
.super Ljava/lang/Object;
.source "GetLatestUploadsRequest.java"


# instance fields
.field private _token:Ljava/lang/String;

.field public sortdirection:I

.field public targetroot:Ljava/lang/String;

.field public top:I

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .parameter "userId"
    .parameter "token"
    .parameter "top"
    .parameter "targetroot"
    .parameter "sortdirection"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p2, p0, Lnet/yostore/aws/api/entity/GetLatestUploadsRequest;->_token:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lnet/yostore/aws/api/entity/GetLatestUploadsRequest;->userId:Ljava/lang/String;

    .line 29
    iput p3, p0, Lnet/yostore/aws/api/entity/GetLatestUploadsRequest;->top:I

    .line 30
    iput-object p4, p0, Lnet/yostore/aws/api/entity/GetLatestUploadsRequest;->targetroot:Ljava/lang/String;

    .line 31
    iput p5, p0, Lnet/yostore/aws/api/entity/GetLatestUploadsRequest;->sortdirection:I

    .line 32
    return-void
.end method


# virtual methods
.method public getSortdirection()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lnet/yostore/aws/api/entity/GetLatestUploadsRequest;->sortdirection:I

    return v0
.end method

.method public getTargetroot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lnet/yostore/aws/api/entity/GetLatestUploadsRequest;->targetroot:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lnet/yostore/aws/api/entity/GetLatestUploadsRequest;->_token:Ljava/lang/String;

    return-object v0
.end method

.method public getTop()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lnet/yostore/aws/api/entity/GetLatestUploadsRequest;->top:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lnet/yostore/aws/api/entity/GetLatestUploadsRequest;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setSortdirection(I)V
    .locals 0
    .parameter "sortdirection"

    .prologue
    .line 73
    iput p1, p0, Lnet/yostore/aws/api/entity/GetLatestUploadsRequest;->sortdirection:I

    .line 74
    return-void
.end method

.method public setTargetroot(Ljava/lang/String;)V
    .locals 0
    .parameter "targetroot"

    .prologue
    .line 65
    iput-object p1, p0, Lnet/yostore/aws/api/entity/GetLatestUploadsRequest;->targetroot:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 36
    iput-object p1, p0, Lnet/yostore/aws/api/entity/GetLatestUploadsRequest;->_token:Ljava/lang/String;

    return-void
.end method

.method public setTop(I)V
    .locals 0
    .parameter "top"

    .prologue
    .line 57
    iput p1, p0, Lnet/yostore/aws/api/entity/GetLatestUploadsRequest;->top:I

    .line 58
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 49
    iput-object p1, p0, Lnet/yostore/aws/api/entity/GetLatestUploadsRequest;->userId:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public toXml()Ljava/lang/String;
    .locals 5

    .prologue
    .line 76
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 77
    .local v1, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 79
    .local v2, writer:Ljava/io/StringWriter;
    :try_start_0
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 80
    const-string v3, "UTF-8"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 81
    const-string v3, ""

    const-string v4, "getlatestuploads"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 83
    const-string v3, ""

    const-string v4, "userid"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 84
    iget-object v3, p0, Lnet/yostore/aws/api/entity/GetLatestUploadsRequest;->userId:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 85
    const-string v3, ""

    const-string v4, "userid"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 86
    const-string v3, ""

    const-string v4, "token"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 87
    iget-object v3, p0, Lnet/yostore/aws/api/entity/GetLatestUploadsRequest;->_token:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 88
    const-string v3, ""

    const-string v4, "token"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 89
    const-string v3, ""

    const-string v4, "top"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 90
    iget v3, p0, Lnet/yostore/aws/api/entity/GetLatestUploadsRequest;->top:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 91
    const-string v3, ""

    const-string v4, "top"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 92
    const-string v3, ""

    const-string v4, "targetroot"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 93
    iget-object v3, p0, Lnet/yostore/aws/api/entity/GetLatestUploadsRequest;->targetroot:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 94
    const-string v3, ""

    const-string v4, "targetroot"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 95
    const-string v3, ""

    const-string v4, "sortdirection"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 96
    iget v3, p0, Lnet/yostore/aws/api/entity/GetLatestUploadsRequest;->sortdirection:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 97
    const-string v3, ""

    const-string v4, "sortdirection"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    const-string v3, ""

    const-string v4, "getlatestuploads"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 100
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 101
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 104
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 105
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
