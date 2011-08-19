.class public final Lcom/google/android/youtube/core/converter/http/HttpToBytesResponseConverter;
.super Ljava/lang/Object;
.source "HttpToBytesResponseConverter.java"

# interfaces
.implements Lcom/google/android/youtube/core/converter/ResponseConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/converter/ResponseConverter",
        "<",
        "Lorg/apache/http/HttpResponse;",
        "[B>;"
    }
.end annotation


# instance fields
.field private final DEFAULT_STREAM_SIZE:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/16 v0, 0x4000

    iput v0, p0, Lcom/google/android/youtube/core/converter/http/HttpToBytesResponseConverter;->DEFAULT_STREAM_SIZE:I

    return-void
.end method


# virtual methods
.method public bridge synthetic convertResponse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/converter/ConverterException;
        }
    .end annotation

    .prologue
    .line 17
    check-cast p1, Lorg/apache/http/HttpResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/converter/http/HttpToBytesResponseConverter;->convertResponse(Lorg/apache/http/HttpResponse;)[B

    move-result-object v0

    return-object v0
.end method

.method public convertResponse(Lorg/apache/http/HttpResponse;)[B
    .locals 7
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/converter/ConverterException;
        }
    .end annotation

    .prologue
    .line 23
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 24
    .local v3, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v5

    long-to-int v4, v5

    .line 25
    .local v4, length:I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    if-lez v4, :cond_0

    move v5, v4

    :goto_0
    invoke-direct {v0, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 27
    .local v0, buffer:Ljava/io/ByteArrayOutputStream;
    invoke-interface {v3, v0}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 28
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 29
    .local v1, bytes:[B
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    return-object v1

    .line 25
    .end local v0           #buffer:Ljava/io/ByteArrayOutputStream;
    .end local v1           #bytes:[B
    :cond_0
    const/16 v5, 0x4000

    goto :goto_0

    .line 31
    .end local v3           #entity:Lorg/apache/http/HttpEntity;
    .end local v4           #length:I
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 32
    .local v2, e:Ljava/io/IOException;
    new-instance v5, Lcom/google/android/youtube/core/converter/ConverterException;

    invoke-direct {v5, v2}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method
