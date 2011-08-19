.class Lcom/google/android/youtube/app/widget/WidgetTeaserRequester$ThumbnailCallback;
.super Ljava/lang/Object;
.source "WidgetTeaserRequester.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/app/widget/WidgetTeaserRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThumbnailCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Landroid/net/Uri;",
        "Landroid/graphics/Bitmap;",
        ">;"
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

.field private final originalRequest:Lcom/google/android/youtube/core/async/GDataRequest;

.field private final pendingRequestsCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final thumbnailUriMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final videoSources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final videos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Callback;ILjava/util/List;Ljava/util/Map;)V
    .locals 1
    .parameter "originalRequest"
    .parameter
    .parameter "expectedThumbnailCount"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/app/widget/Teaser;",
            ">;>;I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List<Lcom/google/android/youtube/app/widget/Teaser;>;>;"
    .local p4, videos:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/Video;>;"
    .local p5, videoSources:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/google/android/youtube/app/widget/WidgetTeaserRequester$ThumbnailCallback;->originalRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 105
    iput-object p2, p0, Lcom/google/android/youtube/app/widget/WidgetTeaserRequester$ThumbnailCallback;->callback:Lcom/google/android/youtube/core/async/Callback;

    .line 106
    iput-object p4, p0, Lcom/google/android/youtube/app/widget/WidgetTeaserRequester$ThumbnailCallback;->videos:Ljava/util/List;

    .line 107
    iput-object p5, p0, Lcom/google/android/youtube/app/widget/WidgetTeaserRequester$ThumbnailCallback;->videoSources:Ljava/util/Map;

    .line 108
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/youtube/app/widget/WidgetTeaserRequester$ThumbnailCallback;->pendingRequestsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 109
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, p3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/youtube/app/widget/WidgetTeaserRequester$ThumbnailCallback;->thumbnailUriMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 110
    return-void
.end method

.method private notifyThumbnailReceived()V
    .locals 7

    .prologue
    .line 119
    iget-object v5, p0, Lcom/google/android/youtube/app/widget/WidgetTeaserRequester$ThumbnailCallback;->pendingRequestsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v5

    if-nez v5, :cond_2

    .line 122
    const-string v5, "Last thumbnail received"

    invoke-static {v5}, Lcom/google/android/youtube/core/L;->v(Ljava/lang/String;)V

    .line 123
    new-instance v2, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/google/android/youtube/app/widget/WidgetTeaserRequester$ThumbnailCallback;->videos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 124
    .local v2, teasers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/youtube/app/widget/Teaser;>;"
    iget-object v5, p0, Lcom/google/android/youtube/app/widget/WidgetTeaserRequester$ThumbnailCallback;->videos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/youtube/core/model/Video;

    .line 125
    .local v4, video:Lcom/google/android/youtube/core/model/Video;
    iget-object v5, v4, Lcom/google/android/youtube/core/model/Video;->thumbnailUri:Landroid/net/Uri;

    if-eqz v5, :cond_0

    .line 128
    iget-object v5, p0, Lcom/google/android/youtube/app/widget/WidgetTeaserRequester$ThumbnailCallback;->thumbnailUriMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v6, v4, Lcom/google/android/youtube/core/model/Video;->thumbnailUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 129
    .local v3, thumbnail:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/google/android/youtube/app/widget/WidgetTeaserRequester$ThumbnailCallback;->videoSources:Ljava/util/Map;

    iget-object v6, v4, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 130
    .local v1, source:Ljava/lang/Integer;
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    iget-object v5, v4, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 131
    new-instance v5, Lcom/google/android/youtube/app/widget/Teaser;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v4, v3, v6}, Lcom/google/android/youtube/app/widget/Teaser;-><init>(Lcom/google/android/youtube/core/model/Video;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    .end local v1           #source:Ljava/lang/Integer;
    .end local v3           #thumbnail:Landroid/graphics/Bitmap;
    .end local v4           #video:Lcom/google/android/youtube/core/model/Video;
    :cond_1
    iget-object v5, p0, Lcom/google/android/youtube/app/widget/WidgetTeaserRequester$ThumbnailCallback;->callback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v6, p0, Lcom/google/android/youtube/app/widget/WidgetTeaserRequester$ThumbnailCallback;->originalRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-interface {v5, v6, v2}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #teasers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/youtube/app/widget/Teaser;>;"
    :cond_2
    return-void
.end method


# virtual methods
.method public onError(Landroid/net/Uri;Ljava/lang/Exception;)V
    .locals 1
    .parameter "thumbnailRequest"
    .parameter "exception"

    .prologue
    .line 139
    const-string v0, "widget thumbnail error"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    invoke-direct {p0}, Lcom/google/android/youtube/app/widget/WidgetTeaserRequester$ThumbnailCallback;->notifyThumbnailReceived()V

    .line 143
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    check-cast p1, Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/widget/WidgetTeaserRequester$ThumbnailCallback;->onError(Landroid/net/Uri;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "thumbnailRequest"
    .parameter "response"

    .prologue
    .line 113
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 114
    iget-object v0, p0, Lcom/google/android/youtube/app/widget/WidgetTeaserRequester$ThumbnailCallback;->thumbnailUriMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-direct {p0}, Lcom/google/android/youtube/app/widget/WidgetTeaserRequester$ThumbnailCallback;->notifyThumbnailReceived()V

    .line 116
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    check-cast p1, Landroid/net/Uri;

    .end local p1
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/widget/WidgetTeaserRequester$ThumbnailCallback;->onResponse(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    return-void
.end method
