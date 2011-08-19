.class public Lnet/yostore/aws/api/helper/RegisterHelper;
.super Lnet/yostore/aws/api/helper/BaseHelper;
.source "RegisterHelper.java"


# instance fields
.field private email:Ljava/lang/String;

.field private language:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "email"
    .parameter "language"

    .prologue
    .line 19
    invoke-direct {p0}, Lnet/yostore/aws/api/helper/BaseHelper;-><init>()V

    .line 20
    iput-object p1, p0, Lnet/yostore/aws/api/helper/RegisterHelper;->email:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lnet/yostore/aws/api/helper/RegisterHelper;->language:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method protected doApi(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;
    .locals 6
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
    .line 27
    new-instance v0, Lnet/yostore/aws/api/entity/RegisterRequest;

    iget-object v2, p1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    iget-object v3, p1, Lnet/yostore/aws/api/ApiConfig;->password:Ljava/lang/String;

    iget-object v4, p0, Lnet/yostore/aws/api/helper/RegisterHelper;->email:Ljava/lang/String;

    iget-object v5, p0, Lnet/yostore/aws/api/helper/RegisterHelper;->language:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4, v5}, Lnet/yostore/aws/api/entity/RegisterRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .local v0, request:Lnet/yostore/aws/api/entity/RegisterRequest;
    new-instance v1, Lnet/yostore/aws/api/ServicePortalApi;

    const-string v2, "sp.yostore.net"

    const-string v3, "https://approxy.asuswebstorage.com/api/"

    invoke-direct {v1, v2, v3}, Lnet/yostore/aws/api/ServicePortalApi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .local v1, spl:Lnet/yostore/aws/api/ServicePortalApi;
    invoke-virtual {v1, v0}, Lnet/yostore/aws/api/ServicePortalApi;->register(Lnet/yostore/aws/api/entity/RegisterRequest;)Lnet/yostore/aws/api/entity/RegisterResponse;

    move-result-object v2

    return-object v2
.end method
