.class Lcom/infraware/evengine/EvCompInterface$ThreadTimerTask;
.super Ljava/util/TimerTask;
.source "EvCompInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/evengine/EvCompInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThreadTimerTask"
.end annotation


# instance fields
.field private mbAlive:Z

.field final synthetic this$0:Lcom/infraware/evengine/EvCompInterface;


# direct methods
.method constructor <init>(Lcom/infraware/evengine/EvCompInterface;Z)V
    .locals 0
    .parameter
    .parameter "bStart"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/infraware/evengine/EvCompInterface$ThreadTimerTask;->this$0:Lcom/infraware/evengine/EvCompInterface;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 21
    iput-boolean p2, p0, Lcom/infraware/evengine/EvCompInterface$ThreadTimerTask;->mbAlive:Z

    .line 22
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/infraware/evengine/EvCompInterface$ThreadTimerTask;->this$0:Lcom/infraware/evengine/EvCompInterface;

    monitor-enter v0

    .line 31
    :try_start_0
    iget-boolean v1, p0, Lcom/infraware/evengine/EvCompInterface$ThreadTimerTask;->mbAlive:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterface$ThreadTimerTask;->this$0:Lcom/infraware/evengine/EvCompInterface;

    iget v1, v1, Lcom/infraware/evengine/EvCompInterface;->mbSuspend:I

    if-nez v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/infraware/evengine/EvCompInterface$ThreadTimerTask;->this$0:Lcom/infraware/evengine/EvCompInterface;

    iget-object v1, v1, Lcom/infraware/evengine/EvCompInterface;->Native:Lcom/infraware/evengine/EvNative;

    invoke-virtual {v1}, Lcom/infraware/evengine/EvNative;->ITimer()V

    .line 30
    :cond_0
    monitor-exit v0

    .line 34
    return-void

    .line 30
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setOperationTimer(Z)V
    .locals 0
    .parameter "bStart"

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/infraware/evengine/EvCompInterface$ThreadTimerTask;->mbAlive:Z

    .line 26
    return-void
.end method
