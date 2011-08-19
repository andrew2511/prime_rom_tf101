.class public final Lcom/google/android/youtube/videos/DefaultRequesters;
.super Ljava/lang/Object;
.source "DefaultRequesters.java"

# interfaces
.implements Lcom/google/android/youtube/videos/Requesters;
.implements Lcom/google/android/youtube/core/async/UserAuthorizer$OnSignedInChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/videos/DefaultRequesters$PurchasesPageSplitter;,
        Lcom/google/android/youtube/videos/DefaultRequesters$VideoPageSplitter;
    }
.end annotation


# static fields
.field private static final BITMAP_BYTES_CACHE_SIZE:I = 0x64

.field private static final BITMAP_BYTES_LARGE_CACHE_SIZE:I = 0x1f4

.field private static final CHANNEL_FORMATS_CACHE_SIZE:I = 0x32

.field private static final CONTENT_LENGTH_CACHE_SIZE:I = 0x1f4

.field private static final FIVE_MINUTES:J = 0x493e0L

.field private static final HALF_HOUR:J = 0x1b7740L

.field private static final ONE_DAY:J = 0x5265c00L

.field private static final ONE_HOUR:J = 0x36ee80L

.field private static final ONE_WEEK:J = 0x240c8400L

.field private static final PERSISTENT_CACHE_FILE_EXTENSION:Ljava/lang/String; = ".cache"

.field private static final PERSISTENT_CACHE_SHRINKING_LIMIT:J = 0x1400000L

.field private static final PURCHASES_PAGE_CACHE_SIZE:I = 0x14

.field private static final STREAM_EXPIRATION_TIME:J = 0xdbba00L

.field private static final SUBTITLE_CACHE_SIZE:I = 0x14

.field private static final SUBTITLE_TRACK_LIST_CACHE_SIZE:I = 0x14

.field private static final TWO_HOURS:J = 0x6ddd00L

.field private static final TWO_WEEKS:J = 0x48190800L

.field private static final VIDEO_CACHE_SIZE:I = 0x1f4

.field private static final VIDEO_PAGE_CACHE_SIZE:I = 0x32


# instance fields
.field private bitmapBytesRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/net/Uri;",
            "[B>;"
        }
    .end annotation
.end field

.field private final cachePath:Ljava/lang/String;

.field private channelFormatsRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final clock:Lcom/google/android/youtube/core/utils/Clock;

.field private final context:Landroid/content/Context;

.field private final executor:Ljava/util/concurrent/Executor;

.field private fastMyPurchasesRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;>;"
        }
    .end annotation
.end field

.field private fastOnlineStreamsRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/VideoStreams;",
            ">;"
        }
    .end annotation
.end field

.field private freshMyPurchasesRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;>;"
        }
    .end annotation
.end field

.field private freshOnlineStreamsRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/VideoStreams;",
            ">;"
        }
    .end annotation
.end field

.field private gdataRequestGetConverter:Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;

.field private final httpClient:Lorg/apache/http/client/HttpClient;

.field private inMemoryVideoPageCache:Lcom/google/android/youtube/core/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/cache/Cache",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/async/Timestamped",
            "<",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mostPopularVideosRequester:Lcom/google/android/youtube/core/async/Requester;
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

.field private offlineStreamsRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/VideoStreams;",
            ">;"
        }
    .end annotation
.end field

.field private persistentVideoPageCache:Lcom/google/android/youtube/core/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/cache/Cache",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/async/Timestamped",
            "<",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private pingRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final platform:Lcom/google/android/youtube/videos/Platform;

.field private posterArtRequester:Lcom/google/android/youtube/core/async/Requester;
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

.field private sequentialMyPurchasesRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;>;"
        }
    .end annotation
.end field

.field private splittingVideoCache:Lcom/google/android/youtube/core/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/cache/Cache",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/async/Timestamped",
            "<",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private streamLengthRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/videos/StreamLengthRequest;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private subtitleRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/model/SubtitleTrack;",
            "Lcom/google/android/youtube/core/model/Subtitle;",
            ">;"
        }
    .end annotation
.end field

.field private subtitleTracksRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/SubtitleTrack;",
            ">;>;"
        }
    .end annotation
.end field

.field private uriRequestGetConverter:Lcom/google/android/youtube/core/converter/http/UriRequestConverter;

.field private final uriRewriter:Lcom/google/android/youtube/core/utils/UriRewriter;

.field private videoCache:Lcom/google/android/youtube/core/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/cache/Cache",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/async/Timestamped",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;>;"
        }
    .end annotation
.end field

.field private videoPageHttpRequester:Lcom/google/android/youtube/core/async/Requester;
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

.field private videoRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;"
        }
    .end annotation
.end field

.field private videoResponseConverter:Lcom/google/android/youtube/core/converter/http/VideoResponseConverter;

.field private videosRequester:Lcom/google/android/youtube/core/async/Requester;
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

