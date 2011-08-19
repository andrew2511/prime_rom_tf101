.class public abstract Lcom/google/android/apps/books/sync/BaseCollectionVolumesSynchronizable;
.super Ljava/lang/Object;
.source "BaseCollectionVolumesSynchronizable.java"

# interfaces
.implements Lcom/google/android/apps/books/sync/Synchronizable;


# static fields
.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "BaseColVolSync"

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

.field private final mCollectionId:J

.field private final mDirUri:Landroid/net/Uri;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/google/android/apps/books/sync/BaseCollectionVolumesSynchronizable;->createColumnToClass()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/sync/BaseCollectionVolumesSynchronizable;->sColumnToClass:Ljava/util/Map;

    .line 35
    sget-object v0, Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/apps/books/provider/BooksContract;->markLocal(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/books/provider/BooksContract;->markAsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/sync/BaseCollectionVolumesSynchronizable;->sUri:Landroid/net/Uri;

    .line 38
    invoke-static {}, Lcom/google/android/apps/books/sync/BaseCollectionVolumesSynchronizable;->createProjection()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/sync/BaseCollectionVolumesSynchronizable;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;J)V
    .locals 2
    .parameter "resolver"
    .parameter "accountName"
    .parameter "collectionId"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "missing resolver"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/BaseCollectionVolumesSynchronizable;->mResolver:Landroid/content/ContentResolver;

    .line 54
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "missing collectionId"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/books/sync/BaseCollectionVolumesSynchronizable;->mCollectionId:J

    .line 55
    const-string v0, "missing accountName"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/books/sync/BaseCollectionVolumesSynchronizable;->mAccountName:Ljava/lang/String;

    .line 56
    invoke-static {p2, p3, p4}, Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes;->dirUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/books/provider/BooksContract;->markLocal(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/books/provider/BooksContract;->markAsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/sync/BaseCollectionVolumesSynchronizable;->mDirUri:Landroid/net/Uri;

    .line 58
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
    .line 66
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-static {}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getCollectionVolumeColumnToClass()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 68
    .local v0, map:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method private static createProjection()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    sget-object v0, Lcom/google/android/apps/books/sync/BaseCollectionVolumesSynchronizable;->sColumnToClass:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/books/sync/BaseCollectionVolumesSynchronizable;->sColumnToClass:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/google/android/apps/books/sync/BaseCollectionVolumesSynchronizable;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public abstract delete(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract extractUpdates(Landroid/content/ContentValues;Landroid/content/ContentValues;)Landroid/content/ContentValues;
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/apps/books/sync/BaseCollectionVolumesSynchronizable;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getCollectionId()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/google/android/apps/books/sync/BaseCollectionVolumesSynchronizable;->mCollectionId:J

    return-wide v0
.end method

.method public getDirUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/apps/books/sync/BaseCollectionVolumesSynchronizable;->mDirUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected getItemUri(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .parameter "values"

    .prologue
    .line 77
    const-string v1, "volume_id"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, volumeId:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 79
    const-string v1, "BaseColVolSync"

    const-string v2, ""

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No volumeId in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/books/sync/BaseCollectionVolumesSynchronizable;->mAccountName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/apps/books/sync/BaseCollectionVolumesSynchronizable;->mCollectionId:J

    invoke-static {v1, v2, v3, v0}, Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes;->itemUri(Ljava/lang/String;JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/books/provider/BooksContract;->markLocal(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/books/provider/BooksContract;->markAsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/apps/books/sync/BaseCollectionVolumesSynchronizable;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public getRowKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
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
    .line 121
    sget-object v0, Lcom/google/android/apps/books/sync/BaseCollectionVolumesSynchronizable;->sColumnToClass:Ljava/util/Map;

    return-object v0
.end method

.method public insert(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .parameter "values"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/apps/books/sync/BaseCollectionVolumesSynchronizable;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/android/apps/books/sync/BaseCollectionVolumesSynchronizable;->sUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/content/ContentValues;)Landroid/database/Cursor;
    .locals 6
    .parameter "values"

    .prologue
    const/4 v3, 0x0

    .line 135
    iget-object v0, p0, Lcom/google/android/apps/books/sync/BaseCollectionVolumesSynchronizable;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/sync/BaseCollectionVolumesSynchronizable;->getItemUri(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/books/sync/BaseCollectionVolumesSynchronizable;->PROJECTION:[Ljava/lang/String;

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

    .line 128
    iget-object v0, p0, Lcom/google/android/apps/books/sync/BaseCollectionVolumesSynchronizable;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/google/android/apps/books/sync/BaseCollectionVolumesSynchronizable;->mDirUri:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/apps/books/sync/BaseCollectionVolumesSynchronizable;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public abstract update(Landroid/content/ContentValues;Landroid/content/ContentValues;)I
.end method
