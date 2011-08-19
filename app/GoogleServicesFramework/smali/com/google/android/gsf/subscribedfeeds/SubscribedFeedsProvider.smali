.class public Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;
.super Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;
.source "SubscribedFeedsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;
    }
.end annotation


# static fields
.field private static final ACCOUNTS_PROJECTION_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sDeletedFeedsTable:Ljava/lang/String;

.field private static sDeletedFeedsUrl:Landroid/net/Uri;

.field private static sFeedsTable:Ljava/lang/String;

.field private static sFeedsUrl:Landroid/net/Uri;

.field private static final sURLMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 55
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v1, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    .line 58
    const-string v1, "feeds"

    sput-object v1, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sFeedsTable:Ljava/lang/String;

    .line 59
    const-string v1, "content://subscribedfeeds/feeds/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sFeedsUrl:Landroid/net/Uri;

    .line 61
    const-string v1, "_deleted_feeds"

    sput-object v1, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sDeletedFeedsTable:Ljava/lang/String;

    .line 62
    const-string v1, "content://subscribedfeeds/deleted_feeds/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sDeletedFeedsUrl:Landroid/net/Uri;

    .line 70
    sget-object v1, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v2, "subscribedfeeds"

    const-string v3, "feeds"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 71
    sget-object v1, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v2, "subscribedfeeds"

    const-string v3, "feeds/#"

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 72
    sget-object v1, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v2, "subscribedfeeds"

    const-string v3, "deleted_feeds"

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 73
    sget-object v1, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v2, "subscribedfeeds"

    const-string v3, "accounts"

    const/4 v4, 0x4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 393
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 394
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sput-object v0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->ACCOUNTS_PROJECTION_MAP:Ljava/util/Map;

    .line 395
    const-string v1, "_count"

    const-string v2, "COUNT(*) AS _count"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    const-string v1, "_sync_account"

    const-string v2, "_sync_account"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    const-string v1, "_sync_account_type"

    const-string v2, "_sync_account_type"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 66
    const-string v0, "subscribedfeeds.db"

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sFeedsUrl:Landroid/net/Uri;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;-><init>(Ljava/lang/String;ILandroid/net/Uri;)V

    .line 67
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sFeedsTable:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sFeedsUrl:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sDeletedFeedsTable:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sDeletedFeedsUrl:Landroid/net/Uri;

    return-object v0
.end method

.method private static addIdToWhereClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "id"
    .parameter "where"

    .prologue
    .line 297
    if-eqz p0, :cond_1

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    .local v0, whereSb:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 301
    const-string v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 305
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 307
    .end local v0           #whereSb:Ljava/lang/StringBuilder;
    :goto_0
    return-object v1

    :cond_1
    move-object v1, p1

    goto :goto_0
.end method


