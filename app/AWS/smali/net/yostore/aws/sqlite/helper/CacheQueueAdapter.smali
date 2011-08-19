.class public Lnet/yostore/aws/sqlite/helper/CacheQueueAdapter;
.super Ljava/lang/Object;
.source "CacheQueueAdapter.java"


# static fields
.field private static final DATABASE_TABLE:Ljava/lang/String; = "cache_queue"

.field public static final KEY_FILEID:Ljava/lang/String; = "fileid"

.field public static final KEY_LASTMODIFYTIME:Ljava/lang/String; = "lastmodifytime"

.field public static final KEY_SIZE:Ljava/lang/String; = "size"

.field private static final TAG:Ljava/lang/String; = "CacheQueueAdapter"

.field private static final TableScheme:[Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 20
    const-string v2, "fileid"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 21
    const-string v2, "size"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 22
    const-string v2, "lastmodifytime"

    aput-object v2, v0, v1

    .line 19
    sput-object v0, Lnet/yostore/aws/sqlite/helper/CacheQueueAdapter;->TableScheme:[Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lnet/yostore/aws/sqlite/helper/CacheQueueAdapter;->context:Landroid/content/Context;

    .line 32
    new-instance v0, Lnet/yostore/aws/sqlite/helper/DBHelper;

    iget-object v1, p0, Lnet/yostore/aws/sqlite/helper/CacheQueueAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lnet/yostore/aws/sqlite/helper/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/yostore/aws/sqlite/helper/CacheQueueAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    .line 33
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/CacheQueueAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DBHelper;->close()V

    .line 46
    return-void
.end method

.method public deleteAllCacheItem()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 66
    iget-object v1, p0, Lnet/yostore/aws/sqlite/helper/CacheQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "cache_queue"

    invoke-virtual {v1, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 67
    .local v0, rtn:I
    const-string v1, "CacheQueueAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deleteAllUploadItem:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    if-lez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deleteCacheItem(J)Z
    .locals 5
    .parameter "fileId"

    .prologue
    .line 73
    iget-object v1, p0, Lnet/yostore/aws/sqlite/helper/CacheQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "cache_queue"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fileid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 73
    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 75
    .local v0, rtn:Z
    :goto_0
    const-string v1, "CacheQueueAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deleteCacheItem="

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

    .line 76
    return v0

    .line 73
    .end local v0           #rtn:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getCacheItem(J)Landroid/database/Cursor;
    .locals 10
    .parameter "fileId"

    .prologue
    const/4 v4, 0x0

    .line 82
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/CacheQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cache_queue"

    sget-object v2, Lnet/yostore/aws/sqlite/helper/CacheQueueAdapter;->TableScheme:[Ljava/lang/String;

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "fileid="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 88
    const-string v8, "0,1"

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 82
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 89
    .local v9, mCursor:Landroid/database/Cursor;
    return-object v9
.end method

.method public insertCache(JJJ)J
    .locals 6
    .parameter "fileId"
    .parameter "size"
    .parameter "lastmodifytime"

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2}, Lnet/yostore/aws/sqlite/helper/CacheQueueAdapter;->deleteCacheItem(J)Z

    .line 52
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 53
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v3, "fileid"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 54
    const-string v3, "size"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 55
    const-string v3, "lastmodifytime"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 57
    iget-object v3, p0, Lnet/yostore/aws/sqlite/helper/CacheQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "cache_queue"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 58
    .local v1, rtn:J
    const-string v3, "CacheQueueAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "insertCache="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-wide v1
.end method

.method public open()Lnet/yostore/aws/sqlite/helper/CacheQueueAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/CacheQueueAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/sqlite/helper/CacheQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 39
    return-object p0
.end method
