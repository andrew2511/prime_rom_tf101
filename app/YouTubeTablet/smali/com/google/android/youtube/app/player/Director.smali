.class public Lcom/google/android/youtube/app/player/Director;
.super Ljava/lang/Object;
.source "Director.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;
.implements Lcom/google/android/youtube/core/player/AdOverlay$Listener;
.implements Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;
.implements Lcom/google/android/youtube/core/player/StatusOverlay$Listener;
.implements Lcom/google/android/youtube/core/player/WarningHelper$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/app/player/Director$Listener;
    }
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private ad:Lcom/google/android/youtube/core/model/VastAd;

.field private adCallback:Lcom/google/android/youtube/core/async/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/model/VastAd;",
            ">;"
        }
    .end annotation
.end field

.field private final adHelper:Lcom/google/android/youtube/core/player/AdHelper;

.field private final adOverlay:Lcom/google/android/youtube/core/player/AdOverlay;

.field private final adultContentHelper:Lcom/google/android/youtube/app/player/AdultContentHelper;

.field private final analytics:Lcom/google/android/youtube/core/Analytics;

.field private autoPlay:Z

.field private brandingCallback:Lcom/google/android/youtube/core/async/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Branding;",
            ">;"
        }
    .end annotation
.end field

.field private final brandingOverlay:Lcom/google/android/youtube/core/player/BrandingOverlay;

.field private final brandingRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Branding;",
            ">;"
        }
    .end annotation
.end field

.field private final controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

.field private volatile ended:Z

.field private finishOnEnded:Z

.field private forceFullscreen:Z

.field private hq:Z

.field private lastBrandingRequest:Lcom/google/android/youtube/core/async/GDataRequest;

.field private final listener:Lcom/google/android/youtube/app/player/Director$Listener;

.field private final myPlaylistVideosRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;>;"
        }
    .end annotation
.end field

.field private final player:Lcom/google/android/youtube/core/player/YouTubePlayer;

.field private playerHandler:Landroid/os/Handler;

.field private final playerTracker:Lcom/google/android/youtube/core/player/Tracker;

.field private playingAd:Z

.field private playlistAuthenticate:Z

.field private playlistAutoSkip:Z

.field private playlistCallback:Lcom/google/android/youtube/core/async/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;>;"
        }
    .end annotation
.end field

.field private playlistCurrentIndex:I

.field private final playlistIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private playlistNextPageUri:Landroid/net/Uri;

.field private playlistUri:Landroid/net/Uri;

.field private final playlistVideosRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;>;"
        }
    .end annotation
.end field

.field private final revShareClientId:Ljava/lang/String;

.field private stopped:Z

.field private stoppedOnAd:Z

.field private streamParams:Ljava/lang/String;

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

.field private final subtitleHelper:Lcom/google/android/youtube/core/player/SubtitleHelper;

.field private final userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

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

.field private videoStreamsCallback:Lcom/google/android/youtube/core/async/Callback;
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

