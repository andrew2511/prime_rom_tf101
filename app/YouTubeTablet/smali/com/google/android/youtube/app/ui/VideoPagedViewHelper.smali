.class public Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;
.super Lcom/google/android/youtube/core/ui/PagedViewHelper;
.source "VideoPagedViewHelper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/app/ui/VideoPagedViewHelper$1;,
        Lcom/google/android/youtube/app/ui/VideoPagedViewHelper$MusicCallback;,
        Lcom/google/android/youtube/app/ui/VideoPagedViewHelper$ThumbnailCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/youtube/core/ui/PagedViewHelper",
        "<",
        "Lcom/google/android/youtube/core/model/Video;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field private final analytics:Lcom/google/android/youtube/core/Analytics;

.field private final directAccess:Z

.field private final logCategory:Lcom/google/android/youtube/core/Analytics$VideoCategory;

.field private final musicCallback:Lcom/google/android/youtube/core/async/ActivityCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/ActivityCallback",
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

.field private musicVideosRequester:Lcom/google/android/youtube/core/async/Requester;
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

.field private final navigation:Lcom/google/android/youtube/app/Navigation;

.field private final thumbnailCallback:Lcom/google/android/youtube/core/async/ActivityCallback;
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

.field private final videoListAdapter:Lcom/google/android/youtube/app/adapter/VideoListAdapter;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/app/Navigation;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/app/adapter/VideoListAdapter;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;)V
    .locals 11
    .parameter "activity"
    .parameter "navigation"
    .parameter "list"
    .parameter "adapter"
    .parameter
    .parameter
    .parameter
    .parameter "analytics"
    .parameter "logCategory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/youtube/app/Navigation;",
            "Lcom/google/android/youtube/core/ui/PagedView;",
            "Lcom/google/android/youtube/app/adapter/VideoListAdapter;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;>;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/MusicVideo;",
            ">;>;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/google/android/youtube/core/Analytics;",
            "Lcom/google/android/youtube/core/Analytics$VideoCategory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    .local p5, videoPageRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;>;"
    .local p6, musicVideosRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Ljava/util/List<Ljava/lang/String;>;Ljava/util/List<Lcom/google/android/youtube/core/model/MusicVideo;>;>;"
    .local p7, thumbnailRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Landroid/net/Uri;Landroid/graphics/Bitmap;>;"
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/Navigation;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/app/adapter/VideoListAdapter;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;ZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/app/Navigation;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/app/adapter/VideoListAdapter;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;ZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;)V
    .locals 3
    .parameter "activity"
    .parameter "navigation"
    .parameter "list"
    .parameter "adapter"
    .parameter
    .parameter
    .parameter
    .parameter "directAccess"
    .parameter "analytics"
    .parameter "logCategory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/youtube/app/Navigation;",
            "Lcom/google/android/youtube/core/ui/PagedView;",
            "Lcom/google/android/youtube/app/adapter/VideoListAdapter;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;>;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/MusicVideo;",
            ">;>;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            ">;Z",
            "Lcom/google/android/youtube/core/Analytics;",
            "Lcom/google/android/youtube/core/Analytics$VideoCategory;",
            ")V"
        }
    .end annotation

    .prologue
    .local p5, videoPageRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;>;"
    .local p6, musicVideosRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Ljava/util/List<Ljava/lang/String;>;Ljava/util/List<Lcom/google/android/youtube/core/model/MusicVideo;>;>;"
    .local p7, thumbnailRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Landroid/net/Uri;Landroid/graphics/Bitmap;>;"
    const/4 v2, 0x0

    .line 87
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/google/android/youtube/core/ui/PagedViewHelper;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/core/adapter/ArrayListAdapter;Lcom/google/android/youtube/core/async/Requester;)V

    .line 89
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/Navigation;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->navigation:Lcom/google/android/youtube/app/Navigation;

    .line 90
    invoke-static {p7}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Requester;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->thumbnailRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 91
    invoke-static {p6}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Requester;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->musicVideosRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 92
    const-string v0, "analytics may not be null"

    invoke-static {p9, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/Analytics;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->analytics:Lcom/google/android/youtube/core/Analytics;

    .line 93
    const-string v0, "logCategory may not be null"

    invoke-static {p10, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/Analytics$VideoCategory;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->logCategory:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    .line 95
    iput-object p4, p0, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->videoListAdapter:Lcom/google/android/youtube/app/adapter/VideoListAdapter;

    .line 96
    iput-boolean p8, p0, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->directAccess:Z

    .line 98
    new-instance v0, Lcom/google/android/youtube/core/async/ActivityCallback;

    new-instance v1, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper$ThumbnailCallback;

    invoke-direct {v1, p0, v2}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper$ThumbnailCallback;-><init>(Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;Lcom/google/android/youtube/app/ui/VideoPagedViewHelper$1;)V

    invoke-direct {v0, p1, v1}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->thumbnailCallback:Lcom/google/android/youtube/core/async/ActivityCallback;

    .line 99
    new-instance v0, Lcom/google/android/youtube/core/async/ActivityCallback;

    new-instance v1, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper$MusicCallback;

    invoke-direct {v1, p0, v2}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper$MusicCallback;-><init>(Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;Lcom/google/android/youtube/app/ui/VideoPagedViewHelper$1;)V

    invoke-direct {v0, p1, v1}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->musicCallback:Lcom/google/android/youtube/core/async/ActivityCallback;

    .line 102
    invoke-interface {p3, p0}, Lcom/google/android/youtube/core/ui/PagedView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 103
    invoke-interface {p3, p0}, Lcom/google/android/youtube/core/ui/PagedView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 104
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;)Lcom/google/android/youtube/app/adapter/VideoListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->videoListAdapter:Lcom/google/android/youtube/app/adapter/VideoListAdapter;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/google/android/youtube/core/model/Video;)Z
    .locals 2
    .parameter "video"

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->directAccess:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    sget-object v1, Lcom/google/android/youtube/core/model/Video$State;->PLAYABLE:Lcom/google/android/youtube/core/model/Video$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    check-cast p1, Lcom/google/android/youtube/core/model/Video;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->apply(Lcom/google/android/youtube/core/model/Video;)Z

    move-result v0

    return v0