.field private final xmlParser:Lcom/google/android/youtube/core/converter/XmlParser;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/utils/Clock;Lcom/google/android/youtube/core/converter/XmlParser;Lcom/google/android/youtube/videos/Platform;)V
    .locals 2
    .parameter "context"
    .parameter "executor"
    .parameter "httpClient"
    .parameter "clock"
    .parameter "parser"
    .parameter "platform"

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    const-string v0, "context can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->context:Landroid/content/Context;

    .line 159
    const-string v0, "executor can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->executor:Ljava/util/concurrent/Executor;

    .line 160
    const-string v0, "httpClient can\'t be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/HttpClient;

    iput-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 161
    const-string v0, "clock can\'t be null"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/Clock;

    iput-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->clock:Lcom/google/android/youtube/core/utils/Clock;

    .line 162
    const-string v0, "parser can\'t be null"

    invoke-static {p5, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/converter/XmlParser;

    iput-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->xmlParser:Lcom/google/android/youtube/core/converter/XmlParser;

    .line 163
    const-string v0, "platform can\'t be null"

    invoke-static {p6, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/videos/Platform;

    iput-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->platform:Lcom/google/android/youtube/videos/Platform;

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->cachePath:Ljava/lang/String;

    .line 165
    new-instance v0, Lcom/google/android/youtube/core/utils/UriRewriter;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/utils/UriRewriter;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->uriRewriter:Lcom/google/android/youtube/core/utils/UriRewriter;

    .line 166
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/youtube/videos/DefaultRequesters;)Lcom/google/android/youtube/core/cache/Cache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->persistentVideoPageCache:Lcom/google/android/youtube/core/cache/Cache;

    return-object v0
.end method

.method private createBitmapBytesRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/net/Uri;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 343
    new-instance v0, Lcom/google/android/youtube/core/converter/http/HttpToBytesResponseConverter;

    invoke-direct {v0}, Lcom/google/android/youtube/core/converter/http/HttpToBytesResponseConverter;-><init>()V

    .line 346
    .local v0, httpToBytesConverter:Lcom/google/android/youtube/core/converter/ResponseConverter;,"Lcom/google/android/youtube/core/converter/ResponseConverter<Lorg/apache/http/HttpResponse;[B>;"
    iget-object v6, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->uriRequestGetConverter:Lcom/google/android/youtube/core/converter/http/UriRequestConverter;

    invoke-direct {p0, v6, v0}, Lcom/google/android/youtube/videos/DefaultRequesters;->newHttpRequester(Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)Lcom/google/android/youtube/core/async/HttpRequester;

    move-result-object v3

    .line 349
    .local v3, networkRequester:Lcom/google/android/youtube/core/async/HttpRequester;,"Lcom/google/android/youtube/core/async/HttpRequester<Landroid/net/Uri;[B>;"
    invoke-direct {p0}, Lcom/google/android/youtube/videos/DefaultRequesters;->newPersistentCache()Lcom/google/android/youtube/core/cache/PersistentCache;

    move-result-object v4

    .line 351
    .local v4, persistenceCache:Lcom/google/android/youtube/core/cache/PersistentCache;,"Lcom/google/android/youtube/core/cache/PersistentCache<Landroid/net/Uri;Lcom/google/android/youtube/core/async/Timestamped<[B>;>;"
    const-wide/32 v6, 0x240c8400

    invoke-direct {p0, v4, v3, v6, v7}, Lcom/google/android/youtube/videos/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v5

    .line 354
    .local v5, persistenceRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Landroid/net/Uri;[B>;"
    iget-object v6, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->platform:Lcom/google/android/youtube/videos/Platform;

    iget-object v7, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->context:Landroid/content/Context;

    invoke-interface {v6, v7}, Lcom/google/android/youtube/videos/Platform;->isLargeHeapAvailable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x1f4

    :goto_0
    invoke-direct {p0, v6}, Lcom/google/android/youtube/videos/DefaultRequesters;->newInMemoryCache(I)Lcom/google/android/youtube/core/cache/InMemoryLruCache;

    move-result-object v1

    .line 358
    .local v1, memoryCache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<Landroid/net/Uri;Lcom/google/android/youtube/core/async/Timestamped<[B>;>;"
    const-wide/32 v6, 0x6ddd00

    invoke-direct {p0, v1, v5, v6, v7}, Lcom/google/android/youtube/videos/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v2

    .line 361
    .local v2, memoryRequester:Lcom/google/android/youtube/core/async/TimestampedCachingRequester;,"Lcom/google/android/youtube/core/async/TimestampedCachingRequester<Landroid/net/Uri;[B>;"
    return-object v2

    .line 354
    .end local v1           #memoryCache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<Landroid/net/Uri;Lcom/google/android/youtube/core/async/Timestamped<[B>;>;"
    .end local v2           #memoryRequester:Lcom/google/android/youtube/core/async/TimestampedCachingRequester;,"Lcom/google/android/youtube/core/async/TimestampedCachingRequester<Landroid/net/Uri;[B>;"
    :cond_0
    const/16 v6, 0x64

    goto :goto_0
.end method

.method private createBitmapRequester(IZ)Lcom/google/android/youtube/core/async/Requester;
    .locals 4
    .parameter "desiredWidth"
    .parameter "cropToWidescreen"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 366
    new-instance v1, Lcom/google/android/youtube/core/converter/http/BytesToBitmapResponseConverter;

    invoke-direct {v1, p1, p2}, Lcom/google/android/youtube/core/converter/http/BytesToBitmapResponseConverter;-><init>(IZ)V

    .line 369
    .local v1, bytesToBitmapConverter:Lcom/google/android/youtube/core/converter/ResponseConverter;,"Lcom/google/android/youtube/core/converter/ResponseConverter<[BLandroid/graphics/Bitmap;>;"
    iget-object v3, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->bitmapBytesRequester:Lcom/google/android/youtube/core/async/Requester;

    invoke-static {v3, v1}, Lcom/google/android/youtube/core/async/ConvertingRequester;->create(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/converter/ResponseConverter;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v2

    .line 372
    .local v2, convertingRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Landroid/net/Uri;Landroid/graphics/Bitmap;>;"
    invoke-direct {p0, v2}, Lcom/google/android/youtube/videos/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    .line 374
    .local v0, asyncRequester:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<Landroid/net/Uri;Landroid/graphics/Bitmap;>;"
    return-object v0
.end method

.method private createChannelFormatsRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 505
    invoke-direct {p0}, Lcom/google/android/youtube/videos/DefaultRequesters;->newPersistentCache()Lcom/google/android/youtube/core/cache/PersistentCache;

    move-result-object v5

    .line 508
    .local v5, persistenceCache:Lcom/google/android/youtube/core/cache/PersistentCache;,"Lcom/google/android/youtube/core/cache/PersistentCache<Ljava/lang/String;Lcom/google/android/youtube/core/async/Timestamped<Ljava/util/Collection<Ljava/lang/Integer;>;>;>;"
    const/16 v7, 0x32

    invoke-direct {p0, v7}, Lcom/google/android/youtube/videos/DefaultRequesters;->newInMemoryCache(I)Lcom/google/android/youtube/core/cache/InMemoryLruCache;

    move-result-object v2

    .line 511
    .local v2, memoryCache:Lcom/google/android/youtube/core/cache/InMemoryLruCache;,"Lcom/google/android/youtube/core/cache/InMemoryLruCache<Ljava/lang/String;Lcom/google/android/youtube/core/async/Timestamped<Ljava/util/Collection<Ljava/lang/Integer;>;>;>;"
    new-instance v1, Lcom/google/android/youtube/videos/converter/http/ChannelFormatsConverter;

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v9, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-direct {v1, v7, v8, v9}, Lcom/google/android/youtube/videos/converter/http/ChannelFormatsConverter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    .local v1, converter:Lcom/google/android/youtube/videos/converter/http/ChannelFormatsConverter;
    invoke-direct {p0, v1, v1}, Lcom/google/android/youtube/videos/DefaultRequesters;->newHttpRequester(Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)Lcom/google/android/youtube/core/async/HttpRequester;

    move-result-object v4

    .line 517
    .local v4, networkRequester:Lcom/google/android/youtube/core/async/HttpRequester;,"Lcom/google/android/youtube/core/async/HttpRequester<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/Integer;>;>;"
    const-wide/32 v7, 0x240c8400

    invoke-direct {p0, v5, v4, v7, v8}, Lcom/google/android/youtube/videos/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v6

    .line 520
    .local v6, persistenceRequester:Lcom/google/android/youtube/core/async/TimestampedCachingRequester;,"Lcom/google/android/youtube/core/async/TimestampedCachingRequester<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/Integer;>;>;"
    invoke-direct {p0, v6}, Lcom/google/android/youtube/videos/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    .line 523
    .local v0, asyncRequester:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/Integer;>;>;"
    const-wide/32 v7, 0x6ddd00

    invoke-direct {p0, v2, v0, v7, v8}, Lcom/google/android/youtube/videos/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v3

    .line 526
    .local v3, memoryRequester:Lcom/google/android/youtube/core/async/TimestampedCachingRequester;,"Lcom/google/android/youtube/core/async/TimestampedCachingRequester<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/Integer;>;>;"
    return-object v3
.end method

.method private createFastOnlineStreamsRequester(Z)Lcom/google/android/youtube/core/async/Requester;
    .locals 6
    .parameter "canDisplayHd"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/VideoStreams;",
            ">;"
        }
    .end annotation

    .prologue
    .line 485
    new-instance v0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;

    iget-object v1, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->channelFormatsRequester:Lcom/google/android/youtube/core/async/Requester;

    iget-object v3, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->fastMyPurchasesRequester:Lcom/google/android/youtube/core/async/Requester;

    iget-object v4, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->streamLengthRequester:Lcom/google/android/youtube/core/async/Requester;

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Z)V

    invoke-direct {p0, v0}, Lcom/google/android/youtube/videos/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    return-object v0
.end method

.method private createFreshOnlineStreamsRequester(Z)Lcom/google/android/youtube/core/async/Requester;
    .locals 6
    .parameter "canDisplayHd"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/VideoStreams;",
            ">;"
        }
    .end annotation

    .prologue
    .line 495
    new-instance v0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;

    iget-object v1, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->channelFormatsRequester:Lcom/google/android/youtube/core/async/Requester;

    iget-object v3, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->freshMyPurchasesRequester:Lcom/google/android/youtube/core/async/Requester;

    iget-object v4, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->streamLengthRequester:Lcom/google/android/youtube/core/async/Requester;

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Z)V

    invoke-direct {p0, v0}, Lcom/google/android/youtube/videos/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    return-object v0
