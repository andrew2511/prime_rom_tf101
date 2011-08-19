.class Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;
.super Ljava/lang/Object;
.source "LocalCollectionVolumesProvidelet.java"

# interfaces
.implements Lcom/google/android/apps/books/provider/Providelet;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/books/provider/database/BooksDatabase;)V
    .locals 1
    .parameter "context"
    .parameter "database"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "missing context"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v0, "missing database"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iput-object p1, p0, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    .line 46
    return-void
.end method

.method private checkValues(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 3
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 54
    const-string v1, "timestamp"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 55
    .local v0, timestamp:Ljava/lang/Long;
    const-string v1, "Missing timestamp"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->isCallerSyncAdapter(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "dirty"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const-string v2, "Non sync-adapter should allow provider to control dirty flag"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 59
    return-void

    .line 56
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSelectionBuilder(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;
    .locals 5
    .parameter "match"
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 154
    new-instance v0, Lcom/google/android/apps/books/util/SelectionBuilder;

    invoke-direct {v0}, Lcom/google/android/apps/books/util/SelectionBuilder;-><init>()V

    .line 155
    .local v0, builder:Lcom/google/android/apps/books/util/SelectionBuilder;
    invoke-virtual {v0, p3, p4}, Lcom/google/android/apps/books/util/SelectionBuilder;->append(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 156
    packed-switch p1, :pswitch_data_0

    .line 168
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad match "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 160
    :pswitch_0
    invoke-direct {p0, v0, p2}, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->restrictAccountAndCollectionId(Lcom/google/android/apps/books/util/SelectionBuilder;Landroid/net/Uri;)V

    .line 170
    :goto_0
    :pswitch_1
    return-object v0

    .line 163
    :pswitch_2
    invoke-direct {p0, v0, p2}, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->restrictAccountAndCollectionId(Lcom/google/android/apps/books/util/SelectionBuilder;Landroid/net/Uri;)V

    .line 164
    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, volumeId:Ljava/lang/String;
    const-string v2, "volume_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/apps/books/util/SelectionBuilder;->append(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x2c6
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private isCallerSyncAdapter(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 49
    const-string v0, "callerIsSyncAdapter"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/android/apps/books/util/UriUtils;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private notifyChange(Landroid/net/Uri;)V
    .locals 4
    .parameter "uri"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->mContext:Landroid/content/Context;

    .line 187
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 188
    .local v2, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 192
    .local v1, observer:Landroid/database/ContentObserver;
    const/4 v3, 0x1

    invoke-virtual {v2, p1, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 193
    return-void
.end method

.method private restrictAccountAndCollectionId(Lcom/google/android/apps/books/util/SelectionBuilder;Landroid/net/Uri;)V
    .locals 7
    .parameter "builder"
    .parameter "uri"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 174
    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes;->getAccountName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, account:Ljava/lang/String;
    const-string v3, "account_name=?"

    new-array v4, v5, [Ljava/lang/String;

    aput-object v0, v4, v6

    invoke-virtual {p1, v3, v4}, Lcom/google/android/apps/books/util/SelectionBuilder;->append(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 176
    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes;->getCollectionId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 177
    .local v1, collectionId:J
    const-string v3, "collection_id=?"

    new-array v4, v5, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v3, v4}, Lcom/google/android/apps/books/util/SelectionBuilder;->append(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 178
    return-void
.end method


# virtual methods
.method public delete(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "match"
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 133
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->getSelectionBuilder(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    .line 134
    .local v0, builder:Lcom/google/android/apps/books/util/SelectionBuilder;
    iget-object v3, p0, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v3}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 135
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "collection_volumes"

    invoke-virtual {v0, v2, v3}, Lcom/google/android/apps/books/util/SelectionBuilder;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v1

    .line 136
    .local v1, count:I
    if-eqz v1, :cond_0

    .line 137
    invoke-direct {p0, p2}, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->notifyChange(Landroid/net/Uri;)V

    .line 139
    :cond_0
    return v1
.end method

.method public insert(ILandroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9
    .parameter "match"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 86
    invoke-direct {p0, p2, p3}, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->checkValues(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 88
    const/16 v6, 0x2c6

    if-eq p1, v6, :cond_0

    .line 89
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad match "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for URI "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 91
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->isCallerSyncAdapter(Landroid/net/Uri;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 92
    const-string v6, "dirty"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    :cond_1
    const-string v6, "account_name"

    invoke-virtual {p3, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, accountName:Ljava/lang/String;
    const-string v6, "collection_id"

    invoke-virtual {p3, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 97
    .local v1, collectionId:J
    const-string v6, "volume_id"

    invoke-virtual {p3, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 99
    .local v5, volumeId:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v6}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 100
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v6, "collection_volumes"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7, p3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 102
    invoke-direct {p0, p2}, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->notifyChange(Landroid/net/Uri;)V

    .line 106
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes;->dirUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    .line 107
    .local v3, collectionUri:Landroid/net/Uri;
    invoke-direct {p0, v3}, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->notifyChange(Landroid/net/Uri;)V

    .line 109
    invoke-static {v0, v1, v2, v5}, Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes;->itemUri(Ljava/lang/String;JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    return-object v6
.end method

.method public openFile(ILandroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .parameter "match"
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 147
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "match"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->getSelectionBuilder(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    .line 68
    .local v0, builder:Lcom/google/android/apps/books/util/SelectionBuilder;
    invoke-direct {p0, p2}, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->isCallerSyncAdapter(Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 69
    const-string v4, "dirty!=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Lcom/google/android/apps/books/util/SelectionBuilder;->append(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 72
    :cond_0
    iget-object v4, p0, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v4}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 73
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "view_collection_volumes"

    invoke-virtual {v0, v2, v4, p3, p6}, Lcom/google/android/apps/books/util/SelectionBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 75
    .local v1, c:Landroid/database/Cursor;
    iget-object v4, p0, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 76
    .local v3, resolver:Landroid/content/ContentResolver;
    invoke-interface {v1, v3, p2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 78
    return-object v1
.end method

.method public update(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "match"
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 118
    invoke-direct {p0, p2, p3}, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->checkValues(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 120
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->getSelectionBuilder(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    .line 121
    .local v0, builder:Lcom/google/android/apps/books/util/SelectionBuilder;
    iget-object v3, p0, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v3}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 122
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "collection_volumes"

    invoke-virtual {v0, v2, v3, p3}, Lcom/google/android/apps/books/util/SelectionBuilder;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    .line 123
    .local v1, count:I
    if-eqz v1, :cond_0

    .line 124
    invoke-direct {p0, p2}, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->notifyChange(Landroid/net/Uri;)V

    .line 126
    :cond_0
    return v1
.end method
