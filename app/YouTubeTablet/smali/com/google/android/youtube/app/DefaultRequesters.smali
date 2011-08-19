.class public final Lcom/google/android/youtube/app/DefaultRequesters;
.super Ljava/lang/Object;
.source "DefaultRequesters.java"

# interfaces
.implements Lcom/google/android/youtube/app/Requesters;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/app/DefaultRequesters$ArtistBundleMusicVideoSplitter;,
        Lcom/google/android/youtube/app/DefaultRequesters$VideoPageSplitter;
    }
.end annotation


# instance fields
.field private adTagRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/model/AdTag;",
            ">;"
        }
    .end annotation
.end field

.field private addCommentRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Comment;",
            ">;"
        }
    .end annotation
.end field

.field private addToFavoritesRequester:Lcom/google/android/youtube/core/async/Requester;
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

.field private addToPlaylistRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private artistBundleRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/model/ArtistBundle;",
            ">;"
        }
    .end annotation
.end field

.field private asyncRetryingPostRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private avatarRequester:Lcom/google/android/youtube/core/async/Requester;
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

.field private brandingBannerRequester:Lcom/google/android/youtube/core/async/Requester;
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

.field private brandingRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Branding;",
            ">;"
        }
    .end annotation
.end field

.field private final cachePath:Ljava/lang/String;

.field private categoriesRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/Category;",
            ">;>;"
        }
    .end annotation
.end field

.field private final clock:Lcom/google/android/youtube/core/utils/Clock;

.field private commentsCache:Lcom/google/android/youtube/core/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/cache/Cache",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/async/Timestamped",
            "<",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Comment;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private commentsRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Comment;",
            ">;>;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final cpuIntensiveExecutor:Ljava/util/concurrent/Executor;

.field private createPlaylistRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Playlist;",
            ">;"
        }
    .end annotation
.end field

.field private deletePlaylistRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private deleteUploadRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private editMetadataRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private eventsRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Event;",
            ">;>;"
        }
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/Executor;

.field private gdataRequestDeleteConverter:Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;

.field private gdataRequestGetConverter:Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;

.field private gdataRequestPatchConverter:Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;

.field private gdataRequestPostConverter:Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;

.field private gdataRequestPutConverter:Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;

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

.field private masf:Lcom/google/android/youtube/core/masf/MasfService;

.field private mediaPlayerFactory:Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerFactory;

.field private musicVideoMemoryCache:Lcom/google/android/youtube/core/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/cache/Cache",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/async/Timestamped",
            "<",
            "Lcom/google/android/youtube/core/async/Optional",
            "<",
            "Lcom/google/android/youtube/core/model/MusicVideo;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private musicVideoRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/async/Optional",
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

.field private myPlaylistThumbnailRequester:Lcom/google/android/youtube/core/async/Requester;
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

.field private myPlaylistsRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Playlist;",
            ">;>;"
        }
    .end annotation
.end field

.field private myProfileRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private myPurchasesRequester:Lcom/google/android/youtube/core/async/Requester;
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

.field private mySubscriptionsRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Subscription;",
            ">;>;"
        }
    .end annotation
.end field

.field private myUploadsRequester:Lcom/google/android/youtube/core/async/Requester;
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

.field private myVideosRequester:Lcom/google/android/youtube/core/async/Requester;
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

.field private networkMusicVideosRequester:Lcom/google/android/youtube/core/async/Requester;
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

.field private notificationSubscribeRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/NotificationRequest;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private notificationUnregisterRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/NotificationRequest;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private notificationUnsubscribeRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/NotificationRequest;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private notificationUpdateRegistrationRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/NotificationRequest;",
            "Ljava/lang/Void;",
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

.field private final platform:Lcom/google/android/youtube/app/Platform;

.field private playlistResponseConverter:Lcom/google/android/youtube/core/converter/http/PlaylistResponseConverter;

.field private playlistThumbnailRequester:Lcom/google/android/youtube/core/async/Requester;
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

.field private playlistsCache:Lcom/google/android/youtube/core/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/cache/Cache",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/async/Timestamped",
            "<",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Playlist;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private playlistsRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Playlist;",
            ">;>;"
        }
    .end annotation
.end field

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

.field private purchasesCache:Lcom/google/android/youtube/core/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/cache/Cache",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/async/Timestamped",
            "<",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private removeFromFavoritesRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private removeFromPlaylistRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private retryingDeleteRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private retryingPatchRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private retryingPostRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private retryingPutRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/lang/Void;",
            ">;"
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

.field private streamsRequester:Lcom/google/android/youtube/core/async/Requester;
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

.field private subscribeRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private subscriptionsCache:Lcom/google/android/youtube/core/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/cache/Cache",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/async/Timestamped",
            "<",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Subscription;",
            ">;>;>;"
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

.field private thumbnailRequester:Lcom/google/android/youtube/core/async/Requester;
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

.field private unsubscribeRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private uriRequestGetConverter:Lcom/google/android/youtube/core/converter/http/UriRequestConverter;

.field private final uriRewriter:Lcom/google/android/youtube/core/utils/UriRewriter;

.field private userProfileRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private vastAdRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/android/youtube/core/model/VastAd;",
            ">;"
        }
    .end annotation
.end field

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

