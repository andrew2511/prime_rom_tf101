.class public Lnet/yostore/aws/sqlite/helper/MediaAdapter;
.super Ljava/lang/Object;
.source "MediaAdapter.java"


# static fields
.field public static final DATABASE_TABLE:Ljava/lang/String; = "mediainfo"

.field public static final KEY_ALBUM_FOLDER:Ljava/lang/String; = "album_folder"

.field public static final KEY_FILEID:Ljava/lang/String; = "file_id"

.field public static final KEY_FILE_NAME:Ljava/lang/String; = "file_name"

.field public static final KEY_FILE_TYPE:Ljava/lang/String; = "file_type"

.field public static final KEY_IMPORT_FROM:Ljava/lang/String; = "import_from"

.field public static final KEY_MODIFY_TIME:Ljava/lang/String; = "file_modify_time"

.field public static final KEY_NOTE:Ljava/lang/String; = "note"

.field public static final KEY_ROTATE:Ljava/lang/String; = "rotate"

.field public static final KEY_ROW_ID:Ljava/lang/String; = "_id"

.field public static final KEY_TRANSCODE_STAT:Ljava/lang/String; = "transcode_status"

.field public static final KEY_UPLOAD_STAT:Ljava/lang/String; = "upload_status"

.field public static final KEY_USERNAME:Ljava/lang/String; = "username"

.field public static final TAB_SCHEME:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "MediaAdapter"


