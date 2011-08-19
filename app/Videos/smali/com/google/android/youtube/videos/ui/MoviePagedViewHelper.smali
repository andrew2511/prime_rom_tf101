.class public Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;
.super Lcom/google/android/youtube/core/ui/PagedViewHelper;
.source "MoviePagedViewHelper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper$1;,
        Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper$ThumbnailCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/youtube/core/ui/PagedViewHelper",
        "<",
        "Lcom/google/android/youtube/core/model/Video;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private final movieListAdapter:Lcom/google/android/youtube/videos/adapter/MovieListAdapter;

.field private final posterArtCallback:Lcom/google/android/youtube/core/async/ActivityCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/ActivityCallback",
            "<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final posterArtRequester:Lcom/google/android/youtube/core/async/Requester;
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

.field private userAuth:Lcom/google/android/youtube/core/model/UserAuth;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/videos/adapter/MovieListAdapter;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;)V
    .locals 3
    .parameter "activity"
    .parameter "list"
    .parameter "adapter"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/youtube/core/ui/PagedView;",
            "Lcom/google/android/youtube/videos/adapter/MovieListAdapter;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;>;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p4, moviePageRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;>;"
    .local p5, posterArtRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Landroid/net/Uri;Landroid/graphics/Bitmap;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/youtube/core/ui/PagedViewHelper;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/core/adapter/ArrayListAdapter;Lcom/google/android/youtube/core/async/Requester;)V

    .line 51
    invoke-static {p5}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Requester;

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;->posterArtRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 52
    iput-object p3, p0, Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;->movieListAdapter:Lcom/google/android/youtube/videos/adapter/MovieListAdapter;

    .line 53
    new-instance v0, Lcom/google/android/youtube/core/async/ActivityCallback;

    new-instance v1, Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper$ThumbnailCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper$ThumbnailCallback;-><init>(Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper$1;)V

    invoke-direct {v0, p1, v1}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;->posterArtCallback:Lcom/google/android/youtube/core/async/ActivityCallback;

    .line 54
    invoke-interface {p2, p0}, Lcom/google/android/youtube/core/ui/PagedView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 55
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;)Lcom/google/android/youtube/videos/adapter/MovieListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;->movieListAdapter:Lcom/google/android/youtube/videos/adapter/MovieListAdapter;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/google/android/youtube/core/model/Video;)Z
    .locals 2
    .parameter "video"

    .prologue
    .line 66
    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/Video;->isMovie()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    sget-object v1, Lcom/google/android/youtube/core/model/Video$State;->PLAYABLE:Lcom/google/android/youtube/core/model/Video$State;

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/google/android/youtube/videos/utils/VideoUtil;->hasStreams(Lcom/google/android/youtube/core/model/Video;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    check-cast p1, Lcom/google/android/youtube/core/model/Video;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;->apply(Lcom/google/android/youtube/core/model/Video;)Z

    move-result v0

    return v0
.end method

.method public final varargs init(Lcom/google/android/youtube/core/model/UserAuth;[Lcom/google/android/youtube/core/async/GDataRequest;)V
    .locals 0
    .parameter "userAuth"
    .parameter "requests"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    .line 59
    invoke-virtual {p0, p2}, Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;->init([Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 60
    return-void
.end method

.method protected onEntries(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V
    .locals 5
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p2, entries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/Video;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/Video;

    .line 73
    .local v1, video:Lcom/google/android/youtube/core/model/Video;
    iget-object v2, v1, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/Video$Movie;->posterUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;->posterArtRequester:Lcom/google/android/youtube/core/async/Requester;

    iget-object v3, v1, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    iget-object v3, v3, Lcom/google/android/youtube/core/model/Video$Movie;->posterUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;->posterArtCallback:Lcom/google/android/youtube/core/async/ActivityCallback;

    invoke-interface {v2, v3, v4}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    goto :goto_0

    .line 77
    .end local v1           #video:Lcom/google/android/youtube/core/model/Video;
    :cond_1
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;->movieListAdapter:Lcom/google/android/youtube/videos/adapter/MovieListAdapter;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;->getCount()I

    move-result v0

    if-ge p3, v0, :cond_0

    .line 82
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;->activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;->movieListAdapter:Lcom/google/android/youtube/videos/adapter/MovieListAdapter;

    invoke-virtual {v0, p3}, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-static {v1, v0, v2}, Lcom/google/android/youtube/core/utils/ExternalIntents;->startShopForVideoDetails(Landroid/app/Activity;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 85
    :cond_0
    return-void
.end method
