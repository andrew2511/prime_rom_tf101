.class Lcom/google/android/music/MusicPlaybackService$12;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MusicPlaybackService;->openCurrentAndPlay(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MusicPlaybackService;

.field final synthetic val$fromUserAction:Z


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicPlaybackService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1188
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iput-boolean p2, p0, Lcom/google/android/music/MusicPlaybackService$12;->val$fromUserAction:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1192
    :try_start_0
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$700(Lcom/google/android/music/MusicPlaybackService;)I

    move-result v0

    if-gez v0, :cond_1

    .line 1193
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$2000(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 1204
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1800(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1206
    :goto_0
    return-void

    .line 1196
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$3000(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/Vector;

    move-result-object v1

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1197
    :try_start_2
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$3000(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/Vector;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/music/MusicPlaybackService;->access$3300(Lcom/google/android/music/MusicPlaybackService;Ljava/util/Vector;)V

    .line 1198
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$3400(Lcom/google/android/music/MusicPlaybackService;)V

    .line 1199
    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$3000(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/Vector;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v2, v0}, Lcom/google/android/music/MusicPlaybackService;->access$702(Lcom/google/android/music/MusicPlaybackService;I)I

    .line 1200
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1202
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iget-boolean v1, p0, Lcom/google/android/music/MusicPlaybackService$12;->val$fromUserAction:Z

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/music/MusicPlaybackService;->access$900(Lcom/google/android/music/MusicPlaybackService;ZZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1204
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1800(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 1200
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1204
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$12;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService;->access$1800(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method
