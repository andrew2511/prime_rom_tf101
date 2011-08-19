.class final Ljava/util/Timer$FinalizerHelper;
.super Ljava/lang/Object;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FinalizerHelper"
.end annotation


# instance fields
.field private final impl:Ljava/util/Timer$TimerImpl;


# direct methods
.method constructor <init>(Ljava/util/Timer$TimerImpl;)V
    .registers 2
    .parameter "impl"

    .prologue
    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    iput-object p1, p0, Ljava/util/Timer$FinalizerHelper;->impl:Ljava/util/Timer$TimerImpl;

    .line 329
    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 333
    :try_start_0
    iget-object v0, p0, Ljava/util/Timer$FinalizerHelper;->impl:Ljava/util/Timer$TimerImpl;

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_16

    .line 334
    :try_start_3
    iget-object v1, p0, Ljava/util/Timer$FinalizerHelper;->impl:Ljava/util/Timer$TimerImpl;

    const/4 v2, 0x1

    #setter for: Ljava/util/Timer$TimerImpl;->finished:Z
    invoke-static {v1, v2}, Ljava/util/Timer$TimerImpl;->access$302(Ljava/util/Timer$TimerImpl;Z)Z

    .line 335
    iget-object v1, p0, Ljava/util/Timer$FinalizerHelper;->impl:Ljava/util/Timer$TimerImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 336
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    .line 338
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 340
    return-void

    .line 336
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    :try_start_15
    throw v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_16

    .line 338
    :catchall_16
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
