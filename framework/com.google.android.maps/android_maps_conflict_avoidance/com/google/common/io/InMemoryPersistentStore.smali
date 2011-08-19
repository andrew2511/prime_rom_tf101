.class public Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;
.super Ljava/lang/Object;
.source "InMemoryPersistentStore.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;


# instance fields
.field private blocks:Ljava/util/Hashtable;

.field private final prefs:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;->prefs:Ljava/util/Hashtable;

    .line 27
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;->blocks:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public declared-synchronized deleteAllBlocks(Ljava/lang/String;)V
    .registers 6
    .parameter "namePrefix"

    .prologue
    .line 88
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;->blocks:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 89
    .local v1, keys:Ljava/util/Enumeration;
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 90
    .local v2, newBlocks:Ljava/util/Hashtable;
    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 91
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 92
    .local v0, key:Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 93
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;->blocks:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_28

    goto :goto_c

    .line 88
    .end local v0           #key:Ljava/lang/String;
    .end local v1           #keys:Ljava/util/Enumeration;
    .end local v2           #newBlocks:Ljava/util/Hashtable;
    :catchall_28
    move-exception v3

    monitor-exit p0

    throw v3

    .line 96
    .restart local v1       #keys:Ljava/util/Enumeration;
    .restart local v2       #newBlocks:Ljava/util/Hashtable;
    :cond_2b
    :try_start_2b
    iput-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;->blocks:Ljava/util/Hashtable;
    :try_end_2d
    .catchall {:try_start_2b .. :try_end_2d} :catchall_28

    .line 97
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized deleteBlock(Ljava/lang/String;)Z
    .registers 3
    .parameter "name"

    .prologue
    .line 76
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;->blocks:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 77
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;->blocks:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_13

    .line 78
    const/4 v0, 0x1

    .line 81
    :goto_f
    monitor-exit p0

    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_f

    .line 76
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized listBlocks(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .parameter "namePrefix"

    .prologue
    .line 163
    monitor-enter p0

    :try_start_1
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 164
    .local v2, resultVector:Ljava/util/Vector;
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;->blocks:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 165
    .local v1, keys:Ljava/util/Enumeration;
    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 166
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 167
    .local v0, key:Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 168
    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_22

    goto :goto_c

    .line 163
    .end local v0           #key:Ljava/lang/String;
    .end local v1           #keys:Ljava/util/Enumeration;
    .end local v2           #resultVector:Ljava/util/Vector;
    :catchall_22
    move-exception v4

    monitor-exit p0

    throw v4

    .line 171
    .restart local v1       #keys:Ljava/util/Enumeration;
    .restart local v2       #resultVector:Ljava/util/Vector;
    :cond_25
    :try_start_25
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    .line 172
    .local v3, results:[Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_22

    .line 174
    monitor-exit p0

    return-object v3
.end method

.method public readBlock(Ljava/lang/String;)[B
    .registers 3
    .parameter "name"

    .prologue
    .line 134
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;->blocks:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [B

    check-cast p0, [B

    return-object p0
.end method

.method public readPreference(Ljava/lang/String;)[B
    .registers 3
    .parameter "name"

    .prologue
    .line 194
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;->prefs:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [B

    check-cast p0, [B

    return-object p0
.end method

.method public savePreferences()V
    .registers 1

    .prologue
    .line 213
    return-void
.end method

.method public setPreference(Ljava/lang/String;[B)Z
    .registers 4
    .parameter "name"
    .parameter "data"

    .prologue
    .line 181
    if-nez p2, :cond_9

    .line 182
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;->prefs:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :goto_7
    const/4 v0, 0x1

    return v0

    .line 184
    :cond_9
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;->prefs:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7
.end method

.method public declared-synchronized writeBlock([BLjava/lang/String;)I
    .registers 4
    .parameter "data"
    .parameter "name"

    .prologue
    .line 123
    monitor-enter p0

    if-nez p1, :cond_6

    .line 124
    const/4 v0, 0x0

    :try_start_4
    new-array p1, v0, [B

    .line 126
    :cond_6
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;->blocks:Ljava/util/Hashtable;

    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    array-length v0, p1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_e

    monitor-exit p0

    return v0

    .line 123
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public writeBlockX([BLjava/lang/String;)I
    .registers 4
    .parameter "data"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;->writeBlock([BLjava/lang/String;)I

    move-result v0

    return v0
.end method
