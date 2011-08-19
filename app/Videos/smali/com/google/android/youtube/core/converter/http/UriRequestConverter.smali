.class public Lcom/google/android/youtube/core/converter/http/UriRequestConverter;
.super Ljava/lang/Object;
.source "UriRequestConverter.java"

# interfaces
.implements Lcom/google/android/youtube/core/converter/RequestConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/converter/RequestConverter",
        "<",
        "Landroid/net/Uri;",
        "Lorg/apache/http/client/methods/HttpUriRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private final method:Lcom/google/android/youtube/core/converter/http/HttpMethod;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/converter/http/HttpMethod;)V
    .locals 1
    .parameter "method"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "method can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/converter/http/HttpMethod;

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/UriRequestConverter;->method:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    .line 21
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
    .line 15
    check-cast p1, Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/converter/http/UriRequestConverter;->convertRequest(Landroid/net/Uri;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method

.method public convertRequest(Landroid/net/Uri;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 1
    .parameter "uri"

    .prologue
    .line 24
    const-string v0, "the uri can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/http/UriRequestConverter;->method:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/converter/http/HttpMethod;->createHttpRequest(Landroid/net/Uri;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method
