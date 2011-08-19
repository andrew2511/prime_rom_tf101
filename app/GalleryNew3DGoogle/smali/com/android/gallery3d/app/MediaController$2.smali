.class Lcom/android/gallery3d/app/MediaController$2;
.super Landroid/os/Handler;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MediaController;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/MediaController;)V
    .locals 0
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/gallery3d/app/MediaController$2;->this$0:Lcom/android/gallery3d/app/MediaController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 359
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 361
    :pswitch_0
    iget-object v1, p0, Lcom/android/gallery3d/app/MediaController$2;->this$0:Lcom/android/gallery3d/app/MediaController;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/MediaController;->hide()V

    goto :goto_0

    .line 364
    :pswitch_1
    iget-object v1, p0, Lcom/android/gallery3d/app/MediaController$2;->this$0:Lcom/android/gallery3d/app/MediaController;

    invoke-static {v1}, Lcom/android/gallery3d/app/MediaController;->access$100(Lcom/android/gallery3d/app/MediaController;)I

    move-result v0

    .line 365
    .local v0, pos:I
    iget-object v1, p0, Lcom/android/gallery3d/app/MediaController$2;->this$0:Lcom/android/gallery3d/app/MediaController;

    invoke-static {v1}, Lcom/android/gallery3d/app/MediaController;->access$200(Lcom/android/gallery3d/app/MediaController;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/MediaController$2;->this$0:Lcom/android/gallery3d/app/MediaController;

    invoke-static {v1}, Lcom/android/gallery3d/app/MediaController;->access$000(Lcom/android/gallery3d/app/MediaController;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/MediaController$2;->this$0:Lcom/android/gallery3d/app/MediaController;

    invoke-static {v1}, Lcom/android/gallery3d/app/MediaController;->access$300(Lcom/android/gallery3d/app/MediaController;)Lcom/android/gallery3d/app/MediaController$MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/app/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/MediaController$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 367
    const/16 v1, 0x3e8

    rem-int/lit16 v2, v0, 0x3e8

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/gallery3d/app/MediaController$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 359
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
