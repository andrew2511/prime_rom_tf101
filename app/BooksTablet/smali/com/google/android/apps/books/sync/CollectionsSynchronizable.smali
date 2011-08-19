.class public Lcom/google/android/apps/books/sync/CollectionsSynchronizable;
.super Ljava/lang/Object;
.source "CollectionsSynchronizable.java"

# interfaces
.implements Lcom/google/android/apps/books/sync/Synchronizable;


# static fields
.field private static final PROJECTION:[Ljava/lang/String;

.field private static final sColumnToClass:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final sUri:Landroid/net/Uri;


# instance fields
.field private final mAccountName:Ljava/lang/String;

.field private final mDirUri:Landroid/net/Uri;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/google/android/apps/books/sync/CollectionsSynchronizable;->createColumnToClass()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/sync/CollectionsSynchronizable;->sColumnToClass:Ljava/util/Map;

    .line 29
    sget-object v0, Lcom/google/android/apps/books/provider/BooksContract$Collections;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/apps/books/sync/CollectionsSynchronizable;->makeLocal(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/sync/CollectionsSynchronizable;->sUri:Landroid/net/Uri;

    .line 31
    invoke-static {}, Lcom/google/android/apps/books/sync/CollectionsSynchronizable;->createProjection()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/sync/CollectionsSynchronizable;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 1
    .parameter "resolver"
    .parameter "accountName"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/android/apps/books/sync/CollectionsSynchronizable;->mResolver:Landroid/content/ContentResolver;

    .line 44
    iput-object p2, p0, Lcom/google/android/apps/books/sync/CollectionsSynchronizable;->mAccountName:Ljava/lang/String;

    .line 45
    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Collections;->dirUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/books/sync/CollectionsSynchronizable;->makeLocal(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/sync/CollectionsSynchronizable;->mDirUri:Landroid/net/Uri;

    .line 46
    return-void
.end method

.method private static createColumnToClass()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-static {}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getCollectionColumnToClass()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 59
    .local v0, map:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method private static createProjection()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lcom/google/android/apps/books/sync/CollectionsSynchronizable;->sColumnToClass:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/books/sync/CollectionsSynchronizable;->sColumnToClass:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private getItemUri(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .parameter "values"

    .prologue
    .line 68
    const-string v1, "collection_id"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 69
    .local v0, volumeId:Ljava/lang/Long;
    iget-object v1, p0, Lcom/google/android/apps/books/sync/CollectionsSynchronizable;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/books/provider/BooksContract$Collections;->itemUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/books/sync/CollectionsSynchronizable;->makeLocal(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private static makeLocal(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "local"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
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
    .line 128
    .local p1, rows:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/content/ContentValues;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    :goto_0
    return-void

    .line 133
    :cond_0
    const-string v1, "collection_id"

    invoke-static {p1, v1}, Lcom/google/android/apps/books/sync/SyncUtil;->buildInClause(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, inClause:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/books/sync/CollectionsSynchronizable;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/google/android/apps/books/sync/CollectionsSynchronizable;->mDirUri:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public extractUpdates(Landroid/content/ContentValues;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 1
    .parameter "oldValues"
    .parameter "newValues"

    .prologue
    .line 120
    invoke-static {p1, p2}, Lcom/google/android/apps/books/sync/SyncUtil;->extractUpdates(Landroid/content/ContentValues;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getRowKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-string v0, "collection_id"

    return-object v0
.end method

.method public getWritableColumnToClass()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 83
    sget-object v0, Lcom/google/android/apps/books/sync/CollectionsSynchronizable;->sColumnToClass:Ljava/util/Map;

    return-object v0
.end method

.method public insert(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .parameter "values"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/apps/books/sync/CollectionsSynchronizable;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/android/apps/books/sync/CollectionsSynchronizable;->sUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/content/ContentValues;)Landroid/database/Cursor;
    .locals 6
    .parameter "values"

    .prologue
    const/4 v3, 0x0

    .line 98
    iget-object v0, p0, Lcom/google/android/apps/books/sync/CollectionsSynchronizable;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p1}, Lcom/google/android/apps/books/sync/CollectionsSynchronizable;->getItemUri(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/books/sync/CollectionsSynchronizable;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryAll()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 91
    iget-object v0, p0, Lcom/google/android/apps/books/sync/CollectionsSynchronizable;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/google/android/apps/books/sync/CollectionsSynchronizable;->mDirUri:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/apps/books/sync/CollectionsSynchronizable;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/content/ContentValues;Landroid/content/ContentValues;)I
    .locals 3
    .parameter "oldValues"
    .parameter "updateValues"

    .prologue
    const/4 v2, 0x0

    .line 112
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/sync/CollectionsSynchronizable;->getItemUri(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 113
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/android/apps/books/sync/CollectionsSynchronizable;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0, p2, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method
