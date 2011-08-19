.class Lcom/google/android/music/dl/NetworkMonitor$1;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/dl/NetworkMonitor;


# direct methods
.method constructor <init>(Lcom/google/android/music/dl/NetworkMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 414
    iput-object p1, p0, Lcom/google/android/music/dl/NetworkMonitor$1;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 419
    iget-object v5, p0, Lcom/google/android/music/dl/NetworkMonitor$1;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    invoke-static {v5}, Lcom/google/android/music/dl/NetworkMonitor;->access$100(Lcom/google/android/music/dl/NetworkMonitor;)Ljava/util/LinkedList;

    move-result-object v5

    monitor-enter v5

    .line 420
    :try_start_0
    new-instance v2, Ljava/util/LinkedList;

    iget-object v6, p0, Lcom/google/android/music/dl/NetworkMonitor$1;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    invoke-static {v6}, Lcom/google/android/music/dl/NetworkMonitor;->access$100(Lcom/google/android/music/dl/NetworkMonitor;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 422
    .local v2, networkChangeListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/NetworkMonitor$NetworkChangeListener;>;>;"
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    const/4 v4, 0x0

    .line 427
    .local v4, removeListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/NetworkMonitor$NetworkChangeListener;>;>;"
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 428
    .local v3, reference:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/NetworkMonitor$NetworkChangeListener;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/dl/NetworkMonitor$NetworkChangeListener;

    .line 429
    .local v1, listener:Lcom/google/android/music/dl/NetworkMonitor$NetworkChangeListener;
    if-nez v1, :cond_1

    .line 430
    if-nez v4, :cond_0

    .line 431
    new-instance v4, Ljava/util/LinkedList;

    .end local v4           #removeListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/NetworkMonitor$NetworkChangeListener;>;>;"
    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 433
    .restart local v4       #removeListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/NetworkMonitor$NetworkChangeListener;>;>;"
    :cond_0
    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 422
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/google/android/music/dl/NetworkMonitor$NetworkChangeListener;
    .end local v2           #networkChangeListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/NetworkMonitor$NetworkChangeListener;>;>;"
    .end local v3           #reference:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/NetworkMonitor$NetworkChangeListener;>;"
    .end local v4           #removeListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/NetworkMonitor$NetworkChangeListener;>;>;"
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 435
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #listener:Lcom/google/android/music/dl/NetworkMonitor$NetworkChangeListener;
    .restart local v2       #networkChangeListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/NetworkMonitor$NetworkChangeListener;>;>;"
    .restart local v3       #reference:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/NetworkMonitor$NetworkChangeListener;>;"
    .restart local v4       #removeListeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/NetworkMonitor$NetworkChangeListener;>;>;"
    :cond_1
    iget-object v5, p0, Lcom/google/android/music/dl/NetworkMonitor$1;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    invoke-static {v5}, Lcom/google/android/music/dl/NetworkMonitor;->access$200(Lcom/google/android/music/dl/NetworkMonitor;)Z

    move-result v5

    iget-object v6, p0, Lcom/google/android/music/dl/NetworkMonitor$1;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    invoke-static {v6}, Lcom/google/android/music/dl/NetworkMonitor;->access$300(Lcom/google/android/music/dl/NetworkMonitor;)Z

    move-result v6

    invoke-interface {v1, v5, v6}, Lcom/google/android/music/dl/NetworkMonitor$NetworkChangeListener;->onNetworkChanged(ZZ)V

    goto :goto_0

    .line 440
    .end local v1           #listener:Lcom/google/android/music/dl/NetworkMonitor$NetworkChangeListener;
    .end local v3           #reference:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/NetworkMonitor$NetworkChangeListener;>;"
    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 441
    iget-object v5, p0, Lcom/google/android/music/dl/NetworkMonitor$1;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    invoke-static {v5}, Lcom/google/android/music/dl/NetworkMonitor;->access$100(Lcom/google/android/music/dl/NetworkMonitor;)Ljava/util/LinkedList;

    move-result-object v5

    monitor-enter v5

    .line 442
    :try_start_2
    iget-object v6, p0, Lcom/google/android/music/dl/NetworkMonitor$1;->this$0:Lcom/google/android/music/dl/NetworkMonitor;

    invoke-static {v6}, Lcom/google/android/music/dl/NetworkMonitor;->access$100(Lcom/google/android/music/dl/NetworkMonitor;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/LinkedList;->removeAll(Ljava/util/Collection;)Z

    .line 443
    monitor-exit v5

    .line 445
    :cond_3
    return-void

    .line 443
    :catchall_1
    move-exception v6

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6
.end method
