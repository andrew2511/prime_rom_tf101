.class public Lnet/yostore/aws/api/helper/FolderGetChangeSeqHelper;
.super Lnet/yostore/aws/api/helper/BaseHelper;
.source "FolderGetChangeSeqHelper.java"


# instance fields
.field private folderid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "folderid"

    .prologue
    .line 19
    invoke-direct {p0}, Lnet/yostore/aws/api/helper/BaseHelper;-><init>()V

    .line 20
    iput-object p1, p0, Lnet/yostore/aws/api/helper/FolderGetChangeSeqHelper;->folderid:Ljava/lang/String;

    .line 21
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
    .line 26
    new-instance v1, Lnet/yostore/aws/api/entity/GetChangeSeqRequest;

    .line 27
    iget-object v2, p1, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    .line 28
    iget-object v3, p0, Lnet/yostore/aws/api/helper/FolderGetChangeSeqHelper;->folderid:Ljava/lang/String;

    .line 26
    invoke-direct {v1, v2, v3}, Lnet/yostore/aws/api/entity/GetChangeSeqRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .local v1, request:Lnet/yostore/aws/api/entity/GetChangeSeqRequest;
    new-instance v0, Lnet/yostore/aws/api/InfoRelayApi;

    iget-object v2, p1, Lnet/yostore/aws/api/ApiConfig;->infoRelay:Ljava/lang/String;

    const-string v3, "https://approxy.asuswebstorage.com/api/"

    invoke-direct {v0, v2, v3}, Lnet/yostore/aws/api/InfoRelayApi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .local v0, ir:Lnet/yostore/aws/api/InfoRelayApi;
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/InfoRelayApi;->folderGetChangeSeq(Lnet/yostore/aws/api/entity/GetChangeSeqRequest;)Lnet/yostore/aws/api/entity/GetChangeSeqResponse;

    move-result-object v2

    return-object v2
.end method
