.class public Lcom/google/android/syncadapters/EntityReader;
.super Ljava/lang/Object;
.source "EntityReader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;
    }
.end annotation


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mEntityEndMarker:Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;

.field private final mEntityQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntryEndMarker:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/wireless/gdata2/data/Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntryQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/wireless/gdata2/data/Entry;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile mForcedClosed:Z

.field private final mHandler:Lcom/google/android/syncadapters/EntryAndEntityHandler;

.field private final mIdQueryColumn:Ljava/lang/String;

.field private final mLogTag:Ljava/lang/String;

.field private mNumRemoteExceptions:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mProvider:Landroid/content/ContentProviderClient;

.field private volatile mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/util/concurrent/BlockingQueue;Landroid/util/Pair;Ljava/util/concurrent/BlockingQueue;Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;Lcom/google/android/syncadapters/EntryAndEntityHandler;Ljava/lang/String;)V
    .locals 2
    .parameter "logTag"
    .parameter "provider"
    .parameter "account"
    .parameter
    .parameter
    .parameter
    .parameter "entityEndMarker"
    .parameter "handler"
    .parameter "idColumn"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/ContentProviderClient;",
            "Landroid/accounts/Account;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/wireless/gdata2/data/Entry;",
            ">;>;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/wireless/gdata2/data/Entry;",
            ">;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;",
            ">;",
            "Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;",
            "Lcom/google/android/syncadapters/EntryAndEntityHandler;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, entryQueue:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/wireless/gdata2/data/Entry;>;>;"
    .local p5, entryEndMarker:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/wireless/gdata2/data/Entry;>;"
    .local p6, entityQueue:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;>;"
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/syncadapters/EntityReader;->mNumRemoteExceptions:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 74
    iput-object p1, p0, Lcom/google/android/syncadapters/EntityReader;->mLogTag:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lcom/google/android/syncadapters/EntityReader;->mProvider:Landroid/content/ContentProviderClient;

    .line 76
    iput-object p4, p0, Lcom/google/android/syncadapters/EntityReader;->mEntryQueue:Ljava/util/concurrent/BlockingQueue;

    .line 77
    iput-object p6, p0, Lcom/google/android/syncadapters/EntityReader;->mEntityQueue:Ljava/util/concurrent/BlockingQueue;

    .line 78
    iput-object p3, p0, Lcom/google/android/syncadapters/EntityReader;->mAccount:Landroid/accounts/Account;

    .line 79
    iput-object p5, p0, Lcom/google/android/syncadapters/EntityReader;->mEntryEndMarker:Landroid/util/Pair;

    .line 80
    iput-object p7, p0, Lcom/google/android/syncadapters/EntityReader;->mEntityEndMarker:Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;

    .line 81
    iput-object p8, p0, Lcom/google/android/syncadapters/EntityReader;->mHandler:Lcom/google/android/syncadapters/EntryAndEntityHandler;

    .line 82
    iput-boolean v1, p0, Lcom/google/android/syncadapters/EntityReader;->mForcedClosed:Z

    .line 83
    iput-object p9, p0, Lcom/google/android/syncadapters/EntityReader;->mIdQueryColumn:Ljava/lang/String;

    .line 84
    return-void
.end method

