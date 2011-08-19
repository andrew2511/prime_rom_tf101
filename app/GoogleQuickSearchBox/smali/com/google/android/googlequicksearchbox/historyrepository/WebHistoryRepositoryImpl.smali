.class public Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;
.super Ljava/lang/Object;
.source "WebHistoryRepositoryImpl.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DbOpenHelper;,
        Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;,
        Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$LocalHistoryTask;,
        Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DeleteTransaction;
    }
.end annotation


# static fields
.field private static final DELETE_WHERE_CLAUSE:Ljava/lang/String;


# instance fields
.field private final mDataSetObservable:Landroid/database/DataSetObservable;

.field private final mDbOpenHelper:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DbOpenHelper;

.field private final mExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

.field private final mHasHistoryQueryString:Ljava/lang/String;

.field private final mHistoryQueryString:Ljava/lang/String;

.field private final mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

.field private final mZeroQueryHistoryQueryString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;->QUERY_LOWER:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->DELETE_WHERE_CLAUSE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/SearchSettings;)V
    .locals 6
    .parameter "context"
    .parameter "executor"
    .parameter "config"
    .parameter "settings"

    .prologue
    .line 81
    const-string v5, "qsb-history.db"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/SearchSettings;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/SearchSettings;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "executor"
    .parameter "config"
    .parameter "settings"
    .parameter "dbName"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 87
    new-instance v0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DbOpenHelper;

    const/4 v1, 0x3

    invoke-direct {v0, p1, p5, v1, p3}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DbOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/google/android/googlequicksearchbox/Config;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->mDbOpenHelper:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DbOpenHelper;

    .line 89
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->buildHistoryQueryString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->mHistoryQueryString:Ljava/lang/String;

    .line 90
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->buildZeroQueryHistoryQueryString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->mZeroQueryHistoryQueryString:Ljava/lang/String;

    .line 91
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->buildHasHistoryQueryString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->mHasHistoryQueryString:Ljava/lang/String;

    .line 92
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->mExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    .line 93
    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    .line 94
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-interface {v0, p0}, Lcom/google/android/googlequicksearchbox/SearchSettings;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 95
    invoke-interface {p4}, Lcom/google/android/googlequicksearchbox/SearchSettings;->shouldUseLocalWebHistory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->deleteAllLocalHistory()V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->mDbOpenHelper:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DbOpenHelper;

    invoke-static {v0}, Lcom/google/android/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->mExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    invoke-static {v0}, Lcom/google/android/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->mHistoryQueryString:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->mZeroQueryHistoryQueryString:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->mHasHistoryQueryString:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->insertQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;)Landroid/database/DataSetObservable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->mDataSetObservable:Landroid/database/DataSetObservable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->mHasHistoryQueryString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;)Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DbOpenHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->mDbOpenHelper:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DbOpenHelper;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->DELETE_WHERE_CLAUSE:Ljava/lang/String;

    return-object v0
.end method

.method private buildHasHistoryQueryString()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 295
    const/4 v0, 0x0

    const-string v1, "history"

    const-string v7, "1"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-static/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 297
    .local v8, queryString:Ljava/lang/String;
    return-object v8
.end method

