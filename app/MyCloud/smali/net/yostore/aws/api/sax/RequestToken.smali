.class public Lnet/yostore/aws/api/sax/RequestToken;
.super Lnet/yostore/aws/api/sax/BaseSaxHandler;
.source "RequestToken.java"


# instance fields
.field isFeatureList:Z

.field mearFeatureList:Lnet/yostore/aws/api/entity/MearFeatureList;

.field private response:Lnet/yostore/aws/api/entity/RequestTokenResponse;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lnet/yostore/aws/api/sax/BaseSaxHandler;-><init>()V

    .line 13
    new-instance v0, Lnet/yostore/aws/api/entity/RequestTokenResponse;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/RequestTokenResponse;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/sax/RequestToken;->response:Lnet/yostore/aws/api/entity/RequestTokenResponse;

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/yostore/aws/api/sax/RequestToken;->isFeatureList:Z

    .line 11
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
    const/4 v4, 0x0

    .line 20
    invoke-super {p0, p1, p2, p3}, Lnet/yostore/aws/api/sax/BaseSaxHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-boolean v2, p0, Lnet/yostore/aws/api/sax/RequestToken;->isFeatureList:Z

    if-eqz v2, :cond_1

    .line 23
    const-string v2, "featurelist"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 24
    iput-boolean v4, p0, Lnet/yostore/aws/api/sax/RequestToken;->isFeatureList:Z

    .line 66
    :cond_0
    :goto_0
    iget-object v2, p0, Lnet/yostore/aws/api/sax/RequestToken;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 68
    return-void

    .line 27
    :cond_1
    const-string v2, "status"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 28
    const/16 v1, -0x3e7

    .line 30
    .local v1, status:I
    :try_start_0
    iget-object v2, p0, Lnet/yostore/aws/api/sax/RequestToken;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 35
    :goto_1
    iget-object v2, p0, Lnet/yostore/aws/api/sax/RequestToken;->response:Lnet/yostore/aws/api/entity/RequestTokenResponse;

    invoke-virtual {v2, v1}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->setStatus(I)V

    goto :goto_0

    .line 32
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 33
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 36
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #status:I
    :cond_2
    const-string v2, "token"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 37
    iget-object v2, p0, Lnet/yostore/aws/api/sax/RequestToken;->response:Lnet/yostore/aws/api/entity/RequestTokenResponse;

    iget-object v3, p0, Lnet/yostore/aws/api/sax/RequestToken;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->setToken(Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_3
    const-string v2, "inforelay"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 39
    iget-object v2, p0, Lnet/yostore/aws/api/sax/RequestToken;->response:Lnet/yostore/aws/api/entity/RequestTokenResponse;

    iget-object v3, p0, Lnet/yostore/aws/api/sax/RequestToken;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->setInforelay(Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_4
    const-string v2, "webrelay"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 41
    iget-object v2, p0, Lnet/yostore/aws/api/sax/RequestToken;->response:Lnet/yostore/aws/api/entity/RequestTokenResponse;

    iget-object v3, p0, Lnet/yostore/aws/api/sax/RequestToken;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->setWebrelay(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_5
    const-string v2, "rssrelay"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 43
    iget-object v2, p0, Lnet/yostore/aws/api/sax/RequestToken;->response:Lnet/yostore/aws/api/entity/RequestTokenResponse;

    iget-object v3, p0, Lnet/yostore/aws/api/sax/RequestToken;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->setRssRelay(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 44
    :cond_6
    const-string v2, "contentrelay"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 45
    iget-object v2, p0, Lnet/yostore/aws/api/sax/RequestToken;->response:Lnet/yostore/aws/api/entity/RequestTokenResponse;

    iget-object v3, p0, Lnet/yostore/aws/api/sax/RequestToken;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->setContentRelay(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 46
    :cond_7
    const-string v2, "mediarelay"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 47
    iget-object v2, p0, Lnet/yostore/aws/api/sax/RequestToken;->response:Lnet/yostore/aws/api/entity/RequestTokenResponse;

    iget-object v3, p0, Lnet/yostore/aws/api/sax/RequestToken;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->setMediarelay(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 48
    :cond_8
    const-string v2, "searchserver"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 49
    iget-object v2, p0, Lnet/yostore/aws/api/sax/RequestToken;->response:Lnet/yostore/aws/api/entity/RequestTokenResponse;

    iget-object v3, p0, Lnet/yostore/aws/api/sax/RequestToken;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->setSearchserver(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 50
    :cond_9
    const-string v2, "jobrelay"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 51
    iget-object v2, p0, Lnet/yostore/aws/api/sax/RequestToken;->response:Lnet/yostore/aws/api/entity/RequestTokenResponse;

    iget-object v3, p0, Lnet/yostore/aws/api/sax/RequestToken;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->setJobRelay(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 52
    :cond_a
    const-string v2, "time"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 53
    iget-object v2, p0, Lnet/yostore/aws/api/sax/RequestToken;->response:Lnet/yostore/aws/api/entity/RequestTokenResponse;

    iget-object v3, p0, Lnet/yostore/aws/api/sax/RequestToken;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->setTime(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 54
    :cond_b
    const-string v2, "id"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 55
    iget-object v2, p0, Lnet/yostore/aws/api/sax/RequestToken;->response:Lnet/yostore/aws/api/entity/RequestTokenResponse;

    invoke-virtual {v2}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->getPackageinfo()Lnet/yostore/aws/api/entity/PackageInfo;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/api/sax/RequestToken;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/yostore/aws/api/entity/PackageInfo;->setId(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 56
    :cond_c
    const-string v2, "display"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 57
    iget-object v2, p0, Lnet/yostore/aws/api/sax/RequestToken;->response:Lnet/yostore/aws/api/entity/RequestTokenResponse;

    invoke-virtual {v2}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->getPackageinfo()Lnet/yostore/aws/api/entity/PackageInfo;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/api/sax/RequestToken;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/yostore/aws/api/entity/PackageInfo;->setDisplay(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 58
    :cond_d
    const-string v2, "capacity"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 59
    iget-object v2, p0, Lnet/yostore/aws/api/sax/RequestToken;->response:Lnet/yostore/aws/api/entity/RequestTokenResponse;

    invoke-virtual {v2}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->getPackageinfo()Lnet/yostore/aws/api/entity/PackageInfo;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/api/sax/RequestToken;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/yostore/aws/api/entity/PackageInfo;->setCapacity(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 60
    :cond_e
    const-string v2, "maxfilesize"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 61
    iget-object v2, p0, Lnet/yostore/aws/api/sax/RequestToken;->response:Lnet/yostore/aws/api/entity/RequestTokenResponse;

    invoke-virtual {v2}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->getPackageinfo()Lnet/yostore/aws/api/entity/PackageInfo;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/api/sax/RequestToken;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/yostore/aws/api/entity/PackageInfo;->setMaxfilesize(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 62
    :cond_f
    const-string v2, "expire"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    iget-object v2, p0, Lnet/yostore/aws/api/sax/RequestToken;->response:Lnet/yostore/aws/api/entity/RequestTokenResponse;

    invoke-virtual {v2}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->getPackageinfo()Lnet/yostore/aws/api/entity/PackageInfo;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/api/sax/RequestToken;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/yostore/aws/api/entity/PackageInfo;->setExpire(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getResponse()Lnet/yostore/aws/api/entity/ApiResponse;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lnet/yostore/aws/api/sax/RequestToken;->response:Lnet/yostore/aws/api/entity/RequestTokenResponse;

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
    .line 72
    invoke-super {p0, p1, p2, p3, p4}, Lnet/yostore/aws/api/sax/BaseSaxHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 73
    const-string v0, "package"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 74
    iget-object v0, p0, Lnet/yostore/aws/api/sax/RequestToken;->response:Lnet/yostore/aws/api/entity/RequestTokenResponse;

    new-instance v1, Lnet/yostore/aws/api/entity/PackageInfo;

    invoke-direct {v1}, Lnet/yostore/aws/api/entity/PackageInfo;-><init>()V

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->setPackageinfo(Lnet/yostore/aws/api/entity/PackageInfo;)V

    .line 78
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lnet/yostore/aws/api/sax/RequestToken;->isFeatureList:Z

    if-eqz v0, :cond_1

    const-string v0, "property"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "name"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BlockFreeAccFirstGate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lnet/yostore/aws/api/sax/RequestToken;->response:Lnet/yostore/aws/api/entity/RequestTokenResponse;

    invoke-virtual {v0}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->getPackageinfo()Lnet/yostore/aws/api/entity/PackageInfo;

    move-result-object v0

    const-string v1, "value"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/PackageInfo;->setMearBlockFreeAccFirstGate(I)V

    .line 80
    :cond_1
    iget-boolean v0, p0, Lnet/yostore/aws/api/sax/RequestToken;->isFeatureList:Z

    if-eqz v0, :cond_2

    const-string v0, "property"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "name"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BlockFreeAccAfterFGate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lnet/yostore/aws/api/sax/RequestToken;->response:Lnet/yostore/aws/api/entity/RequestTokenResponse;

    invoke-virtual {v0}, Lnet/yostore/aws/api/entity/RequestTokenResponse;->getPackageinfo()Lnet/yostore/aws/api/entity/PackageInfo;

    move-result-object v0

    const-string v1, "value"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/PackageInfo;->setMearBlockFreeAccAfterFGate(I)V

    .line 83
    :cond_2
    return-void

    .line 75
    :cond_3
    const-string v0, "feature"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "name"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "enable"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/yostore/aws/api/sax/RequestToken;->isFeatureList:Z

    goto/16 :goto_0
.end method
