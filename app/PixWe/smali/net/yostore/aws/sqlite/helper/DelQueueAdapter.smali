.class public Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;
.super Ljava/lang/Object;
.source "DelQueueAdapter.java"


# static fields
.field private static final DATABASE_TABLE:Ljava/lang/String; = "delete_queue"

.field public static final KEY_FID:Ljava/lang/String; = "fid"

.field public static final KEY_IS_FILE:Ljava/lang/String; = "isfile"

.field public static final KEY_USERNAME:Ljava/lang/String; = "username"

.field private static final TAG:Ljava/lang/String; = "DelQueueAdapter"


# instance fields
.field private final context:Landroid/content/Context;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;->context:Landroid/content/Context;

    .line 30
    new-instance v0, Lnet/yostore/aws/sqlite/helper/DBHelper;

    iget-object v1, p0, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lnet/yostore/aws/sqlite/helper/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    .line 31
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DBHelper;->close()V

    .line 44
    return-void
.end method

.method public deleteDelQueue(J)Z
    .locals 5
    .parameter "fid"

    .prologue
    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, where:Ljava/lang/String;
    iget-object v2, p0, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "delete_queue"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    .line 65
    .local v0, rtn:Z
    :goto_0
    const-string v2, "DelQueueAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deleteDelQueue:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return v0

    .line 64
    .end local v0           #rtn:Z
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public getDelFileQueue(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "username"

    .prologue
    const/4 v3, 0x0

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "username=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "isfile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 121
    .local v9, where:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "delete_queue"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 122
    const-string v5, "fid"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    .line 123
    const-string v5, "username"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    .line 124
    const-string v5, "isfile"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    .line 121
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 131
    .local v8, mCursor:Landroid/database/Cursor;
    return-object v8
.end method

.method public getDelFolderQueue(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "username"

    .prologue
    const/4 v3, 0x0

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "username=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "isfile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 105
    .local v9, where:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "delete_queue"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 106
    const-string v5, "fid"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    .line 107
    const-string v5, "username"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    .line 108
    const-string v5, "isfile"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    .line 105
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 115
    .local v8, mCursor:Landroid/database/Cursor;
    return-object v8
.end method

.method public getDelQueue(J)Landroid/database/Cursor;
    .locals 10
    .parameter "fid"

    .prologue
    const/4 v3, 0x0

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 89
    .local v9, where:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "delete_queue"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 90
    const-string v5, "fid"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    .line 91
    const-string v5, "username"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    .line 92
    const-string v5, "isfile"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    .line 89
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 99
    .local v8, mCursor:Landroid/database/Cursor;
    return-object v8
.end method

.method public insert(Lnet/yostore/aws/sqlite/entity/DelQueue;)J
    .locals 7
    .parameter "delq"

    .prologue
    .line 49
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 50
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v3, "username"

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/DelQueue;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v3, "fid"

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/DelQueue;->getFid()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 52
    const-string v3, "isfile"

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/DelQueue;->getIsfile()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 54
    iget-object v3, p0, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "delete_queue"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 55
    .local v1, rtn:J
    const-string v3, "DelQueueAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "insertDelQueue="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/DelQueue;->getFid()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-wide v1
.end method

.method public open()Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 37
    return-object p0
.end method

.method public popDelQueue(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "username"

    .prologue
    const/4 v3, 0x0

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

    move-result-object v10

    .line 72
    .local v10, where:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/DelQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "delete_queue"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 73
    const-string v5, "fid"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    .line 74
    const-string v5, "username"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    .line 75
    const-string v5, "isfile"

    aput-object v5, v2, v4

    .line 82
    const-string v8, "0,1"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    .line 72
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 83
    .local v9, mCursor:Landroid/database/Cursor;
    return-object v9
.end method