.end method

.method private createMostPopularVideosRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 310
    iget-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->videosRequester:Lcom/google/android/youtube/core/async/Requester;

    iget-object v1, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->videosRequester:Lcom/google/android/youtube/core/async/Requester;

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/videos/DefaultRequesters;->newFallbackRequester(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/FallbackRequester;

    move-result-object v0

    return-object v0
.end method

.method private createMyPurchasesRequesters(Lcom/google/android/youtube/core/async/UserAuthorizer;)V
    .locals 22
    .parameter "authorizer"

    .prologue
    .line 425
    const/16 v19, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/google/android/youtube/videos/DefaultRequesters;->newInMemoryCache(I)Lcom/google/android/youtube/core/cache/InMemoryLruCache;

    move-result-object v14

    .line 427
    .local v14, purchasesCache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Timestamped<Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Purchase;>;>;>;"
    invoke-direct/range {p0 .. p0}, Lcom/google/android/youtube/videos/DefaultRequesters;->newPersistentCache()Lcom/google/android/youtube/core/cache/PersistentCache;

    move-result-object v13

    .line 429
    .local v13, persistentPurchasesCache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Timestamped<Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Purchase;>;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/DefaultRequesters;->videoCache:Lcom/google/android/youtube/core/cache/Cache;

    move-object/from16 v19, v0

    new-instance v20, Lcom/google/android/youtube/videos/DefaultRequesters$PurchasesPageSplitter;

    const/16 v21, 0x0

    invoke-direct/range {v20 .. v21}, Lcom/google/android/youtube/videos/DefaultRequesters$PurchasesPageSplitter;-><init>(Lcom/google/android/youtube/videos/DefaultRequesters$1;)V

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/videos/DefaultRequesters;->newSplittingCache(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/cache/SplittingCache$Splitter;)Lcom/google/android/youtube/core/cache/SplittingCache;

    move-result-object v18

    .line 432
    .local v18, splittingPurchasesMemoryCache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Timestamped<Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Purchase;>;>;>;"
    new-instance v15, Lcom/google/android/youtube/core/converter/http/PurchasePageResponseConverter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/DefaultRequesters;->xmlParser:Lcom/google/android/youtube/core/converter/XmlParser;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/DefaultRequesters;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/google/android/youtube/core/utils/Util;->isLargeScreen(Landroid/content/Context;)Z

    move-result v20

    move-object v0, v15

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/converter/http/PurchasePageResponseConverter;-><init>(Lcom/google/android/youtube/core/converter/XmlParser;Z)V

    .line 435
    .local v15, responseConverter:Lcom/google/android/youtube/core/converter/http/PurchasePageResponseConverter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/DefaultRequesters;->gdataRequestGetConverter:Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/videos/DefaultRequesters;->newHttpRequester(Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)Lcom/google/android/youtube/core/async/HttpRequester;

    move-result-object v9

    .line 438
    .local v9, networkRequester:Lcom/google/android/youtube/core/async/HttpRequester;,"Lcom/google/android/youtube/core/async/HttpRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Purchase;>;>;"
    move-object/from16 v0, p1

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->createRetryingRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v16

    .line 441
    .local v16, retryingRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Purchase;>;>;"
    const-wide/32 v19, 0x48190800

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, v16

    move-wide/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/videos/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v11

    .line 444
    .local v11, persistenceRequester:Lcom/google/android/youtube/core/async/TimestampedCachingRequester;,"Lcom/google/android/youtube/core/async/TimestampedCachingRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Purchase;>;>;"
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct {v0, v1}, Lcom/google/android/youtube/videos/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v5

    .line 448
    .local v5, asyncRequester:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Purchase;>;>;"
    const-wide/32 v19, 0x6ddd00

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object v2, v5

    move-wide/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/videos/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/videos/DefaultRequesters;->fastMyPurchasesRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 452
    const-wide/16 v19, 0x0

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, v16

    move-wide/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/videos/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v12

    .line 455
    .local v12, persistenceWriteOnlyRequester:Lcom/google/android/youtube/core/async/TimestampedCachingRequester;,"Lcom/google/android/youtube/core/async/TimestampedCachingRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Purchase;>;>;"
    const-wide/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object v2, v12

    move-wide/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/videos/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v8

    .line 459
    .local v8, memoryWriteOnlyRequester:Lcom/google/android/youtube/core/async/TimestampedCachingRequester;,"Lcom/google/android/youtube/core/async/TimestampedCachingRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Purchase;>;>;"
    const-wide/32 v19, 0x48190800

    move-object/from16 v0, p0

    move-object v1, v13

    move-wide/from16 v2, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/videos/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v10

    .line 463
    .local v10, persistenceReadOnlyRequester:Lcom/google/android/youtube/core/async/TimestampedCachingRequester;,"Lcom/google/android/youtube/core/async/TimestampedCachingRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Purchase;>;>;"
    const-wide/32 v19, 0x6ddd00

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object v2, v10

    move-wide/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/videos/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v7

    .line 467
    .local v7, memoryRequester:Lcom/google/android/youtube/core/async/TimestampedCachingRequester;,"Lcom/google/android/youtube/core/async/TimestampedCachingRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Purchase;>;>;"
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/videos/DefaultRequesters;->newFallbackRequester(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/FallbackRequester;

    move-result-object v6

    .line 470
    .local v6, fallbackRequester:Lcom/google/android/youtube/core/async/FallbackRequester;,"Lcom/google/android/youtube/core/async/FallbackRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Purchase;>;>;"
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/google/android/youtube/videos/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/videos/DefaultRequesters;->freshMyPurchasesRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 473
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/videos/DefaultRequesters;->newSequentialRequester(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/SequentialRequester;

    move-result-object v17

    .line 476
    .local v17, sequentialRequester:Lcom/google/android/youtube/core/async/SequentialRequester;,"Lcom/google/android/youtube/core/async/SequentialRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Purchase;>;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/android/youtube/videos/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/videos/DefaultRequesters;->sequentialMyPurchasesRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 477
    return-void
.end method

.method private createOfflineStreamsRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/VideoStreams;",
            ">;"
        }
    .end annotation

    .prologue
    .line 480
    new-instance v0, Lcom/google/android/youtube/videos/async/OfflineStreamsRequester;

    iget-object v1, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/youtube/videos/async/OfflineStreamsRequester;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/google/android/youtube/videos/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    return-object v0
.end method

.method private createPingRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 530
    iget-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->uriRequestGetConverter:Lcom/google/android/youtube/core/converter/http/UriRequestConverter;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/videos/DefaultRequesters;->newHttpRequester(Lcom/google/android/youtube/core/converter/RequestConverter;)Lcom/google/android/youtube/core/async/HttpRequester;

    move-result-object v0

    return-object v0
.end method

.method private createStreamLengthRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/videos/StreamLengthRequest;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    new-instance v1, Lcom/google/android/youtube/videos/converter/http/StreamLengthConverter;

    invoke-direct {v1}, Lcom/google/android/youtube/videos/converter/http/StreamLengthConverter;-><init>()V

    .line 318
    .local v1, converter:Lcom/google/android/youtube/videos/converter/http/StreamLengthConverter;
    invoke-direct {p0, v1, v1}, Lcom/google/android/youtube/videos/DefaultRequesters;->newHttpRequester(Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)Lcom/google/android/youtube/core/async/HttpRequester;

    move-result-object v6

    .line 321
    .local v6, streamLengthRequester:Lcom/google/android/youtube/core/async/HttpRequester;,"Lcom/google/android/youtube/core/async/HttpRequester<Lcom/google/android/youtube/videos/StreamLengthRequest;Ljava/lang/Long;>;"
    invoke-direct {p0}, Lcom/google/android/youtube/videos/DefaultRequesters;->newPersistentCache()Lcom/google/android/youtube/core/cache/PersistentCache;

    move-result-object v5

    .line 323
    .local v5, persistentStreamLengthCache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<Lcom/google/android/youtube/videos/StreamLengthRequest;Lcom/google/android/youtube/core/async/Timestamped<Ljava/lang/Long;>;>;"
    const-wide/32 v7, 0x5265c00

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/google/android/youtube/videos/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v4

    .line 326
    .local v4, persistenceRequester:Lcom/google/android/youtube/core/async/TimestampedCachingRequester;,"Lcom/google/android/youtube/core/async/TimestampedCachingRequester<Lcom/google/android/youtube/videos/StreamLengthRequest;Ljava/lang/Long;>;"
    invoke-direct {p0, v4}, Lcom/google/android/youtube/videos/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    .line 329
    .local v0, asyncRequester:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<Lcom/google/android/youtube/videos/StreamLengthRequest;Ljava/lang/Long;>;"
    const/16 v7, 0x1f4

    invoke-direct {p0, v7}, Lcom/google/android/youtube/videos/DefaultRequesters;->newInMemoryCache(I)Lcom/google/android/youtube/core/cache/InMemoryLruCache;

    move-result-object v2

    .line 331
    .local v2, inMemoryStreamLengthCache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<Lcom/google/android/youtube/videos/StreamLengthRequest;Lcom/google/android/youtube/core/async/Timestamped<Ljava/lang/Long;>;>;"
    const-wide/32 v7, 0x6ddd00

    invoke-direct {p0, v2, v0, v7, v8}, Lcom/google/android/youtube/videos/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v3

    .line 334
    .local v3, memoryRequester:Lcom/google/android/youtube/core/async/TimestampedCachingRequester;,"Lcom/google/android/youtube/core/async/TimestampedCachingRequester<Lcom/google/android/youtube/videos/StreamLengthRequest;Ljava/lang/Long;>;"
    return-object v3
.end method

.method private createSubtitleRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/model/SubtitleTrack;",
            "Lcom/google/android/youtube/core/model/Subtitle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 402
    new-instance v1, Lcom/google/android/youtube/core/converter/http/SubtitleConverter;

    invoke-direct {v1}, Lcom/google/android/youtube/core/converter/http/SubtitleConverter;-><init>()V

    .line 404
    .local v1, converter:Lcom/google/android/youtube/core/converter/http/SubtitleConverter;
    invoke-direct {p0, v1, v1}, Lcom/google/android/youtube/videos/DefaultRequesters;->newHttpRequester(Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)Lcom/google/android/youtube/core/async/HttpRequester;

    move-result-object v4

    .line 407
    .local v4, networkRequester:Lcom/google/android/youtube/core/async/HttpRequester;,"Lcom/google/android/youtube/core/async/HttpRequester<Lcom/google/android/youtube/core/model/SubtitleTrack;Lcom/google/android/youtube/core/model/Subtitle;>;"
    invoke-direct {p0}, Lcom/google/android/youtube/videos/DefaultRequesters;->newPersistentCache()Lcom/google/android/youtube/core/cache/PersistentCache;

    move-result-object v5

    .line 409
    .local v5, persistenceCache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<Lcom/google/android/youtube/core/model/SubtitleTrack;Lcom/google/android/youtube/core/async/Timestamped<Lcom/google/android/youtube/core/model/Subtitle;>;>;"
    const-wide/32 v7, 0x240c8400

    invoke-direct {p0, v5, v4, v7, v8}, Lcom/google/android/youtube/videos/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v6

    .line 412
    .local v6, persistenceRequester:Lcom/google/android/youtube/core/async/TimestampedCachingRequester;,"Lcom/google/android/youtube/core/async/TimestampedCachingRequester<Lcom/google/android/youtube/core/model/SubtitleTrack;Lcom/google/android/youtube/core/model/Subtitle;>;"
    invoke-direct {p0, v6}, Lcom/google/android/youtube/videos/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    .line 415
    .local v0, asyncRequester:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<Lcom/google/android/youtube/core/model/SubtitleTrack;Lcom/google/android/youtube/core/model/Subtitle;>;"
    const/16 v7, 0x14

    invoke-direct {p0, v7}, Lcom/google/android/youtube/videos/DefaultRequesters;->newInMemoryCache(I)Lcom/google/android/youtube/core/cache/InMemoryLruCache;

    move-result-object v2

    .line 417
    .local v2, memoryCache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<Lcom/google/android/youtube/core/model/SubtitleTrack;Lcom/google/android/youtube/core/async/Timestamped<Lcom/google/android/youtube/core/model/Subtitle;>;>;"
    const-wide/32 v7, 0x6ddd00

    invoke-direct {p0, v2, v0, v7, v8}, Lcom/google/android/youtube/videos/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v3

    .line 420
    .local v3, memoryRequester:Lcom/google/android/youtube/core/async/TimestampedCachingRequester;,"Lcom/google/android/youtube/core/async/TimestampedCachingRequester<Lcom/google/android/youtube/core/model/SubtitleTrack;Lcom/google/android/youtube/core/model/Subtitle;>;"
    return-object v3
.end method

.method private createSubtitleTracksRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/SubtitleTrack;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 379
    new-instance v1, Lcom/google/android/youtube/core/converter/http/SubtitleTracksConverter;

    invoke-direct {v1}, Lcom/google/android/youtube/core/converter/http/SubtitleTracksConverter;-><init>()V

    .line 381
    .local v1, converter:Lcom/google/android/youtube/core/converter/http/SubtitleTracksConverter;
    invoke-direct {p0, v1, v1}, Lcom/google/android/youtube/videos/DefaultRequesters;->newHttpRequester(Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)Lcom/google/android/youtube/core/async/HttpRequester;

    move-result-object v4

    .line 384
    .local v4, networkRequester:Lcom/google/android/youtube/core/async/HttpRequester;,"Lcom/google/android/youtube/core/async/HttpRequester<Ljava/lang/String;Ljava/util/List<Lcom/google/android/youtube/core/model/SubtitleTrack;>;>;"
    invoke-direct {p0}, Lcom/google/android/youtube/videos/DefaultRequesters;->newPersistentCache()Lcom/google/android/youtube/core/cache/PersistentCache;

    move-result-object v5

    .line 386
    .local v5, persistenceCache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<Ljava/lang/String;Lcom/google/android/youtube/core/async/Timestamped<Ljava/util/List<Lcom/google/android/youtube/core/model/SubtitleTrack;>;>;>;"
    const-wide/32 v7, 0x240c8400

    invoke-direct {p0, v5, v4, v7, v8}, Lcom/google/android/youtube/videos/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v6

    .line 389
    .local v6, persistenceRequester:Lcom/google/android/youtube/core/async/TimestampedCachingRequester;,"Lcom/google/android/youtube/core/async/TimestampedCachingRequester<Ljava/lang/String;Ljava/util/List<Lcom/google/android/youtube/core/model/SubtitleTrack;>;>;"
    invoke-direct {p0, v6}, Lcom/google/android/youtube/videos/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    .line 392
    .local v0, asyncRequester:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<Ljava/lang/String;Ljava/util/List<Lcom/google/android/youtube/core/model/SubtitleTrack;>;>;"
    const/16 v7, 0x14

    invoke-direct {p0, v7}, Lcom/google/android/youtube/videos/DefaultRequesters;->newInMemoryCache(I)Lcom/google/android/youtube/core/cache/InMemoryLruCache;

    move-result-object v2

    .line 395
    .local v2, memoryCache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<Ljava/lang/String;Lcom/google/android/youtube/core/async/Timestamped<Ljava/util/List<Lcom/google/android/youtube/core/model/SubtitleTrack;>;>;>;"
    const-wide/32 v7, 0x6ddd00

    invoke-direct {p0, v2, v0, v7, v8}, Lcom/google/android/youtube/videos/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v3

    .line 398
    .local v3, memoryRequester:Lcom/google/android/youtube/core/async/TimestampedCachingRequester;,"Lcom/google/android/youtube/core/async/TimestampedCachingRequester<Ljava/lang/String;Ljava/util/List<Lcom/google/android/youtube/core/model/SubtitleTrack;>;>;"
    return-object v3
.end method

.method private createVideoRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    iget-object v3, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->gdataRequestGetConverter:Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;

    iget-object v4, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->videoResponseConverter:Lcom/google/android/youtube/core/converter/http/VideoResponseConverter;

    invoke-direct {p0, v3, v4}, Lcom/google/android/youtube/videos/DefaultRequesters;->newHttpRequester(Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)Lcom/google/android/youtube/core/async/HttpRequester;

    move-result-object v2

    .line 285
    .local v2, networkRequester:Lcom/google/android/youtube/core/async/HttpRequester;,"Lcom/google/android/youtube/core/async/HttpRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Video;>;"
    invoke-direct {p0, v2}, Lcom/google/android/youtube/videos/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    .line 287
    .local v0, asyncRequester:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Video;>;"
    iget-object v3, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->videoCache:Lcom/google/android/youtube/core/cache/Cache;

    const-wide/32 v4, 0xdbba00

    invoke-direct {p0, v3, v0, v4, v5}, Lcom/google/android/youtube/videos/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v1

    .line 290
    .local v1, memoryRequester:Lcom/google/android/youtube/core/async/TimestampedCachingRequester;,"Lcom/google/android/youtube/core/async/TimestampedCachingRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Video;>;"
    return-object v1
.end method

.method private createVideosRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 295
    iget-object v3, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->persistentVideoPageCache:Lcom/google/android/youtube/core/cache/Cache;

    iget-object v4, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->videoPageHttpRequester:Lcom/google/android/youtube/core/async/Requester;

    const-wide/32 v5, 0x5265c00

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/google/android/youtube/videos/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v2

    .line 298
    .local v2, persistenceRequester:Lcom/google/android/youtube/core/async/TimestampedCachingRequester;,"Lcom/google/android/youtube/core/async/TimestampedCachingRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;>;"
    invoke-direct {p0, v2}, Lcom/google/android/youtube/videos/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    .line 301
    .local v0, asyncRequester:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;>;"
    iget-object v3, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->splittingVideoCache:Lcom/google/android/youtube/core/cache/Cache;

    const-wide/32 v4, 0x6ddd00

    invoke-direct {p0, v3, v0, v4, v5}, Lcom/google/android/youtube/videos/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v1

    .line 304
    .local v1, memoryRequester:Lcom/google/android/youtube/core/async/TimestampedCachingRequester;,"Lcom/google/android/youtube/core/async/TimestampedCachingRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;>;"
    return-object v1
.end method

.method private newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/youtube/core/async/Requester",
            "<TR;TE;>;)",
            "Lcom/google/android/youtube/core/async/AsyncRequester",
            "<TR;TE;>;"
        }
    .end annotation

    .prologue
    .line 597
    .local p1, target:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<TR;TE;>;"
    iget-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/async/AsyncRequester;->create(Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    return-object v0
.end method

.method private newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;
    .locals 1
    .parameter
    .parameter "timeToLive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/youtube/core/cache/Cache",
            "<TR;",
            "Lcom/google/android/youtube/core/async/Timestamped",
            "<TE;>;>;J)",
            "Lcom/google/android/youtube/core/async/TimestampedCachingRequester",
            "<TR;TE;>;"
        }
    .end annotation

    .prologue
    .line 613
    .local p1, cache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<TR;Lcom/google/android/youtube/core/async/Timestamped<TE;>;>;"
    iget-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->clock:Lcom/google/android/youtube/core/utils/Clock;

    invoke-static {p1, v0, p2, p3}, Lcom/google/android/youtube/core/async/TimestampedCachingRequester;->create(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/utils/Clock;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v0

    return-object v0
.end method

.method private newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;
    .locals 1
    .parameter
    .parameter
    .parameter "timeToLive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/youtube/core/cache/Cache",
            "<TR;",
            "Lcom/google/android/youtube/core/async/Timestamped",
            "<TE;>;>;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<TR;TE;>;J)",
            "Lcom/google/android/youtube/core/async/TimestampedCachingRequester",
            "<TR;TE;>;"
        }
    .end annotation

    .prologue
    .line 607
    .local p1, cache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<TR;Lcom/google/android/youtube/core/async/Timestamped<TE;>;>;"
    .local p2, target:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<TR;TE;>;"
    iget-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->clock:Lcom/google/android/youtube/core/utils/Clock;

    invoke-static {p1, p2, v0, p3, p4}, Lcom/google/android/youtube/core/async/TimestampedCachingRequester;->create(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/utils/Clock;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v0

    return-object v0
.end method

.method private newFallbackRequester(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/FallbackRequester;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/youtube/core/async/Requester",
            "<TR;TE;>;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<TR;TE;>;)",
            "Lcom/google/android/youtube/core/async/FallbackRequester",
            "<TR;TE;>;"
        }
    .end annotation

    .prologue
    .line 618
    .local p1, firstRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<TR;TE;>;"
    .local p2, secondRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<TR;TE;>;"
    new-instance v0, Lcom/google/android/youtube/core/async/FallbackRequester;

    invoke-direct {v0, p1, p2}, Lcom/google/android/youtube/core/async/FallbackRequester;-><init>(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;)V

    return-object v0
.end method

.method private newHttpRequester(Lcom/google/android/youtube/core/converter/RequestConverter;)Lcom/google/android/youtube/core/async/HttpRequester;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/youtube/core/converter/RequestConverter",
            "<TR;",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            ">;)",
            "Lcom/google/android/youtube/core/async/HttpRequester",
            "<TR;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 593
    .local p1, requestConverter:Lcom/google/android/youtube/core/converter/RequestConverter;,"Lcom/google/android/youtube/core/converter/RequestConverter<TR;Lorg/apache/http/client/methods/HttpUriRequest;>;"
    new-instance v0, Lcom/google/android/youtube/core/async/HttpRequester;

    iget-object v1, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-direct {v0, v1, p1}, Lcom/google/android/youtube/core/async/HttpRequester;-><init>(Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/converter/RequestConverter;)V

    return-object v0
.end method

.method private newHttpRequester(Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)Lcom/google/android/youtube/core/async/HttpRequester;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/youtube/core/converter/RequestConverter",
            "<TR;",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            ">;",
            "Lcom/google/android/youtube/core/converter/ResponseConverter",
            "<",
            "Lorg/apache/http/HttpResponse;",
            "TE;>;)",
            "Lcom/google/android/youtube/core/async/HttpRequester",
            "<TR;TE;>;"
        }
    .end annotation

    .prologue
    .line 587
    .local p1, requestConverter:Lcom/google/android/youtube/core/converter/RequestConverter;,"Lcom/google/android/youtube/core/converter/RequestConverter<TR;Lorg/apache/http/client/methods/HttpUriRequest;>;"
    .local p2, responseConverter:Lcom/google/android/youtube/core/converter/ResponseConverter;,"Lcom/google/android/youtube/core/converter/ResponseConverter<Lorg/apache/http/HttpResponse;TE;>;"
    new-instance v0, Lcom/google/android/youtube/core/async/HttpRequester;

    iget-object v1, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/youtube/core/async/HttpRequester;-><init>(Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)V

    return-object v0
.end method

.method private newInMemoryCache(I)Lcom/google/android/youtube/core/cache/InMemoryLruCache;
    .locals 1
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/android/youtube/core/cache/InMemoryLruCache",
            "<TK;TE;>;"
        }
    .end annotation

    .prologue
    .line 601
    new-instance v0, Lcom/google/android/youtube/core/cache/InMemoryLruCache;

    invoke-direct {v0, p1}, Lcom/google/android/youtube/core/cache/InMemoryLruCache;-><init>(I)V

    return-object v0
