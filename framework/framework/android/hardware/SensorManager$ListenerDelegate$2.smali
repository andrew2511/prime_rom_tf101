.class Landroid/hardware/SensorManager$ListenerDelegate$2;
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
    .line 610
    iput-object p1, p0, Landroid/hardware/SensorManager$ListenerDelegate$2;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    iput-object p3, p0, Landroid/hardware/SensorManager$ListenerDelegate$2;->val$this$0:Landroid/hardware/SensorManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 613
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/SensorEvent;

    .line 614
    .local v2, t:Landroid/hardware/SensorEvent;
    iget-object v3, v2, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getHandle()I

    move-result v1

    .line 615
    .local v1, handle:I
    iget-object v3, p0, Landroid/hardware/SensorManager$ListenerDelegate$2;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    iget-object v3, v3, Landroid/hardware/SensorManager$ListenerDelegate;->mSensorAccuracies:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 617
    .local v0, accuracy:I
    iget-object v3, v2, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_12c

    .line 656
    iget-object v3, p0, Landroid/hardware/SensorManager$ListenerDelegate$2;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    iget-object v3, v3, Landroid/hardware/SensorManager$ListenerDelegate;->mFirstEvent:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 657
    iget-object v3, p0, Landroid/hardware/SensorManager$ListenerDelegate$2;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    iget-object v3, v3, Landroid/hardware/SensorManager$ListenerDelegate;->mFirstEvent:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 658
    iget-object v3, p0, Landroid/hardware/SensorManager$ListenerDelegate$2;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    #getter for: Landroid/hardware/SensorManager$ListenerDelegate;->mSensorEventListener:Landroid/hardware/SensorEventListener;
    invoke-static {v3}, Landroid/hardware/SensorManager$ListenerDelegate;->access$900(Landroid/hardware/SensorManager$ListenerDelegate;)Landroid/hardware/SensorEventListener;

    move-result-object v3

    iget-object v4, v2, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-interface {v3, v4, v7}, Landroid/hardware/SensorEventListener;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    .line 664
    :cond_3a
    :goto_3a
    iget-object v3, p0, Landroid/hardware/SensorManager$ListenerDelegate$2;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    #getter for: Landroid/hardware/SensorManager$ListenerDelegate;->mSensorEventListener:Landroid/hardware/SensorEventListener;
    invoke-static {v3}, Landroid/hardware/SensorManager$ListenerDelegate;->access$900(Landroid/hardware/SensorManager$ListenerDelegate;)Landroid/hardware/SensorEventListener;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/hardware/SensorEventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    .line 665
    invoke-static {}, Landroid/hardware/SensorManager;->access$1000()Landroid/hardware/SensorManager$SensorEventPool;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/hardware/SensorManager$SensorEventPool;->returnToPool(Landroid/hardware/SensorEvent;)V

    .line 666
    return-void

    .line 620
    :pswitch_4b
    iget v3, v2, Landroid/hardware/SensorEvent;->accuracy:I

    if-eq v3, v7, :cond_d3

    .line 621
    iget-object v3, p0, Landroid/hardware/SensorManager$ListenerDelegate$2;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    iget-object v3, v3, Landroid/hardware/SensorManager$ListenerDelegate;->this$0:Landroid/hardware/SensorManager;

    invoke-static {v3}, Landroid/hardware/SensorManager;->access$308(Landroid/hardware/SensorManager;)I

    .line 622
    iget-object v3, p0, Landroid/hardware/SensorManager$ListenerDelegate$2;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    iget-object v3, v3, Landroid/hardware/SensorManager$ListenerDelegate;->this$0:Landroid/hardware/SensorManager;

    #setter for: Landroid/hardware/SensorManager;->accuracyHighTimes:I
    invoke-static {v3, v5}, Landroid/hardware/SensorManager;->access$702(Landroid/hardware/SensorManager;I)I

    .line 623
    iget-object v3, p0, Landroid/hardware/SensorManager$ListenerDelegate$2;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    iget-object v3, v3, Landroid/hardware/SensorManager$ListenerDelegate;->this$0:Landroid/hardware/SensorManager;

    #getter for: Landroid/hardware/SensorManager;->firstTimeShowCompassCalibrationDialog:Z
    invoke-static {v3}, Landroid/hardware/SensorManager;->access$100(Landroid/hardware/SensorManager;)Z

    move-result v3

    if-eqz v3, :cond_b4

    iget-object v3, p0, Landroid/hardware/SensorManager$ListenerDelegate$2;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    iget-object v3, v3, Landroid/hardware/SensorManager$ListenerDelegate;->this$0:Landroid/hardware/SensorManager;

    #getter for: Landroid/hardware/SensorManager;->accuracyErrorTimes:I
    invoke-static {v3}, Landroid/hardware/SensorManager;->access$300(Landroid/hardware/SensorManager;)I

    move-result v3

    iget-object v4, p0, Landroid/hardware/SensorManager$ListenerDelegate$2;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    iget-object v4, v4, Landroid/hardware/SensorManager$ListenerDelegate;->this$0:Landroid/hardware/SensorManager;

    #getter for: Landroid/hardware/SensorManager;->minimumAccuracyErrorTimes:I
    invoke-static {v4}, Landroid/hardware/SensorManager;->access$400(Landroid/hardware/SensorManager;)I

    move-result v4

    if-lt v3, v4, :cond_b4

    .line 624
    iget-object v3, p0, Landroid/hardware/SensorManager$ListenerDelegate$2;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    iget-object v3, v3, Landroid/hardware/SensorManager$ListenerDelegate;->this$0:Landroid/hardware/SensorManager;

    invoke-virtual {v3}, Landroid/hardware/SensorManager;->EnableCompassCalibrationDialog()V

    .line 625
    iget-object v3, p0, Landroid/hardware/SensorManager$ListenerDelegate$2;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    iget-object v3, v3, Landroid/hardware/SensorManager$ListenerDelegate;->this$0:Landroid/hardware/SensorManager;

    #setter for: Landroid/hardware/SensorManager;->hasCompassCalibrationDialog:Z
    invoke-static {v3, v6}, Landroid/hardware/SensorManager;->access$202(Landroid/hardware/SensorManager;Z)Z

    .line 626
    iget-object v3, p0, Landroid/hardware/SensorManager$ListenerDelegate$2;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    iget-object v3, v3, Landroid/hardware/SensorManager$ListenerDelegate;->this$0:Landroid/hardware/SensorManager;

    #setter for: Landroid/hardware/SensorManager;->accuracyErrorTimes:I
    invoke-static {v3, v5}, Landroid/hardware/SensorManager;->access$302(Landroid/hardware/SensorManager;I)I

    .line 627
    iget-object v3, p0, Landroid/hardware/SensorManager$ListenerDelegate$2;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    iget-object v3, v3, Landroid/hardware/SensorManager$ListenerDelegate;->this$0:Landroid/hardware/SensorManager;

    #setter for: Landroid/hardware/SensorManager;->firstTimeShowCompassCalibrationDialog:Z
    invoke-static {v3, v5}, Landroid/hardware/SensorManager;->access$102(Landroid/hardware/SensorManager;Z)Z

    .line 641
    :cond_95
    :goto_95
    iget v3, v2, Landroid/hardware/SensorEvent;->accuracy:I

    if-ltz v3, :cond_3a

    iget v3, v2, Landroid/hardware/SensorEvent;->accuracy:I

    if-eq v0, v3, :cond_3a

    .line 642
    iget-object v3, p0, Landroid/hardware/SensorManager$ListenerDelegate$2;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    iget-object v3, v3, Landroid/hardware/SensorManager$ListenerDelegate;->mSensorAccuracies:Landroid/util/SparseIntArray;

    iget v4, v2, Landroid/hardware/SensorEvent;->accuracy:I

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 643
    iget-object v3, p0, Landroid/hardware/SensorManager$ListenerDelegate$2;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    #getter for: Landroid/hardware/SensorManager$ListenerDelegate;->mSensorEventListener:Landroid/hardware/SensorEventListener;
    invoke-static {v3}, Landroid/hardware/SensorManager$ListenerDelegate;->access$900(Landroid/hardware/SensorManager$ListenerDelegate;)Landroid/hardware/SensorEventListener;

    move-result-object v3

    iget-object v4, v2, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget v5, v2, Landroid/hardware/SensorEvent;->accuracy:I

    invoke-interface {v3, v4, v5}, Landroid/hardware/SensorEventListener;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    goto :goto_3a

    .line 628
    :cond_b4
    iget-object v3, p0, Landroid/hardware/SensorManager$ListenerDelegate$2;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    iget-object v3, v3, Landroid/hardware/SensorManager$ListenerDelegate;->this$0:Landroid/hardware/SensorManager;

    #getter for: Landroid/hardware/SensorManager;->firstTimeShowCompassCalibrationDialog:Z
    invoke-static {v3}, Landroid/hardware/SensorManager;->access$100(Landroid/hardware/SensorManager;)Z

    move-result v3

    if-nez v3, :cond_95

    .line 629
    iget-object v3, p0, Landroid/hardware/SensorManager$ListenerDelegate$2;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    #getter for: Landroid/hardware/SensorManager$ListenerDelegate;->mCompassCalibrationDialogHandler:Landroid/os/Handler;
    invoke-static {v3}, Landroid/hardware/SensorManager$ListenerDelegate;->access$500(Landroid/hardware/SensorManager$ListenerDelegate;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xc8

    iget-object v5, p0, Landroid/hardware/SensorManager$ListenerDelegate$2;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    iget-object v5, v5, Landroid/hardware/SensorManager$ListenerDelegate;->this$0:Landroid/hardware/SensorManager;

    #getter for: Landroid/hardware/SensorManager;->compassMessageDelayTime:I
    invoke-static {v5}, Landroid/hardware/SensorManager;->access$600(Landroid/hardware/SensorManager;)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_95

    .line 632
    :cond_d3
    iget-object v3, p0, Landroid/hardware/SensorManager$ListenerDelegate$2;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    iget-object v3, v3, Landroid/hardware/SensorManager$ListenerDelegate;->this$0:Landroid/hardware/SensorManager;

    #getter for: Landroid/hardware/SensorManager;->hasCompassCalibrationDialog:Z
    invoke-static {v3}, Landroid/hardware/SensorManager;->access$200(Landroid/hardware/SensorManager;)Z

    move-result v3

    if-eqz v3, :cond_104

    .line 633
    iget-object v3, p0, Landroid/hardware/SensorManager$ListenerDelegate$2;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    iget-object v3, v3, Landroid/hardware/SensorManager$ListenerDelegate;->this$0:Landroid/hardware/SensorManager;

    invoke-static {v3}, Landroid/hardware/SensorManager;->access$708(Landroid/hardware/SensorManager;)I

    .line 634
    iget-object v3, p0, Landroid/hardware/SensorManager$ListenerDelegate$2;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    iget-object v3, v3, Landroid/hardware/SensorManager$ListenerDelegate;->this$0:Landroid/hardware/SensorManager;

    #getter for: Landroid/hardware/SensorManager;->accuracyHighTimes:I
    invoke-static {v3}, Landroid/hardware/SensorManager;->access$700(Landroid/hardware/SensorManager;)I

    move-result v3

    iget-object v4, p0, Landroid/hardware/SensorManager$ListenerDelegate$2;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    iget-object v4, v4, Landroid/hardware/SensorManager$ListenerDelegate;->this$0:Landroid/hardware/SensorManager;

    #getter for: Landroid/hardware/SensorManager;->minimumAccuracyHighTimes:I
    invoke-static {v4}, Landroid/hardware/SensorManager;->access$800(Landroid/hardware/SensorManager;)I

    move-result v4

    if-le v3, v4, :cond_104

    .line 635
    iget-object v3, p0, Landroid/hardware/SensorManager$ListenerDelegate$2;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    iget-object v3, v3, Landroid/hardware/SensorManager$ListenerDelegate;->this$0:Landroid/hardware/SensorManager;

    invoke-virtual {v3}, Landroid/hardware/SensorManager;->DisableCompassCalibrationDialog()V

    .line 636
    iget-object v3, p0, Landroid/hardware/SensorManager$ListenerDelegate$2;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    iget-object v3, v3, Landroid/hardware/SensorManager$ListenerDelegate;->this$0:Landroid/hardware/SensorManager;

    #setter for: Landroid/hardware/SensorManager;->hasCompassCalibrationDialog:Z
    invoke-static {v3, v5}, Landroid/hardware/SensorManager;->access$202(Landroid/hardware/SensorManager;Z)Z

    .line 639
    :cond_104
    iget-object v3, p0, Landroid/hardware/SensorManager$ListenerDelegate$2;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    iget-object v3, v3, Landroid/hardware/SensorManager$ListenerDelegate;->this$0:Landroid/hardware/SensorManager;

    #setter for: Landroid/hardware/SensorManager;->accuracyErrorTimes:I
    invoke-static {v3, v5}, Landroid/hardware/SensorManager;->access$302(Landroid/hardware/SensorManager;I)I

    goto :goto_95

    .line 649
    :pswitch_10c
    iget v3, v2, Landroid/hardware/SensorEvent;->accuracy:I

    if-ltz v3, :cond_3a

    iget v3, v2, Landroid/hardware/SensorEvent;->accuracy:I

    if-eq v0, v3, :cond_3a

    .line 650
    iget-object v3, p0, Landroid/hardware/SensorManager$ListenerDelegate$2;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    iget-object v3, v3, Landroid/hardware/SensorManager$ListenerDelegate;->mSensorAccuracies:Landroid/util/SparseIntArray;

    iget v4, v2, Landroid/hardware/SensorEvent;->accuracy:I

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 651
    iget-object v3, p0, Landroid/hardware/SensorManager$ListenerDelegate$2;->this$1:Landroid/hardware/SensorManager$ListenerDelegate;

    #getter for: Landroid/hardware/SensorManager$ListenerDelegate;->mSensorEventListener:Landroid/hardware/SensorEventListener;
    invoke-static {v3}, Landroid/hardware/SensorManager$ListenerDelegate;->access$900(Landroid/hardware/SensorManager$ListenerDelegate;)Landroid/hardware/SensorEventListener;

    move-result-object v3

    iget-object v4, v2, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget v5, v2, Landroid/hardware/SensorEvent;->accuracy:I

    invoke-interface {v3, v4, v5}, Landroid/hardware/SensorEventListener;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    goto/16 :goto_3a

    .line 617
    :pswitch_data_12c
    .packed-switch 0x2
        :pswitch_4b
        :pswitch_10c
    .end packed-switch
.end method
