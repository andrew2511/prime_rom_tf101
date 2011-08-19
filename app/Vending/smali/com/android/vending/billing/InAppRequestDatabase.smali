.class public Lcom/android/vending/billing/InAppRequestDatabase;
.super Ljava/lang/Object;
.source "InAppRequestDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/billing/InAppRequestDatabase$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final LEGACY_DATABASE_NAMES:[Ljava/lang/String;


# instance fields
.field private mDatabaseHelper:Lcom/android/vending/billing/InAppRequestDatabase$DatabaseHelper;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "request.db"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/vending/billing/InAppRequestDatabase;->LEGACY_DATABASE_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/android/vending/billing/InAppRequestDatabase$DatabaseHelper;

    invoke-direct {v0, p1}, Lcom/android/vending/billing/InAppRequestDatabase$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vending/billing/InAppRequestDatabase;->mDatabaseHelper:Lcom/android/vending/billing/InAppRequestDatabase$DatabaseHelper;

    .line 60
    iget-object v0, p0, Lcom/android/vending/billing/InAppRequestDatabase;->mDatabaseHelper:Lcom/android/vending/billing/InAppRequestDatabase$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/vending/billing/InAppRequestDatabase$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/billing/InAppRequestDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 61
    return-void
.end method

.method private consumeToken(Ljava/lang/String;)Z
    .locals 14
    .parameter "packageName"

    .prologue
    .line 209
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "num_tokens"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "refresh_tokens"

    aput-object v11, v9, v10

    invoke-direct {p0, p1, v9}, Lcom/android/vending/billing/InAppRequestDatabase;->makeCursorForPackage(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 212
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 213
    invoke-direct {p0, p1}, Lcom/android/vending/billing/InAppRequestDatabase;->initializeRowForPackage(Ljava/lang/String;)V

    .line 214
    const/4 v9, 0x1

    .line 252
    .end local v0           #cursor:Landroid/database/Cursor;
    :goto_0
    return v9

    .line 217
    .restart local v0       #cursor:Landroid/database/Cursor;
    :cond_0
    const/4 v3, 0x0

    .line 218
    .local v3, numTokens:I
    const-wide/16 v6, 0x0

    .line 220
    .local v6, refreshTime:J
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_1

    .line 221
    invoke-direct {p0, p1}, Lcom/android/vending/billing/InAppRequestDatabase;->initializeRowForPackage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    const/4 v9, 0x1

    .line 227
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 224
    :cond_1
    const/4 v9, 0x0

    :try_start_1
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 225
    const/4 v9, 0x1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    .line 227
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 231
    .local v1, now:J
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 232
    .local v8, values:Landroid/content/ContentValues;
    const-string v9, "last_modified"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 234
    if-lez v3, :cond_2

    .line 235
    const-string v9, "num_tokens"

    const/4 v10, 0x1

    sub-int v10, v3, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 236
    iget-object v9, p0, Lcom/android/vending/billing/InAppRequestDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v10, "requests"

    const-string v11, "package_name=?"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    invoke-virtual {v9, v10, v8, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 238
    const/4 v9, 0x1

    goto :goto_0

    .line 227
    .end local v1           #now:J
    .end local v8           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v9

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v9

    .line 241
    .restart local v1       #now:J
    .restart local v8       #values:Landroid/content/ContentValues;
    :cond_2
    cmp-long v9, v1, v6

    if-ltz v9, :cond_3

    .line 244
    sget-object v9, Lcom/android/vending/compat/VendingGservicesKeys;->VENDING_NUM_TOKENS_PER_INTERVAL:Lcom/android/vending/util/GservicesValue;

    invoke-virtual {v9}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cursor:Landroid/database/Cursor;
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 245
    sget-object v9, Lcom/android/vending/compat/VendingGservicesKeys;->VENDING_TOKEN_REFRESH_INTERVAL_MS:Lcom/android/vending/util/GservicesValue;

    invoke-virtual {v9}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 246
    .local v4, refreshInterval:J
    const-string v9, "num_tokens"

    const/4 v10, 0x1

    sub-int v10, v3, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 247
    const-string v9, "refresh_tokens"

    add-long v10, v1, v4

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 248
    iget-object v9, p0, Lcom/android/vending/billing/InAppRequestDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v10, "requests"

    const-string v11, "package_name=?"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    invoke-virtual {v9, v10, v8, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 250
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 252
    .end local v4           #refreshInterval:J
    .restart local v0       #cursor:Landroid/database/Cursor;
    :cond_3
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method private deleteOldEntries()V
    .locals 8

    .prologue
    .line 259
    const-wide v0, 0x9a7ec800L

    .line 260
    .local v0, expirationAgeMillis:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v0

    .line 261
    .local v2, timeInPast:J
    iget-object v4, p0, Lcom/android/vending/billing/InAppRequestDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "requests"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "last_modified<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 262
    return-void
.end method

.method private initializeRowForPackage(Ljava/lang/String;)V
    .locals 9
    .parameter "packageName"

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/android/vending/billing/InAppRequestDatabase;->deleteOldEntries()V

    .line 178
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 179
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "package_name"

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 181
    .local v0, now:J
    const-string v6, "last_modified"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 183
    sget-object v6, Lcom/android/vending/compat/VendingGservicesKeys;->VENDING_NUM_TOKENS_PER_INTERVAL:Lcom/android/vending/util/GservicesValue;

    invoke-virtual {v6}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 184
    .local v2, numTokens:I
    sget-object v6, Lcom/android/vending/compat/VendingGservicesKeys;->VENDING_TOKEN_REFRESH_INTERVAL_MS:Lcom/android/vending/util/GservicesValue;

    invoke-virtual {v6}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 185
    .local v3, refreshInterval:J
    const-string v6, "num_tokens"

    const/4 v7, 0x1

    sub-int v7, v2, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 186
    const-string v6, "refresh_tokens"

    add-long v7, v0, v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 188
    const-string v6, "seen_notification_ids"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v6, p0, Lcom/android/vending/billing/InAppRequestDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "requests"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 194
    return-void
.end method

.method public static isRequestAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 79
    new-instance v0, Lcom/android/vending/billing/InAppRequestDatabase;

    invoke-direct {v0, p0}, Lcom/android/vending/billing/InAppRequestDatabase;-><init>(Landroid/content/Context;)V

    .line 80
    .local v0, db:Lcom/android/vending/billing/InAppRequestDatabase;
    invoke-direct {v0, p1}, Lcom/android/vending/billing/InAppRequestDatabase;->isRequestAllowed(Ljava/lang/String;)Z

    move-result v1

    .line 81
    .local v1, isRequestAllowed:Z
    invoke-virtual {v0}, Lcom/android/vending/billing/InAppRequestDatabase;->close()V

    .line 82
    return v1
.end method

.method private isRequestAllowed(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/vending/billing/InAppRequestDatabase;->consumeToken(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private varargs makeCursorForPackage(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "packageName"
    .parameter "columns"

    .prologue
    const/4 v5, 0x0

    .line 99
    iget-object v0, p0, Lcom/android/vending/billing/InAppRequestDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "requests"

    const-string v3, "package_name=?"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v4, v2

    move-object v2, p2

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/vending/billing/InAppRequestDatabase;->mDatabaseHelper:Lcom/android/vending/billing/InAppRequestDatabase$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/vending/billing/InAppRequestDatabase$DatabaseHelper;->close()V

    .line 65
    return-void
.end method

.method public getSeenNotificationIds(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "packageName"

    .prologue
    const/4 v4, 0x0

    .line 107
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "seen_notification_ids"

    aput-object v3, v2, v4

    invoke-direct {p0, p1, v2}, Lcom/android/vending/billing/InAppRequestDatabase;->makeCursorForPackage(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 108
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 109
    invoke-direct {p0, p1}, Lcom/android/vending/billing/InAppRequestDatabase;->initializeRowForPackage(Ljava/lang/String;)V

    .line 110
    const-string v2, ""

    .line 121
    :goto_0
    return-object v2

    .line 114
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 115
    invoke-direct {p0, p1}, Lcom/android/vending/billing/InAppRequestDatabase;->initializeRowForPackage(Ljava/lang/String;)V

    .line 116
    const-string v2, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 118
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, result:Ljava/lang/String;
    if-nez v1, :cond_2

    const-string v2, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    move-object v2, v1

    .line 119
    goto :goto_1

    .line 121
    .end local v1           #result:Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public logNotificationId(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .parameter "packageName"
    .parameter "notifyId"

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/android/vending/billing/InAppRequestDatabase;->getSeenNotificationIds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, seenNotifications:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 140
    .local v7, wrappedSeenNotifications:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 143
    .local v6, wrappedNotification:Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 145
    const/4 v8, 0x0

    .line 164
    :goto_0
    return v8

    .line 150
    :cond_0
    const-string v8, ","

    invoke-static {v4, v8}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, notificationIds:[Ljava/lang/String;
    array-length v8, v2

    const/16 v9, 0x9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 152
    .local v1, length:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .local v3, notificationIdsAsCsv:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 154
    const-string v8, ","

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    aget-object v8, v2, v0

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 158
    :cond_1
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 160
    .local v5, values:Landroid/content/ContentValues;
    const-string v8, "seen_notification_ids"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v8, p0, Lcom/android/vending/billing/InAppRequestDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "requests"

    const-string v10, "package_name=?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    invoke-virtual {v8, v9, v5, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 164
    const/4 v8, 0x1

    goto :goto_0
.end method
