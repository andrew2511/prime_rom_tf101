.class public Lnet/yostore/aws/api/ServiceGatewayApi;
.super Lnet/yostore/aws/api/BaseApi;
.source "ServiceGatewayApi.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ServiceGatewayApi"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "Url"
    .parameter "proxy"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lnet/yostore/aws/api/BaseApi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method public getAccountInfo(Lnet/yostore/aws/api/entity/GetAccountInfoRequest;)Lnet/yostore/aws/api/entity/GetAccountInfoResponse;
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
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/GetAccountInfoRequest;->toXml()Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, params:Ljava/lang/String;
    const-string v1, "ServiceGatewayApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/member/getinfo/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnet/yostore/aws/api/sax/GetAccountInfo;

    invoke-direct {v2}, Lnet/yostore/aws/api/sax/GetAccountInfo;-><init>()V

    invoke-super {p0, v1, v2}, Lnet/yostore/aws/api/BaseApi;->getResponse(Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;

    return-object p0
.end method

.method public requestToken(Lnet/yostore/aws/api/entity/RequestTokenRequest;)Lnet/yostore/aws/api/entity/RequestTokenResponse;
    .locals 3
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/RequestTokenRequest;->toXml()Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, params:Ljava/lang/String;
    const-string v1, "ServiceGatewayApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/member/requesttoken/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnet/yostore/aws/api/sax/RequestToken;

    invoke-direct {v2}, Lnet/yostore/aws/api/sax/RequestToken;-><init>()V

    invoke-super {p0, v1, v2}, Lnet/yostore/aws/api/BaseApi;->getResponse(Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/api/entity/RequestTokenResponse;

    return-object p0
.end method
