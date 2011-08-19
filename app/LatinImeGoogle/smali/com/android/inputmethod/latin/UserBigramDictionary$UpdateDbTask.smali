.class Lcom/android/inputmethod/latin/UserBigramDictionary$UpdateDbTask;
.super Landroid/os/AsyncTask;
.source "UserBigramDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/UserBigramDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateDbTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDbHelper:Lcom/android/inputmethod/latin/UserBigramDictionary$DatabaseHelper;

.field private final mLocale:Ljava/lang/String;

.field private final mMap:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/inputmethod/latin/UserBigramDictionary$DatabaseHelper;Ljava/util/HashSet;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "openHelper"
    .parameter
    .parameter "locale"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/inputmethod/latin/UserBigramDictionary$DatabaseHelper;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 308
    .local p3, pendingWrites:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 309
    iput-object p3, p0, Lcom/android/inputmethod/latin/UserBigramDictionary$UpdateDbTask;->mMap:Ljava/util/HashSet;

    .line 310
    iput-object p4, p0, Lcom/android/inputmethod/latin/UserBigramDictionary$UpdateDbTask;->mLocale:Ljava/lang/String;

    .line 311
    iput-object p2, p0, Lcom/android/inputmethod/latin/UserBigramDictionary$UpdateDbTask;->mDbHelper:Lcom/android/inputmethod/latin/UserBigramDictionary$DatabaseHelper;

    .line 312
    return-void
.end method

.method private checkPruneData(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14
    .parameter "db"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 316
    const-string v0, "PRAGMA foreign_keys = ON;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 317
    const-string v1, "frequency"

    new-array v2, v2, [Ljava/lang/String;

    const-string v0, "pair_id"

    aput-object v0, v2, v4

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 320
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 322
    .local v13, totalRowCount:I
    invoke-static {}, Lcom/android/inputmethod/latin/UserBigramDictionary;->access$000()I

    move-result v0

    if-le v13, v0, :cond_0

    .line 323
    invoke-static {}, Lcom/android/inputmethod/latin/UserBigramDictionary;->access$000()I

    move-result v0

    sub-int v0, v13, v0

    invoke-static {}, Lcom/android/inputmethod/latin/UserBigramDictionary;->access$100()I

    move-result v1

    add-int v10, v0, v1

    .line 324
    .local v10, numDeleteRows:I
    const-string v0, "pair_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 325
    .local v12, pairIdColumnId:I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 326
    const/4 v9, 0x0

    .line 327
    .local v9, count:I
    :goto_0
    if-ge v9, v10, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 331
    .local v11, pairId:Ljava/lang/String;
    const-string v0, "main"

    const-string v1, "_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v11, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 333
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    add-int/lit8 v9, v9, 0x1

    .line 335
    goto :goto_0

    .line 338
    .end local v9           #count:I
    .end local v10           #numDeleteRows:I
    .end local v11           #pairId:Ljava/lang/String;
    .end local v12           #pairIdColumnId:I
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 340
    return-void

    .line 338
    .end local v13           #totalRowCount:I
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getContentValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 2
    .parameter "word1"
    .parameter "word2"
    .parameter "locale"

    .prologue
    .line 386
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 387
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "word1"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const-string v1, "word2"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v1, "locale"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    return-object v0
.end method

.method private getFrequencyContentValues(II)Landroid/content/ContentValues;
    .locals 3
    .parameter "pairId"
    .parameter "frequency"

    .prologue
    .line 394
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 395
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "pair_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 396
    const-string v1, "freq"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 397
    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 302
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/UserBigramDictionary$UpdateDbTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13
    .parameter "v"

    .prologue
    .line 349
    iget-object v1, p0, Lcom/android/inputmethod/latin/UserBigramDictionary$UpdateDbTask;->mDbHelper:Lcom/android/inputmethod/latin/UserBigramDictionary$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/UserBigramDictionary$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 350
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "PRAGMA foreign_keys = ON;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 352
    iget-object v1, p0, Lcom/android/inputmethod/latin/UserBigramDictionary$UpdateDbTask;->mMap:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 353
    .local v10, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;>;"
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 354
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;

    .line 357
    .local v8, bi:Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;
    const-string v1, "main"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "word1=? AND word2=? AND locale=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, v8, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;->mWord1:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v8, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;->mWord2:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/inputmethod/latin/UserBigramDictionary$UpdateDbTask;->mLocale:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 363
    .local v9, c:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 365
    const-string v1, "_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 366
    .local v11, pairId:I
    const-string v1, "frequency"

    const-string v2, "pair_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 374
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 377
    const-string v1, "frequency"

    const/4 v2, 0x0

    iget v3, v8, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;->frequency:I

    invoke-direct {p0, v11, v3}, Lcom/android/inputmethod/latin/UserBigramDictionary$UpdateDbTask;->getFrequencyContentValues(II)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 370
    .end local v11           #pairId:I
    :cond_0
    const-string v1, "main"

    const/4 v2, 0x0

    iget-object v3, v8, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;->mWord1:Ljava/lang/String;

    iget-object v4, v8, Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;->mWord2:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/inputmethod/latin/UserBigramDictionary$UpdateDbTask;->mLocale:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5}, Lcom/android/inputmethod/latin/UserBigramDictionary$UpdateDbTask;->getContentValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 372
    .local v12, pairIdLong:Ljava/lang/Long;
    invoke-virtual {v12}, Ljava/lang/Long;->intValue()I

    move-result v11

    .restart local v11       #pairId:I
    goto :goto_1

    .line 379
    .end local v8           #bi:Lcom/android/inputmethod/latin/UserBigramDictionary$Bigram;
    .end local v9           #c:Landroid/database/Cursor;
    .end local v11           #pairId:I
    .end local v12           #pairIdLong:Ljava/lang/Long;
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/UserBigramDictionary$UpdateDbTask;->checkPruneData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 380
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/inputmethod/latin/UserBigramDictionary;->access$202(Z)Z

    .line 382
    const/4 v1, 0x0

    return-object v1
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/inputmethod/latin/UserBigramDictionary;->access$202(Z)Z

    .line 345
    return-void
.end method
