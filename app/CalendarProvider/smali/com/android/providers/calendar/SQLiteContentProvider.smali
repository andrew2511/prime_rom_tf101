.class public abstract Lcom/android/providers/calendar/SQLiteContentProvider;
.super Landroid/content/ContentProvider;
.source "SQLiteContentProvider.java"

# interfaces
.implements Landroid/database/sqlite/SQLiteTransactionListener;


# instance fields
.field private final mApplyingBatch:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mIsCallerSyncAdapter:Ljava/lang/Boolean;

.field private volatile mNotifyChange:Z

.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private applyingBatch()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getIsCallerSyncAdapter(Landroid/net/Uri;)Z
    .locals 3
    .parameter "uri"

    .prologue
    .line 198
    const-string v1, "caller_is_syncadapter"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/android/providers/calendar/QueryParameterUtils;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v0

    .line 200
    .local v0, isCurrentSyncAdapter:Z
    iget-object v1, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mIsCallerSyncAdapter:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mIsCallerSyncAdapter:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mIsCallerSyncAdapter:Ljava/lang/Boolean;

    .line 203
    :cond_1
    return v0
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v7, 0x0

    .line 209
    iget-object v4, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iput-object v4, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 210
    iget-object v4, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 212
    :try_start_0
    iget-object v4, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 213
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 214
    .local v1, numOperations:I
    new-array v3, v1, [Landroid/content/ContentProviderResult;

    .line 215
    .local v3, results:[Landroid/content/ContentProviderResult;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 216
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentProviderOperation;

    .line 217
    .local v2, operation:Landroid/content/ContentProviderOperation;
    if-lez v0, :cond_0

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->isYieldAllowed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 218
    iget-object v4, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-wide/16 v5, 0xfa0

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely(J)Z

    .line 220
    :cond_0
    invoke-virtual {v2, p0, v3, v0}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v4

    aput-object v4, v3, v0

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    .end local v2           #operation:Landroid/content/ContentProviderOperation;
    :cond_1
    iget-object v4, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    iget-object v4, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 226
    iget-object v4, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 227
    invoke-virtual {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->onEndTransaction()V

    return-object v3

    .line 225
    .end local v0           #i:I
    .end local v1           #numOperations:I
    .end local v3           #results:[Landroid/content/ContentProviderResult;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 226
    iget-object v5, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 227
    invoke-virtual {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->onEndTransaction()V

    throw v4
.end method

.method protected beforeTransactionCommit()V
    .locals 0

    .prologue
    .line 248
    return-void
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 6
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 117
    array-length v2, p2

    .line 118
    .local v2, numValues:I
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/SQLiteContentProvider;->getIsCallerSyncAdapter(Landroid/net/Uri;)Z

    move-result v1

    .line 119
    .local v1, isCallerSyncAdapter:Z
    iget-object v4, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iput-object v4, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 120
    iget-object v4, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 122
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 123
    :try_start_0
    aget-object v4, p2, v0

    invoke-virtual {p0, p1, v4, v1}, Lcom/android/providers/calendar/SQLiteContentProvider;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;

    move-result-object v3

    .line 124
    .local v3, result:Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 125
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mNotifyChange:Z

    .line 127
    :cond_0
    iget-object v4, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely()Z

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    .end local v3           #result:Landroid/net/Uri;
    :cond_1
    iget-object v4, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    iget-object v4, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 134
    invoke-virtual {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->onEndTransaction()V

    .line 135
    return v2

    .line 131
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v3, 0x1

    .line 171
    const/4 v1, 0x0

    .line 172
    .local v1, count:I
    invoke-direct {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->applyingBatch()Z

    move-result v0

    .line 173
    .local v0, applyingBatch:Z
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/SQLiteContentProvider;->getIsCallerSyncAdapter(Landroid/net/Uri;)Z

    move-result v2

    .line 174
    .local v2, isCallerSyncAdapter:Z
    if-nez v0, :cond_2

    .line 175
    iget-object v3, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 176
    iget-object v3, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 178
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/android/providers/calendar/SQLiteContentProvider;->deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v1

    .line 179
    if-lez v1, :cond_0

    .line 180
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mNotifyChange:Z

    .line 182
    :cond_0
    iget-object v3, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    iget-object v3, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 187
    invoke-virtual {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->onEndTransaction()V

    .line 194
    :cond_1
    :goto_0
    return v1

    .line 184
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 189
    :cond_2
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/android/providers/calendar/SQLiteContentProvider;->deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v1

    .line 190
    if-lez v1, :cond_1

    .line 191
    iput-boolean v3, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mNotifyChange:Z

    goto :goto_0
.end method

.method protected abstract deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)I
.end method

.method protected getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    return-object v0
.end method

.method protected abstract getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v3, 0x1

    .line 89
    const/4 v2, 0x0

    .line 90
    .local v2, result:Landroid/net/Uri;
    invoke-direct {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->applyingBatch()Z

    move-result v0

    .line 91
    .local v0, applyingBatch:Z
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/SQLiteContentProvider;->getIsCallerSyncAdapter(Landroid/net/Uri;)Z

    move-result v1

    .line 92
    .local v1, isCallerSyncAdapter:Z
    if-nez v0, :cond_2

    .line 93
    iget-object v3, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 94
    iget-object v3, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 96
    :try_start_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/providers/calendar/SQLiteContentProvider;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;

    move-result-object v2

    .line 97
    if-eqz v2, :cond_0

    .line 98
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mNotifyChange:Z

    .line 100
    :cond_0
    iget-object v3, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    iget-object v3, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 105
    invoke-virtual {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->onEndTransaction()V

    .line 112
    :cond_1
    :goto_0
    return-object v2

    .line 102
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 107
    :cond_2
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/providers/calendar/SQLiteContentProvider;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;

    move-result-object v2

    .line 108
    if-eqz v2, :cond_1

    .line 109
    iput-boolean v3, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mNotifyChange:Z

    goto :goto_0
.end method

.method protected abstract insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;
.end method

.method protected abstract notifyChange(Z)V
.end method

.method public onBegin()V
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mIsCallerSyncAdapter:Ljava/lang/Boolean;

    .line 233
    invoke-virtual {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->onBeginTransaction()V

    .line 234
    return-void
.end method

.method protected onBeginTransaction()V
    .locals 0

    .prologue
    .line 245
    return-void
.end method

.method public onCommit()V
    .locals 0

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->beforeTransactionCommit()V

    .line 238
    return-void
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 53
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0, v0}, Lcom/android/providers/calendar/SQLiteContentProvider;->getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 54
    const/4 v1, 0x1

    return v1
.end method

.method protected onEndTransaction()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 251
    iget-boolean v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mNotifyChange:Z

    if-eqz v0, :cond_1

    .line 252
    iput-boolean v1, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mNotifyChange:Z

    .line 254
    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mIsCallerSyncAdapter:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mIsCallerSyncAdapter:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/providers/calendar/SQLiteContentProvider;->notifyChange(Z)V

    .line 256
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 254
    goto :goto_0
.end method

.method public onRollback()V
    .locals 0

    .prologue
    .line 242
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v8, 0x1

    .line 140
    const/4 v7, 0x0

    .line 141
    .local v7, count:I
    invoke-direct {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->applyingBatch()Z

    move-result v6

    .line 142
    .local v6, applyingBatch:Z
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/SQLiteContentProvider;->getIsCallerSyncAdapter(Landroid/net/Uri;)Z

    move-result v5

    .line 143
    .local v5, isCallerSyncAdapter:Z
    if-nez v6, :cond_2

    .line 144
    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 145
    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 147
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/calendar/SQLiteContentProvider;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v7

    .line 149
    if-lez v7, :cond_0

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mNotifyChange:Z

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 157
    invoke-virtual {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->onEndTransaction()V

    .line 166
    :cond_1
    :goto_0
    return v7

    .line 154
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 159
    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/calendar/SQLiteContentProvider;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v7

    .line 161
    if-lez v7, :cond_1

    .line 162
    iput-boolean v8, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mNotifyChange:Z

    goto :goto_0
.end method

.method protected abstract updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
.end method
