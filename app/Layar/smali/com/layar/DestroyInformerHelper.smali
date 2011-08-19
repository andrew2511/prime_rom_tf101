.class public Lcom/layar/DestroyInformerHelper;
.super Landroid/app/Activity;
.source "DestroyInformerHelper.java"

# interfaces
.implements Lcom/layar/ui/OnDestroyInformer;


# instance fields
.field private destroyListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/ui/OnDestroyListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/layar/DestroyInformerHelper;->destroyListeners:Ljava/util/ArrayList;

    .line 10
    return-void
.end method

.method private informDestroyListeners()V
    .locals 4

    .prologue
    .line 30
    iget-object v1, p0, Lcom/layar/DestroyInformerHelper;->destroyListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 31
    :try_start_0
    iget-object v2, p0, Lcom/layar/DestroyInformerHelper;->destroyListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 30
    monitor-exit v1

    .line 35
    return-void

    .line 31
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/ui/OnDestroyListener;

    .line 32
    .local v0, listener:Lcom/layar/ui/OnDestroyListener;
    invoke-interface {v0}, Lcom/layar/ui/OnDestroyListener;->destroyingEvent()V

    goto :goto_0

    .line 30
    .end local v0           #listener:Lcom/layar/ui/OnDestroyListener;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method protected onDestroy()V
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/layar/DestroyInformerHelper;->destroyListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 24
    :try_start_0
    invoke-direct {p0}, Lcom/layar/DestroyInformerHelper;->informDestroyListeners()V

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 27
    return-void

    .line 23
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public registerOnDestroyListener(Lcom/layar/ui/OnDestroyListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/layar/DestroyInformerHelper;->destroyListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 17
    :try_start_0
    iget-object v1, p0, Lcom/layar/DestroyInformerHelper;->destroyListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    monitor-exit v0

    .line 19
    return-void

    .line 16
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterOnDestroyListener(Lcom/layar/ui/OnDestroyListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/layar/DestroyInformerHelper;->destroyListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 40
    :try_start_0
    iget-object v1, p0, Lcom/layar/DestroyInformerHelper;->destroyListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 39
    monitor-exit v0

    .line 42
    return-void

    .line 39
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
