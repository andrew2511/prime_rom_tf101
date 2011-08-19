.class Lcom/google/android/music/MusicPlaybackService$11;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MusicPlaybackService;->openAndPlay(Lcom/google/android/music/medialist/SongList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MusicPlaybackService;

.field final synthetic val$medialist:Lcom/google/android/music/medialist/SongList;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicPlaybackService;Lcom/google/android/music/medialist/SongList;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1150
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$11;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iput-object p2, p0, Lcom/google/android/music/MusicPlaybackService$11;->val$medialist:Lcom/google/android/music/medialist/SongList;

    iput p3, p0, Lcom/google/android/music/MusicPlaybackService$11;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$11;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$11;->val$medialist:Lcom/google/android/music/medialist/SongList;

    invoke-static {v0, v1}, Lcom/google/android/music/MusicPlaybackService;->access$2702(Lcom/google/android/music/MusicPlaybackService;Lcom/google/android/music/medialist/SongList;)Lcom/google/android/music/medialist/SongList;

    .line 1157
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$11;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$2000(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$11;->val$medialist:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v0, v1}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->setMediaList(Lcom/google/android/music/medialist/SongList;)V

    .line 1158
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$11;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iget v1, p0, Lcom/google/android/music/MusicPlaybackService$11;->val$position:I

    invoke-static {v0, v1}, Lcom/google/android/music/MusicPlaybackService;->access$702(Lcom/google/android/music/MusicPlaybackService;I)I

    .line 1159
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$11;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/music/MusicPlaybackService;->access$2802(Lcom/google/android/music/MusicPlaybackService;I)I

    .line 1160
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$11;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/music/MusicPlaybackService;->access$2902(Lcom/google/android/music/MusicPlaybackService;J)J

    .line 1161
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$11;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$11;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService;->access$2000(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$11;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$700(Lcom/google/android/music/MusicPlaybackService;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->get(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/music/MusicPlaybackService;->access$502(Lcom/google/android/music/MusicPlaybackService;J)J

    .line 1163
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$11;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$3000(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/Vector;

    move-result-object v0

    monitor-enter v0

    .line 1164
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$11;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService;->access$3100(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 1165
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$11;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService;->access$3000(Lcom/google/android/music/MusicPlaybackService;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 1166
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1168
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$11;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$3200(Lcom/google/android/music/MusicPlaybackService;)V

    .line 1169
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$11;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/music/MusicPlaybackService;->access$1400(Lcom/google/android/music/MusicPlaybackService;Z)V

    .line 1173
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/MusicPlaybackService$11$1;

    invoke-direct {v1, p0}, Lcom/google/android/music/MusicPlaybackService$11$1;-><init>(Lcom/google/android/music/MusicPlaybackService$11;)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 1182
    return-void

    .line 1166
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