# instance fields
.field private final context:Landroid/content/Context;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "album_folder"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "username"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "file_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "file_modify_time"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "file_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "file_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "rotate"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "note"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "transcode_status"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "upload_status"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "import_from"

    aput-object v2, v0, v1

    sput-object v0, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->TAB_SCHEME:[Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->context:Landroid/content/Context;

    .line 42
    new-instance v0, Lnet/yostore/aws/sqlite/helper/DBHelper;

    iget-object v1, p0, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lnet/yostore/aws/sqlite/helper/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    .line 43
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DBHelper;->close()V

    .line 56
    return-void
.end method

.method public delete(J)I
    .locals 5
    .parameter "rowId"

    .prologue
    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, where:Ljava/lang/String;
    iget-object v2, p0, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "mediainfo"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 112
    .local v0, rtn:I
    const-string v2, "MediaAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "delete:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return v0
.end method

.method public deleteByAlbum(J)Z
    .locals 5
    .parameter "albumId"

    .prologue
    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "album_folder=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, where:Ljava/lang/String;
    iget-object v2, p0, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "mediainfo"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    .line 129
    .local v0, rtn:Z
    :goto_0
    const-string v2, "MediaAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deleteByAlbum:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return v0

    .line 128
    .end local v0           #rtn:Z
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public deleteByFileId(J)I
    .locals 5
    .parameter "fileId"

    .prologue
    .line 118
    const/4 v0, -0x1

    .line 119
    .local v0, rtn:I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, where:Ljava/lang/String;
    iget-object v2, p0, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "mediainfo"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 121
    const-string v2, "MediaAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deleteByFileId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return v0
.end method

.method public getAllMedias(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "userName"

    .prologue
    const/4 v4, 0x0

    .line 191
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

    .line 192
    .local v3, where:Ljava/lang/String;
    const-string v7, "album_folder asc _id desc"

    .line 194
    .local v7, orderBy:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "mediainfo"

    sget-object v2, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->TAB_SCHEME:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 196
    .local v8, cr:Landroid/database/Cursor;
    const-string v0, "MediaAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getAllMedias:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-object v8
.end method

.method public getListByAlbum(J)Landroid/database/Cursor;
    .locals 9
    .parameter "albumId"

    .prologue
    const/4 v4, 0x0

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "album_folder="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, where:Ljava/lang/String;
    const-string v7, "_id desc"

    .line 164
    .local v7, orderBy:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "mediainfo"

    sget-object v2, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->TAB_SCHEME:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 166
    .local v8, cr:Landroid/database/Cursor;
    const-string v0, "MediaAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getListByAlbum:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-object v8
.end method

.method public getMedia(J)Landroid/database/Cursor;
    .locals 9
    .parameter "rowId"

    .prologue
    const/4 v4, 0x0

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "mediainfo"

    sget-object v2, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->TAB_SCHEME:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 147
    .local v8, cr:Landroid/database/Cursor;
    const-string v0, "MediaAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getMedia:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-object v8
.end method

.method public getMedia(JJ)Landroid/database/Cursor;
    .locals 9
    .parameter "albumId"
    .parameter "mediaFileId"

    .prologue
    const/4 v4, 0x0

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "album_folder="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "file_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "mediainfo"

    sget-object v2, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->TAB_SCHEME:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 138
    .local v8, cr:Landroid/database/Cursor;
    const-string v0, "MediaAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getMedia:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-object v8
.end method

.method public getMediaByFileId(J)Landroid/database/Cursor;
    .locals 9
    .parameter "fileId"

    .prologue
    const/4 v4, 0x0

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 154
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "mediainfo"

    sget-object v2, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->TAB_SCHEME:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 156
    .local v8, cr:Landroid/database/Cursor;
    const-string v0, "MediaAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getMediaByFileId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-object v8
.end method

.method public getRealDelListByAlbum(J)Landroid/database/Cursor;
    .locals 9
    .parameter "albumId"

    .prologue
    const/4 v4, 0x0

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "album_folder="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "import_from"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, where:Ljava/lang/String;
    const-string v7, "_id desc"

    .line 174
    .local v7, orderBy:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "mediainfo"

    sget-object v2, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->TAB_SCHEME:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 176
    .local v8, cr:Landroid/database/Cursor;
    const-string v0, "MediaAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getListByAlbum:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-object v8
.end method

.method public getUploadedListByAlbum(J)Landroid/database/Cursor;
    .locals 9
    .parameter "albumId"

    .prologue
    const/4 v4, 0x0

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "album_folder="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "file_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">0 and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "upload_status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, where:Ljava/lang/String;
    const-string v7, "_id desc"

    .line 184
    .local v7, orderBy:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "mediainfo"

    sget-object v2, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->TAB_SCHEME:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 186
    .local v8, cr:Landroid/database/Cursor;
    const-string v0, "MediaAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getListByAlbum:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-object v8
.end method

.method public insert(Lnet/yostore/aws/handler/entity/MediaInfoBean;)J
    .locals 7
    .parameter "mi"

    .prologue
    .line 61
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 63
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v3, "album_folder"

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getMediaInfoFolder()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 64
    const-string v3, "username"

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v3, "file_id"

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getI()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 66
    const-string v3, "file_modify_time"

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getDa()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 67
    const-string v3, "file_name"

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getD()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v3, "file_type"

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getTy()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 69
    const-string v3, "rotate"

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getR()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 70
    const-string v3, "note"

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getNo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v3, "transcode_status"

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getEn()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 72
    const-string v3, "upload_status"

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getUs()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 73
    const-string v3, "import_from"

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getFr()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 77
    iget-object v3, p0, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "mediainfo"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 78
    .local v1, rtn:J
    const-string v3, "MediaAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "insert="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getMediaInfoFolder()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getD()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rtn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-wide v1
.end method

.method public open()Lnet/yostore/aws/sqlite/helper/MediaAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 49
    return-object p0
.end method

.method public popMediaByAlbumId(J)Landroid/database/Cursor;
    .locals 10
    .parameter "albumId"

    .prologue
    const/4 v4, 0x0

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "album_folder="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, where:Ljava/lang/String;
    const-string v7, "album_folder asc _id desc"

    .line 204
    .local v7, orderBy:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "mediainfo"

    sget-object v2, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->TAB_SCHEME:[Ljava/lang/String;

    .line 205
    const-string v8, "0,1"

    move-object v5, v4

    move-object v6, v4

    .line 204
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 206
    .local v9, cr:Landroid/database/Cursor;
    const-string v0, "MediaAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "popMediaByAlbumId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-object v9
.end method

.method public update(Lnet/yostore/aws/handler/entity/MediaInfoBean;)J
    .locals 8
    .parameter "mi"

    .prologue
    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, where:Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 88
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v4, "album_folder"

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getMediaInfoFolder()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 89
    const-string v4, "username"

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getUserName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v4, "file_id"

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getI()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 91
    const-string v4, "file_modify_time"

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getDa()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 92
    const-string v4, "file_name"

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getD()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v4, "file_type"

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getTy()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 94
    const-string v4, "rotate"

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getR()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    const-string v4, "note"

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getNo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v4, "transcode_status"

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getEn()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 97
    const-string v4, "upload_status"

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getUs()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    const-string v4, "import_from"

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getFr()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    iget-object v4, p0, Lnet/yostore/aws/sqlite/helper/MediaAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "mediainfo"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v0, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v1, v4

    .line 103
    .local v1, rtn:J
    const-string v4, "MediaAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "update="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-wide v1
.end method
