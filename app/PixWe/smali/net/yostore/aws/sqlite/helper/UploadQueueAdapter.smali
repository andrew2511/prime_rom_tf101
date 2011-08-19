.class public Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;
.super Ljava/lang/Object;
.source "UploadQueueAdapter.java"


# static fields
.field public static final DATABASE_TABLE:Ljava/lang/String; = "upload_queue"

.field private static final KEY_BATCH_ID:Ljava/lang/String; = "batch_id"

.field private static final KEY_FILE_NAME:Ljava/lang/String; = "file_name"

.field private static final KEY_FILE_URL:Ljava/lang/String; = "file_url"

.field private static final KEY_FOLDER_ID:Ljava/lang/String; = "folder_id"

.field private static final KEY_MEDIA_ROW_ID:Ljava/lang/String; = "media_row_id"

.field private static final KEY_ROW_ID:Ljava/lang/String; = "id"

.field private static final KEY_USER_NAME:Ljava/lang/String; = "username"

.field private static final TAG:Ljava/lang/String; = "UploadQueueAdapter"


# instance fields
.field private final context:Landroid/content/Context;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->context:Landroid/content/Context;

    .line 35
    new-instance v0, Lnet/yostore/aws/sqlite/helper/DBHelper;

    iget-object v1, p0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lnet/yostore/aws/sqlite/helper/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    .line 36
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DBHelper;->close()V

    .line 49
    return-void
.end method

