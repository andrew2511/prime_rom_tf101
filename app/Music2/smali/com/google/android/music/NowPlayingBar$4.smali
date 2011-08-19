.class Lcom/google/android/music/NowPlayingBar$4;
.super Landroid/content/BroadcastReceiver;
.source "NowPlayingBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/NowPlayingBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/NowPlayingBar;


# direct methods
.method constructor <init>(Lcom/google/android/music/NowPlayingBar;)V
    .locals 0
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/google/android/music/NowPlayingBar$4;->this$0:Lcom/google/android/music/NowPlayingBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 358
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-nez v0, :cond_0

    .line 363
    :goto_0
    return-void

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/NowPlayingBar$4;->this$0:Lcom/google/android/music/NowPlayingBar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/music/NowPlayingBar;->access$402(Lcom/google/android/music/NowPlayingBar;Z)Z

    .line 362
    iget-object v0, p0, Lcom/google/android/music/NowPlayingBar$4;->this$0:Lcom/google/android/music/NowPlayingBar;

    invoke-static {v0}, Lcom/google/android/music/NowPlayingBar;->access$500(Lcom/google/android/music/NowPlayingBar;)V

    goto :goto_0
.end method
