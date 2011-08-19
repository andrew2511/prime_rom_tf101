.class Landroid/hardware/SensorManager$SensorThread;
.super Ljava/lang/Object;
.source "SensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SensorThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;
    }
.end annotation


# instance fields
.field mSensorsReady:Z

.field mThread:Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 1

    .prologue
    .line 480
    return-void
.end method

.method startLocked()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 485
    :try_start_1
    iget-object v2, p0, Landroid/hardware/SensorManager$SensorThread;->mThread:Ljava/lang/Thread;

    if-nez v2, :cond_28

    .line 486
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/hardware/SensorManager$SensorThread;->mSensorsReady:Z

    .line 487
    new-instance v0, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;

    invoke-direct {v0, p0}, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;-><init>(Landroid/hardware/SensorManager$SensorThread;)V

    .line 488
    .local v0, runnable:Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;
    new-instance v1, Ljava/lang/Thread;

    const-class v2, Landroid/hardware/SensorManager$SensorThread;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 489
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 490
    monitor-enter v0
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1c} :catch_27

    .line 491
    :goto_1c
    :try_start_1c
    iget-boolean v2, p0, Landroid/hardware/SensorManager$SensorThread;->mSensorsReady:Z

    if-nez v2, :cond_2e

    .line 492
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_1c

    .line 494
    :catchall_24
    move-exception v2

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_24

    :try_start_26
    throw v2
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_27} :catch_27

    .line 497
    .end local v0           #runnable:Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;
    .end local v1           #thread:Ljava/lang/Thread;
    :catch_27
    move-exception v2

    .line 499
    :cond_28
    :goto_28
    iget-object v2, p0, Landroid/hardware/SensorManager$SensorThread;->mThread:Ljava/lang/Thread;

    if-nez v2, :cond_32

    move v2, v3

    :goto_2d
    return v2

    .line 494
    .restart local v0       #runnable:Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;
    .restart local v1       #thread:Ljava/lang/Thread;
    :cond_2e
    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_24

    .line 495
    :try_start_2f
    iput-object v1, p0, Landroid/hardware/SensorManager$SensorThread;->mThread:Ljava/lang/Thread;
    :try_end_31
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_31} :catch_27

    goto :goto_28

    .line 499
    .end local v0           #runnable:Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;
    .end local v1           #thread:Ljava/lang/Thread;
    :cond_32
    const/4 v2, 0x1

    goto :goto_2d
.end method
