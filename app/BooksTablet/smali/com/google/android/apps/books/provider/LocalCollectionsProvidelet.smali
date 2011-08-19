.class Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;
.super Ljava/lang/Object;
.source "LocalCollectionsProvidelet.java"

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
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "missing context"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v0, "missing database"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iput-object p1, p0, Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;->mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    .line 37
    return-void
.end method

.method private getSelectionBuilder(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;
    .locals 7
    .parameter "match"
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 113
    new-instance v0, Lcom/google/android/apps/books/util/SelectionBuilder;

    invoke-direct {v0}, Lcom/google/android/apps/books/util/SelectionBuilder;-><init>()V

    .line 114
    .local v0, builder:Lcom/google/android/apps/books/util/SelectionBuilder;
    invoke-virtual {v0, p3, p4}, Lcom/google/android/apps/books/util/SelectionBuilder;->append(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 115
    packed-switch p1, :pswitch_data_0

    .line 128
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad match "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 119
    :pswitch_0
    invoke-direct {p0, v0, p2}, Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;->restrictAccount(Lcom/google/android/apps/books/util/SelectionBuilder;Landroid/net/Uri;)V

    .line 131
    :goto_0
    :pswitch_1
    return-object v0

    .line 122
    :pswitch_2
    invoke-direct {p0, v0, p2}, Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;->restrictAccount(Lcom/google/android/apps/books/util/SelectionBuilder;Landroid/net/Uri;)V

    .line 123
    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Collections;->getCollectionId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 124
    .local v1, collectionId:J
    const-string v3, "collection_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Lcom/google/android/apps/books/util/SelectionBuilder;->append(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    goto :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x2bc
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private notifyChange(Landroid/net/Uri;)V
    .locals 4
    .parameter "uri"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;->mContext:Landroid/content/Context;

    .line 146
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 147
    .local v2, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 148
    .local v1, observer:Landroid/database/ContentObserver;
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 149
    return-void
.end method

.method private restrictAccount(Lcom/google/android/apps/books/util/SelectionBuilder;Landroid/net/Uri;)V
    .locals 4
    .parameter "builder"
    .parameter "uri"

    .prologue
    .line 135
    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Collections;->getAccountName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, account:Ljava/lang/String;
    const-string v1, "account_name=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->append(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 137
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
    .line 95
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;->getSelectionBuilder(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    .line 96
    .local v0, builder:Lcom/google/android/apps/books/util/SelectionBuilder;
    iget-object v3, p0, Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;->mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v3}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 97
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "collections"

    invoke-virtual {v0, v2, v3}, Lcom/google/android/apps/books/util/SelectionBuilder;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v1

    .line 98
    .local v1, count:I
    if-eqz v1, :cond_0

    .line 99
    invoke-direct {p0, p2}, Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;->notifyChange(Landroid/net/Uri;)V

    .line 101
    :cond_0
    return v1
.end method

.method public insert(ILandroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7
    .parameter "match"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 60
    const/16 v4, 0x2bc

    if-eq p1, v4, :cond_0

    .line 61
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad match "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 64
    :cond_0
    const-string v4, "account_name"

    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, accountName:Ljava/lang/String;
    const-string v4, "collection_id"

    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 67
    .local v1, collectionId:J
    iget-object v4, p0, Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;->mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v4}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 68
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "collections"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, p3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 70
    invoke-direct {p0, p2}, Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;->notifyChange(Landroid/net/Uri;)V

    .line 72
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/books/provider/BooksContract$Collections;->itemUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    return-object v4
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
    .line 106
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .parameter "match"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;->getSelectionBuilder(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    .line 46
    .local v0, builder:Lcom/google/android/apps/books/util/SelectionBuilder;
    iget-object v4, p0, Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;->mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v4}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 47
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "collections"

    invoke-virtual {v0, v2, v4, p3, p6}, Lcom/google/android/apps/books/util/SelectionBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 49
    .local v1, c:Landroid/database/Cursor;
    iget-object v4, p0, Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 50
    .local v3, resolver:Landroid/content/ContentResolver;
    invoke-interface {v1, v3, p2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 52
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
    .line 81
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;->getSelectionBuilder(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    .line 82
    .local v0, builder:Lcom/google/android/apps/books/util/SelectionBuilder;
    iget-object v3, p0, Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;->mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v3}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 84
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "collections"

    invoke-virtual {v0, v2, v3, p3}, Lcom/google/android/apps/books/util/SelectionBuilder;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    .line 85
    .local v1, count:I
    if-eqz v1, :cond_0

    .line 86
    invoke-direct {p0, p2}, Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;->notifyChange(Landroid/net/Uri;)V

    .line 88
    :cond_0
    return v1
.end method
