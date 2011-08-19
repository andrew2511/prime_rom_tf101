.class Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer$4;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


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
    .line 2713
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer$4;->this$0:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v1, 0x1

    .line 2716
    packed-switch p2, :pswitch_data_0

    .line 2724
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2718
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer$4;->this$0:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->access$4800(Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;)V

    move v0, v1

    .line 2719
    goto :goto_0

    .line 2721
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer$4;->this$0:Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;

    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;->access$4900(Lcom/google/android/music/MusicPlaybackService$AsyncMediaPlayer;)V

    move v0, v1

    .line 2722
    goto :goto_0

    .line 2716
    :pswitch_data_0
    .packed-switch 0x2bd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
