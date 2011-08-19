.class public Lcom/google/android/apps/books/sync/CollectionVolumesServerSynchronizable;
.super Lcom/google/android/apps/books/sync/BaseCollectionVolumesSynchronizable;
.source "CollectionVolumesServerSynchronizable.java"


# static fields
.field private static final UPDATE_SELECTION:Ljava/lang/String; = "timestamp=? AND dirty!=?"

.field private static final sEmptyValues:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/google/android/apps/books/sync/CollectionVolumesServerSynchronizable;->sEmptyValues:Landroid/content/ContentValues;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;J)V
    .locals 0
    .parameter "resolver"
    .parameter "accountName"
    .parameter "collectionId"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/apps/books/sync/BaseCollectionVolumesSynchronizable;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    .line 38
    return-void
.end method


# virtual methods
.method public delete(Ljava/util/Collection;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, rows:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/content/ContentValues;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    :goto_0
    return-void

    .line 94
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dirty!=1 AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "volume_id"

    invoke-static {p1, v2}, Lcom/google/android/apps/books/sync/SyncUtil;->buildInClause(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, whereClause:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/books/sync/CollectionVolumesServerSynchronizable;->getResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/books/sync/CollectionVolumesServerSynchronizable;->getDirUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public extractUpdates(Landroid/content/ContentValues;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 8
    .parameter "oldValues"
    .parameter "newValues"

    .prologue
    const/4 v7, 0x0

    const-string v6, "dirty"

    .line 51
    const-string v4, "dirty"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    const-string v5, "dirty not allowed; value controlled by synchronizable"

    invoke-static {v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 54
    const-string v4, "dirty"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 55
    .local v1, oldDirty:J
    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-nez v4, :cond_1

    .line 57
    sget-object v4, Lcom/google/android/apps/books/sync/CollectionVolumesServerSynchronizable;->sEmptyValues:Landroid/content/ContentValues;

    .line 69
    :goto_1
    return-object v4

    .end local v1           #oldDirty:J
    :cond_0
    move v4, v7

    .line 51
    goto :goto_0

    .line 60
    .restart local v1       #oldDirty:J
    :cond_1
    invoke-static {p1, p2}, Lcom/google/android/apps/books/sync/SyncUtil;->extractUpdates(Landroid/content/ContentValues;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v3

    .line 61
    .local v3, updates:Landroid/content/ContentValues;
    const-wide/16 v4, 0x1

    cmp-long v4, v1, v4

    if-nez v4, :cond_2

    .line 63
    const-string v4, "dirty"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 67
    :cond_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 68
    .local v0, copy:Landroid/content/ContentValues;
    const-string v4, "timestamp"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/google/android/apps/books/sync/CollectionVolumesServerSynchronizable;->sEmptyValues:Landroid/content/ContentValues;

    goto :goto_1

    :cond_3
    move-object v4, v3

    goto :goto_1
.end method

.method public queryAllForUpsync()Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 76
    const-string v6, "dirty!=?"

    .line 77
    .local v6, selection:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 78
    .local v4, selectionArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/books/sync/CollectionVolumesServerSynchronizable;->getResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/books/sync/CollectionVolumesServerSynchronizable;->getDirUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/google/android/apps/books/sync/CollectionVolumesServerSynchronizable;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "dirty!=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/content/ContentValues;Landroid/content/ContentValues;)I
    .locals 8
    .parameter "oldValues"
    .parameter "updateValues"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 42
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/sync/CollectionVolumesServerSynchronizable;->getItemUri(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 43
    .local v2, uri:Landroid/net/Uri;
    const-string v3, "timestamp"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, oldTime:Ljava/lang/String;
    if-eqz v0, :cond_0

    move v3, v7

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "oldValues missing TIMESTAMP: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    aput-object v0, v1, v6

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v7

    .line 46
    .local v1, selectionArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/books/sync/CollectionVolumesServerSynchronizable;->getResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "timestamp=? AND dirty!=?"

    invoke-virtual {v3, v2, p2, v4, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3

    .end local v1           #selectionArgs:[Ljava/lang/String;
    :cond_0
    move v3, v6

    .line 44
    goto :goto_0
.end method
