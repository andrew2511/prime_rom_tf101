.class public Lcom/android/contacts/activities/AttachPhotoActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "AttachPhotoActivity.java"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mRawContactIds:[Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    return-void
.end method

.method private insertPhoto(Landroid/content/ContentValues;Landroid/net/Uri;Z)V
    .locals 8
    .parameter "values"
    .parameter "rawContactDataUri"
    .parameter "assertAccount"

    .prologue
    const/4 v7, 0x0

    .line 227
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-eqz p3, :cond_0

    .line 232
    invoke-static {p2}, Landroid/content/ContentProviderOperation;->newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "mimetype=? AND (account_type IN (?,?) OR account_type IS NULL)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "vnd.android.cursor.item/photo"

    aput-object v5, v4, v7

    const/4 v5, 0x1

    const-string v6, "com.google"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "com.android.exchange"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/ContentProviderOperation$Builder;->withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_0
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/photo"

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-static {p2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "com.android.contacts"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 258
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 249
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Problem querying raw_contacts/data"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 250
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 252
    .local v0, e:Landroid/content/OperationApplicationException;
    if-eqz p3, :cond_1

    .line 253
    invoke-direct {p0, p1, p2, v7}, Lcom/android/contacts/activities/AttachPhotoActivity;->updatePhoto(Landroid/content/ContentValues;Landroid/net/Uri;Z)V

    goto :goto_0

    .line 255
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Problem inserting photo into raw_contacts/data"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static queryForAllRawContactIds(Landroid/content/ContentResolver;J)Ljava/util/ArrayList;
    .locals 8
    .parameter "cr"
    .parameter "contactId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    const/4 v6, 0x0

    .line 199
    .local v6, rawContactIdCursor:Landroid/database/Cursor;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v7, rawContactIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :try_start_0
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 204
    if-eqz v6, :cond_1

    .line 205
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 210
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    .line 211
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 210
    :cond_1
    if-eqz v6, :cond_2

    .line 211
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 214
    :cond_2
    return-object v7
.end method

.method private static toClassArray([J)[Ljava/lang/Long;
    .locals 4
    .parameter "in"

    .prologue
    .line 98
    if-nez p0, :cond_0

    .line 99
    const/4 v2, 0x0

    .line 105
    :goto_0
    return-object v2

    .line 101
    :cond_0
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Long;

    .line 102
    .local v1, out:[Ljava/lang/Long;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 103
    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v0

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 105
    goto :goto_0
.end method

.method private static toPrimativeArray([Ljava/lang/Long;)[J
    .locals 4
    .parameter "in"

    .prologue
    .line 87
    if-nez p0, :cond_0

    .line 88
    const/4 v2, 0x0

    .line 94
    :goto_0
    return-object v2

    .line 90
    :cond_0
    array-length v2, p0

    new-array v1, v2, [J

    .line 91
    .local v1, out:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 92
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 94
    goto :goto_0
.end method

.method private updatePhoto(Landroid/content/ContentValues;Landroid/net/Uri;Z)V
    .locals 8
    .parameter "values"
    .parameter "rawContactDataUri"
    .parameter "allowInsert"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 266
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v2, "mimetype"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 272
    invoke-static {p2}, Landroid/content/ContentProviderOperation;->newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "mimetype=?"

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "vnd.android.cursor.item/photo"

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/ContentProviderOperation$Builder;->withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-static {p2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "mimetype=?"

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "vnd.android.cursor.item/photo"

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "com.android.contacts"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 294
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 285
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Problem querying raw_contacts/data"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 286
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 287
    .local v0, e:Landroid/content/OperationApplicationException;
    if-eqz p3, :cond_0

    .line 289
    invoke-direct {p0, p1, p2, v6}, Lcom/android/contacts/activities/AttachPhotoActivity;->insertPhoto(Landroid/content/ContentValues;Landroid/net/Uri;Z)V

    goto :goto_0

    .line 291
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Problem inserting photo raw_contacts/data"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 27
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "result"

    .prologue
    .line 110
    const/16 v24, -0x1

    move/from16 v0, p2

    move/from16 v1, v24

    if-eq v0, v1, :cond_1

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/AttachPhotoActivity;->finish()V

    .line 194
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 114
    .restart local p1
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    .line 115
    .local v14, mUri:Landroid/net/Uri;
    const/4 v12, 0x0

    .line 116
    .local v12, isError:Z
    const/16 v24, 0x1

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    invoke-virtual {v14}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v24

    const-string v25, "content"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_6

    invoke-virtual {v14}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v24

    const-string v25, "com.android.contacts"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_2

    invoke-virtual {v14}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v24

    const-string v25, "contacts"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 124
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/AttachPhotoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    .line 125
    .local v15, myIntent:Landroid/content/Intent;
    new-instance v11, Landroid/content/Intent;

    const-string v24, "com.android.camera.action.CROP"

    invoke-virtual {v15}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v25

    move-object v0, v11

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 126
    .local v11, intent:Landroid/content/Intent;
    const-string v24, "mimeType"

    move-object v0, v15

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_3

    .line 127
    invoke-virtual {v15}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v24

    const-string v25, "mimeType"

    move-object v0, v15

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object v0, v11

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    :cond_3
    const-string v24, "crop"

    const-string v25, "true"

    move-object v0, v11

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const-string v24, "aspectX"

    const/16 v25, 0x1

    move-object v0, v11

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    const-string v24, "aspectY"

    const/16 v25, 0x1

    move-object v0, v11

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    const-string v24, "outputX"

    const/16 v25, 0x60

    move-object v0, v11

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    const-string v24, "outputY"

    const/16 v25, 0x60

    move-object v0, v11

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    const-string v24, "return-data"

    const/16 v25, 0x1

    move-object v0, v11

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 135
    const/16 v24, 0x2

    move-object/from16 v0, p0

    move-object v1, v11

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/activities/AttachPhotoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 140
    :try_start_0
    invoke-static {v14}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    .line 141
    .local v5, contactId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/AttachPhotoActivity;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-wide v1, v5

    invoke-static {v0, v1, v2}, Lcom/android/contacts/activities/AttachPhotoActivity;->queryForAllRawContactIds(Landroid/content/ContentResolver;J)Ljava/util/ArrayList;

    move-result-object v20

    .line 143
    .local v20, rawContactIdsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Long;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/activities/AttachPhotoActivity;->mRawContactIds:[Ljava/lang/Long;

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/AttachPhotoActivity;->mRawContactIds:[Ljava/lang/Long;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, [Ljava/lang/Long;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/activities/AttachPhotoActivity;->mRawContactIds:[Ljava/lang/Long;

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/AttachPhotoActivity;->mRawContactIds:[Ljava/lang/Long;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v24

    if-eqz v24, :cond_5

    .line 146
    :cond_4
    const/4 v12, 0x1

    .line 190
    .end local v5           #contactId:J
    .end local v11           #intent:Landroid/content/Intent;
    .end local v15           #myIntent:Landroid/content/Intent;
    .end local v20           #rawContactIdsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_5
    :goto_1
    if-eqz v12, :cond_0

    .line 191
    const v24, 0x7f0c0059

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/widget/Toast;->show()V

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/AttachPhotoActivity;->finish()V

    goto/16 :goto_0

    .line 148
    .restart local v11       #intent:Landroid/content/Intent;
    .restart local v15       #myIntent:Landroid/content/Intent;
    :catch_0
    move-exception v24

    move-object/from16 v16, v24

    .line 149
    .local v16, nfe:Ljava/lang/NumberFormatException;
    const-string v24, "AttachPhotoActivity"

    const-string v25, "While parsing ID, uri must append contact ID to the end of the path."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual/range {v16 .. v16}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 151
    const/4 v12, 0x1

    .line 156
    goto :goto_1

    .line 152
    .end local v16           #nfe:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v24

    move-object/from16 v7, v24

    .line 153
    .local v7, e:Ljava/lang/Exception;
    const-string v24, "AttachPhotoActivity"

    const-string v25, "Error occurred while converting the contact into a raw_contact."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 155
    const/4 v12, 0x1

    goto :goto_1

    .line 158
    .end local v7           #e:Ljava/lang/Exception;
    .end local v11           #intent:Landroid/content/Intent;
    .end local v15           #myIntent:Landroid/content/Intent;
    .restart local p1
    :cond_6
    const/16 v24, 0x2

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 159
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 160
    .local v8, extras:Landroid/os/Bundle;
    if-eqz v8, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/AttachPhotoActivity;->mRawContactIds:[Ljava/lang/Long;

    move-object/from16 v24, v0

    if-eqz v24, :cond_7

    .line 161
    const-string v24, "data"

    move-object v0, v8

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Landroid/graphics/Bitmap;

    .line 162
    .local v17, photo:Landroid/graphics/Bitmap;
    if-eqz v17, :cond_7

    .line 163
    new-instance v23, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v23 .. v23}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 164
    .local v23, stream:Ljava/io/ByteArrayOutputStream;
    sget-object v24, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v25, 0x4b

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 166
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 167
    .local v10, imageValues:Landroid/content/ContentValues;
    const-string v24, "data15"

    invoke-virtual/range {v23 .. v23}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v25

    move-object v0, v10

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 168
    const-string v24, "is_super_primary"

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object v0, v10

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/AttachPhotoActivity;->mRawContactIds:[Ljava/lang/Long;

    move-object v4, v0

    .local v4, arr$:[Ljava/lang/Long;
    array-length v13, v4

    .local v13, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_2
    if-ge v9, v13, :cond_7

    aget-object v19, v4, v9

    .line 174
    .local v19, rawContactId:Ljava/lang/Long;
    const/16 v22, 0x0

    .line 176
    .local v22, shouldUpdate:Z
    sget-object v24, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    invoke-static/range {v24 .. v26}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v21

    .line 178
    .local v21, rawContactUri:Landroid/net/Uri;
    const-string v24, "data"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 180
    .local v18, rawContactDataUri:Landroid/net/Uri;
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, v18

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/activities/AttachPhotoActivity;->insertPhoto(Landroid/content/ContentValues;Landroid/net/Uri;Z)V

    .line 171
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 184
    .end local v4           #arr$:[Ljava/lang/Long;
    .end local v9           #i$:I
    .end local v10           #imageValues:Landroid/content/ContentValues;
    .end local v13           #len$:I
    .end local v17           #photo:Landroid/graphics/Bitmap;
    .end local v18           #rawContactDataUri:Landroid/net/Uri;
    .end local v19           #rawContactId:Ljava/lang/Long;
    .end local v21           #rawContactUri:Landroid/net/Uri;
    .end local v22           #shouldUpdate:Z
    .end local v23           #stream:Ljava/io/ByteArrayOutputStream;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/activities/AttachPhotoActivity;->finish()V

    goto/16 :goto_1

    .line 186
    .end local v8           #extras:Landroid/os/Bundle;
    :cond_8
    const-string v24, "AttachPhotoActivity"

    const-string v25, "Unsupported URI."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v12, 0x1

    goto/16 :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    if-eqz p1, :cond_0

    .line 67
    const-string v1, "raw_contact_uris"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/activities/AttachPhotoActivity;->toClassArray([J)[Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mRawContactIds:[Ljava/lang/Long;

    .line 74
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/AttachPhotoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 75
    return-void

    .line 69
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/activities/AttachPhotoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 81
    iget-object v0, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mRawContactIds:[Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mRawContactIds:[Ljava/lang/Long;

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "raw_contact_uris"

    iget-object v1, p0, Lcom/android/contacts/activities/AttachPhotoActivity;->mRawContactIds:[Ljava/lang/Long;

    invoke-static {v1}, Lcom/android/contacts/activities/AttachPhotoActivity;->toPrimativeArray([Ljava/lang/Long;)[J

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 84
    :cond_0
    return-void
.end method
