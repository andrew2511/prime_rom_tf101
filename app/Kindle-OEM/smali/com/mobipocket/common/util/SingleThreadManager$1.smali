.class Lcom/mobipocket/common/util/SingleThreadManager$1;
.super Ljava/lang/Object;
.source "SingleThreadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobipocket/common/util/SingleThreadManager;->scheduleForLaunch(Lcom/mobipocket/common/util/SingleThreadManager$InterruptibleRunnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobipocket/common/util/SingleThreadManager;


# direct methods
.method constructor <init>(Lcom/mobipocket/common/util/SingleThreadManager;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/mobipocket/common/util/SingleThreadManager$1;->this$0:Lcom/mobipocket/common/util/SingleThreadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mobipocket/common/util/SingleThreadManager$1;->this$0:Lcom/mobipocket/common/util/SingleThreadManager;

    invoke-static {v0}, Lcom/mobipocket/common/util/SingleThreadManager;->access$000(Lcom/mobipocket/common/util/SingleThreadManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 86
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invoke later thread @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mobipocket/common/util/SingleThreadManager$1;->this$0:Lcom/mobipocket/common/util/SingleThreadManager;

    invoke-static {v2}, Lcom/mobipocket/common/util/SingleThreadManager;->access$100(Lcom/mobipocket/common/util/SingleThreadManager;)Lcom/mobipocket/common/util/SingleThreadManager$InterruptibleRunnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v1, p0, Lcom/mobipocket/common/util/SingleThreadManager$1;->this$0:Lcom/mobipocket/common/util/SingleThreadManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mobipocket/common/util/SingleThreadManager;->access$202(Lcom/mobipocket/common/util/SingleThreadManager;Z)Z

    .line 88
    iget-object v1, p0, Lcom/mobipocket/common/util/SingleThreadManager$1;->this$0:Lcom/mobipocket/common/util/SingleThreadManager;

    invoke-static {v1}, Lcom/mobipocket/common/util/SingleThreadManager;->access$100(Lcom/mobipocket/common/util/SingleThreadManager;)Lcom/mobipocket/common/util/SingleThreadManager$InterruptibleRunnable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting thread @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mobipocket/common/util/SingleThreadManager$1;->this$0:Lcom/mobipocket/common/util/SingleThreadManager;

    invoke-static {v2}, Lcom/mobipocket/common/util/SingleThreadManager;->access$100(Lcom/mobipocket/common/util/SingleThreadManager;)Lcom/mobipocket/common/util/SingleThreadManager$InterruptibleRunnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v1, p0, Lcom/mobipocket/common/util/SingleThreadManager$1;->this$0:Lcom/mobipocket/common/util/SingleThreadManager;

    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/mobipocket/common/util/SingleThreadManager$1;->this$0:Lcom/mobipocket/common/util/SingleThreadManager;

    invoke-static {v3}, Lcom/mobipocket/common/util/SingleThreadManager;->access$100(Lcom/mobipocket/common/util/SingleThreadManager;)Lcom/mobipocket/common/util/SingleThreadManager$InterruptibleRunnable;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v1, v2}, Lcom/mobipocket/common/util/SingleThreadManager;->access$302(Lcom/mobipocket/common/util/SingleThreadManager;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 93
    iget-object v1, p0, Lcom/mobipocket/common/util/SingleThreadManager$1;->this$0:Lcom/mobipocket/common/util/SingleThreadManager;

    invoke-static {v1}, Lcom/mobipocket/common/util/SingleThreadManager;->access$300(Lcom/mobipocket/common/util/SingleThreadManager;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 95
    :cond_0
    monitor-exit v0

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
