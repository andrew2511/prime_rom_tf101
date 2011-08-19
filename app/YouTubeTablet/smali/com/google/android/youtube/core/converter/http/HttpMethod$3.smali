.class final enum Lcom/google/android/youtube/core/converter/http/HttpMethod$3;
.super Lcom/google/android/youtube/core/converter/http/HttpMethod;
.source "HttpMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/converter/http/HttpMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/youtube/core/converter/http/HttpMethod;-><init>(Ljava/lang/String;ILcom/google/android/youtube/core/converter/http/HttpMethod$1;)V

    return-void
.end method


# virtual methods
.method public createHttpRequest(Landroid/net/Uri;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 2
    .parameter "uri"

    .prologue
    .line 35
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
