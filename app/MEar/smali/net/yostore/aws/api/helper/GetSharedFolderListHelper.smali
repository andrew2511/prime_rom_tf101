.class public Lnet/yostore/aws/api/helper/GetSharedFolderListHelper;
.super Lnet/yostore/aws/api/helper/BaseHelper;
.source "GetSharedFolderListHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
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
    .line 21
    new-instance v1, Lnet/yostore/aws/api/entity/GetSharedFolderListRequest;

    .line 22
    iget-object v2, p1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    .line 23
    iget-object v3, p1, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    .line 21
    invoke-direct {v1, v2, v3}, Lnet/yostore/aws/api/entity/GetSharedFolderListRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .local v1, request:Lnet/yostore/aws/api/entity/GetSharedFolderListRequest;
    new-instance v0, Lnet/yostore/aws/api/InfoRelayApi;

    iget-object v2, p1, Lnet/yostore/aws/api/ApiConfig;->infoRelay:Ljava/lang/String;

    const-string v3, "https://approxy.asuswebstorage.com/api/"

    invoke-direct {v0, v2, v3}, Lnet/yostore/aws/api/InfoRelayApi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .local v0, ir:Lnet/yostore/aws/api/InfoRelayApi;
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/InfoRelayApi;->getSharedFolderList(Lnet/yostore/aws/api/entity/GetSharedFolderListRequest;)Lnet/yostore/aws/api/entity/GetSharedFolderListResponse;

    move-result-object v2

    return-object v2
.end method
