.class public Lnet/yostore/aws/api/helper/SelfActivationHelper;
.super Lnet/yostore/aws/api/helper/BaseHelper;
.source "SelfActivationHelper.java"


# instance fields
.field private language:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "language"

    .prologue
    .line 20
    invoke-direct {p0}, Lnet/yostore/aws/api/helper/BaseHelper;-><init>()V

    .line 21
    iput-object p1, p0, Lnet/yostore/aws/api/helper/SelfActivationHelper;->language:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method protected doApi(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;
    .locals 9
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
    .line 26
    new-instance v0, Lnet/yostore/aws/api/entity/SelfActivationRequest;

    const-string v1, "0"

    const-string v2, "2.0."

    invoke-static {}, Lcom/ecareme/mear/Mear;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/ecareme/mear/Mear;->getProductname()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/ecareme/mear/Mear;->getMachineid()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/ecareme/mear/Mear;->getUuid()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/ecareme/mear/Mear;->getMac()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lnet/yostore/aws/api/entity/SelfActivationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .local v0, request:Lnet/yostore/aws/api/entity/SelfActivationRequest;
    new-instance v8, Lnet/yostore/aws/api/ServicePortalApi;

    const-string v1, "sp.yostore.net"

    const-string v2, "https://approxy.asuswebstorage.com/api/"

    invoke-direct {v8, v1, v2}, Lnet/yostore/aws/api/ServicePortalApi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .local v8, spl:Lnet/yostore/aws/api/ServicePortalApi;
    invoke-virtual {v8, v0}, Lnet/yostore/aws/api/ServicePortalApi;->selfActivation(Lnet/yostore/aws/api/entity/SelfActivationRequest;)Lnet/yostore/aws/api/entity/SelfActivationResponse;

    move-result-object v1

    return-object v1
.end method
