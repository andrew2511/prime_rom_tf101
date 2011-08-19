.class Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer$1$1;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer$1;


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer$1;)V
    .locals 0
    .parameter

    .prologue
    .line 2208
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer$1$1;->this$1:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 1

    .prologue
    .line 2211
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer$1$1;->this$1:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer$1;

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer$1;->this$0:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->access$4000(Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2212
    const/4 v0, 0x1

    return v0
.end method
