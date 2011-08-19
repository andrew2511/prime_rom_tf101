.class public Lcom/newspaperdirect/pressreader/android/core/Subscription;
.super Ljava/lang/Object;
.source "Subscription.java"


# instance fields
.field private mCid:Ljava/lang/String;

.field private mCountry:Ljava/lang/String;

.field private mId:J

.field private mLanguage:Ljava/lang/String;

.field private mServiceName:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Lcom/newspaperdirect/pressreader/android/core/Subscription;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/Subscription;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/newspaperdirect/pressreader/android/core/Subscription;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput-wide p1, p0, Lcom/newspaperdirect/pressreader/android/core/Subscription;->mId:J

    return-void
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/core/Subscription;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/Subscription;->mServiceName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/newspaperdirect/pressreader/android/core/Subscription;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/Subscription;->mCid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/newspaperdirect/pressreader/android/core/Subscription;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/Subscription;->mTitle:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/newspaperdirect/pressreader/android/core/Subscription;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/Subscription;->mCountry:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/newspaperdirect/pressreader/android/core/Subscription;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/Subscription;->mLanguage:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Lcom/newspaperdirect/pressreader/android/core/Subscription;)J
    .locals 2
    .parameter

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/newspaperdirect/pressreader/android/core/Subscription;->mId:J

    return-wide v0
.end method