.method private buildHistoryQueryString()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 280
    const-string v8, "insert_time DESC"

    .line 281
    .local v8, orderBy:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;->QUERY_LOWER:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LIKE ?1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 285
    .local v3, where:Ljava/lang/String;
    const-string v1, "history"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    sget-object v5, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;->QUERY:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;

    invoke-virtual {v5}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v0

    const-string v6, "insert_time DESC"

    move-object v5, v4

    move-object v7, v4

    invoke-static/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 290
    .local v9, queryString:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIMIT  ?2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private buildZeroQueryHistoryQueryString()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 301
    const-string v8, "insert_time DESC"

    .line 304
    .local v8, orderBy:Ljava/lang/String;
    const-string v1, "history"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    sget-object v4, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;->QUERY:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;

    invoke-virtual {v4}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    const-string v6, "insert_time DESC"

    move-object v4, v3

    move-object v5, v3

    move-object v7, v3

    invoke-static/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 309
    .local v9, queryString:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIMIT  ?1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHistoryQueryParams(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 4
    .parameter "query"
    .parameter "limit"

    .prologue
    .line 313
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method private insertQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z
    .locals 6
    .parameter "db"
    .parameter "query"
    .parameter "time"

    .prologue
    .line 264
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 265
    .local v0, cv:Landroid/content/ContentValues;
    sget-object v3, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;->QUERY_LOWER:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    sget-object v3, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;->QUERY:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    sget-object v3, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;->INSERT_TIME:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$HistoryTable;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v3, "history"

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual {p1, v3, v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v1

    .line 271
    .local v1, returnVal:J
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 272
    const/4 v3, 0x1

    .line 276
    :goto_0
    return v3

    .line 275
    :cond_0
    const-string v3, "QSB.HistoryRepositoryImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DB Transaction (insert) unsuccessful, Return value :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private runTransactionOnExecutor(Lcom/google/android/googlequicksearchbox/util/SQLiteTransaction;)V
    .locals 2
    .parameter "transaction"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->mExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    new-instance v1, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$5;

    invoke-direct {v1, p0, p1}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$5;-><init>(Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;Lcom/google/android/googlequicksearchbox/util/SQLiteTransaction;)V

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;->execute(Lcom/google/android/googlequicksearchbox/util/NamedTask;)V

    .line 352
    return-void
.end method

.method private suggestionFromCurrentCursor(Landroid/database/Cursor;)Lcom/google/android/googlequicksearchbox/Suggestion;
    .locals 4
    .parameter "cursor"

    .prologue
    .line 321
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, query:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 323
    const/4 v2, 0x0

    .line 332
    :goto_0
    return-object v2

    .line 325
    :cond_0
    invoke-static {}, Lcom/google/android/googlequicksearchbox/Suggestion;->builder()Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->suggestionQuery(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->text1(Ljava/lang/CharSequence;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->isHistory(Z)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v2

    const-string v3, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v2, v3}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->intentAction(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/googlequicksearchbox/Suggestion$Builder;->build()Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v1

    .local v1, s:Lcom/google/android/googlequicksearchbox/Suggestion;
    move-object v2, v1

    .line 332
    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->mSettings:Lcom/google/android/googlequicksearchbox/SearchSettings;

    invoke-interface {v0, p0}, Lcom/google/android/googlequicksearchbox/SearchSettings;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 342
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->mDbOpenHelper:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DbOpenHelper;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DbOpenHelper;->close()V

    .line 343
    return-void
.end method

.method public deleteAllLocalHistory()V
    .locals 1

    .prologue
    .line 157
    new-instance v0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$3;

    invoke-direct {v0, p0}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$3;-><init>(Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;)V

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->runTransactionOnExecutor(Lcom/google/android/googlequicksearchbox/util/SQLiteTransaction;)V

    .line 171
    return-void
.end method

.method deleteDatabase()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->mDbOpenHelper:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DbOpenHelper;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DbOpenHelper;->deleteDatabase()V

    .line 338
    return-void
.end method

.method public deleteLocalHistoryItem(Ljava/lang/String;Z)V
    .locals 2
    .parameter "query"
    .parameter "synchronous"

    .prologue
    .line 223
    if-eqz p2, :cond_0

    .line 224
    new-instance v0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DeleteTransaction;

    invoke-direct {v0, p0, p1}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DeleteTransaction;-><init>(Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->mDbOpenHelper:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DbOpenHelper;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DbOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DeleteTransaction;->run(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_0
    new-instance v0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DeleteTransaction;

    invoke-direct {v0, p0, p1}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DeleteTransaction;-><init>(Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->runTransactionOnExecutor(Lcom/google/android/googlequicksearchbox/util/SQLiteTransaction;)V

    goto :goto_0
.end method

.method public getLocalHistory(Ljava/lang/String;ILcom/google/android/googlequicksearchbox/util/Consumer;)V
    .locals 2
    .parameter "query"
    .parameter "maxHistory"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/android/googlequicksearchbox/util/Consumer",
            "<",
            "Lcom/google/android/googlequicksearchbox/SuggestionList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p3, localHistory:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Lcom/google/android/googlequicksearchbox/SuggestionList;>;"
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->mExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    new-instance v1, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$1;-><init>(Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;Ljava/lang/String;ILcom/google/android/googlequicksearchbox/util/Consumer;)V

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;->execute(Lcom/google/android/googlequicksearchbox/util/NamedTask;)V

    .line 138
    return-void
.end method

.method getLocalHistoryForQuery(Ljava/lang/String;I)Lcom/google/android/googlequicksearchbox/SuggestionList;
    .locals 8
    .parameter "query"
    .parameter "limit"

    .prologue
    .line 232
    const/4 v1, 0x0

    .line 234
    .local v1, localHistory:Landroid/database/Cursor;
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 235
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->mDbOpenHelper:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DbOpenHelper;

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DbOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->mZeroQueryHistoryQueryString:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 242
    :goto_0
    new-instance v0, Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;

    const-string v3, "local_history_source"

    invoke-direct {v0, v3, p1}, Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .local v0, list:Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_3

    .line 257
    :cond_0
    if-eqz v1, :cond_1

    .line 258
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    return-object v0

    .line 238
    .end local v0           #list:Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->mDbOpenHelper:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DbOpenHelper;

    invoke-virtual {v3}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DbOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->mHistoryQueryString:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->getHistoryQueryParams(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    .line 249
    .restart local v0       #list:Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;
    :cond_3
    invoke-direct {p0, v1}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->suggestionFromCurrentCursor(Landroid/database/Cursor;)Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v2

    .line 250
    .local v2, suggestion:Lcom/google/android/googlequicksearchbox/Suggestion;
    if-eqz v2, :cond_4

    .line 251
    invoke-virtual {v0, v2}, Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;->add(Lcom/google/android/googlequicksearchbox/Suggestion;)Z

    .line 253
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_3

    .line 257
    if-eqz v1, :cond_1

    .line 258
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 257
    .end local v0           #list:Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;
    .end local v2           #suggestion:Lcom/google/android/googlequicksearchbox/Suggestion;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_5

    .line 258
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v3
.end method

.method public hasLocalHistory(Lcom/google/android/googlequicksearchbox/util/Consumer;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/googlequicksearchbox/util/Consumer",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->mExecutor:Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;

    new-instance v1, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$4;-><init>(Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;->execute(Lcom/google/android/googlequicksearchbox/util/NamedTask;)V

    .line 194
    return-void
.end method

.method public insertLocalHistory(Ljava/lang/String;J)V
    .locals 1
    .parameter "query"
    .parameter "insertTime"

    .prologue
    .line 142
    new-instance v0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$2;-><init>(Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;Ljava/lang/String;J)V

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->runTransactionOnExecutor(Lcom/google/android/googlequicksearchbox/util/SQLiteTransaction;)V

    .line 153
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "prefs"
    .parameter "key"

    .prologue
    .line 108
    const-string v0, "search_history"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->deleteAllLocalHistory()V

    .line 111
    :cond_0
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 121
    return-void
.end method