# virtual methods
.method protected bootstrapDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->bootstrapDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 98
    const-string v0, "CREATE TABLE feeds (_id INTEGER PRIMARY KEY,_sync_account TEXT,_sync_account_type TEXT,_sync_id TEXT,_sync_time TEXT,_sync_version TEXT,_sync_local_id INTEGER,_sync_dirty INTEGER,_sync_mark INTEGER,feed TEXT,authority TEXT,service TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 116
    const-string v0, "CREATE TRIGGER feed_cleanup DELETE ON feeds WHEN old._sync_id is not null BEGIN INSERT INTO _deleted_feeds (_sync_id, _sync_account, _sync_account_type, _sync_version) VALUES (old._sync_id, old._sync_account, old._sync_account_type, old._sync_version);END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE _deleted_feeds (_sync_version TEXT,_sync_id TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->isTemporary()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "_sync_local_id INTEGER,"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_sync_account TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_sync_account_type TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_sync_mark INTEGER, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UNIQUE(_sync_id))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 133
    return-void

    .line 125
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public deleteInternal(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "url"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 254
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 262
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot delete that URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 256
    :pswitch_0
    const/4 v0, 0x0

    .line 266
    .local v0, changedItemId:Ljava/lang/String;
    :goto_0
    invoke-static {v0, p2}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->addIdToWhereClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, where:Ljava/lang/String;
    sget-object v3, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sFeedsTable:Ljava/lang/String;

    invoke-virtual {v1, v3, v2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3

    .line 259
    .end local v0           #changedItemId:Ljava/lang/String;
    .end local v2           #where:Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 260
    .restart local v0       #changedItemId:Ljava/lang/String;
    goto :goto_0

    .line 254
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getMergers()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    new-instance v0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;-><init>(Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 157
    sget-object v1, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 158
    .local v0, match:I
    packed-switch v0, :pswitch_data_0

    .line 164
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown URL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 160
    :pswitch_0
    const-string v1, "vnd.android.cursor.dir/subscribedfeeds"

    .line 162
    :goto_0
    return-object v1

    :pswitch_1
    const-string v1, "vnd.android.cursor.item/subscribedfeed"

    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 10
    .parameter "url"
    .parameter "initialValues"

    .prologue
    const-wide/16 v8, 0x0

    .line 213
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 214
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 217
    .local v2, resultUri:Landroid/net/Uri;
    sget-object v6, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 218
    .local v1, match:I
    packed-switch v1, :pswitch_data_0

    .line 242
    :pswitch_0
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot insert into URL: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 220
    :pswitch_1
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 221
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "_sync_dirty"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 222
    sget-object v6, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sFeedsTable:Ljava/lang/String;

    const-string v7, "feed"

    invoke-virtual {v0, v6, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 223
    .local v3, rowID:J
    cmp-long v6, v3, v8

    if-lez v6, :cond_0

    .line 224
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://subscribedfeeds/feeds/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 246
    .end local v5           #values:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return-object v2

    .line 230
    .end local v3           #rowID:J
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->isTemporary()Z

    move-result v6

    if-nez v6, :cond_1

    .line 231
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v6}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v6

    .line 233
    :cond_1
    sget-object v6, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sDeletedFeedsTable:Ljava/lang/String;

    const-string v7, "_sync_id"

    invoke-virtual {v0, v6, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 235
    .restart local v3       #rowID:J
    cmp-long v6, v3, v8

    if-lez v6, :cond_0

    .line 236
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://subscribedfeeds/deleted_feeds/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    .line 218
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onAccountsChanged([Landroid/accounts/Account;)V
    .locals 6
    .parameter "accountsArray"

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->onAccountsChanged([Landroid/accounts/Account;)V

    .line 138
    move-object v1, p1

    .local v1, arr$:[Landroid/accounts/Account;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 139
    .local v0, account:Landroid/accounts/Account;
    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v5, "com.google"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 140
    const-string v4, "subscribedfeeds"

    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 138
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    .end local v0           #account:Landroid/accounts/Account;
    :cond_1
    return-void
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;

    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;-><init>(Landroid/content/Context;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->setTempProviderSyncAdapter(Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;)V

    .line 79
    invoke-super {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->onCreate()Z

    move-result v0

    return v0
.end method

.method protected onDatabaseOpened(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 147
    const-string v0, "feeds"

    const-string v1, "_deleted_feeds"

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->markTableSyncable(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public queryInternal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "url"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 171
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 175
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v1, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    .line 180
    .local v8, match:I
    packed-switch v8, :pswitch_data_0

    .line 203
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    :pswitch_0
    sget-object v1, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sFeedsTable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 207
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v6

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_1
    return-object v1

    .line 185
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->isTemporary()Z

    move-result v1

    if-nez v1, :cond_0

    .line 186
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 188
    :cond_0
    sget-object v1, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sDeletedFeedsTable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :pswitch_2
    sget-object v1, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sFeedsTable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 193
    sget-object v1, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->ACCOUNTS_PROJECTION_MAP:Ljava/util/Map;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 194
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v5, "_sync_account_type,_sync_account"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_1

    .line 198
    :pswitch_3
    sget-object v1, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sFeedsTable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sFeedsTable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "._id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 200
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public updateInternal(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .parameter "url"
    .parameter "initialValues"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    const/4 v6, 0x1

    .line 273
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 274
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 275
    .local v2, values:Landroid/content/ContentValues;
    const-string v4, "_sync_dirty"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 278
    sget-object v4, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 288
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot update URL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 280
    :pswitch_0
    const/4 v0, 0x0

    .line 292
    .local v0, changedItemId:Ljava/lang/String;
    :goto_0
    invoke-static {v0, p3}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->addIdToWhereClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 293
    .local v3, where:Ljava/lang/String;
    sget-object v4, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sFeedsTable:Ljava/lang/String;

    invoke-virtual {v1, v4, v2, v3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    return v4

    .line 284
    .end local v0           #changedItemId:Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 285
    .restart local v0       #changedItemId:Ljava/lang/String;
    goto :goto_0

    .line 278
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected upgradeDatabase(Landroid/database/sqlite/SQLiteDatabase;II)Z
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 85
    const-string v0, "SubscribedFeedsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v0, "DROP TRIGGER IF EXISTS feed_cleanup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 89
    const-string v0, "DROP TABLE IF EXISTS _deleted_feeds"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 90
    const-string v0, "DROP TABLE IF EXISTS feeds"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->bootstrapDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 92
    const/4 v0, 0x0

    return v0
.end method
