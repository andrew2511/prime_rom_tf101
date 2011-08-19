.class public Lnet/yostore/aws/api/helper/SelfActivationHelper;
.super Lnet/yostore/aws/api/helper/BaseHelper;
.source "SelfActivationHelper.java"


# static fields
.field private static final activateManufacture:[[Ljava/lang/String;


# instance fields
.field private language:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-array v0, v5, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "asus"

    aput-object v2, v1, v3

    const-string v2, "ep90"

    aput-object v2, v1, v4

    const-string v2, "asusep90test"

    aput-object v2, v1, v5

    aput-object v1, v0, v3

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "garmin-asus"

    aput-object v2, v1, v3

    const-string v2, "ASUSMobileHardCode001"

    aput-object v2, v1, v4

    const-string v2, "ASUSMobileHardCode001"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    sput-object v0, Lnet/yostore/aws/api/helper/SelfActivationHelper;->activateManufacture:[[Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "language"

    .prologue
    .line 22
    invoke-direct {p0}, Lnet/yostore/aws/api/helper/BaseHelper;-><init>()V

    .line 23
    iput-object p1, p0, Lnet/yostore/aws/api/helper/SelfActivationHelper;->language:Ljava/lang/String;

    .line 24
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
    const/4 v5, 0x1

    .line 31
    const/4 v0, 0x0

    .line 32
    .local v0, request:Lnet/yostore/aws/api/entity/SelfActivationRequest;
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lnet/yostore/aws/api/helper/SelfActivationHelper;->activateManufacture:[[Ljava/lang/String;

    aget-object v2, v2, v5

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    new-instance v0, Lnet/yostore/aws/api/entity/SelfActivationRequest;

    .end local v0           #request:Lnet/yostore/aws/api/entity/SelfActivationRequest;
    sget-object v1, Lnet/yostore/aws/api/entity/ApiCookies;->c_ClientType:Ljava/lang/String;

    sget-object v2, Lnet/yostore/aws/api/entity/ApiCookies;->v_ClientVersion:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v4, Lnet/yostore/aws/api/helper/SelfActivationHelper;->activateManufacture:[[Ljava/lang/String;

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aget-object v4, v4, v5

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v6, Lnet/yostore/aws/api/entity/ApiCookies;->macaddr:Ljava/lang/String;

    sget-object v7, Lnet/yostore/aws/api/entity/ApiCookies;->macaddr:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lnet/yostore/aws/api/entity/SelfActivationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .restart local v0       #request:Lnet/yostore/aws/api/entity/SelfActivationRequest;
    :goto_0
    new-instance v8, Lnet/yostore/aws/api/ServicePortalApi;

    const-string v1, "sp.yostore.net"

    const-string v2, "https://approxy.asuswebstorage.com/api/"

    invoke-direct {v8, v1, v2}, Lnet/yostore/aws/api/ServicePortalApi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .local v8, spl:Lnet/yostore/aws/api/ServicePortalApi;
    invoke-virtual {v8, v0}, Lnet/yostore/aws/api/ServicePortalApi;->selfActivation(Lnet/yostore/aws/api/entity/SelfActivationRequest;)Lnet/yostore/aws/api/entity/SelfActivationResponse;

    move-result-object v1

    return-object v1

    .line 35
    .end local v8           #spl:Lnet/yostore/aws/api/ServicePortalApi;
    :cond_0
    new-instance v0, Lnet/yostore/aws/api/entity/SelfActivationRequest;

    .end local v0           #request:Lnet/yostore/aws/api/entity/SelfActivationRequest;
    sget-object v1, Lnet/yostore/aws/api/entity/ApiCookies;->c_ClientType:Ljava/lang/String;

    sget-object v2, Lnet/yostore/aws/api/entity/ApiCookies;->v_ClientVersion:Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v6, Lnet/yostore/aws/api/entity/ApiCookies;->uuid:Ljava/lang/String;

    sget-object v7, Lnet/yostore/aws/api/entity/ApiCookies;->macaddr:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lnet/yostore/aws/api/entity/SelfActivationRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #request:Lnet/yostore/aws/api/entity/SelfActivationRequest;
    goto :goto_0
.end method
