.class Lcom/google/android/music/MusicPlaybackService$13;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Lcom/google/android/music/MusicPlaybackService$AsyncCommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MusicPlaybackService;->open(JZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MusicPlaybackService;

.field final synthetic val$musicId:J

.field final synthetic val$playOnSuccess:Z


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicPlaybackService;JZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1390
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$13;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iput-wide p2, p0, Lcom/google/android/music/MusicPlaybackService$13;->val$musicId:J

    iput-boolean p4, p0, Lcom/google/android/music/MusicPlaybackService$13;->val$playOnSuccess:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Z)V
    .locals 4
    .parameter "skipToNext"

    .prologue
    .line 1393
    const-string v0, "MediaPlaybackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open MusicId ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/MusicPlaybackService$13;->val$musicId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") for playback"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$13;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const-string v1, "com.android.music.playbackfailed"

    invoke-static {v0, v1}, Lcom/google/android/music/MusicPlaybackService;->access$100(Lcom/google/android/music/MusicPlaybackService;Ljava/lang/String;)V

    .line 1395
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$13;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$2808(Lcom/google/android/music/MusicPlaybackService;)I

    .line 1396
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$13;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$2800(Lcom/google/android/music/MusicPlaybackService;)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 1397
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$13;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$3500(Lcom/google/android/music/MusicPlaybackService;)V

    .line 1399
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$13;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/music/MusicPlaybackService;->access$2802(Lcom/google/android/music/MusicPlaybackService;I)I

    .line 1403
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$13;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1100(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1404
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$13;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const-string v1, "com.android.music.asyncopencomplete"

    invoke-static {v0, v1}, Lcom/google/android/music/MusicPlaybackService;->access$100(Lcom/google/android/music/MusicPlaybackService;Ljava/lang/String;)V

    .line 1406
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/music/MusicPlaybackService$13;->val$playOnSuccess:Z

    if-eqz v0, :cond_1

    .line 1407
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$13;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->play()V

    .line 1409
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$13;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$3600(Lcom/google/android/music/MusicPlaybackService;)V

    .line 1410
    return-void
.end method
