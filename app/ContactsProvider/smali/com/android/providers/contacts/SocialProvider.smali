.class public Lcom/android/providers/contacts/SocialProvider;
.super Landroid/content/ContentProvider;
.source "SocialProvider.java"


# static fields
.field private static final sActivitiesContactsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sActivitiesProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sContactsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRawContactsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 52
    new-instance v2, Landroid/content/UriMatcher;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v2, Lcom/android/providers/contacts/SocialProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 75
    sget-object v1, Lcom/android/providers/contacts/SocialProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 77
    .local v1, matcher:Landroid/content/UriMatcher;
    const-string v2, "com.android.social"

    const-string v3, "activities"

    const/16 v4, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    const-string v2, "com.android.social"

    const-string v3, "activities/#"

    const/16 v4, 0x3e9

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    const-string v2, "com.android.social"

    const-string v3, "activities/authored_by/#"

    const/16 v4, 0x3ea

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    const-string v2, "com.android.social"

    const-string v3, "contact_status/#"

    const/16 v4, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 88
    .local v0, columns:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "display_name"

    const-string v3, "contact.display_name AS display_name"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sput-object v0, Lcom/android/providers/contacts/SocialProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #columns:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 94
    .restart local v0       #columns:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "_id"

    const-string v3, "raw_contacts._id AS _id"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v2, "contact_id"

    const-string v3, "contact_id"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sput-object v0, Lcom/android/providers/contacts/SocialProvider;->sRawContactsProjectionMap:Ljava/util/HashMap;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #columns:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 100
    .restart local v0       #columns:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "_id"

    const-string v3, "activities._id AS _id"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v2, "res_package"

    const-string v3, "package AS res_package"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v2, "mimetype"

    const-string v3, "mimetype"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v2, "raw_id"

    const-string v3, "raw_id"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v2, "in_reply_to"

    const-string v3, "in_reply_to"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v2, "author_contact_id"

    const-string v3, "author_contact_id"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v2, "target_contact_id"

    const-string v3, "target_contact_id"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v2, "published"

    const-string v3, "published"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v2, "thread_published"

    const-string v3, "thread_published"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v2, "title"

    const-string v3, "title"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v2, "summary"

    const-string v3, "summary"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v2, "link"

    const-string v3, "link"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v2, "thumbnail"

    const-string v3, "thumbnail"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sput-object v0, Lcom/android/providers/contacts/SocialProvider;->sActivitiesProjectionMap:Ljava/util/HashMap;

    .line 117
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #columns:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 118
    .restart local v0       #columns:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v2, Lcom/android/providers/contacts/SocialProvider;->sContactsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 119
    sget-object v2, Lcom/android/providers/contacts/SocialProvider;->sRawContactsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 120
    sget-object v2, Lcom/android/providers/contacts/SocialProvider;->sActivitiesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 121
    sput-object v0, Lcom/android/providers/contacts/SocialProvider;->sActivitiesContactsProjectionMap:Ljava/util/HashMap;

    .line 123
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private adjustReplyTimestamps(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V
    .locals 19
    .parameter "db"
    .parameter "inReplyTo"
    .parameter "threadPublished"

    .prologue
    .line 258
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 259
    .local v18, values:Landroid/content/ContentValues;
    const-string v5, "thread_published"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v18

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 265
    const-string v5, "activities"

    const-string v6, "in_reply_to= ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    move-object/from16 v0, p1

    move-object v1, v5

    move-object/from16 v2, v18

    move-object v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v17

    .line 268
    .local v17, replies:I
    if-nez v17, :cond_1

    .line 291
    :cond_0
    return-void

    .line 276
    :cond_1
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v17}, Ljava/util/ArrayList;-><init>(I)V

    .line 277
    .local v16, rawIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v6, "activities"

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "raw_id"

    aput-object v8, v7, v5

    const-string v8, "in_reply_to = ?"

    const/4 v5, 0x1

    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v9, v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 281
    .local v13, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 282
    const/4 v5, 0x0

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 285
    :catchall_0
    move-exception v5

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v5

    :cond_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 288
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 289
    .local v15, rawId:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v15

    move-wide/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/SocialProvider;->adjustReplyTimestamps(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    goto :goto_1
.end method

.method private getThreadPublished(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)J
    .locals 12
    .parameter "db"
    .parameter "rawId"
    .parameter "defaultValue"

    .prologue
    .line 228
    const/4 v9, 0x0

    .line 229
    .local v9, inReplyTo:Ljava/lang/String;
    move-wide v10, p3

    .line 231
    .local v10, threadPublished:J
    const-string v1, "activities"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "in_reply_to"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "published"

    aput-object v3, v2, v0

    const-string v3, "raw_id = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 235
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 237
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    .line 240
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 243
    if-eqz v9, :cond_1

    .line 246
    invoke-direct {p0, p1, v9, v10, v11}, Lcom/android/providers/contacts/SocialProvider;->getThreadPublished(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)J

    move-result-wide v0

    .line 249
    :goto_0
    return-wide v0

    .line 240
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    move-wide v0, v10

    .line 249
    goto :goto_0
.end method

.method private insertActivity(Landroid/content/ContentValues;)J
    .locals 13
    .parameter "values"

    .prologue
    .line 180
    iget-object v10, p0, Lcom/android/providers/contacts/SocialProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v10}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 181
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v1, 0x0

    .line 182
    .local v1, id:J
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 188
    :try_start_0
    const-string v10, "res_package"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 189
    .local v5, packageName:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 190
    const-string v10, "package_id"

    iget-object v11, p0, Lcom/android/providers/contacts/SocialProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v11, v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getPackageId(Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 192
    :cond_0
    const-string v10, "res_package"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 194
    const-string v10, "mimetype"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 195
    .local v4, mimeType:Ljava/lang/String;
    const-string v10, "mimetype_id"

    iget-object v11, p0, Lcom/android/providers/contacts/SocialProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v11, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 196
    const-string v10, "mimetype"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 198
    const-string v10, "published"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 199
    .local v6, published:J
    move-wide v8, v6

    .line 201
    .local v8, threadPublished:J
    const-string v10, "in_reply_to"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, inReplyTo:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 203
    invoke-direct {p0, v0, v3, v6, v7}, Lcom/android/providers/contacts/SocialProvider;->getThreadPublished(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)J

    move-result-wide v8

    .line 206
    :cond_1
    const-string v10, "thread_published"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 209
    const-string v10, "activities"

    const-string v11, "raw_id"

    invoke-virtual {v0, v10, v11, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 212
    const-string v10, "raw_id"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 213
    const-string v10, "raw_id"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v0, v10, v6, v7}, Lcom/android/providers/contacts/SocialProvider;->adjustReplyTimestamps(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    .line 216
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 220
    return-wide v1

    .line 218
    .end local v3           #inReplyTo:Ljava/lang/String;
    .end local v4           #mimeType:Ljava/lang/String;
    .end local v5           #packageName:Ljava/lang/String;
    .end local v6           #published:J
    .end local v8           #threadPublished:J
    :catchall_0
    move-exception v10

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v10
.end method

.method private onChange(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/providers/contacts/SocialProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 142
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v9, 0x0

    .line 296
    iget-object v6, p0, Lcom/android/providers/contacts/SocialProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 298
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v6, Lcom/android/providers/contacts/SocialProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    .line 299
    .local v5, match:I
    packed-switch v5, :pswitch_data_0

    .line 311
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown uri: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 301
    :pswitch_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 302
    .local v0, activityId:J
    const-string v6, "activities"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 307
    .end local v0           #activityId:J
    :goto_0
    return v6

    .line 306
    :pswitch_1
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 307
    .local v2, contactId:J
    const-string v6, "activities"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "author_contact_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    .line 299
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7
    .parameter "uri"

    .prologue
    .line 389
    sget-object v4, Lcom/android/providers/contacts/SocialProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 390
    .local v3, match:I
    sparse-switch v3, :sswitch_data_0

    .line 401
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 393
    :sswitch_0
    const-string v4, "vnd.android.cursor.dir/activity"

    .line 399
    :goto_0
    return-object v4

    .line 395
    :sswitch_1
    iget-object v4, p0, Lcom/android/providers/contacts/SocialProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 396
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 397
    .local v0, activityId:J
    iget-object v4, p0, Lcom/android/providers/contacts/SocialProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v4, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getActivityMimeType(J)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 399
    .end local v0           #activityId:J
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    :sswitch_2
    const-string v4, "vnd.android.cursor.item/contact"

    goto :goto_0

    .line 390
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_0
        0xbb8 -> :sswitch_2
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 153
    sget-object v4, Lcom/android/providers/contacts/SocialProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 154
    .local v2, match:I
    const-wide/16 v0, 0x0

    .line 155
    .local v0, id:J
    packed-switch v2, :pswitch_data_0

    .line 162
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 157
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/SocialProvider;->insertActivity(Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 165
    sget-object v4, Landroid/provider/SocialContract$Activities;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 166
    .local v3, result:Landroid/net/Uri;
    invoke-direct {p0, v3}, Lcom/android/providers/contacts/SocialProvider;->onChange(Landroid/net/Uri;)V

    .line 167
    return-object v3

    .line 155
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public isTemporary()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/android/providers/contacts/SocialProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 131
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/SocialProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 132
    const/4 v1, 0x1

    return v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 20
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/SocialProvider;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 326
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 327
    .local v3, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v11, 0x0

    .line 329
    .local v11, limit:Ljava/lang/String;
    sget-object v5, Lcom/android/providers/contacts/SocialProvider;->sUriMatcher:Landroid/content/UriMatcher;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v19

    .line 330
    .local v19, match:I
    sparse-switch v19, :sswitch_data_0

    .line 371
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown uri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 332
    :sswitch_0
    const-string v5, "activities LEFT OUTER JOIN packages ON (activities.package_id = packages._id) LEFT OUTER JOIN mimetypes ON (activities.mimetype_id = mimetypes._id) LEFT OUTER JOIN raw_contacts ON (activities.author_contact_id = raw_contacts._id) LEFT OUTER JOIN contacts ON (raw_contacts.contact_id = contacts._id)"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 333
    sget-object v5, Lcom/android/providers/contacts/SocialProvider;->sActivitiesContactsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 375
    :goto_0
    if-nez p5, :cond_0

    .line 376
    const-string p5, "thread_published DESC, published ASC"

    .line 380
    :cond_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 381
    .local v16, c:Landroid/database/Cursor;
    if-eqz v16, :cond_1

    .line 382
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/SocialProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    move-object v1, v5

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 384
    :cond_1
    return-object v16

    .line 339
    .end local v16           #c:Landroid/database/Cursor;
    :sswitch_1
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v12

    .line 340
    .local v12, activityId:J
    const-string v5, "activities LEFT OUTER JOIN packages ON (activities.package_id = packages._id) LEFT OUTER JOIN mimetypes ON (activities.mimetype_id = mimetypes._id) LEFT OUTER JOIN raw_contacts ON (activities.author_contact_id = raw_contacts._id) LEFT OUTER JOIN contacts ON (raw_contacts.contact_id = contacts._id)"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 341
    sget-object v5, Lcom/android/providers/contacts/SocialProvider;->sActivitiesContactsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 342
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 347
    .end local v12           #activityId:J
    :sswitch_2
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v17

    .line 348
    .local v17, contactId:J
    const-string v5, "activities LEFT OUTER JOIN packages ON (activities.package_id = packages._id) LEFT OUTER JOIN mimetypes ON (activities.mimetype_id = mimetypes._id) LEFT OUTER JOIN raw_contacts ON (activities.author_contact_id = raw_contacts._id) LEFT OUTER JOIN contacts ON (raw_contacts.contact_id = contacts._id)"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 349
    sget-object v5, Lcom/android/providers/contacts/SocialProvider;->sActivitiesContactsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 350
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "author_contact_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 355
    .end local v17           #contactId:J
    :sswitch_3
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v14

    .line 356
    .local v14, aggId:J
    const-string v5, "activities LEFT OUTER JOIN packages ON (activities.package_id = packages._id) LEFT OUTER JOIN mimetypes ON (activities.mimetype_id = mimetypes._id) LEFT OUTER JOIN raw_contacts ON (activities.author_contact_id = raw_contacts._id) LEFT OUTER JOIN contacts ON (raw_contacts.contact_id = contacts._id)"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 357
    sget-object v5, Lcom/android/providers/contacts/SocialProvider;->sActivitiesContactsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 361
    const-string v5, "in_reply_to IS NULL AND "

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 362
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "author_contact_id IN (SELECT _id FROM raw_contacts WHERE contact_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 365
    const-string p5, "published DESC"

    .line 366
    const-string v11, "1"

    .line 367
    goto/16 :goto_0

    .line 330
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_2
        0xbb8 -> :sswitch_3
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 318
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