.method private readBatch(Ljava/util/List;)V
    .locals 19
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/wireless/gdata2/data/Entry;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 153
    .local p1, entries:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/wireless/gdata2/data/Entry;>;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/EntityReader;->mIdQueryColumn:Ljava/lang/String;

    move-object v5, v0

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " in ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 154
    .local v17, sb:Ljava/lang/StringBuilder;
    const-string v18, ""

    .line 155
    .local v18, separator:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    .line 156
    .local v13, entry:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/wireless/gdata2/data/Entry;>;"
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string v18, ","

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/EntityReader;->mHandler:Lcom/google/android/syncadapters/EntryAndEntityHandler;

    move-object v5, v0

    iget-object v4, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual {v4}, Lcom/google/wireless/gdata2/data/Entry;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->idToSourceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0

    .line 160
    .end local v13           #entry:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/wireless/gdata2/data/Entry;>;"
    :cond_0
    const-string v4, ")"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v11

    .line 163
    .local v11, entities:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/content/Entity;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/EntityReader;->mLogTag:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/EntityReader;->mLogTag:Ljava/lang/String;

    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "querying batch of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " entities for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/EntityReader;->mHandler:Lcom/google/android/syncadapters/EntryAndEntityHandler;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/EntityReader;->mProvider:Landroid/content/ContentProviderClient;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/EntityReader;->mAccount:Landroid/accounts/Account;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface/range {v4 .. v9}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->newEntityIterator(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/lang/Long;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/EntityIterator;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 169
    .local v16, iterator:Landroid/content/EntityIterator;
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/syncadapters/EntityReader;->mForcedClosed:Z

    move v4, v0

    if-nez v4, :cond_3

    invoke-interface/range {v16 .. v16}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 170
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/syncadapters/EntityReader;->mForcedClosed:Z

    move v4, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_2

    .line 182
    :try_start_2
    invoke-interface/range {v16 .. v16}, Landroid/content/EntityIterator;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 187
    .end local v16           #iterator:Landroid/content/EntityIterator;
    .end local p1           #entries:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/wireless/gdata2/data/Entry;>;>;"
    :goto_2
    return-void

    .line 173
    .restart local v16       #iterator:Landroid/content/EntityIterator;
    .restart local p1       #entries:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/wireless/gdata2/data/Entry;>;>;"
    :cond_2
    :try_start_3
    invoke-interface/range {v16 .. v16}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Entity;

    .line 174
    .local v12, entity:Landroid/content/Entity;
    invoke-virtual {v12}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/EntityReader;->mIdQueryColumn:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 175
    .local v15, id:Ljava/lang/String;
    invoke-interface {v11, v15, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 182
    .end local v12           #entity:Landroid/content/Entity;
    .end local v15           #id:Ljava/lang/String;
    .end local p1           #entries:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/wireless/gdata2/data/Entry;>;>;"
    :catchall_0
    move-exception v4

    :try_start_4
    invoke-interface/range {v16 .. v16}, Landroid/content/EntityIterator;->close()V

    throw v4
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 184
    .end local v16           #iterator:Landroid/content/EntityIterator;
    :catch_0
    move-exception v4

    move-object v10, v4

    .line 185
    .local v10, e:Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/EntityReader;->mNumRemoteExceptions:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_2

    .line 177
    .end local v10           #e:Landroid/os/RemoteException;
    .restart local v16       #iterator:Landroid/content/EntityIterator;
    .restart local p1       #entries:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/wireless/gdata2/data/Entry;>;>;"
    :cond_3
    :try_start_5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .end local p1           #entries:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/wireless/gdata2/data/Entry;>;>;"
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    .line 178
    .restart local v13       #entry:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/wireless/gdata2/data/Entry;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/EntityReader;->mHandler:Lcom/google/android/syncadapters/EntryAndEntityHandler;

    move-object v4, v0

    move-object v0, v13

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Lcom/google/wireless/gdata2/data/Entry;

    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/gdata2/data/Entry;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/android/syncadapters/EntryAndEntityHandler;->idToSourceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Entity;

    .line 179
    .restart local v12       #entity:Landroid/content/Entity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/syncadapters/EntityReader;->mEntityQueue:Ljava/util/concurrent/BlockingQueue;

    move-object v5, v0

    new-instance v6, Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;

    move-object v0, v13

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Lcom/google/wireless/gdata2/data/Entry;

    iget-object v4, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v0, v6

    move-object/from16 v1, p1

    move v2, v4

    move-object v3, v12

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;-><init>(Lcom/google/wireless/gdata2/data/Entry;ILandroid/content/Entity;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 182
    .end local v12           #entity:Landroid/content/Entity;
    .end local v13           #entry:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/wireless/gdata2/data/Entry;>;"
    :cond_4
    :try_start_6
    invoke-interface/range {v16 .. v16}, Landroid/content/EntityIterator;->close()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2
.end method

.method private readEntities()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 109
    iget-object v2, p0, Lcom/google/android/syncadapters/EntityReader;->mLogTag:Ljava/lang/String;

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    iget-object v2, p0, Lcom/google/android/syncadapters/EntityReader;->mLogTag:Ljava/lang/String;

    const-string v3, "readEntities"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 113
    .local v0, entries:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/wireless/gdata2/data/Entry;>;>;"
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/google/android/syncadapters/EntityReader;->mForcedClosed:Z

    if-nez v2, :cond_3

    .line 114
    iget-object v2, p0, Lcom/google/android/syncadapters/EntityReader;->mEntryQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 115
    .local v1, idAndEntry:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/wireless/gdata2/data/Entry;>;"
    iget-object v2, p0, Lcom/google/android/syncadapters/EntityReader;->mEntryEndMarker:Landroid/util/Pair;

    if-ne v1, v2, :cond_6

    .line 116
    iget-object v2, p0, Lcom/google/android/syncadapters/EntityReader;->mLogTag:Ljava/lang/String;

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 117
    iget-object v2, p0, Lcom/google/android/syncadapters/EntityReader;->mLogTag:Ljava/lang/String;

    const-string v3, "read idAndEntry end marker from queue"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 120
    invoke-direct {p0, v0}, Lcom/google/android/syncadapters/EntityReader;->readBatch(Ljava/util/List;)V

    .line 121
    iget-boolean v2, p0, Lcom/google/android/syncadapters/EntityReader;->mForcedClosed:Z

    if-eqz v2, :cond_4

    .line 142
    .end local v1           #idAndEntry:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/wireless/gdata2/data/Entry;>;"
    :cond_3
    :goto_1
    return-void

    .line 124
    .restart local v1       #idAndEntry:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Lcom/google/wireless/gdata2/data/Entry;>;"
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 126
    :cond_5
    iget-object v2, p0, Lcom/google/android/syncadapters/EntityReader;->mEntityQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v3, p0, Lcom/google/android/syncadapters/EntityReader;->mEntityEndMarker:Lcom/google/android/syncadapters/EntityReader$EntryEntityItem;

    invoke-interface {v2, v3}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_1

    .line 129
    :cond_6
    iget-object v2, p0, Lcom/google/android/syncadapters/EntityReader;->mLogTag:Ljava/lang/String;

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 130
    iget-object v2, p0, Lcom/google/android/syncadapters/EntityReader;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read idAndEntry from queue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_1

    .line 136
    invoke-direct {p0, v0}, Lcom/google/android/syncadapters/EntityReader;->readBatch(Ljava/util/List;)V

    .line 137
    iget-boolean v2, p0, Lcom/google/android/syncadapters/EntityReader;->mForcedClosed:Z

    if-nez v2, :cond_3

    .line 140
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/syncadapters/EntityReader;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/syncadapters/EntityReader;->mForcedClosed:Z

    .line 104
    iget-object v0, p0, Lcom/google/android/syncadapters/EntityReader;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 106
    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    .line 87
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/syncadapters/EntityReader;->mThread:Ljava/lang/Thread;

    .line 88
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 90
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/syncadapters/EntityReader;->readEntities()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/syncadapters/EntityReader;->mThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    iget-boolean v0, p0, Lcom/google/android/syncadapters/EntityReader;->mForcedClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/syncadapters/EntityReader;->mLogTag:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/google/android/syncadapters/EntityReader;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EntityReader thread ended: mForcedClosed is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/syncadapters/EntityReader;->mForcedClosed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_1
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 95
    iget-boolean v0, p0, Lcom/google/android/syncadapters/EntityReader;->mForcedClosed:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/syncadapters/EntityReader;->mLogTag:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/google/android/syncadapters/EntityReader;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EntityReader thread ended: mForcedClosed is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/syncadapters/EntityReader;->mForcedClosed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    iget-boolean v1, p0, Lcom/google/android/syncadapters/EntityReader;->mForcedClosed:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/syncadapters/EntityReader;->mLogTag:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 96
    :cond_3
    iget-object v1, p0, Lcom/google/android/syncadapters/EntityReader;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EntityReader thread ended: mForcedClosed is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/syncadapters/EntityReader;->mForcedClosed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    throw v0
.end method
