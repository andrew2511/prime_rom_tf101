.class public Lcom/android/providers/contacts/DataRowHandlerForPhoto;
.super Lcom/android/providers/contacts/DataRowHandler;
.source "DataRowHandlerForPhoto.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;)V
    .locals 1
    .parameter "context"
    .parameter "dbHelper"
    .parameter "aggregator"

    .prologue
    .line 31
    const-string v0, "vnd.android.cursor.item/photo"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/contacts/DataRowHandler;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    .locals 4
    .parameter "db"
    .parameter "txContext"
    .parameter "c"

    .prologue
    .line 58
    const/4 v3, 0x2

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 59
    .local v1, rawContactId:J
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/DataRowHandler;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I

    move-result v0

    .line 60
    .local v0, count:I
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v3, p1, v1, v2}, Lcom/android/providers/contacts/ContactAggregator;->updatePhotoId(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 61
    return v0
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J
    .locals 3
    .parameter "db"
    .parameter "txContext"
    .parameter "rawContactId"
    .parameter "values"

    .prologue
    .line 37
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandler;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J

    move-result-wide v0

    .line 38
    .local v0, dataId:J
    invoke-virtual {p2, p3, p4}, Lcom/android/providers/contacts/TransactionContext;->isNewRawContact(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 39
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v2, p1, p3, p4}, Lcom/android/providers/contacts/ContactAggregator;->updatePhotoId(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 41
    :cond_0
    return-wide v0
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 4
    .parameter "db"
    .parameter "txContext"
    .parameter "values"
    .parameter "c"
    .parameter "callerIsSyncAdapter"

    .prologue
    const/4 v3, 0x1

    .line 47
    invoke-interface {p4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 48
    .local v0, rawContactId:J
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandler;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    const/4 v2, 0x0

    .line 53
    :goto_0
    return v2

    .line 52
    :cond_0
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->updatePhotoId(Landroid/database/sqlite/SQLiteDatabase;J)V

    move v2, v3

    .line 53
    goto :goto_0
.end method
