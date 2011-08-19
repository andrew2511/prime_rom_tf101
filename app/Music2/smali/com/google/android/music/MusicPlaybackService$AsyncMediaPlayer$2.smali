.class Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer$2;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 2680
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer$2;->this$0:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 2682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncMediaPlayer OnCompletion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 2683
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer$2;->this$0:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->access$4100(Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;)Lcom/google/android/music/MusicPlaybackService$StopWatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$StopWatch;->pause()V

    .line 2684
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer$2;->this$0:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->access$4200(Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;)Lcom/google/android/music/MusicPlaybackService$ServiceHooks;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/music/MusicPlaybackService$ServiceHooks;->reportTrackEnded()V

    .line 2685
    return-void
.end method
