.class public Lcom/google/android/youtube/videos/player/Director;
.super Ljava/lang/Object;
.source "Director.java"

# interfaces
.implements Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerFactory;
.implements Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/videos/player/Director$11;,
        Lcom/google/android/youtube/videos/player/Director$DrmCallback;,
        Lcom/google/android/youtube/videos/player/Director$Listener;
    }
.end annotation


# static fields
.field private static final EXCESSIVE_BUFFERING_THRESHOLD:I = 0x3

.field private static final RESUME_THRESHOLD:I = 0x7530


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final analytics:Lcom/google/android/youtube/core/Analytics;

.field private bufferingCount:I

.field private final controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

.field private final drmManager:Lcom/google/android/youtube/videos/DrmManager;

.field private volatile ended:Z

.field private hq:Z

.field private final listener:Lcom/google/android/youtube/videos/player/Director$Listener;

.field private final offlineStreamsRequester:Lcom/google/android/youtube/core/async/Requester;
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

.field private offlineVideoStreamsCallback:Lcom/google/android/youtube/core/async/Callback;
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

.field private final onlineStreamsRequester:Lcom/google/android/youtube/core/async/Requester;
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

.field private onlineVideoStreamsCallback:Lcom/google/android/youtube/core/async/Callback;
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

.field private final player:Lcom/google/android/youtube/core/player/YouTubePlayer;

.field private playerHandler:Landroid/os/Handler;

.field private final playerTracker:Lcom/google/android/youtube/core/player/Tracker;

.field private playing:Z

.field private purchase:Lcom/google/android/youtube/core/model/Purchase;

.field private purchasesCallback:Lcom/google/android/youtube/core/async/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;>;"
        }
    .end annotation
.end field

.field private final purchasesRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;>;"
        }
    .end annotation
.end field

.field private resumeTime:I

.field private stopped:Z

.field private streamParams:Ljava/lang/String;

.field private final subtitleHelper:Lcom/google/android/youtube/core/player/SubtitleHelper;

.field private userAuth:Lcom/google/android/youtube/core/model/UserAuth;

.field private userConfirmedShortClockActivation:Z

.field private userPrefs:Landroid/content/SharedPreferences;

.field private video:Lcom/google/android/youtube/core/model/Video;

.field private videoCallback:Lcom/google/android/youtube/core/async/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;"
        }
    .end annotation
.end field

.field private videoId:Ljava/lang/String;

.field private final videoRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;"
        }
    .end annotation
.end field

