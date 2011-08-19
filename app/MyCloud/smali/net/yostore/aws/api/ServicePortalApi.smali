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
    .line 25
    invoke-direct {p0, p1, p2}, Lnet/yostore/aws/api/BaseApi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method


# virtual methods
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
    .line 47
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/RegisterRequest;->toXml()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, params:Ljava/lang/String;
    const-string v1, "ServicePortalApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
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
    .line 29
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;->toXml()Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, params:Ljava/lang/String;
    const-string v1, "ServicePortalApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
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
    .locals 6
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/SelfActivationRequest;->toXml()Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, params:Ljava/lang/String;
    const-string v0, "ServicePortalApi"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const-string v1, "/member/selfactivation/"

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v5, Lnet/yostore/aws/api/sax/SelfActivation;

    invoke-direct {v5}, Lnet/yostore/aws/api/sax/SelfActivation;-><init>()V

    move-object v0, p0

    invoke-super/range {v0 .. v5}, Lnet/yostore/aws/api/BaseApi;->getResponse(Ljava/lang/String;Ljava/lang/String;ZZLnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;

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
    .line 41
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/UpdateLoginRequest;->toXml()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, params:Ljava/lang/String;
    const-string v1, "ServicePortalApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
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
