.class Lcom/google/android/music/MediaPlaybackActivity$8;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MediaPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/MediaPlaybackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1413
    iput-object p1, p0, Lcom/google/android/music/MediaPlaybackActivity$8;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "classname"
    .parameter "obj"

    .prologue
    .line 1415
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity$8;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    check-cast p2, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    .end local p2
    invoke-static {v2, p2}, Lcom/google/android/music/MediaPlaybackActivity;->access$202(Lcom/google/android/music/MediaPlaybackActivity;Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;)Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    .line 1416
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity$8;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-static {v2}, Lcom/google/android/music/MediaPlaybackActivity;->access$200(Lcom/google/android/music/MediaPlaybackActivity;)Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->hasValidPlaylist()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1417
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity$8;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-static {v2}, Lcom/google/android/music/MediaPlaybackActivity;->access$500(Lcom/google/android/music/MediaPlaybackActivity;)V

    .line 1418
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity$8;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-static {v2}, Lcom/google/android/music/MediaPlaybackActivity;->access$600(Lcom/google/android/music/MediaPlaybackActivity;)V

    .line 1419
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity$8;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-static {v2}, Lcom/google/android/music/MediaPlaybackActivity;->access$700(Lcom/google/android/music/MediaPlaybackActivity;)V

    .line 1420
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity$8;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-static {v2}, Lcom/google/android/music/MediaPlaybackActivity;->access$800(Lcom/google/android/music/MediaPlaybackActivity;)V

    .line 1421
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity$8;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-static {v2}, Lcom/google/android/music/MediaPlaybackActivity;->access$900(Lcom/google/android/music/MediaPlaybackActivity;)V

    .line 1422
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity$8;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-static {v2}, Lcom/google/android/music/MediaPlaybackActivity;->access$1000(Lcom/google/android/music/MediaPlaybackActivity;)J

    move-result-wide v0

    .line 1423
    .local v0, next:J
    iget-object v2, p0, Lcom/google/android/music/MediaPlaybackActivity$8;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-static {v2, v0, v1}, Lcom/google/android/music/MediaPlaybackActivity;->access$1100(Lcom/google/android/music/MediaPlaybackActivity;J)V

    .line 1426
    .end local v0           #next:J
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "classname"

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$8;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/music/MediaPlaybackActivity;->access$202(Lcom/google/android/music/MediaPlaybackActivity;Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;)Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    .line 1429
    return-void
.end method
