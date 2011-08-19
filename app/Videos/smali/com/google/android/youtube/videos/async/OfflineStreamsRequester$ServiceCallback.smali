.class final Lcom/google/android/youtube/videos/async/OfflineStreamsRequester$ServiceCallback;
.super Ljava/lang/Object;
.source "OfflineStreamsRequester.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/google/android/youtube/core/transfer/TransferService$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/async/OfflineStreamsRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceCallback"
.end annotation


# instance fields
.field private final callback:Lcom/google/android/youtube/core/async/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/VideoStreams;",
            ">;"
        }
    .end annotation
.end field

.field private download:Lcom/google/android/youtube/core/transfer/Transfer;

.field private downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

.field private final request:Lcom/google/android/youtube/core/async/GDataRequest;

.field final synthetic this$0:Lcom/google/android/youtube/videos/async/OfflineStreamsRequester;

.field private final videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/videos/async/OfflineStreamsRequester;Ljava/lang/String;Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 1
    .parameter
    .parameter "videoId"
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/VideoStreams;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p4, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/VideoStreams;>;"
    iput-object p1, p0, Lcom/google/android/youtube/videos/async/OfflineStreamsRequester$ServiceCallback;->this$0:Lcom/google/android/youtube/videos/async/OfflineStreamsRequester;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/videos/async/OfflineStreamsRequester$ServiceCallback;->videoId:Ljava/lang/String;

    .line 79
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/GDataRequest;

    iput-object v0, p0, Lcom/google/android/youtube/videos/async/OfflineStreamsRequester$ServiceCallback;->request:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 80
    invoke-static {p4}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Callback;

    iput-object v0, p0, Lcom/google/android/youtube/videos/async/OfflineStreamsRequester$ServiceCallback;->callback:Lcom/google/android/youtube/core/async/Callback;

    .line 81
    return-void
.end method


