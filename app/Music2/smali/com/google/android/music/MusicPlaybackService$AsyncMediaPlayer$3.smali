.class Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer$3;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 2688
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer$3;->this$0:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v3, 0x1

    .line 2690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncMediaPlayer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer$3;->this$0:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->access$4300(Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") OnError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->debugLog(Ljava/lang/Object;)V

    .line 2692
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer$3;->this$0:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    const-string v1, "com.android.music.asyncopencomplete"

    invoke-static {v0, v1}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->access$4400(Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;Ljava/lang/String;)V

    .line 2693
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer$3;->this$0:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    const-string v1, "com.android.music.playbackfailed"

    invoke-static {v0, v1}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->access$4400(Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;Ljava/lang/String;)V

    .line 2694
    packed-switch p2, :pswitch_data_0

    .line 2706
    const-string v0, "MultiPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2709
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2696
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer$3;->this$0:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->access$4500(Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;I)V

    .line 2697
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer$3;->this$0:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->access$4600(Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 2701
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer$3;->this$0:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->access$4602(Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 2702
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer$3;->this$0:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->access$4600(Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer$3;->this$0:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->access$4700(Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    move v0, v3

    .line 2704
    goto :goto_0

    .line 2694
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