.field private videosSearchRequester:Lcom/google/android/youtube/core/async/Requester;
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
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/utils/Clock;Lcom/google/android/youtube/core/converter/XmlParser;Lcom/google/android/youtube/app/Platform;)V
    .locals 2
    .parameter "context"
    .parameter "executor"
    .parameter "cpuIntensiveExecutor"
    .parameter "httpClient"
    .parameter "clock"
    .parameter "parser"
    .parameter "platform"

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    const-string v0, "context can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->context:Landroid/content/Context;

    .line 281
    const-string v0, "executor can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->executor:Ljava/util/concurrent/Executor;

    .line 282
    const-string v0, "cpu executor can\'t be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->cpuIntensiveExecutor:Ljava/util/concurrent/Executor;

    .line 284
    const-string v0, "httpClient can\'t be null"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/HttpClient;

    iput-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 285
    const-string v0, "clock can\'t be null"

    invoke-static {p5, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/Clock;

    iput-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->clock:Lcom/google/android/youtube/core/utils/Clock;

    .line 286
    const-string v0, "parser can\'t be null"

    invoke-static {p6, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/converter/XmlParser;

    iput-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->xmlParser:Lcom/google/android/youtube/core/converter/XmlParser;

    .line 287
    invoke-static {p7}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/Platform;

    iput-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->platform:Lcom/google/android/youtube/app/Platform;

    .line 288
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->cachePath:Ljava/lang/String;

    .line 289
    new-instance v0, Lcom/google/android/youtube/core/utils/UriRewriter;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/utils/UriRewriter;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->uriRewriter:Lcom/google/android/youtube/core/utils/UriRewriter;

    .line 290
    return-void
.end method

.method private createAdTagRequester(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/youtube/core/async/Requester;
    .locals 3
    .parameter
    .parameter "revShareClientId"
    .parameter "countryCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/model/AdTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1117
    .local p1, usernameGetter:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    new-instance v1, Lcom/google/android/youtube/core/converter/http/AdTagConverter;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/youtube/core/converter/http/AdTagConverter;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    .local v1, converter:Lcom/google/android/youtube/core/converter/http/AdTagConverter;
    invoke-direct {p0, v1, v1}, Lcom/google/android/youtube/app/DefaultRequesters;->newHttpRequester(Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)Lcom/google/android/youtube/core/async/HttpRequester;

    move-result-object v2

    .line 1121
    .local v2, networkRequester:Lcom/google/android/youtube/core/async/HttpRequester;,"Lcom/google/android/youtube/core/async/HttpRequester<Ljava/lang/String;Lcom/google/android/youtube/core/model/AdTag;>;"
    invoke-direct {p0, v2}, Lcom/google/android/youtube/app/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    .line 1123
    .local v0, asyncRequester:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<Ljava/lang/String;Lcom/google/android/youtube/core/model/AdTag;>;"
    return-object v0
.end method

.method private createAddCommentRequester(Lcom/google/android/youtube/core/async/UserAuthorizer;)Lcom/google/android/youtube/core/async/Requester;
    .locals 6
    .parameter "authorizer"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/UserAuthorizer;",
            ")",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Comment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1017
    iget-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->gdataRequestPostConverter:Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;

    new-instance v4, Lcom/google/android/youtube/core/converter/http/CommentResponseConverter;

    iget-object v5, p0, Lcom/google/android/youtube/app/DefaultRequesters;->xmlParser:Lcom/google/android/youtube/core/converter/XmlParser;

    invoke-direct {v4, v5}, Lcom/google/android/youtube/core/converter/http/CommentResponseConverter;-><init>(Lcom/google/android/youtube/core/converter/XmlParser;)V

    invoke-direct {p0, v3, v4}, Lcom/google/android/youtube/app/DefaultRequesters;->newHttpRequester(Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)Lcom/google/android/youtube/core/async/HttpRequester;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/android/youtube/core/async/UserAuthorizer;->createRetryingRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v2

    .line 1020
    .local v2, networkRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Comment;>;"
    new-instance v1, Lcom/google/android/youtube/core/async/EvictingRequester$GDataRequestUriPathEvicter;

    iget-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->commentsCache:Lcom/google/android/youtube/core/cache/Cache;

    invoke-direct {v1, v3, v2}, Lcom/google/android/youtube/core/async/EvictingRequester$GDataRequestUriPathEvicter;-><init>(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;)V

    .line 1023
    .local v1, memoryEvicter:Lcom/google/android/youtube/core/async/EvictingRequester;,"Lcom/google/android/youtube/core/async/EvictingRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Comment;Lcom/google/android/youtube/core/async/GDataRequest;>;"
    invoke-direct {p0, v1}, Lcom/google/android/youtube/app/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    .line 1025
    .local v0, asyncRequester:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Comment;>;"
    return-object v0
.end method

.method private createAddToFavoritesRequester(Lcom/google/android/youtube/core/async/UserAuthorizer;)Lcom/google/android/youtube/core/async/Requester;
    .locals 6
    .parameter "authorizer"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/UserAuthorizer;",
            ")",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1002
    iget-object v4, p0, Lcom/google/android/youtube/app/DefaultRequesters;->gdataRequestPostConverter:Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;

    iget-object v5, p0, Lcom/google/android/youtube/app/DefaultRequesters;->videoResponseConverter:Lcom/google/android/youtube/core/converter/http/VideoResponseConverter;

    invoke-direct {p0, v4, v5}, Lcom/google/android/youtube/app/DefaultRequesters;->newHttpRequester(Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)Lcom/google/android/youtube/core/async/HttpRequester;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/youtube/core/async/UserAuthorizer;->createRetryingRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v2

    .line 1005
    .local v2, networkRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Video;>;"
    new-instance v3, Lcom/google/android/youtube/core/utils/ContainsPathSegment;

    const-string v4, "favorites"

    invoke-direct {v3, v4}, Lcom/google/android/youtube/core/utils/ContainsPathSegment;-><init>(Ljava/lang/String;)V

    .line 1007
    .local v3, predicate:Lcom/google/android/youtube/core/utils/ContainsPathSegment;
    iget-object v4, p0, Lcom/google/android/youtube/app/DefaultRequesters;->inMemoryVideoPageCache:Lcom/google/android/youtube/core/cache/Cache;

    invoke-direct {p0, v3, v4, v2}, Lcom/google/android/youtube/app/DefaultRequesters;->newEvicter(Lcom/google/android/youtube/core/utils/Predicate;Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/EvictingRequester;

    move-result-object v1

    .line 1010
    .local v1, memoryEvicter:Lcom/google/android/youtube/core/async/EvictingRequester;,"Lcom/google/android/youtube/core/async/EvictingRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/async/GDataRequest;>;"
    invoke-direct {p0, v1}, Lcom/google/android/youtube/app/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    .line 1012
    .local v0, asyncRequester:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Video;>;"
    return-object v0
.end method

.method private createAddToPlaylistRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1030
    new-instance v1, Lcom/google/android/youtube/core/async/EvictingRequester$GDataRequestUriPathEvicter;

    iget-object v2, p0, Lcom/google/android/youtube/app/DefaultRequesters;->inMemoryVideoPageCache:Lcom/google/android/youtube/core/cache/Cache;

    iget-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->retryingPostRequester:Lcom/google/android/youtube/core/async/Requester;

    invoke-direct {v1, v2, v3}, Lcom/google/android/youtube/core/async/EvictingRequester$GDataRequestUriPathEvicter;-><init>(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;)V

    .line 1034
    .local v1, memoryEvicter:Lcom/google/android/youtube/core/async/EvictingRequester$GDataRequestUriPathEvicter;,"Lcom/google/android/youtube/core/async/EvictingRequester$GDataRequestUriPathEvicter<Ljava/lang/Void;>;"
    invoke-direct {p0, v1}, Lcom/google/android/youtube/app/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    .line 1036
    .local v0, asyncRequester:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Void;>;"
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
    .line 736
    new-instance v0, Lcom/google/android/youtube/core/converter/http/HttpToBytesResponseConverter;

    invoke-direct {v0}, Lcom/google/android/youtube/core/converter/http/HttpToBytesResponseConverter;-><init>()V

    .line 739
    .local v0, httpToBytesConverter:Lcom/google/android/youtube/core/converter/ResponseConverter;,"Lcom/google/android/youtube/core/converter/ResponseConverter<Lorg/apache/http/HttpResponse;[B>;"
    iget-object v6, p0, Lcom/google/android/youtube/app/DefaultRequesters;->uriRequestGetConverter:Lcom/google/android/youtube/core/converter/http/UriRequestConverter;

    invoke-direct {p0, v6, v0}, Lcom/google/android/youtube/app/DefaultRequesters;->newHttpRequester(Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)Lcom/google/android/youtube/core/async/HttpRequester;

    move-result-object v3

    .line 742
    .local v3, networkRequester:Lcom/google/android/youtube/core/async/HttpRequester;,"Lcom/google/android/youtube/core/async/HttpRequester<Landroid/net/Uri;[B>;"
    invoke-direct {p0}, Lcom/google/android/youtube/app/DefaultRequesters;->newPersistentCache()Lcom/google/android/youtube/core/cache/PersistentCache;

    move-result-object v4

    .line 744
    .local v4, persistenceCache:Lcom/google/android/youtube/core/cache/PersistentCache;,"Lcom/google/android/youtube/core/cache/PersistentCache<Landroid/net/Uri;Lcom/google/android/youtube/core/async/Timestamped<[B>;>;"
    const-wide/32 v6, 0x240c8400

    invoke-direct {p0, v4, v3, v6, v7}, Lcom/google/android/youtube/app/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v5

    .line 747
    .local v5, persistenceRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Landroid/net/Uri;[B>;"
    iget-object v6, p0, Lcom/google/android/youtube/app/DefaultRequesters;->platform:Lcom/google/android/youtube/app/Platform;

    iget-object v7, p0, Lcom/google/android/youtube/app/DefaultRequesters;->context:Landroid/content/Context;

    invoke-interface {v6, v7}, Lcom/google/android/youtube/app/Platform;->isLargeHeapAvailable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x1f4

    :goto_0
    invoke-direct {p0, v6}, Lcom/google/android/youtube/app/DefaultRequesters;->newInMemoryCache(I)Lcom/google/android/youtube/core/cache/InMemoryLruCache;

    move-result-object v1

    .line 751
    .local v1, memoryCache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<Landroid/net/Uri;Lcom/google/android/youtube/core/async/Timestamped<[B>;>;"
    const-wide/32 v6, 0x6ddd00

    invoke-direct {p0, v1, v5, v6, v7}, Lcom/google/android/youtube/app/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v2

    .line 754
    .local v2, memoryRequester:Lcom/google/android/youtube/core/async/TimestampedCachingRequester;,"Lcom/google/android/youtube/core/async/TimestampedCachingRequester<Landroid/net/Uri;[B>;"
    return-object v2

    .line 747
    .end local v1           #memoryCache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<Landroid/net/Uri;Lcom/google/android/youtube/core/async/Timestamped<[B>;>;"
    .end local v2           #memoryRequester:Lcom/google/android/youtube/core/async/TimestampedCachingRequester;,"Lcom/google/android/youtube/core/async/TimestampedCachingRequester<Landroid/net/Uri;[B>;"
    :cond_0
    const/16 v6, 0x64

    goto :goto_0
.end method

.method private createBitmapRequester(IZ)Lcom/google/android/youtube/core/async/Requester;
    .locals 5
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
    .line 759
    new-instance v1, Lcom/google/android/youtube/core/converter/http/BytesToBitmapResponseConverter;

    invoke-direct {v1, p1, p2}, Lcom/google/android/youtube/core/converter/http/BytesToBitmapResponseConverter;-><init>(IZ)V

    .line 762
    .local v1, bytesToBitmapConverter:Lcom/google/android/youtube/core/converter/ResponseConverter;,"Lcom/google/android/youtube/core/converter/ResponseConverter<[BLandroid/graphics/Bitmap;>;"
    iget-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->bitmapBytesRequester:Lcom/google/android/youtube/core/async/Requester;

    iget-object v4, p0, Lcom/google/android/youtube/app/DefaultRequesters;->cpuIntensiveExecutor:Ljava/util/concurrent/Executor;

    invoke-static {v3, v1, v4}, Lcom/google/android/youtube/core/async/ConvertingRequester;->create(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/converter/ResponseConverter;Ljava/util/concurrent/Executor;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v2

    .line 767
    .local v2, convertingRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Landroid/net/Uri;Landroid/graphics/Bitmap;>;"
    invoke-direct {p0, v2}, Lcom/google/android/youtube/app/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    .line 769
    .local v0, asyncRequester:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<Landroid/net/Uri;Landroid/graphics/Bitmap;>;"
    return-object v0
.end method

.method private createBrandingRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Branding;",
            ">;"
        }
    .end annotation

    .prologue
    .line 790
    new-instance v6, Lcom/google/android/youtube/core/converter/http/BrandingResponseConverter;

    iget-object v7, p0, Lcom/google/android/youtube/app/DefaultRequesters;->xmlParser:Lcom/google/android/youtube/core/converter/XmlParser;

    invoke-direct {v6, v7}, Lcom/google/android/youtube/core/converter/http/BrandingResponseConverter;-><init>(Lcom/google/android/youtube/core/converter/XmlParser;)V

    .line 792
    .local v6, responseConverter:Lcom/google/android/youtube/core/converter/http/BrandingResponseConverter;
    iget-object v7, p0, Lcom/google/android/youtube/app/DefaultRequesters;->gdataRequestGetConverter:Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;

    invoke-direct {p0, v7, v6}, Lcom/google/android/youtube/app/DefaultRequesters;->newHttpRequester(Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)Lcom/google/android/youtube/core/async/HttpRequester;

    move-result-object v3

    .line 795
    .local v3, networkRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Branding;>;"
    invoke-direct {p0}, Lcom/google/android/youtube/app/DefaultRequesters;->newPersistentCache()Lcom/google/android/youtube/core/cache/PersistentCache;

    move-result-object v4

    .line 797
    .local v4, persistenceCache:Lcom/google/android/youtube/core/cache/PersistentCache;,"Lcom/google/android/youtube/core/cache/PersistentCache<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Timestamped<Lcom/google/android/youtube/core/model/Branding;>;>;"
    const-wide/32 v7, 0x5265c00

    invoke-direct {p0, v4, v3, v7, v8}, Lcom/google/android/youtube/app/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v5

    .line 800
    .local v5, persistenceRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Branding;>;"
    invoke-direct {p0, v5}, Lcom/google/android/youtube/app/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    .line 802
    .local v0, asyncRequester:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Branding;>;"
    const/16 v7, 0x14

    invoke-direct {p0, v7}, Lcom/google/android/youtube/app/DefaultRequesters;->newInMemoryCache(I)Lcom/google/android/youtube/core/cache/InMemoryLruCache;

    move-result-object v1

    .line 805
    .local v1, memoryCache:Lcom/google/android/youtube/core/cache/InMemoryLruCache;,"Lcom/google/android/youtube/core/cache/InMemoryLruCache<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Timestamped<Lcom/google/android/youtube/core/model/Branding;>;>;"
    const-wide/32 v7, 0x6ddd00

    invoke-direct {p0, v1, v0, v7, v8}, Lcom/google/android/youtube/app/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v2

    .line 808
    .local v2, memoryRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Branding;>;"
    return-object v2
.end method

.method private createCategoriesRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/Category;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 935
    new-instance v6, Lcom/google/android/youtube/core/converter/http/CategoriesResponseConverter;

    iget-object v7, p0, Lcom/google/android/youtube/app/DefaultRequesters;->xmlParser:Lcom/google/android/youtube/core/converter/XmlParser;

    iget-object v8, p0, Lcom/google/android/youtube/app/DefaultRequesters;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/google/android/youtube/core/converter/http/CategoriesResponseConverter;-><init>(Lcom/google/android/youtube/core/converter/XmlParser;Landroid/content/res/Resources;)V

    .line 938
    .local v6, responseConverter:Lcom/google/android/youtube/core/converter/http/CategoriesResponseConverter;
    iget-object v7, p0, Lcom/google/android/youtube/app/DefaultRequesters;->gdataRequestGetConverter:Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;

    invoke-direct {p0, v7, v6}, Lcom/google/android/youtube/app/DefaultRequesters;->newHttpRequester(Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)Lcom/google/android/youtube/core/async/HttpRequester;

    move-result-object v3

    .line 941
    .local v3, networkRequester:Lcom/google/android/youtube/core/async/HttpRequester;,"Lcom/google/android/youtube/core/async/HttpRequester<Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List<Lcom/google/android/youtube/core/model/Category;>;>;"
    invoke-direct {p0}, Lcom/google/android/youtube/app/DefaultRequesters;->newPersistentCache()Lcom/google/android/youtube/core/cache/PersistentCache;

    move-result-object v4

    .line 943
    .local v4, persistenceCache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Timestamped<Ljava/util/List<Lcom/google/android/youtube/core/model/Category;>;>;>;"
    const-wide/32 v7, 0x240c8400

    invoke-direct {p0, v4, v3, v7, v8}, Lcom/google/android/youtube/app/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v5

    .line 946
    .local v5, persistenceRequester:Lcom/google/android/youtube/core/async/TimestampedCachingRequester;,"Lcom/google/android/youtube/core/async/TimestampedCachingRequester<Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List<Lcom/google/android/youtube/core/model/Category;>;>;"
    invoke-direct {p0, v5}, Lcom/google/android/youtube/app/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    .line 949
    .local v0, asyncRequester:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List<Lcom/google/android/youtube/core/model/Category;>;>;"
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/google/android/youtube/app/DefaultRequesters;->newInMemoryCache(I)Lcom/google/android/youtube/core/cache/InMemoryLruCache;

    move-result-object v1

    .line 952
    .local v1, memoryCache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Timestamped<Ljava/util/List<Lcom/google/android/youtube/core/model/Category;>;>;>;"
    const-wide/32 v7, 0x6ddd00

    invoke-direct {p0, v1, v0, v7, v8}, Lcom/google/android/youtube/app/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v2

    .line 955
    .local v2, memoryRequester:Lcom/google/android/youtube/core/async/TimestampedCachingRequester;,"Lcom/google/android/youtube/core/async/TimestampedCachingRequester<Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List<Lcom/google/android/youtube/core/model/Category;>;>;"
    return-object v2
.end method

.method private createCommentsRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Comment;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 716
    new-instance v3, Lcom/google/android/youtube/core/converter/http/CommentPageResponseConverter;

    iget-object v4, p0, Lcom/google/android/youtube/app/DefaultRequesters;->xmlParser:Lcom/google/android/youtube/core/converter/XmlParser;

    invoke-direct {v3, v4}, Lcom/google/android/youtube/core/converter/http/CommentPageResponseConverter;-><init>(Lcom/google/android/youtube/core/converter/XmlParser;)V

    .line 718
    .local v3, responseConverter:Lcom/google/android/youtube/core/converter/http/CommentPageResponseConverter;
    iget-object v4, p0, Lcom/google/android/youtube/app/DefaultRequesters;->gdataRequestGetConverter:Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;

    invoke-direct {p0, v4, v3}, Lcom/google/android/youtube/app/DefaultRequesters;->newHttpRequester(Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)Lcom/google/android/youtube/core/async/HttpRequester;

    move-result-object v2

    .line 721
    .local v2, networkRequester:Lcom/google/android/youtube/core/async/HttpRequester;,"Lcom/google/android/youtube/core/async/HttpRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Comment;>;>;"
    invoke-direct {p0, v2}, Lcom/google/android/youtube/app/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    .line 724
    .local v0, asyncRequester:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Comment;>;>;"
    iget-object v4, p0, Lcom/google/android/youtube/app/DefaultRequesters;->commentsCache:Lcom/google/android/youtube/core/cache/Cache;

    const-wide/32 v5, 0x6ddd00

    invoke-direct {p0, v4, v0, v5, v6}, Lcom/google/android/youtube/app/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v1

    .line 727
    .local v1, memoryRequester:Lcom/google/android/youtube/core/async/TimestampedCachingRequester;,"Lcom/google/android/youtube/core/async/TimestampedCachingRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Comment;>;>;"
    return-object v1
.end method

.method private createCreatePlaylistRequester(Lcom/google/android/youtube/core/async/UserAuthorizer;)Lcom/google/android/youtube/core/async/Requester;
    .locals 6
    .parameter "authorizer"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/UserAuthorizer;",
            ")",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Playlist;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1053
    iget-object v4, p0, Lcom/google/android/youtube/app/DefaultRequesters;->gdataRequestPostConverter:Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;

    iget-object v5, p0, Lcom/google/android/youtube/app/DefaultRequesters;->playlistResponseConverter:Lcom/google/android/youtube/core/converter/http/PlaylistResponseConverter;

    invoke-direct {p0, v4, v5}, Lcom/google/android/youtube/app/DefaultRequesters;->newHttpRequester(Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)Lcom/google/android/youtube/core/async/HttpRequester;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/youtube/core/async/UserAuthorizer;->createRetryingRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v2

    .line 1056
    .local v2, networkRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Playlist;>;"
    new-instance v3, Lcom/google/android/youtube/core/utils/ContainsPathSegment;

    const-string v4, "playlists"

    invoke-direct {v3, v4}, Lcom/google/android/youtube/core/utils/ContainsPathSegment;-><init>(Ljava/lang/String;)V

    .line 1058
    .local v3, predicate:Lcom/google/android/youtube/core/utils/ContainsPathSegment;
    iget-object v4, p0, Lcom/google/android/youtube/app/DefaultRequesters;->playlistsCache:Lcom/google/android/youtube/core/cache/Cache;

    invoke-direct {p0, v3, v4, v2}, Lcom/google/android/youtube/app/DefaultRequesters;->newEvicter(Lcom/google/android/youtube/core/utils/Predicate;Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/EvictingRequester;

    move-result-object v1

    .line 1061
    .local v1, memoryEvicter:Lcom/google/android/youtube/core/async/EvictingRequester;,"Lcom/google/android/youtube/core/async/EvictingRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Playlist;Lcom/google/android/youtube/core/async/GDataRequest;>;"
    invoke-direct {p0, v1}, Lcom/google/android/youtube/app/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    .line 1063
    .local v0, asyncRequester:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Playlist;>;"
    return-object v0
.end method

.method private createDeletePlaylistRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1068
    new-instance v2, Lcom/google/android/youtube/core/utils/ContainsPathSegment;

    const-string v3, "playlists"

    invoke-direct {v2, v3}, Lcom/google/android/youtube/core/utils/ContainsPathSegment;-><init>(Ljava/lang/String;)V

    .line 1070
    .local v2, predicate:Lcom/google/android/youtube/core/utils/ContainsPathSegment;
    iget-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->playlistsCache:Lcom/google/android/youtube/core/cache/Cache;

    iget-object v4, p0, Lcom/google/android/youtube/app/DefaultRequesters;->retryingDeleteRequester:Lcom/google/android/youtube/core/async/Requester;

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/youtube/app/DefaultRequesters;->newEvicter(Lcom/google/android/youtube/core/utils/Predicate;Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/EvictingRequester;

    move-result-object v1

    .line 1073
    .local v1, memoryEvicter:Lcom/google/android/youtube/core/async/EvictingRequester;,"Lcom/google/android/youtube/core/async/EvictingRequester<Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Void;Lcom/google/android/youtube/core/async/GDataRequest;>;"
    invoke-direct {p0, v1}, Lcom/google/android/youtube/app/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    .line 1075
    .local v0, asyncRequester:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Void;>;"
    return-object v0
.end method

.method private createDeleteUploadRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1092
    new-instance v2, Lcom/google/android/youtube/core/utils/ContainsPathSegment;

    const-string v3, "uploads"

    invoke-direct {v2, v3}, Lcom/google/android/youtube/core/utils/ContainsPathSegment;-><init>(Ljava/lang/String;)V

    .line 1094
    .local v2, predicate:Lcom/google/android/youtube/core/utils/ContainsPathSegment;
    iget-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->inMemoryVideoPageCache:Lcom/google/android/youtube/core/cache/Cache;

    iget-object v4, p0, Lcom/google/android/youtube/app/DefaultRequesters;->retryingDeleteRequester:Lcom/google/android/youtube/core/async/Requester;

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/youtube/app/DefaultRequesters;->newEvicter(Lcom/google/android/youtube/core/utils/Predicate;Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/EvictingRequester;

    move-result-object v1

    .line 1097
    .local v1, memoryEvicter:Lcom/google/android/youtube/core/async/EvictingRequester;,"Lcom/google/android/youtube/core/async/EvictingRequester<Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Void;Lcom/google/android/youtube/core/async/GDataRequest;>;"
    invoke-direct {p0, v1}, Lcom/google/android/youtube/app/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    .line 1099
    .local v0, asyncRequester:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Void;>;"
    return-object v0
.end method

.method private createEditMetadataRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1104
    new-instance v2, Lcom/google/android/youtube/core/utils/ContainsPathSegment;

    const-string v3, "uploads"

    invoke-direct {v2, v3}, Lcom/google/android/youtube/core/utils/ContainsPathSegment;-><init>(Ljava/lang/String;)V

    .line 1106
    .local v2, predicate:Lcom/google/android/youtube/core/utils/ContainsPathSegment;
    iget-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->inMemoryVideoPageCache:Lcom/google/android/youtube/core/cache/Cache;

    iget-object v4, p0, Lcom/google/android/youtube/app/DefaultRequesters;->retryingPatchRequester:Lcom/google/android/youtube/core/async/Requester;

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/youtube/app/DefaultRequesters;->newEvicter(Lcom/google/android/youtube/core/utils/Predicate;Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/EvictingRequester;

    move-result-object v1

    .line 1109
    .local v1, memoryEvicter:Lcom/google/android/youtube/core/async/EvictingRequester;,"Lcom/google/android/youtube/core/async/EvictingRequester<Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Void;Lcom/google/android/youtube/core/async/GDataRequest;>;"
    invoke-direct {p0, v1}, Lcom/google/android/youtube/app/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    .line 1111
    .local v0, asyncRequester:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Void;>;"
    return-object v0
.end method

.method private createEventsRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Event;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 960
    new-instance v4, Lcom/google/android/youtube/core/converter/http/EventPageResponseConverter;

    iget-object v5, p0, Lcom/google/android/youtube/app/DefaultRequesters;->xmlParser:Lcom/google/android/youtube/core/converter/XmlParser;

    invoke-direct {v4, v5}, Lcom/google/android/youtube/core/converter/http/EventPageResponseConverter;-><init>(Lcom/google/android/youtube/core/converter/XmlParser;)V

    .line 962
    .local v4, responseConverter:Lcom/google/android/youtube/core/converter/http/EventPageResponseConverter;
    iget-object v5, p0, Lcom/google/android/youtube/app/DefaultRequesters;->gdataRequestGetConverter:Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;

    invoke-direct {p0, v5, v4}, Lcom/google/android/youtube/app/DefaultRequesters;->newHttpRequester(Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)Lcom/google/android/youtube/core/async/HttpRequester;

    move-result-object v3

    .line 965
    .local v3, networkRequester:Lcom/google/android/youtube/core/async/HttpRequester;,"Lcom/google/android/youtube/core/async/HttpRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Event;>;>;"
    invoke-direct {p0, v3}, Lcom/google/android/youtube/app/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    .line 967
    .local v0, asyncRequester:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Event;>;>;"
    const/16 v5, 0x14

    invoke-direct {p0, v5}, Lcom/google/android/youtube/app/DefaultRequesters;->newInMemoryCache(I)Lcom/google/android/youtube/core/cache/InMemoryLruCache;

    move-result-object v1

    .line 970
    .local v1, memoryCache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Timestamped<Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Event;>;>;>;"
    const-wide/32 v5, 0x6ddd00

    invoke-direct {p0, v1, v0, v5, v6}, Lcom/google/android/youtube/app/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v2

    .line 973
    .local v2, memoryRequester:Lcom/google/android/youtube/core/async/TimestampedCachingRequester;,"Lcom/google/android/youtube/core/async/TimestampedCachingRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Event;>;>;"
    return-object v2
.end method

.method private createMyPurchasesRequester(Lcom/google/android/youtube/core/async/UserAuthorizer;)Lcom/google/android/youtube/core/async/Requester;
    .locals 8
    .parameter "authorizer"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/UserAuthorizer;",
            ")",
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
    .line 915
    new-instance v3, Lcom/google/android/youtube/core/converter/http/PurchasePageResponseConverter;

    iget-object v5, p0, Lcom/google/android/youtube/app/DefaultRequesters;->xmlParser:Lcom/google/android/youtube/core/converter/XmlParser;

    iget-object v6, p0, Lcom/google/android/youtube/app/DefaultRequesters;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/google/android/youtube/core/utils/Util;->isLargeScreen(Landroid/content/Context;)Z

    move-result v6

    invoke-direct {v3, v5, v6}, Lcom/google/android/youtube/core/converter/http/PurchasePageResponseConverter;-><init>(Lcom/google/android/youtube/core/converter/XmlParser;Z)V

    .line 918
    .local v3, responseConverter:Lcom/google/android/youtube/core/converter/http/PurchasePageResponseConverter;
    iget-object v5, p0, Lcom/google/android/youtube/app/DefaultRequesters;->gdataRequestGetConverter:Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;

    invoke-direct {p0, v5, v3}, Lcom/google/android/youtube/app/DefaultRequesters;->newHttpRequester(Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)Lcom/google/android/youtube/core/async/HttpRequester;

    move-result-object v2

    .line 921
    .local v2, networkRequester:Lcom/google/android/youtube/core/async/HttpRequester;,"Lcom/google/android/youtube/core/async/HttpRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Purchase;>;>;"
    invoke-virtual {p1, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->createRetryingRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v4

    .line 924
    .local v4, retryingRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Purchase;>;>;"
    invoke-direct {p0, v4}, Lcom/google/android/youtube/app/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    .line 927
    .local v0, asyncRequester:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Purchase;>;>;"
    iget-object v5, p0, Lcom/google/android/youtube/app/DefaultRequesters;->purchasesCache:Lcom/google/android/youtube/core/cache/Cache;

    const-wide/32 v6, 0x493e0

    invoke-direct {p0, v5, v0, v6, v7}, Lcom/google/android/youtube/app/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v1

    .line 930
    .local v1, memoryRequester:Lcom/google/android/youtube/core/async/TimestampedCachingRequester;,"Lcom/google/android/youtube/core/async/TimestampedCachingRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Purchase;>;>;"
    return-object v1
.end method

.method private createMyUploadsRequester(Lcom/google/android/youtube/core/async/UserAuthorizer;)Lcom/google/android/youtube/core/async/Requester;
    .locals 6
    .parameter "authorizer"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/UserAuthorizer;",
            ")",
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
    .line 701
    iget-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->videoPageHttpRequester:Lcom/google/android/youtube/core/async/Requester;

    invoke-direct {p0, v3}, Lcom/google/android/youtube/app/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    .line 705
    .local v0, asyncRequester:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;>;"
    iget-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->splittingVideoCache:Lcom/google/android/youtube/core/cache/Cache;

    const-wide/32 v4, 0x493e0

    invoke-direct {p0, v3, v0, v4, v5}, Lcom/google/android/youtube/app/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v1

    .line 708
    .local v1, memoryRequester:Lcom/google/android/youtube/core/async/TimestampedCachingRequester;,"Lcom/google/android/youtube/core/async/TimestampedCachingRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;>;"
    invoke-virtual {p1, v1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->createRetryingRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v2

    .line 711
    .local v2, retryingRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;>;"
    return-object v2
.end method

.method private createMyVideosRequester(Lcom/google/android/youtube/core/async/UserAuthorizer;)Lcom/google/android/youtube/core/async/Requester;
    .locals 6
    .parameter "authorizer"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/UserAuthorizer;",
            ")",
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
    .line 687
    iget-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->videoPageHttpRequester:Lcom/google/android/youtube/core/async/Requester;

    invoke-direct {p0, v3}, Lcom/google/android/youtube/app/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    .line 690
    .local v0, asyncRequester:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;>;"
    iget-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->splittingVideoCache:Lcom/google/android/youtube/core/cache/Cache;

    const-wide/32 v4, 0x1b7740

    invoke-direct {p0, v3, v0, v4, v5}, Lcom/google/android/youtube/app/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v1

    .line 693
    .local v1, memoryRequester:Lcom/google/android/youtube/core/async/TimestampedCachingRequester;,"Lcom/google/android/youtube/core/async/TimestampedCachingRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;>;"
    invoke-virtual {p1, v1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->createRetryingRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v2

    .line 696
    .local v2, retryingRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;>;"
    return-object v2
.end method

.method private createNetworkArtistBundleRequester(Lcom/google/android/youtube/core/masf/MasfService;Ljava/lang/String;)Lcom/google/android/youtube/core/async/Requester;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/masf/MasfService;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/model/ArtistBundle;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1253
    new-instance v0, Lcom/google/android/youtube/core/async/MasfRequester;

    new-instance v1, Lcom/google/android/youtube/core/converter/masf/ArtistBundleRequestConverter;

    const-string v2, "g:nsc/ma"

    invoke-direct {v1, v2, v3, p2}, Lcom/google/android/youtube/core/converter/masf/ArtistBundleRequestConverter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lcom/google/android/youtube/core/converter/masf/ArtistBundleResponseConverter;

    invoke-direct {v2}, Lcom/google/android/youtube/core/converter/masf/ArtistBundleResponseConverter;-><init>()V

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/android/youtube/core/async/MasfRequester;-><init>(Lcom/google/android/youtube/core/masf/MasfService;Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;Z)V

    return-object v0
.end method

.method private createNetworkMusicVideosRequester(Lcom/google/android/youtube/core/masf/MasfService;Ljava/lang/String;)Lcom/google/android/youtube/core/async/Requester;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/masf/MasfService;",
            "Ljava/lang/String;",
            ")",
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

    .prologue
    const/4 v3, 0x1

    .line 1202
    new-instance v0, Lcom/google/android/youtube/core/async/MasfRequester;

    new-instance v1, Lcom/google/android/youtube/core/converter/masf/MusicVideosRequestConverter;

    const-string v2, "g:nsc/mv"

    invoke-direct {v1, v2, v3, p2}, Lcom/google/android/youtube/core/converter/masf/MusicVideosRequestConverter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lcom/google/android/youtube/core/converter/masf/MusicVideosResponseConverter;

    invoke-direct {v2}, Lcom/google/android/youtube/core/converter/masf/MusicVideosResponseConverter;-><init>()V

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/android/youtube/core/async/MasfRequester;-><init>(Lcom/google/android/youtube/core/masf/MasfService;Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;Z)V

    return-object v0
.end method

.method private createNotificationSubscribeRequester(Lcom/google/android/youtube/core/masf/MasfService;)Lcom/google/android/youtube/core/async/Requester;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/masf/MasfService;",
            ")",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/NotificationRequest;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1143
    new-instance v0, Lcom/google/android/youtube/core/async/MasfRequester;

    new-instance v1, Lcom/google/android/youtube/core/converter/masf/NotificationSubscribeRequestConverter;

    const-string v2, "g:ytn/sc"

    invoke-direct {v1, v2, v3}, Lcom/google/android/youtube/core/converter/masf/NotificationSubscribeRequestConverter;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/google/android/youtube/core/converter/masf/NotificationResponseConverter;

    invoke-direct {v2}, Lcom/google/android/youtube/core/converter/masf/NotificationResponseConverter;-><init>()V

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/android/youtube/core/async/MasfRequester;-><init>(Lcom/google/android/youtube/core/masf/MasfService;Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;Z)V

    return-object v0
.end method

.method private createNotificationUnregisterRequester(Lcom/google/android/youtube/core/masf/MasfService;)Lcom/google/android/youtube/core/async/Requester;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/masf/MasfService;",
            ")",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/NotificationRequest;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1164
    new-instance v0, Lcom/google/android/youtube/core/async/MasfRequester;

    new-instance v1, Lcom/google/android/youtube/core/converter/masf/NotificationUnregisterRequestConverter;

    const-string v2, "g:ytn/ud"

    invoke-direct {v1, v2, v3}, Lcom/google/android/youtube/core/converter/masf/NotificationUnregisterRequestConverter;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/google/android/youtube/core/converter/masf/NotificationResponseConverter;

    invoke-direct {v2}, Lcom/google/android/youtube/core/converter/masf/NotificationResponseConverter;-><init>()V

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/android/youtube/core/async/MasfRequester;-><init>(Lcom/google/android/youtube/core/masf/MasfService;Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;Z)V

    return-object v0
.end method

.method private createNotificationUnsubscribeRequester(Lcom/google/android/youtube/core/masf/MasfService;)Lcom/google/android/youtube/core/async/Requester;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/masf/MasfService;",
            ")",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/NotificationRequest;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1150
    new-instance v0, Lcom/google/android/youtube/core/async/MasfRequester;

    new-instance v1, Lcom/google/android/youtube/core/converter/masf/NotificationUnsubscribeRequestConverter;

    const-string v2, "g:ytn/uc"

    invoke-direct {v1, v2, v3}, Lcom/google/android/youtube/core/converter/masf/NotificationUnsubscribeRequestConverter;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/google/android/youtube/core/converter/masf/NotificationResponseConverter;

    invoke-direct {v2}, Lcom/google/android/youtube/core/converter/masf/NotificationResponseConverter;-><init>()V

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/android/youtube/core/async/MasfRequester;-><init>(Lcom/google/android/youtube/core/masf/MasfService;Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;Z)V

    return-object v0
.end method

.method private createNotificationUpdateRegistrationRequester(Lcom/google/android/youtube/core/masf/MasfService;)Lcom/google/android/youtube/core/async/Requester;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/masf/MasfService;",
            ")",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/NotificationRequest;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1157
    new-instance v0, Lcom/google/android/youtube/core/async/MasfRequester;

    new-instance v1, Lcom/google/android/youtube/core/converter/masf/NotificationUpdateRegistrationRequestConverter;

    const-string v2, "g:ytn/ur"

    invoke-direct {v1, v2, v3}, Lcom/google/android/youtube/core/converter/masf/NotificationUpdateRegistrationRequestConverter;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/google/android/youtube/core/converter/masf/NotificationResponseConverter;

    invoke-direct {v2}, Lcom/google/android/youtube/core/converter/masf/NotificationResponseConverter;-><init>()V

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/android/youtube/core/async/MasfRequester;-><init>(Lcom/google/android/youtube/core/masf/MasfService;Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;Z)V

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
    .line 1138
    iget-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->uriRequestGetConverter:Lcom/google/android/youtube/core/converter/http/UriRequestConverter;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/DefaultRequesters;->newHttpRequester(Lcom/google/android/youtube/core/converter/RequestConverter;)Lcom/google/android/youtube/core/async/HttpRequester;

    move-result-object v0

    return-object v0
.end method

.method private createPlaylistThumbnailRequester(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/Requester;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;>;)",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 776
    .local p1, bitmapRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Landroid/net/Uri;Landroid/graphics/Bitmap;>;"
    .local p2, playlistRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;>;"
    new-instance v1, Lcom/google/android/youtube/core/async/BitmapBlendRequester;

    new-instance v3, Lcom/google/android/youtube/app/ui/StackBitmapBlender;

    iget-object v4, p0, Lcom/google/android/youtube/app/DefaultRequesters;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/youtube/app/ui/StackBitmapBlender;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v1, p1, v3}, Lcom/google/android/youtube/core/async/BitmapBlendRequester;-><init>(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/BitmapBlender;)V

    .line 779
    .local v1, bitmapBlendRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Ljava/util/List<Landroid/net/Uri;>;Landroid/graphics/Bitmap;>;"
    new-instance v2, Lcom/google/android/youtube/core/async/PlaylistThumbnailRequester;

    invoke-direct {v2, p2, v1}, Lcom/google/android/youtube/core/async/PlaylistThumbnailRequester;-><init>(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;)V

    .line 782
    .local v2, playlistThumbnailRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Landroid/graphics/Bitmap;>;"
    invoke-direct {p0, v2}, Lcom/google/android/youtube/app/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    .line 785
    .local v0, asyncRequester:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<Lcom/google/android/youtube/core/async/GDataRequest;Landroid/graphics/Bitmap;>;"
    return-object v0
.end method

.method private createPlaylistsRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Playlist;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 877
    new-instance v3, Lcom/google/android/youtube/core/converter/http/PlaylistPageResponseConverter;

    iget-object v4, p0, Lcom/google/android/youtube/app/DefaultRequesters;->xmlParser:Lcom/google/android/youtube/core/converter/XmlParser;

    invoke-direct {v3, v4}, Lcom/google/android/youtube/core/converter/http/PlaylistPageResponseConverter;-><init>(Lcom/google/android/youtube/core/converter/XmlParser;)V

    .line 879
    .local v3, responseConverter:Lcom/google/android/youtube/core/converter/http/PlaylistPageResponseConverter;
    iget-object v4, p0, Lcom/google/android/youtube/app/DefaultRequesters;->gdataRequestGetConverter:Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;

    invoke-direct {p0, v4, v3}, Lcom/google/android/youtube/app/DefaultRequesters;->newHttpRequester(Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)Lcom/google/android/youtube/core/async/HttpRequester;

    move-result-object v2

    .line 882
    .local v2, networkRequester:Lcom/google/android/youtube/core/async/HttpRequester;,"Lcom/google/android/youtube/core/async/HttpRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Playlist;>;>;"
    invoke-direct {p0, v2}, Lcom/google/android/youtube/app/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    .line 885
    .local v0, asyncRequester:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Playlist;>;>;"
    iget-object v4, p0, Lcom/google/android/youtube/app/DefaultRequesters;->playlistsCache:Lcom/google/android/youtube/core/cache/Cache;

    const-wide/32 v5, 0x1b7740

    invoke-direct {p0, v4, v0, v5, v6}, Lcom/google/android/youtube/app/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v1

    .line 888
    .local v1, memoryRequester:Lcom/google/android/youtube/core/async/TimestampedCachingRequester;,"Lcom/google/android/youtube/core/async/TimestampedCachingRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Playlist;>;>;"
    return-object v1
.end method

.method private createRemoveFromFavoritesRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1080
    new-instance v2, Lcom/google/android/youtube/core/utils/ContainsPathSegment;

    const-string v3, "favorites"

    invoke-direct {v2, v3}, Lcom/google/android/youtube/core/utils/ContainsPathSegment;-><init>(Ljava/lang/String;)V

    .line 1082
    .local v2, predicate:Lcom/google/android/youtube/core/utils/ContainsPathSegment;
    iget-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->inMemoryVideoPageCache:Lcom/google/android/youtube/core/cache/Cache;

    iget-object v4, p0, Lcom/google/android/youtube/app/DefaultRequesters;->retryingDeleteRequester:Lcom/google/android/youtube/core/async/Requester;

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/youtube/app/DefaultRequesters;->newEvicter(Lcom/google/android/youtube/core/utils/Predicate;Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/EvictingRequester;

    move-result-object v1

    .line 1085
    .local v1, memoryEvicter:Lcom/google/android/youtube/core/async/EvictingRequester;,"Lcom/google/android/youtube/core/async/EvictingRequester<Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Void;Lcom/google/android/youtube/core/async/GDataRequest;>;"
    invoke-direct {p0, v1}, Lcom/google/android/youtube/app/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    .line 1087
    .local v0, asyncRequester:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Void;>;"
    return-object v0
.end method

.method private createRemoveFromPlaylistRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1041
    new-instance v1, Lcom/google/android/youtube/core/async/EvictingRequester$GDataRequestUriPrefixEvicter;

    iget-object v2, p0, Lcom/google/android/youtube/app/DefaultRequesters;->inMemoryVideoPageCache:Lcom/google/android/youtube/core/cache/Cache;

    iget-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->retryingDeleteRequester:Lcom/google/android/youtube/core/async/Requester;

    invoke-direct {v1, v2, v3}, Lcom/google/android/youtube/core/async/EvictingRequester$GDataRequestUriPrefixEvicter;-><init>(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;)V

    .line 1045
    .local v1, memoryEvicter:Lcom/google/android/youtube/core/async/EvictingRequester$GDataRequestUriPrefixEvicter;,"Lcom/google/android/youtube/core/async/EvictingRequester$GDataRequestUriPrefixEvicter<Ljava/lang/Void;>;"
    invoke-direct {p0, v1}, Lcom/google/android/youtube/app/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    .line 1047
    .local v0, asyncRequester:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Void;>;"
    return-object v0
.end method

.method private createStreamsRequester(Z)Lcom/google/android/youtube/core/async/Requester;
    .locals 2
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
    .line 682
    new-instance v0, Lcom/google/android/youtube/app/player/StreamsRequester;

    iget-object v1, p0, Lcom/google/android/youtube/app/DefaultRequesters;->videoRequester:Lcom/google/android/youtube/core/async/Requester;

    invoke-direct {v0, v1, p1}, Lcom/google/android/youtube/app/player/StreamsRequester;-><init>(Lcom/google/android/youtube/core/async/Requester;Z)V

    return-object v0
.end method

.method private createSubscribeRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 978
    new-instance v2, Lcom/google/android/youtube/core/utils/ContainsPathSegment;

    const-string v3, "subscriptions"

    invoke-direct {v2, v3}, Lcom/google/android/youtube/core/utils/ContainsPathSegment;-><init>(Ljava/lang/String;)V

    .line 980
    .local v2, predicate:Lcom/google/android/youtube/core/utils/ContainsPathSegment;
    iget-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->subscriptionsCache:Lcom/google/android/youtube/core/cache/Cache;

    iget-object v4, p0, Lcom/google/android/youtube/app/DefaultRequesters;->retryingPostRequester:Lcom/google/android/youtube/core/async/Requester;

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/youtube/app/DefaultRequesters;->newEvicter(Lcom/google/android/youtube/core/utils/Predicate;Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/EvictingRequester;

    move-result-object v1

    .line 983
    .local v1, memoryEvicter:Lcom/google/android/youtube/core/async/EvictingRequester;,"Lcom/google/android/youtube/core/async/EvictingRequester<Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Void;Lcom/google/android/youtube/core/async/GDataRequest;>;"
    invoke-direct {p0, v1}, Lcom/google/android/youtube/app/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    .line 985
    .local v0, asyncRequester:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Void;>;"
    return-object v0
.end method

.method private createSubscriptionsRequester(Lcom/google/android/youtube/core/async/UserAuthorizer;)Lcom/google/android/youtube/core/async/Requester;
    .locals 8
    .parameter "authorizer"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/UserAuthorizer;",
            ")",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Subscription;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 894
    new-instance v3, Lcom/google/android/youtube/core/converter/http/SubscriptionPageResponseConverter;

    iget-object v5, p0, Lcom/google/android/youtube/app/DefaultRequesters;->xmlParser:Lcom/google/android/youtube/core/converter/XmlParser;

    invoke-direct {v3, v5}, Lcom/google/android/youtube/core/converter/http/SubscriptionPageResponseConverter;-><init>(Lcom/google/android/youtube/core/converter/XmlParser;)V

    .line 897
    .local v3, responseConverter:Lcom/google/android/youtube/core/converter/http/SubscriptionPageResponseConverter;
    iget-object v5, p0, Lcom/google/android/youtube/app/DefaultRequesters;->gdataRequestGetConverter:Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;

    invoke-direct {p0, v5, v3}, Lcom/google/android/youtube/app/DefaultRequesters;->newHttpRequester(Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)Lcom/google/android/youtube/core/async/HttpRequester;

    move-result-object v2

    .line 900
    .local v2, networkRequester:Lcom/google/android/youtube/core/async/HttpRequester;,"Lcom/google/android/youtube/core/async/HttpRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Subscription;>;>;"
    invoke-virtual {p1, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->createRetryingRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v4

    .line 903
    .local v4, retryingRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Subscription;>;>;"
    invoke-direct {p0, v4}, Lcom/google/android/youtube/app/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    .line 906
    .local v0, asyncRequester:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Subscription;>;>;"
    iget-object v5, p0, Lcom/google/android/youtube/app/DefaultRequesters;->subscriptionsCache:Lcom/google/android/youtube/core/cache/Cache;

    const-wide/32 v6, 0x1b7740

    invoke-direct {p0, v5, v0, v6, v7}, Lcom/google/android/youtube/app/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v1

    .line 909
    .local v1, memoryRequester:Lcom/google/android/youtube/core/async/TimestampedCachingRequester;,"Lcom/google/android/youtube/core/async/TimestampedCachingRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Subscription;>;>;"
    return-object v1
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
    .line 836
    new-instance v1, Lcom/google/android/youtube/core/converter/http/SubtitleConverter;

    invoke-direct {v1}, Lcom/google/android/youtube/core/converter/http/SubtitleConverter;-><init>()V

    .line 838
    .local v1, converter:Lcom/google/android/youtube/core/converter/http/SubtitleConverter;
    invoke-direct {p0, v1, v1}, Lcom/google/android/youtube/app/DefaultRequesters;->newHttpRequester(Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)Lcom/google/android/youtube/core/async/HttpRequester;

    move-result-object v4

    .line 841
    .local v4, networkRequester:Lcom/google/android/youtube/core/async/HttpRequester;,"Lcom/google/android/youtube/core/async/HttpRequester<Lcom/google/android/youtube/core/model/SubtitleTrack;Lcom/google/android/youtube/core/model/Subtitle;>;"
    invoke-direct {p0}, Lcom/google/android/youtube/app/DefaultRequesters;->newPersistentCache()Lcom/google/android/youtube/core/cache/PersistentCache;

    move-result-object v5

    .line 843
    .local v5, persistenceCache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<Lcom/google/android/youtube/core/model/SubtitleTrack;Lcom/google/android/youtube/core/async/Timestamped<Lcom/google/android/youtube/core/model/Subtitle;>;>;"
    const-wide/32 v7, 0x240c8400

    invoke-direct {p0, v5, v4, v7, v8}, Lcom/google/android/youtube/app/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v6

    .line 846
    .local v6, persistenceRequester:Lcom/google/android/youtube/core/async/TimestampedCachingRequester;,"Lcom/google/android/youtube/core/async/TimestampedCachingRequester<Lcom/google/android/youtube/core/model/SubtitleTrack;Lcom/google/android/youtube/core/model/Subtitle;>;"
    invoke-direct {p0, v6}, Lcom/google/android/youtube/app/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    .line 849
    .local v0, asyncRequester:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<Lcom/google/android/youtube/core/model/SubtitleTrack;Lcom/google/android/youtube/core/model/Subtitle;>;"
    const/16 v7, 0x14

    invoke-direct {p0, v7}, Lcom/google/android/youtube/app/DefaultRequesters;->newInMemoryCache(I)Lcom/google/android/youtube/core/cache/InMemoryLruCache;

    move-result-object v2

    .line 851
    .local v2, memoryCache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<Lcom/google/android/youtube/core/model/SubtitleTrack;Lcom/google/android/youtube/core/async/Timestamped<Lcom/google/android/youtube/core/model/Subtitle;>;>;"
    const-wide/32 v7, 0x6ddd00

    invoke-direct {p0, v2, v0, v7, v8}, Lcom/google/android/youtube/app/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v3

    .line 854
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
    .line 813
    new-instance v1, Lcom/google/android/youtube/core/converter/http/SubtitleTracksConverter;

    invoke-direct {v1}, Lcom/google/android/youtube/core/converter/http/SubtitleTracksConverter;-><init>()V

    .line 815
    .local v1, converter:Lcom/google/android/youtube/core/converter/http/SubtitleTracksConverter;
    invoke-direct {p0, v1, v1}, Lcom/google/android/youtube/app/DefaultRequesters;->newHttpRequester(Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)Lcom/google/android/youtube/core/async/HttpRequester;

    move-result-object v4

    .line 818
    .local v4, networkRequester:Lcom/google/android/youtube/core/async/HttpRequester;,"Lcom/google/android/youtube/core/async/HttpRequester<Ljava/lang/String;Ljava/util/List<Lcom/google/android/youtube/core/model/SubtitleTrack;>;>;"
    invoke-direct {p0}, Lcom/google/android/youtube/app/DefaultRequesters;->newPersistentCache()Lcom/google/android/youtube/core/cache/PersistentCache;

    move-result-object v5

    .line 820
    .local v5, persistenceCache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<Ljava/lang/String;Lcom/google/android/youtube/core/async/Timestamped<Ljava/util/List<Lcom/google/android/youtube/core/model/SubtitleTrack;>;>;>;"
    const-wide/32 v7, 0x240c8400

    invoke-direct {p0, v5, v4, v7, v8}, Lcom/google/android/youtube/app/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v6

    .line 823
    .local v6, persistenceRequester:Lcom/google/android/youtube/core/async/TimestampedCachingRequester;,"Lcom/google/android/youtube/core/async/TimestampedCachingRequester<Ljava/lang/String;Ljava/util/List<Lcom/google/android/youtube/core/model/SubtitleTrack;>;>;"
    invoke-direct {p0, v6}, Lcom/google/android/youtube/app/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    .line 826
    .local v0, asyncRequester:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<Ljava/lang/String;Ljava/util/List<Lcom/google/android/youtube/core/model/SubtitleTrack;>;>;"
    const/16 v7, 0x14

    invoke-direct {p0, v7}, Lcom/google/android/youtube/app/DefaultRequesters;->newInMemoryCache(I)Lcom/google/android/youtube/core/cache/InMemoryLruCache;

    move-result-object v2

    .line 829
    .local v2, memoryCache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<Ljava/lang/String;Lcom/google/android/youtube/core/async/Timestamped<Ljava/util/List<Lcom/google/android/youtube/core/model/SubtitleTrack;>;>;>;"
    const-wide/32 v7, 0x6ddd00

    invoke-direct {p0, v2, v0, v7, v8}, Lcom/google/android/youtube/app/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v3

    .line 832
    .local v3, memoryRequester:Lcom/google/android/youtube/core/async/TimestampedCachingRequester;,"Lcom/google/android/youtube/core/async/TimestampedCachingRequester<Ljava/lang/String;Ljava/util/List<Lcom/google/android/youtube/core/model/SubtitleTrack;>;>;"
    return-object v3
.end method

.method private createUnsubscribeRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 990
    new-instance v2, Lcom/google/android/youtube/core/utils/ContainsPathSegment;

    const-string v3, "subscriptions"

    invoke-direct {v2, v3}, Lcom/google/android/youtube/core/utils/ContainsPathSegment;-><init>(Ljava/lang/String;)V

    .line 992
    .local v2, predicate:Lcom/google/android/youtube/core/utils/ContainsPathSegment;
    iget-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->subscriptionsCache:Lcom/google/android/youtube/core/cache/Cache;

    iget-object v4, p0, Lcom/google/android/youtube/app/DefaultRequesters;->retryingDeleteRequester:Lcom/google/android/youtube/core/async/Requester;

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/youtube/app/DefaultRequesters;->newEvicter(Lcom/google/android/youtube/core/utils/Predicate;Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/EvictingRequester;

    move-result-object v1

    .line 995
    .local v1, memoryEvicter:Lcom/google/android/youtube/core/async/EvictingRequester;,"Lcom/google/android/youtube/core/async/EvictingRequester<Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Void;Lcom/google/android/youtube/core/async/GDataRequest;>;"
    invoke-direct {p0, v1}, Lcom/google/android/youtube/app/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    .line 997
    .local v0, asyncRequester:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Void;>;"
    return-object v0
.end method

.method private createUserProfileRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/UserProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 859
    new-instance v4, Lcom/google/android/youtube/core/converter/http/UserProfileResponseConverter;

    iget-object v5, p0, Lcom/google/android/youtube/app/DefaultRequesters;->xmlParser:Lcom/google/android/youtube/core/converter/XmlParser;

    invoke-direct {v4, v5}, Lcom/google/android/youtube/core/converter/http/UserProfileResponseConverter;-><init>(Lcom/google/android/youtube/core/converter/XmlParser;)V

    .line 861
    .local v4, responseConverter:Lcom/google/android/youtube/core/converter/http/UserProfileResponseConverter;
    iget-object v5, p0, Lcom/google/android/youtube/app/DefaultRequesters;->gdataRequestGetConverter:Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;

    invoke-direct {p0, v5, v4}, Lcom/google/android/youtube/app/DefaultRequesters;->newHttpRequester(Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)Lcom/google/android/youtube/core/async/HttpRequester;

    move-result-object v3

    .line 864
    .local v3, networkRequester:Lcom/google/android/youtube/core/async/HttpRequester;,"Lcom/google/android/youtube/core/async/HttpRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/UserProfile;>;"
    invoke-direct {p0, v3}, Lcom/google/android/youtube/app/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    .line 866
    .local v0, asyncRequester:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/UserProfile;>;"
    const/16 v5, 0x14

    invoke-direct {p0, v5}, Lcom/google/android/youtube/app/DefaultRequesters;->newInMemoryCache(I)Lcom/google/android/youtube/core/cache/InMemoryLruCache;

    move-result-object v1

    .line 869
    .local v1, memoryCache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Timestamped<Lcom/google/android/youtube/core/model/UserProfile;>;>;"
    const-wide/32 v5, 0x1b7740

    invoke-direct {p0, v1, v0, v5, v6}, Lcom/google/android/youtube/app/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v2

    .line 872
    .local v2, memoryRequester:Lcom/google/android/youtube/core/async/TimestampedCachingRequester;,"Lcom/google/android/youtube/core/async/TimestampedCachingRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/UserProfile;>;"
    return-object v2
.end method

.method private createVastAdRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/android/youtube/core/model/VastAd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1127
    new-instance v1, Lcom/google/android/youtube/core/converter/http/VastAdResponseConverter;

    iget-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->xmlParser:Lcom/google/android/youtube/core/converter/XmlParser;

    invoke-direct {v1, v3}, Lcom/google/android/youtube/core/converter/http/VastAdResponseConverter;-><init>(Lcom/google/android/youtube/core/converter/XmlParser;)V

    .line 1129
    .local v1, converter:Lcom/google/android/youtube/core/converter/http/VastAdResponseConverter;
    iget-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->uriRequestGetConverter:Lcom/google/android/youtube/core/converter/http/UriRequestConverter;

    invoke-direct {p0, v3, v1}, Lcom/google/android/youtube/app/DefaultRequesters;->newHttpRequester(Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)Lcom/google/android/youtube/core/async/HttpRequester;

    move-result-object v2

    .line 1132
    .local v2, networkRequester:Lcom/google/android/youtube/core/async/HttpRequester;,"Lcom/google/android/youtube/core/async/HttpRequester<Landroid/net/Uri;Lcom/google/android/youtube/core/model/VastAd;>;"
    invoke-direct {p0, v2}, Lcom/google/android/youtube/app/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    .line 1134
    .local v0, asyncRequester:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<Landroid/net/Uri;Lcom/google/android/youtube/core/model/VastAd;>;"
    return-object v0
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
    .line 645
    iget-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->gdataRequestGetConverter:Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;

    iget-object v4, p0, Lcom/google/android/youtube/app/DefaultRequesters;->videoResponseConverter:Lcom/google/android/youtube/core/converter/http/VideoResponseConverter;

    invoke-direct {p0, v3, v4}, Lcom/google/android/youtube/app/DefaultRequesters;->newHttpRequester(Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)Lcom/google/android/youtube/core/async/HttpRequester;

    move-result-object v2

    .line 648
    .local v2, networkRequester:Lcom/google/android/youtube/core/async/HttpRequester;,"Lcom/google/android/youtube/core/async/HttpRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Video;>;"
    invoke-direct {p0, v2}, Lcom/google/android/youtube/app/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    .line 650
    .local v0, asyncRequester:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Video;>;"
    iget-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->videoCache:Lcom/google/android/youtube/core/cache/Cache;

    const-wide/32 v4, 0xdbba00

    invoke-direct {p0, v3, v0, v4, v5}, Lcom/google/android/youtube/app/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v1

    .line 653
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
    .line 658
    iget-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->persistentVideoPageCache:Lcom/google/android/youtube/core/cache/Cache;

    iget-object v4, p0, Lcom/google/android/youtube/app/DefaultRequesters;->videoPageHttpRequester:Lcom/google/android/youtube/core/async/Requester;

    const-wide/32 v5, 0x5265c00

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/google/android/youtube/app/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v2

    .line 661
    .local v2, persistenceRequester:Lcom/google/android/youtube/core/async/TimestampedCachingRequester;,"Lcom/google/android/youtube/core/async/TimestampedCachingRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;>;"
    invoke-direct {p0, v2}, Lcom/google/android/youtube/app/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    .line 664
    .local v0, asyncRequester:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;>;"
    iget-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->splittingVideoCache:Lcom/google/android/youtube/core/cache/Cache;

    const-wide/32 v4, 0x6ddd00

    invoke-direct {p0, v3, v0, v4, v5}, Lcom/google/android/youtube/app/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v1

    .line 667
    .local v1, memoryRequester:Lcom/google/android/youtube/core/async/TimestampedCachingRequester;,"Lcom/google/android/youtube/core/async/TimestampedCachingRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;>;"
    return-object v1
.end method

.method private createVideosSearchRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 5
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
    .line 672
    iget-object v2, p0, Lcom/google/android/youtube/app/DefaultRequesters;->videoPageHttpRequester:Lcom/google/android/youtube/core/async/Requester;

    invoke-direct {p0, v2}, Lcom/google/android/youtube/app/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    .line 675
    .local v0, asyncRequester:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;>;"
    iget-object v2, p0, Lcom/google/android/youtube/app/DefaultRequesters;->splittingVideoCache:Lcom/google/android/youtube/core/cache/Cache;

    const-wide/32 v3, 0x1b7740

    invoke-direct {p0, v2, v0, v3, v4}, Lcom/google/android/youtube/app/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v1

    .line 678
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
    .line 1329
    .local p1, target:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<TR;TE;>;"
    iget-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/async/AsyncRequester;->create(Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

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
    .line 1339
    .local p1, cache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<TR;Lcom/google/android/youtube/core/async/Timestamped<TE;>;>;"
    .local p2, target:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<TR;TE;>;"
    iget-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->clock:Lcom/google/android/youtube/core/utils/Clock;

    invoke-static {p1, p2, v0, p3, p4}, Lcom/google/android/youtube/core/async/TimestampedCachingRequester;->create(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/utils/Clock;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v0

    return-object v0
.end method

.method private newEvicter(Lcom/google/android/youtube/core/utils/Predicate;Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/EvictingRequester;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/youtube/core/utils/Predicate",
            "<TK;>;",
            "Lcom/google/android/youtube/core/cache/Cache",
            "<TK;*>;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<TR;TE;>;)",
            "Lcom/google/android/youtube/core/async/EvictingRequester",
            "<TR;TE;TK;>;"
        }
    .end annotation

    .prologue
    .line 1344
    .local p1, filter:Lcom/google/android/youtube/core/utils/Predicate;,"Lcom/google/android/youtube/core/utils/Predicate<TK;>;"
    .local p2, cache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<TK;*>;"
    .local p3, target:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<TR;TE;>;"
    new-instance v0, Lcom/google/android/youtube/core/async/EvictingRequester;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/youtube/core/async/EvictingRequester;-><init>(Lcom/google/android/youtube/core/utils/Predicate;Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;)V

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
    .line 1325
    .local p1, requestConverter:Lcom/google/android/youtube/core/converter/RequestConverter;,"Lcom/google/android/youtube/core/converter/RequestConverter<TR;Lorg/apache/http/client/methods/HttpUriRequest;>;"
    new-instance v0, Lcom/google/android/youtube/core/async/HttpRequester;

    iget-object v1, p0, Lcom/google/android/youtube/app/DefaultRequesters;->httpClient:Lorg/apache/http/client/HttpClient;

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
    .line 1319
    .local p1, requestConverter:Lcom/google/android/youtube/core/converter/RequestConverter;,"Lcom/google/android/youtube/core/converter/RequestConverter<TR;Lorg/apache/http/client/methods/HttpUriRequest;>;"
    .local p2, responseConverter:Lcom/google/android/youtube/core/converter/ResponseConverter;,"Lcom/google/android/youtube/core/converter/ResponseConverter<Lorg/apache/http/HttpResponse;TE;>;"
    new-instance v0, Lcom/google/android/youtube/core/async/HttpRequester;

    iget-object v1, p0, Lcom/google/android/youtube/app/DefaultRequesters;->httpClient:Lorg/apache/http/client/HttpClient;

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
    .line 1333
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
    .line 1348
    new-instance v0, Lcom/google/android/youtube/core/cache/PersistentCache;

    iget-object v1, p0, Lcom/google/android/youtube/app/DefaultRequesters;->cachePath:Ljava/lang/String;

    const-string v2, ".cache"

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/cache/PersistentCache;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/youtube/app/DefaultRequesters;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/cache/PersistentCache;->init(Ljava/util/concurrent/Executor;)Lcom/google/android/youtube/core/cache/PersistentCache;

    move-result-object v0

    return-object v0
.end method

.method private triggerCacheShrinking(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .parameter "path"
    .parameter "suffix"
    .parameter "limit"

    .prologue
    .line 1306
    iget-object v6, p0, Lcom/google/android/youtube/app/DefaultRequesters;->executor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/youtube/app/DefaultRequesters$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/DefaultRequesters$2;-><init>(Lcom/google/android/youtube/app/DefaultRequesters;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1311
    return-void
.end method


# virtual methods
.method public clearUserCaches()V
    .locals 1

    .prologue
    .line 1181
    const-string v0, "cleaning persistent caches"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 1182
    iget-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->persistentVideoPageCache:Lcom/google/android/youtube/core/cache/Cache;

    invoke-interface {v0}, Lcom/google/android/youtube/core/cache/Cache;->clear()V

    .line 1183
    return-void
.end method

.method createArtistBundleRequester(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/cache/Cache;)Lcom/google/android/youtube/core/async/Requester;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/model/ArtistBundle;",
            ">;",
            "Lcom/google/android/youtube/core/cache/Cache",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/async/Timestamped",
            "<",
            "Lcom/google/android/youtube/core/async/Optional",
            "<",
            "Lcom/google/android/youtube/core/model/MusicVideo;",
            ">;>;>;)",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/model/ArtistBundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1264
    .local p1, networkRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Ljava/lang/String;Lcom/google/android/youtube/core/model/ArtistBundle;>;"
    .local p2, musicVideoCache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<Ljava/lang/String;Lcom/google/android/youtube/core/async/Timestamped<Lcom/google/android/youtube/core/async/Optional<Lcom/google/android/youtube/core/model/MusicVideo;>;>;>;"
    invoke-direct {p0}, Lcom/google/android/youtube/app/DefaultRequesters;->newPersistentCache()Lcom/google/android/youtube/core/cache/PersistentCache;

    move-result-object v4

    .line 1266
    .local v4, persistentCache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<Ljava/lang/String;Lcom/google/android/youtube/core/async/Timestamped<Lcom/google/android/youtube/core/model/ArtistBundle;>;>;"
    const-wide/32 v6, 0x5265c00

    invoke-direct {p0, v4, p1, v6, v7}, Lcom/google/android/youtube/app/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v3

    .line 1269
    .local v3, persistenceRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Ljava/lang/String;Lcom/google/android/youtube/core/model/ArtistBundle;>;"
    invoke-direct {p0, v3}, Lcom/google/android/youtube/app/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    .line 1271
    .local v0, asyncRequester:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<Ljava/lang/String;Lcom/google/android/youtube/core/model/ArtistBundle;>;"
    new-instance v1, Lcom/google/android/youtube/core/cache/InMemoryLruCache;

    const/16 v6, 0x14

    invoke-direct {v1, v6}, Lcom/google/android/youtube/core/cache/InMemoryLruCache;-><init>(I)V

    .line 1274
    .local v1, memoryCache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<Ljava/lang/String;Lcom/google/android/youtube/core/async/Timestamped<Lcom/google/android/youtube/core/model/ArtistBundle;>;>;"
    new-instance v5, Lcom/google/android/youtube/core/cache/SplittingCache;

    new-instance v6, Lcom/google/android/youtube/app/DefaultRequesters$ArtistBundleMusicVideoSplitter;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/google/android/youtube/app/DefaultRequesters$ArtistBundleMusicVideoSplitter;-><init>(Lcom/google/android/youtube/app/DefaultRequesters$1;)V

    invoke-direct {v5, v1, p2, v6}, Lcom/google/android/youtube/core/cache/SplittingCache;-><init>(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/cache/SplittingCache$Splitter;)V

    .line 1278
    .local v5, splittingCache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<Ljava/lang/String;Lcom/google/android/youtube/core/async/Timestamped<Lcom/google/android/youtube/core/model/ArtistBundle;>;>;"
    const-wide/32 v6, 0x6ddd00

    invoke-direct {p0, v5, v0, v6, v7}, Lcom/google/android/youtube/app/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v2

    .line 1281
    .local v2, memoryRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Ljava/lang/String;Lcom/google/android/youtube/core/model/ArtistBundle;>;"
    return-object v2
.end method

.method createMusicVideoRequester(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/cache/Cache;)Lcom/google/android/youtube/core/async/Requester;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            "Lcom/google/android/youtube/core/cache/Cache",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/async/Timestamped",
            "<",
            "Lcom/google/android/youtube/core/async/Optional",
            "<",
            "Lcom/google/android/youtube/core/model/MusicVideo;",
            ">;>;>;)",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/async/Optional",
            "<",
            "Lcom/google/android/youtube/core/model/MusicVideo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1213
    .local p1, networkListRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Ljava/util/List<Ljava/lang/String;>;Ljava/util/List<Lcom/google/android/youtube/core/model/MusicVideo;>;>;"
    .local p2, memoryCache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<Ljava/lang/String;Lcom/google/android/youtube/core/async/Timestamped<Lcom/google/android/youtube/core/async/Optional<Lcom/google/android/youtube/core/model/MusicVideo;>;>;>;"
    new-instance v2, Lcom/google/android/youtube/core/async/SingleItemListRequester;

    invoke-direct {v2, p1}, Lcom/google/android/youtube/core/async/SingleItemListRequester;-><init>(Lcom/google/android/youtube/core/async/Requester;)V

    .line 1216
    .local v2, networkRequester:Lcom/google/android/youtube/core/async/SingleItemListRequester;,"Lcom/google/android/youtube/core/async/SingleItemListRequester<Ljava/lang/String;Lcom/google/android/youtube/core/model/MusicVideo;>;"
    invoke-direct {p0, v2}, Lcom/google/android/youtube/app/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    .line 1219
    .local v0, asyncRequester:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<Ljava/lang/String;Lcom/google/android/youtube/core/async/Optional<Lcom/google/android/youtube/core/model/MusicVideo;>;>;"
    const-wide/32 v3, 0x6ddd00

    invoke-direct {p0, p2, v0, v3, v4}, Lcom/google/android/youtube/app/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v1

    .line 1222
    .local v1, memoryRequester:Lcom/google/android/youtube/core/async/TimestampedCachingRequester;,"Lcom/google/android/youtube/core/async/TimestampedCachingRequester<Ljava/lang/String;Lcom/google/android/youtube/core/async/Optional<Lcom/google/android/youtube/core/model/MusicVideo;>;>;"
    return-object v1
.end method

.method createMusicVideosRequester(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/cache/Cache;)Lcom/google/android/youtube/core/async/Requester;
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            "Lcom/google/android/youtube/core/cache/Cache",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/async/Timestamped",
            "<",
            "Lcom/google/android/youtube/core/async/Optional",
            "<",
            "Lcom/google/android/youtube/core/model/MusicVideo;",
            ">;>;>;)",
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

    .prologue
    .line 1229
    .local p1, networkRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Ljava/util/List<Ljava/lang/String;>;Ljava/util/List<Lcom/google/android/youtube/core/model/MusicVideo;>;>;"
    .local p2, singleElementCache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<Ljava/lang/String;Lcom/google/android/youtube/core/async/Timestamped<Lcom/google/android/youtube/core/async/Optional<Lcom/google/android/youtube/core/model/MusicVideo;>;>;>;"
    invoke-direct {p0}, Lcom/google/android/youtube/app/DefaultRequesters;->newPersistentCache()Lcom/google/android/youtube/core/cache/PersistentCache;

    move-result-object v4

    .line 1231
    .local v4, persistentCache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<Ljava/util/List<Ljava/lang/String;>;Lcom/google/android/youtube/core/async/Timestamped<Ljava/util/List<Lcom/google/android/youtube/core/model/MusicVideo;>;>;>;"
    const-wide/32 v6, 0x5265c00

    invoke-direct {p0, v4, p1, v6, v7}, Lcom/google/android/youtube/app/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v3

    .line 1234
    .local v3, persistenceRequester:Lcom/google/android/youtube/core/async/TimestampedCachingRequester;,"Lcom/google/android/youtube/core/async/TimestampedCachingRequester<Ljava/util/List<Ljava/lang/String;>;Ljava/util/List<Lcom/google/android/youtube/core/model/MusicVideo;>;>;"
    invoke-direct {p0, v3}, Lcom/google/android/youtube/app/DefaultRequesters;->newAsyncRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v0

    .line 1237
    .local v0, asyncRequester:Lcom/google/android/youtube/core/async/AsyncRequester;,"Lcom/google/android/youtube/core/async/AsyncRequester<Ljava/util/List<Ljava/lang/String;>;Ljava/util/List<Lcom/google/android/youtube/core/model/MusicVideo;>;>;"
    const/16 v6, 0x32

    invoke-direct {p0, v6}, Lcom/google/android/youtube/app/DefaultRequesters;->newInMemoryCache(I)Lcom/google/android/youtube/core/cache/InMemoryLruCache;

    move-result-object v1

    .line 1240
    .local v1, memoryCache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<Ljava/util/List<Ljava/lang/String;>;Lcom/google/android/youtube/core/async/Timestamped<Ljava/util/List<Lcom/google/android/youtube/core/model/MusicVideo;>;>;>;"
    new-instance v5, Lcom/google/android/youtube/core/cache/SplittingCache;

    new-instance v6, Lcom/google/android/youtube/core/cache/MusicVideosSplitter;

    invoke-direct {v6}, Lcom/google/android/youtube/core/cache/MusicVideosSplitter;-><init>()V

    invoke-direct {v5, v1, p2, v6}, Lcom/google/android/youtube/core/cache/SplittingCache;-><init>(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/cache/SplittingCache$Splitter;)V

    .line 1244
    .local v5, splittingCache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<Ljava/util/List<Ljava/lang/String;>;Lcom/google/android/youtube/core/async/Timestamped<Ljava/util/List<Lcom/google/android/youtube/core/model/MusicVideo;>;>;>;"
    const-wide/32 v6, 0x6ddd00

    invoke-direct {p0, v5, v0, v6, v7}, Lcom/google/android/youtube/app/DefaultRequesters;->newCachingRequester(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/async/Requester;J)Lcom/google/android/youtube/core/async/TimestampedCachingRequester;

    move-result-object v2

    .line 1247
    .local v2, memoryRequester:Lcom/google/android/youtube/core/async/TimestampedCachingRequester;,"Lcom/google/android/youtube/core/async/TimestampedCachingRequester<Ljava/util/List<Ljava/lang/String;>;Ljava/util/List<Lcom/google/android/youtube/core/model/MusicVideo;>;>;"
    return-object v2
.end method

.method public getAdTagRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/model/AdTag;",
            ">;"
        }
    .end annotation

    .prologue
    .line 616
    iget-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->adTagRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getAddCommentRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Comment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 560
    iget-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->addCommentRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getAddToFavoritesRequester()Lcom/google/android/youtube/core/async/Requester;
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
    .line 552
    iget-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->addToFavoritesRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getAddToPlaylistRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 572
    iget-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->addToPlaylistRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getAvatarRequester()Lcom/google/android/youtube/core/async/Requester;
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
    .line 464
    iget-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->avatarRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getBrandingBannerRequester()Lcom/google/android/youtube/core/async/Requester;
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
    .line 460
    iget-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->brandingBannerRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getBrandingRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Branding;",
            ">;"
        }
    .end annotation

    .prologue
    .line 640
    iget-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->brandingRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getCategoriesRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/Category;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 536
    iget-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->categoriesRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getCommentsRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Comment;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 452
    iget-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->commentsRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getCreatePlaylistRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Playlist;",
            ">;"
        }
    .end annotation

    .prologue
    .line 580
    iget-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->createPlaylistRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getDeleteUploadRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 488
    iget-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->deleteUploadRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getEventsRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Event;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 544
    iget-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->eventsRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getFavoritesRequester()Lcom/google/android/youtube/core/async/Requester;
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
    .line 496
    iget-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->videosRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getMusicVideosRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->musicVideosRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getMyFavoritesRequester()Lcom/google/android/youtube/core/async/Requester;
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
    .line 500
    iget-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->myVideosRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getMyPlaylistThumbnailRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 516
    iget-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->myPlaylistThumbnailRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getMyPlaylistVideosRequester()Lcom/google/android/youtube/core/async/Requester;
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
    .line 592
    iget-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->myVideosRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getMyPlaylistsRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Playlist;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->myPlaylistsRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getMyProfileRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/UserProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 476
    iget-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->myProfileRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getMyRecommendedVideosRequester()Lcom/google/android/youtube/core/async/Requester;
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
    .line 528
    iget-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->myVideosRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getMySubscriptionUpdatesRequester()Lcom/google/android/youtube/core/async/Requester;
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
    .line 524
    iget-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->myVideosRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getMySubscriptionsRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Subscription;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 520
    iget-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->mySubscriptionsRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getMyUploadsRequester()Lcom/google/android/youtube/core/async/Requester;
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
    .line 484
    iget-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->myUploadsRequester:Lcom/google/android/youtube/core/async/Requester;

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
    .line 612
    iget-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->pingRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getPlaylistThumbnailRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 512
    iget-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->playlistThumbnailRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getPlaylistVideosRequester()Lcom/google/android/youtube/core/async/Requester;
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
    .line 588
    iget-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->videosRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getPlaylistsRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Playlist;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 504
    iget-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->playlistsRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getRateRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 548
    iget-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->asyncRetryingPostRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getRelatedVideosRequester()Lcom/google/android/youtube/core/async/Requester;
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
    .line 448
    iget-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->videosRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getRemoveFromFavoritesRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 556
    iget-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->removeFromFavoritesRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getSearchRequester()Lcom/google/android/youtube/core/async/Requester;
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
    .line 440
    iget-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->videosSearchRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getStandardFeedRequester()Lcom/google/android/youtube/core/async/Requester;
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
    .line 540
    iget-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->videosRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getStreamsRequester()Lcom/google/android/youtube/core/async/Requester;
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
    .line 608
    iget-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->streamsRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getSubscribeRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 564
    iget-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->subscribeRequester:Lcom/google/android/youtube/core/async/Requester;

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
    .line 600
    iget-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->subtitleRequester:Lcom/google/android/youtube/core/async/Requester;

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
    .line 596
    iget-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->subtitleTracksRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getThumbnailRequester()Lcom/google/android/youtube/core/async/Requester;
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
    .line 456
    iget-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->thumbnailRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getUnsubscribeRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 568
    iget-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->unsubscribeRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getUploadsRequester()Lcom/google/android/youtube/core/async/Requester;
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
    .line 480
    iget-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->videosRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getUserProfileRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/UserProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 472
    iget-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->userProfileRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public getVastAdRequester()Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/android/youtube/core/model/VastAd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 620
    iget-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->vastAdRequester:Lcom/google/android/youtube/core/async/Requester;

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
    .line 436
    iget-object v0, p0, Lcom/google/android/youtube/app/DefaultRequesters;->videoRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method public init(Lcom/google/android/youtube/core/async/DeviceAuthorizer;Lcom/google/android/youtube/core/async/UserAuthorizer;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;)V
    .locals 11
    .parameter "deviceAuthorizer"
    .parameter "userAuthorizer"
    .parameter
    .parameter "revShareClientId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/DeviceAuthorizer;",
            "Lcom/google/android/youtube/core/async/UserAuthorizer;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, usernameGetter:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/String;>;"
    const/16 v10, 0x1f4

    const/16 v9, 0x14

    const/16 v8, 0x32

    const/4 v7, 0x0

    .line 299
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    iget-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/youtube/core/utils/Util;->isLargeScreen(Landroid/content/Context;)Z

    move-result v1

    .line 303
    .local v1, isLargeScreen:Z
    iget-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/youtube/core/utils/Util;->getSystemCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, countryCode:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->cachePath:Ljava/lang/String;

    const-string v4, ".cache"

    const-wide/32 v5, 0x1400000

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/google/android/youtube/app/DefaultRequesters;->triggerCacheShrinking(Ljava/lang/String;Ljava/lang/String;J)V

    .line 308
    new-instance v3, Lcom/google/android/youtube/core/converter/http/UriRequestConverter;

    sget-object v4, Lcom/google/android/youtube/core/converter/http/HttpMethod;->GET:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    invoke-direct {v3, v4}, Lcom/google/android/youtube/core/converter/http/UriRequestConverter;-><init>(Lcom/google/android/youtube/core/converter/http/HttpMethod;)V

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->uriRequestGetConverter:Lcom/google/android/youtube/core/converter/http/UriRequestConverter;

    .line 309
    new-instance v3, Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;

    sget-object v4, Lcom/google/android/youtube/core/converter/http/HttpMethod;->GET:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    iget-object v5, p0, Lcom/google/android/youtube/app/DefaultRequesters;->uriRewriter:Lcom/google/android/youtube/core/utils/UriRewriter;

    invoke-direct {v3, v4, p1, v5}, Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;-><init>(Lcom/google/android/youtube/core/converter/http/HttpMethod;Lcom/google/android/youtube/core/async/DeviceAuthorizer;Lcom/google/android/youtube/core/utils/UriRewriter;)V

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->gdataRequestGetConverter:Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;

    .line 311
    new-instance v3, Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;

    sget-object v4, Lcom/google/android/youtube/core/converter/http/HttpMethod;->PUT:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    const-string v5, "application/atom+xml"

    iget-object v6, p0, Lcom/google/android/youtube/app/DefaultRequesters;->uriRewriter:Lcom/google/android/youtube/core/utils/UriRewriter;

    invoke-direct {v3, v4, v5, p1, v6}, Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;-><init>(Lcom/google/android/youtube/core/converter/http/HttpMethod;Ljava/lang/String;Lcom/google/android/youtube/core/async/DeviceAuthorizer;Lcom/google/android/youtube/core/utils/UriRewriter;)V

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->gdataRequestPutConverter:Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;

    .line 313
    new-instance v3, Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;

    sget-object v4, Lcom/google/android/youtube/core/converter/http/HttpMethod;->PATCH:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    const-string v5, "application/xml"

    iget-object v6, p0, Lcom/google/android/youtube/app/DefaultRequesters;->uriRewriter:Lcom/google/android/youtube/core/utils/UriRewriter;

    invoke-direct {v3, v4, v5, p1, v6}, Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;-><init>(Lcom/google/android/youtube/core/converter/http/HttpMethod;Ljava/lang/String;Lcom/google/android/youtube/core/async/DeviceAuthorizer;Lcom/google/android/youtube/core/utils/UriRewriter;)V

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->gdataRequestPatchConverter:Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;

    .line 315
    new-instance v3, Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;

    sget-object v4, Lcom/google/android/youtube/core/converter/http/HttpMethod;->POST:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    const-string v5, "application/atom+xml"

    iget-object v6, p0, Lcom/google/android/youtube/app/DefaultRequesters;->uriRewriter:Lcom/google/android/youtube/core/utils/UriRewriter;

    invoke-direct {v3, v4, v5, p1, v6}, Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;-><init>(Lcom/google/android/youtube/core/converter/http/HttpMethod;Ljava/lang/String;Lcom/google/android/youtube/core/async/DeviceAuthorizer;Lcom/google/android/youtube/core/utils/UriRewriter;)V

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->gdataRequestPostConverter:Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;

    .line 317
    new-instance v3, Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;

    sget-object v4, Lcom/google/android/youtube/core/converter/http/HttpMethod;->DELETE:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    const-string v5, "application/atom+xml"

    iget-object v6, p0, Lcom/google/android/youtube/app/DefaultRequesters;->uriRewriter:Lcom/google/android/youtube/core/utils/UriRewriter;

    invoke-direct {v3, v4, v5, p1, v6}, Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;-><init>(Lcom/google/android/youtube/core/converter/http/HttpMethod;Ljava/lang/String;Lcom/google/android/youtube/core/async/DeviceAuthorizer;Lcom/google/android/youtube/core/utils/UriRewriter;)V

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->gdataRequestDeleteConverter:Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;

    .line 320
    invoke-direct {p0}, Lcom/google/android/youtube/app/DefaultRequesters;->createBitmapBytesRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->bitmapBytesRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 323
    iget-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/youtube/app/DefaultRequesters;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/youtube/core/utils/Util;->useTabletUi(Landroid/content/Context;)Z

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/google/android/youtube/app/DefaultRequesters;->createBitmapRequester(IZ)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->thumbnailRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 326
    const/16 v3, 0x1e0

    invoke-direct {p0, v3, v7}, Lcom/google/android/youtube/app/DefaultRequesters;->createBitmapRequester(IZ)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->brandingBannerRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 327
    iget-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {p0, v3, v7}, Lcom/google/android/youtube/app/DefaultRequesters;->createBitmapRequester(IZ)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->avatarRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 329
    const/16 v3, 0xa9

    invoke-direct {p0, v3, v7}, Lcom/google/android/youtube/app/DefaultRequesters;->createBitmapRequester(IZ)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->posterArtRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 331
    new-instance v3, Lcom/google/android/youtube/app/DefaultRequesters$1;

    invoke-direct {v3, p0}, Lcom/google/android/youtube/app/DefaultRequesters$1;-><init>(Lcom/google/android/youtube/app/DefaultRequesters;)V

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->mediaPlayerFactory:Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerFactory;

    .line 337
    invoke-direct {p0}, Lcom/google/android/youtube/app/DefaultRequesters;->createPingRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->pingRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 339
    invoke-direct {p0, v10}, Lcom/google/android/youtube/app/DefaultRequesters;->newInMemoryCache(I)Lcom/google/android/youtube/core/cache/InMemoryLruCache;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->videoCache:Lcom/google/android/youtube/core/cache/Cache;

    .line 340
    new-instance v3, Lcom/google/android/youtube/core/converter/http/VideoResponseConverter;

    iget-object v4, p0, Lcom/google/android/youtube/app/DefaultRequesters;->xmlParser:Lcom/google/android/youtube/core/converter/XmlParser;

    invoke-direct {v3, v4, v1}, Lcom/google/android/youtube/core/converter/http/VideoResponseConverter;-><init>(Lcom/google/android/youtube/core/converter/XmlParser;Z)V

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->videoResponseConverter:Lcom/google/android/youtube/core/converter/http/VideoResponseConverter;

    .line 341
    invoke-direct {p0}, Lcom/google/android/youtube/app/DefaultRequesters;->createVideoRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->videoRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 343
    invoke-direct {p0, v8}, Lcom/google/android/youtube/app/DefaultRequesters;->newInMemoryCache(I)Lcom/google/android/youtube/core/cache/InMemoryLruCache;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->inMemoryVideoPageCache:Lcom/google/android/youtube/core/cache/Cache;

    .line 344
    invoke-direct {p0}, Lcom/google/android/youtube/app/DefaultRequesters;->newPersistentCache()Lcom/google/android/youtube/core/cache/PersistentCache;

    move-result-object v2

    .line 346
    .local v2, syncPersistentVideoPageCache:Lcom/google/android/youtube/core/cache/PersistentCache;,"Lcom/google/android/youtube/core/cache/PersistentCache<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Timestamped<Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;>;>;"
    new-instance v3, Lcom/google/android/youtube/core/cache/AsyncCache;

    iget-object v4, p0, Lcom/google/android/youtube/app/DefaultRequesters;->executor:Ljava/util/concurrent/Executor;

    invoke-direct {v3, v4, v2}, Lcom/google/android/youtube/core/cache/AsyncCache;-><init>(Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/cache/Cache;)V

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->persistentVideoPageCache:Lcom/google/android/youtube/core/cache/Cache;

    .line 348
    new-instance v3, Lcom/google/android/youtube/core/cache/SplittingCache;

    iget-object v4, p0, Lcom/google/android/youtube/app/DefaultRequesters;->inMemoryVideoPageCache:Lcom/google/android/youtube/core/cache/Cache;

    iget-object v5, p0, Lcom/google/android/youtube/app/DefaultRequesters;->videoCache:Lcom/google/android/youtube/core/cache/Cache;

    new-instance v6, Lcom/google/android/youtube/app/DefaultRequesters$VideoPageSplitter;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/google/android/youtube/app/DefaultRequesters$VideoPageSplitter;-><init>(Lcom/google/android/youtube/app/DefaultRequesters$1;)V

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/youtube/core/cache/SplittingCache;-><init>(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/cache/SplittingCache$Splitter;)V

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->splittingVideoCache:Lcom/google/android/youtube/core/cache/Cache;

    .line 352
    iget-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->gdataRequestGetConverter:Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;

    new-instance v4, Lcom/google/android/youtube/core/converter/http/VideoPageResponseConverter;

    iget-object v5, p0, Lcom/google/android/youtube/app/DefaultRequesters;->xmlParser:Lcom/google/android/youtube/core/converter/XmlParser;

    invoke-direct {v4, v5, v1}, Lcom/google/android/youtube/core/converter/http/VideoPageResponseConverter;-><init>(Lcom/google/android/youtube/core/converter/XmlParser;Z)V

    invoke-direct {p0, v3, v4}, Lcom/google/android/youtube/app/DefaultRequesters;->newHttpRequester(Lcom/google/android/youtube/core/converter/RequestConverter;Lcom/google/android/youtube/core/converter/ResponseConverter;)Lcom/google/android/youtube/core/async/HttpRequester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->videoPageHttpRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 356
    invoke-direct {p0, v9}, Lcom/google/android/youtube/app/DefaultRequesters;->newInMemoryCache(I)Lcom/google/android/youtube/core/cache/InMemoryLruCache;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->subscriptionsCache:Lcom/google/android/youtube/core/cache/Cache;

    .line 357
    invoke-direct {p0, v9}, Lcom/google/android/youtube/app/DefaultRequesters;->newInMemoryCache(I)Lcom/google/android/youtube/core/cache/InMemoryLruCache;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->purchasesCache:Lcom/google/android/youtube/core/cache/Cache;

    .line 358
    invoke-direct {p0, v8}, Lcom/google/android/youtube/app/DefaultRequesters;->newInMemoryCache(I)Lcom/google/android/youtube/core/cache/InMemoryLruCache;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->commentsCache:Lcom/google/android/youtube/core/cache/Cache;

    .line 359
    invoke-direct {p0, v8}, Lcom/google/android/youtube/app/DefaultRequesters;->newInMemoryCache(I)Lcom/google/android/youtube/core/cache/InMemoryLruCache;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->playlistsCache:Lcom/google/android/youtube/core/cache/Cache;

    .line 361
    invoke-direct {p0}, Lcom/google/android/youtube/app/DefaultRequesters;->createVideosRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->videosRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 362
    invoke-direct {p0}, Lcom/google/android/youtube/app/DefaultRequesters;->createVideosSearchRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->videosSearchRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 363
    iget-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/youtube/core/utils/Util;->canDisplayHd(Landroid/content/Context;)Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/google/android/youtube/app/DefaultRequesters;->createStreamsRequester(Z)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->streamsRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 364
    invoke-direct {p0}, Lcom/google/android/youtube/app/DefaultRequesters;->createUserProfileRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->userProfileRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 365
    invoke-direct {p0}, Lcom/google/android/youtube/app/DefaultRequesters;->createCommentsRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->commentsRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 366
    invoke-direct {p0}, Lcom/google/android/youtube/app/DefaultRequesters;->createCategoriesRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->categoriesRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 367
    invoke-direct {p0}, Lcom/google/android/youtube/app/DefaultRequesters;->createEventsRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->eventsRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 368
    invoke-direct {p0}, Lcom/google/android/youtube/app/DefaultRequesters;->createPlaylistsRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->playlistsRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 369
    iget-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->thumbnailRequester:Lcom/google/android/youtube/core/async/Requester;

    iget-object v4, p0, Lcom/google/android/youtube/app/DefaultRequesters;->videosRequester:Lcom/google/android/youtube/core/async/Requester;

    invoke-direct {p0, v3, v4}, Lcom/google/android/youtube/app/DefaultRequesters;->createPlaylistThumbnailRequester(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->playlistThumbnailRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 371
    invoke-direct {p0}, Lcom/google/android/youtube/app/DefaultRequesters;->createBrandingRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->brandingRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 372
    invoke-direct {p0}, Lcom/google/android/youtube/app/DefaultRequesters;->createSubtitleTracksRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->subtitleTracksRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 373
    invoke-direct {p0}, Lcom/google/android/youtube/app/DefaultRequesters;->createSubtitleRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->subtitleRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 374
    invoke-direct {p0, p3, p4, v0}, Lcom/google/android/youtube/app/DefaultRequesters;->createAdTagRequester(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->adTagRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 375
    invoke-direct {p0}, Lcom/google/android/youtube/app/DefaultRequesters;->createVastAdRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->vastAdRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 377
    iget-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->userProfileRequester:Lcom/google/android/youtube/core/async/Requester;

    invoke-virtual {p2, v3}, Lcom/google/android/youtube/core/async/UserAuthorizer;->createRetryingRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->myProfileRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 378
    invoke-direct {p0, p2}, Lcom/google/android/youtube/app/DefaultRequesters;->createMyVideosRequester(Lcom/google/android/youtube/core/async/UserAuthorizer;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->myVideosRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 379
    invoke-direct {p0, p2}, Lcom/google/android/youtube/app/DefaultRequesters;->createMyUploadsRequester(Lcom/google/android/youtube/core/async/UserAuthorizer;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->myUploadsRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 380
    iget-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->playlistsRequester:Lcom/google/android/youtube/core/async/Requester;

    invoke-virtual {p2, v3}, Lcom/google/android/youtube/core/async/UserAuthorizer;->createRetryingRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->myPlaylistsRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 381
    iget-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->thumbnailRequester:Lcom/google/android/youtube/core/async/Requester;

    iget-object v4, p0, Lcom/google/android/youtube/app/DefaultRequesters;->myVideosRequester:Lcom/google/android/youtube/core/async/Requester;

    invoke-direct {p0, v3, v4}, Lcom/google/android/youtube/app/DefaultRequesters;->createPlaylistThumbnailRequester(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->myPlaylistThumbnailRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 383
    invoke-direct {p0, p2}, Lcom/google/android/youtube/app/DefaultRequesters;->createSubscriptionsRequester(Lcom/google/android/youtube/core/async/UserAuthorizer;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->mySubscriptionsRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 384
    invoke-direct {p0, p2}, Lcom/google/android/youtube/app/DefaultRequesters;->createMyPurchasesRequester(Lcom/google/android/youtube/core/async/UserAuthorizer;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->myPurchasesRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 386
    iget-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->gdataRequestPostConverter:Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;

    invoke-direct {p0, v3}, Lcom/google/android/youtube/app/DefaultRequesters;->newHttpRequester(Lcom/google/android/youtube/core/converter/RequestConverter;)Lcom/google/android/youtube/core/async/HttpRequester;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/google/android/youtube/core/async/UserAuthorizer;->createRetryingRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->retryingPostRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 388
    iget-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->executor:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/google/android/youtube/app/DefaultRequesters;->retryingPostRequester:Lcom/google/android/youtube/core/async/Requester;

    invoke-static {v3, v4}, Lcom/google/android/youtube/core/async/AsyncRequester;->create(Ljava/util/concurrent/Executor;Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/AsyncRequester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->asyncRetryingPostRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 390
    iget-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->gdataRequestDeleteConverter:Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;

    invoke-direct {p0, v3}, Lcom/google/android/youtube/app/DefaultRequesters;->newHttpRequester(Lcom/google/android/youtube/core/converter/RequestConverter;)Lcom/google/android/youtube/core/async/HttpRequester;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/google/android/youtube/core/async/UserAuthorizer;->createRetryingRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->retryingDeleteRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 393
    iget-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->gdataRequestPutConverter:Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;

    invoke-direct {p0, v3}, Lcom/google/android/youtube/app/DefaultRequesters;->newHttpRequester(Lcom/google/android/youtube/core/converter/RequestConverter;)Lcom/google/android/youtube/core/async/HttpRequester;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/google/android/youtube/core/async/UserAuthorizer;->createRetryingRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->retryingPutRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 396
    iget-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->gdataRequestPatchConverter:Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;

    invoke-direct {p0, v3}, Lcom/google/android/youtube/app/DefaultRequesters;->newHttpRequester(Lcom/google/android/youtube/core/converter/RequestConverter;)Lcom/google/android/youtube/core/async/HttpRequester;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/google/android/youtube/core/async/UserAuthorizer;->createRetryingRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->retryingPatchRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 399
    invoke-direct {p0}, Lcom/google/android/youtube/app/DefaultRequesters;->createSubscribeRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->subscribeRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 400
    invoke-direct {p0}, Lcom/google/android/youtube/app/DefaultRequesters;->createUnsubscribeRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->unsubscribeRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 402
    new-instance v3, Lcom/google/android/youtube/core/converter/http/PlaylistResponseConverter;

    iget-object v4, p0, Lcom/google/android/youtube/app/DefaultRequesters;->xmlParser:Lcom/google/android/youtube/core/converter/XmlParser;

    invoke-direct {v3, v4}, Lcom/google/android/youtube/core/converter/http/PlaylistResponseConverter;-><init>(Lcom/google/android/youtube/core/converter/XmlParser;)V

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->playlistResponseConverter:Lcom/google/android/youtube/core/converter/http/PlaylistResponseConverter;

    .line 403
    invoke-direct {p0}, Lcom/google/android/youtube/app/DefaultRequesters;->createAddToPlaylistRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->addToPlaylistRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 404
    invoke-direct {p0}, Lcom/google/android/youtube/app/DefaultRequesters;->createRemoveFromPlaylistRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->removeFromPlaylistRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 405
    invoke-direct {p0, p2}, Lcom/google/android/youtube/app/DefaultRequesters;->createCreatePlaylistRequester(Lcom/google/android/youtube/core/async/UserAuthorizer;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->createPlaylistRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 406
    invoke-direct {p0}, Lcom/google/android/youtube/app/DefaultRequesters;->createDeletePlaylistRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->deletePlaylistRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 407
    invoke-direct {p0, p2}, Lcom/google/android/youtube/app/DefaultRequesters;->createAddToFavoritesRequester(Lcom/google/android/youtube/core/async/UserAuthorizer;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->addToFavoritesRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 408
    invoke-direct {p0, p2}, Lcom/google/android/youtube/app/DefaultRequesters;->createAddCommentRequester(Lcom/google/android/youtube/core/async/UserAuthorizer;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->addCommentRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 410
    invoke-direct {p0}, Lcom/google/android/youtube/app/DefaultRequesters;->createRemoveFromFavoritesRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->removeFromFavoritesRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 411
    invoke-direct {p0}, Lcom/google/android/youtube/app/DefaultRequesters;->createDeleteUploadRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->deleteUploadRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 412
    invoke-direct {p0}, Lcom/google/android/youtube/app/DefaultRequesters;->createEditMetadataRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->editMetadataRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 414
    new-instance v3, Lcom/google/android/youtube/core/masf/MasfServiceImpl;

    invoke-direct {v3}, Lcom/google/android/youtube/core/masf/MasfServiceImpl;-><init>()V

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->masf:Lcom/google/android/youtube/core/masf/MasfService;

    .line 416
    invoke-direct {p0, v10}, Lcom/google/android/youtube/app/DefaultRequesters;->newInMemoryCache(I)Lcom/google/android/youtube/core/cache/InMemoryLruCache;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->musicVideoMemoryCache:Lcom/google/android/youtube/core/cache/Cache;

    .line 418
    iget-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->masf:Lcom/google/android/youtube/core/masf/MasfService;

    invoke-direct {p0, v3, v0}, Lcom/google/android/youtube/app/DefaultRequesters;->createNetworkMusicVideosRequester(Lcom/google/android/youtube/core/masf/MasfService;Ljava/lang/String;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->networkMusicVideosRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 420
    iget-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->networkMusicVideosRequester:Lcom/google/android/youtube/core/async/Requester;

    iget-object v4, p0, Lcom/google/android/youtube/app/DefaultRequesters;->musicVideoMemoryCache:Lcom/google/android/youtube/core/cache/Cache;

    invoke-virtual {p0, v3, v4}, Lcom/google/android/youtube/app/DefaultRequesters;->createMusicVideoRequester(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/cache/Cache;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->musicVideoRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 423
    iget-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->networkMusicVideosRequester:Lcom/google/android/youtube/core/async/Requester;

    iget-object v4, p0, Lcom/google/android/youtube/app/DefaultRequesters;->musicVideoMemoryCache:Lcom/google/android/youtube/core/cache/Cache;

    invoke-virtual {p0, v3, v4}, Lcom/google/android/youtube/app/DefaultRequesters;->createMusicVideosRequester(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/cache/Cache;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->musicVideosRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 426
    iget-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->masf:Lcom/google/android/youtube/core/masf/MasfService;

    invoke-direct {p0, v3, v0}, Lcom/google/android/youtube/app/DefaultRequesters;->createNetworkArtistBundleRequester(Lcom/google/android/youtube/core/masf/MasfService;Ljava/lang/String;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/youtube/app/DefaultRequesters;->musicVideoMemoryCache:Lcom/google/android/youtube/core/cache/Cache;

    invoke-virtual {p0, v3, v4}, Lcom/google/android/youtube/app/DefaultRequesters;->createArtistBundleRequester(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/cache/Cache;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->artistBundleRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 429
    iget-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->masf:Lcom/google/android/youtube/core/masf/MasfService;

    invoke-direct {p0, v3}, Lcom/google/android/youtube/app/DefaultRequesters;->createNotificationSubscribeRequester(Lcom/google/android/youtube/core/masf/MasfService;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->notificationSubscribeRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 430
    iget-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->masf:Lcom/google/android/youtube/core/masf/MasfService;

    invoke-direct {p0, v3}, Lcom/google/android/youtube/app/DefaultRequesters;->createNotificationUnsubscribeRequester(Lcom/google/android/youtube/core/masf/MasfService;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->notificationUnsubscribeRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 431
    iget-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->masf:Lcom/google/android/youtube/core/masf/MasfService;

    invoke-direct {p0, v3}, Lcom/google/android/youtube/app/DefaultRequesters;->createNotificationUpdateRegistrationRequester(Lcom/google/android/youtube/core/masf/MasfService;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->notificationUpdateRegistrationRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 432
    iget-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->masf:Lcom/google/android/youtube/core/masf/MasfService;

    invoke-direct {p0, v3}, Lcom/google/android/youtube/app/DefaultRequesters;->createNotificationUnregisterRequester(Lcom/google/android/youtube/core/masf/MasfService;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/youtube/app/DefaultRequesters;->notificationUnregisterRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 433
    return-void
.end method
