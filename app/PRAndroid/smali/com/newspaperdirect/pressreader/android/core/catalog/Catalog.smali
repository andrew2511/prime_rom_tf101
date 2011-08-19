.class public Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;
.super Ljava/lang/Object;
.source "Catalog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$OnCatalogLoadedListener;
    }
.end annotation


# static fields
.field private static final CATALOG_UPDATE_DATE:Ljava/lang/String; = "CatalogUpdateDate"

.field private static final CATALOG_UPDATE_INTERVAL:J = 0x5265c00L

.field private static final CHECK_NETWORK_CONNECTION_INTERVAL:I = 0xea60

.field private static mCatalogs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;",
            ">;"
        }
    .end annotation
.end field

.field private static mHandler:Landroid/os/Handler;


# instance fields
.field private volatile mIsDeletePending:Z

.field private mIsEmpty:Ljava/lang/Boolean;

.field private volatile mIsUpdating:Z

.field private mOnCatalogLoadedListener:Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$OnCatalogLoadedListener;

.field private mService:Lcom/newspaperdirect/pressreader/android/core/Service;


# direct methods
.method private constructor <init>(Lcom/newspaperdirect/pressreader/android/core/Service;)V
    .locals 8
    .parameter "service"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->mService:Lcom/newspaperdirect/pressreader/android/core/Service;

    .line 64
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 65
    .local v3, prefs:Landroid/content/SharedPreferences;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CatalogUpdateDate_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/Service;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, key:Ljava/lang/String;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 67
    .local v1, now:J
    const-wide/16 v4, 0x0

    invoke-interface {v3, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long v4, v1, v4

    const-wide/32 v6, 0x5265c00

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 68
    :cond_0
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->update()V

    .line 69
    :cond_1
    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;)Z
    .locals 1
    .parameter

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->load()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->mIsUpdating:Z

    return-void
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;)Z
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->mIsDeletePending:Z

    return v0
.end method

