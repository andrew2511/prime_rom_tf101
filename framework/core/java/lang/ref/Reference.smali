.class public abstract Ljava/lang/ref/Reference;
.super Ljava/lang/Object;
.source "Reference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field volatile pendingNext:Ljava/lang/ref/Reference;

.field volatile queue:Ljava/lang/ref/ReferenceQueue;

.field volatile queueNext:Ljava/lang/ref/Reference;

.field volatile referent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 81
    .local p0, this:Ljava/lang/ref/Reference;,"Ljava/lang/ref/Reference<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method private declared-synchronized enqueueInternal()Z
    .registers 2

    .prologue
    .line 111
    .local p0, this:Ljava/lang/ref/Reference;,"Ljava/lang/ref/Reference<TT;>;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/lang/ref/Reference;->queue:Ljava/lang/ref/ReferenceQueue;

    if-eqz v0, :cond_14

    iget-object v0, p0, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    if-nez v0, :cond_14

    .line 112
    iget-object v0, p0, Ljava/lang/ref/Reference;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0, p0}, Ljava/lang/ref/ReferenceQueue;->enqueue(Ljava/lang/ref/Reference;)V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/ref/Reference;->queue:Ljava/lang/ref/ReferenceQueue;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_16

    .line 114
    const/4 v0, 0x1

    .line 116
    :goto_12
    monitor-exit p0

    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_12

    .line 111
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 89
    .local p0, this:Ljava/lang/ref/Reference;,"Ljava/lang/ref/Reference<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/ref/Reference;->referent:Ljava/lang/Object;

    .line 90
    return-void
.end method

.method public enqueue()Z
    .registers 2

    .prologue
    .line 127
    .local p0, this:Ljava/lang/ref/Reference;,"Ljava/lang/ref/Reference<TT;>;"
    invoke-direct {p0}, Ljava/lang/ref/Reference;->enqueueInternal()Z

    move-result v0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, this:Ljava/lang/ref/Reference;,"Ljava/lang/ref/Reference<TT;>;"
    iget-object v0, p0, Ljava/lang/ref/Reference;->referent:Ljava/lang/Object;

    return-object v0
.end method

.method public isEnqueued()Z
    .registers 2

    .prologue
    .line 147
    .local p0, this:Ljava/lang/ref/Reference;,"Ljava/lang/ref/Reference<TT;>;"
    iget-object v0, p0, Ljava/lang/ref/Reference;->queueNext:Ljava/lang/ref/Reference;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