# virtual methods
.method public onProgress(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .locals 0
    .parameter "download"

    .prologue
    .line 123
    return-void
.end method

.method public onRemoved(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .locals 0
    .parameter "download"

    .prologue
    .line 127
    return-void
.end method

.method public onRestored()V
    .locals 11

    .prologue
    .line 89
    iget-object v4, p0, Lcom/google/android/youtube/videos/async/OfflineStreamsRequester$ServiceCallback;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    invoke-virtual {v4}, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->getSnapshot()Ljava/util/Map;

    move-result-object v2

    .line 90
    .local v2, snapshot:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/youtube/core/transfer/Transfer;>;"
    iget-object v4, p0, Lcom/google/android/youtube/videos/async/OfflineStreamsRequester$ServiceCallback;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    invoke-virtual {v4, p0}, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->removeTransferListener(Lcom/google/android/youtube/core/transfer/TransferService$Listener;)Z

    .line 91
    iget-object v4, p0, Lcom/google/android/youtube/videos/async/OfflineStreamsRequester$ServiceCallback;->this$0:Lcom/google/android/youtube/videos/async/OfflineStreamsRequester;

    invoke-static {v4}, Lcom/google/android/youtube/videos/async/OfflineStreamsRequester;->access$000(Lcom/google/android/youtube/videos/async/OfflineStreamsRequester;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 93
    iget-object v4, p0, Lcom/google/android/youtube/videos/async/OfflineStreamsRequester$ServiceCallback;->request:Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v3, v4, Lcom/google/android/youtube/core/async/GDataRequest;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    .line 94
    .local v3, userAuth:Lcom/google/android/youtube/core/model/UserAuth;
    iget-object v4, p0, Lcom/google/android/youtube/videos/async/OfflineStreamsRequester$ServiceCallback;->this$0:Lcom/google/android/youtube/videos/async/OfflineStreamsRequester;

    invoke-static {v4}, Lcom/google/android/youtube/videos/async/OfflineStreamsRequester;->access$000(Lcom/google/android/youtube/videos/async/OfflineStreamsRequester;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, v3, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/youtube/videos/async/OfflineStreamsRequester$ServiceCallback;->videoId:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/google/android/youtube/videos/utils/OfflineUtil;->getPathForVideoId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/youtube/core/transfer/Transfer;

    iput-object v4, p0, Lcom/google/android/youtube/videos/async/OfflineStreamsRequester$ServiceCallback;->download:Lcom/google/android/youtube/core/transfer/Transfer;

    .line 95
    iget-object v4, p0, Lcom/google/android/youtube/videos/async/OfflineStreamsRequester$ServiceCallback;->download:Lcom/google/android/youtube/core/transfer/Transfer;

    if-eqz v4, :cond_2

    .line 96
    iget-object v4, p0, Lcom/google/android/youtube/videos/async/OfflineStreamsRequester$ServiceCallback;->download:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-wide v4, v4, Lcom/google/android/youtube/core/transfer/Transfer;->bytesTotal:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    .line 97
    iget-object v4, p0, Lcom/google/android/youtube/videos/async/OfflineStreamsRequester$ServiceCallback;->callback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v5, p0, Lcom/google/android/youtube/videos/async/OfflineStreamsRequester$ServiceCallback;->request:Lcom/google/android/youtube/core/async/GDataRequest;

    new-instance v6, Lcom/google/android/youtube/videos/async/StreamNotReadyException;

    invoke-direct {v6}, Lcom/google/android/youtube/videos/async/StreamNotReadyException;-><init>()V

    invoke-interface {v4, v5, v6}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 111
    :goto_0
    return-void

    .line 99
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/google/android/youtube/videos/async/OfflineStreamsRequester$ServiceCallback;->download:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v4, v4, Lcom/google/android/youtube/core/transfer/Transfer;->filePath:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 101
    iget-object v4, p0, Lcom/google/android/youtube/videos/async/OfflineStreamsRequester$ServiceCallback;->callback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v5, p0, Lcom/google/android/youtube/videos/async/OfflineStreamsRequester$ServiceCallback;->request:Lcom/google/android/youtube/core/async/GDataRequest;

    new-instance v6, Lcom/google/android/youtube/core/player/MissingStreamException;

    invoke-direct {v6}, Lcom/google/android/youtube/core/player/MissingStreamException;-><init>()V

    invoke-interface {v4, v5, v6}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0

    .line 103
    :cond_1
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/google/android/youtube/videos/async/OfflineStreamsRequester$ServiceCallback;->download:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v5, v5, Lcom/google/android/youtube/core/transfer/Transfer;->filePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 104
    .local v1, fileUri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/google/android/youtube/videos/async/OfflineStreamsRequester$ServiceCallback;->callback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v5, p0, Lcom/google/android/youtube/videos/async/OfflineStreamsRequester$ServiceCallback;->request:Lcom/google/android/youtube/core/async/GDataRequest;

    new-instance v6, Lcom/google/android/youtube/core/model/VideoStreams;

    new-instance v7, Lcom/google/android/youtube/core/model/Stream;

    sget-object v8, Lcom/google/android/youtube/core/model/Stream$Quality;->UNKNOWN:Lcom/google/android/youtube/core/model/Stream$Quality;

    iget-object v9, p0, Lcom/google/android/youtube/videos/async/OfflineStreamsRequester$ServiceCallback;->download:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-wide v9, v9, Lcom/google/android/youtube/core/transfer/Transfer;->bytesTotal:J

    invoke-direct {v7, v1, v8, v9, v10}, Lcom/google/android/youtube/core/model/Stream;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/Stream$Quality;J)V

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/google/android/youtube/core/model/VideoStreams;-><init>(Lcom/google/android/youtube/core/model/Stream;Z)V

    invoke-interface {v4, v5, v6}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 109
    .end local v0           #file:Ljava/io/File;
    .end local v1           #fileUri:Landroid/net/Uri;
    :cond_2
    iget-object v4, p0, Lcom/google/android/youtube/videos/async/OfflineStreamsRequester$ServiceCallback;->callback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v5, p0, Lcom/google/android/youtube/videos/async/OfflineStreamsRequester$ServiceCallback;->request:Lcom/google/android/youtube/core/async/GDataRequest;

    new-instance v6, Lcom/google/android/youtube/core/player/MissingStreamException;

    invoke-direct {v6}, Lcom/google/android/youtube/core/player/MissingStreamException;-><init>()V

    invoke-interface {v4, v5, v6}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "className"
    .parameter "serviceBinder"

    .prologue
    .line 84
    check-cast p2, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    .end local p2
    iput-object p2, p0, Lcom/google/android/youtube/videos/async/OfflineStreamsRequester$ServiceCallback;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    .line 85
    iget-object v0, p0, Lcom/google/android/youtube/videos/async/OfflineStreamsRequester$ServiceCallback;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->addTransferListener(Lcom/google/android/youtube/core/transfer/TransferService$Listener;)Z

    .line 86
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "componentName"

    .prologue
    .line 115
    return-void
.end method

.method public onSize(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .locals 0
    .parameter "download"

    .prologue
    .line 131
    return-void
.end method

.method public onStatusChanged(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .locals 0
    .parameter "download"

    .prologue
    .line 119
    return-void
.end method
