.class public Lcom/google/android/syncadapters/calendar/CalendarHandler;
.super Ljava/lang/Object;
.source "CalendarHandler.java"

# interfaces
.implements Lcom/google/android/syncadapters/EntryAndEntityHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static entryToContentValues(Landroid/accounts/Account;Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;Landroid/content/ContentValues;)I
    .locals 2
    .parameter "account"
    .parameter "entry"
    .parameter "map"

    .prologue
    .line 247
    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    .line 249
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, title:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 251
    const-string v1, "name"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_0
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->getEditUri()Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, version:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 257
    const-string v1, "_sync_version"

    invoke-static {p0, v0}, Lcom/google/android/syncadapters/SyncAdapterUtils;->rewriteUrlForAccount(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .end local v0           #version:Ljava/lang/String;
    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_1
    const-string v0, "_sync_id"

    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->getSelfUri()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, selfUri:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 266
    const/4 p0, 0x2

    .line 344
    .end local v0           #selfUri:Ljava/lang/String;
    .end local p0
    .end local p1
    .end local p2
    :goto_0
    return p0

    .line 268
    .restart local v0       #selfUri:Ljava/lang/String;
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_2
    const-string v1, "sync3"

    invoke-static {v0}, Lcom/google/android/syncadapters/SyncAdapterUtils;->rewriteUrlFromHttpToHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .end local v0           #selfUri:Ljava/lang/String;
    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->getEditUri()Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, editUri:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 272
    const-string v1, "sync2"

    invoke-static {v0}, Lcom/google/android/syncadapters/SyncAdapterUtils;->rewriteUrlFromHttpToHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .end local v0           #editUri:Ljava/lang/String;
    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_3
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->getEventsUri()Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, eventsUri:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 278
    const/4 p0, 0x2

    goto :goto_0

    .line 280
    :cond_4
    const-string v1, "sync1"

    invoke-static {v0}, Lcom/google/android/syncadapters/SyncAdapterUtils;->rewriteUrlFromHttpToHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .end local v0           #eventsUri:Ljava/lang/String;
    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v0, "_sync_time"

    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->getUpdateDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v0, "_sync_dirty"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 287
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->getAccessLevel()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 314
    const-string p0, "CalendarHandler"

    .end local p0
    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid Calendar access level: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->getAccessLevel()B

    move-result p1

    .end local p1
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 p0, 0x2

    goto :goto_0

    .line 289
    .restart local p0
    .restart local p1
    .restart local p2
    :pswitch_0
    const-string v0, "access_level"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 318
    :goto_1
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->getColor()Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, colorStr:Ljava/lang/String;
    if-nez v0, :cond_5

    .line 320
    const/4 p0, 0x2

    goto :goto_0

    .line 293
    .end local v0           #colorStr:Ljava/lang/String;
    :pswitch_1
    const-string v0, "access_level"

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 297
    :pswitch_2
    const-string v0, "access_level"

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 301
    :pswitch_3
    const-string v0, "access_level"

    const/16 v1, 0x258

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 305
    :pswitch_4
    const-string v0, "access_level"

    const/16 v1, 0x2bc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 309
    :pswitch_5
    const-string v0, "access_level"

    const/16 v1, 0x320

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 324
    .restart local v0       #colorStr:Ljava/lang/String;
    :cond_5
    :try_start_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 326
    .local v0, color:I
    const/high16 v1, -0x100

    or-int/2addr v0, v1

    .line 330
    const-string v1, "color"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .end local v0           #color:I
    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 332
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->getTimezone()Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, timezone:Ljava/lang/String;
    if-nez v0, :cond_6

    .line 334
    const/4 p0, 0x2

    goto/16 :goto_0

    .line 327
    .local v0, colorStr:Ljava/lang/String;
    :catch_0
    move-exception p0

    .line 328
    .local p0, e:Ljava/lang/IllegalArgumentException;
    const/4 p0, 0x2

    goto/16 :goto_0

    .line 336
    .local v0, timezone:Ljava/lang/String;
    .local p0, account:Landroid/accounts/Account;
    :cond_6
    const-string v1, "timezone"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v0, "sync4"

    .end local v0           #timezone:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 339
    const-string v0, "sync5"

    invoke-virtual {p1}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->isHidden()Z

    move-result p1

    .end local p1
    if-eqz p1, :cond_8

    const/4 p1, 0x1

    :goto_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 341
    const-string p1, "_sync_account"

    iget-object v0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string p1, "_sync_account_type"

    iget-object p0, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .end local p0           #account:Landroid/accounts/Account;
    invoke-virtual {p2, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 338
    .restart local p0       #account:Landroid/accounts/Account;
    .restart local p1
    :cond_7
    const/4 v1, 0x0

    goto :goto_2

    .line 339
    .end local p1
    :cond_8
    const/4 p1, 0x0

    goto :goto_3

    .line 287
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public applyEntryToEntity(Ljava/util/ArrayList;Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/util/Set;Lcom/google/wireless/gdata2/data/Entry;Landroid/content/Entity;ZLandroid/content/SyncResult;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/Object;)V
    .locals 17
    .parameter
    .parameter "account"
    .parameter "client"
    .parameter
    .parameter "entry"
    .parameter "entity"
    .parameter "clearDirtyFlag"
    .parameter "syncResult"
    .parameter "junk2"
    .parameter "junk3"
    .parameter "junk4"
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
    .line 173
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p4, junk1:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v4, "CalendarHandler"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 174
    const-string v4, "CalendarHandler"

    const-string v5, "============= applyEntryToEntity ============="

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string v4, "CalendarHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calendarEntry is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string v4, "CalendarHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "entity is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    move-object/from16 v0, p5

    instance-of v0, v0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;

    move v4, v0

    if-nez v4, :cond_2

    .line 180
    const-string v4, "CalendarHandler"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 181
    const-string v4, "CalendarHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got invalid entry from server: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_1
    :goto_0
    return-void

    .line 185
    :cond_2
    move-object/from16 v0, p5

    check-cast v0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;

    move-object v10, v0

    .line 187
    .local v10, calendarEntry:Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->isDeleted()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_3
    const/4 v4, 0x1

    move v13, v4

    .line 188
    .local v13, isDelete:Z
    :goto_1
    if-nez v13, :cond_7

    if-nez p6, :cond_7

    const/4 v4, 0x1

    move v14, v4

    .line 190
    .local v14, isInsert:Z
    :goto_2
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 192
    .local v6, calendarValuesServer:Landroid/content/ContentValues;
    const/4 v12, 0x0

    .line 193
    .local v12, entryState:I
    if-nez v13, :cond_4

    .line 194
    move-object/from16 v0, p2

    move-object v1, v10

    move-object v2, v6

    invoke-static {v0, v1, v2}, Lcom/google/android/syncadapters/calendar/CalendarHandler;->entryToContentValues(Landroid/accounts/Account;Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;Landroid/content/ContentValues;)I

    move-result v12

    .line 195
    if-eqz p7, :cond_4

    .line 196
    const-string v4, "_sync_dirty"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 199
    :cond_4
    if-nez v13, :cond_5

    const/4 v4, 0x1

    if-ne v12, v4, :cond_8

    .line 200
    :cond_5
    if-eqz p6, :cond_1

    .line 201
    invoke-virtual/range {p6 .. p6}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    .line 202
    .local v11, calendarId:Ljava/lang/Long;
    sget-object v4, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v16

    .line 203
    .local v16, uri:Landroid/net/Uri;
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/calendar/HandlerUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    move v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->addDeleteOperation(Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/Long;Z)V

    .line 207
    .end local v6           #calendarValuesServer:Landroid/content/ContentValues;
    move-object/from16 v0, p8

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v5, v4, Landroid/content/SyncStats;->numDeletes:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v4, Landroid/content/SyncStats;->numDeletes:J

    goto :goto_0

    .line 187
    .end local v11           #calendarId:Ljava/lang/Long;
    .end local v12           #entryState:I
    .end local v13           #isDelete:Z
    .end local v14           #isInsert:Z
    .end local v16           #uri:Landroid/net/Uri;
    :cond_6
    const/4 v4, 0x0

    move v13, v4

    goto :goto_1

    .line 188
    .restart local v13       #isDelete:Z
    :cond_7
    const/4 v4, 0x0

    move v14, v4

    goto :goto_2

    .line 209
    .restart local v6       #calendarValuesServer:Landroid/content/ContentValues;
    .restart local v12       #entryState:I
    .restart local v14       #isInsert:Z
    :cond_8
    if-nez v12, :cond_b

    .line 210
    const-string v4, "CalendarHandler"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 211
    const-string v4, "CalendarHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got eventEntry from server: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_9
    if-eqz v14, :cond_a

    .line 216
    const-string v4, "sync4"

    invoke-virtual {v6, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    .line 218
    .local v15, selectedOnServerInteger:Ljava/lang/Integer;
    const-string v4, "selected"

    invoke-virtual {v6, v4, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 219
    sget-object v4, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/calendar/HandlerUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v9}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->addInsertOperation(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    .line 223
    move-object/from16 v0, p8

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v5, v4, Landroid/content/SyncStats;->numInserts:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v4, Landroid/content/SyncStats;->numInserts:J

    goto/16 :goto_0

    .line 225
    .end local v15           #selectedOnServerInteger:Ljava/lang/Integer;
    :cond_a
    invoke-virtual/range {p6 .. p6}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    .line 227
    .local v7, calendarIdIfUpdate:Ljava/lang/Long;
    sget-object v4, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/google/android/syncadapters/calendar/HandlerUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v9}, Lcom/google/android/syncadapters/calendar/CalendarSyncAdapter;->addUpdateOperation(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/Integer;Z)V

    .line 231
    move-object/from16 v0, p8

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v4, v0

    iget-wide v5, v4, Landroid/content/SyncStats;->numUpdates:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v4, Landroid/content/SyncStats;->numUpdates:J

    goto/16 :goto_0

    .line 234
    .end local v7           #calendarIdIfUpdate:Ljava/lang/Long;
    :cond_b
    const-string v4, "CalendarHandler"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 235
    const-string v4, "CalendarHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got invalid Calendar Entry from server: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public convertEntityToEntry(Landroid/content/Entity;Landroid/accounts/Account;Landroid/content/ContentProviderClient;Z)Lcom/google/wireless/gdata2/data/Entry;
    .locals 19
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
    .line 117
    new-instance v9, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;

    invoke-direct {v9}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;-><init>()V

    .line 118
    .local v9, entry:Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v17

    .line 120
    .local v17, values:Landroid/content/ContentValues;
    const-string v18, "name"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setTitle(Ljava/lang/String;)V

    .line 122
    const-string v18, "sync3"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 123
    .local v15, selfUri:Ljava/lang/String;
    invoke-virtual {v9, v15}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setId(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v9, v15}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setSelfUri(Ljava/lang/String;)V

    .line 127
    const-string v18, "sync2"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 128
    .local v8, editUri:Ljava/lang/String;
    invoke-virtual {v9, v8}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setEditUri(Ljava/lang/String;)V

    .line 130
    const-string v18, "sync1"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 131
    .local v10, eventsUri:Ljava/lang/String;
    invoke-virtual {v9, v10}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setEventsUri(Ljava/lang/String;)V

    .line 133
    const-string v18, "deleted"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 134
    .local v7, deletedInteger:Ljava/lang/Integer;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v18

    if-eqz v18, :cond_1

    const/16 v18, 0x1

    move/from16 v6, v18

    .line 135
    .local v6, deleted:Z
    :goto_0
    invoke-virtual {v9, v6}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setDeleted(Z)V

    .line 137
    const-string v18, "access_level"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 138
    .local v3, accessLevelInteger:Ljava/lang/Integer;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v2, v18

    .line 141
    .local v2, accessLevel:I
    :goto_1
    invoke-static {v2}, Lcom/google/android/syncadapters/calendar/HandlerUtils;->getCalendarEntryAccessLevelFromEntityAccessLevel(I)B

    move-result v18

    move-object v0, v9

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setAccessLevel(B)V

    .line 144
    const-string v18, "color"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 145
    .local v5, colorInteger:Ljava/lang/Integer;
    if-eqz v5, :cond_0

    .line 146
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/google/android/syncadapters/calendar/HandlerUtils;->getCalendarHexColorFromInt(I)Ljava/lang/String;

    move-result-object v4

    .line 147
    .local v4, color:Ljava/lang/String;
    invoke-virtual {v9, v4}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setColor(Ljava/lang/String;)V

    .line 152
    .end local v4           #color:Ljava/lang/String;
    :cond_0
    const-string v18, "sync4"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    .line 153
    .local v14, selectedInteger:Ljava/lang/Integer;
    if-eqz v14, :cond_3

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v18

    if-eqz v18, :cond_3

    const/16 v18, 0x1

    move/from16 v13, v18

    .line 154
    .local v13, selected:Z
    :goto_2
    invoke-virtual {v9, v13}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setSelected(Z)V

    .line 157
    const-string v18, "sync5"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 158
    .local v12, hiddenInteger:Ljava/lang/Integer;
    if-eqz v12, :cond_4

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v18

    if-eqz v18, :cond_4

    const/16 v18, 0x1

    move/from16 v11, v18

    .line 159
    .local v11, hidden:Z
    :goto_3
    invoke-virtual {v9, v11}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setHidden(Z)V

    .line 161
    const-string v18, "timezone"

    invoke-virtual/range {v17 .. v18}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 162
    .local v16, timezone:Ljava/lang/String;
    move-object v0, v9

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;->setTimezone(Ljava/lang/String;)V

    .line 164
    return-object v9

    .line 134
    .end local v2           #accessLevel:I
    .end local v3           #accessLevelInteger:Ljava/lang/Integer;
    .end local v5           #colorInteger:Ljava/lang/Integer;
    .end local v6           #deleted:Z
    .end local v11           #hidden:Z
    .end local v12           #hiddenInteger:Ljava/lang/Integer;
    .end local v13           #selected:Z
    .end local v14           #selectedInteger:Ljava/lang/Integer;
    .end local v16           #timezone:Ljava/lang/String;
    :cond_1
    const/16 v18, 0x0

    move/from16 v6, v18

    goto :goto_0

    .line 138
    .restart local v3       #accessLevelInteger:Ljava/lang/Integer;
    .restart local v6       #deleted:Z
    :cond_2
    const/16 v18, 0x0

    move/from16 v2, v18

    goto :goto_1

    .line 153
    .restart local v2       #accessLevel:I
    .restart local v5       #colorInteger:Ljava/lang/Integer;
    .restart local v14       #selectedInteger:Ljava/lang/Integer;
    :cond_3
    const/16 v18, 0x0

    move/from16 v13, v18

    goto :goto_2

    .line 158
    .restart local v12       #hiddenInteger:Ljava/lang/Integer;
    .restart local v13       #selected:Z
    :cond_4
    const/16 v18, 0x0

    move/from16 v11, v18

    goto :goto_3
.end method

.method public getDeletedColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string v0, "deleted"

    return-object v0
.end method

.method public getEntitySelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    const-string v0, "_sync_dirty != 0 OR deleted != 0"

    return-object v0
.end method

.method public getEntityUri(Landroid/accounts/Account;)Landroid/net/Uri;
    .locals 1
    .parameter "account"

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEntryClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/google/wireless/gdata2/calendar/data/CalendarEntry;

    return-object v0
.end method

.method public getEtagColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    const-string v0, "_sync_version"

    return-object v0
.end method

.method public getSourceIdColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string v0, "_sync_id"

    return-object v0
.end method

.method public idToSourceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "id"

    .prologue
    .line 66
    return-object p1
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

    .line 108
    sget-object v0, Landroid/provider/Calendar$CalendarsEntity;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addQueryParameters(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v0, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, v2

    .line 110
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Calendar$CalendarsEntity;->newEntityIterator(Landroid/database/Cursor;Landroid/content/ContentProviderClient;)Landroid/content/EntityIterator;

    move-result-object v0

    return-object v0
.end method
