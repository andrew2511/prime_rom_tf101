.class Lcom/google/masf/MobileServiceMux$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/masf/MobileServiceMux;-><init>(Lcom/google/masf/MobileServiceMux$Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/masf/MobileServiceMux;


# direct methods
.method constructor <init>(Lcom/google/masf/MobileServiceMux;)V
    .locals 0

    iput-object p1, p0, Lcom/google/masf/MobileServiceMux$1;->this$0:Lcom/google/masf/MobileServiceMux;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/google/masf/MobileServiceMux$1;->this$0:Lcom/google/masf/MobileServiceMux;

    invoke-static {v0}, Lcom/google/masf/MobileServiceMux;->access$700(Lcom/google/masf/MobileServiceMux;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/google/masf/MobileServiceMux;->access$800()Lcom/google/debug/LogSource;

    move-result-object v1

    const-string v2, "Running flush"

    invoke-virtual {v1, v2}, Lcom/google/debug/LogSource;->info(Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/common/Config;->getInstance()Lcom/google/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/Config;->getClock()Lcom/google/common/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/Clock;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/masf/MobileServiceMux$1;->this$0:Lcom/google/masf/MobileServiceMux;

    iget-wide v3, v3, Lcom/google/masf/MobileServiceMux;->nextFlush:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/google/masf/MobileServiceMux$1;->this$0:Lcom/google/masf/MobileServiceMux;

    iget-object v1, v1, Lcom/google/masf/MobileServiceMux;->flushTask:Lcom/google/common/task/TimerTask;

    iget-object v2, p0, Lcom/google/masf/MobileServiceMux$1;->this$0:Lcom/google/masf/MobileServiceMux;

    iget-wide v2, v2, Lcom/google/masf/MobileServiceMux;->nextFlush:J

    invoke-virtual {v1, v2, v3}, Lcom/google/common/task/TimerTask;->setDeadline(J)V

    iget-object v1, p0, Lcom/google/masf/MobileServiceMux$1;->this$0:Lcom/google/masf/MobileServiceMux;

    iget-object v1, v1, Lcom/google/masf/MobileServiceMux;->flushTask:Lcom/google/common/task/TimerTask;

    invoke-virtual {v1}, Lcom/google/common/task/TimerTask;->schedule()V

    monitor-exit v0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/masf/MobileServiceMux$1;->this$0:Lcom/google/masf/MobileServiceMux;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/google/masf/MobileServiceMux;->nextFlush:J

    iget-object v1, p0, Lcom/google/masf/MobileServiceMux$1;->this$0:Lcom/google/masf/MobileServiceMux;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/google/masf/MobileServiceMux;->hardDeadline:J

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/masf/MobileServiceMux$1;->this$0:Lcom/google/masf/MobileServiceMux;

    invoke-virtual {v0}, Lcom/google/masf/MobileServiceMux;->processRequests()V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
