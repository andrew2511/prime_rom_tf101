.class public Lcom/google/android/youtube/videos/DrmRequestSigner;
.super Ljava/lang/Object;
.source "DrmRequestSigner.java"


# instance fields
.field private final deviceAuthorizer:Lcom/google/android/youtube/core/async/DeviceAuthorizer;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/DeviceAuthorizer;)V
    .locals 0
    .parameter "deviceAuthorizer"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/android/youtube/videos/DrmRequestSigner;->deviceAuthorizer:Lcom/google/android/youtube/core/async/DeviceAuthorizer;

    .line 25
    return-void
.end method


# virtual methods
.method public sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "videoId"
    .parameter "parameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "/feeds/api/videos/"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 35
    .local v2, uriToSign:Landroid/net/Uri;
    :try_start_0
    iget-object v3, p0, Lcom/google/android/youtube/videos/DrmRequestSigner;->deviceAuthorizer:Lcom/google/android/youtube/core/async/DeviceAuthorizer;

    invoke-virtual {v3, v2}, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->getHeaderValue(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, signData:Ljava/lang/String;
    const-string v3, "utf-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/16 v4, 0xb

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/android/youtube/core/async/DeviceAuthorizer$DeviceRegistrationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    return-object v3

    .line 38
    .end local v1           #signData:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 39
    .local v0, e:Lcom/google/android/youtube/core/async/DeviceAuthorizer$DeviceRegistrationException;
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/DeviceAuthorizer$DeviceRegistrationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 40
    .end local v0           #e:Lcom/google/android/youtube/core/async/DeviceAuthorizer$DeviceRegistrationException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 41
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
