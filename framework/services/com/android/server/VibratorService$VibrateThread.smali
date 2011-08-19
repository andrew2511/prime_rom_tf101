.class Lcom/android/server/VibratorService$VibrateThread;
.super Ljava/lang/Thread;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibrateThread"
.end annotation


# instance fields
.field mDone:Z

.field final mVibration:Lcom/android/server/VibratorService$Vibration;

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V
    .registers 5
    .parameter
    .parameter "vib"

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 292
    iput-object p2, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    .line 293
    #getter for: Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$700(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v0

    #getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p2}, Lcom/android/server/VibratorService$Vibration;->access$600(Lcom/android/server/VibratorService$Vibration;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->set(I)V

    .line 294
    #getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$800(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    #getter for: Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$700(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 295
    #getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$800(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 296
    return-void
.end method

.method private delay(J)V
    .registers 9
    .parameter "duration"

    .prologue
    const-wide/16 v4, 0x0

    .line 299
    cmp-long v2, p1, v4

    if-lez v2, :cond_11

    .line 300
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 303
    .local v0, bedtime:J
    :cond_a
    :try_start_a
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_d} :catch_1f

    .line 307
    :goto_d
    iget-boolean v2, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-eqz v2, :cond_12

    .line 314
    .end local v0           #bedtime:J
    :cond_11
    :goto_11
    return-void

    .line 310
    .restart local v0       #bedtime:J
    :cond_12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v2, p1, v2

    sub-long p1, v2, v0

    .line 312
    cmp-long v2, p1, v4

    if-gtz v2, :cond_a

    goto :goto_11

    .line 305
    :catch_1f
    move-exception v2

    goto :goto_d
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 317
    const/4 v7, -0x8

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 318
    monitor-enter p0

    .line 319
    const/4 v2, 0x0

    .line 320
    .local v2, index:I
    :try_start_6
    iget-object v7, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    #getter for: Lcom/android/server/VibratorService$Vibration;->mPattern:[J
    invoke-static {v7}, Lcom/android/server/VibratorService$Vibration;->access$900(Lcom/android/server/VibratorService$Vibration;)[J

    move-result-object v5

    .line 321
    .local v5, pattern:[J
    array-length v4, v5

    .line 322
    .local v4, len:I
    iget-object v7, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    #getter for: Lcom/android/server/VibratorService$Vibration;->mRepeat:I
    invoke-static {v7}, Lcom/android/server/VibratorService$Vibration;->access$1000(Lcom/android/server/VibratorService$Vibration;)I
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_78

    move-result v6

    .line 323
    .local v6, repeat:I
    const-wide/16 v0, 0x0

    .local v0, duration:J
    move v3, v2

    .line 325
    .end local v2           #index:I
    .local v3, index:I
    :goto_16
    :try_start_16
    iget-boolean v7, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z
    :try_end_18
    .catchall {:try_start_16 .. :try_end_18} :catchall_7e

    if-nez v7, :cond_83

    .line 327
    if-ge v3, v4, :cond_22

    .line 328
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    :try_start_1e
    aget-wide v7, v5, v3
    :try_end_20
    .catchall {:try_start_1e .. :try_end_20} :catchall_78

    add-long/2addr v0, v7

    move v3, v2

    .line 332
    .end local v2           #index:I
    .restart local v3       #index:I
    :cond_22
    :try_start_22
    invoke-direct {p0, v0, v1}, Lcom/android/server/VibratorService$VibrateThread;->delay(J)V

    .line 333
    iget-boolean v7, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_7e

    if-eqz v7, :cond_5c

    move v2, v3

    .line 353
    .end local v3           #index:I
    .restart local v2       #index:I
    :goto_2a
    :try_start_2a
    iget-object v7, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    #getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v7}, Lcom/android/server/VibratorService;->access$800(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 354
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_78

    .line 355
    iget-object v7, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    #getter for: Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v7}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v7

    monitor-enter v7

    .line 356
    :try_start_3b
    iget-object v8, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v8, v8, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    if-ne v8, p0, :cond_46

    .line 357
    iget-object v8, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 359
    :cond_46
    iget-boolean v8, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-nez v8, :cond_5a

    .line 362
    iget-object v8, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    #getter for: Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v8}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v8, v9}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 363
    iget-object v8, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    #calls: Lcom/android/server/VibratorService;->startNextVibrationLocked()V
    invoke-static {v8}, Lcom/android/server/VibratorService;->access$300(Lcom/android/server/VibratorService;)V

    .line 365
    :cond_5a
    monitor-exit v7
    :try_end_5b
    .catchall {:try_start_3b .. :try_end_5b} :catchall_7b

    .line 366
    return-void

    .line 337
    .end local v2           #index:I
    .restart local v3       #index:I
    :cond_5c
    if-ge v3, v4, :cond_6f

    .line 340
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    :try_start_60
    aget-wide v0, v5, v3

    .line 341
    const-wide/16 v7, 0x0

    cmp-long v7, v0, v7

    if-lez v7, :cond_81

    .line 342
    iget-object v7, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0, v1}, Lcom/android/server/VibratorService;->vibratorOn(J)V

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    goto :goto_16

    .line 345
    :cond_6f
    if-gez v6, :cond_73

    move v2, v3

    .line 346
    .end local v3           #index:I
    .restart local v2       #index:I
    goto :goto_2a

    .line 348
    .end local v2           #index:I
    .restart local v3       #index:I
    :cond_73
    move v2, v6

    .line 349
    .end local v3           #index:I
    .restart local v2       #index:I
    const-wide/16 v0, 0x0

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    goto :goto_16

    .line 354
    .end local v0           #duration:J
    .end local v3           #index:I
    .end local v4           #len:I
    .end local v5           #pattern:[J
    .end local v6           #repeat:I
    .restart local v2       #index:I
    :catchall_78
    move-exception v7

    :goto_79
    monitor-exit p0
    :try_end_7a
    .catchall {:try_start_60 .. :try_end_7a} :catchall_78

    throw v7

    .line 365
    .restart local v0       #duration:J
    .restart local v4       #len:I
    .restart local v5       #pattern:[J
    .restart local v6       #repeat:I
    :catchall_7b
    move-exception v8

    :try_start_7c
    monitor-exit v7
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    throw v8

    .line 354
    .end local v2           #index:I
    .restart local v3       #index:I
    :catchall_7e
    move-exception v7

    move v2, v3

    .end local v3           #index:I
    .restart local v2       #index:I
    goto :goto_79

    :cond_81
    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    goto :goto_16

    :cond_83
    move v2, v3

    .end local v3           #index:I
    .restart local v2       #index:I
    goto :goto_2a
.end method
