.class public Lcom/google/android/youtube/core/converter/http/StringResponseConverter;
.super Ljava/lang/Object;
.source "StringResponseConverter.java"

# interfaces
.implements Lcom/google/android/youtube/core/converter/ResponseConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/converter/ResponseConverter",
        "<",
        "Lorg/apache/http/HttpResponse;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readAll(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .parameter "stream"

    .prologue
    .line 33
    const/16 v5, 0x400

    new-array v0, v5, [C

    .line 34
    .local v0, buffer:[C
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .local v1, builder:Ljava/lang/StringBuilder;
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 40
    .local v4, reader:Ljava/io/Reader;
    :goto_0
    :try_start_0
    invoke-virtual {v4, v0}, Ljava/io/Reader;->read([C)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 44
    .local v3, len:I
    if-gez v3, :cond_0

    .line 49
    .end local v3           #len:I
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 41
    :catch_0
    move-exception v2

    .line 42
    .local v2, e:Ljava/io/IOException;
    goto :goto_1

    .line 47
    .end local v2           #e:Ljava/io/IOException;
    .restart local v3       #len:I
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0
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
    .line 20
    check-cast p1, Lorg/apache/http/HttpResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/converter/http/StringResponseConverter;->convertResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final convertResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 3
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/converter/ConverterException;
        }
    .end annotation

    .prologue
    .line 25
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 26
    .local v1, stream:Ljava/io/InputStream;
    invoke-static {v1}, Lcom/google/android/youtube/core/converter/http/StringResponseConverter;->readAll(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 27
    .end local v1           #stream:Ljava/io/InputStream;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 28
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Lcom/google/android/youtube/core/converter/ConverterException;

    invoke-direct {v2, v0}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
