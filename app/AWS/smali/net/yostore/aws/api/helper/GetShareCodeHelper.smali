.class public Lnet/yostore/aws/api/helper/GetShareCodeHelper;
.super Lnet/yostore/aws/api/helper/BaseHelper;
.source "GetShareCodeHelper.java"


# instance fields
.field private entryid:Ljava/lang/String;

.field private entrytype:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "entrytype"
    .parameter "entryid"

    .prologue
    .line 19
    invoke-direct {p0}, Lnet/yostore/aws/api/helper/BaseHelper;-><init>()V

    .line 20
    iput-object p1, p0, Lnet/yostore/aws/api/helper/GetShareCodeHelper;->entrytype:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lnet/yostore/aws/api/helper/GetShareCodeHelper;->entryid:Ljava/lang/String;

    .line 22
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
    .line 27
    new-instance v0, Lnet/yostore/aws/api/entity/GetShareCodeRequest;

    .line 28
    iget-object v1, p1, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    .line 29
    iget-object v2, p1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    .line 30
    iget-object v3, p0, Lnet/yostore/aws/api/helper/GetShareCodeHelper;->entrytype:Ljava/lang/String;

    .line 31
    iget-object v4, p0, Lnet/yostore/aws/api/helper/GetShareCodeHelper;->entryid:Ljava/lang/String;

    .line 32
    const/4 v5, 0x0

    .line 33
    const-string v6, "0"

    .line 27
    invoke-direct/range {v0 .. v6}, Lnet/yostore/aws/api/entity/GetShareCodeRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .local v0, request:Lnet/yostore/aws/api/entity/GetShareCodeRequest;
    new-instance v7, Lnet/yostore/aws/api/InfoRelayApi;

    iget-object v1, p1, Lnet/yostore/aws/api/ApiConfig;->infoRelay:Ljava/lang/String;

    const-string v2, "https://approxy.asuswebstorage.com/api/"

    invoke-direct {v7, v1, v2}, Lnet/yostore/aws/api/InfoRelayApi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .local v7, ir:Lnet/yostore/aws/api/InfoRelayApi;
    invoke-virtual {v7, v0}, Lnet/yostore/aws/api/InfoRelayApi;->getShareCode(Lnet/yostore/aws/api/entity/GetShareCodeRequest;)Lnet/yostore/aws/api/entity/GetShareCodeResponse;

    move-result-object v1

    return-object v1
.end method
