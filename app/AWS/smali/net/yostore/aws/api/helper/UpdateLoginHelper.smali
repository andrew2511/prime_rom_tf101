.class public Lnet/yostore/aws/api/helper/UpdateLoginHelper;
.super Lnet/yostore/aws/api/helper/BaseHelper;
.source "UpdateLoginHelper.java"


# instance fields
.field private email:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private pwd:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uid"
    .parameter "pwd"
    .parameter "email"
    .parameter "language"

    .prologue
    .line 21
    invoke-direct {p0}, Lnet/yostore/aws/api/helper/BaseHelper;-><init>()V

    .line 22
    iput-object p1, p0, Lnet/yostore/aws/api/helper/UpdateLoginHelper;->uid:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lnet/yostore/aws/api/helper/UpdateLoginHelper;->pwd:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lnet/yostore/aws/api/helper/UpdateLoginHelper;->email:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lnet/yostore/aws/api/helper/UpdateLoginHelper;->language:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method protected doApi(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;
    .locals 8
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
    .line 30
    new-instance v0, Lnet/yostore/aws/api/entity/UpdateLoginRequest;

    .line 31
    iget-object v1, p1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    iget-object v2, p1, Lnet/yostore/aws/api/ApiConfig;->password:Ljava/lang/String;

    iget-object v3, p0, Lnet/yostore/aws/api/helper/UpdateLoginHelper;->uid:Ljava/lang/String;

    iget-object v4, p0, Lnet/yostore/aws/api/helper/UpdateLoginHelper;->pwd:Ljava/lang/String;

    iget-object v5, p0, Lnet/yostore/aws/api/helper/UpdateLoginHelper;->email:Ljava/lang/String;

    iget-object v6, p0, Lnet/yostore/aws/api/helper/UpdateLoginHelper;->language:Ljava/lang/String;

    .line 30
    invoke-direct/range {v0 .. v6}, Lnet/yostore/aws/api/entity/UpdateLoginRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .local v0, request:Lnet/yostore/aws/api/entity/UpdateLoginRequest;
    new-instance v7, Lnet/yostore/aws/api/ServicePortalApi;

    const-string v1, "sp.yostore.net"

    const-string v2, "https://approxy.asuswebstorage.com/api/"

    invoke-direct {v7, v1, v2}, Lnet/yostore/aws/api/ServicePortalApi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .local v7, spl:Lnet/yostore/aws/api/ServicePortalApi;
    invoke-virtual {v7, v0}, Lnet/yostore/aws/api/ServicePortalApi;->updateLogin(Lnet/yostore/aws/api/entity/UpdateLoginRequest;)Lnet/yostore/aws/api/entity/UpdateLoginResponse;

    move-result-object v1

    return-object v1
.end method
