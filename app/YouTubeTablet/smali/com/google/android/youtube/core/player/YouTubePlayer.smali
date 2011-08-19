.class public Lcom/google/android/youtube/core/player/YouTubePlayer;
.super Landroid/widget/RelativeLayout;
.source "YouTubePlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;,
        Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;,
        Lcom/google/android/youtube/core/player/YouTubePlayer$InternalSurfaceView;,
        Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;,
        Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerFactory;
    }
.end annotation


# static fields
.field public static final ASPECT_RATIO:F = 1.777f

.field public static final BUFFERING_END:I = 0x7

.field public static final BUFFERING_START:I = 0x6

.field public static final DRM_ERROR_LICENSE_EXPIRED:I = -0x7d1

.field public static final ENDED:I = 0x8

.field public static final ERROR:I = 0x9

.field public static final ERROR_HEARTBEAT_AUTHENTICATION_FAILURE:I = -0xbb8

.field public static final ERROR_HEARTBEAT_CANNOT_ACTIVATE_RENTAL:I = -0xbbd

.field public static final ERROR_HEARTBEAT_CONCURRENT_PLAYBACK:I = -0xbba

.field public static final ERROR_HEARTBEAT_NO_ACTIVE_PURCHASE_AGREEMENT:I = -0xbb9

.field public static final ERROR_HEARTBEAT_STREAMING_UNAVAILABLE:I = -0xbbc

.field public static final ERROR_HEARTBEAT_TERMINATE_REQUESTED:I = -0xbbe

.field public static final ERROR_HEARTBEAT_UNUSUAL_ACTIVITY:I = -0xbbb

.field private static final FATAL_ERROR_CODES:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAUSED:I = 0x3

.field public static final PLAYING:I = 0x2

.field public static final PREPARED:I = 0x1

.field public static final PROGRESS:I = 0x5

.field public static final SEEKING_START:I = 0xa

.field public static final STOPPED:I = 0x4

.field public static final UNKNOWN_ERROR_CANNOT_CONNECT:I = -0x3eb

.field public static final UNKNOWN_ERROR_CONNECTION_LOST:I = -0x3ed

.field public static final UNKNOWN_ERROR_EOF:I = -0x3e81

.field public static final UNKNOWN_ERROR_IO:I = -0x3ec

.field public static final UNKNOWN_ERROR_NO_LICENSE:I = -0x3f6

.field public static final UNKNOWN_ERROR_UNKNOWN_HOST:I = -0x3ea

.field public static final UNKNOWN_ERROR_UNSUPPORTED:I = -0x3f2


# instance fields
.field private volatile buffering:Z

.field private final internalListener:Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;

.field private final listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mediaPlayerFactory:Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerFactory;

.field private final mediaPlayerRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/media/MediaPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaPlayerThread:Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;

.field private pendingStream:Lcom/google/android/youtube/core/model/Stream;

.field private volatile playing:Z

.field private volatile prepared:Z

.field private final progressNotifier:Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;

.field private volatile retries:I

.field private volatile retryingPlay:Z

.field private volatile retryingPrepare:Z

.field private source:Lcom/google/android/youtube/core/model/Stream;

.field private surfaceCreated:Z

.field private final surfaceHolder:Landroid/view/SurfaceHolder;

.field private final surfaceView:Lcom/google/android/youtube/core/player/YouTubePlayer$InternalSurfaceView;

.field private volatile videoHeight:I

.field private volatile videoSizeKnown:Z