.field private final warningHelper:Lcom/google/android/youtube/core/player/WarningHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/player/YouTubePlayer;Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/google/android/youtube/app/Requesters;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/Analytics;Ljava/lang/String;Lcom/google/android/youtube/app/player/Director$Listener;Lcom/google/android/youtube/core/player/ControllerOverlay;)V
    .locals 11
    .parameter "player"
    .parameter "activity"
    .parameter "preferences"
    .parameter "requesters"
    .parameter "userAuthorizer"
    .parameter "analytics"
    .parameter "revShareClientId"
    .parameter "listener"
    .parameter "controllerOverlay"

    .prologue
    .line 223
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/google/android/youtube/app/player/Director;-><init>(Lcom/google/android/youtube/core/player/YouTubePlayer;Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/google/android/youtube/app/Requesters;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/Analytics;Ljava/lang/String;Lcom/google/android/youtube/app/player/Director$Listener;Lcom/google/android/youtube/core/player/ControllerOverlay;Lcom/google/android/youtube/core/player/StatusOverlay;)V

    .line 233
    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/core/player/YouTubePlayer;Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/google/android/youtube/app/Requesters;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/Analytics;Ljava/lang/String;Lcom/google/android/youtube/app/player/Director$Listener;Lcom/google/android/youtube/core/player/ControllerOverlay;Lcom/google/android/youtube/core/player/StatusOverlay;)V
    .locals 16
    .parameter "player"
    .parameter "activity"
    .parameter "preferences"
    .parameter "requesters"
    .parameter "userAuthorizer"
    .parameter "analytics"
    .parameter "revShareClientId"
    .parameter "listener"
    .parameter "controllerOverlay"
    .parameter "statusOverlay"

    .prologue
    .line 155
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 156
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    .line 157
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/player/Director;->activity:Landroid/app/Activity;

    .line 158
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/player/Director;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 159
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/player/Director;->analytics:Lcom/google/android/youtube/core/Analytics;

    .line 160
    move-object/from16 v0, p8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/player/Director;->listener:Lcom/google/android/youtube/app/player/Director$Listener;

    .line 161
    move-object/from16 v0, p9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    .line 162
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/youtube/app/player/Director;->autoPlay:Z

    .line 163
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/player/Director;->revShareClientId:Ljava/lang/String;

    .line 164
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/youtube/app/player/Director;->playlistAutoSkip:Z

    .line 166
    invoke-interface/range {p4 .. p4}, Lcom/google/android/youtube/app/Requesters;->getVideoRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/player/Director;->videoRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 167
    invoke-interface/range {p4 .. p4}, Lcom/google/android/youtube/app/Requesters;->getPlaylistVideosRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/player/Director;->playlistVideosRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 168
    invoke-interface/range {p4 .. p4}, Lcom/google/android/youtube/app/Requesters;->getMyPlaylistVideosRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/player/Director;->myPlaylistVideosRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 169
    invoke-interface/range {p4 .. p4}, Lcom/google/android/youtube/app/Requesters;->getBrandingRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/player/Director;->brandingRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 170
    invoke-interface/range {p4 .. p4}, Lcom/google/android/youtube/app/Requesters;->getStreamsRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/player/Director;->streamsRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 172
    new-instance v5, Lcom/google/android/youtube/core/player/BrandingOverlay;

    move-object v0, v5

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/player/BrandingOverlay;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/player/YouTubePlayer;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/player/Director;->brandingOverlay:Lcom/google/android/youtube/core/player/BrandingOverlay;

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/player/Director;->brandingOverlay:Lcom/google/android/youtube/core/player/BrandingOverlay;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/youtube/core/player/BrandingOverlay;->install()V

    .line 174
    new-instance v8, Lcom/google/android/youtube/core/player/SubtitleOverlay;

    move-object v0, v8

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/player/SubtitleOverlay;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/player/YouTubePlayer;)V

    .line 175
    .local v8, subtitleOverlay:Lcom/google/android/youtube/core/player/SubtitleOverlay;
    invoke-virtual {v8}, Lcom/google/android/youtube/core/player/SubtitleOverlay;->install()V

    .line 177
    move-object/from16 v0, p9

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setListener(Lcom/google/android/youtube/core/player/ControllerOverlay$Listener;)V

    .line 178
    invoke-interface/range {p9 .. p9}, Lcom/google/android/youtube/core/player/ControllerOverlay;->install()V

    .line 179
    new-instance v5, Lcom/google/android/youtube/core/player/AdOverlay;

    move-object v0, v5

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/player/AdOverlay;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/player/YouTubePlayer;Lcom/google/android/youtube/core/player/AdOverlay$Listener;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/player/Director;->adOverlay:Lcom/google/android/youtube/core/player/AdOverlay;

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/player/Director;->adOverlay:Lcom/google/android/youtube/core/player/AdOverlay;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/youtube/core/player/AdOverlay;->install()V

    .line 181
    if-eqz p10, :cond_0

    .line 182
    move-object/from16 v0, p10

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/StatusOverlay;->setListener(Lcom/google/android/youtube/core/player/StatusOverlay$Listener;)V

    .line 183
    invoke-interface/range {p10 .. p10}, Lcom/google/android/youtube/core/player/StatusOverlay;->install()V

    .line 186
    :cond_0
    const-string v5, "default_hq"

    const/4 v6, 0x0

    move-object/from16 v0, p3

    move-object v1, v5

    move v2, v6

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/youtube/app/player/Director;->hq:Z

    .line 187
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/youtube/app/player/Director;->hq:Z

    move v5, v0

    move-object/from16 v0, p9

    move v1, v5

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setHQ(Z)V

    .line 189
    new-instance v5, Lcom/google/android/youtube/core/player/SubtitleHelper;

    invoke-interface/range {p4 .. p4}, Lcom/google/android/youtube/app/Requesters;->getSubtitleTracksRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v10

    invoke-interface/range {p4 .. p4}, Lcom/google/android/youtube/app/Requesters;->getSubtitleRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v11

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p9

    invoke-direct/range {v5 .. v11}, Lcom/google/android/youtube/core/player/SubtitleHelper;-><init>(Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/player/SubtitleOverlay;Lcom/google/android/youtube/core/player/ControllerOverlay;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/player/Director;->subtitleHelper:Lcom/google/android/youtube/core/player/SubtitleHelper;

    .line 191
    new-instance v9, Lcom/google/android/youtube/app/player/AdultContentHelper;

    invoke-interface/range {p4 .. p4}, Lcom/google/android/youtube/app/Requesters;->getMyProfileRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v14

    move-object/from16 v10, p2

    move-object/from16 v11, p0

    move-object/from16 v12, p3

    move-object/from16 v13, p5

    invoke-direct/range {v9 .. v14}, Lcom/google/android/youtube/app/player/AdultContentHelper;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/player/Director;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/async/Requester;)V

    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/player/Director;->adultContentHelper:Lcom/google/android/youtube/app/player/AdultContentHelper;

    .line 193
    new-instance v5, Lcom/google/android/youtube/core/player/WarningHelper;

    const-string v6, "warning_3d"

    const v7, 0x7f0d0013

    move-object/from16 v0, p2

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v0, v5

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    move-object v3, v6

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/player/WarningHelper;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/player/WarningHelper$Listener;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/player/Director;->warningHelper:Lcom/google/android/youtube/core/player/WarningHelper;

    .line 196
    invoke-interface/range {p4 .. p4}, Lcom/google/android/youtube/app/Requesters;->getAdTagRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v12

    .line 197
    .local v12, adTagRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Ljava/lang/String;Lcom/google/android/youtube/core/model/AdTag;>;"
    invoke-interface/range {p4 .. p4}, Lcom/google/android/youtube/app/Requesters;->getVastAdRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v13

    .line 198
    .local v13, vastAdRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Landroid/net/Uri;Lcom/google/android/youtube/core/model/VastAd;>;"
    if-eqz v12, :cond_2

    if-eqz v13, :cond_2

    .line 199
    new-instance v9, Lcom/google/android/youtube/core/player/AdHelper;

    new-instance v10, Lcom/google/android/youtube/core/utils/SystemClock;

    invoke-direct {v10}, Lcom/google/android/youtube/core/utils/SystemClock;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/player/Director;->videoRequester:Lcom/google/android/youtube/core/async/Requester;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/player/Director;->streamsRequester:Lcom/google/android/youtube/core/async/Requester;

    move-object v15, v0

    move-object/from16 v11, p3

    invoke-direct/range {v9 .. v15}, Lcom/google/android/youtube/core/player/AdHelper;-><init>(Lcom/google/android/youtube/core/utils/Clock;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;)V

    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/player/Director;->adHelper:Lcom/google/android/youtube/core/player/AdHelper;

    .line 204
    :goto_1
    invoke-interface/range {p4 .. p4}, Lcom/google/android/youtube/app/Requesters;->getPingRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v5

    move-object/from16 v0, p2

    move-object/from16 v1, p6

    move-object v2, v5

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/core/player/Tracker;->newInstance(Landroid/content/Context;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/player/Tracker;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->addListener(Landroid/os/Handler;)V

    .line 207
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/player/Director;->playlistIds:Ljava/util/List;

    .line 209
    invoke-direct/range {p0 .. p0}, Lcom/google/android/youtube/app/player/Director;->initCallbacks()V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/player/Director;->playerHandler:Landroid/os/Handler;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->addListener(Landroid/os/Handler;)V

    .line 211
    return-void

    .line 186
    .end local v12           #adTagRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Ljava/lang/String;Lcom/google/android/youtube/core/model/AdTag;>;"
    .end local v13           #vastAdRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Landroid/net/Uri;Lcom/google/android/youtube/core/model/VastAd;>;"
    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/google/android/youtube/core/utils/Util;->isFastNetwork(Landroid/content/Context;)Z

    move-result v5

    goto/16 :goto_0

    .line 202
    .restart local v12       #adTagRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Ljava/lang/String;Lcom/google/android/youtube/core/model/AdTag;>;"
    .restart local v13       #vastAdRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Landroid/net/Uri;Lcom/google/android/youtube/core/model/VastAd;>;"
    :cond_2
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/player/Director;->adHelper:Lcom/google/android/youtube/core/player/AdHelper;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/google/android/youtube/app/player/Director;Lcom/google/android/youtube/core/model/Video;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/player/Director;->onVideoResponse(Lcom/google/android/youtube/core/model/Video;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/youtube/app/player/Director;)Lcom/google/android/youtube/core/model/Video;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/youtube/app/player/Director;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/google/android/youtube/app/player/Director;->playingAd:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/google/android/youtube/app/player/Director;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/player/Director;->onAdEnded(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/youtube/app/player/Director;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/android/youtube/app/player/Director;->onVideoEnded()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/youtube/app/player/Director;)Lcom/google/android/youtube/core/Analytics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->analytics:Lcom/google/android/youtube/core/Analytics;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/youtube/app/player/Director;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/player/Director;->onInitError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/youtube/app/player/Director;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/player/Director;->onVideoStreamsError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/youtube/app/player/Director;Ljava/lang/String;Lcom/google/android/youtube/core/model/VastAd;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/app/player/Director;->onAdResponse(Ljava/lang/String;Lcom/google/android/youtube/core/model/VastAd;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/youtube/app/player/Director;Lcom/google/android/youtube/core/model/Page;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/player/Director;->onPlaylistPageResponse(Lcom/google/android/youtube/core/model/Page;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/youtube/app/player/Director;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->lastBrandingRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/android/youtube/app/player/Director;Lcom/google/android/youtube/core/async/GDataRequest;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/android/youtube/app/player/Director;->lastBrandingRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/android/youtube/app/player/Director;)Lcom/google/android/youtube/app/player/Director$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->listener:Lcom/google/android/youtube/app/player/Director$Listener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/youtube/app/player/Director;)Lcom/google/android/youtube/core/player/YouTubePlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    return-object v0
.end method

.method private getPlaylistUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->playlistNextPageUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->playlistNextPageUri:Landroid/net/Uri;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->playlistUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private hasNext()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 626
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->playlistUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/youtube/app/player/Director;->playlistCurrentIndex:I

    iget-object v1, p0, Lcom/google/android/youtube/app/player/Director;->playlistIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->playlistNextPageUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasPrevious()Z
    .locals 1

    .prologue
    .line 631
    iget v0, p0, Lcom/google/android/youtube/app/player/Director;->playlistCurrentIndex:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initCallbacks()V
    .locals 3

    .prologue
    .line 784
    new-instance v0, Lcom/google/android/youtube/app/player/Director$1;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/player/Director$1;-><init>(Lcom/google/android/youtube/app/player/Director;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/player/Director;->videoCallback:Lcom/google/android/youtube/core/async/Callback;

    .line 796
    new-instance v0, Lcom/google/android/youtube/core/async/ActivityCallback;

    iget-object v1, p0, Lcom/google/android/youtube/app/player/Director;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/youtube/app/player/Director$2;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/app/player/Director$2;-><init>(Lcom/google/android/youtube/app/player/Director;)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/player/Director;->videoStreamsCallback:Lcom/google/android/youtube/core/async/Callback;

    .line 808
    new-instance v0, Lcom/google/android/youtube/core/async/ActivityCallback;

    iget-object v1, p0, Lcom/google/android/youtube/app/player/Director;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/youtube/app/player/Director$3;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/app/player/Director$3;-><init>(Lcom/google/android/youtube/app/player/Director;)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/player/Director;->adCallback:Lcom/google/android/youtube/core/async/Callback;

    .line 820
    new-instance v0, Lcom/google/android/youtube/core/async/ActivityCallback;

    iget-object v1, p0, Lcom/google/android/youtube/app/player/Director;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/youtube/app/player/Director$4;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/app/player/Director$4;-><init>(Lcom/google/android/youtube/app/player/Director;)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/player/Director;->playlistCallback:Lcom/google/android/youtube/core/async/Callback;

    .line 832
    new-instance v0, Lcom/google/android/youtube/core/async/ActivityCallback;

    iget-object v1, p0, Lcom/google/android/youtube/app/player/Director;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/google/android/youtube/app/player/Director$5;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/app/player/Director$5;-><init>(Lcom/google/android/youtube/app/player/Director;)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/player/Director;->brandingCallback:Lcom/google/android/youtube/core/async/Callback;

    .line 850
    new-instance v0, Lcom/google/android/youtube/app/player/Director$6;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/player/Director$6;-><init>(Lcom/google/android/youtube/app/player/Director;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/player/Director;->playerHandler:Landroid/os/Handler;

    .line 904
    return-void
.end method

.method private isMediaKey(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 550
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

.method private makePlaylistPageRequest()V
    .locals 3

    .prologue
    .line 587
    iget-boolean v0, p0, Lcom/google/android/youtube/app/player/Director;->playlistAuthenticate:Z

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/app/player/Director;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->authenticate(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V

    .line 594
    :goto_0
    return-void

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->playlistVideosRequester:Lcom/google/android/youtube/core/async/Requester;

    invoke-direct {p0}, Lcom/google/android/youtube/app/player/Director;->getPlaylistUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/async/GDataRequests;->getPlaylistVideosRequest(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/player/Director;->playlistCallback:Lcom/google/android/youtube/core/async/Callback;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    goto :goto_0
.end method

.method private maybeSkipVideo()V
    .locals 3

    .prologue
    .line 635
    iget-boolean v0, p0, Lcom/google/android/youtube/app/player/Director;->playlistAutoSkip:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/youtube/app/player/Director;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->activity:Landroid/app/Activity;

    const v1, 0x7f0d00b8

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 638
    invoke-direct {p0}, Lcom/google/android/youtube/app/player/Director;->onNextInternal()V

    .line 640
    :cond_0
    return-void
.end method

.method private onAdEnded(Z)V
    .locals 2
    .parameter "stopped"

    .prologue
    .line 382
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/player/Director;->playingAd:Z

    .line 383
    iput-boolean p1, p0, Lcom/google/android/youtube/app/player/Director;->stoppedOnAd:Z

    .line 384
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->adOverlay:Lcom/google/android/youtube/core/player/AdOverlay;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/AdOverlay;->setVisibility(I)V

    .line 385
    if-nez p1, :cond_0

    .line 386
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->adHelper:Lcom/google/android/youtube/core/player/AdHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/AdHelper;->onAdEnded()V

    .line 387
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/Tracker;->trackVideoInit()V

    .line 388
    invoke-direct {p0}, Lcom/google/android/youtube/app/player/Director;->playVideo()V

    .line 390
    :cond_0
    return-void
.end method

.method private onAdResponse(Ljava/lang/String;Lcom/google/android/youtube/core/model/VastAd;)V
    .locals 1
    .parameter "videoId"
    .parameter "ad"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 347
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/youtube/core/model/VastAd;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/youtube/core/L;->v(Ljava/lang/String;)V

    .line 348
    iput-object p2, p0, Lcom/google/android/youtube/app/player/Director;->ad:Lcom/google/android/youtube/core/model/VastAd;

    .line 349
    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/google/android/youtube/core/model/VastAd;->streamUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 350
    invoke-direct {p0}, Lcom/google/android/youtube/app/player/Director;->playAd()V

    .line 357
    :goto_1
    return-void

    .line 347
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 352
    :cond_1
    invoke-direct {p0}, Lcom/google/android/youtube/app/player/Director;->playVideo()V

    goto :goto_1

    .line 355
    :cond_2
    const-string v0, "ignoring late ad response"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onInitError(Ljava/lang/Exception;)V
    .locals 1
    .parameter "exception"

    .prologue
    .line 559
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->listener:Lcom/google/android/youtube/app/player/Director$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/app/player/Director$Listener;->onError(Ljava/lang/Exception;)V

    .line 560
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->hideStatus()V

    .line 561
    return-void
.end method

.method private onNextInternal()V
    .locals 3

    .prologue
    .line 651
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->resetTime()V

    .line 652
    iget v0, p0, Lcom/google/android/youtube/app/player/Director;->playlistCurrentIndex:I

    iget-object v1, p0, Lcom/google/android/youtube/app/player/Director;->playlistIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 653
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "Next"

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/Analytics;->trackEvent(Ljava/lang/String;)V

    .line 654
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->playlistIds:Ljava/util/List;

    iget v1, p0, Lcom/google/android/youtube/app/player/Director;->playlistCurrentIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/youtube/app/player/Director;->playlistCurrentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/player/Director;->initVideo(Ljava/lang/String;)V

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 655
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->playlistNextPageUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "Next"

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/Analytics;->trackEvent(Ljava/lang/String;)V

    .line 657
    invoke-direct {p0}, Lcom/google/android/youtube/app/player/Director;->makePlaylistPageRequest()V

    goto :goto_0
.end method

.method private onPlaylistPageResponse(Lcom/google/android/youtube/core/model/Page;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 613
    .local p1, page:Lcom/google/android/youtube/core/model/Page;,"Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;"
    iget-object v2, p1, Lcom/google/android/youtube/core/model/Page;->nextUri:Landroid/net/Uri;

    iput-object v2, p0, Lcom/google/android/youtube/app/player/Director;->playlistNextPageUri:Landroid/net/Uri;

    .line 614
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/Page;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/Video;

    .line 615
    .local v1, video:Lcom/google/android/youtube/core/model/Video;
    iget-object v2, p0, Lcom/google/android/youtube/app/player/Director;->playlistIds:Ljava/util/List;

    iget-object v3, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 617
    .end local v1           #video:Lcom/google/android/youtube/core/model/Video;
    :cond_0
    iget-object v2, p0, Lcom/google/android/youtube/app/player/Director;->playlistIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 618
    iget-object v2, p0, Lcom/google/android/youtube/app/player/Director;->playlistIds:Ljava/util/List;

    iget v3, p0, Lcom/google/android/youtube/app/player/Director;->playlistCurrentIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/youtube/app/player/Director;->playlistCurrentIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/android/youtube/app/player/Director;->initVideo(Ljava/lang/String;)V

    .line 623
    :goto_1
    return-void

    .line 621
    :cond_1
    iget-object v2, p0, Lcom/google/android/youtube/app/player/Director;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method

.method private onVideoEnded()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 424
    iput-boolean v1, p0, Lcom/google/android/youtube/app/player/Director;->ended:Z

    .line 425
    invoke-direct {p0}, Lcom/google/android/youtube/app/player/Director;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/youtube/app/player/Director;->autoPlay:Z

    if-nez v0, :cond_3

    .line 426
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/youtube/app/player/Director;->finishOnEnded:Z

    if-eqz v0, :cond_2

    .line 427
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 438
    :cond_1
    :goto_0
    return-void

    .line 429
    :cond_2
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showReplay()V

    .line 430
    iget-boolean v0, p0, Lcom/google/android/youtube/app/player/Director;->forceFullscreen:Z

    if-nez v0, :cond_1

    .line 431
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/player/Director;->setFullscreen(Z)V

    goto :goto_0

    .line 435
    :cond_3
    iput-boolean v1, p0, Lcom/google/android/youtube/app/player/Director;->playlistAutoSkip:Z

    .line 436
    invoke-direct {p0}, Lcom/google/android/youtube/app/player/Director;->onNextInternal()V

    goto :goto_0
.end method

.method private onVideoResponse(Lcom/google/android/youtube/core/model/Video;)V
    .locals 4
    .parameter "video"

    .prologue
    const/4 v3, 0x0

    .line 279
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/Video;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->v(Ljava/lang/String;)V

    .line 280
    iput-object p1, p0, Lcom/google/android/youtube/app/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    .line 281
    const/4 v0, 0x0

    .line 283
    .local v0, skip:Z
    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    sget-object v2, Lcom/google/android/youtube/core/model/Video$State;->PLAYABLE:Lcom/google/android/youtube/core/model/Video$State;

    if-eq v1, v2, :cond_1

    .line 284
    iget-object v1, p0, Lcom/google/android/youtube/app/player/Director;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v2, "PlayCannotProceeed"

    invoke-interface {v1, v2, p1, v3}, Lcom/google/android/youtube/core/Analytics;->trackPlaybackEvent(Ljava/lang/String;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/Stream$Quality;)V

    .line 285
    iget-object v1, p0, Lcom/google/android/youtube/app/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    iget v2, v2, Lcom/google/android/youtube/core/model/Video$State;->explanationId:I

    invoke-interface {v1, v2}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showErrorMessage(I)V

    .line 286
    iget-object v1, p0, Lcom/google/android/youtube/app/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showControls()V

    .line 287
    const/4 v0, 0x1

    .line 302
    :goto_0
    iget-object v1, p0, Lcom/google/android/youtube/app/player/Director;->listener:Lcom/google/android/youtube/app/player/Director$Listener;

    invoke-interface {v1, p1}, Lcom/google/android/youtube/app/player/Director$Listener;->onVideo(Lcom/google/android/youtube/core/model/Video;)V

    .line 303
    iget-object v1, p0, Lcom/google/android/youtube/app/player/Director;->subtitleHelper:Lcom/google/android/youtube/core/player/SubtitleHelper;

    invoke-virtual {v1, p1}, Lcom/google/android/youtube/core/player/SubtitleHelper;->init(Lcom/google/android/youtube/core/model/Video;)V

    .line 305
    iget-object v1, p0, Lcom/google/android/youtube/app/player/Director;->brandingRequester:Lcom/google/android/youtube/core/async/Requester;

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/Video;->couldHaveBranding()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 306
    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->owner:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/youtube/core/async/GDataRequests;->getBrandingRequest(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/player/Director;->lastBrandingRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 307
    iget-object v1, p0, Lcom/google/android/youtube/app/player/Director;->brandingRequester:Lcom/google/android/youtube/core/async/Requester;

    iget-object v2, p0, Lcom/google/android/youtube/app/player/Director;->lastBrandingRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v3, p0, Lcom/google/android/youtube/app/player/Director;->brandingCallback:Lcom/google/android/youtube/core/async/Callback;

    invoke-interface {v1, v2, v3}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 312
    :goto_1
    if-eqz v0, :cond_0

    .line 313
    invoke-direct {p0}, Lcom/google/android/youtube/app/player/Director;->maybeSkipVideo()V

    .line 315
    :cond_0
    return-void

    .line 288
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/youtube/app/player/Director;->stopped:Z

    if-eqz v1, :cond_3

    .line 289
    iget-boolean v1, p0, Lcom/google/android/youtube/app/player/Director;->ended:Z

    if-eqz v1, :cond_2

    .line 290
    iget-object v1, p0, Lcom/google/android/youtube/app/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showReplay()V

    goto :goto_0

    .line 292
    :cond_2
    iget-object v1, p0, Lcom/google/android/youtube/app/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showContinue()V

    goto :goto_0

    .line 294
    :cond_3
    iget-boolean v1, p1, Lcom/google/android/youtube/core/model/Video;->is3d:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/youtube/app/player/Director;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->isFastNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 295
    iget-object v1, p0, Lcom/google/android/youtube/app/player/Director;->warningHelper:Lcom/google/android/youtube/core/player/WarningHelper;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/WarningHelper;->maybeShowWarning()V

    goto :goto_0

    .line 296
    :cond_4
    iget-boolean v1, p1, Lcom/google/android/youtube/core/model/Video;->adultContent:Z

    if-eqz v1, :cond_5

    .line 297
    iget-object v1, p0, Lcom/google/android/youtube/app/player/Director;->adultContentHelper:Lcom/google/android/youtube/app/player/AdultContentHelper;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/player/AdultContentHelper;->init()V

    goto :goto_0

    .line 299
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/youtube/app/player/Director;->startVideo()V

    goto :goto_0

    .line 309
    :cond_6
    iget-object v1, p0, Lcom/google/android/youtube/app/player/Director;->listener:Lcom/google/android/youtube/app/player/Director$Listener;

    invoke-interface {v1, v3}, Lcom/google/android/youtube/app/player/Director$Listener;->onBranding(Lcom/google/android/youtube/core/model/Branding;)V

    goto :goto_1
.end method

.method private onVideoStreamsError(Ljava/lang/Exception;)V
    .locals 3
    .parameter "exception"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->hideLoading()V

    .line 338
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    const v1, 0x7f0d008e

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showErrorMessage(IZ)V

    .line 339
    return-void
.end method

.method private playAd()V
    .locals 4

    .prologue
    .line 371
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    iget-object v1, p0, Lcom/google/android/youtube/app/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v2, p0, Lcom/google/android/youtube/app/player/Director;->ad:Lcom/google/android/youtube/core/model/VastAd;

    sget-object v3, Lcom/google/android/youtube/core/model/Stream$Quality;->UNKNOWN:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/youtube/core/player/Tracker;->reset(Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/VastAd;Lcom/google/android/youtube/core/model/Stream$Quality;)V

    .line 372
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/player/Director;->playingAd:Z

    .line 374
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    sget-object v1, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->AD:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setStyle(Lcom/google/android/youtube/core/player/ControllerOverlay$Style;)V

    .line 375
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->adOverlay:Lcom/google/android/youtube/core/player/AdOverlay;

    iget-object v1, p0, Lcom/google/android/youtube/app/player/Director;->ad:Lcom/google/android/youtube/core/model/VastAd;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/AdOverlay;->setAd(Lcom/google/android/youtube/core/model/VastAd;)V

    .line 376
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->adOverlay:Lcom/google/android/youtube/core/player/AdOverlay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/AdOverlay;->setVisibility(I)V

    .line 378
    new-instance v0, Lcom/google/android/youtube/core/model/Stream;

    iget-object v1, p0, Lcom/google/android/youtube/app/player/Director;->ad:Lcom/google/android/youtube/core/model/VastAd;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/VastAd;->streamUri:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/youtube/core/model/Stream$Quality;->UNKNOWN:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/model/Stream;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/Stream$Quality;)V

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/player/Director;->playerLoad(Lcom/google/android/youtube/core/model/Stream;)V

    .line 379
    return-void
.end method

.method private playVideo()V
    .locals 6

    .prologue
    .line 393
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 395
    iget-boolean v2, p0, Lcom/google/android/youtube/app/player/Director;->hq:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/youtube/app/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/VideoStreams;->hi:Lcom/google/android/youtube/core/model/Stream;

    move-object v0, v2

    .line 397
    .local v0, stream:Lcom/google/android/youtube/core/model/Stream;
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/youtube/app/player/Director;->ad:Lcom/google/android/youtube/core/model/VastAd;

    .line 398
    if-eqz v0, :cond_4

    .line 399
    iget-object v2, p0, Lcom/google/android/youtube/app/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    iget-object v3, p0, Lcom/google/android/youtube/app/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v4, p0, Lcom/google/android/youtube/app/player/Director;->ad:Lcom/google/android/youtube/core/model/VastAd;

    iget-object v5, v0, Lcom/google/android/youtube/core/model/Stream;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/youtube/core/player/Tracker;->reset(Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/VastAd;Lcom/google/android/youtube/core/model/Stream$Quality;)V

    .line 400
    iget-object v2, p0, Lcom/google/android/youtube/app/player/Director;->revShareClientId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 401
    iget-object v2, v0, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "androidcid"

    iget-object v4, p0, Lcom/google/android/youtube/app/player/Director;->revShareClientId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 403
    .local v1, streamUri:Landroid/net/Uri;
    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Stream;->buildUpon()Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/youtube/core/model/Stream$Builder;->uri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/youtube/core/model/Stream$Builder;->build()Lcom/google/android/youtube/core/model/Stream;

    move-result-object v0

    .line 405
    .end local v1           #streamUri:Landroid/net/Uri;
    :cond_0
    iget-object v2, p0, Lcom/google/android/youtube/app/player/Director;->streamParams:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 406
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

    iget-object v3, p0, Lcom/google/android/youtube/app/player/Director;->streamParams:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 407
    .restart local v1       #streamUri:Landroid/net/Uri;
    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Stream;->buildUpon()Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/youtube/core/model/Stream$Builder;->uri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/youtube/core/model/Stream$Builder;->build()Lcom/google/android/youtube/core/model/Stream;

    move-result-object v0

    .line 409
    .end local v1           #streamUri:Landroid/net/Uri;
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/player/Director;->playerLoad(Lcom/google/android/youtube/core/model/Stream;)V

    .line 410
    iget-object v2, p0, Lcom/google/android/youtube/app/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    iget-object v3, p0, Lcom/google/android/youtube/app/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

    iget-boolean v3, v3, Lcom/google/android/youtube/core/model/VideoStreams;->supportsQualityToggle:Z

    invoke-interface {v2, v3}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setSupportsQualityToggle(Z)V

    .line 411
    iget-object v2, p0, Lcom/google/android/youtube/app/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    iget-boolean v3, p0, Lcom/google/android/youtube/app/player/Director;->hq:Z

    invoke-interface {v2, v3}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setHQ(Z)V

    .line 412
    iget-object v2, p0, Lcom/google/android/youtube/app/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    iget-object v3, p0, Lcom/google/android/youtube/app/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {v3}, Lcom/google/android/youtube/core/model/Video;->isMovie()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->MOVIE:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    :goto_1
    invoke-interface {v2, v3}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setStyle(Lcom/google/android/youtube/core/player/ControllerOverlay$Style;)V

    .line 421
    :goto_2
    return-void

    .line 395
    .end local v0           #stream:Lcom/google/android/youtube/core/model/Stream;
    :cond_2
    iget-object v2, p0, Lcom/google/android/youtube/app/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/VideoStreams;->lo:Lcom/google/android/youtube/core/model/Stream;

    move-object v0, v2

    goto/16 :goto_0

    .line 412
    .restart local v0       #stream:Lcom/google/android/youtube/core/model/Stream;
    :cond_3
    sget-object v3, Lcom/google/android/youtube/core/player/ControllerOverlay$Style;->YOUTUBE:Lcom/google/android/youtube/core/player/ControllerOverlay$Style;

    goto :goto_1

    .line 416
    :cond_4
    iget-object v2, p0, Lcom/google/android/youtube/app/player/Director;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v3, "PlayErrorNoStream"

    iget-object v4, p0, Lcom/google/android/youtube/app/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    sget-object v5, Lcom/google/android/youtube/core/model/Stream$Quality;->UNKNOWN:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/youtube/core/Analytics;->trackPlaybackEvent(Ljava/lang/String;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/Stream$Quality;)V

    .line 417
    iget-object v2, p0, Lcom/google/android/youtube/app/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    const v3, 0x7f0d008a

    invoke-interface {v2, v3}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showErrorMessage(I)V

    .line 418
    iget-object v2, p0, Lcom/google/android/youtube/app/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v2}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showControls()V

    .line 419
    invoke-direct {p0}, Lcom/google/android/youtube/app/player/Director;->maybeSkipVideo()V

    goto :goto_2
.end method

.method private playerLoad(Lcom/google/android/youtube/core/model/Stream;)V
    .locals 2
    .parameter "stream"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/Tracker;->trackVideoPrepare(Landroid/net/Uri;)V

    .line 361
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->playlistUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->loadVideo(Lcom/google/android/youtube/core/model/Stream;I)V

    .line 368
    :goto_0
    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->loadVideo(Lcom/google/android/youtube/core/model/Stream;)V

    goto :goto_0
.end method


# virtual methods
.method public initPlaylist(Landroid/net/Uri;Z)V
    .locals 2
    .parameter "playlistUri"
    .parameter "authenticate"

    .prologue
    const/4 v1, 0x0

    .line 566
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->v(Ljava/lang/String;)V

    .line 567
    iput-object v1, p0, Lcom/google/android/youtube/app/player/Director;->videoId:Ljava/lang/String;

    .line 568
    iput-object v1, p0, Lcom/google/android/youtube/app/player/Director;->streamParams:Ljava/lang/String;

    .line 569
    iput-object v1, p0, Lcom/google/android/youtube/app/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    .line 570
    iput-object v1, p0, Lcom/google/android/youtube/app/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

    .line 571
    iput-object v1, p0, Lcom/google/android/youtube/app/player/Director;->lastBrandingRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 572
    iput-object v1, p0, Lcom/google/android/youtube/app/player/Director;->ad:Lcom/google/android/youtube/core/model/VastAd;

    .line 573
    iput-object p1, p0, Lcom/google/android/youtube/app/player/Director;->playlistUri:Landroid/net/Uri;

    .line 574
    iput-boolean p2, p0, Lcom/google/android/youtube/app/player/Director;->playlistAuthenticate:Z

    .line 575
    iput-object v1, p0, Lcom/google/android/youtube/app/player/Director;->playlistNextPageUri:Landroid/net/Uri;

    .line 576
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/app/player/Director;->playlistCurrentIndex:I

    .line 577
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->playlistIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 578
    invoke-direct {p0}, Lcom/google/android/youtube/app/player/Director;->makePlaylistPageRequest()V

    .line 579
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->resetTime()V

    .line 580
    return-void
.end method

.method public initVideo(Ljava/lang/String;)V
    .locals 1
    .parameter "videoId"

    .prologue
    .line 248
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/youtube/app/player/Director;->initVideo(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public initVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "videoId"
    .parameter "streamParams"

    .prologue
    const/4 v2, 0x0

    .line 252
    invoke-static {p1}, Lcom/google/android/youtube/core/L;->v(Ljava/lang/String;)V

    .line 253
    iput-object p1, p0, Lcom/google/android/youtube/app/player/Director;->videoId:Ljava/lang/String;

    .line 254
    iput-object p2, p0, Lcom/google/android/youtube/app/player/Director;->streamParams:Ljava/lang/String;

    .line 255
    iput-object v2, p0, Lcom/google/android/youtube/app/player/Director;->lastBrandingRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 256
    iput-object v2, p0, Lcom/google/android/youtube/app/player/Director;->ad:Lcom/google/android/youtube/core/model/VastAd;

    .line 257
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/player/Director;->playingAd:Z

    .line 258
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->stopVideo()V

    .line 259
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->brandingOverlay:Lcom/google/android/youtube/core/player/BrandingOverlay;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/BrandingOverlay;->hide()V

    .line 260
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->adOverlay:Lcom/google/android/youtube/core/player/AdOverlay;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/AdOverlay;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->listener:Lcom/google/android/youtube/app/player/Director$Listener;

    invoke-interface {v0}, Lcom/google/android/youtube/app/player/Director$Listener;->onReset()V

    .line 262
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-direct {p0}, Lcom/google/android/youtube/app/player/Director;->hasNext()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setShowNext(Z)V

    .line 263
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-direct {p0}, Lcom/google/android/youtube/app/player/Director;->hasPrevious()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setShowPrevious(Z)V

    .line 264
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/Tracker;->trackVideoInit()V

    .line 265
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/player/Director;->onVideoResponse(Lcom/google/android/youtube/core/model/Video;)V

    .line 276
    :goto_0
    return-void

    .line 271
    :cond_0
    iput-object v2, p0, Lcom/google/android/youtube/app/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    .line 272
    iput-object v2, p0, Lcom/google/android/youtube/app/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

    .line 273
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->videoRequester:Lcom/google/android/youtube/core/async/Requester;

    invoke-static {p1}, Lcom/google/android/youtube/core/async/GDataRequests;->getVideoRequest(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/async/ActivityCallback;

    iget-object v3, p0, Lcom/google/android/youtube/app/player/Director;->activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/google/android/youtube/app/player/Director;->videoCallback:Lcom/google/android/youtube/core/async/Callback;

    invoke-direct {v2, v3, v4}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    goto :goto_0
.end method

.method public onAdClickthrough()V
    .locals 2

    .prologue
    .line 691
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->ad:Lcom/google/android/youtube/core/model/VastAd;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/VastAd;->clickthroughUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->adHelper:Lcom/google/android/youtube/core/player/AdHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/AdHelper;->onAdEnded()V

    .line 693
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/Tracker;->pingClickthrough()V

    .line 694
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/player/Director;->ad:Lcom/google/android/youtube/core/model/VastAd;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/VastAd;->clickthroughUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/ExternalIntents;->viewUri(Landroid/content/Context;Landroid/net/Uri;)V

    .line 696
    :cond_0
    return-void
.end method

.method public onAuthenticated(Lcom/google/android/youtube/core/model/UserAuth;)V
    .locals 3
    .parameter "userAuth"

    .prologue
    .line 597
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->myPlaylistVideosRequester:Lcom/google/android/youtube/core/async/Requester;

    invoke-direct {p0}, Lcom/google/android/youtube/app/player/Director;->getPlaylistUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/youtube/core/async/GDataRequests;->getMyPlaylistVideosRequest(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/player/Director;->playlistCallback:Lcom/google/android/youtube/core/async/Callback;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 600
    return-void
.end method

.method public onAuthenticationError(Ljava/lang/Exception;)V
    .locals 1
    .parameter "exception"

    .prologue
    .line 604
    const-string v0, "error authenticating for playlist request"

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 605
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 606
    return-void
.end method

.method public onCC()V
    .locals 2

    .prologue
    .line 682
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "CC"

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/Analytics;->trackEvent(Ljava/lang/String;)V

    .line 683
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->subtitleHelper:Lcom/google/android/youtube/core/player/SubtitleHelper;

    iget-object v1, p0, Lcom/google/android/youtube/app/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/SubtitleHelper;->onButtonClick(Ljava/lang/String;)V

    .line 684
    return-void
.end method

.method public onContinue()V
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->hideStatus()V

    .line 466
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/player/Director;->stopped:Z

    .line 467
    iget-boolean v0, p0, Lcom/google/android/youtube/app/player/Director;->stoppedOnAd:Z

    if-eqz v0, :cond_0

    .line 468
    invoke-virtual {p0}, Lcom/google/android/youtube/app/player/Director;->startVideo()V

    .line 477
    :goto_0
    return-void

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/Tracker;->trackVideoInit()V

    .line 471
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

    if-nez v0, :cond_1

    .line 472
    invoke-virtual {p0}, Lcom/google/android/youtube/app/player/Director;->startVideo()V

    goto :goto_0

    .line 474
    :cond_1
    invoke-direct {p0}, Lcom/google/android/youtube/app/player/Director;->playVideo()V

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 709
    packed-switch p1, :pswitch_data_0

    .line 719
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 711
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/app/player/Director;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->onCreateDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 716
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->adultContentHelper:Lcom/google/android/youtube/app/player/AdultContentHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/player/AdultContentHelper;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 709
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHQ()V
    .locals 4

    .prologue
    .line 672
    iget-boolean v1, p0, Lcom/google/android/youtube/app/player/Director;->hq:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/youtube/app/player/Director;->hq:Z

    .line 673
    iget-object v1, p0, Lcom/google/android/youtube/app/player/Director;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v2, "HQ"

    iget-boolean v3, p0, Lcom/google/android/youtube/app/player/Director;->hq:Z

    if-eqz v3, :cond_1

    const-string v3, "On"

    :goto_1
    invoke-interface {v1, v2, v3}, Lcom/google/android/youtube/core/Analytics;->trackEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    iget-object v1, p0, Lcom/google/android/youtube/app/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/Tracker;->trackVideoInit()V

    .line 675
    iget-boolean v1, p0, Lcom/google/android/youtube/app/player/Director;->hq:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/youtube/app/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/VideoStreams;->hi:Lcom/google/android/youtube/core/model/Stream;

    move-object v0, v1

    .line 676
    .local v0, stream:Lcom/google/android/youtube/core/model/Stream;
    :goto_2
    iget-object v1, p0, Lcom/google/android/youtube/app/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/player/Tracker;->trackVideoPrepare(Landroid/net/Uri;)V

    .line 677
    iget-object v1, p0, Lcom/google/android/youtube/app/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    iget-object v2, p0, Lcom/google/android/youtube/app/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->loadVideo(Lcom/google/android/youtube/core/model/Stream;I)V

    .line 678
    iget-object v1, p0, Lcom/google/android/youtube/app/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    iget-boolean v2, p0, Lcom/google/android/youtube/app/player/Director;->hq:Z

    invoke-interface {v1, v2}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setHQ(Z)V

    .line 679
    return-void

    .line 672
    .end local v0           #stream:Lcom/google/android/youtube/core/model/Stream;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 673
    :cond_1
    const-string v3, "Off"

    goto :goto_1

    .line 675
    :cond_2
    iget-object v1, p0, Lcom/google/android/youtube/app/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/VideoStreams;->lo:Lcom/google/android/youtube/core/model/Stream;

    move-object v0, v1

    goto :goto_2
.end method

.method public onHidden()V
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->listener:Lcom/google/android/youtube/app/player/Director$Listener;

    invoke-interface {v0}, Lcom/google/android/youtube/app/player/Director$Listener;->onControllerHidden()V

    .line 700
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 514
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 515
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/player/Director;->isMediaKey(I)Z

    move-result v0

    .line 542
    :goto_0
    return v0

    .line 518
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 542
    const/4 v0, 0x0

    goto :goto_0

    .line 521
    :sswitch_0
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 522
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->pauseVideo()V

    :goto_1
    move v0, v1

    .line 526
    goto :goto_0

    .line 524
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->playVideo()V

    goto :goto_1

    .line 528
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    .line 529
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->playVideo()V

    :cond_2
    move v0, v1

    .line 531
    goto :goto_0

    .line 533
    :sswitch_2
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 534
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->pauseVideo()V

    :cond_3
    move v0, v1

    .line 536
    goto :goto_0

    :sswitch_3
    move v0, v1

    .line 540
    goto :goto_0

    .line 518
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
    .line 546
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/player/Director;->isMediaKey(I)Z

    move-result v0

    return v0
.end method

.method public onNext()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 645
    iput-boolean v0, p0, Lcom/google/android/youtube/app/player/Director;->playlistAutoSkip:Z

    .line 646
    iput-boolean v0, p0, Lcom/google/android/youtube/app/player/Director;->stopped:Z

    .line 647
    invoke-direct {p0}, Lcom/google/android/youtube/app/player/Director;->onNextInternal()V

    .line 648
    return-void
.end method

.method public onNotAuthenticated()V
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 610
    return-void
.end method

.method public onPrevious()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 662
    iput-boolean v0, p0, Lcom/google/android/youtube/app/player/Director;->playlistAutoSkip:Z

    .line 663
    iput-boolean v0, p0, Lcom/google/android/youtube/app/player/Director;->stopped:Z

    .line 664
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->resetTime()V

    .line 665
    iget v0, p0, Lcom/google/android/youtube/app/player/Director;->playlistCurrentIndex:I

    if-lez v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->analytics:Lcom/google/android/youtube/core/Analytics;

    const-string v1, "Previous"

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/Analytics;->trackEvent(Ljava/lang/String;)V

    .line 667
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->playlistIds:Ljava/util/List;

    iget v1, p0, Lcom/google/android/youtube/app/player/Director;->playlistCurrentIndex:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/youtube/app/player/Director;->playlistCurrentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/player/Director;->initVideo(Ljava/lang/String;)V

    .line 669
    :cond_0
    return-void
.end method

.method public onReplay()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 451
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 452
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->hideStatus()V

    .line 453
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->resetTime()V

    .line 454
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/Tracker;->trackVideoInit()V

    .line 455
    iput-boolean v1, p0, Lcom/google/android/youtube/app/player/Director;->ended:Z

    .line 456
    iget-boolean v0, p0, Lcom/google/android/youtube/app/player/Director;->stopped:Z

    if-eqz v0, :cond_0

    .line 457
    iput-boolean v1, p0, Lcom/google/android/youtube/app/player/Director;->stopped:Z

    .line 458
    invoke-direct {p0}, Lcom/google/android/youtube/app/player/Director;->playVideo()V

    .line 462
    :goto_0
    return-void

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->playVideo()V

    goto :goto_0
.end method

.method public onRetry()V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->hideStatus()V

    .line 442
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/Tracker;->trackVideoInit()V

    .line 443
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

    if-nez v0, :cond_0

    .line 444
    invoke-virtual {p0}, Lcom/google/android/youtube/app/player/Director;->startVideo()V

    .line 448
    :goto_0
    return-void

    .line 446
    :cond_0
    invoke-direct {p0}, Lcom/google/android/youtube/app/player/Director;->playVideo()V

    goto :goto_0
.end method

.method public onShown()V
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->listener:Lcom/google/android/youtube/app/player/Director$Listener;

    invoke-interface {v0}, Lcom/google/android/youtube/app/player/Director$Listener;->onControllerShown()V

    .line 704
    return-void
.end method

.method public onToggleFullscreen(Z)V
    .locals 1
    .parameter "fullscreen"

    .prologue
    .line 687
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->listener:Lcom/google/android/youtube/app/player/Director$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/app/player/Director$Listener;->onToggleFullscreen(Z)V

    .line 688
    return-void
.end method

.method public onVideoStreamsResponse(Lcom/google/android/youtube/core/model/VideoStreams;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 327
    iput-object p1, p0, Lcom/google/android/youtube/app/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

    .line 328
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->adHelper:Lcom/google/android/youtube/core/player/AdHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, p0, Lcom/google/android/youtube/app/player/Director;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->getSystemCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video;->isMonetized(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->adHelper:Lcom/google/android/youtube/core/player/AdHelper;

    iget-boolean v1, p0, Lcom/google/android/youtube/app/player/Director;->hq:Z

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/AdHelper;->setPreferHQ(Z)V

    .line 330
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->adHelper:Lcom/google/android/youtube/core/player/AdHelper;

    iget-object v1, p0, Lcom/google/android/youtube/app/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/app/player/Director;->adCallback:Lcom/google/android/youtube/core/async/Callback;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/player/AdHelper;->request(Ljava/lang/String;Lcom/google/android/youtube/core/async/Callback;)V

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/app/player/Director;->onAdResponse(Ljava/lang/String;Lcom/google/android/youtube/core/model/VastAd;)V

    goto :goto_0
.end method

.method public onWarningAccepted(Lcom/google/android/youtube/core/player/WarningHelper;)V
    .locals 1
    .parameter "helper"

    .prologue
    .line 729
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    iget-boolean v0, v0, Lcom/google/android/youtube/core/model/Video;->adultContent:Z

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->adultContentHelper:Lcom/google/android/youtube/app/player/AdultContentHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/player/AdultContentHelper;->init()V

    .line 734
    :goto_0
    return-void

    .line 732
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/app/player/Director;->startVideo()V

    goto :goto_0
.end method

.method public onWarningDeclined(Lcom/google/android/youtube/core/player/WarningHelper;)V
    .locals 1
    .parameter "helper"

    .prologue
    .line 737
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 738
    return-void
.end method

.method public reinit()V
    .locals 2

    .prologue
    .line 237
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 238
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->videoId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->videoId:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/youtube/app/player/Director;->streamParams:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/app/player/Director;->initVideo(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->playlistUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->playlistUri:Landroid/net/Uri;

    iget-boolean v1, p0, Lcom/google/android/youtube/app/player/Director;->playlistAuthenticate:Z

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/app/player/Director;->initPlaylist(Landroid/net/Uri;Z)V

    goto :goto_0

    .line 243
    :cond_1
    const-string v0, "can\'t retry"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->release()V

    .line 746
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->playerTracker:Lcom/google/android/youtube/core/player/Tracker;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/Tracker;->release()V

    .line 747
    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 0
    .parameter "autoPlay"

    .prologue
    .line 754
    iput-boolean p1, p0, Lcom/google/android/youtube/app/player/Director;->autoPlay:Z

    .line 755
    return-void
.end method

.method public setFinishOnEnded(Z)V
    .locals 0
    .parameter "finishOnEnded"

    .prologue
    .line 771
    iput-boolean p1, p0, Lcom/google/android/youtube/app/player/Director;->finishOnEnded:Z

    .line 772
    return-void
.end method

.method public setForceFullscreen(Z)V
    .locals 2
    .parameter "forceFullscreen"

    .prologue
    const/4 v1, 0x1

    .line 763
    iput-boolean p1, p0, Lcom/google/android/youtube/app/player/Director;->forceFullscreen:Z

    .line 764
    if-eqz p1, :cond_0

    .line 765
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/player/Director;->setFullscreen(Z)V

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    if-nez p1, :cond_1

    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setShowFullscreen(Z)V

    .line 768
    return-void

    .line 767
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFullscreen(Z)V
    .locals 1
    .parameter "fullscreen"

    .prologue
    .line 758
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->setFullscreen(Z)V

    .line 759
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/player/Director;->onToggleFullscreen(Z)V

    .line 760
    return-void
.end method

.method public setStopped()V
    .locals 1

    .prologue
    .line 741
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/player/Director;->stopped:Z

    .line 742
    return-void
.end method

.method public showPlayerBranding()V
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->brandingOverlay:Lcom/google/android/youtube/core/player/BrandingOverlay;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/BrandingOverlay;->show()V

    .line 751
    return-void
.end method

.method public startVideo()V
    .locals 3

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showLoading()V

    .line 319
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->videoStreams:Lcom/google/android/youtube/core/model/VideoStreams;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/player/Director;->onVideoStreamsResponse(Lcom/google/android/youtube/core/model/VideoStreams;)V

    .line 324
    :goto_0
    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->streamsRequester:Lcom/google/android/youtube/core/async/Requester;

    iget-object v1, p0, Lcom/google/android/youtube/app/player/Director;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/youtube/core/async/GDataRequests;->getStreamsRequest(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/player/Director;->videoStreamsCallback:Lcom/google/android/youtube/core/async/Callback;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    goto :goto_0
.end method

.method public togglePlay()V
    .locals 1

    .prologue
    .line 483
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 484
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->pauseVideo()V

    .line 489
    :goto_0
    return-void

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->playVideo()V

    goto :goto_0
.end method
