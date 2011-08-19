.class public Lcom/google/android/youtube/videos/async/OfflineStreamsRequester;
.super Ljava/lang/Object;
.source "OfflineStreamsRequester.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Requester;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/videos/async/OfflineStreamsRequester$ServiceCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Requester",
        "<",
        "Lcom/google/android/youtube/core/async/GDataRequest;",
        "Lcom/google/android/youtube/core/model/VideoStreams;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/youtube/videos/async/OfflineStreamsRequester;->context:Landroid/content/Context;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/videos/async/OfflineStreamsRequester;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/youtube/videos/async/OfflineStreamsRequester;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public request(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 6
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/VideoStreams;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/VideoStreams;>;"
    const/4 v5, 0x1

    .line 53
    iget-object v2, p1, Lcom/google/android/youtube/core/async/GDataRequest;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 54
    .local v0, segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .line 55
    .local v1, videoId:Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_1

    .line 56
    new-instance v2, Lcom/google/android/youtube/core/player/MissingStreamException;

    invoke-direct {v2}, Lcom/google/android/youtube/core/player/MissingStreamException;-><init>()V

    invoke-interface {p2, p1, v2}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 63
    :goto_1
    return-void

    .line 54
    .end local v1           #videoId:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    move-object v1, v2

    goto :goto_0

    .line 59
    .restart local v1       #videoId:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/google/android/youtube/videos/async/OfflineStreamsRequester;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/youtube/videos/async/OfflineStreamsRequester;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/youtube/core/transfer/DownloadService;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    new-instance v4, Lcom/google/android/youtube/videos/async/OfflineStreamsRequester$ServiceCallback;

    invoke-direct {v4, p0, v1, p1, p2}, Lcom/google/android/youtube/videos/async/OfflineStreamsRequester$ServiceCallback;-><init>(Lcom/google/android/youtube/videos/async/OfflineStreamsRequester;Ljava/lang/String;Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_1
.end method

.method public bridge synthetic request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/async/OfflineStreamsRequester;->request(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Callback;)V

    return-void
.end method
