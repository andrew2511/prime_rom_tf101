.class Lcom/google/android/music/dl/NetworkMonitor$NotifyListenersStreamabilityChangedRunnable;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotifyListenersStreamabilityChangedRunnable"
.end annotation


# instance fields
.field private final mIsStreamable:Z

.field final synthetic this$0:Lcom/google/android/music/dl/NetworkMonitor;


# direct methods
.method public constructor <init>(Lcom/google/android/music/dl/NetworkMonitor;Z)V
    .locals 0
    .parameter
    .parameter "isStreamable"

    .prologue
    .line 344
    iput-object p1, p0, Lcom/google/android/music/dl/NetworkMonitor$NotifyListenersStreamabilityChangedRunnable;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    iput-boolean p2, p0, Lcom/google/android/music/dl/NetworkMonitor$NotifyListenersStreamabilityChangedRunnable;->mIsStreamable:Z

    .line 346
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 353
    iget-object v5, p0, Lcom/google/android/music/dl/NetworkMonitor$NotifyListenersStreamabilityChangedRunnable;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    invoke-static {v5}, Lcom/google/android/music/dl/NetworkMonitor;->access$000(Lcom/google/android/music/dl/NetworkMonitor;)Ljava/util/LinkedList;

    move-result-object v5

    monitor-enter v5

    .line 354
    :try_start_0
    new-instance v4, Ljava/util/LinkedList;

    iget-object v6, p0, Lcom/google/android/music/dl/NetworkMonitor$NotifyListenersStreamabilityChangedRunnable;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    invoke-static {v6}, Lcom/google/android/music/dl/NetworkMonitor;->access$000(Lcom/google/android/music/dl/NetworkMonitor;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 356
    .local v4, streamabilityListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;>;>;"
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    const/4 v3, 0x0

    .line 362
    .local v3, removeListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;>;>;"
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 363
    .local v2, reference:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;

    .line 364
    .local v1, listener:Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;
    if-nez v1, :cond_1

    .line 365
    if-nez v3, :cond_0

    .line 366
    new-instance v3, Ljava/util/LinkedList;

    .end local v3           #removeListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;>;>;"
    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 370
    .restart local v3       #removeListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;>;>;"
    :cond_0
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 356
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;
    .end local v2           #reference:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;>;"
    .end local v3           #removeListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;>;>;"
    .end local v4           #streamabilityListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;>;>;"
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 372
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #listener:Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;
    .restart local v2       #reference:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;>;"
    .restart local v3       #removeListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;>;>;"
    .restart local v4       #streamabilityListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;>;>;"
    :cond_1
    iget-boolean v5, p0, Lcom/google/android/music/dl/NetworkMonitor$NotifyListenersStreamabilityChangedRunnable;->mIsStreamable:Z

    invoke-interface {v1, v5}, Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;->onStreamabilityChanged(Z)V

    goto :goto_0

    .line 376
    .end local v1           #listener:Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;
    .end local v2           #reference:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;>;"
    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 377
    iget-object v5, p0, Lcom/google/android/music/dl/NetworkMonitor$NotifyListenersStreamabilityChangedRunnable;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    invoke-static {v5}, Lcom/google/android/music/dl/NetworkMonitor;->access$000(Lcom/google/android/music/dl/NetworkMonitor;)Ljava/util/LinkedList;

    move-result-object v5

    monitor-enter v5

    .line 378
    :try_start_2
    iget-object v6, p0, Lcom/google/android/music/dl/NetworkMonitor$NotifyListenersStreamabilityChangedRunnable;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    invoke-static {v6}, Lcom/google/android/music/dl/NetworkMonitor;->access$000(Lcom/google/android/music/dl/NetworkMonitor;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/LinkedList;->removeAll(Ljava/util/Collection;)Z

    .line 379
    monitor-exit v5

    .line 381
    :cond_3
    return-void

    .line 379
    :catchall_1
    move-exception v6

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6
.end method