.end method

.method private newPersistentCache()Lcom/google/android/youtube/core/cache/PersistentCache;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "E::",
            "Ljava/io/Serializable;",
            ">()",
            "Lcom/google/android/youtube/core/cache/PersistentCache",
            "<TK;TE;>;"
        }
    .end annotation

    .prologue
    .line 627
    new-instance v0, Lcom/google/android/youtube/core/cache/PersistentCache;

    iget-object v1, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->cachePath:Ljava/lang/String;

    const-string v2, ".cache"

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/cache/PersistentCache;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/cache/PersistentCache;->init(Ljava/util/concurrent/Executor;)Lcom/google/android/youtube/core/cache/PersistentCache;

    move-result-object v0

    return-object v0
.end method

.method private newSequentialRequester(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/SequentialRequester;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/youtube/core/async/Requester",
            "<TR;TE;>;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<TR;TE;>;)",
            "Lcom/google/android/youtube/core/async/SequentialRequester",
            "<TR;TE;>;"
        }
    .end annotation

    .prologue
    .line 623
    .local p1, firstRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<TR;TE;>;"
    .local p2, secondRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<TR;TE;>;"
    new-instance v0, Lcom/google/android/youtube/core/async/SequentialRequester;

    invoke-direct {v0, p1, p2}, Lcom/google/android/youtube/core/async/SequentialRequester;-><init>(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;)V

    return-object v0
