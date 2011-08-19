.class Lcom/google/android/music/sync/api/MusicApiClientImpl$GetRequestCreator;
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
    name = "GetRequestCreator"
.end annotation


# instance fields
.field private mEtag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "etag"

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl$GetRequestCreator;->mEtag:Ljava/lang/String;

    .line 118
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/music/sync/api/MusicApiClientImpl$GetRequestCreator;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl$GetRequestCreator;->mEtag:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public createRequest(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 3
    .parameter "uri"

    .prologue
    .line 121
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, get:Lorg/apache/http/client/methods/HttpGet;
    const-string v1, "Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl$GetRequestCreator;->mEtag:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    const-string v1, "If-None-Match"

    iget-object v2, p0, Lcom/google/android/music/sync/api/MusicApiClientImpl$GetRequestCreator;->mEtag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_0
    return-object v0
.end method
