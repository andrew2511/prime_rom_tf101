.class Lcom/android/calendar/EventLoader$LoaderThread;
.super Ljava/lang/Thread;
.source "EventLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EventLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoaderThread"
.end annotation


# instance fields
.field mEventLoader:Lcom/android/calendar/EventLoader;

.field mQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/android/calendar/EventLoader$LoadRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/LinkedBlockingQueue;Lcom/android/calendar/EventLoader;)V
    .locals 0
    .parameter
    .parameter "eventLoader"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/android/calendar/EventLoader$LoadRequest;",
            ">;",
            "Lcom/android/calendar/EventLoader;",
            ")V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, queue:Ljava/util/concurrent/LinkedBlockingQueue;,"Ljava/util/concurrent/LinkedBlockingQueue<Lcom/android/calendar/EventLoader$LoadRequest;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 155
    iput-object p1, p0, Lcom/android/calendar/EventLoader$LoaderThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 156
    iput-object p2, p0, Lcom/android/calendar/EventLoader$LoaderThread;->mEventLoader:Lcom/android/calendar/EventLoader;

    .line 157
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 172
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 176
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/calendar/EventLoader$LoaderThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/EventLoader$LoadRequest;

    .line 180
    .local v1, request:Lcom/android/calendar/EventLoader$LoadRequest;
    :goto_1
    iget-object v2, p0, Lcom/android/calendar/EventLoader$LoaderThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/android/calendar/EventLoader$LoaderThread;->mEventLoader:Lcom/android/calendar/EventLoader;

    invoke-interface {v1, v2}, Lcom/android/calendar/EventLoader$LoadRequest;->skipRequest(Lcom/android/calendar/EventLoader;)V

    .line 185
    iget-object v2, p0, Lcom/android/calendar/EventLoader$LoaderThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #request:Lcom/android/calendar/EventLoader$LoadRequest;
    check-cast v1, Lcom/android/calendar/EventLoader$LoadRequest;

    .restart local v1       #request:Lcom/android/calendar/EventLoader$LoadRequest;
    goto :goto_1

    .line 188
    :cond_0
    instance-of v2, v1, Lcom/android/calendar/EventLoader$ShutdownRequest;

    if-eqz v2, :cond_1

    .line 189
    return-void

    .line 191
    :cond_1
    iget-object v2, p0, Lcom/android/calendar/EventLoader$LoaderThread;->mEventLoader:Lcom/android/calendar/EventLoader;

    invoke-interface {v1, v2}, Lcom/android/calendar/EventLoader$LoadRequest;->processRequest(Lcom/android/calendar/EventLoader;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    .end local v1           #request:Lcom/android/calendar/EventLoader$LoadRequest;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 193
    .local v0, ex:Ljava/lang/InterruptedException;
    const-string v2, "Cal"

    const-string v3, "background LoaderThread interrupted!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public shutdown()V
    .locals 4

    .prologue
    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/android/calendar/EventLoader$LoaderThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v2, Lcom/android/calendar/EventLoader$ShutdownRequest;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/calendar/EventLoader$ShutdownRequest;-><init>(Lcom/android/calendar/EventLoader$1;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 166
    .local v0, ex:Ljava/lang/InterruptedException;
    const-string v1, "Cal"

    const-string v2, "LoaderThread.shutdown() interrupted!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
