.class Lcom/google/android/music/MusicPlaybackService$5;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MusicPlaybackService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MusicPlaybackService;


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 693
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$5;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 697
    :try_start_0
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$5;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1700(Lcom/google/android/music/MusicPlaybackService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 699
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$5;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1800(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 701
    return-void

    .line 699
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$5;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService;->access$1800(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method
