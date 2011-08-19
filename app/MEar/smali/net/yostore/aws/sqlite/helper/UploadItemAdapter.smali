.class public Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;
.super Ljava/lang/Object;
.source "UploadItemAdapter.java"


# static fields
.field private static final DATABASE_TABLE:Ljava/lang/String; = "uploaditem"

.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field public static final KEY_PARENT:Ljava/lang/String; = "parent"

.field public static final KEY_ROWID:Ljava/lang/String; = "_id"

.field public static final KEY_SIZE:Ljava/lang/String; = "size"

.field public static final KEY_TYPE:Ljava/lang/String; = "type"

.field public static final KEY_UTP:Ljava/lang/String; = "uptype"

.field private static final TAG:Ljava/lang/String; = "UploadItemAdapter"


# instance fields
.field private final context:Landroid/content/Context;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->context:Landroid/content/Context;

    .line 32
    new-instance v0, Lnet/yostore/aws/sqlite/helper/DBHelper;

    iget-object v1, p0, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lnet/yostore/aws/sqlite/helper/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    .line 33
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DBHelper;->close()V

    .line 53
    return-void
.end method

.method public deleteAllUploadItem()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 106
    iget-object v1, p0, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "uploaditem"

    invoke-virtual {v1, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 107
    .local v0, rtn:I
    const-string v1, "UploadItemAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deleteAllUploadItem:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    if-lez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deleteAllWatchItem()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 44
    iget-object v1, p0, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "uploaditem"

    invoke-virtual {v1, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 45
    .local v0, rtn:Z
    :goto_0
    const-string v1, "UploadItemAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deleteAllWatchItem:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return v0

    .line 44
    .end local v0           #rtn:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public deleteUploadItem(J)Z
    .locals 5
    .parameter "rowId"

    .prologue
    .line 97
    iget-object v1, p0, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "uploaditem"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 97
    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 99
    .local v0, rtn:Z
    :goto_0
    const-string v1, "UploadItemAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deleteUploadItem="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return v0

    .line 97
    .end local v0           #rtn:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public deleteUploadItemByType(I)Z
    .locals 5
    .parameter "utype"

    .prologue
    .line 113
    iget-object v1, p0, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "uploaditem"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "uptype="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 113
    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 115
    .local v0, rtn:Z
    :goto_0
    const-string v1, "UploadItemAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deleteUploadItemByType="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return v0

    .line 113
    .end local v0           #rtn:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getCanUpload()Ljava/lang/Boolean;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 175
    const-string v3, "type=1"

    .line 176
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "uploaditem"

    new-array v2, v11, [Ljava/lang/String;

    const-string v5, "size"

    aput-object v5, v2, v10

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 178
    .local v8, cr:Landroid/database/Cursor;
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 179
    .local v9, rtn:Ljava/lang/Boolean;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 182
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 183
    return-object v9
.end method

.method public getSingleUploadItemCount(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .parameter "parent"
    .parameter "name"

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 199
    const-string v0, "\'"

    const-string v1, "\'\'"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 200
    const-string v0, "\'"

    const-string v1, "\'\'"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "parent=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "uploaditem"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "uptype"

    aput-object v5, v2, v10

    const/4 v5, 0x1

    const-string v6, "count(_id)"

    aput-object v6, v2, v5

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 205
    .local v8, cr:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 206
    .local v9, rtn:I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 209
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 210
    return v9
.end method

.method public getUploadCounts()Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 216
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "uploaditem"

    .line 217
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "uptype"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "count(_id)"

    aput-object v5, v2, v3

    .line 218
    const-string v3, "type=1"

    .line 220
    const-string v5, "uptype"

    move-object v6, v4

    move-object v7, v4

    .line 216
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 223
    .local v8, mCursor:Landroid/database/Cursor;
    return-object v8
.end method

.method public getUploadTotalCnt(Z)I
    .locals 11
    .parameter "isfileonly"

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 187
    if-eqz p1, :cond_1

    const-string v0, "type=1"

    move-object v3, v0

    .line 188
    .local v3, where:Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "uploaditem"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "count(_id)"

    aput-object v5, v2, v10

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 190
    .local v8, cr:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 191
    .local v9, rtn:I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 194
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 195
    return v9

    .end local v3           #where:Ljava/lang/String;
    .end local v8           #cr:Landroid/database/Cursor;
    .end local v9           #rtn:I
    :cond_1
    move-object v3, v4

    .line 187
    goto :goto_0
.end method

.method public getUploadTotalSize()J
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x0

    .line 164
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "uploaditem"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "sum(size)"

    aput-object v4, v2, v11

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 166
    .local v8, cr:Landroid/database/Cursor;
    const-wide/16 v9, 0x0

    .line 167
    .local v9, rtn:J
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 170
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 171
    return-wide v9
.end method

.method public insertUploadItem(Ljava/lang/String;Ljava/lang/String;IJI)J
    .locals 6
    .parameter "parent"
    .parameter "name"
    .parameter "type"
    .parameter "size"
    .parameter "uptype"

    .prologue
    .line 58
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 59
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v3, "parent"

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v3, "name"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v3, "type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 62
    const-string v3, "size"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 63
    const-string v3, "uptype"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 66
    iget-object v3, p0, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "uploaditem"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 67
    .local v1, rtn:J
    const-string v3, "UploadItemAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "insertUploadItem="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-wide v1
.end method

.method public open()Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 39
    return-object p0
.end method

.method public popUploadCaptureItem(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "parent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 144
    const-string v0, "\'"

    const-string v1, "\'\'"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 147
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "uploaditem"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 148
    const-string v5, "_id"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    .line 149
    const-string v5, "parent"

    aput-object v5, v2, v3

    const/4 v3, 0x2

    .line 150
    const-string v5, "name"

    aput-object v5, v2, v3

    const/4 v3, 0x3

    .line 151
    const-string v5, "type"

    aput-object v5, v2, v3

    const/4 v3, 0x4

    .line 152
    const-string v5, "size"

    aput-object v5, v2, v3

    const/4 v3, 0x5

    .line 153
    const-string v5, "uptype"

    aput-object v5, v2, v3

    .line 155
    const-string v3, "type=1 and uptype<>3"

    .line 159
    const-string v7, "type desc"

    move-object v5, v4

    move-object v6, v4

    .line 147
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 160
    .local v8, mCursor:Landroid/database/Cursor;
    return-object v8
.end method

.method public popUploadFileItem(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "parent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 123
    const-string v0, "\'"

    const-string v1, "\'\'"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 126
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "uploaditem"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 127
    const-string v5, "_id"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    .line 128
    const-string v5, "parent"

    aput-object v5, v2, v3

    const/4 v3, 0x2

    .line 129
    const-string v5, "name"

    aput-object v5, v2, v3

    const/4 v3, 0x3

    .line 130
    const-string v5, "type"

    aput-object v5, v2, v3

    const/4 v3, 0x4

    .line 131
    const-string v5, "size"

    aput-object v5, v2, v3

    const/4 v3, 0x5

    .line 132
    const-string v5, "uptype"

    aput-object v5, v2, v3

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "parent=\'"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\' and "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "uptype"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "=3"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 138
    const-string v7, "type desc"

    move-object v5, v4

    move-object v6, v4

    .line 126
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 139
    .local v8, mCursor:Landroid/database/Cursor;
    return-object v8
.end method

.method public removeAnSingleUploadItem(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5
    .parameter "parent"
    .parameter "name"
    .parameter "type"

    .prologue
    .line 85
    const-string v2, "\'"

    const-string v3, "\'\'"

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 86
    const-string v2, "\'"

    const-string v3, "\'\'"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "parent=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' and name=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' and type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, where:Ljava/lang/String;
    iget-object v2, p0, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "uploaditem"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    .line 90
    .local v0, rtn:Z
    :goto_0
    const-string v2, "UploadItemAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "removeAnSingleUploadItem="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return v0

    .line 89
    .end local v0           #rtn:Z
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public removeAnUploadItemFolderWithChildren(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "parent"
    .parameter "name"

    .prologue
    .line 73
    const-string v2, "\'"

    const-string v3, "\'\'"

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 74
    const-string v2, "\'"

    const-string v3, "\'\'"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " parent like \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/%\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 76
    const-string v3, " or parent = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 77
    const-string v3, " or (parent=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' and name=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' and type=0)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, where:Ljava/lang/String;
    iget-object v2, p0, Lnet/yostore/aws/sqlite/helper/UploadItemAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "uploaditem"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    .line 80
    .local v0, rtn:Z
    :goto_0
    const-string v2, "UploadItemAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "removeAnUploadItemFolderWithChildren="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return v0

    .line 79
    .end local v0           #rtn:Z
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method
