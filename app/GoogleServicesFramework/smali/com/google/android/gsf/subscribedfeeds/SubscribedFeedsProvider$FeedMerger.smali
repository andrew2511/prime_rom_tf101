.class Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;
.super Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;
.source "SubscribedFeedsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeedMerger"
.end annotation


# instance fields
.field private mValues:Landroid/content/ContentValues;

.field final synthetic this$0:Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;)V
    .locals 6
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->this$0:Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;

    .line 314
    invoke-virtual {p1}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->access$100()Landroid/net/Uri;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->access$200()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->access$300()Landroid/net/Uri;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;)V

    .line 312
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    .line 315
    return-void
.end method


# virtual methods
.method public deleteRow(Landroid/database/Cursor;)V
    .locals 9
    .parameter "localCursor"

    .prologue
    const/4 v5, 0x0

    .line 377
    const-string v4, "_id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 379
    .local v2, localPersonId:J
    iget-object v4, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 380
    iget-object v4, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    const-string v6, "_sync_dirty"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 381
    iget-object v6, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    const-string v7, "_sync_id"

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v4, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    const-string v7, "_sync_time"

    move-object v0, v5

    check-cast v0, Ljava/lang/Long;

    move-object v6, v0

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 383
    iget-object v4, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    const-string v7, "_sync_version"

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v4, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->this$0:Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;

    invoke-virtual {v4}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 385
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v4, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mTable:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v4, v6, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 386
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 387
    return-void
.end method

.method public insertRow(Landroid/content/ContentProvider;Landroid/database/Cursor;)V
    .locals 4
    .parameter "diffs"
    .parameter "diffsCursor"

    .prologue
    .line 326
    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->this$0:Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;

    invoke-virtual {v1}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 330
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 331
    const-string v1, "_sync_id"

    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    invoke-static {p2, v1, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 333
    const-string v1, "_sync_account"

    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    invoke-static {p2, v1, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 335
    const-string v1, "_sync_account_type"

    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    invoke-static {p2, v1, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 337
    const-string v1, "_sync_version"

    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    invoke-static {p2, v1, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 339
    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mDeletedTable:Ljava/lang/String;

    const-string v2, "_sync_id"

    iget-object v3, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 340
    return-void
.end method

.method protected notifyChanges()V
    .locals 4

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->this$0:Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;

    invoke-virtual {v0}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->access$100()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 322
    return-void
.end method

.method public resolveRow(JLjava/lang/String;Landroid/content/ContentProvider;Landroid/database/Cursor;)V
    .locals 7
    .parameter "localPersonID"
    .parameter "syncID"
    .parameter "diffs"
    .parameter "diffsCursor"

    .prologue
    .line 351
    const/4 v6, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->updateOrResolveRow(JLjava/lang/String;Landroid/content/ContentProvider;Landroid/database/Cursor;Z)V

    .line 352
    return-void
.end method

.method protected updateOrResolveRow(JLjava/lang/String;Landroid/content/ContentProvider;Landroid/database/Cursor;Z)V
    .locals 5
    .parameter "localPersonID"
    .parameter "syncID"
    .parameter "diffs"
    .parameter "diffsCursor"
    .parameter "conflicts"

    .prologue
    .line 356
    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 358
    const-string v1, "_sync_id"

    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    invoke-static {p5, v1, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 360
    const-string v1, "_sync_time"

    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    invoke-static {p5, v1, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 362
    const-string v1, "_sync_version"

    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    invoke-static {p5, v1, v2}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 364
    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    const-string v2, "_sync_dirty"

    if-eqz p6, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 365
    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->this$0:Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;

    invoke-virtual {v1}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 366
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mTable:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 368
    return-void

    .line 364
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public updateRow(JLandroid/content/ContentProvider;Landroid/database/Cursor;)V
    .locals 7
    .parameter "localPersonID"
    .parameter "diffs"
    .parameter "diffsCursor"

    .prologue
    .line 345
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->updateOrResolveRow(JLjava/lang/String;Landroid/content/ContentProvider;Landroid/database/Cursor;Z)V

    .line 346
    return-void
.end method