.method static synthetic access$8(Lcom/newspaperdirect/pressreader/android/core/Subscription;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/Subscription;->mCid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/newspaperdirect/pressreader/android/core/Subscription;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/Subscription;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public static createSubscriptions(Ljava/lang/String;Z)V
    .locals 4
    .parameter "cid"
    .parameter "includeSupplements"

    .prologue
    .line 169
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/Subscription$2;

    invoke-direct {v0, p0, p1}, Lcom/newspaperdirect/pressreader/android/core/Subscription$2;-><init>(Ljava/lang/String;Z)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    .line 198
    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/Subscription$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 199
    return-void
.end method

.method public static deleteSubscriptions(Ljava/lang/String;ZZ)V
    .locals 1
    .parameter "cid"
    .parameter "includeSupplements"
    .parameter "keepParent"

    .prologue
    .line 225
    invoke-static {p0}, Lcom/newspaperdirect/pressreader/android/core/Subscription;->getByCid(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/Subscription;

    move-result-object v0

    .line 226
    .local v0, r:Lcom/newspaperdirect/pressreader/android/core/Subscription;
    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0, p1, p2}, Lcom/newspaperdirect/pressreader/android/core/Subscription;->delete(ZZ)V

    .line 228
    :cond_0
    return-void
.end method

.method public static getByCid(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/Subscription;
    .locals 3
    .parameter "cid"

    .prologue
    .line 78
    invoke-static {p0}, Lcom/newspaperdirect/pressreader/android/core/trx/SubscriptionDbAdapter;->getByCid(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 79
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/Subscription;->loadCursor(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    .line 80
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/Subscription;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 81
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/newspaperdirect/pressreader/android/core/Subscription;

    move-object v2, p0

    .line 82
    :goto_0
    return-object v2

    .restart local p0
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static loadCursor(Landroid/database/Cursor;)Ljava/util/List;
    .locals 10
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/Subscription;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 91
    if-nez p0, :cond_0

    move-object v8, v9

    .line 120
    :goto_0
    return-object v8

    .line 93
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-nez v8, :cond_1

    .line 94
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 95
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move-object v8, v9

    .line 96
    goto :goto_0

    .line 99
    :cond_1
    const-string v8, "id"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 100
    .local v2, idxId:I
    const-string v8, "service_name"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 101
    .local v4, idxServiceName:I
    const-string v8, "cid"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 102
    .local v0, idxCid:I
    const-string v8, "title"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 103
    .local v5, idxTitle:I
    const-string v8, "country"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 104
    .local v1, idxCountry:I
    const-string v8, "language"

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 106
    .local v3, idxLangauge:I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v6, result:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/Subscription;>;"
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 117
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 118
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move-object v8, v6

    .line 120
    goto :goto_0

    .line 108
    :cond_2
    new-instance v7, Lcom/newspaperdirect/pressreader/android/core/Subscription;

    invoke-direct {v7}, Lcom/newspaperdirect/pressreader/android/core/Subscription;-><init>()V

    .line 109
    .local v7, subscription:Lcom/newspaperdirect/pressreader/android/core/Subscription;
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/newspaperdirect/pressreader/android/core/Subscription;->mId:J

    .line 110
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/newspaperdirect/pressreader/android/core/Subscription;->mServiceName:Ljava/lang/String;

    .line 111
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/newspaperdirect/pressreader/android/core/Subscription;->mCid:Ljava/lang/String;

    .line 112
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/newspaperdirect/pressreader/android/core/Subscription;->mTitle:Ljava/lang/String;

    .line 113
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/newspaperdirect/pressreader/android/core/Subscription;->mCountry:Ljava/lang/String;

    .line 114
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/newspaperdirect/pressreader/android/core/Subscription;->mLanguage:Ljava/lang/String;

    .line 115
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static loadSubscriptionsFromDb()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/Subscription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/trx/SubscriptionDbAdapter;->getSubscriptions()Landroid/database/Cursor;

    move-result-object v0

    .line 87
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/Subscription;->loadCursor(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static loadSubscriptionsFromServer()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/Subscription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v3, result:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/Subscription;>;"
    new-instance v2, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;

    const-string v5, "get-subscriptions"

    invoke-direct {v2, v5}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;-><init>(Ljava/lang/String;)V

    .line 126
    .local v2, helper:Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;
    const-string v5, "<subscription-type>All</subscription-type>"

    invoke-virtual {v2, v5}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->setRequestBody(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;

    .line 127
    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->getResponseElement()Landroid/sax/Element;

    move-result-object v5

    const-string v6, "subscription"

    invoke-virtual {v5, v6}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v5

    .line 128
    new-instance v6, Lcom/newspaperdirect/pressreader/android/core/Subscription$1;

    invoke-direct {v6, v3}, Lcom/newspaperdirect/pressreader/android/core/Subscription$1;-><init>(Ljava/util/List;)V

    invoke-virtual {v5, v6}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 144
    :try_start_0
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/Service;->getServices()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_1

    .line 150
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 151
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    .line 153
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 154
    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/trx/SubscriptionDbAdapter;->deleteAll(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 155
    invoke-static {v0, v3}, Lcom/newspaperdirect/pressreader/android/core/trx/SubscriptionDbAdapter;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    .line 156
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 160
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 161
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    :cond_0
    :goto_1
    move-object v5, v3

    .line 164
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_2
    return-object v5

    .line 144
    :cond_1
    :try_start_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/newspaperdirect/pressreader/android/core/Service;

    .line 145
    .local v4, service:Lcom/newspaperdirect/pressreader/android/core/Service;
    invoke-virtual {v2, v4}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->sendRequest(Lcom/newspaperdirect/pressreader/android/core/Service;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 146
    .end local v4           #service:Lcom/newspaperdirect/pressreader/android/core/Service;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 147
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 148
    const/4 v5, 0x0

    goto :goto_2

    .line 157
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 158
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 160
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 161
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_1

    .line 159
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 160
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 161
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    .line 162
    throw v5
.end method


# virtual methods
.method public delete(ZZ)V
    .locals 4
    .parameter "includeSupplements"
    .parameter "keepParent"

    .prologue
    .line 202
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/Subscription$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/newspaperdirect/pressreader/android/core/Subscription$3;-><init>(Lcom/newspaperdirect/pressreader/android/core/Subscription;ZZ)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    .line 219
    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/Subscription$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 221
    return-void
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/Subscription;->mCid:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/Subscription;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/newspaperdirect/pressreader/android/core/Subscription;->mId:J

    return-wide v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/Subscription;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/Subscription;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/Subscription;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0
    .parameter "cid"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/Subscription;->mCid:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .parameter "country"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/Subscription;->mCountry:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/newspaperdirect/pressreader/android/core/Subscription;->mId:J

    .line 31
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .parameter "language"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/Subscription;->mLanguage:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0
    .parameter "serviceName"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/Subscription;->mServiceName:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/Subscription;->mTitle:Ljava/lang/String;

    .line 55
    return-void
.end method
