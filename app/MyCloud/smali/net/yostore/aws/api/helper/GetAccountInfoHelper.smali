.class public Lnet/yostore/aws/api/helper/GetAccountInfoHelper;
.super Lnet/yostore/aws/api/helper/BaseHelper;
.source "GetAccountInfoHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
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
    .line 19
    new-instance v0, Lnet/yostore/aws/api/entity/GetAccountInfoRequest;

    iget-object v2, p1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    iget-object v3, p1, Lnet/yostore/aws/api/ApiConfig;->password:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lnet/yostore/aws/api/entity/GetAccountInfoRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .local v0, request:Lnet/yostore/aws/api/entity/GetAccountInfoRequest;
    new-instance v1, Lnet/yostore/aws/api/ServiceGatewayApi;

    iget-object v2, p1, Lnet/yostore/aws/api/ApiConfig;->ServiceGateway:Ljava/lang/String;

    const-string v3, "https://approxy.asuswebstorage.com/api/"

    invoke-direct {v1, v2, v3}, Lnet/yostore/aws/api/ServiceGatewayApi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .local v1, sgw:Lnet/yostore/aws/api/ServiceGatewayApi;
    invoke-virtual {v1, v0}, Lnet/yostore/aws/api/ServiceGatewayApi;->getAccountInfo(Lnet/yostore/aws/api/entity/GetAccountInfoRequest;)Lnet/yostore/aws/api/entity/GetAccountInfoResponse;

    move-result-object v2

    return-object v2
.end method
