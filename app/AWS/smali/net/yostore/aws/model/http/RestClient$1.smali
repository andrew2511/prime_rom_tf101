.class Lnet/yostore/aws/model/http/RestClient$1;
.super Lnet/yostore/aws/model/http/MultipartEntityMonitored;
.source "RestClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/model/http/RestClient;->CallFunction(Lnet/yostore/aws/api/ApiConfig;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)Lnet/yostore/aws/api/entity/ApiResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;)V
    .locals 0
    .parameter "$anonymous0"
    .parameter "$anonymous1"
    .parameter

    .prologue
    .line 1
    iput-object p3, p0, Lnet/yostore/aws/model/http/RestClient$1;->val$httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 221
    invoke-direct {p0, p1, p2}, Lnet/yostore/aws/model/http/MultipartEntityMonitored;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected cancelUpload()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/yostore/aws/api/exception/HttpException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-super {p0}, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->cancelUpload()V

    .line 228
    iget-object v0, p0, Lnet/yostore/aws/model/http/RestClient$1;->val$httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 229
    new-instance v0, Lnet/yostore/aws/api/exception/HttpException;

    const-string v1, "-2"

    invoke-direct {v0, v1}, Lnet/yostore/aws/api/exception/HttpException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
