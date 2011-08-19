.class Landroid/os/CountDownTimer$1;
.super Landroid/os/Handler;
.source "CountDownTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CountDownTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/CountDownTimer;


# direct methods
.method constructor <init>(Landroid/os/CountDownTimer;)V
    .registers 2
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15
    .parameter "msg"

    .prologue
    const-wide/16 v11, 0x0

    .line 114
    iget-object v6, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    monitor-enter v6

    .line 115
    :try_start_5
    iget-object v7, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    #getter for: Landroid/os/CountDownTimer;->mStopTimeInFuture:J
    invoke-static {v7}, Landroid/os/CountDownTimer;->access$000(Landroid/os/CountDownTimer;)J

    move-result-wide v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long v4, v7, v9

    .line 117
    .local v4, millisLeft:J
    cmp-long v7, v4, v11

    if-gtz v7, :cond_1c

    .line 118
    iget-object v7, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-virtual {v7}, Landroid/os/CountDownTimer;->onFinish()V

    .line 135
    :goto_1a
    monitor-exit v6

    .line 136
    return-void

    .line 119
    :cond_1c
    iget-object v7, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    #getter for: Landroid/os/CountDownTimer;->mCountdownInterval:J
    invoke-static {v7}, Landroid/os/CountDownTimer;->access$100(Landroid/os/CountDownTimer;)J

    move-result-wide v7

    cmp-long v7, v4, v7

    if-gez v7, :cond_32

    .line 121
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Landroid/os/CountDownTimer$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {p0, v7, v4, v5}, Landroid/os/CountDownTimer$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1a

    .line 135
    .end local v4           #millisLeft:J
    :catchall_2f
    move-exception v7

    monitor-exit v6
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_2f

    throw v7

    .line 123
    .restart local v4       #millisLeft:J
    :cond_32
    :try_start_32
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 124
    .local v2, lastTickStart:J
    iget-object v7, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    invoke-virtual {v7, v4, v5}, Landroid/os/CountDownTimer;->onTick(J)V

    .line 127
    iget-object v7, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    #getter for: Landroid/os/CountDownTimer;->mCountdownInterval:J
    invoke-static {v7}, Landroid/os/CountDownTimer;->access$100(Landroid/os/CountDownTimer;)J

    move-result-wide v7

    add-long/2addr v7, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long v0, v7, v9

    .line 131
    .local v0, delay:J
    :goto_48
    cmp-long v7, v0, v11

    if-gez v7, :cond_54

    iget-object v7, p0, Landroid/os/CountDownTimer$1;->this$0:Landroid/os/CountDownTimer;

    #getter for: Landroid/os/CountDownTimer;->mCountdownInterval:J
    invoke-static {v7}, Landroid/os/CountDownTimer;->access$100(Landroid/os/CountDownTimer;)J

    move-result-wide v7

    add-long/2addr v0, v7

    goto :goto_48

    .line 133
    :cond_54
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Landroid/os/CountDownTimer$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {p0, v7, v0, v1}, Landroid/os/CountDownTimer$1;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_5c
    .catchall {:try_start_32 .. :try_end_5c} :catchall_2f

    goto :goto_1a
.end method
