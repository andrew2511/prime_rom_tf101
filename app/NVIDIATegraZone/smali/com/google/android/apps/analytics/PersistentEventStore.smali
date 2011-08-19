.class Lcom/google/android/apps/analytics/PersistentEventStore;
.super Ljava/lang/Object;
.source "PersistentEventStore.java"

# interfaces
.implements Lcom/google/android/apps/analytics/EventStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;
    }
.end annotation


# static fields
.field private static final ACCOUNT_ID:Ljava/lang/String; = "account_id"

.field private static final ACTION:Ljava/lang/String; = "action"

.field private static final CATEGORY:Ljava/lang/String; = "category"

.field private static final DATABASE_NAME:Ljava/lang/String; = "google_analytics.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final EVENT_ID:Ljava/lang/String; = "event_id"

.field private static final LABEL:Ljava/lang/String; = "label"

.field private static final MAX_EVENTS:I = 0x3e8

.field private static final RANDOM_VAL:Ljava/lang/String; = "random_val"

.field private static final REFERRER:Ljava/lang/String; = "referrer"

.field private static final SCREEN_HEIGHT:Ljava/lang/String; = "screen_height"

.field private static final SCREEN_WIDTH:Ljava/lang/String; = "screen_width"

.field private static final STORE_ID:Ljava/lang/String; = "store_id"

.field private static final TIMESTAMP_CURRENT:Ljava/lang/String; = "timestamp_current"

.field private static final TIMESTAMP_FIRST:Ljava/lang/String; = "timestamp_first"

.field private static final TIMESTAMP_PREVIOUS:Ljava/lang/String; = "timestamp_previous"

.field private static final USER_ID:Ljava/lang/String; = "user_id"

.field private static final VALUE:Ljava/lang/String; = "value"

.field private static final VISITS:Ljava/lang/String; = "visits"


# instance fields
.field private compiledCountStatement:Landroid/database/sqlite/SQLiteStatement;

.field private databaseHelper:Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;

.field private numStoredEvents:I

.field private sessionUpdated:Z

.field private storeId:I

.field private timestampCurrent:J

.field private timestampFirst:J

.field private timestampPrevious:J

.field private visits:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/analytics/PersistentEventStore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "parent"
    .parameter "databaseName"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->compiledCountStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 74
    if-eqz p2, :cond_0

    .line 75
    new-instance v0, Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;

    invoke-direct {v0, p1, p2}, Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->databaseHelper:Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    new-instance v0, Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;

    invoke-direct {v0, p1}, Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->databaseHelper:Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;

    goto :goto_0
.end method

.method private storeUpdatedSession()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 219
    iget-object v2, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->databaseHelper:Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;

    invoke-virtual {v2}, Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 221
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 222
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "timestamp_previous"

    iget-wide v3, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->timestampPrevious:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 223
    const-string v2, "timestamp_current"

    iget-wide v3, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->timestampCurrent:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 224
    const-string v2, "visits"

    iget v3, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->visits:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 225
    const-string v2, "session"

    const-string v3, "timestamp_first=?"

    new-array v4, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->timestampFirst:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 227
    iput-boolean v8, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->sessionUpdated:Z

    .line 228
    return-void
.end method


# virtual methods
.method public deleteEvent(J)V
    .locals 4
    .parameter "eventId"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->databaseHelper:Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "events"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget v0, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->numStoredEvents:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->numStoredEvents:I

    .line 86
    :cond_0
    return-void
.end method

.method public getNumStoredEvents()I
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->compiledCountStatement:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->databaseHelper:Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "SELECT COUNT(*) from events"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->compiledCountStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->compiledCountStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getReferrer()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 240
    iget-object v1, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->databaseHelper:Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;

    invoke-virtual {v1}, Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 241
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "install_referrer"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "referrer"

    aput-object v4, v2, v10

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 244
    .local v9, referrerCursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 245
    .local v8, referrer:Ljava/lang/String;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 248
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 249
    return-object v8
.end method

.method public getStoreId()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->storeId:I

    return v0
.end method

