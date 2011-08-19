.class public Lcom/google/android/youtube/app/TheFeed;
.super Ljava/lang/Object;
.source "TheFeed.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Requester;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/app/TheFeed$BlenderCallback;,
        Lcom/google/android/youtube/app/TheFeed$SubscriptionUpdatesCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Requester",
        "<",
        "Lcom/google/android/youtube/core/async/GDataRequest;",
        "Lcom/google/android/youtube/core/model/Page",
        "<",
        "Lcom/google/android/youtube/core/model/Video;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final countryCode:Ljava/lang/String;

.field private final myRecommendedVideosRequester:Lcom/google/android/youtube/core/async/Requester;
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

.field private final mySubscriptionUpdatesRequester:Lcom/google/android/youtube/core/async/Requester;
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

.field private final standardFeedRequester:Lcom/google/android/youtube/core/async/Requester;
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

.field private final usernamePattern:Ljava/util/regex/Pattern;

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
.method public constructor <init>(Lcom/google/android/youtube/app/Requesters;Ljava/lang/String;)V
    .locals 1
    .parameter "requesters"
    .parameter "countryCode"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-interface {p1}, Lcom/google/android/youtube/app/Requesters;->getStandardFeedRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Requester;

    iput-object v0, p0, Lcom/google/android/youtube/app/TheFeed;->standardFeedRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 51
    invoke-interface {p1}, Lcom/google/android/youtube/app/Requesters;->getMySubscriptionUpdatesRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Requester;

    iput-object v0, p0, Lcom/google/android/youtube/app/TheFeed;->mySubscriptionUpdatesRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 53
    invoke-interface {p1}, Lcom/google/android/youtube/app/Requesters;->getMyRecommendedVideosRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Requester;

    iput-object v0, p0, Lcom/google/android/youtube/app/TheFeed;->myRecommendedVideosRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 55
    iput-object p2, p0, Lcom/google/android/youtube/app/TheFeed;->countryCode:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/TheFeed;->videoSources:Ljava/util/concurrent/ConcurrentHashMap;

    .line 57
    const-string v0, "users/([^/]*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/TheFeed;->usernamePattern:Ljava/util/regex/Pattern;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/app/TheFeed;Lcom/google/android/youtube/core/async/GDataRequest;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/TheFeed;->getUsernameFromRequest(Lcom/google/android/youtube/core/async/GDataRequest;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/youtube/app/TheFeed;Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Callback;Lcom/google/android/youtube/core/model/UserAuth;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/youtube/app/TheFeed;->makeMyFeedRequests(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Callback;Lcom/google/android/youtube/core/model/UserAuth;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/youtube/app/TheFeed;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/youtube/app/TheFeed;->videoSources:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private getUsernameFromRequest(Lcom/google/android/youtube/core/async/GDataRequest;)Ljava/lang/String;
    .locals 3
    .parameter "request"

    .prologue
    .line 78
    iget-object v1, p0, Lcom/google/android/youtube/app/TheFeed;->usernamePattern:Ljava/util/regex/Pattern;

    iget-object v2, p1, Lcom/google/android/youtube/core/async/GDataRequest;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 79
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private makeFeedRequests(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 9
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;>;"
    const/4 v5, 0x0

    .line 113
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 115
    .local v4, requestSources:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Integer;>;"
    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;->RECENTLY_FEATURED:Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

    iget-object v2, p0, Lcom/google/android/youtube/app/TheFeed;->countryCode:Ljava/lang/String;

    invoke-static {v1, v5, v2, v5}, Lcom/google/android/youtube/core/async/GDataRequests;->getStandardFeedRequest(Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v6

    .line 117
    .local v6, featuredRequest:Lcom/google/android/youtube/core/async/GDataRequest;
    const v1, 0x7f0d0042

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;->MOST_POPULAR:Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

    iget-object v2, p0, Lcom/google/android/youtube/app/TheFeed;->countryCode:Ljava/lang/String;

    sget-object v3, Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;->THIS_WEEK:Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;

    invoke-static {v1, v5, v2, v3}, Lcom/google/android/youtube/core/async/GDataRequests;->getStandardFeedRequest(Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v8

    .line 121
    .local v8, popularRequest:Lcom/google/android/youtube/core/async/GDataRequest;
    const v1, 0x7f0d0043

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;->MOST_DISCUSSED:Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

    iget-object v2, p0, Lcom/google/android/youtube/app/TheFeed;->countryCode:Ljava/lang/String;

    sget-object v3, Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;->THIS_WEEK:Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;

    invoke-static {v1, v5, v2, v3}, Lcom/google/android/youtube/core/async/GDataRequests;->getStandardFeedRequest(Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v7

    .line 125
    .local v7, mostDiscussedRequest:Lcom/google/android/youtube/core/async/GDataRequest;
    const v1, 0x7f0d0044

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance v0, Lcom/google/android/youtube/app/TheFeed$BlenderCallback;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/TheFeed$BlenderCallback;-><init>(Lcom/google/android/youtube/app/TheFeed;Lcom/google/android/youtube/core/async/Callback;Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/HashMap;I)V

    .line 129
    .local v0, blender:Lcom/google/android/youtube/app/TheFeed$BlenderCallback;
    iget-object v1, p0, Lcom/google/android/youtube/app/TheFeed;->standardFeedRequester:Lcom/google/android/youtube/core/async/Requester;

    invoke-interface {v1, v6, v0}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 130
    iget-object v1, p0, Lcom/google/android/youtube/app/TheFeed;->standardFeedRequester:Lcom/google/android/youtube/core/async/Requester;

    invoke-interface {v1, v8, v0}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 131
    iget-object v1, p0, Lcom/google/android/youtube/app/TheFeed;->standardFeedRequester:Lcom/google/android/youtube/core/async/Requester;

    invoke-interface {v1, v7, v0}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 132
    return-void
.end method

.method private makeMyFeedRequests(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Callback;Lcom/google/android/youtube/core/model/UserAuth;)V
    .locals 9
    .parameter "request"
    .parameter
    .parameter "userAuth"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;>;",
            "Lcom/google/android/youtube/core/model/UserAuth;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;>;"
    const/4 v5, 0x0

    .line 87
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 89
    .local v4, requestSources:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Integer;>;"
    invoke-static {p3}, Lcom/google/android/youtube/core/async/GDataRequests;->getMyRecommendedVideosRequest(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v8

    .line 91
    .local v8, recommendedVideosRequest:Lcom/google/android/youtube/core/async/GDataRequest;
    const v1, 0x7f0d0040

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;->MOST_POPULAR:Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

    iget-object v2, p0, Lcom/google/android/youtube/app/TheFeed;->countryCode:Ljava/lang/String;

    sget-object v3, Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;->THIS_WEEK:Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;

    invoke-static {v1, v5, v2, v3}, Lcom/google/android/youtube/core/async/GDataRequests;->getStandardFeedRequest(Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v7

    .line 95
    .local v7, popularRequest:Lcom/google/android/youtube/core/async/GDataRequest;
    const v1, 0x7f0d0043

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;->MOST_DISCUSSED:Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;

    iget-object v2, p0, Lcom/google/android/youtube/app/TheFeed;->countryCode:Ljava/lang/String;

    sget-object v3, Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;->THIS_WEEK:Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;

    invoke-static {v1, v5, v2, v3}, Lcom/google/android/youtube/core/async/GDataRequests;->getStandardFeedRequest(Lcom/google/android/youtube/core/async/GDataRequests$StandardFeed;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v6

    .line 99
    .local v6, mostDiscussedRequest:Lcom/google/android/youtube/core/async/GDataRequest;
    const v1, 0x7f0d0044

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v0, Lcom/google/android/youtube/app/TheFeed$BlenderCallback;

    const v5, 0x7fffffff

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/TheFeed$BlenderCallback;-><init>(Lcom/google/android/youtube/app/TheFeed;Lcom/google/android/youtube/core/async/Callback;Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/HashMap;I)V

    .line 104
    .local v0, blender:Lcom/google/android/youtube/app/TheFeed$BlenderCallback;
    iget-object v1, p0, Lcom/google/android/youtube/app/TheFeed;->myRecommendedVideosRequester:Lcom/google/android/youtube/core/async/Requester;

    invoke-interface {v1, v8, v0}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 105
    iget-object v1, p0, Lcom/google/android/youtube/app/TheFeed;->standardFeedRequester:Lcom/google/android/youtube/core/async/Requester;

    invoke-interface {v1, v7, v0}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 106
    iget-object v1, p0, Lcom/google/android/youtube/app/TheFeed;->standardFeedRequester:Lcom/google/android/youtube/core/async/Requester;

    invoke-interface {v1, v6, v0}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 107
    return-void
.end method


# virtual methods
.method public getVideoSources()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/youtube/app/TheFeed;->videoSources:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public request(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 2
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;>;"
    iget-object v0, p1, Lcom/google/android/youtube/core/async/GDataRequest;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    if-nez v0, :cond_0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/app/TheFeed;->makeFeedRequests(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Callback;)V

    .line 75
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p1, Lcom/google/android/youtube/core/async/GDataRequest;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/myfeed/users/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/app/TheFeed;->mySubscriptionUpdatesRequester:Lcom/google/android/youtube/core/async/Requester;

    new-instance v1, Lcom/google/android/youtube/app/TheFeed$SubscriptionUpdatesCallback;

    invoke-direct {v1, p0, p2}, Lcom/google/android/youtube/app/TheFeed$SubscriptionUpdatesCallback;-><init>(Lcom/google/android/youtube/app/TheFeed;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    goto :goto_0

    .line 73
    :cond_1
    iget-object v0, p1, Lcom/google/android/youtube/core/async/GDataRequest;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/youtube/app/TheFeed;->makeMyFeedRequests(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Callback;Lcom/google/android/youtube/core/model/UserAuth;)V

    goto :goto_0
.end method

.method public bridge synthetic request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/TheFeed;->request(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Callback;)V

    return-void
.end method
