.class public Lcom/android/providers/contacts/SearchIndexManager;
.super Ljava/lang/Object;
.source "SearchIndexManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;,
        Lcom/android/providers/contacts/SearchIndexManager$ContactIndexQuery;
    }
.end annotation


# instance fields
.field private final mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

.field private final mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field private mIndexBuilder:Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;

.field private mSb:Ljava/lang/StringBuilder;

.field private mSelectionArgs1:[Ljava/lang/String;

.field private mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;)V
    .locals 1
    .parameter "contactsProvider"

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    .line 197
    new-instance v0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;

    invoke-direct {v0}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mIndexBuilder:Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;

    .line 198
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mValues:Landroid/content/ContentValues;

    .line 199
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSelectionArgs1:[Ljava/lang/String;

    .line 202
    iput-object p1, p0, Lcom/android/providers/contacts/SearchIndexManager;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    .line 203
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iput-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 204
    return-void
.end method

.method private buildIndex(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I
    .locals 14
    .parameter "db"
    .parameter "selection"
    .parameter "replace"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 271
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    const-string v1, "contact_id, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    const-string v1, "(CASE WHEN mimetype_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "vnd.android.cursor.item/nickname"

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 274
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    const-string v1, " THEN -4 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    const-string v1, " WHEN mimetype_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "vnd.android.cursor.item/organization"

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 277
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    const-string v1, " THEN -3 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    const-string v1, " WHEN mimetype_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 280
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    const-string v1, " THEN -2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    const-string v1, " WHEN mimetype_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 283
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    const-string v1, " THEN -1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    const-string v1, " ELSE mimetype_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    const-string v1, " END), is_super_primary, data._id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    const/4 v10, 0x0

    .line 288
    .local v10, count:I
    const-string v1, "data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id)"

    sget-object v2, Lcom/android/providers/contacts/SearchIndexManager$ContactIndexQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 290
    .local v11, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mIndexBuilder:Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;

    invoke-virtual {v0, v11}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->setCursor(Landroid/database/Cursor;)V

    .line 291
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mIndexBuilder:Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;

    invoke-virtual {v0}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->reset()V

    .line 293
    const-wide/16 v2, -0x1

    .line 294
    .local v2, currentContactId:J
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 295
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 296
    .local v8, contactId:J
    cmp-long v0, v8, v2

    if-eqz v0, :cond_2

    .line 297
    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-eqz v0, :cond_1

    .line 298
    iget-object v4, p0, Lcom/android/providers/contacts/SearchIndexManager;->mIndexBuilder:Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;

    move-object v0, p0

    move-object v1, p1

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/SearchIndexManager;->saveContactIndex(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/SearchIndexManager$IndexBuilder;Z)V

    .line 299
    add-int/lit8 v10, v10, 0x1

    .line 301
    :cond_1
    move-wide v2, v8

    .line 302
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mIndexBuilder:Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;

    invoke-virtual {v0}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->reset()V

    .line 304
    :cond_2
    const/4 v0, 0x1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 305
    .local v13, mimetype:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0, v13}, Lcom/android/providers/contacts/ContactsProvider2;->getDataRowHandler(Ljava/lang/String;)Lcom/android/providers/contacts/DataRowHandler;

    move-result-object v12

    .line 306
    .local v12, dataRowHandler:Lcom/android/providers/contacts/DataRowHandler;
    invoke-virtual {v12}, Lcom/android/providers/contacts/DataRowHandler;->hasSearchableData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mIndexBuilder:Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;

    invoke-virtual {v12, v0}, Lcom/android/providers/contacts/DataRowHandler;->appendSearchableData(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;)V

    .line 308
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mIndexBuilder:Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;

    invoke-virtual {v0}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->commit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 316
    .end local v8           #contactId:J
    .end local v12           #dataRowHandler:Lcom/android/providers/contacts/DataRowHandler;
    .end local v13           #mimetype:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0

    .line 311
    :cond_3
    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-eqz v0, :cond_4

    .line 312
    :try_start_1
    iget-object v4, p0, Lcom/android/providers/contacts/SearchIndexManager;->mIndexBuilder:Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;

    move-object v0, p0

    move-object v1, p1

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/SearchIndexManager;->saveContactIndex(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/SearchIndexManager$IndexBuilder;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    add-int/lit8 v10, v10, 0x1

    .line 316
    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 318
    return v10
.end method

.method private getSearchIndexVersion()I
    .locals 3

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "search_index"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private rebuildIndex(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .parameter "db"

    .prologue
    const/4 v7, 0x0

    .line 224
    iget-object v5, p0, Lcom/android/providers/contacts/SearchIndexManager;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/providers/contacts/ContactsProvider2;->setProviderStatus(I)V

    .line 225
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v3

    .line 226
    .local v3, start:J
    const/4 v0, 0x0

    .line 228
    .local v0, count:I
    :try_start_0
    iget-object v5, p0, Lcom/android/providers/contacts/SearchIndexManager;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v5, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createSearchIndexTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 229
    const-string v5, "contact_id IN (SELECT _id FROM default_directory)"

    const/4 v6, 0x0

    invoke-direct {p0, p1, v5, v6}, Lcom/android/providers/contacts/SearchIndexManager;->buildIndex(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 232
    iget-object v5, p0, Lcom/android/providers/contacts/SearchIndexManager;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v5, v7}, Lcom/android/providers/contacts/ContactsProvider2;->setProviderStatus(I)V

    .line 234
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    .line 235
    .local v1, end:J
    const-string v5, "ContactsFTS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rebuild contact search index in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v7, v1, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " contacts"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-void

    .line 232
    .end local v1           #end:J
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/android/providers/contacts/SearchIndexManager;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v6, v7}, Lcom/android/providers/contacts/ContactsProvider2;->setProviderStatus(I)V

    .line 234
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    .line 235
    .restart local v1       #end:J
    const-string v6, "ContactsFTS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Rebuild contact search index in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v1, v3

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " contacts"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    throw v5
.end method

.method private saveContactIndex(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/SearchIndexManager$IndexBuilder;Z)V
    .locals 6
    .parameter "db"
    .parameter "contactId"
    .parameter "builder"
    .parameter "replace"

    .prologue
    const/4 v5, 0x0

    .line 323
    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 324
    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager;->mValues:Landroid/content/ContentValues;

    const-string v2, "content"

    invoke-virtual {p4}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager;->mValues:Landroid/content/ContentValues;

    const-string v2, "name"

    invoke-virtual {p4}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager;->mValues:Landroid/content/ContentValues;

    const-string v2, "tokens"

    invoke-virtual {p4}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->getTokens()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    if-eqz p5, :cond_1

    .line 328
    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 329
    const-string v1, "search_index"

    iget-object v2, p0, Lcom/android/providers/contacts/SearchIndexManager;->mValues:Landroid/content/ContentValues;

    const-string v3, "contact_id=CAST(? AS int)"

    iget-object v4, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSelectionArgs1:[Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 331
    .local v0, count:I
    if-nez v0, :cond_0

    .line 332
    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager;->mValues:Landroid/content/ContentValues;

    const-string v2, "contact_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 333
    const-string v1, "search_index"

    iget-object v2, p0, Lcom/android/providers/contacts/SearchIndexManager;->mValues:Landroid/content/ContentValues;

    invoke-virtual {p1, v1, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 339
    .end local v0           #count:I
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager;->mValues:Landroid/content/ContentValues;

    const-string v2, "contact_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 337
    const-string v1, "search_index"

    iget-object v2, p0, Lcom/android/providers/contacts/SearchIndexManager;->mValues:Landroid/content/ContentValues;

    invoke-virtual {p1, v1, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0
.end method

.method private setSearchIndexVersion(I)V
    .locals 3
    .parameter "version"

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "search_index"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    return-void
.end method


# virtual methods
.method public updateIndex()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 207
    invoke-direct {p0}, Lcom/android/providers/contacts/SearchIndexManager;->getSearchIndexVersion()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 221
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 211
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 213
    :try_start_0
    invoke-direct {p0}, Lcom/android/providers/contacts/SearchIndexManager;->getSearchIndexVersion()I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 214
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/SearchIndexManager;->rebuildIndex(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 215
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/providers/contacts/SearchIndexManager;->setSearchIndexVersion(I)V

    .line 216
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public updateIndexForRawContacts(Ljava/util/Set;Ljava/util/Set;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, contactIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .local p2, rawContactIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/16 v6, 0x29

    const/4 v5, 0x1

    .line 241
    iget-object v3, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 242
    iget-object v3, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 244
    iget-object v3, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    const-string v4, "contact_id IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 246
    .local v0, contactId:Ljava/lang/Long;
    iget-object v3, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 248
    .end local v0           #contactId:Ljava/lang/Long;
    :cond_0
    iget-object v3, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 249
    iget-object v3, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 252
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 253
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 254
    iget-object v3, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    const-string v4, " OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    :cond_2
    iget-object v3, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    const-string v4, "raw_contact_id IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 258
    .local v2, rawContactId:Ljava/lang/Long;
    iget-object v3, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 260
    .end local v2           #rawContactId:Ljava/lang/Long;
    :cond_3
    iget-object v3, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 261
    iget-object v3, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 264
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v3, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    const-string v4, ") AND contact_id IN (SELECT _id FROM default_directory)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    iget-object v3, p0, Lcom/android/providers/contacts/SearchIndexManager;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/contacts/SearchIndexManager;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, v5}, Lcom/android/providers/contacts/SearchIndexManager;->buildIndex(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I

    .line 267
    return-void
.end method
