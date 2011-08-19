.class public abstract Lcom/google/android/apps/books/sync/BaseStatesSynchronizable;
.super Ljava/lang/Object;
.source "BaseStatesSynchronizable.java"

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


# instance fields
.field private final mAccountName:Ljava/lang/String;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSyncAdapter:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/google/android/apps/books/sync/BaseStatesSynchronizable;->createColumnToClass()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/sync/BaseStatesSynchronizable;->sColumnToClass:Ljava/util/Map;

    .line 33
    invoke-static {}, Lcom/google/android/apps/books/sync/BaseStatesSynchronizable;->createProjection()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/sync/BaseStatesSynchronizable;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 1
    .parameter "resolver"
    .parameter "accountName"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "missing resolver"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/BaseStatesSynchronizable;->mResolver:Landroid/content/ContentResolver;

    .line 44
    const-string v0, "missing accountName"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/BaseStatesSynchronizable;->mAccountName:Ljava/lang/String;

    .line 45
    iput-boolean p3, p0, Lcom/google/android/apps/books/sync/BaseStatesSynchronizable;->mSyncAdapter:Z

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
    .line 53
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-static {}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getStateColumnToClass()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 55
    .local v0, map:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method private static createProjection()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    sget-object v0, Lcom/google/android/apps/books/sync/BaseStatesSynchronizable;->sColumnToClass:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/books/sync/BaseStatesSynchronizable;->sColumnToClass:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected static getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/google/android/apps/books/sync/BaseStatesSynchronizable;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected checkValues(Landroid/content/ContentValues;)V
    .locals 5
    .parameter "values"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 144
    const-string v2, "position"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move v1, v4

    .line 145
    .local v1, hasPosition:Z
    :goto_0
    const-string v2, "last_access"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_1

    move v0, v4

    .line 146
    .local v0, hasLastAccess:Z
    :goto_1
    if-ne v1, v0, :cond_2

    move v2, v4

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "position and last_access not paired in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 149
    return-void

    .end local v0           #hasLastAccess:Z
    .end local v1           #hasPosition:Z
    :cond_0
    move v1, v3

    .line 144
    goto :goto_0

    .restart local v1       #hasPosition:Z
    :cond_1
    move v0, v3

    .line 145
    goto :goto_1

    .restart local v0       #hasLastAccess:Z
    :cond_2
    move v2, v3

    .line 146
    goto :goto_2
.end method

.method public delete(Ljava/util/Collection;)V
    .locals 0
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
    .line 130
    .local p1, rows:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/content/ContentValues;>;"
    return-void
.end method

.method public abstract extractUpdates(Landroid/content/ContentValues;Landroid/content/ContentValues;)Landroid/content/ContentValues;
.end method

.method protected getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/books/sync/BaseStatesSynchronizable;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method protected getDirUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 133
    sget-object v1, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Lcom/google/android/apps/books/provider/BooksContract;->markLocal(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 134
    .local v0, uri:Landroid/net/Uri;
    iget-boolean v1, p0, Lcom/google/android/apps/books/sync/BaseStatesSynchronizable;->mSyncAdapter:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/apps/books/provider/BooksContract;->markAsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method protected getItemUri(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .parameter "values"

    .prologue
    .line 138
    const-string v2, "volume_id"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, volumeId:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/books/sync/BaseStatesSynchronizable;->mAccountName:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates;->buildItemUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/books/provider/BooksContract;->markLocal(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 140
    .local v0, uri:Landroid/net/Uri;
    iget-boolean v2, p0, Lcom/google/android/apps/books/sync/BaseStatesSynchronizable;->mSyncAdapter:Z

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/google/android/apps/books/provider/BooksContract;->markAsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    move-object v2, v0

    goto :goto_0
.end method

.method protected getResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/books/sync/BaseStatesSynchronizable;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public getRowKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "volume_id"

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
    .line 86
    sget-object v0, Lcom/google/android/apps/books/sync/BaseStatesSynchronizable;->sColumnToClass:Ljava/util/Map;

    return-object v0
.end method

.method public insert(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .parameter "values"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/apps/books/sync/BaseStatesSynchronizable;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/google/android/apps/books/sync/BaseStatesSynchronizable;->getDirUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/content/ContentValues;)Landroid/database/Cursor;
    .locals 6
    .parameter "values"

    .prologue
    const/4 v3, 0x0

    .line 101
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/sync/BaseStatesSynchronizable;->getItemUri(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 102
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/apps/books/sync/BaseStatesSynchronizable;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/android/apps/books/sync/BaseStatesSynchronizable;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryAll()Landroid/database/Cursor;
    .locals 7

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/apps/books/sync/BaseStatesSynchronizable;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/google/android/apps/books/sync/BaseStatesSynchronizable;->getDirUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/books/sync/BaseStatesSynchronizable;->PROJECTION:[Ljava/lang/String;

    const-string v3, "account_name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/apps/books/sync/BaseStatesSynchronizable;->mAccountName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public abstract update(Landroid/content/ContentValues;Landroid/content/ContentValues;)I
.end method
