.class public Lnet/yostore/aws/api/helper/GetServerTimeHelper;
.super Lnet/yostore/aws/api/helper/BaseHelper;
.source "GetServerTimeHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lnet/yostore/aws/api/helper/BaseHelper;-><init>()V

    .line 17
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
    .line 21
    new-instance v0, Lnet/yostore/aws/api/entity/GetServerTimeRequest;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/GetServerTimeRequest;-><init>()V

    .line 22
    .local v0, request:Lnet/yostore/aws/api/entity/GetServerTimeRequest;
    new-instance v1, Lnet/yostore/aws/api/ServicePortalApi;

    const-string v2, "approxy"

    const-string v3, "https://approxy.asuswebstorage.com/api/"

    invoke-direct {v1, v2, v3}, Lnet/yostore/aws/api/ServicePortalApi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .local v1, spl:Lnet/yostore/aws/api/ServicePortalApi;
    invoke-virtual {v1, v0}, Lnet/yostore/aws/api/ServicePortalApi;->getServerTime(Lnet/yostore/aws/api/entity/GetServerTimeRequest;)Lnet/yostore/aws/api/entity/GetServerTimeResponse;

    move-result-object v2

    return-object v2
.end method
