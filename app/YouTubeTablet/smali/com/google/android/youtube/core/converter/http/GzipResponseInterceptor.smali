.class public Lcom/google/android/youtube/core/converter/http/GzipResponseInterceptor;
.super Ljava/lang/Object;
.source "GzipResponseInterceptor.java"

# interfaces
.implements Lorg/apache/http/HttpResponseInterceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 4
    .parameter "response"
    .parameter "context"

    .prologue
    .line 24
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 25
    .local v1, entity:Lorg/apache/http/HttpEntity;
    if-nez v1, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    .line 29
    .local v0, contentEncoding:Lorg/apache/http/Header;
    if-eqz v0, :cond_0

    const-string v2, "gzip"

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    new-instance v2, Lcom/google/android/youtube/core/converter/http/GzipResponseInterceptor$1;

    invoke-direct {v2, p0, v1}, Lcom/google/android/youtube/core/converter/http/GzipResponseInterceptor$1;-><init>(Lcom/google/android/youtube/core/converter/http/GzipResponseInterceptor;Lorg/apache/http/HttpEntity;)V

    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_0
.end method
