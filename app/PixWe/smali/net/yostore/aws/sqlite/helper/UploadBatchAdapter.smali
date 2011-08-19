.class public Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;
.super Ljava/lang/Object;
.source "UploadBatchAdapter.java"


# static fields
.field public static final DATABASE_TABLE:Ljava/lang/String; = "upload_batch"

.field private static final KEY_BATCH_ID:Ljava/lang/String; = "batch_id"

.field private static final KEY_FOLDER_ID:Ljava/lang/String; = "folder_id"

.field private static final KEY_FOLDER_NAME:Ljava/lang/String; = "folder_name"

.field public static final KEY_USERNAME:Ljava/lang/String; = "username"

.field private static final TAG:Ljava/lang/String; = "UploadBatchAdapter"


# instance fields
.field private final context:Landroid/content/Context;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;->context:Landroid/content/Context;

    .line 31
    new-instance v0, Lnet/yostore/aws/sqlite/helper/DBHelper;

    iget-object v1, p0, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lnet/yostore/aws/sqlite/helper/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    .line 32
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DBHelper;->close()V

    .line 45
    return-void
.end method

.method public deleteAllUploadBatch(Ljava/lang/String;)Z
    .locals 5
    .parameter "userName"

    .prologue
    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "folder_name=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, where:Ljava/lang/String;
    iget-object v2, p0, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "upload_batch"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    .line 162
    .local v0, rtn:Z
    :goto_0
    const-string v2, "UploadBatchAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deleteUploadBatch:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return v0

    .line 161
    .end local v0           #rtn:Z
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public deleteUploadBatch(J)Z
    .locals 5
    .parameter "batchId"

    .prologue
    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "batch_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, where:Ljava/lang/String;
    iget-object v2, p0, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "upload_batch"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    .line 154
    .local v0, rtn:Z
    :goto_0
    const-string v2, "UploadBatchAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deleteUploadBatch:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return v0

    .line 153
    .end local v0           #rtn:Z
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public getUploadBatchByBatchId(J)Landroid/database/Cursor;
    .locals 9
    .parameter "batchId"

    .prologue
    const/4 v4, 0x0

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "batch_id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "upload_batch"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 118
    const-string v6, "batch_id"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    .line 119
    const-string v6, "folder_name"

    aput-object v6, v2, v5

    const/4 v5, 0x2

    .line 120
    const-string v6, "folder_id"

    aput-object v6, v2, v5

    const/4 v5, 0x3

    .line 121
    const-string v6, "username"

    aput-object v6, v2, v5

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 117
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 128
    .local v8, mCursor:Landroid/database/Cursor;
    return-object v8
.end method

.method public getUploadBatchByfolderName(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "userName"
    .parameter "folderName"

    .prologue
    const/4 v4, 0x0

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "username=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "folder_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " =\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "upload_batch"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 136
    const-string v6, "batch_id"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    .line 137
    const-string v6, "folder_name"

    aput-object v6, v2, v5

    const/4 v5, 0x2

    .line 138
    const-string v6, "folder_id"

    aput-object v6, v2, v5

    const/4 v5, 0x3

    .line 139
    const-string v6, "username"

    aput-object v6, v2, v5

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 135
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 146
    .local v8, mCursor:Landroid/database/Cursor;
    return-object v8
.end method

.method public getUploadBatchs(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "userName"

    .prologue
    const/4 v4, 0x0

    .line 77
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

    .line 79
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "upload_batch"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 80
    const-string v6, "batch_id"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    .line 81
    const-string v6, "folder_name"

    aput-object v6, v2, v5

    const/4 v5, 0x2

    .line 82
    const-string v6, "folder_id"

    aput-object v6, v2, v5

    const/4 v5, 0x3

    .line 83
    const-string v6, "username"

    aput-object v6, v2, v5

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 79
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 90
    .local v8, mCursor:Landroid/database/Cursor;
    return-object v8
.end method

.method public insertUploadBatch(Lnet/yostore/aws/sqlite/entity/UploadBatch;)J
    .locals 6
    .parameter "ub"

    .prologue
    .line 50
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 52
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v3, "folder_name"

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/UploadBatch;->getFolderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v3, "folder_id"

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/UploadBatch;->getFolderId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 54
    const-string v3, "username"

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/UploadBatch;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v3, p0, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "upload_batch"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 57
    .local v1, rtn:J
    const-string v3, "UploadBatchAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "insertUploadBatch="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-wide v1
.end method

.method public open()Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 38
    return-object p0
.end method

.method public popUploadBatch(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "userName"

    .prologue
    const/4 v4, 0x0

    .line 95
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

    .line 96
    .local v3, where:Ljava/lang/String;
    const-string v7, "batch_id asc "

    .line 98
    .local v7, orderBy:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "upload_batch"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 99
    const-string v6, "batch_id"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    .line 100
    const-string v6, "folder_name"

    aput-object v6, v2, v5

    const/4 v5, 0x2

    .line 101
    const-string v6, "folder_id"

    aput-object v6, v2, v5

    const/4 v5, 0x3

    .line 102
    const-string v6, "username"

    aput-object v6, v2, v5

    .line 109
    const-string v8, "0,1"

    move-object v5, v4

    move-object v6, v4

    .line 98
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 110
    .local v9, mCursor:Landroid/database/Cursor;
    return-object v9
.end method

.method public updateUploadBatch(Lnet/yostore/aws/sqlite/entity/UploadBatch;)J
    .locals 7
    .parameter "ub"

    .prologue
    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "username=\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/UploadBatch;->getUserName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "folder_name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " =\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/UploadBatch;->getFolderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, where:Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 67
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v4, "folder_id"

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/UploadBatch;->getFolderId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 69
    iget-object v4, p0, Lnet/yostore/aws/sqlite/helper/UploadBatchAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "upload_batch"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v0, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v1, v4

    .line 70
    .local v1, rtn:J
    const-string v4, "UploadBatchAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "updateUploadBatch="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-wide v1
.end method
