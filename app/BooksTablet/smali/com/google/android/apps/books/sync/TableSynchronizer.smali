.class public Lcom/google/android/apps/books/sync/TableSynchronizer;
.super Ljava/lang/Object;
.source "TableSynchronizer.java"


# static fields
.field private static final MAX_SYNC_TRIES:I = 0x5

.field private static final TAG:Ljava/lang/String; = "TableSynchronizer"


# instance fields
.field private mSynchronizable:Lcom/google/android/apps/books/sync/Synchronizable;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/sync/Synchronizable;)V
    .locals 5
    .parameter "synchronizable"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v2, "missing synchronizable"

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/books/sync/Synchronizable;

    iput-object v2, p0, Lcom/google/android/apps/books/sync/TableSynchronizer;->mSynchronizable:Lcom/google/android/apps/books/sync/Synchronizable;

    .line 58
    iget-object v2, p0, Lcom/google/android/apps/books/sync/TableSynchronizer;->mSynchronizable:Lcom/google/android/apps/books/sync/Synchronizable;

    invoke-interface {v2}, Lcom/google/android/apps/books/sync/Synchronizable;->getRowKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "missing rowKey"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 60
    .local v1, rowKey:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/books/sync/TableSynchronizer;->mSynchronizable:Lcom/google/android/apps/books/sync/Synchronizable;

    invoke-interface {v2}, Lcom/google/android/apps/books/sync/Synchronizable;->getWritableColumnToClass()Ljava/util/Map;

    move-result-object v0

    .line 61
    .local v0, columnToClass:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rowKey "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not one of the table\'s columns "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 64
    return-void
.end method