.method public deleteUploadQueue(J)Z
    .locals 5
    .parameter "rowId"

    .prologue
    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, where:Ljava/lang/String;
    iget-object v2, p0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "upload_queue"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    .line 222
    .local v0, rtn:Z
    :goto_0
    const-string v2, "UploadQueueAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deleteUploadQueue:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return v0

    .line 221
    .end local v0           #rtn:Z
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public getUploadAlbumQueue(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .parameter "userName"

    .prologue
    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "select a.id, a.media_row_id, a.file_url, a.file_name, a.folder_id, a.batch_id, a.username, c.album_folder, b.album_folder_dispaly from upload_queue a, albuminfo b, mediainfo c  where a.username=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' and a."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "media_row_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=c._id and c.album_folder=b.album_folder"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 91
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, query:Ljava/lang/String;
    iget-object v2, p0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 96
    .local v0, mCursor:Landroid/database/Cursor;
    return-object v0
.end method

.method public getUploadQueue(J)Landroid/database/Cursor;
    .locals 9
    .parameter "mediaRowId"

    .prologue
    const/4 v4, 0x0

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "media_row_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "upload_queue"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 104
    const-string v6, "id"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    .line 105
    const-string v6, "media_row_id"

    aput-object v6, v2, v5

    const/4 v5, 0x2

    .line 106
    const-string v6, "file_url"

    aput-object v6, v2, v5

    const/4 v5, 0x3

    .line 107
    const-string v6, "file_name"

    aput-object v6, v2, v5

    const/4 v5, 0x4

    .line 108
    const-string v6, "folder_id"

    aput-object v6, v2, v5

    const/4 v5, 0x5

    .line 109
    const-string v6, "batch_id"

    aput-object v6, v2, v5

    const/4 v5, 0x6

    .line 110
    const-string v6, "username"

    aput-object v6, v2, v5

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 103
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 117
    .local v8, mCursor:Landroid/database/Cursor;
    return-object v8
.end method

.method public getUploadQueue(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "userName"

    .prologue
    const/4 v4, 0x0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "username=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "upload_queue"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 73
    const-string v6, "id"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    .line 74
    const-string v6, "media_row_id"

    aput-object v6, v2, v5

    const/4 v5, 0x2

    .line 75
    const-string v6, "file_url"

    aput-object v6, v2, v5

    const/4 v5, 0x3

    .line 76
    const-string v6, "file_name"

    aput-object v6, v2, v5

    const/4 v5, 0x4

    .line 77
    const-string v6, "folder_id"

    aput-object v6, v2, v5

    const/4 v5, 0x5

    .line 78
    const-string v6, "batch_id"

    aput-object v6, v2, v5

    const/4 v5, 0x6

    .line 79
    const-string v6, "username"

    aput-object v6, v2, v5

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 72
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 86
    .local v8, mCursor:Landroid/database/Cursor;
    return-object v8
.end method

.method public getUploadQueueByBatchId(J)Landroid/database/Cursor;
    .locals 9
    .parameter "batchId"

    .prologue
    const/4 v4, 0x0

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "batch_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "upload_queue"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 147
    const-string v6, "id"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    .line 148
    const-string v6, "media_row_id"

    aput-object v6, v2, v5

    const/4 v5, 0x2

    .line 149
    const-string v6, "file_url"

    aput-object v6, v2, v5

    const/4 v5, 0x3

    .line 150
    const-string v6, "file_name"

    aput-object v6, v2, v5

    const/4 v5, 0x4

    .line 151
    const-string v6, "folder_id"

    aput-object v6, v2, v5

    const/4 v5, 0x5

    .line 152
    const-string v6, "batch_id"

    aput-object v6, v2, v5

    const/4 v5, 0x6

    .line 153
    const-string v6, "username"

    aput-object v6, v2, v5

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 146
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 160
    .local v8, mCursor:Landroid/database/Cursor;
    return-object v8
.end method

.method public getUploadQueueByMediaRowId(J)Landroid/database/Cursor;
    .locals 9
    .parameter "mediaRowId"

    .prologue
    const/4 v4, 0x0

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "media_row_id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "upload_queue"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 191
    const-string v6, "id"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    .line 192
    const-string v6, "media_row_id"

    aput-object v6, v2, v5

    const/4 v5, 0x2

    .line 193
    const-string v6, "file_url"

    aput-object v6, v2, v5

    const/4 v5, 0x3

    .line 194
    const-string v6, "file_name"

    aput-object v6, v2, v5

    const/4 v5, 0x4

    .line 195
    const-string v6, "folder_id"

    aput-object v6, v2, v5

    const/4 v5, 0x5

    .line 196
    const-string v6, "batch_id"

    aput-object v6, v2, v5

    const/4 v5, 0x6

    .line 197
    const-string v6, "username"

    aput-object v6, v2, v5

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 190
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 204
    .local v8, mCursor:Landroid/database/Cursor;
    return-object v8
.end method

.method public getUploadQueueByRowId(J)Landroid/database/Cursor;
    .locals 9
    .parameter "rowId"

    .prologue
    const/4 v4, 0x0

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "upload_queue"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 125
    const-string v6, "id"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    .line 126
    const-string v6, "media_row_id"

    aput-object v6, v2, v5

    const/4 v5, 0x2

    .line 127
    const-string v6, "file_url"

    aput-object v6, v2, v5

    const/4 v5, 0x3

    .line 128
    const-string v6, "file_name"

    aput-object v6, v2, v5

    const/4 v5, 0x4

    .line 129
    const-string v6, "folder_id"

    aput-object v6, v2, v5

    const/4 v5, 0x5

    .line 130
    const-string v6, "batch_id"

    aput-object v6, v2, v5

    const/4 v5, 0x6

    .line 131
    const-string v6, "username"

    aput-object v6, v2, v5

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 124
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 138
    .local v8, mCursor:Landroid/database/Cursor;
    return-object v8
.end method

.method public insertFolderChgSeq(Lnet/yostore/aws/sqlite/entity/UploadQueue;)J
    .locals 7
    .parameter "uq"

    .prologue
    .line 54
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 55
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v3, "media_row_id"

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->getMediaRowId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 56
    const-string v3, "file_url"

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->getFileUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v3, "file_name"

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v3, "folder_id"

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->getParentFolderId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 59
    const-string v3, "batch_id"

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->getBatchId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 60
    const-string v3, "username"

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v3, p0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "upload_queue"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 63
    .local v1, rtn:J
    const-string v3, "UploadQueueAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "insertFolderChgSeq="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/UploadQueue;->getMediaRowId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-wide v1
.end method

.method public open()Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 42
    return-object p0
.end method

.method public popUploadQueue(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "userName"

    .prologue
    const/4 v3, 0x0

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "username=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 166
    .local v10, where:Ljava/lang/String;
    const-string v7, "id asc "

    .line 168
    .local v7, orderBy:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "upload_queue"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 169
    const-string v5, "id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    .line 170
    const-string v5, "media_row_id"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    .line 171
    const-string v5, "file_url"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    .line 172
    const-string v5, "file_name"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    .line 173
    const-string v5, "folder_id"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    .line 174
    const-string v5, "batch_id"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    .line 175
    const-string v5, "username"

    aput-object v5, v2, v4

    .line 182
    const-string v8, "0,1"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    .line 168
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 183
    .local v9, mCursor:Landroid/database/Cursor;
    return-object v9
.end method

.method public updateUploadFolderIdByBatchId(JJ)V
    .locals 5
    .parameter "batchId"
    .parameter "folderId"

    .prologue
    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "batch_id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "folder_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, where:Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 212
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v2, "folder_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 214
    iget-object v2, p0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "upload_queue"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 215
    const-string v2, "UploadQueueAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updateUploadFolderIdByBatchId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return-void
.end method
