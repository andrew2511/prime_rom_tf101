.class public Lnet/yostore/aws/api/entity/MediaInfoResponse;
.super Lnet/yostore/aws/api/entity/ApiResponse;
.source "MediaInfoResponse.java"


# instance fields
.field private mieList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/api/entity/MediaInfoEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lnet/yostore/aws/api/entity/ApiResponse;-><init>()V

    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/entity/MediaInfoResponse;->mieList:Ljava/util/List;

    .line 15
    return-void
.end method


# virtual methods
.method public getMieList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/api/entity/MediaInfoEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lnet/yostore/aws/api/entity/MediaInfoResponse;->mieList:Ljava/util/List;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public setMieList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/api/entity/MediaInfoEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, mieList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/MediaInfoEntity;>;"
    iput-object p1, p0, Lnet/yostore/aws/api/entity/MediaInfoResponse;->mieList:Ljava/util/List;

    .line 51
    return-void
.end method

.method public toXml()Ljava/lang/String;
    .locals 6

    .prologue
    .line 54
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 55
    .local v2, serializer:Lorg/xmlpull/v1/XmlSerializer;
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 57
    .local v3, writer:Ljava/io/StringWriter;
    :try_start_0
    invoke-interface {v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 58
    const-string v4, "UTF-8"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 59
    const-string v4, ""

    const-string v5, "mi"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 60
    iget-object v4, p0, Lnet/yostore/aws/api/entity/MediaInfoResponse;->mieList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 61
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lnet/yostore/aws/api/entity/MediaInfoResponse;->mieList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 68
    .end local v1           #i:I
    :cond_0
    const-string v4, ""

    const-string v5, "mi"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 69
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 70
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 62
    .restart local v1       #i:I
    :cond_1
    const-string v4, ""

    const-string v5, "f"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 63
    iget-object v4, p0, Lnet/yostore/aws/api/entity/MediaInfoResponse;->mieList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/yostore/aws/api/entity/MediaInfoEntity;

    invoke-virtual {v4}, Lnet/yostore/aws/api/entity/MediaInfoEntity;->toXml()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 64
    const-string v4, ""

    const-string v5, "f"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    .end local v1           #i:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 72
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method
