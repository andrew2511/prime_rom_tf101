.class Lcom/google/android/youtube/core/converter/http/GzipResponseInterceptor$1;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "GzipResponseInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/converter/http/GzipResponseInterceptor;->process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/converter/http/GzipResponseInterceptor;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/GzipResponseInterceptor;Lorg/apache/http/HttpEntity;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/GzipResponseInterceptor$1;->this$0:Lcom/google/android/youtube/core/converter/http/GzipResponseInterceptor;

    invoke-direct {p0, p2}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v1, p0, Lcom/google/android/youtube/core/converter/http/GzipResponseInterceptor$1;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 40
    const-wide/16 v0, -0x1

    return-wide v0
.end method
