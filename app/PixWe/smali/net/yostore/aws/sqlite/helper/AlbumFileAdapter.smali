.class public Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;
.super Ljava/lang/Object;
.source "AlbumFileAdapter.java"


# static fields
.field public static final DATABASE_TABLE:Ljava/lang/String; = "albumfile"

.field public static final KEY_ALBUM_ID:Ljava/lang/String; = "album_folder"

.field public static final KEY_CHANGE_SEQ:Ljava/lang/String; = "changeseq"

.field public static final KEY_MEDIA_INFO_ID:Ljava/lang/String; = "media_info_id"

.field public static final KEY_UPDATE_TIME:Ljava/lang/String; = "update_time"

.field public static final KEY_USERNAME:Ljava/lang/String; = "username"

.field public static final TAB_SCHEME:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "AlbumFileAdapter"


# instance fields
.field private final context:Landroid/content/Context;

.field public db:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "username"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "album_folder"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "media_info_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "changeseq"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "update_time"

    aput-object v2, v0, v1

    sput-object v0, Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;->TAB_SCHEME:[Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;->context:Landroid/content/Context;

    .line 30
    new-instance v0, Lnet/yostore/aws/sqlite/helper/DBHelper;

    iget-object v1, p0, Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lnet/yostore/aws/sqlite/helper/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    .line 31
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DBHelper;->close()V

    .line 44
    return-void
.end method

.method public delete(J)Z
    .locals 5
    .parameter "albumid"

    .prologue
    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "album_folder="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, where:Ljava/lang/String;
    iget-object v2, p0, Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "albumfile"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    .line 110
    .local v0, rtn:Z
    :goto_0
    return v0

    .line 109
    .end local v0           #rtn:Z
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public getAlbumFile(J)Landroid/database/Cursor;
    .locals 9
    .parameter "albimid"

    .prologue
    const/4 v4, 0x0

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "album_folder="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "albumfile"

    sget-object v2, Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;->TAB_SCHEME:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 88
    .local v8, mCursor:Landroid/database/Cursor;
    const-string v0, "AlbumFileAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getAlbum="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-object v8
.end method

.method public getAlbumFileList(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "username"

    .prologue
    const/4 v4, 0x0

    .line 94
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

    .line 97
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "albumfile"

    sget-object v2, Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;->TAB_SCHEME:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 103
    .local v8, mCursor:Landroid/database/Cursor;
    return-object v8
.end method

.method public insert(Lnet/yostore/aws/sqlite/entity/AlbumFile;)J
    .locals 7
    .parameter "af"

    .prologue
    .line 49
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 50
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v3, "username"

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/AlbumFile;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v3, "album_folder"

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/AlbumFile;->getAlbumFolder()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 52
    const-string v3, "media_info_id"

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/AlbumFile;->getMediaInfoId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 53
    const-string v3, "changeseq"

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/AlbumFile;->getChangeSeq()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 54
    const-string v3, "update_time"

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/AlbumFile;->getUpdateTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 55
    iget-object v3, p0, Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "albumfile"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 56
    .local v1, rtn:J
    const-string v3, "AlbumFileAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "insert="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/AlbumFile;->getAlbumFolder()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-wide v1
.end method

.method public open()Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 37
    return-object p0
.end method

.method public update(Lnet/yostore/aws/sqlite/entity/AlbumFile;)J
    .locals 8
    .parameter "af"

    .prologue
    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "album_folder="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/AlbumFile;->getAlbumFolder()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, where:Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 65
    .local v0, initialValues:Landroid/content/ContentValues;
    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/AlbumFile;->getMediaInfoId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 66
    const-string v4, "media_info_id"

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/AlbumFile;->getMediaInfoId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 67
    :cond_0
    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/AlbumFile;->getChangeSeq()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 68
    const-string v4, "changeseq"

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/AlbumFile;->getChangeSeq()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 69
    :cond_1
    const-string v4, "update_time"

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/AlbumFile;->getUpdateTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 71
    iget-object v4, p0, Lnet/yostore/aws/sqlite/helper/AlbumFileAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "albumfile"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v0, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v1, v4

    .line 72
    .local v1, rtn:J
    const-string v4, "AlbumFileAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "update="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/AlbumFile;->getAlbumFolder()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-wide v1
.end method
