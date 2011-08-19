.class public Lnet/yostore/aws/sqlite/helper/DBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHelper.java"


# static fields
.field private static final ACCINFO_CREATE:Ljava/lang/String; = "create table IF NOT EXISTS accinfo (id text, pwd text, sgw text, encryptPwd text, browsesort integer default 1, browsesortbydesc integer default 0, quickUploadFolder integer default -999); "

.field private static final CACHE_Queue:Ljava/lang/String; = "create table IF NOT EXISTS cache_queue (fileid integer primary key, size integer DEFAULT -1, lastmodifytime integer); "

.field private static final DATABASE_NAME:Ljava/lang/String; = "awsbackup"

.field private static final DATABASE_VERSION:I = 0x7

.field private static final Dl_Queue:Ljava/lang/String; = "create table IF NOT EXISTS download_queue (_id integer primary key autoincrement, userid text, fileid integer, savepath text, filename text, size integer DEFAULT -1, fileuploadtime integer, status int DEFAULT -1); "

.field private static final MAC_CREATE:Ljava/lang/String; = "create table IF NOT EXISTS mac (macaddr text); "

.field private static final OOBE_FLAG:Ljava/lang/String; = "create table IF NOT EXISTS oobe_flag (isfirsttouse integer DEFAULT 0);"

.field private static final OOBE_INIT:Ljava/lang/String; = "insert into oobe_flag (isfirsttouse) values (1);"

.field private static final TAG:Ljava/lang/String; = "DBHelper"

.field private static final UQ_CREATE:Ljava/lang/String; = "create table IF NOT EXISTS uploadqueue (_id integer primary key autoincrement, userid text, path text, uploadfilename text, size integer, uptype integer, uploadfolder integer, status integer default -1, attr text); "

.field private static final UQ_IDX:Ljava/lang/String; = "create index upload_queue_path_idx on uploadqueue(uploadfolder ASC);"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 55
    const-string v0, "awsbackup"

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 56
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 67
    const-string v0, "create table IF NOT EXISTS accinfo (id text, pwd text, sgw text, encryptPwd text, browsesort integer default 1, browsesortbydesc integer default 0, quickUploadFolder integer default -999); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 72
    const-string v0, "create table IF NOT EXISTS mac (macaddr text); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 73
    const-string v0, "create table IF NOT EXISTS download_queue (_id integer primary key autoincrement, userid text, fileid integer, savepath text, filename text, size integer DEFAULT -1, fileuploadtime integer, status int DEFAULT -1); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 74
    const-string v0, "create table IF NOT EXISTS uploadqueue (_id integer primary key autoincrement, userid text, path text, uploadfilename text, size integer, uptype integer, uploadfolder integer, status integer default -1, attr text); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 75
    const-string v0, "create index upload_queue_path_idx on uploadqueue(uploadfolder ASC);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 76
    const-string v0, "create table IF NOT EXISTS cache_queue (fileid integer primary key, size integer DEFAULT -1, lastmodifytime integer); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 77
    const-string v0, "create table IF NOT EXISTS oobe_flag (isfirsttouse integer DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 78
    const-string v0, "insert into oobe_flag (isfirsttouse) values (1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 86
    const-string v0, "DBHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Upgrading database from version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 87
    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 88
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 91
    const-string v0, "ALTER TABLE accinfo ADD encryptPwd text"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 93
    :cond_0
    const/4 v0, 0x3

    if-ge p2, v0, :cond_1

    .line 94
    const-string v0, "DROP TABLE IF EXISTS mac"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 100
    :cond_1
    const/4 v0, 0x5

    if-ge p2, v0, :cond_2

    .line 101
    const-string v0, "create table IF NOT EXISTS mac (macaddr text); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 102
    const-string v0, "create table IF NOT EXISTS download_queue (_id integer primary key autoincrement, userid text, fileid integer, savepath text, filename text, size integer DEFAULT -1, fileuploadtime integer, status int DEFAULT -1); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 104
    const-string v0, "DROP TABLE IF EXISTS uploadbatch"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 106
    const-string v0, "DROP TABLE IF EXISTS uploadqueueitem"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 114
    :cond_2
    const/4 v0, 0x7

    if-ge p2, v0, :cond_3

    .line 115
    const-string v0, "DROP TABLE IF EXISTS download_queue"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 116
    const-string v0, "DROP TABLE IF EXISTS uploadbatch"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 117
    const-string v0, "DROP TABLE IF EXISTS uploadqueueitem"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 118
    const-string v0, "create table IF NOT EXISTS download_queue (_id integer primary key autoincrement, userid text, fileid integer, savepath text, filename text, size integer DEFAULT -1, fileuploadtime integer, status int DEFAULT -1); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 119
    const-string v0, "create table IF NOT EXISTS cache_queue (fileid integer primary key, size integer DEFAULT -1, lastmodifytime integer); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 120
    const-string v0, "create table IF NOT EXISTS uploadqueue (_id integer primary key autoincrement, userid text, path text, uploadfilename text, size integer, uptype integer, uploadfolder integer, status integer default -1, attr text); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 121
    const-string v0, "create index upload_queue_path_idx on uploadqueue(uploadfolder ASC);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 122
    const-string v0, "ALTER TABLE accinfo ADD browsesort integer default 1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 123
    const-string v0, "ALTER TABLE accinfo ADD browsesortbydesc integer default 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 124
    const-string v0, "ALTER TABLE accinfo ADD quickUploadFolder integer default -999"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 125
    const-string v0, "create table IF NOT EXISTS oobe_flag (isfirsttouse integer DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 126
    const-string v0, "insert into oobe_flag (isfirsttouse) values (1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 129
    :cond_3
    return-void
.end method
