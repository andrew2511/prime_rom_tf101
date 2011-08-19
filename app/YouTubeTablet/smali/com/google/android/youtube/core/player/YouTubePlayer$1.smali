.class Lcom/google/android/youtube/core/player/YouTubePlayer$1;
.super Ljava/lang/Object;
.source "YouTubePlayer.java"

# interfaces
.implements Lcom/google/android/youtube/core/player/YouTubePlayer$MediaPlayerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/player/YouTubePlayer;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/YouTubePlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$1;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newMediaPlayer(Lcom/google/android/youtube/core/model/Stream;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "stream"

    .prologue
    .line 212
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    return-object v0
.end method
