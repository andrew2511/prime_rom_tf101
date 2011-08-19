.class Landroid/hardware/SensorManager$ListenerDelegate$1;
.super Landroid/os/Handler;
.source "SensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/SensorManager$ListenerDelegate;-><init>(Landroid/hardware/SensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/SensorManager$ListenerDelegate;

.field final synthetic val$this$0:Landroid/hardware/SensorManager;


# direct methods
.method constructor <init>(Landroid/hardware/SensorManager$ListenerDelegate;Landroid/os/Looper;Landroid/hardware/SensorManager;)V
    .registers 4
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 592
    iput-object p1, p0, Landroid/hardware/SensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    iput-object p3, p0, Landroid/hardware/SensorManager$ListenerDelegate$1;->val$this$0:Landroid/hardware/SensorManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const/16 v3, 0xc8

    const/4 v2, 0x0

    .line 595
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_5c

    .line 607
    :cond_8
    :goto_8
    return-void

    .line 597
    :pswitch_9
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    iget-object v0, v0, Landroid/hardware/SensorManager$ListenerDelegate;->this$0:Landroid/hardware/SensorManager;

    #getter for: Landroid/hardware/SensorManager;->accuracyErrorTimes:I
    invoke-static {v0}, Landroid/hardware/SensorManager;->access$300(Landroid/hardware/SensorManager;)I

    move-result v0

    iget-object v1, p0, Landroid/hardware/SensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    iget-object v1, v1, Landroid/hardware/SensorManager$ListenerDelegate;->this$0:Landroid/hardware/SensorManager;

    #getter for: Landroid/hardware/SensorManager;->minimumAccuracyErrorTimes:I
    invoke-static {v1}, Landroid/hardware/SensorManager;->access$400(Landroid/hardware/SensorManager;)I

    move-result v1

    if-lt v0, v1, :cond_8

    sget-object v0, Landroid/hardware/SensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 598
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    iget-object v0, v0, Landroid/hardware/SensorManager$ListenerDelegate;->this$0:Landroid/hardware/SensorManager;

    invoke-virtual {v0}, Landroid/hardware/SensorManager;->EnableCompassCalibrationDialog()V

    .line 599
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    iget-object v0, v0, Landroid/hardware/SensorManager$ListenerDelegate;->this$0:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    #setter for: Landroid/hardware/SensorManager;->hasCompassCalibrationDialog:Z
    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->access$202(Landroid/hardware/SensorManager;Z)Z

    .line 600
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    iget-object v0, v0, Landroid/hardware/SensorManager$ListenerDelegate;->this$0:Landroid/hardware/SensorManager;

    #setter for: Landroid/hardware/SensorManager;->accuracyErrorTimes:I
    invoke-static {v0, v2}, Landroid/hardware/SensorManager;->access$302(Landroid/hardware/SensorManager;I)I

    .line 601
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    iget-object v0, v0, Landroid/hardware/SensorManager$ListenerDelegate;->this$0:Landroid/hardware/SensorManager;

    #setter for: Landroid/hardware/SensorManager;->firstTimeShowCompassCalibrationDialog:Z
    invoke-static {v0, v2}, Landroid/hardware/SensorManager;->access$102(Landroid/hardware/SensorManager;Z)Z

    .line 602
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    #getter for: Landroid/hardware/SensorManager$ListenerDelegate;->mCompassCalibrationDialogHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/hardware/SensorManager$ListenerDelegate;->access$500(Landroid/hardware/SensorManager$ListenerDelegate;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 603
    iget-object v0, p0, Landroid/hardware/SensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    #getter for: Landroid/hardware/SensorManager$ListenerDelegate;->mCompassCalibrationDialogHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/hardware/SensorManager$ListenerDelegate;->access$500(Landroid/hardware/SensorManager$ListenerDelegate;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/SensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    iget-object v1, v1, Landroid/hardware/SensorManager$ListenerDelegate;->this$0:Landroid/hardware/SensorManager;

    #getter for: Landroid/hardware/SensorManager;->compassMessageDelayTime:I
    invoke-static {v1}, Landroid/hardware/SensorManager;->access$600(Landroid/hardware/SensorManager;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_8

    .line 595
    :pswitch_data_5c
    .packed-switch 0xc8
        :pswitch_9
    .end packed-switch
.end method
