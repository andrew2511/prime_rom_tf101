.class Lcom/google/android/youtube/app/DefaultRequesters$1;
.super Ljava/lang/Object;
.source "DefaultRequesters.java"

# interfaces
.implements Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/app/DefaultRequesters;->init(Lcom/google/android/youtube/core/async/DeviceAuthorizer;Lcom/google/android/youtube/core/async/UserAuthorizer;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/app/DefaultRequesters;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/DefaultRequesters;)V
    .locals 0
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/google/android/youtube/app/DefaultRequesters$1;->this$0:Lcom/google/android/youtube/app/DefaultRequesters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newMediaPlayer(Lcom/google/android/youtube/core/model/Stream;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "stream"

    .prologue
    .line 333
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    return-object v0
.end method