.field private volatile videoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 117
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 118
    .local v0, fatalErrorCodes:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/16 v1, -0x3e81

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 119
    const/16 v1, -0x3f6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 120
    const/16 v1, -0x7d1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 121
    const/16 v1, -0xbb8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 122
    const/16 v1, -0xbb9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 123
    const/16 v1, -0xbba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 124
    const/16 v1, -0xbbb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 125
    const/16 v1, -0xbbc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 126
    const/16 v1, -0xbbd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 127
    const/16 v1, -0xbbe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/google/android/youtube/core/player/YouTubePlayer;->FATAL_ERROR_CODES:Ljava/util/Set;

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 172
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 173
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->mediaPlayerRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 175
    new-instance v0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalSurfaceView;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalSurfaceView;-><init>(Lcom/google/android/youtube/core/player/YouTubePlayer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->surfaceView:Lcom/google/android/youtube/core/player/YouTubePlayer$InternalSurfaceView;

    .line 176
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->surfaceView:Lcom/google/android/youtube/core/player/YouTubePlayer$InternalSurfaceView;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 178
    new-instance v0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;

    invoke-direct {v0, p0, v2}, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;-><init>(Lcom/google/android/youtube/core/player/YouTubePlayer;Lcom/google/android/youtube/core/player/YouTubePlayer$1;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->internalListener:Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->listeners:Ljava/util/ArrayList;

    .line 181
    new-instance v0, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;

    invoke-direct {v0, p0, v2}, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;-><init>(Lcom/google/android/youtube/core/player/YouTubePlayer;Lcom/google/android/youtube/core/player/YouTubePlayer$1;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->mediaPlayerThread:Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;

    .line 182
    new-instance v0, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;-><init>(Lcom/google/android/youtube/core/player/YouTubePlayer;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->progressNotifier:Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;

    .line 184
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->init(Landroid/content/Context;)V

    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 188
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 189
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->mediaPlayerRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 191
    new-instance v0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalSurfaceView;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalSurfaceView;-><init>(Lcom/google/android/youtube/core/player/YouTubePlayer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->surfaceView:Lcom/google/android/youtube/core/player/YouTubePlayer$InternalSurfaceView;

    .line 192
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->surfaceView:Lcom/google/android/youtube/core/player/YouTubePlayer$InternalSurfaceView;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 194
    new-instance v0, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;

    invoke-direct {v0, p0, v2}, Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;-><init>(Lcom/google/android/youtube/core/player/YouTubePlayer;Lcom/google/android/youtube/core/player/YouTubePlayer$1;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->internalListener:Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->listeners:Ljava/util/ArrayList;

    .line 197
    new-instance v0, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;

    invoke-direct {v0, p0, v2}, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;-><init>(Lcom/google/android/youtube/core/player/YouTubePlayer;Lcom/google/android/youtube/core/player/YouTubePlayer$1;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->mediaPlayerThread:Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;

    .line 198
    new-instance v0, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;-><init>(Lcom/google/android/youtube/core/player/YouTubePlayer;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->progressNotifier:Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;

    .line 200
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->init(Landroid/content/Context;)V

    .line 201
    return-void
.end method

.method static synthetic access$1002(Lcom/google/android/youtube/core/player/YouTubePlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->surfaceCreated:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/google/android/youtube/core/player/YouTubePlayer;)Lcom/google/android/youtube/core/model/Stream;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->pendingStream:Lcom/google/android/youtube/core/model/Stream;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/android/youtube/core/player/YouTubePlayer;Lcom/google/android/youtube/core/model/Stream;)Lcom/google/android/youtube/core/model/Stream;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->pendingStream:Lcom/google/android/youtube/core/model/Stream;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/google/android/youtube/core/player/YouTubePlayer;Lcom/google/android/youtube/core/model/Stream;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->load(Lcom/google/android/youtube/core/model/Stream;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/youtube/core/player/YouTubePlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->prepared:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/google/android/youtube/core/player/YouTubePlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->prepared:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/google/android/youtube/core/player/YouTubePlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->retryingPrepare:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/google/android/youtube/core/player/YouTubePlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->retryingPrepare:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/google/android/youtube/core/player/YouTubePlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->retryingPlay:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/google/android/youtube/core/player/YouTubePlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->retryingPlay:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/google/android/youtube/core/player/YouTubePlayer;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->notifyListeners(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/youtube/core/player/YouTubePlayer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->setBuffering(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/youtube/core/player/YouTubePlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->videoSizeKnown:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/google/android/youtube/core/player/YouTubePlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->videoSizeKnown:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/google/android/youtube/core/player/YouTubePlayer;)Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->progressNotifier:Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/google/android/youtube/core/player/YouTubePlayer;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/youtube/core/player/YouTubePlayer;->notifyProgress(III)V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/android/youtube/core/player/YouTubePlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->playing:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/google/android/youtube/core/player/YouTubePlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->playing:Z

    return p1
.end method

.method static synthetic access$2400()Ljava/util/Set;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/android/youtube/core/player/YouTubePlayer;->FATAL_ERROR_CODES:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/google/android/youtube/core/player/YouTubePlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->retries:I

    return v0
.end method

.method static synthetic access$2502(Lcom/google/android/youtube/core/player/YouTubePlayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->retries:I

    return p1
.end method

.method static synthetic access$2508(Lcom/google/android/youtube/core/player/YouTubePlayer;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->retries:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->retries:I

    return v0
.end method

.method static synthetic access$2600(Lcom/google/android/youtube/core/player/YouTubePlayer;)Lcom/google/android/youtube/core/model/Stream;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->source:Lcom/google/android/youtube/core/model/Stream;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/google/android/youtube/core/player/YouTubePlayer;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->notifyError(II)V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/android/youtube/core/player/YouTubePlayer;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->mediaPlayerRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/youtube/core/player/YouTubePlayer;Landroid/media/MediaPlayer;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->blockingPrepare(Landroid/media/MediaPlayer;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/youtube/core/player/YouTubePlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->blockingPlayVideo()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/youtube/core/player/YouTubePlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->blockingPauseVideo()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/youtube/core/player/YouTubePlayer;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->blockingSeekTo(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/youtube/core/player/YouTubePlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->blockingStopVideo()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/youtube/core/player/YouTubePlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->videoWidth:I

    return v0
.end method

.method static synthetic access$802(Lcom/google/android/youtube/core/player/YouTubePlayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->videoWidth:I

    return p1
.end method

.method static synthetic access$900(Lcom/google/android/youtube/core/player/YouTubePlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->videoHeight:I

    return v0
.end method

.method static synthetic access$902(Lcom/google/android/youtube/core/player/YouTubePlayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->videoHeight:I

    return p1
.end method

.method private blockingPauseVideo()V
    .locals 3

    .prologue
    .line 346
    iget-object v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->mediaPlayerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    .line 347
    .local v1, mediaPlayer:Landroid/media/MediaPlayer;
    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->readyToPlay()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 348
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 350
    :try_start_0
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 351
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->playing:Z

    .line 352
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->notifyListeners(I)V

    .line 353
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->setBuffering(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 354
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 356
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "Error calling mediaPlayer"

    invoke-static {v2, v0}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private blockingPlayVideo()V
    .locals 4

    .prologue
    .line 318
    iget-object v3, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->mediaPlayerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    .line 319
    .local v1, mediaPlayer:Landroid/media/MediaPlayer;
    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->readyToPlay()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 320
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 322
    :try_start_0
    iget-object v3, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->progressNotifier:Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;

    invoke-static {v3}, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->access$200(Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 323
    .local v2, position:I
    if-eqz v2, :cond_0

    .line 324
    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 326
    :cond_0
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 327
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->playing:Z

    .line 328
    iget-boolean v3, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->retryingPlay:Z

    if-nez v3, :cond_1

    .line 329
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/google/android/youtube/core/player/YouTubePlayer;->notifyListeners(I)V

    .line 331
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->retryingPlay:Z

    .line 332
    iget-object v3, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->progressNotifier:Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;

    invoke-virtual {v3}, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->startNotifying()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    .end local v2           #position:I
    :cond_2
    :goto_0
    return-void

    .line 333
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 335
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v3, "Error calling mediaPlayer"

    invoke-static {v3, v0}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private blockingPrepare(Landroid/media/MediaPlayer;Landroid/net/Uri;)V
    .locals 3
    .parameter "mediaPlayer"
    .parameter "source"

    .prologue
    .line 285
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->mediaPlayerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 286
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 288
    :try_start_0
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 289
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 290
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 291
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->setBuffering(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 303
    :goto_0
    return-void

    .line 292
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 293
    .local v0, e:Ljava/io/IOException;
    const-string v1, "Media Player error preparing video"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 294
    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->notifyError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 295
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 297
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "Error calling mediaPlayer"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 300
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Media Player null pointer preparing video "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    .line 301
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    invoke-direct {p0, v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->notifyError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private blockingSeekTo(I)V
    .locals 3
    .parameter "millis"

    .prologue
    .line 368
    iget-object v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->mediaPlayerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    .line 369
    .local v1, mediaPlayer:Landroid/media/MediaPlayer;
    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->readyToPlay()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 371
    const/16 v2, 0xa

    :try_start_0
    invoke-direct {p0, v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->notifyListeners(I)V

    .line 372
    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 373
    iget-object v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->progressNotifier:Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->access$200(Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 374
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 376
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "Error calling mediaPlayer"

    invoke-static {v2, v0}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private blockingStopVideo()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 386
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 387
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->prepared:Z

    .line 388
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->playing:Z

    .line 389
    invoke-direct {p0, v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->setBuffering(Z)V

    .line 390
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->mediaPlayerRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    .line 391
    .local v0, mediaPlayer:Landroid/media/MediaPlayer;
    if-eqz v0, :cond_1

    .line 392
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->progressNotifier:Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->stopNotifying()V

    .line 393
    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->retryingPrepare:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->retryingPlay:Z

    if-nez v1, :cond_0

    .line 394
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->notifyListeners(I)V

    .line 396
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 398
    :cond_1
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, -0x2

    .line 208
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->setKeepScreenOn(Z)V

    .line 210
    new-instance v1, Lcom/google/android/youtube/core/player/YouTubePlayer$1;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/core/player/YouTubePlayer$1;-><init>(Lcom/google/android/youtube/core/player/YouTubePlayer;)V

    iput-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->mediaPlayerFactory:Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerFactory;

    .line 216
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 218
    .local v0, surfaceParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 219
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->surfaceView:Lcom/google/android/youtube/core/player/YouTubePlayer$InternalSurfaceView;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->internalListener:Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 222
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->surfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 224
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->mediaPlayerThread:Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;->start()V

    .line 225
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->progressNotifier:Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->start()V

    .line 226
    return-void
.end method

.method private load(Lcom/google/android/youtube/core/model/Stream;)V
    .locals 3
    .parameter "stream"

    .prologue
    .line 257
    invoke-static {}, Lcom/google/android/youtube/core/L;->t()V

    .line 258
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->stopVideo()V

    .line 259
    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->surfaceCreated:Z

    if-nez v1, :cond_0

    .line 260
    iput-object p1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->pendingStream:Lcom/google/android/youtube/core/model/Stream;

    .line 276
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->mediaPlayerFactory:Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerFactory;

    invoke-interface {v1, p1}, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerFactory;->newMediaPlayer(Lcom/google/android/youtube/core/model/Stream;)Landroid/media/MediaPlayer;

    move-result-object v0

    .line 265
    .local v0, mediaPlayer:Landroid/media/MediaPlayer;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 267
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->internalListener:Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 268
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->internalListener:Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 269
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->internalListener:Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 270
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->internalListener:Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 271
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->internalListener:Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 272
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->internalListener:Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 273
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->internalListener:Lcom/google/android/youtube/core/player/YouTubePlayer$InternalListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 275
    iget-object v1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->mediaPlayerThread:Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;->prepare(Landroid/media/MediaPlayer;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private notifyError(II)V
    .locals 3
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 761
    iget-object v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 762
    .local v0, handler:Landroid/os/Handler;
    const/16 v2, 0x9

    invoke-static {v0, v2, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 764
    .end local v0           #handler:Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method private notifyError(Ljava/lang/Exception;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 755
    iget-object v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 756
    .local v0, handler:Landroid/os/Handler;
    const/16 v2, 0x9

    invoke-static {v0, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 758
    .end local v0           #handler:Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method private notifyListeners(I)V
    .locals 3
    .parameter "what"

    .prologue
    .line 749
    iget-object v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 750
    .local v0, handler:Landroid/os/Handler;
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 752
    .end local v0           #handler:Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method private notifyProgress(III)V
    .locals 4
    .parameter "currentTime"
    .parameter "bufferedPercent"
    .parameter "totalTime"

    .prologue
    .line 767
    iget-object v2, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 768
    .local v0, handler:Landroid/os/Handler;
    const/4 v2, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, p1, p2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 771
    .end local v0           #handler:Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method private readyToPlay()Z
    .locals 1

    .prologue
    .line 401
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->prepared:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->videoSizeKnown:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setBuffering(Z)V
    .locals 1
    .parameter "on"

    .prologue
    .line 405
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->buffering:Z

    if-eq v0, p1, :cond_0

    .line 406
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->buffering:Z

    .line 407
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->buffering:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->notifyListeners(I)V

    .line 409
    :cond_0
    return-void

    .line 407
    :cond_1
    const/4 v0, 0x7

    goto :goto_0
.end method


# virtual methods
.method public addListener(Landroid/os/Handler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 735
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->progressNotifier:Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->access$200(Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getStream()Lcom/google/android/youtube/core/model/Stream;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->source:Lcom/google/android/youtube/core/model/Stream;

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->mediaPlayerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->playing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadVideo(Lcom/google/android/youtube/core/model/Stream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->source:Lcom/google/android/youtube/core/model/Stream;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/model/Stream;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->progressNotifier:Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->access$200(Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->loadVideo(Lcom/google/android/youtube/core/model/Stream;I)V

    .line 254
    return-void

    .line 253
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadVideo(Lcom/google/android/youtube/core/model/Stream;I)V
    .locals 1
    .parameter "stream"
    .parameter "position"

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->videoSizeKnown:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->source:Lcom/google/android/youtube/core/model/Stream;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/model/Stream;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->videoSizeKnown:Z

    .line 241
    iput-object p1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->source:Lcom/google/android/youtube/core/model/Stream;

    .line 242
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->progressNotifier:Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->access$200(Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 243
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->load(Lcom/google/android/youtube/core/model/Stream;)V

    .line 244
    return-void

    .line 240
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v7, 0x4000

    .line 775
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 776
    .local v3, heightMode:I
    if-ne v3, v7, :cond_0

    .line 777
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 785
    :goto_0
    return-void

    .line 779
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 780
    .local v4, width:I
    int-to-float v5, v4

    const v6, 0x3fe374bc

    div-float/2addr v5, v6

    float-to-int v2, v5

    .line 781
    .local v2, height:I
    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 782
    .local v1, encWidth:I
    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 783
    .local v0, encHeight:I
    invoke-super {p0, v1, v0}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method public pauseVideo()V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->mediaPlayerThread:Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;->pauseVideo()V

    .line 343
    return-void
.end method

.method public playVideo()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->mediaPlayerThread:Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;->playVideo()V

    .line 315
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->progressNotifier:Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer$ProgressNotifier;->quit()V

    .line 413
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->mediaPlayerThread:Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;->quit()V

    .line 414
    return-void
.end method

.method public removeListener(Landroid/os/Handler;)Z
    .locals 1
    .parameter "handler"

    .prologue
    .line 745
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public seekTo(I)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->mediaPlayerThread:Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;->seekTo(I)V

    .line 365
    return-void
.end method

.method public setMediaPlayerFactory(Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerFactory;)V
    .locals 1
    .parameter "mediaPlayerFactory"

    .prologue
    .line 204
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerFactory;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->mediaPlayerFactory:Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerFactory;

    .line 205
    return-void
.end method

.method public stopVideo()V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer;->mediaPlayerThread:Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerThread;->stopVideo()V

    .line 383
    return-void
.end method
