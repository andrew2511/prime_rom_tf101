.class public Lnet/yostore/aws/api/JobRelayApi;
.super Lnet/yostore/aws/api/BaseApi;
.source "JobRelayApi.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "JobRelayApi"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "Url"
    .parameter "proxy"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lnet/yostore/aws/api/BaseApi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method


# virtual methods
.method public submitJob(Lnet/yostore/aws/api/entity/SubmitJobRequest;)Lnet/yostore/aws/api/entity/SubmitJobResponse;
    .locals 3
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/SubmitJobRequest;->toXml()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, params:Ljava/lang/String;
    const-string v1, "JobRelayApi"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/jobrelay/submitjob/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnet/yostore/aws/api/sax/SubmitJob;

    invoke-direct {v2}, Lnet/yostore/aws/api/sax/SubmitJob;-><init>()V

    invoke-super {p0, v1, v2}, Lnet/yostore/aws/api/BaseApi;->getResponse(Ljava/lang/String;Lnet/yostore/aws/api/sax/BaseSaxHandler;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object p0

    .end local p0
    check-cast p0, Lnet/yostore/aws/api/entity/SubmitJobResponse;

    return-object p0
.end method
