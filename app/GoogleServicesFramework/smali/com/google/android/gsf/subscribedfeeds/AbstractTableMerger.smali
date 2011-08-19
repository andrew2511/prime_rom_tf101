.class public abstract Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;
.super Ljava/lang/Object;
.source "AbstractTableMerger.java"


# static fields
.field private static TRACE:Z

.field protected static mSyncMarkValues:Landroid/content/ContentValues;

.field private static final syncDirtyProjection:[Ljava/lang/String;

.field private static final syncIdAndVersionProjection:[Ljava/lang/String;


# instance fields
.field protected mDb:Landroid/database/sqlite/SQLiteDatabase;

.field protected mDeletedTable:Ljava/lang/String;

.field protected mDeletedTableURL:Landroid/net/Uri;

.field private volatile mIsMergeCancelled:Z

.field protected mTable:Ljava/lang/String;

.field protected mTableURL:Landroid/net/Uri;

.field private mValues:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mSyncMarkValues:Landroid/content/ContentValues;

    .line 55
    sget-object v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mSyncMarkValues:Landroid/content/ContentValues;

    const-string v1, "_sync_mark"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 56
    sput-boolean v3, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->TRACE:Z

    .line 60
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_sync_dirty"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "_sync_id"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "_sync_version"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->syncDirtyProjection:[Ljava/lang/String;

    .line 62
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_sync_id"

    aput-object v1, v0, v3

    const-string v1, "_sync_version"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->syncIdAndVersionProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .parameter "database"
    .parameter "table"
    .parameter "tableURL"
    .parameter "deletedTable"
    .parameter "deletedTableURL"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 85
    iput-object p2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mTable:Ljava/lang/String;

    .line 86
    iput-object p3, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mTableURL:Landroid/net/Uri;

    .line 87
    iput-object p4, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDeletedTable:Ljava/lang/String;

    .line 88
    iput-object p5, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDeletedTableURL:Landroid/net/Uri;

    .line 89
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mValues:Landroid/content/ContentValues;

    .line 90
    return-void
.end method

.method private static findInCursor(Landroid/database/Cursor;ILjava/lang/String;)Z
    .locals 3
    .parameter "cursor"
    .parameter "column"
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 124
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 125
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 126
    .local v0, comp:I
    if-lez v0, :cond_0

    .line 127
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 130
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    .line 132
    .end local v0           #comp:I
    :goto_1
    return v1

    .restart local v0       #comp:I
    :cond_1
    move v1, v2

    .line 130
    goto :goto_1

    .end local v0           #comp:I
    :cond_2
    move v1, v2

    .line 132
    goto :goto_1
.end method

.method private findLocalChanges(Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Landroid/accounts/Account;Landroid/content/SyncResult;)V
    .locals 19
    .parameter "mergeResult"
    .parameter "temporaryInstanceFactory"
    .parameter "account"
    .parameter "syncResult"

    .prologue
    .line 543
    const-string v3, "AbstractTableMerger"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "AbstractTableMerger"

    const-string v4, "generating client updates"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_0
    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v4, v0

    aput-object v4, v7, v3

    const/4 v3, 0x1

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object v4, v0

    aput-object v4, v7, v3

    .line 549
    .local v7, accountSelectionArgs:[Ljava/lang/String;
    const-wide/16 v17, 0x0

    .line 550
    .local v17, numInsertsOrUpdates:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mTable:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    const-string v6, "(_sync_account IS NULL OR (_sync_account=? and _sync_account_type=?)) and (_sync_id IS NULL OR (_sync_dirty > 0 and _sync_version IS NOT NULL))"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 553
    .local v12, localChangesCursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move v0, v3

    int-to-long v0, v0

    move-wide/from16 v17, v0

    .line 554
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 555
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mIsMergeCancelled:Z

    move v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 570
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 603
    :goto_1
    return-void

    .line 558
    :cond_1
    :try_start_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    move-object v3, v0

    if-nez v3, :cond_2

    .line 559
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->getTemporaryInstance()Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    .line 562
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mValues:Landroid/content/ContentValues;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mValues:Landroid/content/ContentValues;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mValues:Landroid/content/ContentValues;

    move-object v3, v0

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 565
    const-string v3, "_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mValues:Landroid/content/ContentValues;

    move-object v4, v0

    const-string v5, "_sync_local_id"

    invoke-static {v12, v3, v4, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 567
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mTableURL:Landroid/net/Uri;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mValues:Landroid/content/ContentValues;

    move-object v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 570
    :catchall_0
    move-exception v3

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 574
    const-string v3, "AbstractTableMerger"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "AbstractTableMerger"

    const-string v4, "generating client deletions"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mTable:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v3, v4}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v15

    .line 576
    .local v15, numEntries:J
    const-wide/16 v13, 0x0

    .line 577
    .local v13, numDeletedEntries:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDeletedTable:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_8

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDeletedTable:Ljava/lang/String;

    move-object v4, v0

    sget-object v5, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->syncIdAndVersionProjection:[Ljava/lang/String;

    const-string v6, "_sync_account=? AND _sync_account_type=? AND _sync_id IS NOT NULL"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDeletedTable:Ljava/lang/String;

    move-object v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_sync_id"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 584
    .local v11, deletedCursor:Landroid/database/Cursor;
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v3

    int-to-long v13, v3

    .line 585
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 586
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mIsMergeCancelled:Z

    move v3, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_5

    .line 596
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 587
    :cond_5
    :try_start_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    move-object v3, v0

    if-nez v3, :cond_6

    .line 588
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->getTemporaryInstance()Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    .line 591
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mValues:Landroid/content/ContentValues;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mValues:Landroid/content/ContentValues;

    move-object v3, v0

    invoke-static {v11, v3}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 593
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDeletedTableURL:Landroid/net/Uri;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mValues:Landroid/content/ContentValues;

    move-object v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 596
    :catchall_1
    move-exception v3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_7
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 600
    .end local v11           #deletedCursor:Landroid/database/Cursor;
    :cond_8
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v3, v0

    iget-wide v4, v3, Landroid/content/SyncStats;->numDeletes:J

    add-long/2addr v4, v13

    iput-wide v4, v3, Landroid/content/SyncStats;->numDeletes:J

    .line 601
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v3, v0

    iget-wide v4, v3, Landroid/content/SyncStats;->numUpdates:J

    add-long v4, v4, v17

    iput-wide v4, v3, Landroid/content/SyncStats;->numUpdates:J

    .line 602
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v3, v0

    iget-wide v4, v3, Landroid/content/SyncStats;->numEntries:J

    add-long/2addr v4, v15

    iput-wide v4, v3, Landroid/content/SyncStats;->numEntries:J

    goto/16 :goto_1
.end method

.method private fullyDeleteMatchingRows(Landroid/database/Cursor;Landroid/accounts/Account;Landroid/content/SyncResult;)V
    .locals 12
    .parameter "diffsCursor"
    .parameter "account"
    .parameter "syncResult"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 490
    const-string v0, "_sync_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 491
    .local v10, serverSyncIdColumn:I
    invoke-interface {p1, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1

    move v9, v2

    .line 495
    .local v9, deleteBySyncId:Z
    :goto_0
    const/4 v8, 0x0

    .line 497
    .local v8, c:Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 498
    const/4 v0, 0x3

    :try_start_0
    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    iget-object v1, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x2

    iget-object v1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v1, v4, v0

    .line 500
    .local v4, selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mTable:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const-string v3, "_sync_id=? and _sync_account=? and _sync_account_type=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 508
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 509
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 510
    invoke-virtual {p0, v8}, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->deleteRow(Landroid/database/Cursor;)V

    .line 511
    iget-object v0, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numDeletes:J

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    iput-wide v1, v0, Landroid/content/SyncStats;->numDeletes:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 514
    .end local v4           #selectionArgs:[Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .end local v8           #c:Landroid/database/Cursor;
    .end local v9           #deleteBySyncId:Z
    :cond_1
    move v9, v1

    .line 491
    goto :goto_0

    .line 503
    .restart local v8       #c:Landroid/database/Cursor;
    .restart local v9       #deleteBySyncId:Z
    :cond_2
    :try_start_1
    const-string v0, "_sync_local_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 504
    .local v11, serverSyncLocalIdColumn:I
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 505
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mTable:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const-string v3, "_id=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    goto :goto_1

    .line 514
    .end local v11           #serverSyncLocalIdColumn:I
    :cond_3
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 516
    :cond_4
    if-eqz v9, :cond_5

    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDeletedTable:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 517
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDeletedTable:Ljava/lang/String;

    const-string v2, "_sync_id=? and _sync_account=? and _sync_account_type=?"

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 519
    :cond_5
    return-void
.end method


# virtual methods
.method protected cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V
    .locals 0
    .parameter "cursor"
    .parameter "map"

    .prologue
    .line 525
    invoke-static {p1, p2}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 526
    return-void
.end method

.method public abstract deleteRow(Landroid/database/Cursor;)V
.end method

.method public abstract insertRow(Landroid/content/ContentProvider;Landroid/database/Cursor;)V
.end method

.method public merge(Landroid/accounts/Account;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;Landroid/content/SyncResult;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V
    .locals 2
    .parameter "account"
    .parameter "serverDiffs"
    .parameter "result"
    .parameter "syncResult"
    .parameter "temporaryInstanceFactory"

    .prologue
    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mIsMergeCancelled:Z

    .line 150
    if-eqz p2, :cond_1

    .line 151
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this must be called from within a DB transaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    invoke-virtual {p0, p1, p2, p4}, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mergeServerDiffs(Landroid/accounts/Account;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Landroid/content/SyncResult;)V

    .line 155
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->notifyChanges()V

    .line 158
    :cond_1
    if-eqz p3, :cond_2

    .line 159
    invoke-direct {p0, p3, p5, p1, p4}, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->findLocalChanges(Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Landroid/accounts/Account;Landroid/content/SyncResult;)V

    .line 161
    :cond_2
    const-string v0, "AbstractTableMerger"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "AbstractTableMerger"

    const-string v1, "merge complete"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_3
    return-void
.end method

.method public mergeServerDiffs(Landroid/accounts/Account;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Landroid/content/SyncResult;)V
    .locals 46
    .parameter "account"
    .parameter "serverDiffs"
    .parameter "syncResult"

    .prologue
    .line 169
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->getContainsDiffs()Z

    move-result v28

    .line 172
    .local v28, diffsArePartial:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mTable:Ljava/lang/String;

    move-object v6, v0

    sget-object v7, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mSyncMarkValues:Landroid/content/ContentValues;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDeletedTable:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDeletedTable:Ljava/lang/String;

    move-object v6, v0

    sget-object v7, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mSyncMarkValues:Landroid/content/ContentValues;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 177
    :cond_0
    const/16 v34, 0x0

    .line 178
    .local v34, localCursor:Landroid/database/Cursor;
    const/16 v24, 0x0

    .line 179
    .local v24, deletedCursor:Landroid/database/Cursor;
    const/16 v30, 0x0

    .line 182
    .local v30, diffsCursor:Landroid/database/Cursor;
    const/4 v5, 0x2

    :try_start_0
    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v6, v0

    aput-object v6, v9, v5

    const/4 v5, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object v6, v0

    aput-object v6, v9, v5

    .line 183
    .local v9, accountSelectionArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mTable:Ljava/lang/String;

    move-object v6, v0

    sget-object v7, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->syncDirtyProjection:[Ljava/lang/String;

    const-string v8, "_sync_mark> 0 and _sync_account=? and _sync_account_type=?"

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mTable:Ljava/lang/String;

    move-object v13, v0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_sync_id"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v34

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDeletedTable:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_5

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDeletedTable:Ljava/lang/String;

    move-object v6, v0

    sget-object v7, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->syncIdAndVersionProjection:[Ljava/lang/String;

    const-string v8, "_sync_mark> 0 and _sync_account=? and _sync_account_type=?"

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDeletedTable:Ljava/lang/String;

    move-object v13, v0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_sync_id"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 196
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mTableURL:Landroid/net/Uri;

    move-object v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mTable:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_sync_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v10, p2

    invoke-virtual/range {v10 .. v15}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v15

    .line 198
    .end local v30           #diffsCursor:Landroid/database/Cursor;
    .local v15, diffsCursor:Landroid/database/Cursor;
    :try_start_1
    const-string v5, "_sync_id"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 199
    .local v25, deletedSyncIDColumn:I
    const-string v5, "_sync_version"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 200
    .local v27, deletedSyncVersionColumn:I
    const-string v5, "_sync_id"

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v40

    .line 201
    .local v40, serverSyncIDColumn:I
    const-string v5, "_sync_version"

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v43

    .line 202
    .local v43, serverSyncVersionColumn:I
    const-string v5, "_sync_local_id"

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v41

    .line 204
    .local v41, serverSyncLocalIdColumn:I
    const/16 v32, 0x0

    .line 205
    .local v32, lastSyncId:Ljava/lang/String;
    const/16 v29, 0x0

    .line 206
    .local v29, diffsCount:I
    const/16 v33, 0x0

    .line 207
    .local v33, localCount:I
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->moveToFirst()Z

    .line 208
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToFirst()Z

    .line 209
    .end local v9           #accountSelectionArgs:[Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 210
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mIsMergeCancelled:Z

    move v5, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_6

    .line 462
    if-eqz v15, :cond_2

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 463
    :cond_2
    if-eqz v34, :cond_3

    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    .line 464
    :cond_3
    if-eqz v24, :cond_4

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 486
    :cond_4
    :goto_2
    return-void

    .line 191
    .end local v15           #diffsCursor:Landroid/database/Cursor;
    .end local v25           #deletedSyncIDColumn:I
    .end local v27           #deletedSyncVersionColumn:I
    .end local v29           #diffsCount:I
    .end local v32           #lastSyncId:Ljava/lang/String;
    .end local v33           #localCount:I
    .end local v40           #serverSyncIDColumn:I
    .end local v41           #serverSyncLocalIdColumn:I
    .end local v43           #serverSyncVersionColumn:I
    .restart local v9       #accountSelectionArgs:[Ljava/lang/String;
    .restart local v30       #diffsCursor:Landroid/database/Cursor;
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    const-string v6, "select \'a\' as _sync_id, \'b\' as _sync_version limit 0"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v24

    goto/16 :goto_0

    .line 213
    .end local v9           #accountSelectionArgs:[Ljava/lang/String;
    .end local v30           #diffsCursor:Landroid/database/Cursor;
    .restart local v15       #diffsCursor:Landroid/database/Cursor;
    .restart local v25       #deletedSyncIDColumn:I
    .restart local v27       #deletedSyncVersionColumn:I
    .restart local v29       #diffsCount:I
    .restart local v32       #lastSyncId:Ljava/lang/String;
    .restart local v33       #localCount:I
    .restart local v40       #serverSyncIDColumn:I
    .restart local v41       #serverSyncLocalIdColumn:I
    .restart local v43       #serverSyncVersionColumn:I
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContended()Z

    .line 214
    move-object v0, v15

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 215
    .local v13, serverSyncId:Ljava/lang/String;
    move-object v0, v15

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v42

    .line 216
    .local v42, serverSyncVersion:Ljava/lang/String;
    const-wide/16 v11, 0x0

    .line 217
    .local v11, localRowId:J
    const/16 v38, 0x0

    .line 219
    .local v38, localSyncVersion:Ljava/lang/String;
    add-int/lit8 v29, v29, 0x1

    .line 220
    const-string v5, "AbstractTableMerger"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "AbstractTableMerger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processing server entry "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_7
    sget-boolean v5, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->TRACE:Z

    if-eqz v5, :cond_9

    .line 224
    const/16 v5, 0xa

    move/from16 v0, v29

    move v1, v5

    if-ne v0, v1, :cond_8

    .line 225
    const-string v5, "atmtrace"

    invoke-static {v5}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    .line 227
    :cond_8
    const/16 v5, 0x14

    move/from16 v0, v29

    move v1, v5

    if-ne v0, v1, :cond_9

    .line 228
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 232
    :cond_9
    const/16 v23, 0x0

    .line 233
    .local v23, conflict:Z
    const/16 v44, 0x0

    .line 234
    .local v44, update:Z
    const/16 v31, 0x0

    .line 236
    .local v31, insert:Z
    const-string v5, "AbstractTableMerger"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 237
    const-string v5, "AbstractTableMerger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found event with serverSyncID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_a
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 240
    const-string v5, "AbstractTableMerger"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 241
    const-string v5, "AbstractTableMerger"

    const-string v6, "server entry doesn\'t have a serverSyncID"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 462
    .end local v11           #localRowId:J
    .end local v13           #serverSyncId:Ljava/lang/String;
    .end local v23           #conflict:Z
    .end local v25           #deletedSyncIDColumn:I
    .end local v27           #deletedSyncVersionColumn:I
    .end local v29           #diffsCount:I
    .end local v31           #insert:Z
    .end local v32           #lastSyncId:Ljava/lang/String;
    .end local v33           #localCount:I
    .end local v38           #localSyncVersion:Ljava/lang/String;
    .end local v40           #serverSyncIDColumn:I
    .end local v41           #serverSyncLocalIdColumn:I
    .end local v42           #serverSyncVersion:Ljava/lang/String;
    .end local v43           #serverSyncVersionColumn:I
    .end local v44           #update:Z
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v15, :cond_b

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 463
    :cond_b
    if-eqz v34, :cond_c

    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    .line 464
    :cond_c
    if-eqz v24, :cond_d

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v5

    .line 249
    .restart local v11       #localRowId:J
    .restart local v13       #serverSyncId:Ljava/lang/String;
    .restart local v23       #conflict:Z
    .restart local v25       #deletedSyncIDColumn:I
    .restart local v27       #deletedSyncVersionColumn:I
    .restart local v29       #diffsCount:I
    .restart local v31       #insert:Z
    .restart local v32       #lastSyncId:Ljava/lang/String;
    .restart local v33       #localCount:I
    .restart local v38       #localSyncVersion:Ljava/lang/String;
    .restart local v40       #serverSyncIDColumn:I
    .restart local v41       #serverSyncLocalIdColumn:I
    .restart local v42       #serverSyncVersion:Ljava/lang/String;
    .restart local v43       #serverSyncVersionColumn:I
    .restart local v44       #update:Z
    :cond_e
    :try_start_4
    move-object v0, v13

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 250
    const-string v5, "AbstractTableMerger"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 251
    const-string v5, "AbstractTableMerger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "skipping record with duplicate remote server id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 255
    :cond_f
    move-object/from16 v32, v13

    .line 257
    const/16 v36, 0x0

    .line 258
    .local v36, localSyncID:Ljava/lang/String;
    const/16 v35, 0x0

    .line 260
    .local v35, localSyncDirty:Z
    :goto_4
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_1c

    .line 261
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mIsMergeCancelled:Z

    move v5, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v5, :cond_12

    .line 462
    if-eqz v15, :cond_10

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 463
    :cond_10
    if-eqz v34, :cond_11

    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    .line 464
    :cond_11
    if-eqz v24, :cond_4

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 264
    :cond_12
    add-int/lit8 v33, v33, 0x1

    .line 265
    const/4 v5, 0x2

    :try_start_5
    move-object/from16 v0, v34

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 270
    invoke-static/range {v36 .. v36}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 271
    const-string v5, "AbstractTableMerger"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 272
    const-string v5, "AbstractTableMerger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "local record "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    move-object/from16 v0, v34

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has no _sync_id, ignoring"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_13
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->moveToNext()Z

    .line 277
    const/16 v36, 0x0

    .line 278
    goto :goto_4

    .line 281
    :cond_14
    move-object v0, v13

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    .line 284
    .local v22, comp:I
    if-lez v22, :cond_18

    .line 285
    const-string v5, "AbstractTableMerger"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 286
    const-string v5, "AbstractTableMerger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "local record "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    move-object/from16 v0, v34

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has _sync_id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " that is < server _sync_id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_15
    if-eqz v28, :cond_16

    .line 292
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->moveToNext()Z

    .line 302
    :goto_5
    const/16 v36, 0x0

    .line 303
    goto/16 :goto_4

    .line 294
    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->deleteRow(Landroid/database/Cursor;)V

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDeletedTable:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_17

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDeletedTable:Ljava/lang/String;

    move-object v6, v0

    const-string v7, "_sync_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v36, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 299
    :cond_17
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v6, v5, Landroid/content/SyncStats;->numDeletes:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numDeletes:J

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContended()Z

    goto :goto_5

    .line 307
    :cond_18
    if-gez v22, :cond_1a

    .line 308
    const-string v5, "AbstractTableMerger"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 309
    const-string v5, "AbstractTableMerger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "local record "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    move-object/from16 v0, v34

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has _sync_id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " that is > server _sync_id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_19
    const/16 v36, 0x0

    .line 318
    :cond_1a
    if-nez v22, :cond_1c

    .line 319
    const-string v5, "AbstractTableMerger"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 320
    const-string v5, "AbstractTableMerger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "local record "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    move-object/from16 v0, v34

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has _sync_id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " that matches the server _sync_id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_1b
    const/4 v5, 0x0

    move-object/from16 v0, v34

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_1f

    const/4 v5, 0x1

    move/from16 v35, v5

    .line 326
    :goto_6
    const/4 v5, 0x1

    move-object/from16 v0, v34

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 327
    const/4 v5, 0x3

    move-object/from16 v0, v34

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 328
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->moveToNext()Z

    .line 338
    .end local v22           #comp:I
    :cond_1c
    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object v2, v13

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->findInCursor(Landroid/database/Cursor;ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 339
    const-string v5, "AbstractTableMerger"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 340
    const-string v5, "AbstractTableMerger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remote record "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is in the deleted table"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_1d
    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 344
    .local v26, deletedSyncVersion:Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 345
    const-string v5, "AbstractTableMerger"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 346
    const-string v5, "AbstractTableMerger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setting version of deleted record "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_1e
    new-instance v45, Landroid/content/ContentValues;

    invoke-direct/range {v45 .. v45}, Landroid/content/ContentValues;-><init>()V

    .line 350
    .local v45, values:Landroid/content/ContentValues;
    const-string v5, "_sync_version"

    move-object/from16 v0, v45

    move-object v1, v5

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDeletedTable:Ljava/lang/String;

    move-object v6, v0

    const-string v7, "_sync_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v13, v8, v9

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v45

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 325
    .end local v26           #deletedSyncVersion:Ljava/lang/String;
    .end local v45           #values:Landroid/content/ContentValues;
    .restart local v22       #comp:I
    :cond_1f
    const/4 v5, 0x0

    move/from16 v35, v5

    goto/16 :goto_6

    .line 362
    .end local v22           #comp:I
    :cond_20
    move-object v0, v15

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_22

    .line 363
    move-object v0, v15

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 364
    const-string v5, "AbstractTableMerger"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 365
    const-string v5, "AbstractTableMerger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "the remote record with sync id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has a local sync id, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_21
    move-object/from16 v36, v13

    .line 369
    const/16 v35, 0x0

    .line 370
    const/16 v38, 0x0

    .line 373
    :cond_22
    invoke-static/range {v36 .. v36}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2a

    .line 377
    if-eqz v38, :cond_23

    if-eqz v42, :cond_23

    move-object/from16 v0, v42

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_26

    :cond_23
    const/4 v5, 0x1

    move/from16 v39, v5

    .line 380
    .local v39, recordChanged:Z
    :goto_7
    if-eqz v39, :cond_29

    .line 381
    if-eqz v35, :cond_27

    .line 382
    const-string v5, "AbstractTableMerger"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 383
    const-string v5, "AbstractTableMerger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remote record "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " conflicts with local _sync_id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", local _id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_24
    const/16 v23, 0x1

    .line 414
    .end local v39           #recordChanged:Z
    :cond_25
    :goto_8
    if-eqz v44, :cond_2c

    .line 415
    move-object/from16 v0, p0

    move-wide v1, v11

    move-object/from16 v3, p2

    move-object v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->updateRow(JLandroid/content/ContentProvider;Landroid/database/Cursor;)V

    .line 416
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v6, v5, Landroid/content/SyncStats;->numUpdates:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numUpdates:J

    goto/16 :goto_1

    .line 377
    :cond_26
    const/4 v5, 0x0

    move/from16 v39, v5

    goto :goto_7

    .line 389
    .restart local v39       #recordChanged:Z
    :cond_27
    const-string v5, "AbstractTableMerger"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 390
    const-string v5, "AbstractTableMerger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remote record "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " updates local _sync_id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", local _id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_28
    const/16 v44, 0x1

    goto :goto_8

    .line 400
    :cond_29
    const-string v5, "AbstractTableMerger"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 401
    const-string v5, "AbstractTableMerger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping update: localSyncVersion: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", serverSyncVersion: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 408
    .end local v39           #recordChanged:Z
    :cond_2a
    const-string v5, "AbstractTableMerger"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 409
    const-string v5, "AbstractTableMerger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remote record "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is new, inserting"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_2b
    const/16 v31, 0x1

    goto/16 :goto_8

    .line 417
    :cond_2c
    if-eqz v23, :cond_2d

    move-object/from16 v10, p0

    move-object/from16 v14, p2

    .line 418
    invoke-virtual/range {v10 .. v15}, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->resolveRow(JLjava/lang/String;Landroid/content/ContentProvider;Landroid/database/Cursor;)V

    .line 419
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v6, v5, Landroid/content/SyncStats;->numUpdates:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numUpdates:J

    goto/16 :goto_1

    .line 420
    :cond_2d
    if-eqz v31, :cond_1

    .line 421
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->insertRow(Landroid/content/ContentProvider;Landroid/database/Cursor;)V

    .line 422
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v6, v5, Landroid/content/SyncStats;->numInserts:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numInserts:J

    goto/16 :goto_1

    .line 426
    .end local v11           #localRowId:J
    .end local v13           #serverSyncId:Ljava/lang/String;
    .end local v23           #conflict:Z
    .end local v31           #insert:Z
    .end local v35           #localSyncDirty:Z
    .end local v36           #localSyncID:Ljava/lang/String;
    .end local v38           #localSyncVersion:Ljava/lang/String;
    .end local v42           #serverSyncVersion:Ljava/lang/String;
    .end local v44           #update:Z
    :cond_2e
    const-string v5, "AbstractTableMerger"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 427
    const-string v5, "AbstractTableMerger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " server entries"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_2f
    if-nez v28, :cond_36

    .line 435
    :goto_9
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_36

    .line 436
    const/4 v5, 0x2

    move-object/from16 v0, v34

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 437
    .local v37, localSyncId:Ljava/lang/String;
    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 438
    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_9

    .line 441
    :cond_30
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mIsMergeCancelled:Z

    move v5, v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v5, :cond_33

    .line 462
    if-eqz v15, :cond_31

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 463
    :cond_31
    if-eqz v34, :cond_32

    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    .line 464
    :cond_32
    if-eqz v24, :cond_4

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 444
    :cond_33
    add-int/lit8 v33, v33, 0x1

    .line 445
    :try_start_6
    const-string v5, "AbstractTableMerger"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 446
    const-string v5, "AbstractTableMerger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleting local record "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    move-object/from16 v0, v34

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " _sync_id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_34
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->deleteRow(Landroid/database/Cursor;)V

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDeletedTable:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_35

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDeletedTable:Ljava/lang/String;

    move-object v6, v0

    const-string v7, "_sync_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v37, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 455
    :cond_35
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v6, v5, Landroid/content/SyncStats;->numDeletes:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numDeletes:J

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContended()Z

    goto/16 :goto_9

    .line 459
    .end local v37           #localSyncId:Ljava/lang/String;
    :cond_36
    const-string v5, "AbstractTableMerger"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_37

    const-string v5, "AbstractTableMerger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checked "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " local entries"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 462
    :cond_37
    if-eqz v15, :cond_38

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 463
    :cond_38
    if-eqz v34, :cond_39

    invoke-interface/range {v34 .. v34}, Landroid/database/Cursor;->close()V

    .line 464
    :cond_39
    if-eqz v24, :cond_3a

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 468
    :cond_3a
    const-string v5, "AbstractTableMerger"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3b

    const-string v5, "AbstractTableMerger"

    const-string v6, "applying deletions from the server"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDeletedTableURL:Landroid/net/Uri;

    move-object v5, v0

    if-eqz v5, :cond_4

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDeletedTableURL:Landroid/net/Uri;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, p2

    invoke-virtual/range {v16 .. v21}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 474
    :goto_a
    :try_start_7
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 475
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mIsMergeCancelled:Z

    move v5, v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v5, :cond_3c

    .line 483
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 479
    :cond_3c
    :try_start_8
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->fullyDeleteMatchingRows(Landroid/database/Cursor;Landroid/accounts/Account;Landroid/content/SyncResult;)V

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContended()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_a

    .line 483
    :catchall_1
    move-exception v5

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v5

    :cond_3d
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 462
    .end local v15           #diffsCursor:Landroid/database/Cursor;
    .end local v25           #deletedSyncIDColumn:I
    .end local v27           #deletedSyncVersionColumn:I
    .end local v29           #diffsCount:I
    .end local v32           #lastSyncId:Ljava/lang/String;
    .end local v33           #localCount:I
    .end local v40           #serverSyncIDColumn:I
    .end local v41           #serverSyncLocalIdColumn:I
    .end local v43           #serverSyncVersionColumn:I
    .restart local v30       #diffsCursor:Landroid/database/Cursor;
    :catchall_2
    move-exception v5

    move-object/from16 v15, v30

    .end local v30           #diffsCursor:Landroid/database/Cursor;
    .restart local v15       #diffsCursor:Landroid/database/Cursor;
    goto/16 :goto_3
.end method

.method protected abstract notifyChanges()V
.end method

.method public onMergeCancelled()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mIsMergeCancelled:Z

    .line 137
    return-void
.end method

.method public abstract resolveRow(JLjava/lang/String;Landroid/content/ContentProvider;Landroid/database/Cursor;)V
.end method

.method public abstract updateRow(JLandroid/content/ContentProvider;Landroid/database/Cursor;)V
.end method
