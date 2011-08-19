.class Lcom/google/android/youtube/videos/player/Director$5;
.super Landroid/os/Handler;
.source "Director.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/player/Director;->initCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private started:Z

.field final synthetic this$0:Lcom/google/android/youtube/videos/player/Director;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/player/Director;)V
    .locals 0
    .parameter

    .prologue
    .line 618
    iput-object p1, p0, Lcom/google/android/youtube/videos/player/Director$5;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 622
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 646
    :cond_0
    :goto_0
    :pswitch_0
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/player/Director$5;->started:Z

    if-nez v0, :cond_1

    .line 647
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1

    .line 670
    :goto_1
    return-void

    .line 624
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$5;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/videos/player/Director;->access$900(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/player/YouTubePlayer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/core/player/YouTubePlayer;->setKeepScreenOn(Z)V

    goto :goto_0

    .line 627
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$5;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/videos/player/Director;->access$900(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/player/YouTubePlayer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/core/player/YouTubePlayer;->setKeepScreenOn(Z)V

    .line 628
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$5;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-static {v0, v3}, Lcom/google/android/youtube/videos/player/Director;->access$1002(Lcom/google/android/youtube/videos/player/Director;Z)Z

    goto :goto_0

    .line 634
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$5;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/videos/player/Director;->access$900(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/player/YouTubePlayer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/player/YouTubePlayer;->setKeepScreenOn(Z)V

    .line 635
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$5;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-static {v0, v2}, Lcom/google/android/youtube/videos/player/Director;->access$1002(Lcom/google/android/youtube/videos/player/Director;Z)Z

    goto :goto_0

    .line 638
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$5;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-static {v0, v2}, Lcom/google/android/youtube/videos/player/Director;->access$1002(Lcom/google/android/youtube/videos/player/Director;Z)Z

    goto :goto_0

    .line 641
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$5;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/videos/player/Director;->access$1000(Lcom/google/android/youtube/videos/player/Director;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$5;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/videos/player/Director;->access$1104(Lcom/google/android/youtube/videos/player/Director;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 642
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$5;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/player/Director;->onExcessiveBuffering()V

    goto :goto_0

    .line 650
    :pswitch_6
    iput-boolean v3, p0, Lcom/google/android/youtube/videos/player/Director$5;->started:Z

    .line 665
    :goto_2
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2

    goto :goto_1

    .line 667
    :pswitch_7
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$5;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/videos/player/Director;->access$1200(Lcom/google/android/youtube/videos/player/Director;)V

    goto :goto_1

    .line 656
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3

    :pswitch_8
    goto :goto_2

    .line 660
    :pswitch_9
    iput-boolean v2, p0, Lcom/google/android/youtube/videos/player/Director$5;->started:Z

    goto :goto_2

    .line 622
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 647
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
    .end packed-switch

    .line 665
    :pswitch_data_2
    .packed-switch 0x8
        :pswitch_7
    .end packed-switch

    .line 656
    :pswitch_data_3
    .packed-switch 0x4
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method
