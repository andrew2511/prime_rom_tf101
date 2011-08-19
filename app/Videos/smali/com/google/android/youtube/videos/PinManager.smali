.class public Lcom/google/android/youtube/videos/PinManager;
.super Ljava/lang/Object;
.source "PinManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/google/android/youtube/core/transfer/TransferService$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/videos/PinManager$PinState;,
        Lcom/google/android/youtube/videos/PinManager$MediaMountedReceiver;,
        Lcom/google/android/youtube/videos/PinManager$Listener;
    }
.end annotation


# static fields
.field private static final LICENSE_ID_EXTRA:Ljava/lang/String; = "license_ids"

.field private static final STREAM_LENGTH_EXTRA:Ljava/lang/String; = "stream_length"


# instance fields
.field private availableBytes:J

.field private final context:Landroid/content/Context;

.field private downloadDirectoryMounted:Z

.field private downloadJanitorStarted:Z

.field private downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

.field private downloadServiceBound:Z

.field private downloadsRestored:Z

.field private final drmManager:Lcom/google/android/youtube/videos/DrmManager;

.field private final listener:Lcom/google/android/youtube/videos/PinManager$Listener;

.field private final mainHandler:Landroid/os/Handler;

.field private final mediaMountedReceiver:Lcom/google/android/youtube/videos/PinManager$MediaMountedReceiver;

.field private final pendingOperations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private reservedBytes:J

.field private final streamsRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/VideoStreams;",
            ">;"
        }
    .end annotation
.end field

.field private totalBytes:J

.field private userAuth:Lcom/google/android/youtube/core/model/UserAuth;

.field private final videoStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/videos/PinManager$PinState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/google/android/youtube/videos/Requesters;Lcom/google/android/youtube/videos/DrmManager;Lcom/google/android/youtube/videos/PinManager$Listener;)V
    .locals 2
    .parameter "context"
    .parameter "preferences"
    .parameter "requesters"
    .parameter "drmManager"
    .parameter "listener"

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->context:Landroid/content/Context;

    .line 103
    invoke-static {p4}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/videos/DrmManager;

    iput-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->drmManager:Lcom/google/android/youtube/videos/DrmManager;

    .line 104
    invoke-static {p5}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/videos/PinManager$Listener;

    iput-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->listener:Lcom/google/android/youtube/videos/PinManager$Listener;

    .line 105
    invoke-interface {p3}, Lcom/google/android/youtube/videos/Requesters;->getFreshOnlineStreamsRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->streamsRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->mainHandler:Landroid/os/Handler;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->pendingOperations:Ljava/util/List;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->videoStates:Ljava/util/Map;

    .line 111
    new-instance v0, Lcom/google/android/youtube/videos/PinManager$MediaMountedReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/videos/PinManager$MediaMountedReceiver;-><init>(Lcom/google/android/youtube/videos/PinManager;Lcom/google/android/youtube/videos/PinManager$1;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->mediaMountedReceiver:Lcom/google/android/youtube/videos/PinManager$MediaMountedReceiver;

    .line 112
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->mediaMountedReceiver:Lcom/google/android/youtube/videos/PinManager$MediaMountedReceiver;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/PinManager$MediaMountedReceiver;->register()V

    .line 113
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/youtube/videos/PinManager;)Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/youtube/videos/PinManager;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/google/android/youtube/videos/PinManager;->reservedBytes:J

    return-wide v0
.end method

