.class public Lcom/google/android/partnersetup/RlzAppProvider;
.super Landroid/content/ContentProvider;
.source "RlzAppProvider.java"


# static fields
.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mOpenHelper:Lcom/google/android/partnersetup/RlzDbAdapter;

.field private mPingScheduler:Lcom/google/android/partnersetup/RlzPingService$RlzPingSchedulerInterface;

.field private mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferencesInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 42
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/google/android/partnersetup/RlzAppProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 43
    sget-object v0, Lcom/google/android/partnersetup/RlzAppProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.partnersetup.rlzappprovider"

    const-string v2, "*"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 153
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal operation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getDbAdapter()Lcom/google/android/partnersetup/RlzDbAdapter;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/partnersetup/RlzAppProvider;->mOpenHelper:Lcom/google/android/partnersetup/RlzDbAdapter;

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .parameter "uri"

    .prologue
    .line 133
    sget-object v1, Lcom/google/android/partnersetup/RlzAppProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 134
    .local v0, queryType:I
    if-nez v0, :cond_0

    .line 135
    const-string v1, "vnd.android.cursor.item/vnd.google.android.partnersetup.app.rlz"

    return-object v1

    .line 137
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal operation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    .line 67
    new-instance v0, Lcom/google/android/partnersetup/RlzDbAdapter;

    invoke-virtual {p0}, Lcom/google/android/partnersetup/RlzAppProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/partnersetup/RlzDbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzAppProvider;->mOpenHelper:Lcom/google/android/partnersetup/RlzDbAdapter;

    .line 68
    new-instance v0, Lcom/google/android/partnersetup/RlzPreferences;

    invoke-virtual {p0}, Lcom/google/android/partnersetup/RlzAppProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/partnersetup/RlzPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzAppProvider;->mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferencesInterface;

    .line 69
    new-instance v0, Lcom/google/android/partnersetup/RlzPingService$PingScheduler;

    invoke-virtual {p0}, Lcom/google/android/partnersetup/RlzAppProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/partnersetup/RlzAppProvider;->mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferencesInterface;

    invoke-direct {v0, v1, v2}, Lcom/google/android/partnersetup/RlzPingService$PingScheduler;-><init>(Landroid/content/Context;Lcom/google/android/partnersetup/RlzPreferencesInterface;)V

    iput-object v0, p0, Lcom/google/android/partnersetup/RlzAppProvider;->mPingScheduler:Lcom/google/android/partnersetup/RlzPingService$RlzPingSchedulerInterface;

    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 17
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 76
    sget-object v5, Lcom/google/android/partnersetup/RlzAppProvider;->sUriMatcher:Landroid/content/UriMatcher;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v15

    .line 77
    .local v15, queryType:I
    if-nez v15, :cond_6

    .line 78
    const-string v16, ""

    .line 79
    .local v16, rlz:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/partnersetup/RlzAppProvider;->mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferencesInterface;

    move-object v5, v0

    invoke-interface {v5}, Lcom/google/android/partnersetup/RlzPreferencesInterface;->isRlzEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 80
    const/16 v16, 0x0

    .line 123
    :cond_0
    :goto_0
    new-instance v13, Landroid/database/MatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "current_rlz"

    aput-object v7, v5, v6

    invoke-direct {v13, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 124
    .local v13, mc:Landroid/database/MatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v16, v5, v6

    invoke-virtual {v13, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 125
    return-object v13

    .line 82
    .end local v13           #mc:Landroid/database/MatrixCursor;
    :cond_1
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 84
    .local v2, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 85
    .local v10, ap:Ljava/lang/String;
    const-string v5, "[A-Z0-9]{2}"

    invoke-static {v5, v10}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 86
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid access point "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 88
    :cond_2
    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "current_rlz"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "status"

    aput-object v6, v4, v5

    .line 92
    .local v4, proj:[Ljava/lang/String;
    const-string v5, "apps"

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/partnersetup/RlzAppProvider;->mOpenHelper:Lcom/google/android/partnersetup/RlzDbAdapter;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/partnersetup/RlzDbAdapter;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 94
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "app_name=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v10, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 98
    .local v11, c:Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_5

    const/4 v5, 0x1

    move v14, v5

    .line 99
    .local v14, needPing:Z
    :goto_1
    if-nez v14, :cond_4

    .line 100
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 101
    const/4 v5, 0x0

    invoke-interface {v11, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 102
    const/4 v5, 0x0

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 104
    :cond_3
    const/4 v5, 0x1

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-nez v5, :cond_4

    .line 105
    const/4 v14, 0x1

    .line 108
    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 110
    if-eqz v14, :cond_0

    .line 112
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 113
    .local v12, cv:Landroid/content/ContentValues;
    const-string v5, "ap"

    invoke-virtual {v12, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v5, "event_type"

    const-string v6, "F"

    invoke-virtual {v12, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v5, "status"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v12, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    const-string v5, "events"

    const-string v6, "ap"

    invoke-virtual {v3, v5, v6, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/partnersetup/RlzAppProvider;->mPingScheduler:Lcom/google/android/partnersetup/RlzPingService$RlzPingSchedulerInterface;

    move-object v5, v0

    invoke-interface {v5}, Lcom/google/android/partnersetup/RlzPingService$RlzPingSchedulerInterface;->scheduleEventPing()V

    goto/16 :goto_0

    .line 98
    .end local v12           #cv:Landroid/content/ContentValues;
    .end local v14           #needPing:Z
    :cond_5
    const/4 v5, 0x0

    move v14, v5

    goto :goto_1

    .line 127
    .end local v2           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v3           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v4           #proj:[Ljava/lang/String;
    .end local v10           #ap:Ljava/lang/String;
    .end local v11           #c:Landroid/database/Cursor;
    .end local v16           #rlz:Ljava/lang/String;
    :cond_6
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URI "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method setPingScheduler(Lcom/google/android/partnersetup/RlzPingService$RlzPingSchedulerInterface;)V
    .locals 0
    .parameter "sched"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/google/android/partnersetup/RlzAppProvider;->mPingScheduler:Lcom/google/android/partnersetup/RlzPingService$RlzPingSchedulerInterface;

    .line 58
    return-void
.end method

.method setPreferences(Lcom/google/android/partnersetup/RlzPreferencesInterface;)V
    .locals 0
    .parameter "prefs"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/android/partnersetup/RlzAppProvider;->mRlzPreferences:Lcom/google/android/partnersetup/RlzPreferencesInterface;

    .line 53
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal operation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
