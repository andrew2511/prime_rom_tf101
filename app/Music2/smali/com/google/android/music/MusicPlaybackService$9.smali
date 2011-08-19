.class Lcom/google/android/music/MusicPlaybackService$9;
.super Landroid/os/Handler;
.source "MusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MusicPlaybackService;
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
    .line 978
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$9;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 982
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$9;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$9;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$1500(Lcom/google/android/music/MusicPlaybackService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$9;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$2200(Lcom/google/android/music/MusicPlaybackService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$9;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iget-boolean v0, v0, Lcom/google/android/music/MusicPlaybackService;->mIsNotificationShowing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$9;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$300(Lcom/google/android/music/MusicPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 992
    :cond_0
    :goto_0
    return-void

    .line 990
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$9;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v0, v1}, Lcom/google/android/music/MusicPlaybackService;->access$2300(Lcom/google/android/music/MusicPlaybackService;Z)V

    .line 991
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$9;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$9;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService;->access$2400(Lcom/google/android/music/MusicPlaybackService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/MusicPlaybackService;->stopSelf(I)V

    goto :goto_0
.end method