.method static synthetic access$1114(Lcom/google/android/youtube/videos/PinManager;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/google/android/youtube/videos/PinManager;->reservedBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/youtube/videos/PinManager;->reservedBytes:J

    return-wide v0
.end method

.method static synthetic access$1122(Lcom/google/android/youtube/videos/PinManager;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/google/android/youtube/videos/PinManager;->reservedBytes:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/youtube/videos/PinManager;->reservedBytes:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/google/android/youtube/videos/PinManager;Lcom/google/android/youtube/videos/PinManager$PinState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/PinManager;->pinVideo(Lcom/google/android/youtube/videos/PinManager$PinState;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/youtube/videos/PinManager;Lcom/google/android/youtube/videos/PinManager$PinState;Lcom/google/android/youtube/core/model/Stream;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/videos/PinManager;->requestLicenseForPinning(Lcom/google/android/youtube/videos/PinManager$PinState;Lcom/google/android/youtube/core/model/Stream;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/youtube/videos/PinManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/youtube/videos/PinManager;)Lcom/google/android/youtube/core/model/UserAuth;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/youtube/videos/PinManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/PinManager;->downloadJanitorStarted:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/google/android/youtube/videos/PinManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/google/android/youtube/videos/PinManager;->downloadJanitorStarted:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/google/android/youtube/videos/PinManager;Lcom/google/android/youtube/videos/PinManager$PinState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/PinManager;->unpinVideo(Lcom/google/android/youtube/videos/PinManager$PinState;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/youtube/videos/PinManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/PinManager;->downloadsRestored:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/google/android/youtube/videos/PinManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/android/youtube/videos/PinManager;->updateDirectoryStats()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/youtube/videos/PinManager;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->videoStates:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/youtube/videos/PinManager;)Lcom/google/android/youtube/videos/PinManager$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->listener:Lcom/google/android/youtube/videos/PinManager$Listener;

    return-object v0
.end method

.method private doBindService()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 401
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/PinManager;->downloadServiceBound:Z

    if-nez v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/youtube/core/transfer/DownloadService;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 403
    iput-boolean v2, p0, Lcom/google/android/youtube/videos/PinManager;->downloadServiceBound:Z

    .line 405
    :cond_0
    return-void
.end method

.method private doUnbindService()V
    .locals 1

    .prologue
    .line 408
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/PinManager;->downloadServiceBound:Z

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->removeTransferListener(Lcom/google/android/youtube/core/transfer/TransferService$Listener;)Z

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 413
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/videos/PinManager;->downloadServiceBound:Z

    .line 415
    :cond_1
    return-void
.end method

.method private downloadBelongsToUser(Ljava/lang/String;)Z
    .locals 2
    .parameter "filePath"

    .prologue
    .line 478
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/youtube/videos/utils/OfflineUtil;->getUserFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onDownloadStateChanged(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .locals 3
    .parameter "download"

    .prologue
    .line 469
    iget-object v2, p1, Lcom/google/android/youtube/core/transfer/Transfer;->filePath:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/google/android/youtube/videos/PinManager;->downloadBelongsToUser(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 470
    iget-object v2, p1, Lcom/google/android/youtube/core/transfer/Transfer;->filePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/youtube/videos/utils/OfflineUtil;->getVideoIdFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, videoId:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/youtube/videos/PinManager;->videoStates:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/videos/PinManager$PinState;

    .line 472
    .local v1, videoState:Lcom/google/android/youtube/videos/PinManager$PinState;
    iget-object v2, p1, Lcom/google/android/youtube/core/transfer/Transfer;->status:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    invoke-static {v1, v2}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$202(Lcom/google/android/youtube/videos/PinManager$PinState;Lcom/google/android/youtube/core/transfer/Transfer$Status;)Lcom/google/android/youtube/core/transfer/Transfer$Status;

    .line 473
    iget-object v2, p0, Lcom/google/android/youtube/videos/PinManager;->listener:Lcom/google/android/youtube/videos/PinManager$Listener;

    invoke-interface {v2, v1}, Lcom/google/android/youtube/videos/PinManager$Listener;->onPinStateChange(Lcom/google/android/youtube/videos/PinManager$PinState;)V

    .line 475
    .end local v0           #videoId:Ljava/lang/String;
    .end local v1           #videoState:Lcom/google/android/youtube/videos/PinManager$PinState;
    :cond_0
    return-void
.end method

.method private pinVideo(Lcom/google/android/youtube/videos/PinManager$PinState;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->streamsRequester:Lcom/google/android/youtube/core/async/Requester;

    invoke-static {p1}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$900(Lcom/google/android/youtube/videos/PinManager$PinState;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/videos/PinManager;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/async/GDataRequests;->getStreamsRequest(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/async/HandlerCallback;

    iget-object v3, p0, Lcom/google/android/youtube/videos/PinManager;->mainHandler:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/youtube/videos/PinManager$3;

    invoke-direct {v4, p0, p1}, Lcom/google/android/youtube/videos/PinManager$3;-><init>(Lcom/google/android/youtube/videos/PinManager;Lcom/google/android/youtube/videos/PinManager$PinState;)V

    invoke-direct {v2, v3, v4}, Lcom/google/android/youtube/core/async/HandlerCallback;-><init>(Landroid/os/Handler;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 344
    return-void
.end method

.method private refreshExpirationTimes()V
    .locals 10

    .prologue
    .line 188
    new-instance v0, Lcom/google/android/youtube/core/async/HandlerCallback;

    iget-object v7, p0, Lcom/google/android/youtube/videos/PinManager;->mainHandler:Landroid/os/Handler;

    new-instance v8, Lcom/google/android/youtube/videos/PinManager$1;

    invoke-direct {v8, p0}, Lcom/google/android/youtube/videos/PinManager$1;-><init>(Lcom/google/android/youtube/videos/PinManager;)V

    invoke-direct {v0, v7, v8}, Lcom/google/android/youtube/core/async/HandlerCallback;-><init>(Landroid/os/Handler;Lcom/google/android/youtube/core/async/Callback;)V

    .line 210
    .local v0, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;>;"
    iget-object v7, p0, Lcom/google/android/youtube/videos/PinManager;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    invoke-virtual {v7}, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->getSnapshot()Ljava/util/Map;

    move-result-object v5

    .line 211
    .local v5, snapshot:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/youtube/core/transfer/Transfer;>;"
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 212
    .local v3, key:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/google/android/youtube/videos/PinManager;->downloadBelongsToUser(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 213
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/transfer/Transfer;

    .line 214
    .local v1, download:Lcom/google/android/youtube/core/transfer/Transfer;
    invoke-static {v3}, Lcom/google/android/youtube/videos/utils/OfflineUtil;->getVideoIdFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 215
    .local v6, videoId:Ljava/lang/String;
    new-instance v7, Lcom/google/android/youtube/core/model/Stream;

    iget-object v8, v1, Lcom/google/android/youtube/core/transfer/Transfer;->networkUri:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/android/youtube/core/model/Stream;-><init>(Landroid/net/Uri;)V

    iget-object v8, p0, Lcom/google/android/youtube/videos/PinManager;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    const/4 v9, 0x0

    invoke-static {v7, v6, v8, v9}, Lcom/google/android/youtube/videos/DrmRequest;->createOfflineRequest(Lcom/google/android/youtube/core/model/Stream;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Z)Lcom/google/android/youtube/videos/DrmRequest;

    move-result-object v4

    .line 217
    .local v4, request:Lcom/google/android/youtube/videos/DrmRequest;
    iget-object v7, p0, Lcom/google/android/youtube/videos/PinManager;->drmManager:Lcom/google/android/youtube/videos/DrmManager;

    invoke-virtual {v7, v4, v0}, Lcom/google/android/youtube/videos/DrmManager;->request(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V

    goto :goto_0

    .line 220
    .end local v1           #download:Lcom/google/android/youtube/core/transfer/Transfer;
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #request:Lcom/google/android/youtube/videos/DrmRequest;
    .end local v6           #videoId:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private requestLicenseForPinning(Lcom/google/android/youtube/videos/PinManager$PinState;Lcom/google/android/youtube/core/model/Stream;)V
    .locals 6
    .parameter "state"
    .parameter "stream"

    .prologue
    .line 347
    invoke-static {p1}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$900(Lcom/google/android/youtube/videos/PinManager$PinState;)Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, videoId:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/youtube/videos/PinManager;->drmManager:Lcom/google/android/youtube/videos/DrmManager;

    iget-object v2, p0, Lcom/google/android/youtube/videos/PinManager;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    const/4 v3, 0x0

    invoke-static {p2, v0, v2, v3}, Lcom/google/android/youtube/videos/DrmRequest;->createOfflineRequest(Lcom/google/android/youtube/core/model/Stream;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Z)Lcom/google/android/youtube/videos/DrmRequest;

    move-result-object v2

    new-instance v3, Lcom/google/android/youtube/core/async/HandlerCallback;

    iget-object v4, p0, Lcom/google/android/youtube/videos/PinManager;->mainHandler:Landroid/os/Handler;

    new-instance v5, Lcom/google/android/youtube/videos/PinManager$4;

    invoke-direct {v5, p0, v0, p2, p1}, Lcom/google/android/youtube/videos/PinManager$4;-><init>(Lcom/google/android/youtube/videos/PinManager;Ljava/lang/String;Lcom/google/android/youtube/core/model/Stream;Lcom/google/android/youtube/videos/PinManager$PinState;)V

    invoke-direct {v3, v4, v5}, Lcom/google/android/youtube/core/async/HandlerCallback;-><init>(Landroid/os/Handler;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/videos/DrmManager;->request(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V

    .line 392
    return-void
.end method

.method private restoreDownloads()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 157
    iget-object v7, p0, Lcom/google/android/youtube/videos/PinManager;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    invoke-virtual {v7}, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->getSnapshot()Ljava/util/Map;

    move-result-object v4

    .line 158
    .local v4, snapshot:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/youtube/core/transfer/Transfer;>;"
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 159
    .local v2, key:Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/Transfer;

    .line 160
    .local v0, download:Lcom/google/android/youtube/core/transfer/Transfer;
    invoke-direct {p0, v2}, Lcom/google/android/youtube/videos/PinManager;->downloadBelongsToUser(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 161
    invoke-static {v2}, Lcom/google/android/youtube/videos/utils/OfflineUtil;->getVideoIdFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 162
    .local v6, videoId:Ljava/lang/String;
    new-instance v5, Lcom/google/android/youtube/videos/PinManager$PinState;

    invoke-direct {v5, p0, v6}, Lcom/google/android/youtube/videos/PinManager$PinState;-><init>(Lcom/google/android/youtube/videos/PinManager;Ljava/lang/String;)V

    .line 163
    .local v5, state:Lcom/google/android/youtube/videos/PinManager$PinState;
    invoke-static {v5, v11}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$102(Lcom/google/android/youtube/videos/PinManager$PinState;Z)Z

    .line 164
    iget-object v7, v0, Lcom/google/android/youtube/core/transfer/Transfer;->status:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    invoke-static {v5, v7}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$202(Lcom/google/android/youtube/videos/PinManager$PinState;Lcom/google/android/youtube/core/transfer/Transfer$Status;)Lcom/google/android/youtube/core/transfer/Transfer$Status;

    .line 165
    iget-wide v7, v0, Lcom/google/android/youtube/core/transfer/Transfer;->bytesTransfered:J

    invoke-static {v5, v7, v8}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$302(Lcom/google/android/youtube/videos/PinManager$PinState;J)J

    .line 167
    iget-wide v7, v0, Lcom/google/android/youtube/core/transfer/Transfer;->bytesTotal:J

    invoke-static {v5, v7, v8}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$402(Lcom/google/android/youtube/videos/PinManager$PinState;J)J

    .line 168
    invoke-static {v5}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$400(Lcom/google/android/youtube/videos/PinManager$PinState;)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_1

    .line 171
    iget-object v7, v0, Lcom/google/android/youtube/core/transfer/Transfer;->extras:Landroid/os/Bundle;

    const-string v8, "stream_length"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v5, v7, v8}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$402(Lcom/google/android/youtube/videos/PinManager$PinState;J)J

    .line 174
    :cond_1
    iget-object v7, p0, Lcom/google/android/youtube/videos/PinManager;->videoStates:Ljava/util/Map;

    invoke-interface {v7, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 177
    .end local v0           #download:Lcom/google/android/youtube/core/transfer/Transfer;
    .end local v2           #key:Ljava/lang/String;
    .end local v5           #state:Lcom/google/android/youtube/videos/PinManager$PinState;
    .end local v6           #videoId:Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/google/android/youtube/videos/PinManager;->updateDirectoryStats()V

    .line 178
    iput-boolean v11, p0, Lcom/google/android/youtube/videos/PinManager;->downloadsRestored:Z

    .line 179
    iget-object v7, p0, Lcom/google/android/youtube/videos/PinManager;->listener:Lcom/google/android/youtube/videos/PinManager$Listener;

    invoke-interface {v7}, Lcom/google/android/youtube/videos/PinManager$Listener;->onRestored()V

    .line 180
    invoke-direct {p0}, Lcom/google/android/youtube/videos/PinManager;->refreshExpirationTimes()V

    .line 181
    iget-object v7, p0, Lcom/google/android/youtube/videos/PinManager;->pendingOperations:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 182
    .local v3, pendingOperation:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iget-object v7, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/google/android/youtube/videos/PinManager;->setPinned(Ljava/lang/String;Z)V

    goto :goto_1

    .line 184
    .end local v3           #pendingOperation:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_3
    iget-object v7, p0, Lcom/google/android/youtube/videos/PinManager;->pendingOperations:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 185
    return-void
.end method

.method private unpinVideo(Lcom/google/android/youtube/videos/PinManager$PinState;)V
    .locals 9
    .parameter "state"

    .prologue
    .line 279
    iget-object v4, p0, Lcom/google/android/youtube/videos/PinManager;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/youtube/videos/PinManager;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v5, v5, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$900(Lcom/google/android/youtube/videos/PinManager$PinState;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/google/android/youtube/videos/utils/OfflineUtil;->getPathForVideoId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, path:Ljava/lang/String;
    new-instance v3, Lcom/google/android/youtube/core/model/Stream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/youtube/core/model/Stream;-><init>(Landroid/net/Uri;)V

    .line 281
    .local v3, stream:Lcom/google/android/youtube/core/model/Stream;
    iget-object v4, p0, Lcom/google/android/youtube/videos/PinManager;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    invoke-virtual {v4}, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->getSnapshot()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v0, v4, Lcom/google/android/youtube/core/transfer/Transfer;->extras:Landroid/os/Bundle;

    .line 282
    .local v0, extras:Landroid/os/Bundle;
    const-string v4, "license_ids"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/videos/DrmManager$Identifiers;

    .line 283
    .local v1, ids:Lcom/google/android/youtube/videos/DrmManager$Identifiers;
    iget-object v4, p0, Lcom/google/android/youtube/videos/PinManager;->drmManager:Lcom/google/android/youtube/videos/DrmManager;

    invoke-static {p1}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$900(Lcom/google/android/youtube/videos/PinManager$PinState;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/youtube/videos/PinManager;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-static {v3, v5, v6, v1}, Lcom/google/android/youtube/videos/DrmRequest;->createUnpinRequest(Lcom/google/android/youtube/core/model/Stream;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/videos/DrmManager$Identifiers;)Lcom/google/android/youtube/videos/DrmRequest;

    move-result-object v5

    new-instance v6, Lcom/google/android/youtube/core/async/HandlerCallback;

    iget-object v7, p0, Lcom/google/android/youtube/videos/PinManager;->mainHandler:Landroid/os/Handler;

    new-instance v8, Lcom/google/android/youtube/videos/PinManager$2;

    invoke-direct {v8, p0, p1, v2}, Lcom/google/android/youtube/videos/PinManager$2;-><init>(Lcom/google/android/youtube/videos/PinManager;Lcom/google/android/youtube/videos/PinManager$PinState;Ljava/lang/String;)V

    invoke-direct {v6, v7, v8}, Lcom/google/android/youtube/core/async/HandlerCallback;-><init>(Landroid/os/Handler;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-virtual {v4, v5, v6}, Lcom/google/android/youtube/videos/DrmManager;->request(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V

    .line 316
    return-void
.end method

.method private updateDirectoryStats()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 223
    iget-object v4, p0, Lcom/google/android/youtube/videos/PinManager;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/youtube/videos/utils/OfflineUtil;->getRootPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, downloadDirectory:Ljava/lang/String;
    if-eqz v0, :cond_1

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lcom/google/android/youtube/videos/PinManager;->downloadDirectoryMounted:Z

    .line 225
    iget-boolean v4, p0, Lcom/google/android/youtube/videos/PinManager;->downloadDirectoryMounted:Z

    if-eqz v4, :cond_2

    .line 226
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 227
    .local v2, statFs:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/youtube/videos/PinManager;->totalBytes:J

    .line 228
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/youtube/videos/PinManager;->availableBytes:J

    .line 229
    iput-wide v8, p0, Lcom/google/android/youtube/videos/PinManager;->reservedBytes:J

    .line 230
    iget-object v4, p0, Lcom/google/android/youtube/videos/PinManager;->videoStates:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/videos/PinManager$PinState;

    .line 231
    .local v3, state:Lcom/google/android/youtube/videos/PinManager$PinState;
    invoke-static {v3}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$100(Lcom/google/android/youtube/videos/PinManager$PinState;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 232
    iget-wide v4, p0, Lcom/google/android/youtube/videos/PinManager;->availableBytes:J

    invoke-static {v3}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$300(Lcom/google/android/youtube/videos/PinManager$PinState;)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/youtube/videos/PinManager;->availableBytes:J

    .line 233
    iget-wide v4, p0, Lcom/google/android/youtube/videos/PinManager;->reservedBytes:J

    invoke-static {v3}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$400(Lcom/google/android/youtube/videos/PinManager$PinState;)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/youtube/videos/PinManager;->reservedBytes:J

    goto :goto_1

    .line 224
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #statFs:Landroid/os/StatFs;
    .end local v3           #state:Lcom/google/android/youtube/videos/PinManager$PinState;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 237
    :cond_2
    iput-wide v8, p0, Lcom/google/android/youtube/videos/PinManager;->availableBytes:J

    .line 238
    iput-wide v8, p0, Lcom/google/android/youtube/videos/PinManager;->totalBytes:J

    .line 240
    :cond_3
    return-void
.end method


# virtual methods
.method public getAvailableBytes()J
    .locals 2

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/google/android/youtube/videos/PinManager;->availableBytes:J

    return-wide v0
.end method

.method public getState(Ljava/lang/String;)Lcom/google/android/youtube/videos/PinManager$PinState;
    .locals 1
    .parameter "videoId"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->videoStates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->videoStates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/videos/PinManager$PinState;

    move-object v0, p0

    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    new-instance v0, Lcom/google/android/youtube/videos/PinManager$PinState;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/videos/PinManager$PinState;-><init>(Lcom/google/android/youtube/videos/PinManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getStates()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/videos/PinManager$PinState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->videoStates:Ljava/util/Map;

    return-object v0
.end method

.method public getTotalBytes()J
    .locals 2

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/google/android/youtube/videos/PinManager;->totalBytes:J

    return-wide v0
.end method

.method public init(Lcom/google/android/youtube/core/model/UserAuth;)V
    .locals 3
    .parameter "userAuth"

    .prologue
    const-wide/16 v1, 0x0

    .line 131
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/model/UserAuth;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/PinManager;->downloadsRestored:Z

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->listener:Lcom/google/android/youtube/videos/PinManager$Listener;

    invoke-interface {v0}, Lcom/google/android/youtube/videos/PinManager$Listener;->onRestored()V

    .line 137
    invoke-direct {p0}, Lcom/google/android/youtube/videos/PinManager;->refreshExpirationTimes()V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iput-object p1, p0, Lcom/google/android/youtube/videos/PinManager;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    .line 142
    iput-wide v1, p0, Lcom/google/android/youtube/videos/PinManager;->totalBytes:J

    .line 143
    iput-wide v1, p0, Lcom/google/android/youtube/videos/PinManager;->availableBytes:J

    .line 144
    iput-wide v1, p0, Lcom/google/android/youtube/videos/PinManager;->reservedBytes:J

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/videos/PinManager;->downloadsRestored:Z

    .line 146
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->videoStates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 147
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->removeTransferListener(Lcom/google/android/youtube/core/transfer/TransferService$Listener;)Z

    .line 149
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->addTransferListener(Lcom/google/android/youtube/core/transfer/TransferService$Listener;)Z

    goto :goto_0

    .line 151
    :cond_2
    invoke-direct {p0}, Lcom/google/android/youtube/videos/PinManager;->doBindService()V

    goto :goto_0
.end method

.method public isDownloadDirectoryMounted()Z
    .locals 1

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/PinManager;->downloadDirectoryMounted:Z

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->mediaMountedReceiver:Lcom/google/android/youtube/videos/PinManager$MediaMountedReceiver;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/PinManager$MediaMountedReceiver;->unregister()V

    .line 430
    invoke-direct {p0}, Lcom/google/android/youtube/videos/PinManager;->doUnbindService()V

    .line 431
    return-void
.end method

.method public onProgress(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .locals 4
    .parameter "download"

    .prologue
    .line 448
    iget-object v2, p1, Lcom/google/android/youtube/core/transfer/Transfer;->filePath:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/google/android/youtube/videos/PinManager;->downloadBelongsToUser(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 449
    iget-object v2, p1, Lcom/google/android/youtube/core/transfer/Transfer;->filePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/youtube/videos/utils/OfflineUtil;->getVideoIdFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, videoId:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/youtube/videos/PinManager;->videoStates:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/videos/PinManager$PinState;

    .line 451
    .local v1, videoState:Lcom/google/android/youtube/videos/PinManager$PinState;
    iget-wide v2, p1, Lcom/google/android/youtube/core/transfer/Transfer;->bytesTransfered:J

    invoke-static {v1, v2, v3}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$302(Lcom/google/android/youtube/videos/PinManager$PinState;J)J

    .line 452
    iget-object v2, p0, Lcom/google/android/youtube/videos/PinManager;->listener:Lcom/google/android/youtube/videos/PinManager$Listener;

    invoke-interface {v2, v1}, Lcom/google/android/youtube/videos/PinManager$Listener;->onPinStateChange(Lcom/google/android/youtube/videos/PinManager$PinState;)V

    .line 454
    .end local v0           #videoId:Ljava/lang/String;
    .end local v1           #videoState:Lcom/google/android/youtube/videos/PinManager$PinState;
    :cond_0
    return-void
.end method

.method public onRemoved(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .locals 4
    .parameter "download"

    .prologue
    .line 457
    iget-object v2, p1, Lcom/google/android/youtube/core/transfer/Transfer;->filePath:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/google/android/youtube/videos/PinManager;->downloadBelongsToUser(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 458
    iget-object v2, p1, Lcom/google/android/youtube/core/transfer/Transfer;->filePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/youtube/videos/utils/OfflineUtil;->getVideoIdFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, videoId:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/youtube/videos/PinManager;->videoStates:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/videos/PinManager$PinState;

    .line 460
    .local v1, videoState:Lcom/google/android/youtube/videos/PinManager$PinState;
    iget-object v2, p1, Lcom/google/android/youtube/core/transfer/Transfer;->filePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/youtube/videos/utils/OfflineUtil;->deleteFile(Ljava/lang/String;)V

    .line 461
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$202(Lcom/google/android/youtube/videos/PinManager$PinState;Lcom/google/android/youtube/core/transfer/Transfer$Status;)Lcom/google/android/youtube/core/transfer/Transfer$Status;

    .line 462
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$302(Lcom/google/android/youtube/videos/PinManager$PinState;J)J

    .line 463
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$802(Lcom/google/android/youtube/videos/PinManager$PinState;Z)Z

    .line 464
    iget-object v2, p0, Lcom/google/android/youtube/videos/PinManager;->listener:Lcom/google/android/youtube/videos/PinManager$Listener;

    invoke-interface {v2, v1}, Lcom/google/android/youtube/videos/PinManager$Listener;->onPinStateChange(Lcom/google/android/youtube/videos/PinManager$PinState;)V

    .line 466
    .end local v0           #videoId:Ljava/lang/String;
    .end local v1           #videoState:Lcom/google/android/youtube/videos/PinManager$PinState;
    :cond_0
    return-void
.end method

.method public onRestored()V
    .locals 0

    .prologue
    .line 436
    invoke-direct {p0}, Lcom/google/android/youtube/videos/PinManager;->restoreDownloads()V

    .line 437
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "className"
    .parameter "serviceBinder"

    .prologue
    .line 418
    check-cast p2, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    .end local p2
    iput-object p2, p0, Lcom/google/android/youtube/videos/PinManager;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    .line 419
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;->addTransferListener(Lcom/google/android/youtube/core/transfer/TransferService$Listener;)Z

    .line 422
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "className"

    .prologue
    .line 425
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/videos/PinManager;->downloadService:Lcom/google/android/youtube/core/transfer/TransferService$TransferBinder;

    .line 426
    return-void
.end method

.method public onSize(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .locals 0
    .parameter "download"

    .prologue
    .line 440
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/PinManager;->onDownloadStateChanged(Lcom/google/android/youtube/core/transfer/Transfer;)V

    .line 441
    return-void
.end method

.method public onStatusChanged(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .locals 0
    .parameter "download"

    .prologue
    .line 444
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/PinManager;->onDownloadStateChanged(Lcom/google/android/youtube/core/transfer/Transfer;)V

    .line 445
    return-void
.end method

.method public setPinned(Ljava/lang/String;Z)V
    .locals 5
    .parameter "videoId"
    .parameter "pin"

    .prologue
    const/4 v3, 0x1

    .line 251
    iget-boolean v2, p0, Lcom/google/android/youtube/videos/PinManager;->downloadsRestored:Z

    if-nez v2, :cond_1

    .line 252
    iget-object v2, p0, Lcom/google/android/youtube/videos/PinManager;->pendingOperations:Ljava/util/List;

    new-instance v3, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v2, p0, Lcom/google/android/youtube/videos/PinManager;->videoStates:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/videos/PinManager$PinState;

    .line 256
    .local v0, state:Lcom/google/android/youtube/videos/PinManager$PinState;
    if-nez v0, :cond_3

    move v1, p2

    .line 257
    .local v1, togglePin:Z
    :goto_1
    if-eqz v1, :cond_0

    .line 258
    if-nez v0, :cond_2

    .line 259
    new-instance v0, Lcom/google/android/youtube/videos/PinManager$PinState;

    .end local v0           #state:Lcom/google/android/youtube/videos/PinManager$PinState;
    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/videos/PinManager$PinState;-><init>(Lcom/google/android/youtube/videos/PinManager;Ljava/lang/String;)V

    .line 260
    .restart local v0       #state:Lcom/google/android/youtube/videos/PinManager$PinState;
    iget-object v2, p0, Lcom/google/android/youtube/videos/PinManager;->videoStates:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_2
    invoke-static {v0, p2}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$102(Lcom/google/android/youtube/videos/PinManager$PinState;Z)Z

    .line 263
    iget-object v2, p0, Lcom/google/android/youtube/videos/PinManager;->listener:Lcom/google/android/youtube/videos/PinManager$Listener;

    invoke-interface {v2, v0}, Lcom/google/android/youtube/videos/PinManager$Listener;->onPinStateChange(Lcom/google/android/youtube/videos/PinManager$PinState;)V

    .line 264
    invoke-static {v0}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$800(Lcom/google/android/youtube/videos/PinManager$PinState;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 268
    invoke-static {v0, v3}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$802(Lcom/google/android/youtube/videos/PinManager$PinState;Z)Z

    .line 269
    if-nez p2, :cond_5

    .line 270
    invoke-direct {p0, v0}, Lcom/google/android/youtube/videos/PinManager;->unpinVideo(Lcom/google/android/youtube/videos/PinManager$PinState;)V

    goto :goto_0

    .line 256
    .end local v1           #togglePin:Z
    :cond_3
    invoke-static {v0}, Lcom/google/android/youtube/videos/PinManager$PinState;->access$100(Lcom/google/android/youtube/videos/PinManager$PinState;)Z

    move-result v2

    if-eq v2, p2, :cond_4

    move v1, v3

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    move v1, v2

    goto :goto_1

    .line 272
    .restart local v1       #togglePin:Z
    :cond_5
    invoke-direct {p0, v0}, Lcom/google/android/youtube/videos/PinManager;->pinVideo(Lcom/google/android/youtube/videos/PinManager$PinState;)V

    goto :goto_0
.end method
