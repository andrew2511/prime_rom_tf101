.class Lcom/google/android/music/MusicPlaybackService$11$1;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MusicPlaybackService$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/MusicPlaybackService$11;


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicPlaybackService$11;)V
    .locals 0
    .parameter

    .prologue
    .line 1173
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$11$1;->this$1:Lcom/google/android/music/MusicPlaybackService$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1176
    :try_start_0
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$11$1;->this$1:Lcom/google/android/music/MusicPlaybackService$11;

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$11;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const-string v1, "com.android.music.queuechanged"

    invoke-static {v0, v1}, Lcom/google/android/music/MusicPlaybackService;->access$100(Lcom/google/android/music/MusicPlaybackService;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1178
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$11$1;->this$1:Lcom/google/android/music/MusicPlaybackService$11;

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$11;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1800(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1180
    return-void

    .line 1178
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$11$1;->this$1:Lcom/google/android/music/MusicPlaybackService$11;

    iget-object v1, v1, Lcom/google/android/music/MusicPlaybackService$11;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService;->access$1800(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method