.field private videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/player/YouTubePlayer;Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/google/android/youtube/videos/Requesters;Lcom/google/android/youtube/videos/DrmManager;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/videos/player/Director$Listener;)V
    .locals 7
    .parameter "player"
    .parameter "activity"
    .parameter "preferences"
    .parameter "requesters"
    .parameter "drmManager"
    .parameter "analytics"
    .parameter "listener"

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/YouTubePlayer;

    iput-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    .line 134
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->activity:Landroid/app/Activity;

    .line 135
    invoke-static {p6}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/Analytics;

    iput-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->analytics:Lcom/google/android/youtube/core/Analytics;

    .line 136
    invoke-static {p7}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/videos/player/Director$Listener;

    iput-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->listener:Lcom/google/android/youtube/videos/player/Director$Listener;

    .line 138
    invoke-static {p4}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-interface {p4}, Lcom/google/android/youtube/videos/Requesters;->getFreshMyPurchasesRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->purchasesRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 140
    invoke-interface {p4}, Lcom/google/android/youtube/videos/Requesters;->getVideoRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->videoRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 141
    invoke-interface {p4}, Lcom/google/android/youtube/videos/Requesters;->getOfflineStreamsRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->offlineStreamsRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 142
    invoke-interface {p4}, Lcom/google/android/youtube/videos/Requesters;->getFastOnlineStreamsRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->onlineStreamsRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 143
    iput-object p5, p0, Lcom/google/android/youtube/videos/player/Director;->drmManager:Lcom/google/android/youtube/videos/DrmManager;

    .line 145
    new-instance v3, Lcom/google/android/youtube/core/player/SubtitleOverlay;

    invoke-direct {v3, p2, p1}, Lcom/google/android/youtube/core/player/SubtitleOverlay;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/player/YouTubePlayer;)V

    .line 146
    .local v3, subtitleOverlay:Lcom/google/android/youtube/core/player/SubtitleOverlay;
    invoke-virtual {v3}, Lcom/google/android/youtube/core/player/SubtitleOverlay;->install()V

    .line 147
    new-instance v0, Lcom/google/android/youtube/videos/DrmControllerOverlay;

    invoke-direct {v0, p2, p1, p6}, Lcom/google/android/youtube/videos/DrmControllerOverlay;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/player/YouTubePlayer;Lcom/google/android/youtube/core/Analytics;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    .line 148
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0, p0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setListener(Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;)V

    .line 149
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->install()V

    .line 151
    const-string v0, "default_hq"

    const/4 v1, 0x0

    invoke-interface {p3, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/youtube/videos/player/Director;->hq:Z

    .line 152
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    iget-boolean v1, p0, Lcom/google/android/youtube/videos/player/Director;->hq:Z

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setHQ(Z)V

    .line 154
    new-instance v0, Lcom/google/android/youtube/core/player/SubtitleHelper;

    iget-object v4, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {p4}, Lcom/google/android/youtube/videos/Requesters;->getSubtitleTracksRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v5

    invoke-interface {p4}, Lcom/google/android/youtube/videos/Requesters;->getSubtitleRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v6

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/core/player/SubtitleHelper;-><init>(Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/player/SubtitleOverlay;Lcom/google/android/youtube/core/player/ControllerOverlay;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->subtitleHelper:Lcom/google/android/youtube/core/player/SubtitleHelper;

    .line 157
    invoke-interface {p4}, Lcom/google/android/youtube/videos/Requesters;->getPingRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v0

    invoke-static {p2, p6, v0}, Lcom/google/android/youtube/core/player/Tracker;->newInstance(Landroid/content/Context;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/player/Tracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    .line 158
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->addListener(Landroid/os/Handler;)V

    .line 160
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/Director;->initCallbacks()V

    .line 161
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->playerHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->addListener(Landroid/os/Handler;)V

    .line 162
    invoke-virtual {p1, p0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->setMediaPlayerFactory(Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerFactory;)V

    .line 163
    return-void

    .line 151
    :cond_0
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Util;->isFastNetwork(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/android/youtube/videos/player/Director;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/youtube/videos/player/Director;Lcom/google/android/youtube/core/model/Purchase;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/player/Director;->onPurchaseResponse(Lcom/google/android/youtube/core/model/Purchase;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/youtube/videos/player/Director;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/player/Director;->playing:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/google/android/youtube/videos/player/Director;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/google/android/youtube/videos/player/Director;->playing:Z

    return p1
.end method

.method static synthetic access$1104(Lcom/google/android/youtube/videos/player/Director;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/google/android/youtube/videos/player/Director;->bufferingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/youtube/videos/player/Director;->bufferingCount:I

    return v0
.end method

.method static synthetic access$1200(Lcom/google/android/youtube/videos/player/Director;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/Director;->onVideoEnded()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/youtube/videos/player/Director;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/google/android/youtube/videos/player/Director;->resumeTime:I

    return v0
.end method

.method static synthetic access$1302(Lcom/google/android/youtube/videos/player/Director;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Lcom/google/android/youtube/videos/player/Director;->resumeTime:I

    return p1
.end method

.method static synthetic access$1400(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/player/ControllerOverlay;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/youtube/videos/player/Director;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/player/Director;->userConfirmedShortClockActivation:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/google/android/youtube/videos/player/Director;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/google/android/youtube/videos/player/Director;->userConfirmedShortClockActivation:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/google/android/youtube/videos/player/Director;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/Director;->playVideo()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/model/VideoStreams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/android/youtube/videos/player/Director;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/model/Purchase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->purchase:Lcom/google/android/youtube/core/model/Purchase;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/youtube/videos/player/Director;Lcom/google/android/youtube/core/model/Video;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/player/Director;->onVideoResponse(Lcom/google/android/youtube/core/model/Video;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/android/youtube/videos/player/Director;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/Director;->showShortClockConfirmationDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/model/Video;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/Analytics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->analytics:Lcom/google/android/youtube/core/Analytics;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/youtube/videos/player/Director;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/player/Director;->onInitError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/async/Callback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->onlineVideoStreamsCallback:Lcom/google/android/youtube/core/async/Callback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->onlineStreamsRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/youtube/videos/player/Director;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/player/Director;->onVideoStreamsError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/player/YouTubePlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    return-object v0
.end method

.method private acquireLicensesAndPlayVideo()V
    .locals 7

    .prologue
    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/16 v6, 0x10

    invoke-static {v4, v5, v6}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v3

    .line 279
    .local v3, playbackId:Ljava/lang/String;
    new-instance v0, Lcom/google/android/youtube/core/async/ActivityCallback;

    iget-object v4, p0, Lcom/google/android/youtube/videos/player/Director;->activity:Landroid/app/Activity;

    new-instance v5, Lcom/google/android/youtube/videos/player/Director$DrmCallback;

    iget-object v6, p0, Lcom/google/android/youtube/videos/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

    iget-boolean v6, v6, Lcom/google/android/youtube/core/model/VideoStreams;->supportsQualityToggle:Z

    if-eqz v6, :cond_0

    const/4 v6, 0x2

    :goto_0
    invoke-direct {v5, p0, v6}, Lcom/google/android/youtube/videos/player/Director$DrmCallback;-><init>(Lcom/google/android/youtube/videos/player/Director;I)V

    invoke-direct {v0, v4, v5}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    .line 281
    .local v0, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;>;"
    iget-object v4, p0, Lcom/google/android/youtube/videos/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

    iget-object v4, v4, Lcom/google/android/youtube/core/model/VideoStreams;->hi:Lcom/google/android/youtube/core/model/Stream;

    invoke-direct {p0, v4, v3}, Lcom/google/android/youtube/videos/player/Director;->createDrmRequest(Lcom/google/android/youtube/core/model/Stream;Ljava/lang/String;)Lcom/google/android/youtube/videos/DrmRequest;

    move-result-object v1

    .line 282
    .local v1, hiRequest:Lcom/google/android/youtube/videos/DrmRequest;
    iget-object v4, p0, Lcom/google/android/youtube/videos/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

    iget-boolean v4, v4, Lcom/google/android/youtube/core/model/VideoStreams;->supportsQualityToggle:Z

    if-nez v4, :cond_1

    .line 283
    iget-object v4, p0, Lcom/google/android/youtube/videos/player/Director;->drmManager:Lcom/google/android/youtube/videos/DrmManager;

    invoke-virtual {v4, v1, v0}, Lcom/google/android/youtube/videos/DrmManager;->request(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V

    .line 290
    :goto_1
    return-void

    .line 279
    .end local v0           #callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;>;"
    .end local v1           #hiRequest:Lcom/google/android/youtube/videos/DrmRequest;
    :cond_0
    const/4 v6, 0x1

    goto :goto_0

    .line 285
    .restart local v0       #callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;>;"
    .restart local v1       #hiRequest:Lcom/google/android/youtube/videos/DrmRequest;
    :cond_1
    iget-object v4, p0, Lcom/google/android/youtube/videos/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

    iget-object v4, v4, Lcom/google/android/youtube/core/model/VideoStreams;->lo:Lcom/google/android/youtube/core/model/Stream;

    invoke-direct {p0, v4, v3}, Lcom/google/android/youtube/videos/player/Director;->createDrmRequest(Lcom/google/android/youtube/core/model/Stream;Ljava/lang/String;)Lcom/google/android/youtube/videos/DrmRequest;

    move-result-object v2

    .line 287
    .local v2, loRequest:Lcom/google/android/youtube/videos/DrmRequest;
    iget-object v4, p0, Lcom/google/android/youtube/videos/player/Director;->drmManager:Lcom/google/android/youtube/videos/DrmManager;

    iget-boolean v5, p0, Lcom/google/android/youtube/videos/player/Director;->hq:Z

    if-eqz v5, :cond_2

    move-object v5, v1

    :goto_2
    invoke-virtual {v4, v5, v0}, Lcom/google/android/youtube/videos/DrmManager;->request(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V

    .line 288
    iget-object v4, p0, Lcom/google/android/youtube/videos/player/Director;->drmManager:Lcom/google/android/youtube/videos/DrmManager;

    iget-boolean v5, p0, Lcom/google/android/youtube/videos/player/Director;->hq:Z

    if-eqz v5, :cond_3

    move-object v5, v2

    :goto_3
    invoke-virtual {v4, v5, v0}, Lcom/google/android/youtube/videos/DrmManager;->request(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/core/async/Callback;)V

    goto :goto_1

    :cond_2
    move-object v5, v2

    .line 287
    goto :goto_2

    :cond_3
    move-object v5, v1

    .line 288
    goto :goto_3
.end method

.method private createDrmRequest(Lcom/google/android/youtube/core/model/Stream;Ljava/lang/String;)Lcom/google/android/youtube/videos/DrmRequest;
    .locals 3
    .parameter "stream"
    .parameter "playbackId"

    .prologue
    .line 293
    iget-boolean v0, p1, Lcom/google/android/youtube/core/model/Stream;->isOffline:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/youtube/videos/DrmRequest;->createOfflineRequest(Lcom/google/android/youtube/core/model/Stream;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Z)Lcom/google/android/youtube/videos/DrmRequest;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-static {p1, v0, p2, v1}, Lcom/google/android/youtube/videos/DrmRequest;->createStreamingRequest(Lcom/google/android/youtube/core/model/Stream;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/videos/DrmRequest;

    move-result-object v0

    goto :goto_0
.end method

.method private initCallbacks()V
    .locals 3

    .prologue
    .line 557
    new-instance v0, Lcom/google/android/youtube/core/async/ActivityCallback;

    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/youtube/videos/player/Director$1;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/videos/player/Director$1;-><init>(Lcom/google/android/youtube/videos/player/Director;)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->purchasesCallback:Lcom/google/android/youtube/core/async/Callback;

    .line 576
    new-instance v0, Lcom/google/android/youtube/videos/player/Director$2;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/videos/player/Director$2;-><init>(Lcom/google/android/youtube/videos/player/Director;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->videoCallback:Lcom/google/android/youtube/core/async/Callback;

    .line 588
    new-instance v0, Lcom/google/android/youtube/core/async/ActivityCallback;

    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/youtube/videos/player/Director$3;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/videos/player/Director$3;-><init>(Lcom/google/android/youtube/videos/player/Director;)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->offlineVideoStreamsCallback:Lcom/google/android/youtube/core/async/Callback;

    .line 605
    new-instance v0, Lcom/google/android/youtube/core/async/ActivityCallback;

    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/youtube/videos/player/Director$4;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/videos/player/Director$4;-><init>(Lcom/google/android/youtube/videos/player/Director;)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->onlineVideoStreamsCallback:Lcom/google/android/youtube/core/async/Callback;

    .line 617
    new-instance v0, Lcom/google/android/youtube/videos/player/Director$5;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/videos/player/Director$5;-><init>(Lcom/google/android/youtube/videos/player/Director;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->playerHandler:Landroid/os/Handler;

    .line 672
    return-void
.end method

.method private isMediaKey(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 455
    const/16 v0, 0x4f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x58

    if-eq p1, v0, :cond_0

    const/16 v0, 0x57

    if-eq p1, v0, :cond_0

    const/16 v0, 0x55

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7e

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onInitError(Ljava/lang/Exception;)V
    .locals 2
    .parameter "exception"

    .prologue
    .line 464
    const/16 v0, 0x193

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/ErrorHelper;->isHttpException(Ljava/lang/Throwable;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->activity:Landroid/app/Activity;

    const v1, 0x7f0c0045

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/ErrorHelper;->showToast(Landroid/content/Context;I)V

    .line 469
    :goto_0
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 470
    return-void

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/ErrorHelper;->showToast(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private onPurchaseResponse(Lcom/google/android/youtube/core/model/Purchase;)V
    .locals 4
    .parameter "purchase"

    .prologue
    const/4 v3, 0x0

    .line 236
    iput-object p1, p0, Lcom/google/android/youtube/videos/player/Director;->purchase:Lcom/google/android/youtube/core/model/Purchase;

    .line 237
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    sget-object v1, Lcom/google/android/youtube/core/model/Video$State;->PLAYABLE:Lcom/google/android/youtube/core/model/Video$State;

    if-eq v0, v1, :cond_0

    .line 238
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "PlayCannotProceeed"

    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/youtube/core/Analytics;->trackPlaybackEvent(Ljava/lang/String;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/Stream$Quality;)V

    .line 239
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    iget v1, v1, Lcom/google/android/youtube/core/model/Video$State;->explanationId:I

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showErrorMessage(I)V

    .line 240
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showControls()V

    .line 258
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/player/Director;->stopped:Z

    if-eqz v0, :cond_2

    .line 242
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->hideLoading()V

    .line 243
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/player/Director;->ended:Z

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showReplay()V

    goto :goto_0

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showContinue()V

    goto :goto_0

    .line 249
    :cond_2
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->userPrefs:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume_time_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/videos/player/Director;->resumeTime:I

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loaded resume time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/videos/player/Director;->resumeTime:I

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->secondsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 251
    iget v0, p0, Lcom/google/android/youtube/videos/player/Director;->resumeTime:I

    const/16 v1, 0x7530

    if-le v0, v1, :cond_3

    .line 252
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/Director;->showResumeTimeDialog()V

    goto :goto_0

    .line 254
    :cond_3
    iput v3, p0, Lcom/google/android/youtube/videos/player/Director;->resumeTime:I

    .line 255
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/player/Director;->startVideo()V

    goto :goto_0
.end method

.method private onVideoEnded()V
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/videos/player/Director;->ended:Z

    .line 346
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showReplay()V

    .line 347
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/videos/player/Director;->setFullscreen(Z)V

    .line 348
    return-void
.end method

.method private onVideoResponse(Lcom/google/android/youtube/core/model/Video;)V
    .locals 3
    .parameter "video"

    .prologue
    .line 218
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/Video;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->v(Ljava/lang/String;)V

    .line 219
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->activity:Landroid/app/Activity;

    const v1, 0x7f0c0045

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/ErrorHelper;->showToast(Landroid/content/Context;I)V

    .line 221
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 233
    :goto_0
    return-void

    .line 225
    :cond_0
    iput-object p1, p0, Lcom/google/android/youtube/videos/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    .line 226
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->listener:Lcom/google/android/youtube/videos/player/Director$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/videos/player/Director$Listener;->onVideo(Lcom/google/android/youtube/core/model/Video;)V

    .line 227
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->subtitleHelper:Lcom/google/android/youtube/core/player/SubtitleHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/player/SubtitleHelper;->init(Lcom/google/android/youtube/core/model/Video;)V

    .line 228
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->purchase:Lcom/google/android/youtube/core/model/Purchase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->purchase:Lcom/google/android/youtube/core/model/Purchase;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->videoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->purchase:Lcom/google/android/youtube/core/model/Purchase;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/videos/player/Director;->onPurchaseResponse(Lcom/google/android/youtube/core/model/Purchase;)V

    goto :goto_0

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->purchasesRequester:Lcom/google/android/youtube/core/async/Requester;

    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-static {v1}, Lcom/google/android/youtube/core/async/GDataRequests;->getMyPurchasesRequest(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->purchasesCallback:Lcom/google/android/youtube/core/async/Callback;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    goto :goto_0
.end method

.method private onVideoStreamsError(Ljava/lang/Exception;)V
    .locals 3
    .parameter "exception"

    .prologue
    const/4 v2, 0x1

    .line 298
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->hideLoading()V

    .line 299
    instance-of v0, p1, Lcom/google/android/youtube/videos/async/StreamNotReadyException;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    const v1, 0x7f0c0081

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showErrorMessage(IZ)V

    .line 310
    :goto_0
    return-void

    .line 301
    :cond_0
    instance-of v0, p1, Lcom/google/android/youtube/core/player/MissingStreamException;

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    const v1, 0x7f0c004a

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showErrorMessage(IZ)V

    goto :goto_0

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    const v1, 0x7f0c0048

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showErrorMessage(IZ)V

    goto :goto_0
.end method

.method private playVideo()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 313
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 315
    iget-boolean v2, p0, Lcom/google/android/youtube/videos/player/Director;->hq:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/VideoStreams;->hi:Lcom/google/android/youtube/core/model/Stream;

    move-object v0, v2

    .line 317
    .local v0, stream:Lcom/google/android/youtube/core/model/Stream;
    :goto_0
    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    iget-object v3, p0, Lcom/google/android/youtube/videos/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/google/android/youtube/core/model/Stream;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    :goto_1
    invoke-virtual {v2, v3, v5, v4}, Lcom/google/android/youtube/core/player/Tracker;->reset(Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/VastAd;Lcom/google/android/youtube/core/model/Stream$Quality;)V

    .line 319
    if-eqz v0, :cond_4

    .line 320
    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->streamParams:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/videos/player/Director;->streamParams:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 322
    .local v1, streamUri:Landroid/net/Uri;
    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Stream;->buildUpon()Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/youtube/core/model/Stream$Builder;->uri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/youtube/core/model/Stream$Builder;->build()Lcom/google/android/youtube/core/model/Stream;

    move-result-object v0

    .line 324
    .end local v1           #streamUri:Landroid/net/Uri;
    :cond_0
    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    iget-object v3, p0, Lcom/google/android/youtube/videos/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

    iget-boolean v3, v3, Lcom/google/android/youtube/core/model/VideoStreams;->supportsQualityToggle:Z

    invoke-interface {v2, v3}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setSupportsQualityToggle(Z)V

    .line 325
    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    iget-boolean v3, p0, Lcom/google/android/youtube/videos/player/Director;->hq:Z

    invoke-interface {v2, v3}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setHQ(Z)V

    .line 326
    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    iget-object v3, p0, Lcom/google/android/youtube/videos/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {v3}, Lcom/google/android/youtube/core/model/Video;->isMovie()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->MOVIE:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    :goto_2
    invoke-interface {v2, v3}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setStyle(Lcom/google/android/youtube/core/player/ControllerOverlay$Style;)V

    .line 329
    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->listener:Lcom/google/android/youtube/videos/player/Director$Listener;

    invoke-interface {v2, v0}, Lcom/google/android/youtube/videos/player/Director$Listener;->onStream(Lcom/google/android/youtube/core/model/Stream;)V

    .line 335
    :goto_3
    return-void

    .line 315
    .end local v0           #stream:Lcom/google/android/youtube/core/model/Stream;
    :cond_1
    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/VideoStreams;->lo:Lcom/google/android/youtube/core/model/Stream;

    move-object v0, v2

    goto :goto_0

    .restart local v0       #stream:Lcom/google/android/youtube/core/model/Stream;
    :cond_2
    move-object v4, v5

    .line 317
    goto :goto_1

    .line 326
    :cond_3
    sget-object v3, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->YOUTUBE:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    goto :goto_2

    .line 331
    :cond_4
    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v3, "PlayErrorNoStream"

    iget-object v4, p0, Lcom/google/android/youtube/videos/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    sget-object v5, Lcom/google/android/youtube/core/model/Stream$Quality;->UNKNOWN:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/youtube/core/Analytics;->trackPlaybackEvent(Ljava/lang/String;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/Stream$Quality;)V

    .line 332
    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    const v3, 0x7f0c0045

    invoke-interface {v2, v3}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showErrorMessage(I)V

    .line 333
    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v2}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showControls()V

    goto :goto_3
.end method

.method private showResumeTimeDialog()V
    .locals 6

    .prologue
    .line 675
    iget v1, p0, Lcom/google/android/youtube/videos/player/Director;->resumeTime:I

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->secondsToString(I)Ljava/lang/String;

    move-result-object v0

    .line 676
    .local v0, resumeTimeString:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->activity:Landroid/app/Activity;

    const v3, 0x7f0c00a8

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    new-instance v3, Lcom/google/android/youtube/videos/player/Director$7;

    invoke-direct {v3, p0}, Lcom/google/android/youtube/videos/player/Director$7;-><init>(Lcom/google/android/youtube/videos/player/Director;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    new-instance v3, Lcom/google/android/youtube/videos/player/Director$6;

    invoke-direct {v3, p0}, Lcom/google/android/youtube/videos/player/Director$6;-><init>(Lcom/google/android/youtube/videos/player/Director;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 694
    return-void
.end method

.method private showShortClockConfirmationDialog()V
    .locals 6

    .prologue
    .line 697
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->activity:Landroid/app/Activity;

    const v2, 0x7f0c00a9

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/youtube/videos/player/Director;->purchase:Lcom/google/android/youtube/core/model/Purchase;

    iget-object v5, v5, Lcom/google/android/youtube/core/model/Purchase;->pricePaid:Lcom/google/android/youtube/core/model/PricingStructure;

    iget-object v5, v5, Lcom/google/android/youtube/core/model/PricingStructure;->duration:Lcom/google/android/youtube/core/model/Duration;

    invoke-virtual {v5}, Lcom/google/android/youtube/core/model/Duration;->inHours()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/google/android/youtube/videos/player/Director$10;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/videos/player/Director$10;-><init>(Lcom/google/android/youtube/videos/player/Director;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    new-instance v2, Lcom/google/android/youtube/videos/player/Director$9;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/videos/player/Director$9;-><init>(Lcom/google/android/youtube/videos/player/Director;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/youtube/videos/player/Director$8;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/videos/player/Director$8;-><init>(Lcom/google/android/youtube/videos/player/Director;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 727
    return-void
.end method


# virtual methods
.method public initVideo(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)V
    .locals 1
    .parameter "videoId"
    .parameter "userAuth"

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/youtube/videos/player/Director;->initVideo(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public initVideo(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Ljava/lang/String;)V
    .locals 5
    .parameter "videoId"
    .parameter "userAuth"
    .parameter "streamParams"

    .prologue
    const/4 v4, 0x0

    .line 192
    invoke-static {p1}, Lcom/google/android/youtube/core/L;->v(Ljava/lang/String;)V

    .line 193
    iput-object p1, p0, Lcom/google/android/youtube/videos/player/Director;->videoId:Ljava/lang/String;

    .line 194
    iput-object p3, p0, Lcom/google/android/youtube/videos/player/Director;->streamParams:Ljava/lang/String;

    .line 196
    const-string v1, "userAuth can\'t be null"

    invoke-static {p2, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/UserAuth;

    iput-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    .line 197
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->activity:Landroid/app/Activity;

    iget-object v2, p2, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->userPrefs:Landroid/content/SharedPreferences;

    .line 199
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->stopVideo()V

    .line 200
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->listener:Lcom/google/android/youtube/videos/player/Director$Listener;

    invoke-interface {v1}, Lcom/google/android/youtube/videos/player/Director$Listener;->onReset()V

    .line 201
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/Tracker;->trackVideoInit()V

    .line 202
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    invoke-direct {p0, v1}, Lcom/google/android/youtube/videos/player/Director;->onVideoResponse(Lcom/google/android/youtube/core/model/Video;)V

    .line 215
    :goto_0
    return-void

    .line 208
    :cond_0
    iput-object v4, p0, Lcom/google/android/youtube/videos/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    .line 209
    iput-object v4, p0, Lcom/google/android/youtube/videos/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

    .line 210
    iput-object v4, p0, Lcom/google/android/youtube/videos/player/Director;->purchase:Lcom/google/android/youtube/core/model/Purchase;

    .line 211
    invoke-static {p1}, Lcom/google/android/youtube/core/async/GDataRequests;->getVideoRequest(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    .line 212
    .local v0, request:Lcom/google/android/youtube/core/async/GDataRequest;
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->videoRequester:Lcom/google/android/youtube/core/async/Requester;

    new-instance v2, Lcom/google/android/youtube/core/async/ActivityCallback;

    iget-object v3, p0, Lcom/google/android/youtube/videos/player/Director;->activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/google/android/youtube/videos/player/Director;->videoCallback:Lcom/google/android/youtube/core/async/Callback;

    invoke-direct {v2, v3, v4}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v1, v0, v2}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    goto :goto_0
.end method

.method public newMediaPlayer(Lcom/google/android/youtube/core/model/Stream;)Landroid/media/MediaPlayer;
    .locals 3
    .parameter "stream"

    .prologue
    .line 166
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-boolean v1, p1, Lcom/google/android/youtube/core/model/Stream;->isOffline:Z

    if-eqz v1, :cond_0

    .line 168
    new-instance v0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;

    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->drmManager:Lcom/google/android/youtube/videos/DrmManager;

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;-><init>(Landroid/content/Context;Lcom/google/android/youtube/videos/DrmManager;)V

    .line 171
    .local v0, player:Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;
    iget-wide v1, p1, Lcom/google/android/youtube/core/model/Stream;->sizeInBytes:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->setTotalFileSize(J)V

    move-object v1, v0

    .line 174
    .end local v0           #player:Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/google/android/youtube/videos/player/DrmMediaPlayer;

    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->drmManager:Lcom/google/android/youtube/videos/DrmManager;

    invoke-direct {v1, v2}, Lcom/google/android/youtube/videos/player/DrmMediaPlayer;-><init>(Lcom/google/android/youtube/videos/DrmManager;)V

    goto :goto_0
.end method

.method public onCC()V
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "CC"

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/Analytics;->trackEvent(Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->subtitleHelper:Lcom/google/android/youtube/core/player/SubtitleHelper;

    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/SubtitleHelper;->onButtonClick(Ljava/lang/String;)V

    .line 495
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 512
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setFullscreen(Z)V

    .line 513
    return-void

    .line 512
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onContinue()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->hideStatus()V

    .line 381
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/videos/player/Director;->stopped:Z

    .line 382
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/Tracker;->trackVideoInit()V

    .line 383
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

    if-nez v0, :cond_0

    .line 384
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/player/Director;->startVideo()V

    .line 388
    :goto_0
    return-void

    .line 386
    :cond_0
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/Director;->acquireLicensesAndPlayVideo()V

    goto :goto_0
.end method

.method public onExcessiveBuffering()V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

    iget-boolean v0, v0, Lcom/google/android/youtube/core/model/VideoStreams;->supportsQualityToggle:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->isHQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/player/Director;->onHQ()V

    .line 394
    :cond_0
    return-void
.end method

.method public onHQ()V
    .locals 4

    .prologue
    .line 483
    iget-boolean v1, p0, Lcom/google/android/youtube/videos/player/Director;->hq:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/youtube/videos/player/Director;->hq:Z

    .line 484
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v2, "HQ"

    iget-boolean v3, p0, Lcom/google/android/youtube/videos/player/Director;->hq:Z

    if-eqz v3, :cond_1

    const-string v3, "On"

    :goto_1
    invoke-interface {v1, v2, v3}, Lcom/google/android/youtube/core/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/Tracker;->trackVideoInit()V

    .line 486
    iget-boolean v1, p0, Lcom/google/android/youtube/videos/player/Director;->hq:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/VideoStreams;->hi:Lcom/google/android/youtube/core/model/Stream;

    move-object v0, v1

    .line 487
    .local v0, stream:Lcom/google/android/youtube/core/model/Stream;
    :goto_2
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/player/Tracker;->trackVideoPrepare(Landroid/net/Uri;)V

    .line 488
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->loadVideo(Lcom/google/android/youtube/core/model/Stream;I)V

    .line 489
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    iget-boolean v2, p0, Lcom/google/android/youtube/videos/player/Director;->hq:Z

    invoke-interface {v1, v2}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setHQ(Z)V

    .line 490
    return-void

    .line 483
    .end local v0           #stream:Lcom/google/android/youtube/core/model/Stream;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 484
    :cond_1
    const-string v3, "Off"

    goto :goto_1

    .line 486
    :cond_2
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/VideoStreams;->lo:Lcom/google/android/youtube/core/model/Stream;

    move-object v0, v1

    goto :goto_2
.end method

.method public onHidden()V
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->listener:Lcom/google/android/youtube/videos/player/Director$Listener;

    invoke-interface {v0}, Lcom/google/android/youtube/videos/player/Director$Listener;->onControllerHidden()V

    .line 503
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 419
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 420
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/player/Director;->isMediaKey(I)Z

    move-result v0

    .line 447
    :goto_0
    return v0

    .line 423
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 447
    const/4 v0, 0x0

    goto :goto_0

    .line 426
    :sswitch_0
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->pauseVideo()V

    :goto_1
    move v0, v1

    .line 431
    goto :goto_0

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->playVideo()V

    goto :goto_1

    .line 433
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    .line 434
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->playVideo()V

    :cond_2
    move v0, v1

    .line 436
    goto :goto_0

    .line 438
    :sswitch_2
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 439
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->pauseVideo()V

    :cond_3
    move v0, v1

    .line 441
    goto :goto_0

    :sswitch_3
    move v0, v1

    .line 445
    goto :goto_0

    .line 423
    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x57 -> :sswitch_3
        0x58 -> :sswitch_3
        0x7e -> :sswitch_2
        0x7f -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 451
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/player/Director;->isMediaKey(I)Z

    move-result v0

    return v0
.end method

.method public onNext()V
    .locals 0

    .prologue
    .line 476
    return-void
.end method

.method public onPrevious()V
    .locals 0

    .prologue
    .line 480
    return-void
.end method

.method public onReplay()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 366
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 367
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->hideStatus()V

    .line 368
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->resetTime()V

    .line 369
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/Tracker;->trackVideoInit()V

    .line 370
    iput-boolean v1, p0, Lcom/google/android/youtube/videos/player/Director;->ended:Z

    .line 371
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/player/Director;->stopped:Z

    if-eqz v0, :cond_0

    .line 372
    iput-boolean v1, p0, Lcom/google/android/youtube/videos/player/Director;->stopped:Z

    .line 373
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/Director;->playVideo()V

    .line 377
    :goto_0
    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->playVideo()V

    goto :goto_0
.end method

.method public onRetry()V
    .locals 3

    .prologue
    .line 351
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->hideStatus()V

    .line 352
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/Tracker;->trackVideoInit()V

    .line 353
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

    if-nez v1, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/player/Director;->startVideo()V

    .line 363
    :goto_0
    return-void

    .line 356
    :cond_0
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->getCurrentPosition()I

    move-result v0

    .line 357
    .local v0, currentTime:I
    if-lez v0, :cond_1

    .line 358
    iput v0, p0, Lcom/google/android/youtube/videos/player/Director;->resumeTime:I

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume time set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/youtube/videos/player/Director;->resumeTime:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Lcom/google/android/youtube/core/utils/Util;->secondsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " while retrying"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 361
    :cond_1
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/Director;->acquireLicensesAndPlayVideo()V

    goto :goto_0
.end method

.method public onShown()V
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->listener:Lcom/google/android/youtube/videos/player/Director$Listener;

    invoke-interface {v0}, Lcom/google/android/youtube/videos/player/Director$Listener;->onControllerShown()V

    .line 507
    return-void
.end method

.method public onStream(Lcom/google/android/youtube/core/model/Stream;)V
    .locals 2
    .parameter "stream"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/Tracker;->trackVideoPrepare(Landroid/net/Uri;)V

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resuming video from time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/videos/player/Director;->resumeTime:I

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->secondsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    iget v1, p0, Lcom/google/android/youtube/videos/player/Director;->resumeTime:I

    invoke-virtual {v0, p1, v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->loadVideo(Lcom/google/android/youtube/core/model/Stream;I)V

    .line 342
    return-void
.end method

.method public onToggleFullscreen(Z)V
    .locals 1
    .parameter "fullscreen"

    .prologue
    .line 498
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->listener:Lcom/google/android/youtube/videos/player/Director$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/videos/player/Director$Listener;->onToggleFullscreen(Z)V

    .line 499
    return-void
.end method

.method public onVideoStreamsResponse(Lcom/google/android/youtube/core/model/VideoStreams;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 271
    iput-object p1, p0, Lcom/google/android/youtube/videos/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

    .line 272
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/Tracker;->trackVideoInit()V

    .line 273
    invoke-direct {p0}, Lcom/google/android/youtube/videos/player/Director;->acquireLicensesAndPlayVideo()V

    .line 274
    return-void
.end method

.method public onWarningAccepted(Lcom/google/android/youtube/core/player/WarningHelper;)V
    .locals 0
    .parameter "helper"

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/player/Director;->startVideo()V

    .line 517
    return-void
.end method

.method public onWarningDeclined(Lcom/google/android/youtube/core/player/WarningHelper;)V
    .locals 1
    .parameter "helper"

    .prologue
    .line 520
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 521
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 400
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 401
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->pauseVideo()V

    .line 404
    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 410
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 411
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->playVideo()V

    .line 414
    :cond_0
    return-void
.end method

.method public reinit()V
    .locals 3

    .prologue
    .line 179
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 180
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->videoId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->videoId:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->streamParams:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/youtube/videos/player/Director;->initVideo(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Ljava/lang/String;)V

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_0
    const-string v0, "can\'t retry"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->release()V

    .line 540
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/Tracker;->release()V

    .line 541
    return-void
.end method

.method public setFullscreen(Z)V
    .locals 1
    .parameter "fullscreen"

    .prologue
    .line 544
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setFullscreen(Z)V

    .line 545
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/videos/player/Director;->onToggleFullscreen(Z)V

    .line 546
    return-void
.end method

.method public setStopped()V
    .locals 3

    .prologue
    .line 524
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->userPrefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/videos/player/Director;->resumeTime:I

    .line 526
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director;->userPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume_time_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/youtube/videos/player/Director;->resumeTime:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saved resume time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/videos/player/Director;->resumeTime:I

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->secondsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 532
    :cond_0
    iget v0, p0, Lcom/google/android/youtube/videos/player/Director;->bufferingCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 533
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/youtube/videos/player/Director;->bufferingCount:I

    .line 535
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/videos/player/Director;->stopped:Z

    .line 536
    return-void
.end method

.method public startVideo()V
    .locals 3

    .prologue
    .line 261
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showLoading()V

    .line 262
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/videos/player/Director;->onVideoStreamsResponse(Lcom/google/android/youtube/core/model/VideoStreams;)V

    .line 268
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/async/GDataRequests;->getStreamsRequest(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    .line 266
    .local v0, request:Lcom/google/android/youtube/core/async/GDataRequest;
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director;->offlineStreamsRequester:Lcom/google/android/youtube/core/async/Requester;

    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director;->offlineVideoStreamsCallback:Lcom/google/android/youtube/core/async/Callback;

    invoke-interface {v1, v0, v2}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    goto :goto_0
.end method
