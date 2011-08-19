.class public Lcom/google/android/youtube/app/ui/WatchRelatedHelper;
.super Ljava/lang/Object;
.source "WatchRelatedHelper.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;


# instance fields
.field private featuredPlaylistRequest:Lcom/google/android/youtube/core/async/GDataRequest;

.field private final pagedViewHelper:Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;

.field private relatedVideosRequest:Lcom/google/android/youtube/core/async/GDataRequest;

.field private final userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private video:Lcom/google/android/youtube/core/model/Video;

.field private final videoSources:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/app/adapter/VideoListAdapter;Lcom/google/android/youtube/app/Navigation;Lcom/google/android/youtube/app/Requesters;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/Analytics;)V
    .locals 12
    .parameter "activity"
    .parameter "related"
    .parameter "adapter"
    .parameter "navigation"
    .parameter "requesters"
    .parameter "userAuthorizer"
    .parameter "analytics"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static/range {p6 .. p6}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .end local p3
    check-cast p3, Lcom/google/android/youtube/core/async/UserAuthorizer;

    iput-object p3, p0, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;->videoSources:Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;->videoSources:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, v0}, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->create(Landroid/content/Context;Ljava/util/concurrent/ConcurrentHashMap;)Lcom/google/android/youtube/app/adapter/VideoListAdapter;

    move-result-object v5

    .line 47
    .local v5, videoListAdapter:Lcom/google/android/youtube/app/adapter/VideoListAdapter;
    new-instance v0, Lcom/google/android/youtube/app/ui/WatchRelatedHelper$1;

    invoke-interface/range {p5 .. p5}, Lcom/google/android/youtube/app/Requesters;->getRelatedVideosRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v6

    invoke-interface/range {p5 .. p5}, Lcom/google/android/youtube/app/Requesters;->getMusicVideosRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v7

    invoke-interface/range {p5 .. p5}, Lcom/google/android/youtube/app/Requesters;->getThumbnailRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v8

    const/4 v9, 0x0

    sget-object v11, Lcom/google/android/youtube/core/Analytics$VideoCategory;->RelatedVideos:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p4

    move-object v4, p2

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v11}, Lcom/google/android/youtube/app/ui/WatchRelatedHelper$1;-><init>(Lcom/google/android/youtube/app/ui/WatchRelatedHelper;Landroid/app/Activity;Lcom/google/android/youtube/app/Navigation;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/app/adapter/VideoListAdapter;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;ZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;->pagedViewHelper:Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/app/ui/WatchRelatedHelper;)Lcom/google/android/youtube/core/async/GDataRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;->featuredPlaylistRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/youtube/app/ui/WatchRelatedHelper;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;->videoSources:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private makeRequests()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 124
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;->relatedVideosRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;->featuredPlaylistRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;->pagedViewHelper:Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;->featuredPlaylistRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;->relatedVideosRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->init([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 133
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;->relatedVideosRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;->pagedViewHelper:Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;

    new-array v1, v4, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;->relatedVideosRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->init([Lcom/google/android/youtube/core/async/GDataRequest;)V

    goto :goto_0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;->featuredPlaylistRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;->pagedViewHelper:Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;

    new-array v1, v4, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;->featuredPlaylistRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->init([Lcom/google/android/youtube/core/async/GDataRequest;)V

    goto :goto_0

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;->pagedViewHelper:Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->initEmpty()V

    goto :goto_0
.end method


# virtual methods
.method public onAuthenticated(Lcom/google/android/youtube/core/model/UserAuth;)V
    .locals 1
    .parameter "userAuth"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;->video:Lcom/google/android/youtube/core/model/Video;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->relatedUri:Landroid/net/Uri;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/async/GDataRequests;->getRelatedVideosRequest(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;->relatedVideosRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 105
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;->makeRequests()V

    .line 107
    :cond_0
    return-void
.end method

.method public onAuthenticationError(Ljava/lang/Exception;)V
    .locals 1
    .parameter "exception"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;->video:Lcom/google/android/youtube/core/model/Video;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->relatedUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequests;->getRelatedVideosRequest(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;->relatedVideosRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 112
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;->makeRequests()V

    .line 114
    :cond_0
    return-void
.end method

.method public onBranding(Lcom/google/android/youtube/core/model/Branding;)V
    .locals 1
    .parameter "branding"

    .prologue
    .line 91
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/google/android/youtube/core/model/Branding;->featuredPlaylistId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Branding;->featuredPlaylistId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequests;->getPlaylistVideosRequest(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;->featuredPlaylistRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;->video:Lcom/google/android/youtube/core/model/Video;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->relatedUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->peek(Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;->makeRequests()V

    goto :goto_0
.end method

.method public onNotAuthenticated()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;->video:Lcom/google/android/youtube/core/model/Video;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;->video:Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->relatedUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/GDataRequests;->getRelatedVideosRequest(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;->relatedVideosRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 119
    invoke-direct {p0}, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;->makeRequests()V

    .line 121
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;->reset(Lcom/google/android/youtube/core/model/Video;)V

    .line 72
    return-void
.end method

.method public reset(Lcom/google/android/youtube/core/model/Video;)V
    .locals 1
    .parameter "video"

    .prologue
    const/4 v0, 0x0

    .line 79
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;->video:Lcom/google/android/youtube/core/model/Video;

    .line 80
    iput-object v0, p0, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;->featuredPlaylistRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 81
    iput-object v0, p0, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;->relatedVideosRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 82
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;->videoSources:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 83
    if-eqz p1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;->pagedViewHelper:Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->initLoading()V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;->pagedViewHelper:Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->initEmpty()V

    goto :goto_0
.end method
