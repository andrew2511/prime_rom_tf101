.class public Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;
.super Ljava/lang/Object;
.source "AlbumListAdapter.java"


# static fields
.field public static final DATABASE_TABLE:Ljava/lang/String; = "albuminfo"

.field public static final KEY_ALBUM_DISPLAY:Ljava/lang/String; = "album_folder_dispaly"

.field public static final KEY_ALBUM_ID:Ljava/lang/String; = "album_folder"

.field public static final KEY_BROWSE_TIMES:Ljava/lang/String; = "browse_times"

.field public static final KEY_FILE_SORT:Ljava/lang/String; = "file_sort"

.field public static final KEY_MEDIA_FILE_ID:Ljava/lang/String; = "media_file_id"

.field public static final KEY_PWD:Ljava/lang/String; = "pwd"

.field public static final KEY_SHARE_CODE:Ljava/lang/String; = "share_code"

.field public static final KEY_SHARE_STAT:Ljava/lang/String; = "share_status"

.field public static final KEY_SHARE_TIME:Ljava/lang/String; = "share_time"

.field public static final KEY_SLIDE_EFF:Ljava/lang/String; = "slide_effect"

.field public static final KEY_SLIDE_INT:Ljava/lang/String; = "slide_interval"

.field public static final KEY_USERNAME:Ljava/lang/String; = "username"

.field public static final TAB_SCHEME:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "AlbumListAdapter"


# instance fields
.field private final context:Landroid/content/Context;

.field public db:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "album_folder"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "username"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "share_status"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "share_time"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "pwd"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "slide_interval"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "slide_effect"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "file_sort"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "album_folder_dispaly"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "browse_times"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "media_file_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "share_code"

    aput-object v2, v0, v1

    sput-object v0, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->TAB_SCHEME:[Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->context:Landroid/content/Context;

    .line 39
    new-instance v0, Lnet/yostore/aws/sqlite/helper/DBHelper;

    iget-object v1, p0, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lnet/yostore/aws/sqlite/helper/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    .line 40
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DBHelper;->close()V

    .line 53
    return-void
.end method

.method public delete(J)I
    .locals 5
    .parameter "albumid"

    .prologue
    .line 175
    const/4 v0, -0x1

    .line 176
    .local v0, rtn:I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "album_folder="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, where:Ljava/lang/String;
    iget-object v2, p0, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "albuminfo"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 178
    return v0
.end method

.method public getAlbum(J)Landroid/database/Cursor;
    .locals 9
    .parameter "albimid"

    .prologue
    const/4 v4, 0x0

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "album_folder="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "albuminfo"

    sget-object v2, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->TAB_SCHEME:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 155
    .local v8, mCursor:Landroid/database/Cursor;
    const-string v0, "AlbumListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getAlbum="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-object v8
.end method

.method public getAlbumList(Ljava/lang/String;)Landroid/database/Cursor;
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

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, where:Ljava/lang/String;
    const-string v7, "media_file_id<>0 , album_folder desc"

    .line 164
    .local v7, orderBy:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "albuminfo"

    sget-object v2, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->TAB_SCHEME:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 170
    .local v8, mCursor:Landroid/database/Cursor;
    return-object v8
.end method

.method public insert(Lnet/yostore/aws/handler/entity/AlbumInfoBean;)J
    .locals 7
    .parameter "aib"

    .prologue
    .line 58
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 59
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v3, "album_folder"

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getAlbumInfoFolder()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 60
    const-string v3, "username"

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v3, "share_status"

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getSs()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 62
    const-string v3, "share_time"

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getSt()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 63
    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getPw()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getPw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 64
    const-string v3, "pwd"

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getPw()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :goto_0
    const-string v3, "slide_interval"

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getIn()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 68
    const-string v3, "slide_effect"

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getSty()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 69
    const-string v3, "file_sort"

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getOr()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 70
    const-string v3, "album_folder_dispaly"

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getDisplay()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v3, "browse_times"

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getBt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 72
    const-string v3, "media_file_id"

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getMfi()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 73
    const-string v3, "share_code"

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getSu()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v3, p0, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "albuminfo"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 76
    .local v1, rtn:J
    const-string v3, "AlbumListAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "insertAlbum="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getAlbumInfoFolder()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getDisplay()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-wide v1

    .line 66
    .end local v1           #rtn:J
    :cond_0
    const-string v3, "pwd"

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public open()Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 46
    return-object p0
.end method

.method public update(Lnet/yostore/aws/handler/entity/AlbumInfoBean;)J
    .locals 8
    .parameter "aib"

    .prologue
    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "album_folder="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getAlbumInfoFolder()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, where:Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 85
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v4, "album_folder_dispaly"

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getDisplay()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v4, "share_status"

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getSs()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 87
    const-string v4, "share_time"

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getSt()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 88
    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getPw()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getPw()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 89
    const-string v4, "pwd"

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getPw()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :goto_0
    const-string v4, "slide_interval"

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getIn()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 93
    const-string v4, "slide_effect"

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getSty()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    const-string v4, "album_folder_dispaly"

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getDisplay()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getBt()I

    move-result v4

    if-lez v4, :cond_0

    .line 97
    const-string v4, "browse_times"

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getBt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    :cond_0
    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getMfi()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 99
    const-string v4, "media_file_id"

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getMfi()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 100
    :cond_1
    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getSu()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getSu()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 101
    const-string v4, "share_code"

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getSu()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_2
    iget-object v4, p0, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "albuminfo"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v0, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v1, v4

    .line 105
    .local v1, rtn:J
    const-string v4, "AlbumListAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "update="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getAlbumInfoFolder()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-wide v1

    .line 91
    .end local v1           #rtn:J
    :cond_3
    const-string v4, "pwd"

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public updateBrowseTime(Lnet/yostore/aws/handler/entity/AlbumInfoBean;)J
    .locals 8
    .parameter "aib"

    .prologue
    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "album_folder="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getAlbumInfoFolder()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, where:Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 126
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v4, "share_code"

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getSu()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v4, p0, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "albuminfo"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v0, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v1, v4

    .line 129
    .local v1, rtn:J
    const-string v4, "AlbumListAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "update="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getAlbumInfoFolder()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-wide v1
.end method

.method public updateMediaFileId(Lnet/yostore/aws/handler/entity/AlbumInfoBean;)J
    .locals 8
    .parameter "aib"

    .prologue
    .line 135
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "album_folder="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getAlbumInfoFolder()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, where:Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 137
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v4, "media_file_id"

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getMfi()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 139
    iget-object v4, p0, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "albuminfo"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v0, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v1, v4

    .line 140
    .local v1, rtn:J
    const-string v4, "AlbumListAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "update="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getAlbumInfoFolder()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-wide v1
.end method

.method public updateShareCode(Lnet/yostore/aws/handler/entity/AlbumInfoBean;)J
    .locals 8
    .parameter "aib"

    .prologue
    .line 112
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "album_folder="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getAlbumInfoFolder()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, where:Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 114
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v4, "share_code"

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getSu()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v4, p0, Lnet/yostore/aws/sqlite/helper/AlbumListAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "albuminfo"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v0, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v1, v4

    .line 117
    .local v1, rtn:J
    const-string v4, "AlbumListAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "update="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->getAlbumInfoFolder()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-wide v1
.end method
