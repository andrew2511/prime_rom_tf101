.class Lcom/android/server/PowerManagerService$TimeoutTask;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeoutTask"
.end annotation


# instance fields
.field nextState:I

.field remainingTimeoutOverride:J

.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 1395
    iput-object p1, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1395
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$TimeoutTask;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v4, 0x1

    .line 1401
    iget-object v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$600(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v6

    monitor-enter v6

    .line 1406
    :try_start_8
    iget v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_f

    .line 1407
    monitor-exit v6

    .line 1435
    :goto_e
    return-void

    .line 1411
    :cond_f
    iget v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    if-ne v0, v4, :cond_3d

    .line 1412
    const-string v0, "PowerManagerService"

    const-string v3, "@PowerManagement: Auto-dim timeout"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    iget v3, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    #setter for: Lcom/android/server/PowerManagerService;->mUserState:I
    invoke-static {v0, v3}, Lcom/android/server/PowerManagerService;->access$2902(Lcom/android/server/PowerManagerService;I)I

    .line 1419
    iget-object v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    iget v3, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    iget-object v4, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mWakeLockState:I
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$2800(Lcom/android/server/PowerManagerService;)I

    move-result v4

    or-int/2addr v3, v4

    #calls: Lcom/android/server/PowerManagerService;->setPowerState(I)V
    invoke-static {v0, v3}, Lcom/android/server/PowerManagerService;->access$3000(Lcom/android/server/PowerManagerService;I)V

    .line 1421
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1423
    .local v1, now:J
    iget v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    packed-switch v0, :pswitch_data_6e

    .line 1434
    :goto_38
    :pswitch_38
    monitor-exit v6

    goto :goto_e

    .end local v1           #now:J
    :catchall_3a
    move-exception v0

    monitor-exit v6
    :try_end_3c
    .catchall {:try_start_8 .. :try_end_3c} :catchall_3a

    throw v0

    .line 1413
    :cond_3d
    :try_start_3d
    iget v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    if-nez v0, :cond_1a

    iget v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    iget-object v3, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mWakeLockState:I
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$2800(Lcom/android/server/PowerManagerService;)I

    move-result v3

    or-int/2addr v0, v3

    if-nez v0, :cond_1a

    .line 1414
    const-string v0, "PowerManagerService"

    const-string v3, "@PowerManagement: Auto-sleep timeout"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 1426
    .restart local v1       #now:J
    :pswitch_54
    iget-object v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mDimDelay:I
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$3100(Lcom/android/server/PowerManagerService;)I

    move-result v0

    if-ltz v0, :cond_65

    .line 1427
    iget-object v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    iget-wide v3, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->remainingTimeoutOverride:J

    const/4 v5, 0x1

    #calls: Lcom/android/server/PowerManagerService;->setTimeoutLocked(JJI)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->access$3200(Lcom/android/server/PowerManagerService;JJI)V

    goto :goto_38

    .line 1431
    :cond_65
    :pswitch_65
    iget-object v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    iget-wide v3, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->remainingTimeoutOverride:J

    const/4 v5, 0x0

    #calls: Lcom/android/server/PowerManagerService;->setTimeoutLocked(JJI)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->access$3200(Lcom/android/server/PowerManagerService;JJI)V
    :try_end_6d
    .catchall {:try_start_3d .. :try_end_6d} :catchall_3a

    goto :goto_38

    .line 1423
    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_65
        :pswitch_38
        :pswitch_54
    .end packed-switch
.end method
