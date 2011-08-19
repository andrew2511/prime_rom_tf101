.class Lnet/yostore/aws/service/PlayerService$TeleListener;
.super Landroid/telephony/PhoneStateListener;
.source "PlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/service/PlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TeleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/service/PlayerService;


# direct methods
.method constructor <init>(Lnet/yostore/aws/service/PlayerService;)V
    .locals 0
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lnet/yostore/aws/service/PlayerService$TeleListener;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v1, 0x1

    .line 306
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$TeleListener;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$8(Lnet/yostore/aws/service/PlayerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 308
    packed-switch p1, :pswitch_data_0

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 312
    :pswitch_0
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$TeleListener;->this$0:Lnet/yostore/aws/service/PlayerService;

    iget-boolean v0, v0, Lnet/yostore/aws/service/PlayerService;->phonePlayerSW:Z

    if-eqz v0, :cond_0

    .line 314
    sget v0, Lcom/ecareme/mear/Mear;->playingStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 315
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$TeleListener;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$11(Lnet/yostore/aws/service/PlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 317
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$TeleListener;->this$0:Lnet/yostore/aws/service/PlayerService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lnet/yostore/aws/service/PlayerService;->phonePlayerSW:Z

    goto :goto_0

    .line 322
    :pswitch_1
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$TeleListener;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$11(Lnet/yostore/aws/service/PlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 323
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$TeleListener;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$11(Lnet/yostore/aws/service/PlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 325
    :cond_2
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$TeleListener;->this$0:Lnet/yostore/aws/service/PlayerService;

    iput-boolean v1, v0, Lnet/yostore/aws/service/PlayerService;->phonePlayerSW:Z

    goto :goto_0

    .line 329
    :pswitch_2
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$TeleListener;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$11(Lnet/yostore/aws/service/PlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 330
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$TeleListener;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v0}, Lnet/yostore/aws/service/PlayerService;->access$11(Lnet/yostore/aws/service/PlayerService;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 332
    :cond_3
    iget-object v0, p0, Lnet/yostore/aws/service/PlayerService$TeleListener;->this$0:Lnet/yostore/aws/service/PlayerService;

    iput-boolean v1, v0, Lnet/yostore/aws/service/PlayerService;->phonePlayerSW:Z

    goto :goto_0

    .line 308
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
