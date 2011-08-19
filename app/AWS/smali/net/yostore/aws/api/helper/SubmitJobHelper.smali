.class public Lnet/yostore/aws/api/helper/SubmitJobHelper;
.super Lnet/yostore/aws/api/helper/BaseHelper;
.source "SubmitJobHelper.java"


# instance fields
.field private message:Ljava/lang/String;

.field private queue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "queue"
    .parameter "message"

    .prologue
    .line 20
    invoke-direct {p0}, Lnet/yostore/aws/api/helper/BaseHelper;-><init>()V

    .line 21
    iput-object p1, p0, Lnet/yostore/aws/api/helper/SubmitJobHelper;->queue:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lnet/yostore/aws/api/helper/SubmitJobHelper;->message:Ljava/lang/String;

    .line 23
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
    .line 28
    new-instance v1, Lnet/yostore/aws/api/entity/SubmitJobRequest;

    iget-object v2, p0, Lnet/yostore/aws/api/helper/SubmitJobHelper;->queue:Ljava/lang/String;

    iget-object v3, p0, Lnet/yostore/aws/api/helper/SubmitJobHelper;->message:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lnet/yostore/aws/api/entity/SubmitJobRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .local v1, request:Lnet/yostore/aws/api/entity/SubmitJobRequest;
    new-instance v0, Lnet/yostore/aws/api/JobRelayApi;

    iget-object v2, p1, Lnet/yostore/aws/api/ApiConfig;->jobRelay:Ljava/lang/String;

    const-string v3, "https://approxy.asuswebstorage.com/api/"

    invoke-direct {v0, v2, v3}, Lnet/yostore/aws/api/JobRelayApi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .local v0, jr:Lnet/yostore/aws/api/JobRelayApi;
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/JobRelayApi;->submitJob(Lnet/yostore/aws/api/entity/SubmitJobRequest;)Lnet/yostore/aws/api/entity/SubmitJobResponse;

    move-result-object v2

    return-object v2
.end method
