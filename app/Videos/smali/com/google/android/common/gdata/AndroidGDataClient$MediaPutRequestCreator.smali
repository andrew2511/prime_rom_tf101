.class Lcom/google/android/common/gdata/AndroidGDataClient$MediaPutRequestCreator;
.super Ljava/lang/Object;
.source "AndroidGDataClient.java"

# interfaces
.implements Lcom/google/android/common/gdata/AndroidGDataClient$HttpRequestCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/gdata/AndroidGDataClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaPutRequestCreator"
.end annotation


# instance fields
.field private final mContentType:Ljava/lang/String;

.field private final mMediaInputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0
    .parameter "mediaInputStream"
    .parameter "contentType"

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/google/android/common/gdata/AndroidGDataClient$MediaPutRequestCreator;->mMediaInputStream:Ljava/io/InputStream;

    .line 106
    iput-object p2, p0, Lcom/google/android/common/gdata/AndroidGDataClient$MediaPutRequestCreator;->mContentType:Ljava/lang/String;

    .line 107
    return-void
.end method


# virtual methods
.method public createRequest(Ljava/net/URI;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 5
    .parameter "uri"

    .prologue
    .line 110
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 111
    .local v1, post:Lorg/apache/http/client/methods/HttpPost;
    const-string v2, "X-HTTP-Method-Override"

    const-string v3, "PUT"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance v0, Lorg/apache/http/entity/InputStreamEntity;

    iget-object v2, p0, Lcom/google/android/common/gdata/AndroidGDataClient$MediaPutRequestCreator;->mMediaInputStream:Ljava/io/InputStream;

    const-wide/16 v3, -0x1

    invoke-direct {v0, v2, v3, v4}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 115
    .local v0, entity:Lorg/apache/http/entity/InputStreamEntity;
    iget-object v2, p0, Lcom/google/android/common/gdata/AndroidGDataClient$MediaPutRequestCreator;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/apache/http/entity/InputStreamEntity;->setContentType(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 117
    return-object v1
.end method
