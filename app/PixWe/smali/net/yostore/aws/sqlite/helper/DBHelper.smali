.class public Lnet/yostore/aws/sqlite/helper/DBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHelper.java"


# static fields
.field private static final ACCINFO_CREATE:Ljava/lang/String; = "create table IF NOT EXISTS accinfo (id text, pwd text, sgw text, encryptPwd text, capacity text, expireDate text, usedquota text, pixew_folder_id integer DEFAULT -999, albums_meta_folder_id integer DEFAULT -999); "

.field private static final ALBUMFILE_CREATE:Ljava/lang/String; = "create table IF NOT EXISTS albumfile (username text, album_folder integer primary key, media_info_id integer DEFAULT -999, changeseq integer DEFAULT -1, update_time integer DEFAULT 0); "

.field private static final ALBUMINFO_CREATE:Ljava/lang/String; = "create table IF NOT EXISTS albuminfo (album_folder integer DEFAULT -999 primary key, username text, share_status integer DEFAULT 0, share_time integer DEFAULT 0, pwd text, slide_interval integer DEFAULT 3, slide_effect integer DEFAULT 0, file_sort integer DEFAULT 0, album_folder_dispaly text, browse_times integer DEFAULT 0, media_file_id integer DEFAULT 0, share_code text); "

.field private static final DATABASE_NAME:Ljava/lang/String; = "pixwedb"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final DELETE_QUEUE_CREATE:Ljava/lang/String; = "create table IF NOT EXISTS delete_queue (fid integer primary key default 0, username text, isfile integer key default 1); "

.field private static final FOLDER_CHGSEQ_CREATE:Ljava/lang/String; = "create table IF NOT EXISTS folderchgseq (folder_id integer DEFAULT -999 primary key, username text, change_seq integer DEFAULT -1, change_seq_time integer DEFAULT 19900131235959000, local_update_time integer DEFAULT 19900131235959000); "

.field private static final MAC_CREATE:Ljava/lang/String; = "create table IF NOT EXISTS mac (macaddr text); "

.field private static final MEDIAINFO_CREATE:Ljava/lang/String; = "create table IF NOT EXISTS mediainfo (_id integer primary key autoincrement, album_folder integer DEFAULT -999, username text, file_id integer, file_modify_time integer DEFAULT 0, file_name text, file_type integer DEFAULT 0, rotate integer DEFAULT 0, note text, transcode_status integer DEFAULT -1, upload_status integer DEFAULT 1, import_from integer DEFAULT 1); "

.field private static final TAG:Ljava/lang/String; = "DBHelper"

.field private static final UPLOAD_BATCH_CREATE:Ljava/lang/String; = "create table IF NOT EXISTS upload_batch (batch_id integer primary key autoincrement, folder_name text not null, folder_id integer default 0, username text); "

.field private static final UPLOAD_QUEUE_CREATE:Ljava/lang/String; = "create table IF NOT EXISTS upload_queue (id integer primary key autoincrement, media_row_id integer not null, file_url text not null, file_name text, folder_id integer default 0, batch_id integer default -1, username text); "


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 35
    const-string v0, "pixwedb"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 36
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 42
    const-string v0, "create table IF NOT EXISTS accinfo (id text, pwd text, sgw text, encryptPwd text, capacity text, expireDate text, usedquota text, pixew_folder_id integer DEFAULT -999, albums_meta_folder_id integer DEFAULT -999); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 43
    const-string v0, "create table IF NOT EXISTS mac (macaddr text); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 44
    const-string v0, "create table IF NOT EXISTS albuminfo (album_folder integer DEFAULT -999 primary key, username text, share_status integer DEFAULT 0, share_time integer DEFAULT 0, pwd text, slide_interval integer DEFAULT 3, slide_effect integer DEFAULT 0, file_sort integer DEFAULT 0, album_folder_dispaly text, browse_times integer DEFAULT 0, media_file_id integer DEFAULT 0, share_code text); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 45
    const-string v0, "create table IF NOT EXISTS mediainfo (_id integer primary key autoincrement, album_folder integer DEFAULT -999, username text, file_id integer, file_modify_time integer DEFAULT 0, file_name text, file_type integer DEFAULT 0, rotate integer DEFAULT 0, note text, transcode_status integer DEFAULT -1, upload_status integer DEFAULT 1, import_from integer DEFAULT 1); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 46
    const-string v0, "create table IF NOT EXISTS albumfile (username text, album_folder integer primary key, media_info_id integer DEFAULT -999, changeseq integer DEFAULT -1, update_time integer DEFAULT 0); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 47
    const-string v0, "create table IF NOT EXISTS folderchgseq (folder_id integer DEFAULT -999 primary key, username text, change_seq integer DEFAULT -1, change_seq_time integer DEFAULT 19900131235959000, local_update_time integer DEFAULT 19900131235959000); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 48
    const-string v0, "create table IF NOT EXISTS upload_queue (id integer primary key autoincrement, media_row_id integer not null, file_url text not null, file_name text, folder_id integer default 0, batch_id integer default -1, username text); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 49
    const-string v0, "create table IF NOT EXISTS upload_batch (batch_id integer primary key autoincrement, folder_name text not null, folder_id integer default 0, username text); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 50
    const-string v0, "create table IF NOT EXISTS delete_queue (fid integer primary key default 0, username text, isfile integer key default 1); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 57
    const-string v0, "DBHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Upgrading database from version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 58
    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 59
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method