.end method

.method private newSplittingCache(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/cache/SplittingCache$Splitter;)Lcom/google/android/youtube/core/cache/SplittingCache;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/youtube/core/cache/Cache",
            "<TK;TC;>;",
            "Lcom/google/android/youtube/core/cache/Cache",
            "<TS;TE;>;",
            "Lcom/google/android/youtube/core/cache/SplittingCache$Splitter",
            "<TK;TC;TS;TE;>;)",
            "Lcom/google/android/youtube/core/cache/SplittingCache",
            "<TK;TC;TS;TE;>;"
        }
    .end annotation

    .prologue
    .line 632
    .local p1, compoundCache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<TK;TC;>;"
    .local p2, singleElementsCache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<TS;TE;>;"
    .local p3, splitter:Lcom/google/android/youtube/core/cache/SplittingCache$Splitter;,"Lcom/google/android/youtube/core/cache/SplittingCache$Splitter<TK;TC;TS;TE;>;"
    new-instance v0, Lcom/google/android/youtube/core/cache/SplittingCache;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/youtube/core/cache/SplittingCache;-><init>(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/cache/SplittingCache$Splitter;)V

    return-object v0
.end method

.method private triggerCacheShrinking(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .parameter "path"
    .parameter "suffix"
    .parameter "limit"

    .prologue
    .line 574
    iget-object v6, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->executor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/youtube/videos/DefaultRequesters$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/videos/DefaultRequesters$2;-><init>(Lcom/google/android/youtube/videos/DefaultRequesters;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 579
    return-void
.end method


# virtual methods
.method public getFastMyPurchasesRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->fastMyPurchasesRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getFastOnlineStreamsRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/VideoStreams;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->fastOnlineStreamsRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getFreshMyPurchasesRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->freshMyPurchasesRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getFreshOnlineStreamsRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/VideoStreams;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->freshOnlineStreamsRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getMostPopularMoviesRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->mostPopularVideosRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getOfflineStreamsRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/VideoStreams;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->offlineStreamsRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getPingRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->pingRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getPosterArtRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->posterArtRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getSequentialMyPurchasesRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->sequentialMyPurchasesRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getSubtitleRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/model/SubtitleTrack;",
            "Lcom/google/android/youtube/core/model/Subtitle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->subtitleRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getSubtitleTracksRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/SubtitleTrack;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->subtitleTracksRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getSuggestedMoviesRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->videosRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getVideoRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->videoRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public init(Lcom/google/android/youtube/core/async/DeviceAuthorizer;Lcom/google/android/youtube/core/async/UserAuthorizer;)V
    .locals 9
    .parameter "deviceAuthorizer"
    .parameter "userAuthorizer"

    .prologue
    .line 174
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v5, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/youtube/core/utils/Util;->isLargeScreen(Landroid/content/Context;)Z

    move-result v3

    .line 178
    .local v3, isLargeScreen:Z
    iget-object v5, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/youtube/core/utils/Util;->canDisplayHd(Landroid/content/Context;)Z

    move-result v0

    .line 179
    .local v0, canDisplayHd:Z
    iget-object v5, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/youtube/core/utils/Util;->getSystemCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, countryCode:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->cachePath:Ljava/lang/String;

    const-string v6, ".cache"

    const-wide/32 v7, 0x1400000

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/google/android/youtube/videos/DefaultRequesters;->triggerCacheShrinking(Ljava/lang/String;Ljava/lang/String;J)V

    .line 184
    invoke-virtual {p2, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->setOnSignedInChangedListener(Lcom/google/android/youtube/core/async/UserAuthorizer$OnSignedInChangedListener;)V

    .line 186
    new-instance v5, Lcom/google/android/youtube/core/converter/http/UriRequestConverter;

    sget-object v6, Lcom/google/android/youtube/core/converter/http/HttpMethod;->GET:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    invoke-direct {v5, v6}, Lcom/google/android/youtube/core/converter/http/UriRequestConverter;-><init>(Lcom/google/android/youtube/core/converter/http/HttpMethod;)V

    iput-object v5, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->uriRequestGetConverter:Lcom/google/android/youtube/core/converter/http/UriRequestConverter;

    .line 187
    new-instance v5, Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;

    sget-object v6, Lcom/google/android/youtube/core/converter/http/HttpMethod;->GET:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    iget-object v7, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->uriRewriter:Lcom/google/android/youtube/core/utils/UriRewriter;

    invoke-direct {v5, v6, p1, v7}, Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;-><init>(Lcom/google/android/youtube/core/converter/http/HttpMethod;Lcom/google/android/youtube/core/async/DeviceAuthorizer;Lcom/google/android/youtube/core/utils/UriRewriter;)V

    iput-object v5, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->gdataRequestGetConverter:Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;

    .line 189
    new-instance v2, Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;

    sget-object v5, Lcom/google/android/youtube/core/converter/http/HttpMethod;->POST:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    const-string v6, "application/atom+xml"

    iget-object v7, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->uriRewriter:Lcom/google/android/youtube/core/utils/UriRewriter;

    invoke-direct {v2, v5, v6, p1, v7}, Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;-><init>(Lcom/google/android/youtube/core/converter/http/HttpMethod;Ljava/lang/String;Lcom/google/android/youtube/core/async/DeviceAuthorizer;Lcom/google/android/youtube/core/utils/UriRewriter;)V

    .line 192
    .local v2, gdataRequestPostConverter:Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;
    invoke-direct {p0}, Lcom/google/android/youtube/videos/DefaultRequesters;->createBitmapBytesRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->bitmapBytesRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 193
    const/16 v5, 0xa9

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/google/android/youtube/videos/DefaultRequesters;->createBitmapRequester(IZ)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->posterArtRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 195
    invoke-direct {p0}, Lcom/google/android/youtube/videos/DefaultRequesters;->createPingRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->pingRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 197
    const/16 v5, 0x1f4

    invoke-direct {p0, v5}, Lcom/google/android/youtube/videos/DefaultRequesters;->newInMemoryCache(I)Lcom/google/android/youtube/core/cache/InMemoryLruCache;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->videoCache:Lcom/google/android/youtube/core/cache/Cache;

    .line 198
    new-instance v5, Lcom/google/android/youtube/core/converter/http/VideoResponseConverter;

    iget-object v6, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->xmlParser:Lcom/google/android/youtube/core/converter/XmlParser;

    invoke-direct {v5, v6, v3}, Lcom/google/android/youtube/core/converter/http/VideoResponseConverter;-><init>(Lcom/google/android/youtube/core/converter/XmlParser;Z)V

    iput-object v5, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->videoResponseConverter:Lcom/google/android/youtube/core/converter/http/VideoResponseConverter;

    .line 199
    invoke-direct {p0}, Lcom/google/android/youtube/videos/DefaultRequesters;->createVideoRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->videoRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 201
    const/16 v5, 0x32

    invoke-direct {p0, v5}, Lcom/google/android/youtube/videos/DefaultRequesters;->newInMemoryCache(I)Lcom/google/android/youtube/core/cache/InMemoryLruCache;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->inMemoryVideoPageCache:Lcom/google/android/youtube/core/cache/Cache;

    .line 202
    invoke-direct {p0}, Lcom/google/android/youtube/videos/DefaultRequesters;->newPersistentCache()Lcom/google/android/youtube/core/cache/PersistentCache;

    move-result-object v4

    .line 204
    .local v4, syncPersistentVideoPageCache:Lcom/google/android/youtube/core/cache/PersistentCache;,"Lcom/google/android/youtube/core/cache/PersistentCache<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Timestamped<Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;>;>;"
    new-instance v5, Lcom/google/android/youtube/core/cache/AsyncCache;

    iget-object v6, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->executor:Ljava/util/concurrent/Executor;

    invoke-direct {v5, v6, v4}, Lcom/google/android/youtube/core/cache/AsyncCache;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/cache/Cache;)V

    iput-object v5, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->persistentVideoPageCache:Lcom/google/android/youtube/core/cache/Cache;

    .line 206
    iget-object v5, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->inMemoryVideoPageCache:Lcom/google/android/youtube/core/cache/Cache;

    iget-object v6, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->videoCache:Lcom/google/android/youtube/core/cache/Cache;

    new-instance v7, Lcom/google/android/youtube/videos/DefaultRequesters$VideoPageSplitter;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/google/android/youtube/videos/DefaultRequesters$VideoPageSplitter;-><init>(Lcom/google/android/youtube/videos/DefaultRequesters$1;)V

    invoke-direct {p0, v5, v6, v7}, Lcom/google/android/youtube/videos/DefaultRequesters;->newSplittingCache(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/cache/SplittingCache$Splitter;)Lcom/google/android/youtube/core/cache/SplittingCache;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->splittingVideoCache:Lcom/google/android/youtube/core/cache/Cache;

    .line 209
    iget-object v5, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->gdataRequestGetConverter:Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;

    new-instance v6, Lcom/google/android/youtube/core/converter/http/VideoPageResponseConverter;

    iget-object v7, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->xmlParser:Lcom/google/android/youtube/core/converter/XmlParser;

    invoke-direct {v6, v7, v3}, Lcom/google/android/youtube/core/converter/http/VideoPageResponseConverter;-><init>(Lcom/google/android/youtube/core/converter/XmlParser;Z)V

    invoke-direct {p0, v5, v6}, Lcom/google/android/youtube/videos/DefaultRequesters;->newHttpRequester(Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)Lcom/google/android/youtube/core/async/HttpRequester;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->videoPageHttpRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 213
    invoke-direct {p0}, Lcom/google/android/youtube/videos/DefaultRequesters;->createVideosRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->videosRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 214
    invoke-direct {p0}, Lcom/google/android/youtube/videos/DefaultRequesters;->createMostPopularVideosRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->mostPopularVideosRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 215
    invoke-direct {p0}, Lcom/google/android/youtube/videos/DefaultRequesters;->createSubtitleTracksRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->subtitleTracksRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 216
    invoke-direct {p0}, Lcom/google/android/youtube/videos/DefaultRequesters;->createSubtitleRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->subtitleRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 218
    invoke-direct {p0, p2}, Lcom/google/android/youtube/videos/DefaultRequesters;->createMyPurchasesRequesters(Lcom/google/android/youtube/core/async/UserAuthorizer;)V

    .line 220
    invoke-direct {p0}, Lcom/google/android/youtube/videos/DefaultRequesters;->createStreamLengthRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->streamLengthRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 222
    invoke-direct {p0}, Lcom/google/android/youtube/videos/DefaultRequesters;->createChannelFormatsRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->channelFormatsRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 223
    invoke-direct {p0}, Lcom/google/android/youtube/videos/DefaultRequesters;->createOfflineStreamsRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->offlineStreamsRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 224
    invoke-direct {p0, v0}, Lcom/google/android/youtube/videos/DefaultRequesters;->createFastOnlineStreamsRequester(Z)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->fastOnlineStreamsRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 225
    invoke-direct {p0, v0}, Lcom/google/android/youtube/videos/DefaultRequesters;->createFreshOnlineStreamsRequester(Z)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->freshOnlineStreamsRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 226
    return-void
.end method

.method public onSignIn(Lcom/google/android/youtube/core/model/UserAuth;)V
    .locals 0
    .parameter "userAuth"

    .prologue
    .line 562
    return-void
.end method

.method public onSignOut()V
    .locals 2

    .prologue
    .line 565
    iget-object v0, p0, Lcom/google/android/youtube/videos/DefaultRequesters;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/youtube/videos/DefaultRequesters$1;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/videos/DefaultRequesters$1;-><init>(Lcom/google/android/youtube/videos/DefaultRequesters;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 571
    return-void
.end method
