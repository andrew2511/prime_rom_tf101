.class public Lnet/yostore/aws/api/sax/GetAccountInfo;
.super Lnet/yostore/aws/api/sax/BaseSaxHandler;
.source "GetAccountInfo.java"


# instance fields
.field private response:Lnet/yostore/aws/api/entity/GetAccountInfoResponse;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lnet/yostore/aws/api/sax/BaseSaxHandler;-><init>()V

    .line 12
    new-instance v0, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/sax/GetAccountInfo;->response:Lnet/yostore/aws/api/entity/GetAccountInfoResponse;

    .line 10
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
    .line 17
    invoke-super {p0, p1, p2, p3}, Lnet/yostore/aws/api/sax/BaseSaxHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const-string v2, "status"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 21
    const/16 v1, -0x3e7

    .line 23
    .local v1, status:I
    :try_start_0
    iget-object v2, p0, Lnet/yostore/aws/api/sax/GetAccountInfo;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 28
    :goto_0
    iget-object v2, p0, Lnet/yostore/aws/api/sax/GetAccountInfo;->response:Lnet/yostore/aws/api/entity/GetAccountInfoResponse;

    invoke-virtual {v2, v1}, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->setStatus(I)V

    .line 59
    .end local v1           #status:I
    :cond_0
    :goto_1
    iget-object v2, p0, Lnet/yostore/aws/api/sax/GetAccountInfo;->builder:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 61
    return-void

    .line 25
    .restart local v1       #status:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 26
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 29
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #status:I
    :cond_1
    const-string v2, "account"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 30
    iget-object v2, p0, Lnet/yostore/aws/api/sax/GetAccountInfo;->response:Lnet/yostore/aws/api/entity/GetAccountInfoResponse;

    iget-object v3, p0, Lnet/yostore/aws/api/sax/GetAccountInfo;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->setAccount(Ljava/lang/String;)V

    goto :goto_1

    .line 31
    :cond_2
    const-string v2, "email"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 32
    iget-object v2, p0, Lnet/yostore/aws/api/sax/GetAccountInfo;->response:Lnet/yostore/aws/api/entity/GetAccountInfoResponse;

    iget-object v3, p0, Lnet/yostore/aws/api/sax/GetAccountInfo;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->setEmail(Ljava/lang/String;)V

    goto :goto_1

    .line 33
    :cond_3
    const-string v2, "regyear"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 34
    iget-object v2, p0, Lnet/yostore/aws/api/sax/GetAccountInfo;->response:Lnet/yostore/aws/api/entity/GetAccountInfoResponse;

    iget-object v3, p0, Lnet/yostore/aws/api/sax/GetAccountInfo;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->setRegyear(Ljava/lang/String;)V

    goto :goto_1

    .line 35
    :cond_4
    const-string v2, "language"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 36
    iget-object v2, p0, Lnet/yostore/aws/api/sax/GetAccountInfo;->response:Lnet/yostore/aws/api/entity/GetAccountInfoResponse;

    iget-object v3, p0, Lnet/yostore/aws/api/sax/GetAccountInfo;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->setLanguage(Ljava/lang/String;)V

    goto :goto_1

    .line 37
    :cond_5
    const-string v2, "activateddate"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 38
    iget-object v2, p0, Lnet/yostore/aws/api/sax/GetAccountInfo;->response:Lnet/yostore/aws/api/entity/GetAccountInfoResponse;

    iget-object v3, p0, Lnet/yostore/aws/api/sax/GetAccountInfo;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->setActivateddate(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 39
    :cond_6
    const-string v2, "credential"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 40
    iget-object v2, p0, Lnet/yostore/aws/api/sax/GetAccountInfo;->response:Lnet/yostore/aws/api/entity/GetAccountInfoResponse;

    iget-object v3, p0, Lnet/yostore/aws/api/sax/GetAccountInfo;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->setCredential(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 41
    :cond_7
    const-string v2, "credentialstate"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 42
    iget-object v2, p0, Lnet/yostore/aws/api/sax/GetAccountInfo;->response:Lnet/yostore/aws/api/entity/GetAccountInfoResponse;

    iget-object v3, p0, Lnet/yostore/aws/api/sax/GetAccountInfo;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->setCredentialstate(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 43
    :cond_8
    const-string v2, "id"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 44
    iget-object v2, p0, Lnet/yostore/aws/api/sax/GetAccountInfo;->response:Lnet/yostore/aws/api/entity/GetAccountInfoResponse;

    invoke-virtual {v2}, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->getPackageinfo()Lnet/yostore/aws/api/entity/PackageInfo;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/api/sax/GetAccountInfo;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/yostore/aws/api/entity/PackageInfo;->setId(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 45
    :cond_9
    const-string v2, "display"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 46
    iget-object v2, p0, Lnet/yostore/aws/api/sax/GetAccountInfo;->response:Lnet/yostore/aws/api/entity/GetAccountInfoResponse;

    invoke-virtual {v2}, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->getPackageinfo()Lnet/yostore/aws/api/entity/PackageInfo;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/api/sax/GetAccountInfo;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/yostore/aws/api/entity/PackageInfo;->setDisplay(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 47
    :cond_a
    const-string v2, "capacity"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 48
    iget-object v2, p0, Lnet/yostore/aws/api/sax/GetAccountInfo;->response:Lnet/yostore/aws/api/entity/GetAccountInfoResponse;

    invoke-virtual {v2}, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->getPackageinfo()Lnet/yostore/aws/api/entity/PackageInfo;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/api/sax/GetAccountInfo;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/yostore/aws/api/entity/PackageInfo;->setCapacity(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 49
    :cond_b
    const-string v2, "maxfilesize"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 50
    iget-object v2, p0, Lnet/yostore/aws/api/sax/GetAccountInfo;->response:Lnet/yostore/aws/api/entity/GetAccountInfoResponse;

    invoke-virtual {v2}, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->getPackageinfo()Lnet/yostore/aws/api/entity/PackageInfo;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/api/sax/GetAccountInfo;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/yostore/aws/api/entity/PackageInfo;->setMaxfilesize(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 51
    :cond_c
    const-string v2, "expire"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 52
    iget-object v2, p0, Lnet/yostore/aws/api/sax/GetAccountInfo;->response:Lnet/yostore/aws/api/entity/GetAccountInfoResponse;

    invoke-virtual {v2}, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->getPackageinfo()Lnet/yostore/aws/api/entity/PackageInfo;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/api/sax/GetAccountInfo;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/yostore/aws/api/entity/PackageInfo;->setExpire(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 53
    :cond_d
    const-string v2, "usedcapacity"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 54
    iget-object v2, p0, Lnet/yostore/aws/api/sax/GetAccountInfo;->response:Lnet/yostore/aws/api/entity/GetAccountInfoResponse;

    iget-object v3, p0, Lnet/yostore/aws/api/sax/GetAccountInfo;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->setUsedcapacity(J)V

    goto/16 :goto_1

    .line 55
    :cond_e
    const-string v2, "freecapacity"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    iget-object v2, p0, Lnet/yostore/aws/api/sax/GetAccountInfo;->response:Lnet/yostore/aws/api/entity/GetAccountInfoResponse;

    iget-object v3, p0, Lnet/yostore/aws/api/sax/GetAccountInfo;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->setFreecapacity(J)V

    goto/16 :goto_1
.end method

.method public getResponse()Lnet/yostore/aws/api/entity/ApiResponse;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lnet/yostore/aws/api/sax/GetAccountInfo;->response:Lnet/yostore/aws/api/entity/GetAccountInfoResponse;

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
    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Lnet/yostore/aws/api/sax/BaseSaxHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 66
    const-string v0, "package"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lnet/yostore/aws/api/sax/GetAccountInfo;->response:Lnet/yostore/aws/api/entity/GetAccountInfoResponse;

    new-instance v1, Lnet/yostore/aws/api/entity/PackageInfo;

    invoke-direct {v1}, Lnet/yostore/aws/api/entity/PackageInfo;-><init>()V

    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->setPackageinfo(Lnet/yostore/aws/api/entity/PackageInfo;)V

    .line 69
    :cond_0
    return-void
.end method
