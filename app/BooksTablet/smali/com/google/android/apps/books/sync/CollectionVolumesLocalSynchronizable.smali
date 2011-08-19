.class public Lcom/google/android/apps/books/sync/CollectionVolumesLocalSynchronizable;
.super Lcom/google/android/apps/books/sync/BaseCollectionVolumesSynchronizable;
.source "CollectionVolumesLocalSynchronizable.java"


# static fields
.field private static final sEmptyValues:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/google/android/apps/books/sync/CollectionVolumesLocalSynchronizable;->sEmptyValues:Landroid/content/ContentValues;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;J)V
    .locals 0
    .parameter "resolver"
    .parameter "accountName"
    .parameter "collectionId"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/apps/books/sync/BaseCollectionVolumesSynchronizable;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    .line 40
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
    .line 64
    .local p1, rows:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/content/ContentValues;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    :goto_0
    return-void

    .line 69
    :cond_0
    const-string v1, "volume_id"

    invoke-static {p1, v1}, Lcom/google/android/apps/books/sync/SyncUtil;->buildInClause(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, inClause:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/books/sync/CollectionVolumesLocalSynchronizable;->getResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/books/sync/CollectionVolumesLocalSynchronizable;->getDirUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public extractUpdates(Landroid/content/ContentValues;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 7
    .parameter "oldValues"
    .parameter "newValues"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v3, "timestamp"

    .line 53
    const-string v2, "timestamp"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 54
    .local v1, oldTime:Ljava/lang/Long;
    const-string v2, "timestamp"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 55
    .local v0, newTime:Ljava/lang/Long;
    if-eqz v1, :cond_0

    move v2, v6

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "oldValues missing TIMESTAMP: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    if-eqz v0, :cond_1

    move v2, v6

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newValues missing TIMESTAMP: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    invoke-static {p1, p2}, Lcom/google/android/apps/books/sync/SyncUtil;->extractUpdates(Landroid/content/ContentValues;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v2

    :goto_2
    return-object v2

    :cond_0
    move v2, v5

    .line 55
    goto :goto_0

    :cond_1
    move v2, v5

    .line 56
    goto :goto_1

    .line 58
    :cond_2
    sget-object v2, Lcom/google/android/apps/books/sync/CollectionVolumesLocalSynchronizable;->sEmptyValues:Landroid/content/ContentValues;

    goto :goto_2
.end method

.method public update(Landroid/content/ContentValues;Landroid/content/ContentValues;)I
    .locals 5
    .parameter "oldValues"
    .parameter "updateValues"

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/sync/CollectionVolumesLocalSynchronizable;->getItemUri(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 45
    .local v2, uri:Landroid/net/Uri;
    const-string v3, "timestamp"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, oldTime:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    .line 47
    .local v1, selectionArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/books/sync/CollectionVolumesLocalSynchronizable;->getResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "timestamp=?"

    invoke-virtual {v3, v2, p2, v4, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3
.end method
