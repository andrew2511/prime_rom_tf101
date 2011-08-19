.class public Lcom/asus/vibe/api/VibeApiTask$TaskThread;
.super Ljava/lang/Thread;
.source "VibeApiTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/vibe/api/VibeApiTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskThread"
.end annotation


# direct methods
.method constructor <init>(Lcom/asus/vibe/api/VibeApiTask;Ljava/lang/String;)V
    .locals 3
    .parameter "task"
    .parameter "threadName"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 105
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->MEM_DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/asus/vibe2/debug/MemDebug;->add(Ljava/lang/Object;)V

    const-string v0, "ASUS@Vibe_Mem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/asus/vibe/api/VibeApiTask$TaskThread;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " created!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 110
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->MEM_DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/asus/vibe2/debug/MemDebug;->remove(Ljava/lang/Object;)V

    const-string v0, "ASUS@Vibe_Mem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/asus/vibe/api/VibeApiTask$TaskThread;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " finalized!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 112
    return-void
.end method
