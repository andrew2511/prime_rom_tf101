.class public Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;
.super Ljava/lang/Object;
.source "DownloadQueueAdapter.java"


# static fields
.field private static final DATABASE_TABLE:Ljava/lang/String; = "download_queue"

.field public static final KEY_FILEID:Ljava/lang/String; = "fileid"

.field public static final KEY_FILENAME:Ljava/lang/String; = "filename"

.field public static final KEY_FILEUPLOADTIME:Ljava/lang/String; = "fileuploadtime"

.field public static final KEY_ROWID:Ljava/lang/String; = "_id"

.field public static final KEY_SAVEPATH:Ljava/lang/String; = "savepath"

.field public static final KEY_SIZE:Ljava/lang/String; = "size"

.field public static final KEY_STATUS:Ljava/lang/String; = "status"

.field public static final KEY_USERID:Ljava/lang/String; = "userid"

.field private static final TAG:Ljava/lang/String; = "DownloadQueueAdapter"

.field private static final TableScheme:[Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 25
    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 26
    const-string v2, "userid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 27
    const-string v2, "fileid"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 28
    const-string v2, "savepath"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 29
    const-string v2, "filename"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 30
    const-string v2, "size"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 31
    const-string v2, "fileuploadtime"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 32
    const-string v2, "status"

    aput-object v2, v0, v1

    .line 24
    sput-object v0, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->TableScheme:[Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->context:Landroid/content/Context;

    .line 42
    new-instance v0, Lnet/yostore/aws/sqlite/helper/DBHelper;

    iget-object v1, p0, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lnet/yostore/aws/sqlite/helper/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    .line 43
    return-void
.end method


# virtual methods
.method public changeItemStatus(JI)J
    .locals 7
    .parameter "rowid"
    .parameter "status"

    .prologue
    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_id=\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 194
    .local v3, where:Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 195
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v4, "status"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 197
    iget-object v4, p0, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "download_queue"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v0, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v1, v4

    .line 198
    .local v1, rtn:J
    const-string v4, "DownloadQueueAdapter"

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

    .line 199
    return-wide v1
.end method

.method public close()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DBHelper;->close()V

    .line 56
    return-void
.end method

.method public deleteAllCompleteItem(Ljava/lang/String;)Z
    .locals 1
    .parameter "userid"

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->deleteAllStstusItem(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public deleteAllErrItem(Ljava/lang/String;)Z
    .locals 5
    .parameter "userid"

    .prologue
    .line 93
    iget-object v1, p0, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "download_queue"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "userid=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 94
    .local v0, rtn:Z
    :goto_0
    const-string v1, "DownloadQueueAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deleteAllErrItem:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return v0

    .line 93
    .end local v0           #rtn:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public deleteAllItem(Ljava/lang/String;)Z
    .locals 5
    .parameter "userid"

    .prologue
    .line 60
    iget-object v1, p0, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "download_queue"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "userid=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 61
    .local v0, rtn:Z
    :goto_0
    const-string v1, "DownloadQueueAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deleteAllItem:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return v0

    .line 60
    .end local v0           #rtn:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public deleteAllNotStartItem(Ljava/lang/String;)Z
    .locals 1
    .parameter "userid"

    .prologue
    .line 100
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->deleteAllStstusItem(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public deleteAllStstusItem(Ljava/lang/String;I)Z
    .locals 5
    .parameter "userid"
    .parameter "status"

    .prologue
    .line 67
    iget-object v1, p0, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "download_queue"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "userid=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 68
    .local v0, rtn:Z
    :goto_0
    const-string v1, "DownloadQueueAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deleteAllStatusItem:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return v0

    .line 67
    .end local v0           #rtn:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public deleteAllUnCompleteItem(Ljava/lang/String;)Z
    .locals 5
    .parameter "userid"

    .prologue
    .line 86
    iget-object v1, p0, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "download_queue"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "userid=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<> 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 87
    .local v0, rtn:Z
    :goto_0
    const-string v1, "DownloadQueueAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deleteAllStatusItem:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return v0

    .line 86
    .end local v0           #rtn:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public deleteItem(J)Z
    .locals 5
    .parameter "rowid"

    .prologue
    .line 74
    iget-object v1, p0, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "download_queue"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 75
    .local v0, rtn:Z
    :goto_0
    const-string v1, "DownloadQueueAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deleteAllStatusItem:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return v0

    .line 74
    .end local v0           #rtn:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getAllDownloadQueue(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "userid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 138
    const-string v7, "_id asc "

    .line 140
    .local v7, orderBy:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "download_queue"

    sget-object v2, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->TableScheme:[Ljava/lang/String;

    .line 141
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

    const-string v5, " <> 0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v8, v4

    .line 140
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 147
    .local v9, mCursor:Landroid/database/Cursor;
    return-object v9
.end method

.method public getDownloadQueueItemByFileId(J)Landroid/database/Cursor;
    .locals 10
    .parameter "fileId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 166
    const-string v7, "_id asc "

    .line 168
    .local v7, orderBy:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "download_queue"

    sget-object v2, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->TableScheme:[Ljava/lang/String;

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "fileid="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 174
    const-string v8, "0,1"

    move-object v5, v4

    move-object v6, v4

    .line 168
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 175
    .local v9, mCursor:Landroid/database/Cursor;
    return-object v9
.end method

.method public getDownloadQueueItemByRowId(J)Landroid/database/Cursor;
    .locals 10
    .parameter "rowId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 180
    const-string v7, "_id asc "

    .line 182
    .local v7, orderBy:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "download_queue"

    sget-object v2, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->TableScheme:[Ljava/lang/String;

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "_id="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 188
    const-string v8, "0,1"

    move-object v5, v4

    move-object v6, v4

    .line 182
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 189
    .local v9, mCursor:Landroid/database/Cursor;
    return-object v9
.end method

.method public getSingleDownloadItemCount(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)I
    .locals 10
    .parameter "userid"
    .parameter "fileid"
    .parameter "savepath"
    .parameter "filename"

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "userid=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fileid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "savepath"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "filename"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "download_queue"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "count(_id)"

    aput-object v5, v2, v4

    .line 108
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 107
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 109
    .local v8, cr:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 110
    .local v9, rtn:I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 113
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 114
    return v9
.end method

.method public insertDownloadItem(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JJ)J
    .locals 6
    .parameter "userid"
    .parameter "fileid"
    .parameter "savepath"
    .parameter "filename"
    .parameter "size"
    .parameter "fileuploadtime"

    .prologue
    .line 120
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 121
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v3, "userid"

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v3, "fileid"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 123
    const-string v3, "savepath"

    invoke-virtual {v0, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v3, "filename"

    invoke-virtual {v0, v3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v3, "size"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 126
    const-string v3, "fileuploadtime"

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 127
    const-string v3, "status"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 130
    iget-object v3, p0, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "download_queue"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 131
    .local v1, rtn:J
    const-string v3, "DownloadQueueAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "insertDownloadItem="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-wide v1
.end method

.method public open()Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 49
    return-object p0
.end method

.method public popTopDownloadQueueItem(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "userid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 152
    const-string v7, "_id asc "

    .line 154
    .local v7, orderBy:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "download_queue"

    sget-object v2, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->TableScheme:[Ljava/lang/String;

    .line 155
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

    .line 160
    const-string v8, "0,1"

    move-object v5, v4

    move-object v6, v4

    .line 154
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 161
    .local v9, mCursor:Landroid/database/Cursor;
    return-object v9
.end method

.method public setItemSize(JJ)J
    .locals 7
    .parameter "rowid"
    .parameter "size"

    .prologue
    .line 203
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_id=\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 204
    .local v3, where:Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 205
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v4, "size"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 207
    iget-object v4, p0, Lnet/yostore/aws/sqlite/helper/DownloadQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "download_queue"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v0, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v1, v4

    .line 208
    .local v1, rtn:J
    const-string v4, "DownloadQueueAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "setItemSize="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-wide v1
.end method
