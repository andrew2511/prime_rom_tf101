.class public Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;
.super Ljava/lang/Object;
.source "DlQueueAdapter.java"


# static fields
.field private static final DATABASE_TABLE:Ljava/lang/String; = "dlqueue"

.field public static final KEY_MESSAGE:Ljava/lang/String; = "message"

.field public static final KEY_MP3ID:Ljava/lang/String; = "mp3id"

.field public static final KEY_PLISTID:Ljava/lang/String; = "plistid"

.field public static final KEY_STATUS:Ljava/lang/String; = "status"

.field public static final KEY_USERNAME:Ljava/lang/String; = "username"

.field private static final TAG:Ljava/lang/String; = "DlQueueAdapter"


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
    iput-object p1, p0, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;->context:Landroid/content/Context;

    .line 31
    new-instance v0, Lnet/yostore/aws/sqlite/helper/DBHelper;

    iget-object v1, p0, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lnet/yostore/aws/sqlite/helper/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    .line 32
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DBHelper;->close()V

    .line 45
    return-void
.end method

.method public deleteOneMp3(Ljava/lang/String;)Z
    .locals 5
    .parameter "mp3id"

    .prologue
    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mp3id=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, where:Ljava/lang/String;
    iget-object v2, p0, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "dlqueue"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    .line 99
    .local v0, rtn:Z
    :goto_0
    const-string v2, "DlQueueAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deleteOneMp3:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return v0

    .line 98
    .end local v0           #rtn:Z
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public deleteOnePlist(Ljava/lang/String;)Z
    .locals 5
    .parameter "plistid"

    .prologue
    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "plistid=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, where:Ljava/lang/String;
    iget-object v2, p0, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "dlqueue"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    .line 108
    .local v0, rtn:Z
    :goto_0
    const-string v2, "DlQueueAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deleteOnePlist:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return v0

    .line 107
    .end local v0           #rtn:Z
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public getDlQueue(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "username"

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
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "dlqueue"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 80
    const-string v6, "username"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    .line 81
    const-string v6, "plistid"

    aput-object v6, v2, v5

    const/4 v5, 0x2

    .line 82
    const-string v6, "mp3id"

    aput-object v6, v2, v5

    const/4 v5, 0x3

    .line 83
    const-string v6, "status"

    aput-object v6, v2, v5

    const/4 v5, 0x4

    .line 84
    const-string v6, "message"

    aput-object v6, v2, v5

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 79
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 91
    .local v8, mCursor:Landroid/database/Cursor;
    return-object v8
.end method

.method public getPlistCount(Ljava/lang/String;)I
    .locals 11
    .parameter "plist"

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "plistid=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "dlqueue"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "count(0)"

    aput-object v5, v2, v10

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 117
    .local v8, cr:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 118
    .local v9, rtn:I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 121
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 122
    const-string v0, "DlQueueAdapter"

    const-string v1, "-------------------------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v0, "DlQueueAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "--> #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string v0, "DlQueueAdapter"

    const-string v1, "-------------------------------------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return v9
.end method

.method public insert(Lnet/yostore/aws/sqlite/entity/DlQueue;)J
    .locals 6
    .parameter "dlq"

    .prologue
    .line 50
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 51
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v3, "username"

    iget-object v4, p1, Lnet/yostore/aws/sqlite/entity/DlQueue;->username:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v3, "plistid"

    iget-object v4, p1, Lnet/yostore/aws/sqlite/entity/DlQueue;->plistid:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v3, "mp3id"

    iget-object v4, p1, Lnet/yostore/aws/sqlite/entity/DlQueue;->mp3id:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v3, "status"

    iget-object v4, p1, Lnet/yostore/aws/sqlite/entity/DlQueue;->status:Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;

    invoke-virtual {v4}, Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;->getInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 55
    const-string v3, "message"

    iget v4, p1, Lnet/yostore/aws/sqlite/entity/DlQueue;->message:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 57
    iget-object v3, p0, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "dlqueue"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 58
    .local v1, rtn:J
    const-string v3, "DlQueueAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "insertDlQueue="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lnet/yostore/aws/sqlite/entity/DlQueue;->plistid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lnet/yostore/aws/sqlite/entity/DlQueue;->mp3id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-wide v1
.end method

.method public open()Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 38
    return-object p0
.end method

.method public resetMessageByUserName(Ljava/lang/String;)V
    .locals 5
    .parameter "username"

    .prologue
    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "username=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, where:Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 132
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v2, "message"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v2, p0, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "dlqueue"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 135
    const-string v2, "DlQueueAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "resetMessageByUserName="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void
.end method

.method public updateStatusAndMessage(Ljava/lang/String;Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;I)J
    .locals 7
    .parameter "mp3id"
    .parameter "status"
    .parameter "msg"

    .prologue
    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mp3id=\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    const-string v4, "status"

    invoke-virtual {p2}, Lnet/yostore/aws/sqlite/entity/DlQueue$STATUS;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v4, "message"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 70
    iget-object v4, p0, Lnet/yostore/aws/sqlite/helper/DlQueueAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "dlqueue"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v0, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v1, v4

    .line 71
    .local v1, rtn:J
    const-string v4, "DlQueueAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "updateStatusAndMessage="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-wide v1
.end method
