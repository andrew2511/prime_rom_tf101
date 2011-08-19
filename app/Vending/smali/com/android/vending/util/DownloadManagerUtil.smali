.class public Lcom/android/vending/util/DownloadManagerUtil;
.super Ljava/lang/Object;
.source "DownloadManagerUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/util/DownloadManagerUtil$Request;
    }
.end annotation


# static fields
.field static final PROJECTION_DOWNLOAD_ID:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 131
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/vending/util/DownloadManagerUtil;->PROJECTION_DOWNLOAD_ID:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    return-void
.end method

.method public static enqueueDownload(Landroid/content/Context;Lcom/android/vending/util/DownloadManagerUtil$Request;)Landroid/net/Uri;
    .locals 3
    .parameter "context"
    .parameter "request"

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enqueue for download "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/util/Log;->i(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/vending/compat/Downloads;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1}, Lcom/android/vending/util/DownloadManagerUtil$Request;->access$000(Lcom/android/vending/util/DownloadManagerUtil$Request;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static exists(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 9
    .parameter "context"
    .parameter "contentUri"

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 80
    .local v0, contentResolver:Landroid/content/ContentResolver;
    new-array v2, v8, [Ljava/lang/String;

    const-string v1, "status"

    aput-object v1, v2, v7

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 83
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 85
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lez v1, :cond_0

    move v1, v8

    .line 87
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 90
    :goto_1
    return v1

    :cond_0
    move v1, v7

    .line 85
    goto :goto_0

    .line 87
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_1
    move v1, v7

    .line 90
    goto :goto_1
.end method

.method public static fetchNextPausedDownload(Landroid/content/Context;)Ljava/lang/Long;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/vending/compat/Downloads;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/vending/util/DownloadManagerUtil;->PROJECTION_DOWNLOAD_ID:[Ljava/lang/String;

    const-string v3, "control= \'1\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 151
    .local v6, downloadProgressCursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    move-object v0, v4

    .line 162
    :goto_0
    return-object v0

    .line 153
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 162
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v4

    goto :goto_0

    .line 157
    :cond_1
    :try_start_1
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 159
    .local v7, idColumn:I
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 162
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7           #idColumn:I
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getDownloadCursor(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "contentUri"
    .parameter "projection"

    .prologue
    const/4 v3, 0x0

    .line 221
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 223
    .local v6, downloadProgressCursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 224
    const-string v0, "Download progress cursor null."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    :cond_0
    return-object v6
.end method

.method public static getDownloadSource(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "contentUri"

    .prologue
    const/4 v5, 0x0

    .line 191
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "entity"

    aput-object v4, v2, v3

    invoke-static {p0, p1, v2}, Lcom/android/vending/util/DownloadManagerUtil;->getDownloadCursor(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 195
    .local v0, downloadProgressCursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    move-object v2, v5

    .line 207
    :goto_0
    return-object v2

    .line 199
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No row found in the download manager db for contentUri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v2, v5

    goto :goto_0

    .line 203
    :cond_1
    :try_start_1
    const-string v2, "entity"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 205
    .local v1, refererColumnIndex:I
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 207
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v1           #refererColumnIndex:I
    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public static getLastModTime(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 9
    .parameter "context"
    .parameter "contentUri"

    .prologue
    const/4 v3, 0x0

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 57
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "lastmod"

    aput-object v4, v2, v1

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 60
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 62
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    const-string v1, "lastmod"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v7

    .line 68
    .local v7, lastModTime:J
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-wide v1, v7

    .line 71
    .end local v7           #lastModTime:J
    :goto_0
    return-wide v1

    .line 68
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 71
    :cond_1
    const-wide/16 v1, -0x1

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static getStatus(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 9
    .parameter "context"
    .parameter "contentUri"

    .prologue
    const/16 v8, 0x1eb

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 95
    .local v0, contentResolver:Landroid/content/ContentResolver;
    new-array v2, v7, [Ljava/lang/String;

    const-string v1, "status"

    aput-object v1, v2, v4

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 98
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    move v1, v8

    .line 112
    :goto_0
    return v1

    .line 104
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eq v1, v7, :cond_1

    .line 112
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v1, v8

    goto :goto_0

    .line 109
    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 110
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 112
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static isStatusAuthFailure(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 117
    const/16 v0, 0x193

    if-eq p0, v0, :cond_0

    const/16 v0, 0x191

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStatusCompleted(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 125
    invoke-static {p0}, Lcom/android/vending/compat/Downloads;->isStatusCompleted(I)Z

    move-result v0

    return v0
.end method

.method public static isStatusSuccess(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 121
    invoke-static {p0}, Lcom/android/vending/compat/Downloads;->isStatusSuccess(I)Z

    move-result v0

    return v0
.end method

.method public static removeDownload(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 4
    .parameter "context"
    .parameter "contentUri"
    .parameter "fileUri"

    .prologue
    const/4 v3, 0x0

    .line 37
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 42
    .local v0, contentResolver:Landroid/content/ContentResolver;
    if-eqz p2, :cond_0

    .line 43
    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 47
    :cond_0
    invoke-virtual {v0, p1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 49
    .end local v0           #contentResolver:Landroid/content/ContentResolver;
    :cond_1
    return-void
.end method

.method public static startPausedDownload(Landroid/content/Context;Ljava/lang/Long;)Z
    .locals 10
    .parameter "context"
    .parameter "downloadId"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 176
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 177
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v2, "control"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/vending/compat/Downloads;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "control= \'1\' AND _id = ?"

    new-array v5, v9, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 184
    .local v1, updatedCount:I
    if-ne v9, v1, :cond_0

    move v2, v9

    :goto_0
    return v2

    :cond_0
    move v2, v8

    goto :goto_0
.end method
