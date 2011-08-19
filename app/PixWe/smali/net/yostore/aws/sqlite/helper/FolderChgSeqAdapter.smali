.class public Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;
.super Ljava/lang/Object;
.source "FolderChgSeqAdapter.java"


# static fields
.field public static final DATABASE_TABLE:Ljava/lang/String; = "folderchgseq"

.field private static final KEY_CHG_SEQ:Ljava/lang/String; = "change_seq"

.field private static final KEY_CHG_SEQ_TIME:Ljava/lang/String; = "change_seq_time"

.field private static final KEY_FOLDER_ID:Ljava/lang/String; = "folder_id"

.field private static final KEY_LOCAL_UPDATE_TIME:Ljava/lang/String; = "local_update_time"

.field private static final KEY_USER_NAME:Ljava/lang/String; = "username"

.field private static final TAG:Ljava/lang/String; = "FolderChgSeqAdapter"


# instance fields
.field private final context:Landroid/content/Context;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;->context:Landroid/content/Context;

    .line 33
    new-instance v0, Lnet/yostore/aws/sqlite/helper/DBHelper;

    iget-object v1, p0, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lnet/yostore/aws/sqlite/helper/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    .line 34
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DBHelper;->close()V

    .line 47
    return-void
.end method

.method public deleteFolderChgSeq(J)Z
    .locals 5
    .parameter "folderId"

    .prologue
    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "folder_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, where:Ljava/lang/String;
    iget-object v2, p0, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "folderchgseq"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    .line 212
    .local v0, rtn:Z
    :goto_0
    const-string v2, "FolderChgSeqAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deleteFolderChgSeq:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return v0

    .line 211
    .end local v0           #rtn:Z
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public getAllFolderChgSeq(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "userName"

    .prologue
    .line 92
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

    .line 93
    .local v3, where:Ljava/lang/String;
    const/4 v8, 0x0

    .line 95
    .local v8, mCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "folderchgseq"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 96
    const-string v5, "folder_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    .line 97
    const-string v5, "username"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    .line 98
    const-string v5, "change_seq"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    .line 99
    const-string v5, "change_seq_time"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    .line 100
    const-string v5, "local_update_time"

    aput-object v5, v2, v4

    .line 103
    const/4 v4, 0x0

    .line 104
    const/4 v5, 0x0

    .line 105
    const/4 v6, 0x0

    .line 106
    const/4 v7, 0x0

    .line 95
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 110
    :goto_0
    return-object v8

    .line 107
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getChangedFolder(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "userName"

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "local_update_time > change_seq_time and username=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, where:Ljava/lang/String;
    const/4 v8, 0x0

    .line 118
    .local v8, mCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "folderchgseq"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 119
    const-string v5, "folder_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    .line 120
    const-string v5, "username"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    .line 121
    const-string v5, "change_seq"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    .line 122
    const-string v5, "change_seq_time"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    .line 123
    const-string v5, "local_update_time"

    aput-object v5, v2, v4

    .line 126
    const/4 v4, 0x0

    .line 127
    const/4 v5, 0x0

    .line 128
    const/4 v6, 0x0

    .line 129
    const/4 v7, 0x0

    .line 118
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 133
    :goto_0
    return-object v8

    .line 130
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getFolderChgSeqByFolderId(J)Landroid/database/Cursor;
    .locals 10
    .parameter "folderId"

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "folder_id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, where:Ljava/lang/String;
    const/4 v9, 0x0

    .line 188
    .local v9, mCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "folderchgseq"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 189
    const-string v5, "folder_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    .line 190
    const-string v5, "username"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    .line 191
    const-string v5, "change_seq"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    .line 192
    const-string v5, "change_seq_time"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    .line 193
    const-string v5, "local_update_time"

    aput-object v5, v2, v4

    .line 196
    const/4 v4, 0x0

    .line 197
    const/4 v5, 0x0

    .line 198
    const/4 v6, 0x0

    .line 199
    const/4 v7, 0x0

    .line 200
    const-string v8, "0,1"

    .line 188
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 204
    :goto_0
    return-object v9

    .line 201
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getFolderOrderByChgTimeAsc(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "userName"

    .prologue
    .line 138
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

    .line 139
    .local v3, where:Ljava/lang/String;
    const/4 v8, 0x0

    .line 141
    .local v8, mCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "folderchgseq"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 142
    const-string v5, "folder_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    .line 143
    const-string v5, "username"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    .line 144
    const-string v5, "change_seq"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    .line 145
    const-string v5, "change_seq_time"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    .line 146
    const-string v5, "local_update_time"

    aput-object v5, v2, v4

    .line 149
    const/4 v4, 0x0

    .line 150
    const/4 v5, 0x0

    .line 151
    const/4 v6, 0x0

    .line 152
    const-string v7, "change_seq_time"

    .line 141
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 156
    :goto_0
    return-object v8

    .line 153
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public insertFolderChgSeq(JLjava/lang/String;JJJ)J
    .locals 6
    .parameter "folder_id"
    .parameter "userName"
    .parameter "change_seq"
    .parameter "change_seq_time"
    .parameter "local_update_time"

    .prologue
    .line 52
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 53
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v3, "folder_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 54
    const-string v3, "username"

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v3, "change_seq"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 56
    const-string v3, "change_seq_time"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 57
    const-string v3, "local_update_time"

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 59
    iget-object v3, p0, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "folderchgseq"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 60
    .local v1, rtn:J
    const-string v3, "FolderChgSeqAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "insertFolderId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-wide v1
.end method

.method public open()Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 40
    return-object p0
.end method

.method public popChangedFolder(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "userName"

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "local_update_time > change_seq_time and username = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "folder_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v1, Lcom/ecareme/pixwe/PixWe;->albums_meta_folder_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, where:Ljava/lang/String;
    const/4 v9, 0x0

    .line 164
    .local v9, mCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "folderchgseq"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 165
    const-string v5, "folder_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    .line 166
    const-string v5, "username"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    .line 167
    const-string v5, "change_seq"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    .line 168
    const-string v5, "change_seq_time"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    .line 169
    const-string v5, "local_update_time"

    aput-object v5, v2, v4

    .line 172
    const/4 v4, 0x0

    .line 173
    const/4 v5, 0x0

    .line 174
    const/4 v6, 0x0

    .line 175
    const/4 v7, 0x0

    .line 176
    const-string v8, "0,1"

    .line 164
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 180
    :goto_0
    return-object v9

    .line 177
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateChgSeqUpdate(JJJ)J
    .locals 7
    .parameter "folder_id"
    .parameter "change_seq"
    .parameter "change_seq_time"

    .prologue
    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "folder_id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, where:Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 82
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v4, "change_seq"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 83
    const-string v4, "change_seq_time"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 85
    iget-object v4, p0, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "folderchgseq"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v0, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v1, v4

    .line 86
    .local v1, rtn:J
    const-string v4, "FolderChgSeqAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "updateIsLocalUpdate="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-wide v1
.end method

.method public updateLocalUpdateTime(JJ)J
    .locals 7
    .parameter "folder_id"
    .parameter "local_update_time"

    .prologue
    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "folder_id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, where:Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 70
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v4, "local_update_time"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 72
    iget-object v4, p0, Lnet/yostore/aws/sqlite/helper/FolderChgSeqAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "folderchgseq"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v0, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v1, v4

    .line 73
    .local v1, rtn:J
    const-string v4, "FolderChgSeqAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "updateChgSeq="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-wide v1
.end method
