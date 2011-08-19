.class public Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;
.super Lcom/android/providers/contacts/DataRowHandler;
.source "DataRowHandlerForGroupMembership.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/DataRowHandlerForGroupMembership$RawContactsQuery;
    }
.end annotation


# instance fields
.field private final mGroupIdCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/util/HashMap;)V
    .locals 1
    .parameter "context"
    .parameter "dbHelper"
    .parameter "aggregator"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/providers/contacts/ContactsDatabaseHelper;",
            "Lcom/android/providers/contacts/ContactAggregator;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p4, groupIdCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;>;>;"
    const-string v0, "vnd.android.cursor.item/group_membership"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/contacts/DataRowHandler;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/lang/String;)V

    .line 73
    iput-object p4, p0, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->mGroupIdCache:Ljava/util/HashMap;

    .line 74
    return-void
.end method

.method private getOrMakeGroup(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Landroid/accounts/Account;)J
    .locals 22
    .parameter "db"
    .parameter "rawContactId"
    .parameter "sourceId"
    .parameter "account"

    .prologue
    .line 190
    if-nez p5, :cond_1

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->mSelectionArgs1:[Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 192
    const-string v5, "raw_contacts"

    sget-object v6, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership$RawContactsQuery;->COLUMNS:[Ljava/lang/String;

    const-string v7, "_id=?"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->mSelectionArgs1:[Ljava/lang/String;

    move-object v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 195
    .local v14, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 196
    const/4 v4, 0x2

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 197
    .local v12, accountName:Ljava/lang/String;
    const/4 v4, 0x1

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 198
    .local v13, accountType:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 199
    new-instance p5, Landroid/accounts/Account;

    .end local p5
    move-object/from16 v0, p5

    move-object v1, v12

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    .end local v12           #accountName:Ljava/lang/String;
    .end local v13           #accountType:Ljava/lang/String;
    .restart local p5
    :cond_0
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 207
    .end local v14           #c:Landroid/database/Cursor;
    :cond_1
    if-nez p5, :cond_2

    .line 208
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "if the groupmembership only has a sourceid the the contact must be associated with an account"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 203
    .end local p5
    .restart local v14       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v4

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v4

    .line 213
    .end local v14           #c:Landroid/database/Cursor;
    .restart local p5
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->mGroupIdCache:Ljava/util/HashMap;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 214
    .local v16, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;>;"
    if-nez v16, :cond_3

    .line 215
    new-instance v16, Ljava/util/ArrayList;

    .end local v16           #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;>;"
    const/4 v4, 0x1

    move-object/from16 v0, v16

    move v1, v4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 216
    .restart local v16       #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->mGroupIdCache:Ljava/util/HashMap;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p4

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :cond_3
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 220
    .local v15, count:I
    const/16 v21, 0x0

    .local v21, i:I
    :goto_0
    move/from16 v0, v21

    move v1, v15

    if-ge v0, v1, :cond_5

    .line 221
    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;

    .line 222
    .local v17, entry:Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->accountName:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p5

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->accountType:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p5

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 223
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->groupId:J

    move-wide v4, v0

    .line 257
    :goto_1
    return-wide v4

    .line 220
    :cond_4
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 227
    .end local v17           #entry:Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;
    :cond_5
    new-instance v17, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;

    invoke-direct/range {v17 .. v17}, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;-><init>()V

    .line 228
    .restart local v17       #entry:Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;
    move-object/from16 v0, p5

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->accountName:Ljava/lang/String;

    .line 229
    move-object/from16 v0, p5

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->accountType:Ljava/lang/String;

    .line 230
    move-object/from16 v0, p4

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->sourceId:Ljava/lang/String;

    .line 231
    const/4 v4, 0x0

    move-object/from16 v0, v16

    move v1, v4

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 235
    const-string v5, "groups"

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "_id"

    aput-object v7, v6, v4

    const-string v7, "sourceid=? AND account_name=? AND account_type=?"

    const/4 v4, 0x3

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p4, v8, v4

    const/4 v4, 0x1

    move-object/from16 v0, p5

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v9, v0

    aput-object v9, v8, v4

    const/4 v4, 0x2

    move-object/from16 v0, p5

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object v9, v0

    aput-object v9, v8, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 239
    .restart local v14       #c:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 240
    const/4 v4, 0x0

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-wide v0, v4

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->groupId:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 254
    :goto_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 257
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->groupId:J

    move-wide v4, v0

    goto :goto_1

    .line 242
    :cond_6
    :try_start_2
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 243
    .local v20, groupValues:Landroid/content/ContentValues;
    const-string v4, "account_name"

    move-object/from16 v0, p5

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v20

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v4, "account_type"

    move-object/from16 v0, p5

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v20

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v4, "sourceid"

    move-object/from16 v0, v20

    move-object v1, v4

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v4, "groups"

    const-string v5, "account_name"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v18

    .line 247
    .local v18, groupId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v18, v4

    if-gez v4, :cond_7

    .line 248
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unable to create a new group with this sourceid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 254
    .end local v18           #groupId:J
    .end local v20           #groupValues:Landroid/content/ContentValues;
    :catchall_1
    move-exception v4

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v4

    .line 251
    .restart local v18       #groupId:J
    .restart local v20       #groupValues:Landroid/content/ContentValues;
    :cond_7
    :try_start_3
    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->groupId:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2
.end method

.method private hasFavoritesGroupMembership(Landroid/database/sqlite/SQLiteDatabase;J)Z
    .locals 10
    .parameter "db"
    .parameter "rawContactId"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 116
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v4, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v3, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v0

    .line 118
    .local v0, groupMembershipMimetypeId:J
    const-wide/16 v3, 0x0

    const-string v5, "SELECT COUNT(*) FROM data LEFT OUTER JOIN groups ON data.data1=groups._id WHERE mimetype_id=? AND data.raw_contact_id=? AND favorites!=0"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {p1, v5, v6}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    move v2, v9

    .line 121
    .local v2, isStarred:Z
    :goto_0
    return v2

    .end local v2           #isStarred:Z
    :cond_0
    move v2, v8

    .line 118
    goto :goto_0
.end method

.method private resolveGroupSourceIdInValues(Lcom/android/providers/contacts/TransactionContext;JLandroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Z)V
    .locals 10
    .parameter "txContext"
    .parameter "rawContactId"
    .parameter "db"
    .parameter "values"
    .parameter "isInsert"

    .prologue
    .line 150
    const-string v0, "group_sourceid"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    .line 151
    .local v7, containsGroupSourceId:Z
    const-string v0, "data1"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    .line 152
    .local v6, containsGroupId:Z
    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    .line 153
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "you are not allowed to set both the GroupMembership.GROUP_SOURCE_ID and GroupMembership.GROUP_ROW_ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    if-nez v7, :cond_1

    if-nez v6, :cond_1

    .line 159
    if-eqz p6, :cond_2

    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "you must set exactly one of GroupMembership.GROUP_SOURCE_ID and GroupMembership.GROUP_ROW_ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_1
    if-eqz v7, :cond_2

    .line 169
    const-string v0, "group_sourceid"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 170
    .local v4, sourceId:Ljava/lang/String;
    invoke-virtual {p1, p2, p3}, Lcom/android/providers/contacts/TransactionContext;->getAccountForRawContact(J)Landroid/accounts/Account;

    move-result-object v5

    move-object v0, p0

    move-object v1, p4

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->getOrMakeGroup(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Landroid/accounts/Account;)J

    move-result-wide v8

    .line 172
    .local v8, groupId:J
    const-string v0, "group_sourceid"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 173
    const-string v0, "data1"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 175
    .end local v4           #sourceId:Ljava/lang/String;
    .end local v8           #groupId:J
    :cond_2
    return-void
.end method

.method private updateRawContactsStar(Landroid/database/sqlite/SQLiteDatabase;JZ)V
    .locals 6
    .parameter "db"
    .parameter "rawContactId"
    .parameter "starred"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 106
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 107
    .local v0, rawContactValues:Landroid/content/ContentValues;
    const-string v1, "starred"

    if-eqz p4, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    const-string v1, "raw_contacts"

    const-string v2, "_id=?"

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v1, p2, p3}, Lcom/android/providers/contacts/ContactAggregator;->updateStarred(J)V

    .line 112
    :cond_0
    return-void

    :cond_1
    move v2, v5

    .line 107
    goto :goto_0
.end method

.method private updateVisibility(Lcom/android/providers/contacts/TransactionContext;J)V
    .locals 4
    .parameter "txContext"
    .parameter "rawContactId"

    .prologue
    .line 138
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v0

    .line 139
    .local v0, contactId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateContactVisibleOnlyIfChanged(Lcom/android/providers/contacts/TransactionContext;J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v2, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->updateAggregationAfterVisibilityChange(J)V

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    .locals 6
    .parameter "db"
    .parameter "txContext"
    .parameter "c"

    .prologue
    .line 126
    const/4 v5, 0x2

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 127
    .local v2, rawContactId:J
    invoke-direct {p0, p1, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->hasFavoritesGroupMembership(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v4

    .line 128
    .local v4, wasStarred:Z
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/DataRowHandler;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I

    move-result v0

    .line 129
    .local v0, count:I
    invoke-direct {p0, p1, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->hasFavoritesGroupMembership(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v1

    .line 130
    .local v1, isStarred:Z
    if-eqz v4, :cond_0

    if-nez v1, :cond_0

    .line 131
    const/4 v5, 0x0

    invoke-direct {p0, p1, v2, v3, v5}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->updateRawContactsStar(Landroid/database/sqlite/SQLiteDatabase;JZ)V

    .line 133
    :cond_0
    invoke-direct {p0, p2, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->updateVisibility(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 134
    return v0
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J
    .locals 9
    .parameter "db"
    .parameter "txContext"
    .parameter "rawContactId"
    .parameter "values"

    .prologue
    const/4 v6, 0x1

    .line 79
    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-object v4, p1

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->resolveGroupSourceIdInValues(Lcom/android/providers/contacts/TransactionContext;JLandroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Z)V

    .line 80
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandler;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J

    move-result-wide v7

    .line 81
    .local v7, dataId:J
    invoke-direct {p0, p1, p3, p4}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->hasFavoritesGroupMembership(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-direct {p0, p1, p3, p4, v6}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->updateRawContactsStar(Landroid/database/sqlite/SQLiteDatabase;JZ)V

    .line 84
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->updateVisibility(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 85
    return-wide v7
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 10
    .parameter "db"
    .parameter "txContext"
    .parameter "values"
    .parameter "c"
    .parameter "callerIsSyncAdapter"

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 91
    invoke-interface {p4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 92
    .local v2, rawContactId:J
    invoke-direct {p0, p1, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->hasFavoritesGroupMembership(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v8

    .local v8, wasStarred:Z
    move-object v0, p0

    move-object v1, p2

    move-object v4, p1

    move-object v5, p3

    .line 93
    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->resolveGroupSourceIdInValues(Lcom/android/providers/contacts/TransactionContext;JLandroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Z)V

    .line 94
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandler;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v6

    .line 102
    :goto_0
    return v0

    .line 97
    :cond_0
    invoke-direct {p0, p1, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->hasFavoritesGroupMembership(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v7

    .line 98
    .local v7, isStarred:Z
    if-eq v8, v7, :cond_1

    .line 99
    invoke-direct {p0, p1, v2, v3, v7}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->updateRawContactsStar(Landroid/database/sqlite/SQLiteDatabase;JZ)V

    .line 101
    :cond_1
    invoke-direct {p0, p2, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->updateVisibility(Lcom/android/providers/contacts/TransactionContext;J)V

    move v0, v9

    .line 102
    goto :goto_0
.end method
