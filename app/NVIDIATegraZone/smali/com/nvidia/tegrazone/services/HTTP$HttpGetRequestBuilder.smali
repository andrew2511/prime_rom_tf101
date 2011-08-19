.class Lcom/nvidia/tegrazone/services/HTTP$HttpGetRequestBuilder;
.super Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;
.source "HTTP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nvidia/tegrazone/services/HTTP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HttpGetRequestBuilder"
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 556
    invoke-direct {p0, p1}, Lcom/nvidia/tegrazone/services/HTTP$HttpRequestBuilder;-><init>(Ljava/lang/String;)V

    .line 557
    return-void
.end method


# virtual methods
.method protected createRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 561
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p0, Lcom/nvidia/tegrazone/services/HTTP$HttpGetRequestBuilder;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