.end method

.method protected onEntries(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V
    .locals 6
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
    .line 113
    .local p2, entries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/Video;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v2, videoIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/Video;

    .line 115
    .local v1, video:Lcom/google/android/youtube/core/model/Video;
    iget-object v3, v1, Lcom/google/android/youtube/core/model/Video;->thumbnailUri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    .line 116
    iget-object v3, p0, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->thumbnailRequester:Lcom/google/android/youtube/core/async/Requester;

    iget-object v4, v1, Lcom/google/android/youtube/core/model/Video;->thumbnailUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->thumbnailCallback:Lcom/google/android/youtube/core/async/ActivityCallback;

    invoke-interface {v3, v4, v5}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 117
    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Video;->couldBeMusicVideo()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 118
    iget-object v3, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    .end local v1           #video:Lcom/google/android/youtube/core/model/Video;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 123
    iget-object v3, p0, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->musicVideosRequester:Lcom/google/android/youtube/core/async/Requester;

    iget-object v4, p0, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->musicCallback:Lcom/google/android/youtube/core/async/ActivityCallback;

    invoke-interface {v3, v2, v4}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 125
    :cond_2
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
    .line 158
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->videoListAdapter:Lcom/google/android/youtube/app/adapter/VideoListAdapter;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->getCount()I

    move-result v1

    if-ge p3, v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->videoListAdapter:Lcom/google/android/youtube/app/adapter/VideoListAdapter;

    invoke-virtual {v1, p3}, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    .line 160
    .local v0, video:Lcom/google/android/youtube/core/model/Video;
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->analytics:Lcom/google/android/youtube/core/Analytics;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->logCategory:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    invoke-interface {v1, v2, p3}, Lcom/google/android/youtube/core/Analytics;->trackPlaySelectedEvent(Lcom/google/android/youtube/core/Analytics$VideoCategory;I)V

    .line 161
    invoke-virtual {p0, p2, v0}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->onVideoClick(Landroid/view/View;Lcom/google/android/youtube/core/model/Video;)V

    .line 163
    .end local v0           #video:Lcom/google/android/youtube/core/model/Video;
    :cond_0
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->videoListAdapter:Lcom/google/android/youtube/app/adapter/VideoListAdapter;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->getCount()I

    move-result v1

    if-ge p3, v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->videoListAdapter:Lcom/google/android/youtube/app/adapter/VideoListAdapter;

    invoke-virtual {v1, p3}, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    .line 169
    .local v0, video:Lcom/google/android/youtube/core/model/Video;
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->analytics:Lcom/google/android/youtube/core/Analytics;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->logCategory:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    invoke-interface {v1, v2, p3}, Lcom/google/android/youtube/core/Analytics;->trackPlaySelectedEvent(Lcom/google/android/youtube/core/Analytics$VideoCategory;I)V

    .line 170
    invoke-virtual {p0, p2, v0}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->onVideoLongClick(Landroid/view/View;Lcom/google/android/youtube/core/model/Video;)Z

    move-result v1

    .line 172
    .end local v0           #video:Lcom/google/android/youtube/core/model/Video;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onVideoClick(Landroid/view/View;Lcom/google/android/youtube/core/model/Video;)V
    .locals 2
    .parameter "view"
    .parameter "video"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->navigation:Lcom/google/android/youtube/app/Navigation;

    iget-object v1, p2, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/app/Navigation;->toWatch(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method protected onVideoLongClick(Landroid/view/View;Lcom/google/android/youtube/core/model/Video;)Z
    .locals 1
    .parameter "view"
    .parameter "video"

    .prologue
    .line 181
    const/4 v0, 0x1

    return v0
.end method
