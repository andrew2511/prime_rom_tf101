.class public Lnet/yostore/aws/sqlite/helper/PlayListAdapter;
.super Ljava/lang/Object;
.source "PlayListAdapter.java"


# static fields
.field private static final DATABASE_TABLE:Ljava/lang/String; = "playlist"

.field public static final KEY_DISPLAY:Ljava/lang/String; = "display"

.field public static final KEY_LASTMODIFIED:Ljava/lang/String; = "lastmodified"

.field public static final KEY_PLISTID:Ljava/lang/String; = "plistid"

.field public static final KEY_STATUS:Ljava/lang/String; = "status"

.field public static final KEY_USERNAME:Ljava/lang/String; = "username"

.field private static final TAG:Ljava/lang/String; = "PlayListAdapter"


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
    iput-object p1, p0, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;->context:Landroid/content/Context;

    .line 30
    new-instance v0, Lnet/yostore/aws/sqlite/helper/DBHelper;

    iget-object v1, p0, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lnet/yostore/aws/sqlite/helper/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    .line 31
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DBHelper;->close()V

    .line 44
    return-void
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 5
    .parameter "plistid"

    .prologue
    .line 180
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

    .line 181
    .local v1, where:Ljava/lang/String;
    iget-object v2, p0, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "playlist"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    .line 182
    .local v0, rtn:Z
    :goto_0
    return v0

    .line 181
    .end local v0           #rtn:Z
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public getAllCompletePlayList(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "username"

    .prologue
    const/4 v4, 0x0

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "username=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " >= 2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "playlist"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 165
    const-string v6, "plistid"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    .line 166
    const-string v6, "display"

    aput-object v6, v2, v5

    const/4 v5, 0x2

    .line 167
    const-string v6, "status"

    aput-object v6, v2, v5

    const/4 v5, 0x3

    .line 168
    const-string v6, "lastmodified"

    aput-object v6, v2, v5

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 164
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 175
    .local v8, mCursor:Landroid/database/Cursor;
    return-object v8
.end method

.method public getAllPlayList(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "username"

    .prologue
    const/4 v4, 0x0

    .line 143
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

    .line 146
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "playlist"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 147
    const-string v6, "plistid"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    .line 148
    const-string v6, "display"

    aput-object v6, v2, v5

    const/4 v5, 0x2

    .line 149
    const-string v6, "status"

    aput-object v6, v2, v5

    const/4 v5, 0x3

    .line 150
    const-string v6, "lastmodified"

    aput-object v6, v2, v5

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 146
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 157
    .local v8, mCursor:Landroid/database/Cursor;
    return-object v8
.end method

.method public getNewPlayLists(J)Landroid/database/Cursor;
    .locals 9
    .parameter "lastmodified"

    .prologue
    const/4 v4, 0x0

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lastmodified>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "playlist"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 125
    const-string v6, "username"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    .line 126
    const-string v6, "plistid"

    aput-object v6, v2, v5

    const/4 v5, 0x2

    .line 127
    const-string v6, "display"

    aput-object v6, v2, v5

    const/4 v5, 0x3

    .line 128
    const-string v6, "status"

    aput-object v6, v2, v5

    const/4 v5, 0x4

    .line 129
    const-string v6, "lastmodified"

    aput-object v6, v2, v5

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 124
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 137
    .local v8, mCursor:Landroid/database/Cursor;
    const-string v0, "PlayListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getNewPlayLists>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-object v8
.end method

.method public getOnePlayList(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "plistid"

    .prologue
    const/4 v4, 0x0

    .line 100
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

    .line 102
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "playlist"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 103
    const-string v6, "username"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    .line 104
    const-string v6, "plistid"

    aput-object v6, v2, v5

    const/4 v5, 0x2

    .line 105
    const-string v6, "display"

    aput-object v6, v2, v5

    const/4 v5, 0x3

    .line 106
    const-string v6, "status"

    aput-object v6, v2, v5

    const/4 v5, 0x4

    .line 107
    const-string v6, "lastmodified"

    aput-object v6, v2, v5

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 102
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 115
    .local v8, mCursor:Landroid/database/Cursor;
    const-string v0, "PlayListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getOnePlayList="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-object v8
.end method

.method public insert(Lnet/yostore/aws/sqlite/entity/PlayList;)J
    .locals 6
    .parameter "plist"

    .prologue
    .line 49
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 50
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v3, "username"

    iget-object v4, p1, Lnet/yostore/aws/sqlite/entity/PlayList;->username:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v3, "plistid"

    iget-object v4, p1, Lnet/yostore/aws/sqlite/entity/PlayList;->plistid:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v3, "display"

    iget-object v4, p1, Lnet/yostore/aws/sqlite/entity/PlayList;->display:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v3, "status"

    iget-object v4, p1, Lnet/yostore/aws/sqlite/entity/PlayList;->status:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    invoke-virtual {v4}, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;->getInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 54
    const-string v3, "lastmodified"

    iget-wide v4, p1, Lnet/yostore/aws/sqlite/entity/PlayList;->lastmodified:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 56
    iget-object v3, p0, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "playlist"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 57
    .local v1, rtn:J
    const-string v3, "PlayListAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "insertDlQueue="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lnet/yostore/aws/sqlite/entity/PlayList;->plistid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lnet/yostore/aws/sqlite/entity/PlayList;->display:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-wide v1
.end method

.method public open()Lnet/yostore/aws/sqlite/helper/PlayListAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 37
    return-object p0
.end method

.method public update(Lnet/yostore/aws/sqlite/entity/PlayList;)J
    .locals 7
    .parameter "plist"

    .prologue
    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "plistid=\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lnet/yostore/aws/sqlite/entity/PlayList;->plistid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, where:Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 66
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v4, "display"

    iget-object v5, p1, Lnet/yostore/aws/sqlite/entity/PlayList;->display:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v4, "lastmodified"

    iget-wide v5, p1, Lnet/yostore/aws/sqlite/entity/PlayList;->lastmodified:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 69
    iget-object v4, p0, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "playlist"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v0, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v1, v4

    .line 70
    .local v1, rtn:J
    const-string v4, "PlayListAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "update="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p1, Lnet/yostore/aws/sqlite/entity/PlayList;->plistid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-wide v1
.end method

.method public updateLastMod(Ljava/lang/String;J)J
    .locals 7
    .parameter "plistid"
    .parameter "lastMod"

    .prologue
    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "plistid=\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, where:Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 91
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v4, "lastmodified"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 93
    iget-object v4, p0, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "playlist"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v0, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v1, v4

    .line 94
    .local v1, rtn:J
    return-wide v1
.end method

.method public updateStatus(Ljava/lang/String;Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;)J
    .locals 7
    .parameter "plistid"
    .parameter "status"

    .prologue
    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "plistid=\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, where:Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 79
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v4, "status"

    invoke-virtual {p2}, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;->getInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 81
    iget-object v4, p0, Lnet/yostore/aws/sqlite/helper/PlayListAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "playlist"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v0, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v1, v4

    .line 82
    .local v1, rtn:J
    const-string v4, "PlayListAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "updateStatus="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-wide v1
.end method
