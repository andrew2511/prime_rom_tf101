.class Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper$DBOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DataStorageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DBOpenHelper"
.end annotation


# instance fields
.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbOpensCounter:I

.field private mLocker:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 47
    const-string v0, "PressReader"

    const/16 v1, 0x1d

    invoke-direct {p0, p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper$DBOpenHelper;->mLocker:Ljava/lang/Object;

    .line 43
    iput-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper$DBOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper$DBOpenHelper;->mDbOpensCounter:I

    .line 48
    return-void
.end method


# virtual methods
.method public closeDatabase()V
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper$DBOpenHelper;->mLocker:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_0
    iget v1, p0, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper$DBOpenHelper;->mDbOpensCounter:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper$DBOpenHelper;->mDbOpensCounter:I

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper$DBOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_1

    :cond_0
    monitor-exit v0

    .line 144
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper$DBOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper$DBOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 142
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper$DBOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 139
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    .prologue
    .line 121
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper$DBOpenHelper;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 122
    :try_start_0
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper$DBOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 124
    :try_start_1
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper$DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper$DBOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 125
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper$DBOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    .line 126
    const/4 v2, 0x0

    iput v2, p0, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper$DBOpenHelper;->mDbOpensCounter:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 133
    :cond_0
    :try_start_2
    iget v2, p0, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper$DBOpenHelper;->mDbOpensCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper$DBOpenHelper;->mDbOpensCounter:I

    .line 134
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper$DBOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    monitor-exit v1

    move-object v1, v2

    :goto_0
    return-object v1

    .line 128
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 129
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 130
    monitor-exit v1

    const/4 v1, 0x0

    goto :goto_0

    .line 121
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 52
    const-string v0, "CREATE TABLE services (id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT not null,client_name TEXT not null,url TEXT not null,application_url TEXT not null,user_name TEXT not null,activation_number TEXT not null,activation_type INTEGER not null);CREATE UNIQUE INDEX idx_by_name ON services(name);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 53
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/trx/MyLibraryItemDbAdapter;->CREATE_TABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/layout/trx/PageDbAdapter;->CREATE_TABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 55
    const-string v0, "CREATE TABLE subscriptions (id INTEGER PRIMARY KEY,service_name TEXT NOT NULL,cid TEXT NOT NULL,title TEXT NOT NULL,country TEXT NOT NULL,language TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 56
    const-string v0, "CREATE TABLE newspapers (service_id INTEGER NOT NULL,cid TEXT NOT NULL,title TEXT NOT NULL,parent_name TEXT,reading_allowed INTEGER NOT NULL,printing_allowed INTEGER NOT NULL,export_allowed INTEGER NOT NULL,enable_smart INTEGER NOT NULL,background_color INTEGER NOT NULL,media TEXT NOT NULL,is_right_to_left INTEGER NOT NULL,rate INTEGER NOT NULL,supplement_name TEXT,schedule TEXT NOT NULL,subscribed INTEGER NOT NULL,country_iso_code TEXT NOT NULL,title_is_free INTEGER,title_is_favorite INTEGER,language TEXT NOT NULL,parent_cid TEXT,CONSTRAINT primary_key_constraint PRIMARY KEY (service_id,cid));CREATE INDEX idx_by_language ON newspapers(language);CREATE INDEX idx_by_parent_cid ON newspapers(parent_cid);CREATE INDEX idx_by_country_iso_code_on_newspapers ON newspapers(country_iso_code);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 57
    const-string v0, "CREATE TABLE countries (service_id INTEGER NOT NULL,iso_code TEXT NOT NULL,name TEXT NOT NULL,CONSTRAINT primary_key_constraint PRIMARY KEY (service_id,iso_code));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 58
    const-string v0, "CREATE TABLE newspapers_to_countries (service_id INTEGER NOT NULL,cid TEXT NOT NULL,country_iso_code TEXT NOT NULL);CREATE INDEX idx_by_cid ON newspapers_to_countries(service_id,cid);CREATE INDEX idx_by_country_iso_code ON newspapers_to_countries(service_id,country_iso_code);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 59
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/trx/MyLibraryStatsDbAdapter;->CREATE_TABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 60
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/trx/RecentItemsDbAdapter;->CREATE_TABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 66
    packed-switch p2, :pswitch_data_0

    .line 104
    :goto_0
    const/16 v0, 0x15

    if-le p2, v0, :cond_0

    .line 118
    :goto_1
    return-void

    .line 68
    :pswitch_0
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/trx/MyLibraryStatsDbAdapter;->CREATE_TABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    add-int/lit8 p2, p2, 0x1

    .line 72
    :pswitch_1
    const-string v0, "ALTER TABLE my_library_items ADD COLUMN advice INTEGER"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 73
    add-int/lit8 p2, p2, 0x1

    .line 76
    :pswitch_2
    const-string v0, "ALTER TABLE newspapers ADD COLUMN supplement_name TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 77
    const-string v0, "ALTER TABLE newspapers ADD COLUMN title_is_free INTEGER"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 78
    add-int/lit8 p2, p2, 0x1

    .line 81
    :pswitch_3
    const-string v0, "ALTER TABLE newspapers ADD COLUMN title_is_favorite INTEGER"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 82
    add-int/lit8 p2, p2, 0x1

    .line 85
    :pswitch_4
    const-string v0, "ALTER TABLE newspapers ADD COLUMN parent_cid TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 86
    add-int/lit8 p2, p2, 0x1

    .line 90
    :pswitch_5
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/trx/RecentItemsDbAdapter;->CREATE_TABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 91
    add-int/lit8 p2, p2, 0x1

    .line 95
    :pswitch_6
    add-int/lit8 p2, p2, 0x1

    .line 98
    :pswitch_7
    const-string v0, "CREATE INDEX idx_by_parent_cid ON newspapers(parent_cid);CREATE INDEX idx_by_country_iso_code_on_newspapers ON newspapers(country_iso_code);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 100
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 108
    :cond_0
    const-class v0, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Updating database from version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 109
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string v0, "DROP TABLE IF EXISTS services"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 111
    const-string v0, "DROP TABLE IF EXISTS my_library_items"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 112
    const-string v0, "DROP TABLE IF EXISTS pages"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 113
    const-string v0, "DROP TABLE IF EXISTS subscriptions"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 114
    const-string v0, "DROP TABLE IF EXISTS newspapers_to_countries"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 115
    const-string v0, "DROP TABLE IF EXISTS countries"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 116
    const-string v0, "DROP TABLE IF EXISTS newspapers"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper$DBOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_1

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
