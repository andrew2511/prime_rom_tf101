.class Lcom/google/android/music/sync/api/MusicApiClientImpl$DeleteRequestCreator;
.super Ljava/lang/Object;
.source "MusicApiClientImpl.java"

# interfaces
.implements Lcom/google/android/music/sync/api/MusicApiClientImpl$HttpRequestCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/sync/api/MusicApiClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeleteRequestCreator"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    return-void
.end method


# virtual methods
.method public createRequest(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 3
    .parameter "uri"

    .prologue
    .line 167
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 168
    .local v0, post:Lorg/apache/http/client/methods/HttpPost;
    const-string v1, "Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v1, "X-HTTP-Method-Override"

    const-string v2, "DELETE"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-object v0
.end method
