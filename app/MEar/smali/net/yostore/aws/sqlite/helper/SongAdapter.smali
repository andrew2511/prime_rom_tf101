.class public Lnet/yostore/aws/sqlite/helper/SongAdapter;
.super Ljava/lang/Object;
.source "SongAdapter.java"


# static fields
.field private static final DATABASE_TABLE:Ljava/lang/String; = "song"

.field public static final KEY_DISP:Ljava/lang/String; = "display"

.field public static final KEY_MP3ID:Ljava/lang/String; = "mp3id"

.field public static final KEY_PLISTID:Ljava/lang/String; = "plistid"

.field public static final KEY_SRT:Ljava/lang/String; = "shortcutid"

.field public static final KEY_TYPE:Ljava/lang/String; = "type"

.field public static final KEY_USERNAME:Ljava/lang/String; = "username"

.field private static final TAG:Ljava/lang/String; = "SongAdapter"


# instance fields
.field private final context:Landroid/content/Context;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lnet/yostore/aws/sqlite/helper/SongAdapter;->context:Landroid/content/Context;

    .line 35
    new-instance v0, Lnet/yostore/aws/sqlite/helper/DBHelper;

    iget-object v1, p0, Lnet/yostore/aws/sqlite/helper/SongAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lnet/yostore/aws/sqlite/helper/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/yostore/aws/sqlite/helper/SongAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    .line 36
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/SongAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DBHelper;->close()V

    .line 49
    return-void
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 5
    .parameter "mp3id"

    .prologue
    .line 103
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

    .line 104
    .local v1, where:Ljava/lang/String;
    iget-object v2, p0, Lnet/yostore/aws/sqlite/helper/SongAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "song"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    .line 105
    .local v0, rtn:Z
    :goto_0
    const-string v2, "SongAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "delete:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return v0

    .line 104
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
    .line 111
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

    .line 113
    .local v1, where:Ljava/lang/String;
    iget-object v2, p0, Lnet/yostore/aws/sqlite/helper/SongAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "song"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    .line 114
    .local v0, rtn:Z
    :goto_0
    const-string v2, "SongAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deleteOnePlist:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return v0

    .line 113
    .end local v0           #rtn:Z
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public getListByPlist(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "plistid"

    .prologue
    const/4 v4, 0x0

    .line 132
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

    .line 134
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/SongAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "song"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 135
    const-string v6, "username"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    .line 136
    const-string v6, "plistid"

    aput-object v6, v2, v5

    const/4 v5, 0x2

    .line 137
    const-string v6, "mp3id"

    aput-object v6, v2, v5

    const/4 v5, 0x3

    .line 138
    const-string v6, "shortcutid"

    aput-object v6, v2, v5

    const/4 v5, 0x4

    .line 139
    const-string v6, "display"

    aput-object v6, v2, v5

    const/4 v5, 0x5

    .line 140
    const-string v6, "type"

    aput-object v6, v2, v5

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    .line 134
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 145
    .local v8, cr:Landroid/database/Cursor;
    const-string v0, "SongAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getListByPlist:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-object v8
.end method

.method public getPlistCount(Ljava/lang/String;)I
    .locals 11
    .parameter "plist"

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 119
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

    .line 121
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/SongAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "song"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "CNT"

    aput-object v5, v2, v10

    const/4 v5, 0x1

    const-string v6, "count(0)"

    aput-object v6, v2, v5

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 123
    .local v8, cr:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 124
    .local v9, rtn:I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 127
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 128
    return v9
.end method

.method public insert(Lnet/yostore/aws/sqlite/entity/Song;)J
    .locals 6
    .parameter "mp3"

    .prologue
    .line 54
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 56
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v3, "username"

    iget-object v4, p1, Lnet/yostore/aws/sqlite/entity/Song;->username:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v3, "plistid"

    iget-object v4, p1, Lnet/yostore/aws/sqlite/entity/Song;->plistid:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v3, "mp3id"

    iget-object v4, p1, Lnet/yostore/aws/sqlite/entity/Song;->mp3id:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v3, "shortcutid"

    iget-object v4, p1, Lnet/yostore/aws/sqlite/entity/Song;->shortcutid:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v3, "display"

    iget-object v4, p1, Lnet/yostore/aws/sqlite/entity/Song;->display:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v3, "type"

    iget-object v4, p1, Lnet/yostore/aws/sqlite/entity/Song;->type:Lnet/yostore/aws/sqlite/entity/Song$TYPE;

    invoke-virtual {v4}, Lnet/yostore/aws/sqlite/entity/Song$TYPE;->getInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 65
    iget-object v3, p0, Lnet/yostore/aws/sqlite/helper/SongAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "song"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 66
    .local v1, rtn:J
    const-string v3, "SongAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "insert="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lnet/yostore/aws/sqlite/entity/Song;->mp3id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lnet/yostore/aws/sqlite/entity/Song;->display:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-wide v1
.end method

.method public open()Lnet/yostore/aws/sqlite/helper/SongAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lnet/yostore/aws/sqlite/helper/SongAdapter;->dbHelper:Lnet/yostore/aws/sqlite/helper/DBHelper;

    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/sqlite/helper/SongAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 42
    return-object p0
.end method

.method public update(Lnet/yostore/aws/sqlite/entity/Song;)J
    .locals 7
    .parameter "mp3"

    .prologue
    .line 74
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mp3id=\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lnet/yostore/aws/sqlite/entity/Song;->mp3id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, where:Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 76
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v4, "username"

    iget-object v5, p1, Lnet/yostore/aws/sqlite/entity/Song;->username:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v4, "plistid"

    iget-object v5, p1, Lnet/yostore/aws/sqlite/entity/Song;->plistid:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v4, "display"

    iget-object v5, p1, Lnet/yostore/aws/sqlite/entity/Song;->display:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v4, "type"

    iget-object v5, p1, Lnet/yostore/aws/sqlite/entity/Song;->type:Lnet/yostore/aws/sqlite/entity/Song$TYPE;

    invoke-virtual {v5}, Lnet/yostore/aws/sqlite/entity/Song$TYPE;->getInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 83
    iget-object v4, p0, Lnet/yostore/aws/sqlite/helper/SongAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "song"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v0, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v1, v4

    .line 84
    .local v1, rtn:J
    const-string v4, "SongAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "update="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p1, Lnet/yostore/aws/sqlite/entity/Song;->mp3id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-wide v1
.end method

.method public updateType(Ljava/lang/String;Lnet/yostore/aws/sqlite/entity/Song$TYPE;)J
    .locals 7
    .parameter "mp3id"
    .parameter "type"

    .prologue
    .line 91
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

    .line 93
    .local v3, where:Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 94
    .local v0, initialValues:Landroid/content/ContentValues;
    const-string v4, "type"

    invoke-virtual {p2}, Lnet/yostore/aws/sqlite/entity/Song$TYPE;->getInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 96
    iget-object v4, p0, Lnet/yostore/aws/sqlite/helper/SongAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "song"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v0, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v1, v4

    .line 97
    .local v1, rtn:J
    return-wide v1
.end method
