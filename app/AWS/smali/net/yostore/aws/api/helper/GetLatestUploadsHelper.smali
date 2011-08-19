.class public Lnet/yostore/aws/api/helper/GetLatestUploadsHelper;
.super Lnet/yostore/aws/api/helper/BaseHelper;
.source "GetLatestUploadsHelper.java"


# instance fields
.field sortdirection:I

.field targetroot:Ljava/lang/String;

.field top:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .parameter "top"
    .parameter "targetroot"
    .parameter "sortdirection"

    .prologue
    .line 19
    invoke-direct {p0}, Lnet/yostore/aws/api/helper/BaseHelper;-><init>()V

    .line 20
    iput p1, p0, Lnet/yostore/aws/api/helper/GetLatestUploadsHelper;->top:I

    .line 21
    iput-object p2, p0, Lnet/yostore/aws/api/helper/GetLatestUploadsHelper;->targetroot:Ljava/lang/String;

    .line 22
    iput p3, p0, Lnet/yostore/aws/api/helper/GetLatestUploadsHelper;->sortdirection:I

    .line 23
    return-void
.end method


# virtual methods
.method protected doApi(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;
    .locals 7
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
    .line 28
    new-instance v0, Lnet/yostore/aws/api/entity/GetLatestUploadsRequest;

    .line 29
    iget-object v1, p1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    .line 30
    iget-object v2, p1, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    .line 31
    iget v3, p0, Lnet/yostore/aws/api/helper/GetLatestUploadsHelper;->top:I

    .line 32
    iget-object v4, p0, Lnet/yostore/aws/api/helper/GetLatestUploadsHelper;->targetroot:Ljava/lang/String;

    .line 33
    iget v5, p0, Lnet/yostore/aws/api/helper/GetLatestUploadsHelper;->sortdirection:I

    .line 28
    invoke-direct/range {v0 .. v5}, Lnet/yostore/aws/api/entity/GetLatestUploadsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 36
    .local v0, request:Lnet/yostore/aws/api/entity/GetLatestUploadsRequest;
    new-instance v6, Lnet/yostore/aws/api/InfoRelayApi;

    iget-object v1, p1, Lnet/yostore/aws/api/ApiConfig;->infoRelay:Ljava/lang/String;

    const-string v2, "https://approxy.asuswebstorage.com/api/"

    invoke-direct {v6, v1, v2}, Lnet/yostore/aws/api/InfoRelayApi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .local v6, ir:Lnet/yostore/aws/api/InfoRelayApi;
    invoke-virtual {v6, v0}, Lnet/yostore/aws/api/InfoRelayApi;->getLatestUploads(Lnet/yostore/aws/api/entity/GetLatestUploadsRequest;)Lnet/yostore/aws/api/entity/GetLatestUploadsResponse;

    move-result-object v1

    return-object v1
.end method
