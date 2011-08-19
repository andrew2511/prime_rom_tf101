.class public Lcom/google/android/youtube/core/converter/http/AdTagConverter;
.super Ljava/lang/Object;
.source "AdTagConverter.java"

# interfaces
.implements Lcom/google/android/youtube/core/converter/RequestConverter;
.implements Lcom/google/android/youtube/core/converter/ResponseConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/converter/RequestConverter",
        "<",
        "Ljava/lang/String;",
        "Lorg/apache/http/client/methods/HttpUriRequest;",
        ">;",
        "Lcom/google/android/youtube/core/converter/ResponseConverter",
        "<",
        "Lorg/apache/http/HttpResponse;",
        "Lcom/google/android/youtube/core/model/AdTag;",
        ">;"
    }
.end annotation


# instance fields
.field private final countryCode:Ljava/lang/String;

.field private final revShareClientId:Ljava/lang/String;

.field private final usernameGetter:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "revShareClientId"
    .parameter "countryCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, usernameGetter:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/AdTagConverter;->usernameGetter:Ljava/util/concurrent/atomic/AtomicReference;

    .line 38
    iput-object p2, p0, Lcom/google/android/youtube/core/converter/http/AdTagConverter;->revShareClientId:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/google/android/youtube/core/converter/http/AdTagConverter;->countryCode:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public bridge synthetic convertRequest(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/converter/ConverterException;
        }
    .end annotation

    .prologue
    .line 26
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/converter/http/AdTagConverter;->convertRequest(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method

.method public convertRequest(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 5
    .parameter "videoId"

    .prologue
    .line 43
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    iget-object v1, p0, Lcom/google/android/youtube/core/converter/http/AdTagConverter;->usernameGetter:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 45
    .local v0, username:Ljava/lang/String;
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://www.youtube.com/get_ad_tags?action_pre=1&v="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&ps=android"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&clientid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/core/converter/http/AdTagConverter;->revShareClientId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&iso_country="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/core/converter/http/AdTagConverter;->countryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&username="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_0
    const-string v3, ""

    goto :goto_0
.end method

.method public convertResponse(Lorg/apache/http/HttpResponse;)Lcom/google/android/youtube/core/model/AdTag;
    .locals 7
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/converter/ConverterException;
        }
    .end annotation

    .prologue
    .line 55
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 56
    .local v0, content:Ljava/io/InputStream;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 57
    .local v3, reader:Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 58
    .local v1, delay:I
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, uriString:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 61
    if-eqz v4, :cond_0

    .line 62
    new-instance v5, Lcom/google/android/youtube/core/model/AdTag;

    invoke-static {v4}, Lcom/google/android/youtube/core/utils/Util;->uriEncode(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Lcom/google/android/youtube/core/model/AdTag;-><init>(ILandroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 66
    :goto_0
    return-object v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 68
    .end local v0           #content:Ljava/io/InputStream;
    .end local v1           #delay:I
    .end local v3           #reader:Ljava/io/BufferedReader;
    .end local v4           #uriString:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 69
    .local v2, e:Ljava/lang/NumberFormatException;
    new-instance v5, Lcom/google/android/youtube/core/converter/ConverterException;

    const-string v6, "error converting ad tag response, invalid delay"

    invoke-direct {v5, v6, v2}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 70
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v5

    move-object v2, v5

    .line 71
    .local v2, e:Ljava/lang/Exception;
    new-instance v5, Lcom/google/android/youtube/core/converter/ConverterException;

    const-string v6, "error converting ad tag response"

    invoke-direct {v5, v6, v2}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public bridge synthetic convertResponse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/converter/ConverterException;
        }
    .end annotation

    .prologue
    .line 26
    check-cast p1, Lorg/apache/http/HttpResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/converter/http/AdTagConverter;->convertResponse(Lorg/apache/http/HttpResponse;)Lcom/google/android/youtube/core/model/AdTag;

    move-result-object v0

    return-object v0
.end method