.method static synthetic access$3(Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->updateLater()V

    return-void
.end method

.method static synthetic access$4(Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;)Lcom/newspaperdirect/pressreader/android/core/Service;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->mService:Lcom/newspaperdirect/pressreader/android/core/Service;

    return-object v0
.end method

.method static synthetic access$5(Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;Ljava/lang/Boolean;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->mIsEmpty:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$6(Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;)Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$OnCatalogLoadedListener;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->mOnCatalogLoadedListener:Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$OnCatalogLoadedListener;

    return-object v0
.end method

.method static synthetic access$7(Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->update()V

    return-void
.end method

.method public static get(Lcom/newspaperdirect/pressreader/android/core/Service;)Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;
    .locals 4
    .parameter "service"

    .prologue
    .line 72
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 77
    .end local p0
    :goto_0
    return-object v1

    .line 73
    .restart local p0
    :cond_0
    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->mCatalogs:Ljava/util/HashMap;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->mCatalogs:Ljava/util/HashMap;

    .line 75
    :cond_1
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;

    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;-><init>(Lcom/newspaperdirect/pressreader/android/core/Service;)V

    .line 76
    .local v0, result:Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;
    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->mCatalogs:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/Service;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 77
    goto :goto_0

    .line 74
    .end local v0           #result:Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;
    :cond_2
    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->mCatalogs:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/Service;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->mCatalogs:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/Service;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;

    move-object v1, p0

    goto :goto_0
.end method

.method private load()Z
    .locals 11

    .prologue
    .line 120
    const/4 v8, 0x0

    .line 121
    .local v8, result:Z
    new-instance v5, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    invoke-direct {v5}, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;-><init>()V

    .line 122
    .local v5, newspaper:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v7, newspapers:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 124
    .local v0, allCountries:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/newspaperdirect/pressreader/android/core/catalog/Country;>;"
    new-instance v4, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;

    const-string v9, "get-titles"

    invoke-direct {v4, v9}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;-><init>(Ljava/lang/String;)V

    .line 125
    .local v4, helper:Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;
    invoke-virtual {v4}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->getResponseElement()Landroid/sax/Element;

    move-result-object v9

    const-string v10, "newspaper"

    invoke-virtual {v9, v10}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v6

    .line 126
    .local v6, newspaperElm:Landroid/sax/Element;
    new-instance v9, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$3;

    invoke-direct {v9, p0, v5, v7}, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$3;-><init>(Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;Ljava/util/List;)V

    invoke-virtual {v6, v9}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 132
    const-string v9, "countries"

    invoke-virtual {v6, v9}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    .line 133
    .local v1, countriesElm:Landroid/sax/Element;
    const-string v9, "country"

    invoke-virtual {v1, v9}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v9

    new-instance v10, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$4;

    invoke-direct {v10, p0, v0, v5}, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$4;-><init>(Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;Ljava/util/HashMap;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v9, v10}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 147
    :try_start_0
    iget-object v9, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->mService:Lcom/newspaperdirect/pressreader/android/core/Service;

    invoke-virtual {v4, v9}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->sendRequest(Lcom/newspaperdirect/pressreader/android/core/Service;)V

    .line 148
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 149
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v2, :cond_0

    .line 151
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 152
    iget-object v9, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->mService:Lcom/newspaperdirect/pressreader/android/core/Service;

    invoke-virtual {v9}, Lcom/newspaperdirect/pressreader/android/core/Service;->getId()J

    move-result-wide v9

    invoke-static {v2, v9, v10}, Lcom/newspaperdirect/pressreader/android/core/catalog/trx/NewspapersToCountriesDbAdapter;->deleteAll(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 153
    iget-object v9, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->mService:Lcom/newspaperdirect/pressreader/android/core/Service;

    invoke-virtual {v9}, Lcom/newspaperdirect/pressreader/android/core/Service;->getId()J

    move-result-wide v9

    invoke-static {v2, v9, v10}, Lcom/newspaperdirect/pressreader/android/core/catalog/trx/NewspaperDbAdapter;->deleteAll(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 154
    iget-object v9, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->mService:Lcom/newspaperdirect/pressreader/android/core/Service;

    invoke-virtual {v9}, Lcom/newspaperdirect/pressreader/android/core/Service;->getId()J

    move-result-wide v9

    invoke-static {v2, v9, v10}, Lcom/newspaperdirect/pressreader/android/core/catalog/trx/CountryDbAdapter;->deleteAll(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 155
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/newspaperdirect/pressreader/android/core/catalog/trx/CountryDbAdapter;->insertCountries(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Collection;)V

    .line 156
    invoke-static {v2, v7}, Lcom/newspaperdirect/pressreader/android/core/catalog/trx/NewspaperDbAdapter;->insertNewspapers(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    .line 157
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 158
    const/4 v8, 0x1

    .line 164
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 165
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 167
    :goto_0
    const/4 v2, 0x0

    .line 176
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    :goto_1
    return v8

    .line 160
    .restart local v2       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v9

    move-object v3, v9

    .line 161
    .local v3, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 164
    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 165
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V
    :try_end_4
    .catch Ljava/lang/AssertionError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 170
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v9

    move-object v3, v9

    .line 171
    .local v3, e:Ljava/lang/AssertionError;
    invoke-virtual {v3}, Ljava/lang/AssertionError;->printStackTrace()V

    goto :goto_1

    .line 163
    .end local v3           #e:Ljava/lang/AssertionError;
    .restart local v2       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v9

    .line 164
    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 165
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    .line 166
    throw v9
    :try_end_5
    .catch Ljava/lang/AssertionError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 173
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catch_2
    move-exception v9

    move-object v3, v9

    .line 174
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private update()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 85
    iget-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->mIsUpdating:Z

    if-eqz v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iput-boolean v1, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->mIsUpdating:Z

    .line 88
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$1;

    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$1;-><init>(Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;)V

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    .line 104
    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 106
    :cond_1
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->updateLater()V

    goto :goto_0
.end method

.method private updateLater()V
    .locals 4

    .prologue
    .line 110
    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    sput-object v1, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->mHandler:Landroid/os/Handler;

    .line 111
    :cond_0
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$2;

    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$2;-><init>(Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;)V

    .line 116
    .local v0, task:Ljava/lang/Runnable;
    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 117
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 216
    iget-boolean v2, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->mIsUpdating:Z

    if-eqz v2, :cond_0

    .line 217
    iput-boolean v3, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->mIsDeletePending:Z

    .line 242
    :goto_0
    return-void

    .line 220
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->mIsDeletePending:Z

    .line 221
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 222
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_1

    .line 224
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 225
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->mService:Lcom/newspaperdirect/pressreader/android/core/Service;

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/Service;->getId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/newspaperdirect/pressreader/android/core/catalog/trx/NewspapersToCountriesDbAdapter;->deleteAll(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 226
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->mService:Lcom/newspaperdirect/pressreader/android/core/Service;

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/Service;->getId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/newspaperdirect/pressreader/android/core/catalog/trx/NewspaperDbAdapter;->deleteAll(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 227
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->mService:Lcom/newspaperdirect/pressreader/android/core/Service;

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/Service;->getId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/newspaperdirect/pressreader/android/core/catalog/trx/CountryDbAdapter;->deleteAll(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 228
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 229
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->mIsEmpty:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 236
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    .line 238
    :goto_1
    const/4 v0, 0x0

    .line 240
    :cond_1
    sget-object v2, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->mCatalogs:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->mService:Lcom/newspaperdirect/pressreader/android/core/Service;

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/Service;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CatalogUpdateDate_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->mService:Lcom/newspaperdirect/pressreader/android/core/Service;

    invoke-virtual {v4}, Lcom/newspaperdirect/pressreader/android/core/Service;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 231
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 232
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 236
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_1

    .line 234
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 235
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 236
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    .line 237
    throw v2
.end method

.method public getCountries()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/catalog/Country;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->mService:Lcom/newspaperdirect/pressreader/android/core/Service;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/Service;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Country;->getCountries(J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLanguages()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->mService:Lcom/newspaperdirect/pressreader/android/core/Service;

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/Service;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/newspaperdirect/pressreader/android/core/catalog/trx/NewspaperDbAdapter;->getLanguages(J)Landroid/database/Cursor;

    move-result-object v0

    .line 185
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    const/4 v3, 0x0

    .line 200
    :goto_0
    return-object v3

    .line 186
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v2, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 188
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 189
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move-object v3, v2

    .line 190
    goto :goto_0

    .line 193
    :cond_1
    const-string v3, "language"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 195
    .local v1, idxLanguage:I
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 198
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 199
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    move-object v3, v2

    .line 200
    goto :goto_0

    .line 196
    :cond_2
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getNewspapersByLanguage(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "language"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->mService:Lcom/newspaperdirect/pressreader/android/core/Service;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/Service;->getId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/trx/NewspaperDbAdapter;->getNewspapersByLanguage(JLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getNewspapers(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNewspapersCount()I
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->mService:Lcom/newspaperdirect/pressreader/android/core/Service;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/Service;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getNewspapersCount(J)I

    move-result v0

    return v0
.end method

.method public getNewspapersCountByLanguage(Ljava/lang/String;)I
    .locals 2
    .parameter "language"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->mService:Lcom/newspaperdirect/pressreader/android/core/Service;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/Service;->getId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/newspaperdirect/pressreader/android/core/catalog/trx/NewspaperDbAdapter;->getNewspapersCountByLanguage(JLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getService()Lcom/newspaperdirect/pressreader/android/core/Service;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->mService:Lcom/newspaperdirect/pressreader/android/core/Service;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->mIsEmpty:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->mService:Lcom/newspaperdirect/pressreader/android/core/Service;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/Service;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getNewspapersCount(J)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->mIsEmpty:Ljava/lang/Boolean;

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->mIsEmpty:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 43
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUpdating()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->mIsUpdating:Z

    return v0
.end method

.method public removeOnCatalogLoadedListener()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->mOnCatalogLoadedListener:Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$OnCatalogLoadedListener;

    .line 58
    return-void
.end method

.method public setOnCatalogLoadedListener(Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$OnCatalogLoadedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->mOnCatalogLoadedListener:Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog$OnCatalogLoadedListener;

    .line 55
    return-void
.end method
