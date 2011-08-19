.class public Lcom/google/android/youtube/app/tablet/HomeController;
.super Lcom/google/android/youtube/app/tablet/YouTubeController;
.source "HomeController.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;


# instance fields
.field private carousel:Lcom/google/android/youtube/core/honeycomb/ui/PagedCarouselView;

.field private final musicVideosRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/MusicVideo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final theFeed:Lcom/google/android/youtube/app/TheFeed;

.field private final thumbnailRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private videosHelper:Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/Navigation;Landroid/os/Bundle;)V
    .locals 3
    .parameter "application"
    .parameter "activity"
    .parameter "navigation"
    .parameter "launchBundle"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/youtube/app/tablet/YouTubeController;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/Navigation;Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->getRequesters()Lcom/google/android/youtube/app/Requesters;

    move-result-object v0

    .line 53
    .local v0, requesters:Lcom/google/android/youtube/app/Requesters;
    new-instance v1, Lcom/google/android/youtube/app/TheFeed;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/android/youtube/app/TheFeed;-><init>(Lcom/google/android/youtube/app/Requesters;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/youtube/app/tablet/HomeController;->theFeed:Lcom/google/android/youtube/app/TheFeed;

    .line 54
    invoke-interface {v0}, Lcom/google/android/youtube/app/Requesters;->getThumbnailRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/tablet/HomeController;->thumbnailRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 55
    invoke-interface {v0}, Lcom/google/android/youtube/app/Requesters;->getMusicVideosRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/tablet/HomeController;->musicVideosRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 56
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->getUserAuthorizer()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/tablet/HomeController;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 57
    return-void
.end method

.method private makeSignedInRequest(Lcom/google/android/youtube/core/model/UserAuth;)V
    .locals 4
    .parameter "userAuth"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/HomeController;->videosHelper:Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/google/android/youtube/core/async/GDataRequests;->getMyFeedRequest(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->init([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 137
    return-void
.end method

.method private makeSignedOutRequest()V
    .locals 4

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/HomeController;->videosHelper:Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/android/youtube/core/async/GDataRequests;->getTheFeedRequest()Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->init([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 141
    return-void
.end method


# virtual methods
.method protected getContentViewId()I
    .locals 1

    .prologue
    .line 61
    const v0, 0x7f040013

    return v0
.end method

.method public onAuthenticated(Lcom/google/android/youtube/core/model/UserAuth;)V
    .locals 0
    .parameter "userAuth"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/tablet/HomeController;->makeSignedInRequest(Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 125
    return-void
.end method

.method public onAuthenticationError(Ljava/lang/Exception;)V
    .locals 0
    .parameter "exception"

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/google/android/youtube/app/tablet/HomeController;->makeSignedOutRequest()V

    .line 133
    return-void
.end method

.method protected onCreate(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/app/tablet/YouTubeController;->onCreate(Landroid/view/View;Landroid/os/Bundle;)V

    .line 67
    const v0, 0x7f080031

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/honeycomb/ui/PagedCarouselView;

    iput-object v0, p0, Lcom/google/android/youtube/app/tablet/HomeController;->carousel:Lcom/google/android/youtube/core/honeycomb/ui/PagedCarouselView;

    .line 68
    new-instance v0, Lcom/google/android/youtube/app/tablet/HomeController$1;

    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/HomeController;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/android/youtube/app/tablet/HomeController;->navigation:Lcom/google/android/youtube/app/Navigation;

    iget-object v4, p0, Lcom/google/android/youtube/app/tablet/HomeController;->carousel:Lcom/google/android/youtube/core/honeycomb/ui/PagedCarouselView;

    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/HomeController;->activity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/google/android/youtube/app/tablet/HomeController;->theFeed:Lcom/google/android/youtube/app/TheFeed;

    invoke-virtual {v5}, Lcom/google/android/youtube/app/TheFeed;->getVideoSources()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->create(Landroid/content/Context;Ljava/util/concurrent/ConcurrentHashMap;)Lcom/google/android/youtube/app/adapter/VideoListAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/youtube/app/tablet/HomeController;->theFeed:Lcom/google/android/youtube/app/TheFeed;

    iget-object v7, p0, Lcom/google/android/youtube/app/tablet/HomeController;->musicVideosRequester:Lcom/google/android/youtube/core/async/Requester;

    iget-object v8, p0, Lcom/google/android/youtube/app/tablet/HomeController;->thumbnailRequester:Lcom/google/android/youtube/core/async/Requester;

    iget-object v9, p0, Lcom/google/android/youtube/app/tablet/HomeController;->application:Lcom/google/android/youtube/app/YouTubeApplication;

    sget-object v10, Lcom/google/android/youtube/core/Analytics$VideoCategory;->HomeFeed:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lcom/google/android/youtube/app/tablet/HomeController$1;-><init>(Lcom/google/android/youtube/app/tablet/HomeController;Landroid/app/Activity;Lcom/google/android/youtube/app/Navigation;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/app/adapter/VideoListAdapter;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/tablet/HomeController;->videosHelper:Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;

    .line 98
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/HomeController;->carousel:Lcom/google/android/youtube/core/honeycomb/ui/PagedCarouselView;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/honeycomb/ui/PagedCarouselView;->destroy()V

    .line 120
    invoke-super {p0}, Lcom/google/android/youtube/app/tablet/YouTubeController;->onDestroy()V

    .line 121
    return-void
.end method

.method public onNotAuthenticated()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/google/android/youtube/app/tablet/HomeController;->makeSignedOutRequest()V

    .line 129
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 102
    invoke-super {p0}, Lcom/google/android/youtube/app/tablet/YouTubeController;->onStart()V

    .line 103
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/HomeController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/HomeController;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/HomeController;->carousel:Lcom/google/android/youtube/core/honeycomb/ui/PagedCarouselView;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/honeycomb/ui/PagedCarouselView;->resume()V

    .line 106
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/HomeController;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->peek(Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V

    .line 107
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/HomeController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/HomeController;->videosHelper:Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->reset()V

    .line 113
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/HomeController;->carousel:Lcom/google/android/youtube/core/honeycomb/ui/PagedCarouselView;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/honeycomb/ui/PagedCarouselView;->pause()V

    .line 114
    invoke-super {p0}, Lcom/google/android/youtube/app/tablet/YouTubeController;->onStop()V

    .line 115
    return-void
.end method
