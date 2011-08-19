.class public Lcom/google/android/youtube/videos/converter/http/ChannelFormatsConverter;
.super Ljava/lang/Object;
.source "ChannelFormatsConverter.java"

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
        "Ljava/util/Collection",
        "<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final YOUTUBE_SERVER:Ljava/lang/String; = "www.youtube.com"


# instance fields
.field private final design:Ljava/lang/String;

.field private final manufacturer:Ljava/lang/String;

.field private final model:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "model"
    .parameter "manufacturer"
    .parameter "design"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/android/youtube/videos/converter/http/ChannelFormatsConverter;->model:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/google/android/youtube/videos/converter/http/ChannelFormatsConverter;->manufacturer:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/google/android/youtube/videos/converter/http/ChannelFormatsConverter;->design:Ljava/lang/String;

    .line 44
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
    .line 30
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/videos/converter/http/ChannelFormatsConverter;->convertRequest(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method

.method public convertRequest(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 3
    .parameter "channel"

    .prologue
    .line 47
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "https"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "www.youtube.com"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "api"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "license"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "dp"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "up"

    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 57
    .local v0, builder:Landroid/net/Uri$Builder;
    iget-object v1, p0, Lcom/google/android/youtube/videos/converter/http/ChannelFormatsConverter;->model:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/youtube/googlemobile/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    const-string v1, "md"

    iget-object v2, p0, Lcom/google/android/youtube/videos/converter/http/ChannelFormatsConverter;->model:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/google/android/youtube/videos/converter/http/ChannelFormatsConverter;->manufacturer:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/youtube/googlemobile/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 61
    const-string v1, "mk"

    iget-object v2, p0, Lcom/google/android/youtube/videos/converter/http/ChannelFormatsConverter;->manufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/google/android/youtube/videos/converter/http/ChannelFormatsConverter;->design:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/youtube/googlemobile/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 64
    const-string v1, "ds"

    iget-object v2, p0, Lcom/google/android/youtube/videos/converter/http/ChannelFormatsConverter;->design:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 67
    :cond_2
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    return-object v1
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
    .line 30
    check-cast p1, Lorg/apache/http/HttpResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/videos/converter/http/ChannelFormatsConverter;->convertResponse(Lorg/apache/http/HttpResponse;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public convertResponse(Lorg/apache/http/HttpResponse;)Ljava/util/Collection;
    .locals 13
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/converter/ConverterException;
        }
    .end annotation

    .prologue
    .line 71
    const/4 v6, 0x0

    .line 72
    .local v6, line:Ljava/lang/String;
    const/4 v7, 0x0

    .line 75
    .local v7, reader:Ljava/io/BufferedReader;
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 76
    .local v1, content:Ljava/io/InputStream;
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 77
    .end local v7           #reader:Ljava/io/BufferedReader;
    .local v8, reader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v6

    .line 82
    :try_start_2
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 88
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 89
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v11

    .line 96
    :goto_0
    return-object v11

    .line 83
    :catch_0
    move-exception v2

    .line 84
    .local v2, e:Ljava/io/IOException;
    new-instance v11, Lcom/google/android/youtube/core/converter/ConverterException;

    invoke-direct {v11, v2}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/Throwable;)V

    throw v11

    .line 78
    .end local v1           #content:Ljava/io/InputStream;
    .end local v2           #e:Ljava/io/IOException;
    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v11

    move-object v2, v11

    .line 79
    .restart local v2       #e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    new-instance v11, Lcom/google/android/youtube/core/converter/ConverterException;

    const-string v12, "error reading set of formats"

    invoke-direct {v11, v12, v2}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 81
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 82
    :goto_2
    :try_start_4
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 84
    throw v11

    .line 83
    :catch_2
    move-exception v2

    .line 84
    .restart local v2       #e:Ljava/io/IOException;
    new-instance v11, Lcom/google/android/youtube/core/converter/ConverterException;

    invoke-direct {v11, v2}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/Throwable;)V

    throw v11

    .line 91
    .end local v2           #e:Ljava/io/IOException;
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v1       #content:Ljava/io/InputStream;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    :cond_0
    const-string v11, ","

    invoke-virtual {v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, formatStrings:[Ljava/lang/String;
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 93
    .local v10, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_3
    if-ge v4, v5, :cond_1

    aget-object v9, v0, v4

    .line 94
    .local v9, s:Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .end local v9           #s:Ljava/lang/String;
    :cond_1
    move-object v11, v10

    .line 96
    goto :goto_0

    .line 81
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #formatStrings:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v10           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    :catchall_1
    move-exception v11

    move-object v7, v8

    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    goto :goto_2

    .line 78
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v8       #reader:Ljava/io/BufferedReader;
    :catch_3
    move-exception v11

    move-object v2, v11

    move-object v7, v8

    .end local v8           #reader:Ljava/io/BufferedReader;
    .restart local v7       #reader:Ljava/io/BufferedReader;
    goto :goto_1
.end method
