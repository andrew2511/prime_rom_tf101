.class Lcom/google/android/music/NowPlayingBar$3;
.super Landroid/os/Handler;
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
    .line 259
    iput-object p1, p0, Lcom/google/android/music/NowPlayingBar$3;->this$0:Lcom/google/android/music/NowPlayingBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 262
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 274
    :goto_0
    return-void

    .line 264
    :pswitch_0
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-nez v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/google/android/music/NowPlayingBar$3;->this$0:Lcom/google/android/music/NowPlayingBar;

    const-wide/16 v2, 0x3e8

    invoke-static {v1, v2, v3}, Lcom/google/android/music/NowPlayingBar;->access$200(Lcom/google/android/music/NowPlayingBar;J)V

    goto :goto_0

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/google/android/music/NowPlayingBar$3;->this$0:Lcom/google/android/music/NowPlayingBar;

    invoke-static {v1}, Lcom/google/android/music/NowPlayingBar;->access$300(Lcom/google/android/music/NowPlayingBar;)I

    move-result v0

    .line 268
    .local v0, next:I
    iget-object v1, p0, Lcom/google/android/music/NowPlayingBar$3;->this$0:Lcom/google/android/music/NowPlayingBar;

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/google/android/music/NowPlayingBar;->access$200(Lcom/google/android/music/NowPlayingBar;J)V

    goto :goto_0

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