.method private createKeyToDbRow()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    iget-object v5, p0, Lcom/google/android/apps/books/sync/TableSynchronizer;->mSynchronizable:Lcom/google/android/apps/books/sync/Synchronizable;

    invoke-interface {v5}, Lcom/google/android/apps/books/sync/Synchronizable;->queryAll()Landroid/database/Cursor;

    move-result-object v1

    .line 156
    .local v1, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v5, p0, Lcom/google/android/apps/books/sync/TableSynchronizer;->mSynchronizable:Lcom/google/android/apps/books/sync/Synchronizable;

    invoke-interface {v5}, Lcom/google/android/apps/books/sync/Synchronizable;->getRowKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 157
    .local v2, index:I
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-static {v5}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v3

    .line 159
    .local v3, keyToRow:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/content/ContentValues;>;"
    iget-object v5, p0, Lcom/google/android/apps/books/sync/TableSynchronizer;->mSynchronizable:Lcom/google/android/apps/books/sync/Synchronizable;

    invoke-interface {v5}, Lcom/google/android/apps/books/sync/Synchronizable;->getWritableColumnToClass()Ljava/util/Map;

    move-result-object v0

    .line 161
    .local v0, columnToClass:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 162
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 163
    .local v4, rowKeyValue:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/google/android/apps/books/sync/SyncUtil;->cursorToValues(Landroid/database/Cursor;Ljava/util/Map;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 168
    .end local v0           #columnToClass:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .end local v2           #index:I
    .end local v3           #keyToRow:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/content/ContentValues;>;"
    .end local v4           #rowKeyValue:Ljava/lang/String;
    :catchall_0
    move-exception v5

    if-eqz v1, :cond_0

    .line 169
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v5

    .line 168
    .restart local v0       #columnToClass:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .restart local v2       #index:I
    .restart local v3       #keyToRow:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/content/ContentValues;>;"
    :cond_1
    if-eqz v1, :cond_2

    .line 169
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v3
.end method

.method private createKeyToValues(Ljava/lang/Iterable;)Ljava/util/LinkedHashMap;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, valuesIter:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Landroid/content/ContentValues;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 119
    .local v1, keyToValues:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Landroid/content/ContentValues;>;"
    iget-object v7, p0, Lcom/google/android/apps/books/sync/TableSynchronizer;->mSynchronizable:Lcom/google/android/apps/books/sync/Synchronizable;

    invoke-interface {v7}, Lcom/google/android/apps/books/sync/Synchronizable;->getRowKey()Ljava/lang/String;

    move-result-object v4

    .line 120
    .local v4, rowKey:Ljava/lang/String;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 121
    .local v6, values:Landroid/content/ContentValues;
    invoke-direct {p0, v6}, Lcom/google/android/apps/books/sync/TableSynchronizer;->filterValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v5

    .line 122
    .local v5, subset:Landroid/content/ContentValues;
    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, keyValue:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 124
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Key "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " missing in subset "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 126
    :cond_1
    invoke-virtual {v6, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 127
    .local v3, oldValues:Landroid/content/ContentValues;
    if-eqz v3, :cond_0

    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 128
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Inconsistent values, overriding "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " with "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 132
    .end local v2           #keyValue:Ljava/lang/String;
    .end local v3           #oldValues:Landroid/content/ContentValues;
    .end local v5           #subset:Landroid/content/ContentValues;
    .end local v6           #values:Landroid/content/ContentValues;
    :cond_2
    return-object v1
.end method

.method private filterValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 6
    .parameter "values"

    .prologue
    .line 138
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, p1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 139
    .local v2, subset:Landroid/content/ContentValues;
    iget-object v4, p0, Lcom/google/android/apps/books/sync/TableSynchronizer;->mSynchronizable:Lcom/google/android/apps/books/sync/Synchronizable;

    invoke-interface {v4}, Lcom/google/android/apps/books/sync/Synchronizable;->getWritableColumnToClass()Ljava/util/Map;

    move-result-object v0

    .line 140
    .local v0, columnToClass:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0
    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 141
    .local v3, value:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 142
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v2, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 145
    .end local v3           #value:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-object v2
.end method

.method private getCurrentRow(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 5
    .parameter "subset"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 216
    iget-object v1, p0, Lcom/google/android/apps/books/sync/TableSynchronizer;->mSynchronizable:Lcom/google/android/apps/books/sync/Synchronizable;

    invoke-interface {v1, p1}, Lcom/google/android/apps/books/sync/Synchronizable;->query(Landroid/content/ContentValues;)Landroid/database/Cursor;

    move-result-object v0

    .line 218
    .local v0, itemCursor:Landroid/database/Cursor;
    if-nez v0, :cond_2

    .line 229
    if-eqz v0, :cond_0

    .line 230
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v1, v4

    :cond_1
    :goto_0
    return-object v1

    .line 221
    :cond_2
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v2, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_6

    .line 222
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-le v1, v2, :cond_4

    .line 223
    const-string v1, "TableSynchronizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Row not uniquely specified by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    :cond_4
    if-eqz v0, :cond_5

    .line 230
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v1, v4

    goto :goto_0

    .line 227
    :cond_6
    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/books/sync/TableSynchronizer;->mSynchronizable:Lcom/google/android/apps/books/sync/Synchronizable;

    invoke-interface {v1}, Lcom/google/android/apps/books/sync/Synchronizable;->getWritableColumnToClass()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/books/sync/SyncUtil;->cursorToValues(Landroid/database/Cursor;Ljava/util/Map;)Landroid/content/ContentValues;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 229
    if-eqz v0, :cond_1

    .line 230
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 229
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_7

    .line 230
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v1
.end method

.method private syncRow(Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 8
    .parameter "origRow"
    .parameter "subset"

    .prologue
    .line 237
    const/4 v2, 0x0

    .line 238
    .local v2, i:I
    const/4 v1, 0x0

    .line 239
    .local v1, hasSynched:Z
    move-object v0, p1

    .line 241
    .local v0, currentRow:Landroid/content/ContentValues;
    :goto_0
    if-nez v1, :cond_1

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    .line 242
    invoke-direct {p0, v0, p2}, Lcom/google/android/apps/books/sync/TableSynchronizer;->trySyncRow(Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 243
    const/4 v1, 0x1

    .line 249
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 247
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/apps/books/sync/TableSynchronizer;->getCurrentRow(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    goto :goto_1

    .line 251
    :cond_1
    if-nez v1, :cond_2

    .line 254
    const-string v3, "TableSynchronizer"

    const-string v4, ""

    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot synchronize "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (originally "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") with values "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    :cond_2
    return-void
.end method

.method private trySyncRow(Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    .locals 7
    .parameter "currentRow"
    .parameter "subset"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 184
    if-nez p1, :cond_0

    .line 186
    :try_start_0
    iget-object v3, p0, Lcom/google/android/apps/books/sync/TableSynchronizer;->mSynchronizable:Lcom/google/android/apps/books/sync/Synchronizable;

    invoke-interface {v3, p2}, Lcom/google/android/apps/books/sync/Synchronizable;->insert(Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 206
    :goto_0
    return v3

    .line 188
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 191
    .local v0, e:Landroid/database/sqlite/SQLiteConstraintException;
    const-string v3, "TableSynchronizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Conflict when inserting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nvalues: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v6

    .line 192
    goto :goto_0

    .line 195
    .end local v0           #e:Landroid/database/sqlite/SQLiteConstraintException;
    :cond_0
    iget-object v3, p0, Lcom/google/android/apps/books/sync/TableSynchronizer;->mSynchronizable:Lcom/google/android/apps/books/sync/Synchronizable;

    invoke-interface {v3, p1, p2}, Lcom/google/android/apps/books/sync/Synchronizable;->extractUpdates(Landroid/content/ContentValues;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v2

    .line 196
    .local v2, updates:Landroid/content/ContentValues;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move v3, v4

    .line 198
    goto :goto_0

    .line 201
    :cond_2
    iget-object v3, p0, Lcom/google/android/apps/books/sync/TableSynchronizer;->mSynchronizable:Lcom/google/android/apps/books/sync/Synchronizable;

    invoke-interface {v3, p1, v2}, Lcom/google/android/apps/books/sync/Synchronizable;->update(Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v1

    .line 202
    .local v1, rowCount:I
    if-le v1, v4, :cond_3

    .line 203
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updated "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "rows, expected 0 or 1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 206
    :cond_3
    if-lez v1, :cond_4

    move v3, v4

    goto :goto_0

    :cond_4
    move v3, v6

    goto :goto_0
.end method


# virtual methods
.method public syncRow(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/sync/TableSynchronizer;->filterValues(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v1

    .line 104
    .local v1, subset:Landroid/content/ContentValues;
    invoke-direct {p0, v1}, Lcom/google/android/apps/books/sync/TableSynchronizer;->getCurrentRow(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    .line 105
    .local v0, currentRow:Landroid/content/ContentValues;
    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/books/sync/TableSynchronizer;->syncRow(Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 106
    return-void
.end method

.method public syncRows(Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, valuesList:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Landroid/content/ContentValues;>;"
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/sync/TableSynchronizer;->createKeyToValues(Ljava/lang/Iterable;)Ljava/util/LinkedHashMap;

    move-result-object v5

    .line 80
    .local v5, keyToValues:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Landroid/content/ContentValues;>;"
    invoke-direct {p0}, Lcom/google/android/apps/books/sync/TableSynchronizer;->createKeyToDbRow()Ljava/util/HashMap;

    move-result-object v4

    .line 82
    .local v4, keyToDbRow:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/content/ContentValues;>;"
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 83
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ContentValues;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 86
    .local v6, keyValue:Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 87
    .local v0, currentRow:Landroid/content/ContentValues;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    invoke-direct {p0, v0, v7}, Lcom/google/android/apps/books/sync/TableSynchronizer;->syncRow(Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 90
    .end local v0           #currentRow:Landroid/content/ContentValues;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ContentValues;>;"
    .end local v6           #keyValue:Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 91
    .local v2, excessRows:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/content/ContentValues;>;"
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 92
    iget-object v7, p0, Lcom/google/android/apps/books/sync/TableSynchronizer;->mSynchronizable:Lcom/google/android/apps/books/sync/Synchronizable;

    invoke-interface {v7, v2}, Lcom/google/android/apps/books/sync/Synchronizable;->delete(Ljava/util/Collection;)V

    .line 94
    :cond_1
    return-object v2
.end method
