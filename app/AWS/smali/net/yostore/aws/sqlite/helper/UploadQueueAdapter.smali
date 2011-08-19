.class public Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;
.super Ljava/lang/Object;
.source "UploadQueueAdapter.java"


# static fields
.field private static final DATABASE_TABLE:Ljava/lang/String; = "uploadqueue"

.field public static final KEY_ATTR:Ljava/lang/String; = "attr"

.field public static final KEY_PATH:Ljava/lang/String; = "path"

.field public static final KEY_ROWID:Ljava/lang/String; = "_id"

.field public static final KEY_SIZE:Ljava/lang/String; = "size"

.field public static final KEY_STATUS:Ljava/lang/String; = "status"

.field public static final KEY_UFO:Ljava/lang/String; = "uploadfolder"

.field public static final KEY_UPLOADFILENAME:Ljava/lang/String; = "uploadfilename"

.field public static final KEY_USERID:Ljava/lang/String; = "userid"

.field public static final KEY_UTP:Ljava/lang/String; = "uptype"

.field private static final TAG:Ljava/lang/String; = "UploadQueueAdapter"

.field private static final TableScheme:[Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 27
    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 28
    const-string v2, "userid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 29
    const-string v2, "path"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 30
    const-string v2, "uploadfilename"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 32
    const-string v2, "size"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 33
    const-string v2, "uptype"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 34
    const-string v2, "uploadfolder"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 35
    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 36
    const-string v2, "attr"

    aput-object v2, v0, v1

    .line 26
    sput-object v0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->TableScheme:[Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->context:Landroid/content/Context;

    .line 46
    new-instance v0, Lnet/yostore/aws/sqlite/helper/DBHelper;

    iget-object v1, p0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lnet/yostore/aws/sqlite/helper/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    .line 47
    return-void
.end method


# virtual methods
.method public changeAllItemStatus(Ljava/lang/String;I)J
    .locals 7
    .parameter "userid"
    .parameter "status"

    .prologue
    .line 359
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "userid=\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "status"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=-1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 360
    .local v3, where:Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 361
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v4, "status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 363
    iget-object v4, p0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "uploadqueue"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v0, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v1, v4

    .line 364
    .local v1, rtn:J
    const-string v4, "UploadQueueAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "changeAllItemStatus="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    return-wide v1
.end method

.method public changeItemStatus(JI)J
    .locals 7
    .parameter "rowid"
    .parameter "status"

    .prologue
    .line 349
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 350
    .local v3, where:Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 351
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v4, "status"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 353
    iget-object v4, p0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "uploadqueue"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v0, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v1, v4

    .line 354
    .local v1, rtn:J
    const-string v4, "UploadQueueAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "changeItemStatus="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return-wide v1
.end method

.method public close()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DBHelper;->close()V

    .line 67
    return-void
.end method

.method public deleteAllUploadItem(Ljava/lang/String;)Z
    .locals 5
    .parameter "userid"

    .prologue
    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " userid=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, where:Ljava/lang/String;
    iget-object v2, p0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "uploadqueue"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 148
    .local v0, rtn:I
    const-string v2, "UploadQueueAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deleteAllUploadItem:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    if-lez v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public deleteAllUploadedUploadItem(Ljava/lang/String;)Z
    .locals 5
    .parameter "userid"

    .prologue
    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " userid=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, where:Ljava/lang/String;
    iget-object v2, p0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "uploadqueue"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 157
    .local v0, rtn:I
    const-string v2, "UploadQueueAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deleteAllUploadItem:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    if-lez v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public deleteAllWatchItem()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 58
    iget-object v1, p0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "uploadqueue"

    invoke-virtual {v1, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 59
    .local v0, rtn:Z
    :goto_0
    const-string v1, "UploadQueueAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deleteAllWatchItem:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return v0

    .line 58
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
    .line 136
    iget-object v1, p0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "uploadqueue"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 136
    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 138
    .local v0, rtn:Z
    :goto_0
    const-string v1, "UploadQueueAdapter"

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

    .line 139
    return v0

    .line 136
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
    .line 163
    iget-object v1, p0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "uploadqueue"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "uptype="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 163
    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 165
    .local v0, rtn:Z
    :goto_0
    const-string v1, "UploadQueueAdapter"

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

    .line 166
    return v0

    .line 163
    .end local v0           #rtn:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getAllUploadNoReadyQueueByFolderId(Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 10
    .parameter "userid"
    .parameter "uploadfolder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 233
    const-string v7, "_id asc "

    .line 234
    .local v7, orderBy:Ljava/lang/String;
    const-string v3, "userid=? and uploadfolder = ? and status<>0"

    .line 236
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "uploadqueue"

    sget-object v2, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->TableScheme:[Ljava/lang/String;

    .line 238
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    const/4 v6, 0x1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    move-object v6, v5

    move-object v8, v5

    .line 236
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 243
    .local v9, mCursor:Landroid/database/Cursor;
    return-object v9
.end method

.method public getAllUploadQueue(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "userid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 204
    const-string v7, "_id asc "

    .line 206
    .local v7, orderBy:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "uploadqueue"

    sget-object v2, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->TableScheme:[Ljava/lang/String;

    .line 207
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "userid=\'"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v8, v4

    .line 206
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 213
    .local v9, mCursor:Landroid/database/Cursor;
    return-object v9
.end method

.method public getAllUploadQueueByFolderId(Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 10
    .parameter "userid"
    .parameter "uploadfolder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 218
    const-string v7, "_id asc "

    .line 219
    .local v7, orderBy:Ljava/lang/String;
    const-string v3, "userid=? and uploadfolder = ?"

    .line 221
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "uploadqueue"

    sget-object v2, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->TableScheme:[Ljava/lang/String;

    .line 223
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    const/4 v6, 0x1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    move-object v6, v5

    move-object v8, v5

    .line 221
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 228
    .local v9, mCursor:Landroid/database/Cursor;
    return-object v9
.end method

.method public getSingleUploadItemCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)I
    .locals 10
    .parameter "userid"
    .parameter "path"
    .parameter "uploadFileName"
    .parameter "uploadFolder"

    .prologue
    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "userid=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "path"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uploadfilename"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uploadfolder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 325
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "uploadqueue"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "count(_id)"

    aput-object v5, v2, v4

    .line 326
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 325
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 327
    .local v8, cr:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 328
    .local v9, rtn:I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 331
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 332
    return v9
.end method

.method public getUploadCounts(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "userid"

    .prologue
    const/4 v4, 0x0

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "userid=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 338
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "uploadqueue"

    .line 339
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "uptype"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    const-string v6, "count(_id)"

    aput-object v6, v2, v5

    .line 342
    const-string v5, "uptype"

    move-object v6, v4

    move-object v7, v4

    .line 338
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 345
    .local v8, mCursor:Landroid/database/Cursor;
    return-object v8
.end method

.method public getUploadQueueItem(J)Landroid/database/Cursor;
    .locals 10
    .parameter "rowId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 247
    const-string v7, "_id asc "

    .line 249
    .local v7, orderBy:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "uploadqueue"

    sget-object v2, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->TableScheme:[Ljava/lang/String;

    .line 250
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "_id="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 255
    const-string v8, "0,1"

    move-object v5, v4

    move-object v6, v4

    .line 249
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 256
    .local v9, mCursor:Landroid/database/Cursor;
    return-object v9
.end method

.method public getUploadTotalCnt(Ljava/lang/String;)I
    .locals 11
    .parameter "userid"

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "userid=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 311
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "uploadqueue"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "count(_id)"

    aput-object v5, v2, v10

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 313
    .local v8, cr:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 314
    .local v9, rtn:I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 317
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 318
    return v9
.end method

.method public getUploadTotalSize(Ljava/lang/String;)J
    .locals 12
    .parameter "userid"

    .prologue
    const/4 v11, 0x0

    const/4 v4, 0x0

    .line 287
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "uploadqueue"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "sum(size)"

    aput-object v3, v2, v11

    .line 288
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "userid=\'"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 287
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 289
    .local v8, cr:Landroid/database/Cursor;
    const-wide/16 v9, 0x0

    .line 290
    .local v9, rtn:J
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 293
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 294
    return-wide v9
.end method

.method public insertUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJLjava/lang/String;)J
    .locals 6
    .parameter "userid"
    .parameter "path"
    .parameter "uploadfilename"
    .parameter "size"
    .parameter "uptype"
    .parameter "uploadFolder"
    .parameter "attr"

    .prologue
    .line 72
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 73
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v3, "userid"

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v3, "path"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v3, "uploadfilename"

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v3, "size"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 78
    const-string v3, "uptype"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 79
    const-string v3, "uploadfolder"

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 80
    const-string v3, "status"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 81
    const-string v3, "attr"

    invoke-virtual {v0, v3, p9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v3, p0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "uploadqueue"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 84
    .local v1, rtn:J
    const-string v3, "UploadQueueAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "insertUpload="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
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
    .line 52
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 53
    return-object p0
.end method

.method public popTopUploadFinishedQueueItem(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "userid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 274
    const-string v7, "_id asc "

    .line 276
    .local v7, orderBy:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "uploadqueue"

    sget-object v2, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->TableScheme:[Ljava/lang/String;

    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "userid=\'"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\' and "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "status"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "=0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 282
    const-string v8, "0,1"

    move-object v5, v4

    move-object v6, v4

    .line 276
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 283
    .local v9, mCursor:Landroid/database/Cursor;
    return-object v9
.end method

.method public popTopUploadQueueItem(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "userid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 260
    const-string v7, "_id asc "

    .line 262
    .local v7, orderBy:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "uploadqueue"

    sget-object v2, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->TableScheme:[Ljava/lang/String;

    .line 263
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "userid=\'"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\' and "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "status"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "=-1"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 268
    const-string v8, "0,1"

    move-object v5, v4

    move-object v6, v4

    .line 262
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 269
    .local v9, mCursor:Landroid/database/Cursor;
    return-object v9
.end method

.method public popUploadCaptureItem(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "userid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 190
    const-string v7, "_id asc "

    .line 192
    .local v7, orderBy:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "uploadqueue"

    sget-object v2, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->TableScheme:[Ljava/lang/String;

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "uptype<>3 and userid=\'"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\' and "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "status"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "<0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 198
    const-string v8, "0,1"

    move-object v5, v4

    move-object v6, v4

    .line 192
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 199
    .local v9, mCursor:Landroid/database/Cursor;
    return-object v9
.end method

.method public popUploadFileItem(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "userid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 174
    const-string v7, "_id asc "

    .line 176
    .local v7, orderBy:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "uploadqueue"

    .line 177
    sget-object v2, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->TableScheme:[Ljava/lang/String;

    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "uptype=3  and userid=\'"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\' and "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "status"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "<0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 183
    const-string v8, "0,1"

    move-object v5, v4

    move-object v6, v4

    .line 176
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 184
    .local v9, mCursor:Landroid/database/Cursor;
    return-object v9
.end method

.method public removeUploadQueue(J)Z
    .locals 5
    .parameter "rowId"

    .prologue
    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " _id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, where:Ljava/lang/String;
    iget-object v2, p0, Lnet/yostore/aws/sqlite/helper/UploadQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "uploadqueue"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    .line 119
    .local v0, rtn:Z
    :goto_0
    const-string v2, "UploadQueueAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "removeAnUploadQueue="

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

    .line 120
    return v0

    .line 118
    .end local v0           #rtn:Z
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method
