.class Lcom/google/android/youtube/app/ui/WatchRelatedHelper$1;
.super Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;
.source "WatchRelatedHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/app/ui/WatchRelatedHelper;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/app/adapter/VideoListAdapter;Lcom/google/android/youtube/app/Navigation;Lcom/google/android/youtube/app/Requesters;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/Analytics;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/app/ui/WatchRelatedHelper;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/WatchRelatedHelper;Landroid/app/Activity;Lcom/google/android/youtube/app/Navigation;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/app/adapter/VideoListAdapter;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;ZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;)V
    .locals 11
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter
    .parameter
    .parameter
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 57
    .local p6, x4:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;>;"
    .local p7, x5:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Ljava/util/List<Ljava/lang/String;>;Ljava/util/List<Lcom/google/android/youtube/core/model/MusicVideo;>;>;"
    .local p8, x6:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Landroid/net/Uri;Landroid/graphics/Bitmap;>;"
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/WatchRelatedHelper$1;->this$0:Lcom/google/android/youtube/app/ui/WatchRelatedHelper;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    invoke-direct/range {v0 .. v10}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/Navigation;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/app/adapter/VideoListAdapter;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;ZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;)V

    return-void
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
            "Lcom/google/android/youtube/core/model/Video;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p2, entries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/Video;>;"
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->onEntries(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V

    .line 61
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/WatchRelatedHelper$1;->this$0:Lcom/google/android/youtube/app/ui/WatchRelatedHelper;

    invoke-static {v2}, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;->access$000(Lcom/google/android/youtube/app/ui/WatchRelatedHelper;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/WatchRelatedHelper$1;->this$0:Lcom/google/android/youtube/app/ui/WatchRelatedHelper;

    invoke-static {v2}, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;->access$000(Lcom/google/android/youtube/app/ui/WatchRelatedHelper;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/youtube/core/async/GDataRequest;->pathEquals(Lcom/google/android/youtube/core/async/GDataRequest;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/Video;

    .line 63
    .local v1, video:Lcom/google/android/youtube/core/model/Video;
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/WatchRelatedHelper$1;->this$0:Lcom/google/android/youtube/app/ui/WatchRelatedHelper;

    invoke-static {v2}, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;->access$100(Lcom/google/android/youtube/app/ui/WatchRelatedHelper;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    const v4, 0x7f0d00b2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 66
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #video:Lcom/google/android/youtube/core/model/Video;
    :cond_0
    return-void
.end method
