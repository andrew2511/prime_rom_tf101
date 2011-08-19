.class Lcom/google/android/syncadapters/contacts/GroupHandler;
.super Ljava/lang/Object;
.source "GroupHandler.java"

# interfaces
.implements Lcom/google/android/syncadapters/EntryAndEntityHandler;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCanonicalGroupSourceId(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "account"
    .parameter "id"

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://www.google.com/m8/feeds/groups/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/base/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private lookupUnsyncedGroup(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Landroid/content/Entity;
    .locals 9
    .parameter "client"
    .parameter "account"
    .parameter "column"
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentProviderClient;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Entity;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p5, syncedGroups:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 121
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v1

    .line 122
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "=? AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "sourceid"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " IS NULL"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p4, v4, v0

    const-string v5, "_id"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/ContactsContract$Groups;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v7

    .line 125
    .local v7, entityIterator:Landroid/content/EntityIterator;
    invoke-interface {v7}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    invoke-interface {v7}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Entity;

    .line 127
    .local v6, entity:Landroid/content/Entity;
    if-eqz p5, :cond_2

    .line 128
    invoke-virtual {v6}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v3, "_id"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 129
    .local v8, id:Ljava/lang/String;
    invoke-interface {p5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    const-string v0, "ContactsSyncAdapter"

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const-string v0, "ContactsSyncAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Entity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already matched to an entry"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, v2

    .line 139
    .end local v6           #entity:Landroid/content/Entity;
    .end local v8           #id:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 135
    .restart local v6       #entity:Landroid/content/Entity;
    .restart local v8       #id:Ljava/lang/String;
    :cond_1
    invoke-interface {p5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .end local v8           #id:Ljava/lang/String;
    :cond_2
    move-object v0, v6

    .line 137
    goto :goto_0

    .end local v6           #entity:Landroid/content/Entity;
    :cond_3
    move-object v0, v2

    .line 139
    goto :goto_0
.end method

.method private static newGroupValues(Lcom/google/wireless/gdata2/contacts/data/GroupEntry;)Landroid/content/ContentValues;
    .locals 8
    .parameter "entry"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 257
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 258
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "sourceid"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/syncadapters/contacts/ContactsUtils;->lastItemFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->getSystemGroup()Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, systemId:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v7

    .line 261
    .local v0, isSystemGroup:Z
    :goto_0
    const-string v4, "system_id"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v4, "group_is_read_only"

    if-eqz v0, :cond_2

    move v5, v7

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 263
    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, title:Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 265
    const-string v4, "^System Group: "

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 267
    :cond_0
    const-string v4, "title"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v4, "notes"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v4, "sync1"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->getEditUri()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v4, "sync2"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->getETag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v4, "sync3"

    invoke-virtual {p0}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->getUpdateDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-object v3

    .end local v0           #isSystemGroup:Z
    .end local v2           #title:Ljava/lang/String;
    :cond_1
    move v0, v6

    .line 260
    goto :goto_0

    .restart local v0       #isSystemGroup:Z
    :cond_2
    move v5, v6

    .line 262
    goto :goto_1
.end method


# virtual methods
.method public applyEntryToEntity(Ljava/util/ArrayList;Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/util/Set;Lcom/google/wireless/gdata2/data/Entry;Landroid/content/Entity;ZLandroid/content/SyncResult;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/Object;)V
    .locals 31
    .parameter
    .parameter "account"
    .parameter "client"
    .parameter
    .parameter "entry"
    .parameter "entity"
    .parameter "clearDirtyFlag"
    .parameter "syncResult"
    .parameter "rawContactsUri"
    .parameter "dataUri"
    .parameter "groupsUri"
    .parameter "extra"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/accounts/Account;",
            "Landroid/content/ContentProviderClient;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/wireless/gdata2/data/Entry;",
            "Landroid/content/Entity;",
            "Z",
            "Landroid/content/SyncResult;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 146
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p4, contactsSyncSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v5, "ContactsSyncAdapter"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 147
    const-string v5, "ContactsSyncAdapter"

    const-string v6, "============= applyEntryToEntity ============="

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v5, "ContactsSyncAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "entry is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string v5, "ContactsSyncAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "entity is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    move-object/from16 v0, p12

    check-cast v0, Ljava/util/Set;

    move-object v10, v0

    .line 156
    .local v10, matchedEntities:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p5

    check-cast v0, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;

    move-object/from16 v26, v0

    .line 157
    .local v26, groupEntry:Lcom/google/wireless/gdata2/contacts/data/GroupEntry;
    if-eqz v26, :cond_5

    invoke-virtual/range {v26 .. v26}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->getSystemGroup()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    const/4 v5, 0x1

    move/from16 v30, v5

    .line 160
    .local v30, isSystemGroup:Z
    :goto_0
    if-eqz v26, :cond_1

    invoke-virtual/range {v26 .. v26}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->isDeleted()Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_1
    const/4 v5, 0x1

    move/from16 v28, v5

    .line 161
    .local v28, isDelete:Z
    :goto_1
    if-eqz v28, :cond_7

    const/4 v5, 0x0

    move-object v13, v5

    .line 163
    .local v13, groupValuesServer:Landroid/content/ContentValues;
    :goto_2
    if-eqz v30, :cond_2

    if-nez v28, :cond_2

    if-nez p6, :cond_2

    .line 164
    const-string v8, "system_id"

    const-string v5, "system_id"

    invoke-virtual {v13, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v5, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p2

    invoke-direct/range {v5 .. v10}, Lcom/google/android/syncadapters/contacts/GroupHandler;->lookupUnsyncedGroup(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Landroid/content/Entity;

    move-result-object p6

    .line 168
    :cond_2
    if-nez v28, :cond_3

    if-nez p6, :cond_3

    .line 169
    const-string v5, "title"

    invoke-virtual {v13, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 170
    .local v9, title:Ljava/lang/String;
    const-string v5, "Starred in Android"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 171
    const-string v8, "title"

    move-object/from16 v5, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p2

    invoke-direct/range {v5 .. v10}, Lcom/google/android/syncadapters/contacts/GroupHandler;->lookupUnsyncedGroup(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Landroid/content/Entity;

    move-result-object p6

    .line 175
    .end local v9           #title:Ljava/lang/String;
    :cond_3
    if-nez v28, :cond_8

    if-nez p6, :cond_8

    const/4 v5, 0x1

    move/from16 v29, v5

    .line 177
    .local v29, isInsert:Z
    :goto_3
    if-eqz v28, :cond_9

    .line 178
    if-eqz p6, :cond_4

    .line 179
    invoke-virtual/range {p6 .. p6}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v5

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v7, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p11

    move-wide v2, v5

    move v4, v7

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->addDeleteOperation(Ljava/util/ArrayList;Landroid/net/Uri;JZ)V

    .line 181
    move-object/from16 v0, p8

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v6, v5, Landroid/content/SyncStats;->numDeletes:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numDeletes:J

    .line 217
    :cond_4
    :goto_4
    return-void

    .line 157
    .end local v13           #groupValuesServer:Landroid/content/ContentValues;
    .end local v28           #isDelete:Z
    .end local v29           #isInsert:Z
    .end local v30           #isSystemGroup:Z
    :cond_5
    const/4 v5, 0x0

    move/from16 v30, v5

    goto :goto_0

    .line 160
    .restart local v30       #isSystemGroup:Z
    :cond_6
    const/4 v5, 0x0

    move/from16 v28, v5

    goto :goto_1

    .line 161
    .restart local v28       #isDelete:Z
    :cond_7
    invoke-static/range {v26 .. v26}, Lcom/google/android/syncadapters/contacts/GroupHandler;->newGroupValues(Lcom/google/wireless/gdata2/contacts/data/GroupEntry;)Landroid/content/ContentValues;

    move-result-object v5

    move-object v13, v5

    goto :goto_2

    .line 175
    .restart local v13       #groupValuesServer:Landroid/content/ContentValues;
    :cond_8
    const/4 v5, 0x0

    move/from16 v29, v5

    goto :goto_3

    .line 188
    .restart local v29       #isInsert:Z
    :cond_9
    if-eqz v29, :cond_a

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/contacts/GroupHandler;->getSourceIdColumnName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "sourceid"

    invoke-virtual {v13, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p11

    move-object v1, v5

    move-object v2, v6

    invoke-static {v0, v1, v2}, Lcom/google/android/syncadapters/contacts/ContactsUtils;->newEntityDoesNotExistAssert(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    .line 193
    .local v24, groupBackRef:Ljava/lang/Integer;
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v11, p1

    move-object/from16 v12, p11

    invoke-static/range {v11 .. v16}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->addInsertOperation(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    .line 195
    const/16 v23, 0x0

    .line 196
    .local v23, entityId:Ljava/lang/Long;
    move-object/from16 v0, p8

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v6, v5, Landroid/content/SyncStats;->numInserts:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numInserts:J

    .line 209
    :goto_5
    if-eqz p7, :cond_4

    .line 210
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 211
    .local v22, syncDirtyValues:Landroid/content/ContentValues;
    const-string v5, "dirty"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 212
    const/16 v25, 0x0

    move-object/from16 v20, p1

    move-object/from16 v21, p11

    invoke-static/range {v20 .. v25}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->addUpdateOperation(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    .line 214
    move-object/from16 v0, p8

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v6, v5, Landroid/content/SyncStats;->numUpdates:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numUpdates:J

    goto :goto_4

    .line 198
    .end local v22           #syncDirtyValues:Landroid/content/ContentValues;
    .end local v23           #entityId:Ljava/lang/Long;
    .end local v24           #groupBackRef:Ljava/lang/Integer;
    :cond_a
    invoke-virtual/range {p6 .. p6}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v27

    .line 199
    .local v27, groupsValuesExisting:Landroid/content/ContentValues;
    const/16 v24, 0x0

    .line 200
    .restart local v24       #groupBackRef:Ljava/lang/Integer;
    const-string v5, "_id"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v23

    .line 201
    .restart local v23       #entityId:Ljava/lang/Long;
    invoke-virtual/range {p6 .. p6}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v5

    const-string v6, "version"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 202
    .local v18, version:J
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/syncadapters/contacts/GroupHandler;->getVersionColumnName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v14, p11

    invoke-static/range {v14 .. v19}, Lcom/google/android/syncadapters/contacts/ContactsUtils;->newEntityVersionMatchesAssert(Landroid/net/Uri;JLjava/lang/String;J)Landroid/content/ContentProviderOperation;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v11, p1

    move-object/from16 v12, p11

    move-object/from16 v14, v23

    invoke-static/range {v11 .. v16}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->addUpdateOperation(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    .line 206
    move-object/from16 v0, p8

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v6, v5, Landroid/content/SyncStats;->numUpdates:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numUpdates:J

    goto :goto_5
.end method

.method public convertEntityToEntry(Landroid/content/Entity;Landroid/accounts/Account;Landroid/content/ContentProviderClient;Z)Lcom/google/wireless/gdata2/data/Entry;
    .locals 6
    .parameter "entity"
    .parameter "account"
    .parameter "client"
    .parameter "validate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 221
    new-instance v1, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;

    invoke-direct {v1}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;-><init>()V

    .line 222
    .local v1, entry:Lcom/google/wireless/gdata2/contacts/data/GroupEntry;
    invoke-virtual {p1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 223
    .local v0, entityValues:Landroid/content/ContentValues;
    const-string v2, "sourceid"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 224
    const-string v2, "sourceid"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/google/android/syncadapters/contacts/GroupHandler;->getCanonicalGroupSourceId(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->setId(Ljava/lang/String;)V

    .line 227
    :cond_0
    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->setTitle(Ljava/lang/String;)V

    .line 228
    const-string v2, "notes"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->setContent(Ljava/lang/String;)V

    .line 229
    const-string v2, "system_id"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->setSystemGroup(Ljava/lang/String;)V

    .line 230
    const-string v2, "sync1"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->setEditUri(Ljava/lang/String;)V

    .line 231
    const-string v2, "sync2"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->setETag(Ljava/lang/String;)V

    .line 232
    const-string v2, "deleted"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->setDeleted(Z)V

    .line 234
    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->getSystemGroup()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->getTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "System Group: "

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 236
    new-instance v2, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v3, "since this is a system group we need to get it from the server"

    invoke-direct {v2, v3}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 232
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 240
    :cond_2
    if-eqz p4, :cond_4

    .line 241
    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->getSystemGroup()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 242
    new-instance v2, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v3, "never update system groups"

    invoke-direct {v2, v3}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 245
    :cond_3
    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->isDeleted()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->getContent()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;->getSystemGroup()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 249
    new-instance v2, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v3, "empty group"

    invoke-direct {v2, v3}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 253
    :cond_4
    return-object v1
.end method

.method public getDeletedColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, "deleted"

    return-object v0
.end method

.method public getDirtyColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "dirty"

    return-object v0
.end method

.method public getEditUriColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "sync1"

    return-object v0
.end method

.method public getEntityUri(Landroid/accounts/Account;)Landroid/net/Uri;
    .locals 1
    .parameter "account"

    .prologue
    .line 102
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getEntryClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 88
    const-class v0, Lcom/google/wireless/gdata2/contacts/data/GroupEntry;

    return-object v0
.end method

.method public getEtagColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, "sync2"

    return-object v0
.end method

.method public getFeedForAccount(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 3
    .parameter "account"

    .prologue
    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://www.google.com/m8/feeds/groups/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/base2_property-android"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, url:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/google/android/syncadapters/SyncAdapterUtils;->rewriteUrlForAccount(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSourceIdColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "sourceid"

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string v0, "groups"

    return-object v0
.end method

.method public getVersionColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-string v0, "version"

    return-object v0
.end method

.method public idToSourceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 84
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public newEntityIterator(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/lang/Long;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/EntityIterator;
    .locals 6
    .parameter "provider"
    .parameter "account"
    .parameter "id"
    .parameter "selection"
    .parameter "selectionArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 107
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v0, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, v2

    .line 108
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/ContactsContract$Groups;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v0

    return-object v0
.end method
