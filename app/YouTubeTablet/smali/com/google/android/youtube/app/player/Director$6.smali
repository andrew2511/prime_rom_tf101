.class Lcom/google/android/youtube/app/player/Director$6;
.super Landroid/os/Handler;
.source "Director.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/app/player/Director;->initCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private started:Z

.field final synthetic this$0:Lcom/google/android/youtube/app/player/Director;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/player/Director;)V
    .locals 0
    .parameter

    .prologue
    .line 851
    iput-object p1, p0, Lcom/google/android/youtube/app/player/Director$6;->this$0:Lcom/google/android/youtube/app/player/Director;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 855
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 868
    :goto_0
    :pswitch_0
    iget-boolean v0, p0, Lcom/google/android/youtube/app/player/Director$6;->started:Z

    if-nez v0, :cond_0

    .line 869
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1

    .line 902
    :goto_1
    return-void

    .line 858
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director$6;->this$0:Lcom/google/android/youtube/app/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/app/player/Director;->access$900(Lcom/google/android/youtube/app/player/Director;)Lcom/google/android/youtube/core/player/YouTubePlayer;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/youtube/core/player/YouTubePlayer;->setKeepScreenOn(Z)V

    goto :goto_0

    .line 864
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director$6;->this$0:Lcom/google/android/youtube/app/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/app/player/Director;->access$900(Lcom/google/android/youtube/app/player/Director;)Lcom/google/android/youtube/core/player/YouTubePlayer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/youtube/core/player/YouTubePlayer;->setKeepScreenOn(Z)V

    goto :goto_0

    .line 872
    :pswitch_3
    iput-boolean v4, p0, Lcom/google/android/youtube/app/player/Director$6;->started:Z

    .line 887
    :goto_2
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director$6;->this$0:Lcom/google/android/youtube/app/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/app/player/Director;->access$1000(Lcom/google/android/youtube/app/player/Director;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 888
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2

    :pswitch_4
    goto :goto_1

    .line 892
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director$6;->this$0:Lcom/google/android/youtube/app/player/Director;

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    move v1, v4

    :goto_3
    invoke-static {v0, v1}, Lcom/google/android/youtube/app/player/Director;->access$1100(Lcom/google/android/youtube/app/player/Director;Z)V

    goto :goto_1

    .line 878
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3

    :pswitch_6
    goto :goto_2

    .line 882
    :pswitch_7
    iput-boolean v3, p0, Lcom/google/android/youtube/app/player/Director$6;->started:Z

    goto :goto_2

    :cond_1
    move v1, v3

    .line 892
    goto :goto_3

    .line 896
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_4

    goto :goto_1

    .line 898
    :pswitch_8
    iget-object v0, p0, Lcom/google/android/youtube/app/player/Director$6;->this$0:Lcom/google/android/youtube/app/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/app/player/Director;->access$1200(Lcom/google/android/youtube/app/player/Director;)V

    goto :goto_1

    .line 855
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 869
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 888
    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch

    .line 878
    :pswitch_data_3
    .packed-switch 0x4
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
    .end packed-switch

    .line 896
    :pswitch_data_4
    .packed-switch 0x8
        :pswitch_8
    .end packed-switch
.end method
