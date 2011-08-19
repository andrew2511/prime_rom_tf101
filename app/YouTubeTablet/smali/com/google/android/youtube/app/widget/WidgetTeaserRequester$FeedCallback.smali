.class Lcom/google/android/youtube/app/widget/WidgetTeaserRequester$FeedCallback;
.super Ljava/lang/Object;
.source "WidgetTeaserRequester.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/app/widget/WidgetTeaserRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeedCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Lcom/google/android/youtube/core/async/GDataRequest;",
        "Lcom/google/android/youtube/core/model/Page",
        "<",
        "Lcom/google/android/youtube/core/model/Video;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final callback:Lcom/google/android/youtube/core/async/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/app/widget/Teaser;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/youtube/app/widget/WidgetTeaserRequester;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/widget/WidgetTeaserRequester;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/app/widget/Teaser;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List<Lcom/google/android/youtube/app/widget/Teaser;>;>;"
    iput-object p1, p0, Lcom/google/android/youtube/app/widget/WidgetTeaserRequester$FeedCallback;->this$0:Lcom/google/android/youtube/app/widget/WidgetTeaserRequester;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Callback;

    iput-object v0, p0, Lcom/google/android/youtube/app/widget/WidgetTeaserRequester$FeedCallback;->callback:Lcom/google/android/youtube/core/async/Callback;

    .line 58
    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .locals 1
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/youtube/app/widget/WidgetTeaserRequester$FeedCallback;->callback:Lcom/google/android/youtube/core/async/Callback;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 83
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/widget/WidgetTeaserRequester$FeedCallback;->onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page;)V
    .locals 8
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p2, response:Lcom/google/android/youtube/core/model/Page;,"Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "widget gets "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " videos"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->v(Ljava/lang/String;)V

    .line 64
    iget-object v4, p2, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    .line 65
    .local v4, videos:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/Video;>;"
    const/4 v3, 0x0

    .line 66
    .local v3, expectedThumbnailCount:I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/youtube/core/model/Video;

    .line 67
    .local v7, video:Lcom/google/android/youtube/core/model/Video;
    iget-object v1, v7, Lcom/google/android/youtube/core/model/Video;->thumbnailUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 68
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 71
    .end local v7           #video:Lcom/google/android/youtube/core/model/Video;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "widget expects "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " thumbnails"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->v(Ljava/lang/String;)V

    .line 72
    new-instance v0, Lcom/google/android/youtube/app/widget/WidgetTeaserRequester$ThumbnailCallback;

    iget-object v2, p0, Lcom/google/android/youtube/app/widget/WidgetTeaserRequester$FeedCallback;->callback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v1, p0, Lcom/google/android/youtube/app/widget/WidgetTeaserRequester$FeedCallback;->this$0:Lcom/google/android/youtube/app/widget/WidgetTeaserRequester;

    invoke-static {v1}, Lcom/google/android/youtube/app/widget/WidgetTeaserRequester;->access$000(Lcom/google/android/youtube/app/widget/WidgetTeaserRequester;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/widget/WidgetTeaserRequester$ThumbnailCallback;-><init>(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Callback;ILjava/util/List;Ljava/util/Map;)V

    .line 74
    .local v0, thumbnailCallback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Landroid/net/Uri;Landroid/graphics/Bitmap;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/youtube/core/model/Video;

    .line 75
    .restart local v7       #video:Lcom/google/android/youtube/core/model/Video;
    iget-object v1, v7, Lcom/google/android/youtube/core/model/Video;->thumbnailUri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    .line 76
    iget-object v1, p0, Lcom/google/android/youtube/app/widget/WidgetTeaserRequester$FeedCallback;->this$0:Lcom/google/android/youtube/app/widget/WidgetTeaserRequester;

    invoke-static {v1}, Lcom/google/android/youtube/app/widget/WidgetTeaserRequester;->access$100(Lcom/google/android/youtube/app/widget/WidgetTeaserRequester;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v1

    iget-object v2, v7, Lcom/google/android/youtube/core/model/Video;->thumbnailUri:Landroid/net/Uri;

    invoke-interface {v1, v2, v0}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    goto :goto_1

    .line 79
    .end local v7           #video:Lcom/google/android/youtube/core/model/Video;
    :cond_3
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/model/Page;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/widget/WidgetTeaserRequester$FeedCallback;->onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page;)V

    return-void
.end method
