.class public Lnet/yostore/aws/sqlite/helper/DBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHelper.java"


# static fields
.field private static final ACCINFO_CREATE:Ljava/lang/String; = "create table accinfo (id text, pwd text, sgw text, encryptPwd text, capacity text, expireDate text, usedquota text, mear_folder_id integer DEFAULT -999, lib_folder_id integer DEFAULT -999, meta_folder_id integer DEFAULT -999); "

.field private static final DATABASE_NAME:Ljava/lang/String; = "meardb"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final DLQUEUE_CREATE:Ljava/lang/String; = "create table IF NOT EXISTS dlqueue (username text, plistid text, mp3id text, status integer, message integer); "

.field private static final DLQUEUE_IDX:Ljava/lang/String; = "create index dlq_idx on dlqueue(mp3id ASC);"

.field private static final LOCAL_ENTRY:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS LocalEntry (username text NOT NULL,plistid text NOT NULL,mp3id text,path NVARCHAR(1024)) "

.field private static final MAC_CREATE:Ljava/lang/String; = "create table mac (macaddr text); "

.field private static final METAMETA_CREATE:Ljava/lang/String; = "create table IF NOT EXISTS metameta (username text, changeseq integer, lastmodified integer); "

.field private static final METAMETA_IDX:Ljava/lang/String; = "create index meta_idx on metameta(changeseq ASC);"

.field private static final PLIST_CREATE:Ljava/lang/String; = "create table IF NOT EXISTS playlist (username text, plistid text primary key , display text, status integer, lastmodified integer); "

.field private static final PLIST_IDX:Ljava/lang/String; = "create index plist_idx on playlist(plistid ASC);"

.field private static final SONG_CREATE:Ljava/lang/String; = "create table IF NOT EXISTS song (username text, plistid text, mp3id text, shortcutid text, display text, type integer); "

.field private static final SONG_IDX:Ljava/lang/String; = "create index song_idx on song(mp3id ASC);"

.field private static final TAG:Ljava/lang/String; = "DBHelper"

.field private static final UITEM_CREATE:Ljava/lang/String; = "create table uploaditem (_id integer primary key autoincrement, parent text, name text, type integer, size integer, uptype integer); "

.field private static final UITEM_IDX:Ljava/lang/String; = "create index upload_path_idx on uploaditem(parent ASC);"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 47
    const-string v0, "meardb"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 48
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 59
    const-string v0, "create table accinfo (id text, pwd text, sgw text, encryptPwd text, capacity text, expireDate text, usedquota text, mear_folder_id integer DEFAULT -999, lib_folder_id integer DEFAULT -999, meta_folder_id integer DEFAULT -999); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 60
    const-string v0, "create table uploaditem (_id integer primary key autoincrement, parent text, name text, type integer, size integer, uptype integer); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 61
    const-string v0, "create index upload_path_idx on uploaditem(parent ASC);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 62
    const-string v0, "create table mac (macaddr text); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 64
    const-string v0, "create table IF NOT EXISTS playlist (username text, plistid text primary key , display text, status integer, lastmodified integer); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 65
    const-string v0, "create index plist_idx on playlist(plistid ASC);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 66
    const-string v0, "create table IF NOT EXISTS song (username text, plistid text, mp3id text, shortcutid text, display text, type integer); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 67
    const-string v0, "create index song_idx on song(mp3id ASC);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 68
    const-string v0, "create table IF NOT EXISTS dlqueue (username text, plistid text, mp3id text, status integer, message integer); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    const-string v0, "create index dlq_idx on dlqueue(mp3id ASC);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 70
    const-string v0, "create table IF NOT EXISTS metameta (username text, changeseq integer, lastmodified integer); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 71
    const-string v0, "create index meta_idx on metameta(changeseq ASC);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 72
    const-string v0, "CREATE TABLE IF NOT EXISTS LocalEntry (username text NOT NULL,plistid text NOT NULL,mp3id text,path NVARCHAR(1024)) "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 80
    const-string v0, "DBHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Upgrading database from version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 81
    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 82
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method
