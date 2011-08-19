.class Lcom/google/android/music/MusicPlaybackService$MediaListWrapper$1;
.super Landroid/database/ContentObserver;
.source "MusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 495
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper$1;->this$1:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    .line 498
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper$1;->this$1:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->access$800(Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;)I

    move-result v0

    .line 499
    .local v0, refreshResult:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 501
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper$1;->this$1:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    iget-object v1, v1, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper$1;->this$1:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    iget-object v3, v3, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v3}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/google/android/music/MusicPlaybackService;->access$900(Lcom/google/android/music/MusicPlaybackService;ZZ)V

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 504
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper$1;->this$1:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    iget-object v1, v1, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper$1;->this$1:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    iget-object v2, v2, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$500(Lcom/google/android/music/MusicPlaybackService;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/music/MusicPlaybackService;->access$1000(Lcom/google/android/music/MusicPlaybackService;J)Z

    goto :goto_0
.end method
