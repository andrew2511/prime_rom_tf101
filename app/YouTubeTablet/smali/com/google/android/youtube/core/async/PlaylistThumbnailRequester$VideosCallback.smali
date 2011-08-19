.class Lcom/google/android/youtube/core/async/PlaylistThumbnailRequester$VideosCallback;
.super Ljava/lang/Object;
.source "PlaylistThumbnailRequester.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/async/PlaylistThumbnailRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideosCallback"
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
.field private final origCallback:Lcom/google/android/youtube/core/async/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/youtube/core/async/PlaylistThumbnailRequester;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/PlaylistThumbnailRequester;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, origCallback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/core/async/GDataRequest;Landroid/graphics/Bitmap;>;"
    iput-object p1, p0, Lcom/google/android/youtube/core/async/PlaylistThumbnailRequester$VideosCallback;->this$0:Lcom/google/android/youtube/core/async/PlaylistThumbnailRequester;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p2, p0, Lcom/google/android/youtube/core/async/PlaylistThumbnailRequester$VideosCallback;->origCallback:Lcom/google/android/youtube/core/async/Callback;

    .line 46
    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .locals 1
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/youtube/core/async/PlaylistThumbnailRequester$VideosCallback;->origCallback:Lcom/google/android/youtube/core/async/Callback;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 62
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/async/PlaylistThumbnailRequester$VideosCallback;->onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page;)V
    .locals 7
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
    .line 51
    .local p2, response:Lcom/google/android/youtube/core/model/Page;,"Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 52
    .local v1, thumbs:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    invoke-virtual {p2}, Lcom/google/android/youtube/core/model/Page;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/model/Video;

    .line 53
    .local v2, video:Lcom/google/android/youtube/core/model/Video;
    iget-object v3, v2, Lcom/google/android/youtube/core/model/Video;->thumbnailUri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    .line 54
    iget-object v3, v2, Lcom/google/android/youtube/core/model/Video;->thumbnailUri:Landroid/net/Uri;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 57
    .end local v2           #video:Lcom/google/android/youtube/core/model/Video;
    :cond_1
    iget-object v3, p0, Lcom/google/android/youtube/core/async/PlaylistThumbnailRequester$VideosCallback;->this$0:Lcom/google/android/youtube/core/async/PlaylistThumbnailRequester;

    invoke-static {v3}, Lcom/google/android/youtube/core/async/PlaylistThumbnailRequester;->access$000(Lcom/google/android/youtube/core/async/PlaylistThumbnailRequester;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    new-instance v4, Lcom/google/android/youtube/core/async/PlaylistThumbnailRequester$BitmapsCallback;

    iget-object v5, p0, Lcom/google/android/youtube/core/async/PlaylistThumbnailRequester$VideosCallback;->this$0:Lcom/google/android/youtube/core/async/PlaylistThumbnailRequester;

    iget-object v6, p0, Lcom/google/android/youtube/core/async/PlaylistThumbnailRequester$VideosCallback;->origCallback:Lcom/google/android/youtube/core/async/Callback;

    invoke-direct {v4, v5, p1, v6}, Lcom/google/android/youtube/core/async/PlaylistThumbnailRequester$BitmapsCallback;-><init>(Lcom/google/android/youtube/core/async/PlaylistThumbnailRequester;Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v3, v1, v4}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 58
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/model/Page;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/async/PlaylistThumbnailRequester$VideosCallback;->onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page;)V

    return-void
.end method
