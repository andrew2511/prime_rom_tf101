.class public Lcom/layar/util/StatusHelper;
.super Ljava/lang/Object;
.source "StatusHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/util/StatusHelper$StatusListener;
    }
.end annotation


# instance fields
.field private accuracy:I

.field private error:Ljava/lang/CharSequence;

.field private listener:Lcom/layar/util/StatusHelper$StatusListener;

.field private progress:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private range:I

.field private status:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/layar/util/StatusHelper;->progress:Ljava/util/Map;

    .line 15
    return-void
.end method


# virtual methods
.method public addProgress(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "id"
    .parameter "progress"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/layar/util/StatusHelper;->progress:Ljava/util/Map;

    monitor-enter v0

    .line 32
    :try_start_0
    iget-object v1, p0, Lcom/layar/util/StatusHelper;->progress:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    iget-object v0, p0, Lcom/layar/util/StatusHelper;->listener:Lcom/layar/util/StatusHelper$StatusListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/util/StatusHelper;->listener:Lcom/layar/util/StatusHelper$StatusListener;

    invoke-interface {v0}, Lcom/layar/util/StatusHelper$StatusListener;->statusChanged()V

    .line 35
    :cond_0
    return-void

    .line 31
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public clearProgress()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/layar/util/StatusHelper;->progress:Ljava/util/Map;

    monitor-enter v0

    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/layar/util/StatusHelper;->progress:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 45
    monitor-exit v0

    .line 48
    return-void

    .line 45
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public finishProgress(Ljava/lang/String;)V
    .locals 2
    .parameter "id"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/layar/util/StatusHelper;->progress:Ljava/util/Map;

    monitor-enter v0

    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/layar/util/StatusHelper;->progress:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    iget-object v0, p0, Lcom/layar/util/StatusHelper;->listener:Lcom/layar/util/StatusHelper$StatusListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/util/StatusHelper;->listener:Lcom/layar/util/StatusHelper$StatusListener;

    invoke-interface {v0}, Lcom/layar/util/StatusHelper$StatusListener;->statusChanged()V

    .line 42
    :cond_0
    return-void

    .line 38
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getAccuracy()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/layar/util/StatusHelper;->accuracy:I

    return v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/layar/util/StatusHelper;->error:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getProgress()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 52
    :try_start_0
    iget-object v3, p0, Lcom/layar/util/StatusHelper;->progress:Ljava/util/Map;

    monitor-enter v3
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :try_start_1
    iget-object v4, p0, Lcom/layar/util/StatusHelper;->progress:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 54
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 55
    .local v2, last:Ljava/lang/String;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 56
    iget-object v4, p0, Lcom/layar/util/StatusHelper;->progress:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/CharSequence;

    monitor-exit v3

    move-object v3, p0

    .line 63
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2           #last:Ljava/lang/String;
    :goto_1
    return-object v3

    .line 55
    .restart local v1       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v2       #last:Ljava/lang/String;
    .restart local p0
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #last:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2       #last:Ljava/lang/String;
    goto :goto_0

    .line 52
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2           #last:Ljava/lang/String;
    .end local p0
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 58
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 63
    .local v0, e:Ljava/util/ConcurrentModificationException;
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getRange()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/layar/util/StatusHelper;->range:I

    return v0
.end method

.method public getStatus()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/layar/util/StatusHelper;->status:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setAccuracy(I)V
    .locals 0
    .parameter "accuracy"

    .prologue
    .line 98
    iput p1, p0, Lcom/layar/util/StatusHelper;->accuracy:I

    .line 99
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/layar/util/StatusHelper;->error:Ljava/lang/CharSequence;

    .line 73
    iget-object v0, p0, Lcom/layar/util/StatusHelper;->listener:Lcom/layar/util/StatusHelper$StatusListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/util/StatusHelper;->listener:Lcom/layar/util/StatusHelper$StatusListener;

    invoke-interface {v0}, Lcom/layar/util/StatusHelper$StatusListener;->statusChanged()V

    .line 74
    :cond_0
    return-void
.end method

.method public setListener(Lcom/layar/util/StatusHelper$StatusListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/layar/util/StatusHelper;->listener:Lcom/layar/util/StatusHelper$StatusListener;

    .line 103
    return-void
.end method

.method public setRange(I)V
    .locals 0
    .parameter "range"

    .prologue
    .line 90
    iput p1, p0, Lcom/layar/util/StatusHelper;->range:I

    .line 91
    return-void
.end method

.method public setStatus(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "status"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/layar/util/StatusHelper;->status:Ljava/lang/CharSequence;

    .line 82
    iget-object v0, p0, Lcom/layar/util/StatusHelper;->listener:Lcom/layar/util/StatusHelper$StatusListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/util/StatusHelper;->listener:Lcom/layar/util/StatusHelper$StatusListener;

    invoke-interface {v0}, Lcom/layar/util/StatusHelper$StatusListener;->statusChanged()V

    .line 83
    :cond_0
    return-void
.end method
