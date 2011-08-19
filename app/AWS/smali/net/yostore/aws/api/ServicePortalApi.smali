.class public Lnet/yostore/aws/api/ServicePortalApi;
.super Lnet/yostore/aws/api/BaseApi;
.source "ServicePortalApi.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ServicePortalApi"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "Url"
    .parameter "proxy"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lnet/yostore/aws/api/BaseApi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getServerTime(Lnet/yostore/aws/api/entity/GetServerTimeRequest;)Lnet/yostore/aws/api/entity/GetServerTimeResponse;
    .locals 3
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/GetServerTimeRequest;->toXml()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, params:Ljava/lang/String;
    const-string v1, "ServicePortalApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/server/getservertime/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnet/yostore/aws/api/sax/GetServerTime;

    invoke-direct {v2}, Lnet/yostore/aws/api/sax/GetServerTime;-><init>()V

    invoke-super {p0, v1, v2}, Lnet/yostore/aws/api/BaseApi;->getResponse(Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/api/entity/GetServerTimeResponse;

    return-object p0
.end method

.method public register(Lnet/yostore/aws/api/entity/RegisterRequest;)Lnet/yostore/aws/api/entity/RegisterResponse;
    .locals 3
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/RegisterRequest;->toXml()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, params:Ljava/lang/String;
    const-string v1, "ServicePortalApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/member/register/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnet/yostore/aws/api/sax/Register;

    invoke-direct {v2}, Lnet/yostore/aws/api/sax/Register;-><init>()V

    invoke-super {p0, v1, v2}, Lnet/yostore/aws/api/BaseApi;->getResponse(Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/api/entity/RegisterResponse;

    return-object p0
.end method

.method public requestServiceGateway(Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;)Lnet/yostore/aws/api/entity/RequestServiceGatewayResponse;
    .locals 3
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;->toXml()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, params:Ljava/lang/String;
    const-string v1, "ServicePortalApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const-string v1, "/member/requestservicegateway/"

    new-instance v2, Lnet/yostore/aws/api/sax/RequestServiceGateway;

    invoke-direct {v2}, Lnet/yostore/aws/api/sax/RequestServiceGateway;-><init>()V

    invoke-super {p0, v1, v0, v2}, Lnet/yostore/aws/api/BaseApi;->getResponse(Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/api/entity/RequestServiceGatewayResponse;

    return-object p0
.end method

.method public selfActivation(Lnet/yostore/aws/api/entity/SelfActivationRequest;)Lnet/yostore/aws/api/entity/SelfActivationResponse;
    .locals 3
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/SelfActivationRequest;->toXml()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, params:Ljava/lang/String;
    const-string v1, "ServicePortalApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const-string v1, "/member/selfactivation/"

    new-instance v2, Lnet/yostore/aws/api/sax/SelfActivation;

    invoke-direct {v2}, Lnet/yostore/aws/api/sax/SelfActivation;-><init>()V

    invoke-super {p0, v1, v0, v2}, Lnet/yostore/aws/api/BaseApi;->getResponse(Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/api/entity/SelfActivationResponse;

    return-object p0
.end method

.method public updateLogin(Lnet/yostore/aws/api/entity/UpdateLoginRequest;)Lnet/yostore/aws/api/entity/UpdateLoginResponse;
    .locals 3
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/UpdateLoginRequest;->toXml()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, params:Ljava/lang/String;
    const-string v1, "ServicePortalApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/member/updatelogin/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnet/yostore/aws/api/sax/UpdateLogin;

    invoke-direct {v2}, Lnet/yostore/aws/api/sax/UpdateLogin;-><init>()V

    invoke-super {p0, v1, v2}, Lnet/yostore/aws/api/BaseApi;->getResponse(Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/api/entity/UpdateLoginResponse;

    return-object p0
.end method