.method public peekEvents()[Lcom/google/android/apps/analytics/Event;
    .locals 1

    .prologue
    .line 90
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/google/android/apps/analytics/PersistentEventStore;->peekEvents(I)[Lcom/google/android/apps/analytics/Event;

    move-result-object v0

    return-object v0
.end method

.method public peekEvents(I)[Lcom/google/android/apps/analytics/Event;
    .locals 21
    .parameter "maxEvents"

    .prologue
    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/analytics/PersistentEventStore;->databaseHelper:Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 98
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "events"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "event_id"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 101
    .local v20, results:Landroid/database/Cursor;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v19, events:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/analytics/Event;>;"
    :goto_0
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    new-instance v3, Lcom/google/android/apps/analytics/Event;

    const/4 v4, 0x0

    move-object/from16 v0, v20

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x1

    move-object/from16 v0, v20

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x2

    move-object/from16 v0, v20

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    move-object/from16 v0, v20

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x4

    move-object/from16 v0, v20

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v10, 0x5

    move-object/from16 v0, v20

    move v1, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v11, 0x6

    move-object/from16 v0, v20

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v12, 0x7

    move-object/from16 v0, v20

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/16 v13, 0x8

    move-object/from16 v0, v20

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x9

    move-object/from16 v0, v20

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0xa

    move-object/from16 v0, v20

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0xb

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const/16 v17, 0xc

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const/16 v18, 0xd

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-direct/range {v3 .. v18}, Lcom/google/android/apps/analytics/Event;-><init>(JILjava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 120
    :cond_0
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 121
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/google/android/apps/analytics/Event;

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Lcom/google/android/apps/analytics/Event;

    return-object p0
.end method

.method public putEvent(Lcom/google/android/apps/analytics/Event;)V
    .locals 7
    .parameter "event"

    .prologue
    .line 126
    iget v2, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->numStoredEvents:I

    const/16 v3, 0x3e8

    if-lt v2, v3, :cond_1

    .line 127
    const-string v2, "googleanalytics"

    const-string v3, "Store full. Not storing last event."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-boolean v2, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->sessionUpdated:Z

    if-nez v2, :cond_2

    .line 132
    invoke-direct {p0}, Lcom/google/android/apps/analytics/PersistentEventStore;->storeUpdatedSession()V

    .line 135
    :cond_2
    iget-object v2, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->databaseHelper:Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;

    invoke-virtual {v2}, Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 137
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 138
    .local v1, eventValues:Landroid/content/ContentValues;
    const-string v2, "user_id"

    iget v3, p1, Lcom/google/android/apps/analytics/Event;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 139
    const-string v2, "account_id"

    iget-object v3, p1, Lcom/google/android/apps/analytics/Event;->accountId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v2, "random_val"

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide v5, 0x41dfffffffc00000L

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 141
    const-string v2, "timestamp_first"

    iget-wide v3, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->timestampFirst:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 142
    const-string v2, "timestamp_previous"

    iget-wide v3, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->timestampPrevious:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 143
    const-string v2, "timestamp_current"

    iget-wide v3, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->timestampCurrent:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 144
    const-string v2, "visits"

    iget v3, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->visits:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 145
    const-string v2, "category"

    iget-object v3, p1, Lcom/google/android/apps/analytics/Event;->category:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v2, "action"

    iget-object v3, p1, Lcom/google/android/apps/analytics/Event;->action:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v2, "label"

    iget-object v3, p1, Lcom/google/android/apps/analytics/Event;->label:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v2, "value"

    iget v3, p1, Lcom/google/android/apps/analytics/Event;->value:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 149
    const-string v2, "screen_width"

    iget v3, p1, Lcom/google/android/apps/analytics/Event;->screenWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 150
    const-string v2, "screen_height"

    iget v3, p1, Lcom/google/android/apps/analytics/Event;->screenHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 152
    const-string v2, "events"

    const-string v3, "event_id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 153
    iget v2, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->numStoredEvents:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->numStoredEvents:I

    goto/16 :goto_0
.end method

.method public setReferrer(Ljava/lang/String;)V
    .locals 4
    .parameter "referrer"

    .prologue
    .line 232
    iget-object v2, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->databaseHelper:Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;

    invoke-virtual {v2}, Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 233
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 234
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "referrer"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v2, "install_referrer"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 236
    return-void
.end method

.method public startNewVisit()V
    .locals 15

    .prologue
    const-wide/16 v13, 0x3e8

    const/4 v12, 0x0

    const/4 v2, 0x0

    .line 176
    iput-boolean v12, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->sessionUpdated:Z

    .line 177
    invoke-virtual {p0}, Lcom/google/android/apps/analytics/PersistentEventStore;->getNumStoredEvents()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->numStoredEvents:I

    .line 179
    iget-object v1, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->databaseHelper:Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;

    invoke-virtual {v1}, Lcom/google/android/apps/analytics/PersistentEventStore$DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 180
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "session"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 183
    .local v11, sessionsCursor:Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_0

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long v8, v1, v13

    .line 185
    .local v8, now:J
    iput-wide v8, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->timestampFirst:J

    .line 186
    iput-wide v8, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->timestampPrevious:J

    .line 187
    iput-wide v8, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->timestampCurrent:J

    .line 188
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->visits:I

    .line 192
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->storeId:I

    .line 194
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 195
    .local v10, sessionValues:Landroid/content/ContentValues;
    const-string v1, "timestamp_first"

    iget-wide v2, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->timestampFirst:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 196
    const-string v1, "timestamp_previous"

    iget-wide v2, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->timestampPrevious:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 197
    const-string v1, "timestamp_current"

    iget-wide v2, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->timestampCurrent:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 198
    const-string v1, "visits"

    iget v2, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->visits:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 199
    const-string v1, "store_id"

    iget v2, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->storeId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 200
    const-string v1, "session"

    const-string v2, "timestamp_first"

    invoke-virtual {v0, v1, v2, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 212
    .end local v8           #now:J
    .end local v10           #sessionValues:Landroid/content/ContentValues;
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 213
    return-void

    .line 204
    :cond_0
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->timestampFirst:J

    .line 206
    const/4 v1, 0x2

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->timestampPrevious:J

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v13

    iput-wide v1, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->timestampCurrent:J

    .line 209
    const/4 v1, 0x3

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->visits:I

    .line 210
    const/4 v1, 0x4

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/analytics/PersistentEventStore;->storeId:I

    goto :goto_0
.end method
