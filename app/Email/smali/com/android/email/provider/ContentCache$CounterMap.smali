.class Lcom/android/email/provider/ContentCache$CounterMap;
.super Ljava/lang/Object;
.source "ContentCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/ContentCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CounterMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 119
    .local p0, this:Lcom/android/email/provider/ContentCache$CounterMap;,"Lcom/android/email/provider/ContentCache$CounterMap<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/provider/ContentCache$CounterMap;->mMap:Ljava/util/HashMap;

    .line 121
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .parameter "maxSize"

    .prologue
    .line 115
    .local p0, this:Lcom/android/email/provider/ContentCache$CounterMap;,"Lcom/android/email/provider/ContentCache$CounterMap<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/email/provider/ContentCache$CounterMap;->mMap:Ljava/util/HashMap;

    .line 117
    return-void
.end method


# virtual methods
.method declared-synchronized add(Ljava/lang/Object;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, this:Lcom/android/email/provider/ContentCache$CounterMap;,"Lcom/android/email/provider/ContentCache$CounterMap<TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/provider/ContentCache$CounterMap;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 141
    .local v0, refCount:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 142
    iget-object v1, p0, Lcom/android/email/provider/ContentCache$CounterMap;->mMap:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :goto_0
    monitor-exit p0

    return-void

    .line 144
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/email/provider/ContentCache$CounterMap;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 140
    .end local v0           #refCount:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, this:Lcom/android/email/provider/ContentCache$CounterMap;,"Lcom/android/email/provider/ContentCache$CounterMap<TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/provider/ContentCache$CounterMap;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getCount(Ljava/lang/Object;)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, this:Lcom/android/email/provider/ContentCache$CounterMap;,"Lcom/android/email/provider/ContentCache$CounterMap<TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/provider/ContentCache$CounterMap;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    .local v0, refCount:Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 153
    .end local v0           #refCount:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized size()I
    .locals 1

    .prologue
    .line 158
    .local p0, this:Lcom/android/email/provider/ContentCache$CounterMap;,"Lcom/android/email/provider/ContentCache$CounterMap<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/provider/ContentCache$CounterMap;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized subtract(Ljava/lang/Object;)I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/android/email/provider/ContentCache$CounterMap;,"Lcom/android/email/provider/ContentCache$CounterMap<TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    const/4 v3, 0x1

    .line 124
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/provider/ContentCache$CounterMap;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 126
    .local v1, refCount:Ljava/lang/Integer;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    .line 127
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .end local v1           #refCount:Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 129
    .restart local v1       #refCount:Ljava/lang/Integer;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, v3, :cond_2

    .line 130
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v0, v2, v3

    .line 131
    .local v0, newCount:I
    iget-object v2, p0, Lcom/android/email/provider/ContentCache$CounterMap;->mMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    :goto_0
    monitor-exit p0

    return v0

    .line 133
    .end local v0           #newCount:I
    :cond_2
    const/4 v0, 0x0

    .line 134
    .restart local v0       #newCount:I
    :try_start_2
    iget-object v2, p0, Lcom/android/email/provider/ContentCache$CounterMap;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
