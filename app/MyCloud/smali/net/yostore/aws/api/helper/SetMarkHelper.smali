.class public Lnet/yostore/aws/api/helper/SetMarkHelper;
.super Lnet/yostore/aws/api/helper/BaseHelper;
.source "SetMarkHelper.java"


# instance fields
.field private fid:Ljava/lang/String;

.field private isFolder:Z

.field private star:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .parameter "fid"
    .parameter "isFolder"
    .parameter "mark"

    .prologue
    .line 20
    invoke-direct {p0}, Lnet/yostore/aws/api/helper/BaseHelper;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/yostore/aws/api/helper/SetMarkHelper;->isFolder:Z

    .line 21
    iput-object p1, p0, Lnet/yostore/aws/api/helper/SetMarkHelper;->fid:Ljava/lang/String;

    .line 22
    iput-boolean p2, p0, Lnet/yostore/aws/api/helper/SetMarkHelper;->isFolder:Z

    .line 23
    iput-object p3, p0, Lnet/yostore/aws/api/helper/SetMarkHelper;->star:Ljava/lang/String;

    .line 24
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
    .line 29
    new-instance v1, Lnet/yostore/aws/api/entity/SetMarkRequest;

    .line 30
    iget-object v2, p1, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    .line 31
    iget-object v3, p0, Lnet/yostore/aws/api/helper/SetMarkHelper;->fid:Ljava/lang/String;

    .line 32
    iget-boolean v4, p0, Lnet/yostore/aws/api/helper/SetMarkHelper;->isFolder:Z

    .line 33
    iget-object v5, p0, Lnet/yostore/aws/api/helper/SetMarkHelper;->star:Ljava/lang/String;

    .line 29
    invoke-direct {v1, v2, v3, v4, v5}, Lnet/yostore/aws/api/entity/SetMarkRequest;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 36
    .local v1, request:Lnet/yostore/aws/api/entity/SetMarkRequest;
    new-instance v0, Lnet/yostore/aws/api/InfoRelayApi;

    iget-object v2, p1, Lnet/yostore/aws/api/ApiConfig;->infoRelay:Ljava/lang/String;

    const-string v3, "https://approxy.asuswebstorage.com/api/"

    invoke-direct {v0, v2, v3}, Lnet/yostore/aws/api/InfoRelayApi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .local v0, ir:Lnet/yostore/aws/api/InfoRelayApi;
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/InfoRelayApi;->setMark(Lnet/yostore/aws/api/entity/SetMarkRequest;)Lnet/yostore/aws/api/entity/SetMarkResponse;

    move-result-object v2

    return-object v2
.end method
