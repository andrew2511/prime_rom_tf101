.class Lcom/android/camera/Camera$MainHandler;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 268
    invoke-direct {p0, p1}, Lcom/android/camera/Camera$MainHandler;-><init>(Lcom/android/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const-wide/16 v6, 0x0

    .line 271
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 273
    :pswitch_0
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/Camera;->access$600(Lcom/android/camera/Camera;)Z

    .line 274
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    .line 275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 276
    .local v0, now:J
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    iget-object v3, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-static {v3}, Lcom/android/camera/Camera;->access$700(Lcom/android/camera/Camera;)J

    move-result-wide v3

    sub-long v3, v0, v3

    iput-wide v3, v2, Lcom/android/camera/Camera;->mJpegCallbackFinishTime:J

    .line 277
    const-string v2, "camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mJpegCallbackFinishTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    iget-wide v4, v4, Lcom/android/camera/Camera;->mJpegCallbackFinishTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-static {v2, v6, v7}, Lcom/android/camera/Camera;->access$702(Lcom/android/camera/Camera;J)J

    goto :goto_0

    .line 285
    .end local v0           #now:J
    :pswitch_1
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 291
    :pswitch_2
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/Camera;->access$800(Lcom/android/camera/Camera;)V

    goto :goto_0

    .line 296
    :pswitch_3
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/camera/Camera;->access$900(Lcom/android/camera/Camera;I)V

    goto :goto_0

    .line 306
    :pswitch_4
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-static {v3}, Lcom/android/camera/Camera;->access$1000(Lcom/android/camera/Camera;)I

    move-result v3

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/Camera;->access$1100(Lcom/android/camera/Camera;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 308
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/Camera;->access$600(Lcom/android/camera/Camera;)Z

    .line 310
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-static {v4}, Lcom/android/camera/Camera;->access$1200(Lcom/android/camera/Camera;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 311
    iget-object v2, p0, Lcom/android/camera/Camera$MainHandler;->this$0:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/Camera;->access$1300(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x6

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 271
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
