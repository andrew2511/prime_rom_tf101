.class public Lnet/yostore/aws/api/helper/RequestServiceGatewayHelper;
.super Lnet/yostore/aws/api/helper/BaseHelper;
.source "RequestServiceGatewayHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lnet/yostore/aws/api/helper/BaseHelper;-><init>()V

    return-void
.end method


# virtual methods
.method protected doApi(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;
    .locals 4
    .parameter "apicfg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/ProtocolException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 18
    new-instance v0, Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;

    iget-object v2, p1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    iget-object v3, p1, Lnet/yostore/aws/api/ApiConfig;->password:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .local v0, request:Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;
    new-instance v1, Lnet/yostore/aws/api/ServicePortalApi;

    const-string v2, "sp.yostore.net"

    const-string v3, "https://approxy.asuswebstorage.com/api/"

    invoke-direct {v1, v2, v3}, Lnet/yostore/aws/api/ServicePortalApi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .local v1, spl:Lnet/yostore/aws/api/ServicePortalApi;
    invoke-virtual {v1, v0}, Lnet/yostore/aws/api/ServicePortalApi;->requestServiceGateway(Lnet/yostore/aws/api/entity/RequestServiceGatewayRequest;)Lnet/yostore/aws/api/entity/RequestServiceGatewayResponse;

    move-result-object v2

    return-object v2
.end method
