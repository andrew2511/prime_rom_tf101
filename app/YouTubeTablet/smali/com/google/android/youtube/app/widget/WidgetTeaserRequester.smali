.class public Lcom/google/android/youtube/app/widget/WidgetTeaserRequester;
.super Ljava/lang/Object;
.source "WidgetTeaserRequester.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Requester;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/app/widget/WidgetTeaserRequester$ThumbnailCallback;,
        Lcom/google/android/youtube/app/widget/WidgetTeaserRequester$FeedCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Requester",
        "<",
        "Lcom/google/android/youtube/core/async/GDataRequest;",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/youtube/app/widget/Teaser;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final sourceMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final theFeedRequester:Lcom/google/android/youtube/core/async/Requester;
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


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            ">;",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, theFeedRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;>;"
    .local p2, thumbnailRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Landroid/net/Uri;Landroid/graphics/Bitmap;>;"
    .local p3, sourceMap:Ljava/util/concurrent/ConcurrentMap;,"Ljava/util/concurrent/ConcurrentMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Requester;

    iput-object v0, p0, Lcom/google/android/youtube/app/widget/WidgetTeaserRequester;->theFeedRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 43
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Requester;

    iput-object v0, p0, Lcom/google/android/youtube/app/widget/WidgetTeaserRequester;->thumbnailRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 44
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentMap;

    iput-object v0, p0, Lcom/google/android/youtube/app/widget/WidgetTeaserRequester;->sourceMap:Ljava/util/concurrent/ConcurrentMap;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/app/widget/WidgetTeaserRequester;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/youtube/app/widget/WidgetTeaserRequester;->sourceMap:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/youtube/app/widget/WidgetTeaserRequester;)Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/youtube/app/widget/WidgetTeaserRequester;->thumbnailRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method


# virtual methods
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
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/app/widget/Teaser;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List<Lcom/google/android/youtube/app/widget/Teaser;>;>;"
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 50
    iget-object v0, p0, Lcom/google/android/youtube/app/widget/WidgetTeaserRequester;->theFeedRequester:Lcom/google/android/youtube/core/async/Requester;

    new-instance v1, Lcom/google/android/youtube/app/widget/WidgetTeaserRequester$FeedCallback;

    invoke-direct {v1, p0, p2}, Lcom/google/android/youtube/app/widget/WidgetTeaserRequester$FeedCallback;-><init>(Lcom/google/android/youtube/app/widget/WidgetTeaserRequester;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 51
    return-void
.end method

.method public bridge synthetic request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/widget/WidgetTeaserRequester;->request(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Callback;)V

    return-void
.end method
