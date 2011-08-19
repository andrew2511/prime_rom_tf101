.class Lcom/google/android/music/sync/api/MusicApiClientImpl$PutRequestCreator;
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
    name = "PutRequestCreator"
.end annotation


# instance fields
.field private final mEntity:Lorg/apache/http/HttpEntity;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;)V
    .locals 0
    .parameter "entity"

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl$PutRequestCreator;->mEntity:Lorg/apache/http/HttpEntity;

    .line 150
    return-void
.end method


# virtual methods
.method public createRequest(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 3
    .parameter "uri"

    .prologue
    .line 153
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 154
    .local v0, post:Lorg/apache/http/client/methods/HttpPost;
    const-string v1, "Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v1, "X-HTTP-Method-Override"

    const-string v2, "PUT"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl$PutRequestCreator;->mEntity:Lorg/apache/http/HttpEntity;

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 158
    return-object v0
.end method
