.class public Lcom/google/android/youtube/app/tablet/PlaylistsPagedViewHelper;
.super Lcom/google/android/youtube/core/ui/PagedViewHelper;
.source "PlaylistsPagedViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/app/tablet/PlaylistsPagedViewHelper$1;,
        Lcom/google/android/youtube/app/tablet/PlaylistsPagedViewHelper$ThumbnailCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/youtube/core/ui/PagedViewHelper",
        "<",
        "Lcom/google/android/youtube/core/model/Playlist;",
        ">;"
    }
.end annotation


# instance fields
.field private final playlistsAdapter:Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;

.field private final thumbnailCallback:Lcom/google/android/youtube/core/async/ActivityCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/ActivityCallback",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final thumbnailsRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/app/Navigation;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;)V
    .locals 3
    .parameter "activity"
    .parameter "navigation"
    .parameter "list"
    .parameter "adapter"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/youtube/app/Navigation;",
            "Lcom/google/android/youtube/core/ui/PagedView;",
            "Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Playlist;",
            ">;>;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p5, playlistsRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Playlist;>;>;"
    .local p6, thumbnailsRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Landroid/graphics/Bitmap;>;"
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/google/android/youtube/core/ui/PagedViewHelper;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/core/adapter/ArrayListAdapter;Lcom/google/android/youtube/core/async/Requester;)V

    .line 40
    const-string v0, "thumbnailsRequester may not be null"

    invoke-static {p6, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Requester;

    iput-object v0, p0, Lcom/google/android/youtube/app/tablet/PlaylistsPagedViewHelper;->thumbnailsRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 42
    iput-object p4, p0, Lcom/google/android/youtube/app/tablet/PlaylistsPagedViewHelper;->playlistsAdapter:Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;

    .line 43
    new-instance v0, Lcom/google/android/youtube/core/async/ActivityCallback;

    new-instance v1, Lcom/google/android/youtube/app/tablet/PlaylistsPagedViewHelper$ThumbnailCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/youtube/app/tablet/PlaylistsPagedViewHelper$ThumbnailCallback;-><init>(Lcom/google/android/youtube/app/tablet/PlaylistsPagedViewHelper;Lcom/google/android/youtube/app/tablet/PlaylistsPagedViewHelper$1;)V

    invoke-direct {v0, p1, v1}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/tablet/PlaylistsPagedViewHelper;->thumbnailCallback:Lcom/google/android/youtube/core/async/ActivityCallback;

    .line 45
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/youtube/app/tablet/PlaylistsPagedViewHelper;)Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/PlaylistsPagedViewHelper;->playlistsAdapter:Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;

    return-object v0
.end method


# virtual methods
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
            "Lcom/google/android/youtube/core/model/Playlist;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p2, entries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/Playlist;>;"
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/core/ui/PagedViewHelper;->onEntries(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V

    .line 50
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/Playlist;

    .line 51
    .local v1, playlist:Lcom/google/android/youtube/core/model/Playlist;
    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/PlaylistsPagedViewHelper;->thumbnailsRequester:Lcom/google/android/youtube/core/async/Requester;

    iget-object v3, v1, Lcom/google/android/youtube/core/model/Playlist;->contentUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/tablet/PlaylistsPagedViewHelper;->getLastRequest()Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/youtube/core/async/GDataRequest;->create(Landroid/net/Uri;Lcom/google/android/youtube/core/async/GDataRequest;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/app/tablet/PlaylistsPagedViewHelper;->thumbnailCallback:Lcom/google/android/youtube/core/async/ActivityCallback;

    invoke-interface {v2, v3, v4}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    goto :goto_0

    .line 54
    .end local v1           #playlist:Lcom/google/android/youtube/core/model/Playlist;
    :cond_0
    return-void
.end method
