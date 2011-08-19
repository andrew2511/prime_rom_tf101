.class public Lcom/google/android/apps/books/provider/database/BooksDatabase;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BooksDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/provider/database/BooksDatabase$Views;,
        Lcom/google/android/apps/books/provider/database/BooksDatabase$Triggers;,
        Lcom/google/android/apps/books/provider/database/BooksDatabase$Tables;
    }
.end annotation


# static fields
.field private static final FACTORY:Landroid/database/sqlite/SQLiteDatabase$CursorFactory; = null

.field private static final NAME:Ljava/lang/String; = "books.db"

.field private static final TAG:Ljava/lang/String; = "BooksDatabase"

.field static final VERSION:I = 0x6a
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/apps/books/provider/database/BooksDatabase;->FACTORY:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 84
    const-string v0, "books.db"

    sget-object v1, Lcom/google/android/apps/books/provider/database/BooksDatabase;->FACTORY:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    const/16 v2, 0x6a

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 85
    iput-object p1, p0, Lcom/google/android/apps/books/provider/database/BooksDatabase;->mContext:Landroid/content/Context;

    .line 87
    invoke-static {}, Lcom/google/android/apps/books/util/Config;->getBaseUri()Landroid/net/Uri;

    .line 88
    return-void
.end method

.method public static getCollectionColumnToClass()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 99
    invoke-static {}, Lcom/google/android/apps/books/provider/database/CollectionsTable;->getColumnToClass()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getCollectionVolumeColumnToClass()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 107
    invoke-static {}, Lcom/google/android/apps/books/provider/database/CollectionVolumesTable;->getWritableColumnToClass()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getCollectionVolumesColumnNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    invoke-static {}, Lcom/google/android/apps/books/provider/database/CollectionVolumesTable;->getColumnNames()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static getStateColumnToClass()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 95
    invoke-static {}, Lcom/google/android/apps/books/provider/database/StatesTable;->getColumnToClass()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getVolumeColumnToClass()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 91
    invoke-static {}, Lcom/google/android/apps/books/provider/database/VolumesTable;->getColumnToClass()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private recreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 292
    const-string v1, "BooksDatabase"

    const-string v2, "Re-creating database"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    new-instance v0, Lcom/google/android/apps/books/sync/SyncAccountsState;

    iget-object v1, p0, Lcom/google/android/apps/books/provider/database/BooksDatabase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/sync/SyncAccountsState;-><init>(Landroid/content/Context;)V

    .line 300
    .local v0, syncState:Lcom/google/android/apps/books/sync/SyncAccountsState;
    invoke-virtual {v0}, Lcom/google/android/apps/books/sync/SyncAccountsState;->clear()V

    .line 302
    const-string v1, "DROP TABLE IF EXISTS volumes"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 303
    const-string v1, "DROP TABLE IF EXISTS volume_states"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 304
    const-string v1, "DROP TABLE IF EXISTS collections"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 305
    const-string v1, "DROP TABLE IF EXISTS collection_volumes"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 307
    const-string v1, "DROP TABLE IF EXISTS sections"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 308
    const-string v1, "DROP TABLE IF EXISTS resources"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 309
    const-string v1, "DROP TABLE IF EXISTS pages"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 310
    const-string v1, "DROP TABLE IF EXISTS annotations"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 311
    const-string v1, "DROP TABLE IF EXISTS session_keys"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 312
    const-string v1, "DROP TABLE IF EXISTS chapters"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 313
    const-string v1, "DROP TABLE IF EXISTS config"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 316
    return-void
.end method

.method private recreateIfFrontendChanged(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter "db"

    .prologue
    .line 323
    invoke-static {}, Lcom/google/android/apps/books/util/Config;->getBaseUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, frontend:Ljava/lang/String;
    new-instance v2, Lcom/google/android/apps/books/preference/LocalPreferences;

    iget-object v3, p0, Lcom/google/android/apps/books/provider/database/BooksDatabase;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/google/android/apps/books/preference/LocalPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/google/android/apps/books/preference/LocalPreferences;->getFrontend()Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, dbFrontend:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 326
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 327
    new-instance v2, Landroid/database/sqlite/SQLiteException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to change frontend from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", but only have a read-only database connection."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 330
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->recreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 332
    :cond_1
    return-void
.end method

.method private recreateViewsAndTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 176
    const-string v0, "DROP TRIGGER IF EXISTS clear_cover"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 178
    const-string v0, "DROP VIEW IF EXISTS view_volumes"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 179
    const-string v0, "DROP VIEW IF EXISTS view_collection_volumes"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 180
    const-string v0, "DROP VIEW IF EXISTS view_chapters"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 181
    const-string v0, "DROP VIEW IF EXISTS view_sections"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 182
    const-string v0, "DROP VIEW IF EXISTS view_resources"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 183
    const-string v0, "DROP VIEW IF EXISTS view_pages"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 185
    invoke-static {}, Lcom/google/android/apps/books/provider/database/VolumesTable;->getCoverUrlChangeTriggerSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lcom/google/android/apps/books/provider/database/VolumesTable;->getViewSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/google/android/apps/books/provider/database/CollectionVolumesTable;->getViewSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 189
    invoke-static {}, Lcom/google/android/apps/books/provider/database/ChaptersTable;->getViewSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 190
    invoke-static {}, Lcom/google/android/apps/books/provider/database/SectionsTable;->getViewSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 191
    invoke-static {}, Lcom/google/android/apps/books/provider/database/ResourcesTable;->getViewSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 192
    invoke-static {}, Lcom/google/android/apps/books/provider/database/PagesTable;->getViewSql()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 193
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter "db"

    .prologue
    .line 121
    invoke-static {}, Lcom/google/android/apps/books/util/Config;->getBaseUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, frontend:Ljava/lang/String;
    new-instance v3, Lcom/google/android/apps/books/preference/LocalPreferences;

    iget-object v4, p0, Lcom/google/android/apps/books/provider/database/BooksDatabase;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/google/android/apps/books/preference/LocalPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Lcom/google/android/apps/books/preference/LocalPreferences;->setFrontend(Ljava/lang/String;)V

    .line 129
    const-string v2, "REFERENCES volumes(volume_id)"

    .line 131
    .local v2, refVolumeId:Ljava/lang/String;
    const-string v1, "REFERENCES pages(_id)"

    .line 134
    .local v1, refPageId:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/apps/books/provider/database/VolumesTable;->getCreationSql()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 135
    invoke-static {}, Lcom/google/android/apps/books/provider/database/StatesTable;->getCreationSql()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lcom/google/android/apps/books/provider/database/CollectionsTable;->getCreationSql()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lcom/google/android/apps/books/provider/database/CollectionVolumesTable;->getCreationSql()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/google/android/apps/books/provider/database/ChaptersTable;->getCreationSql()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 139
    invoke-static {}, Lcom/google/android/apps/books/provider/database/SectionsTable;->getCreationSql()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 140
    invoke-static {}, Lcom/google/android/apps/books/provider/database/ResourcesTable;->getCreationSql()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lcom/google/android/apps/books/provider/database/PagesTable;->getCreationSql()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/google/android/apps/books/provider/database/PagesTable;->getIndexSql()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/google/android/apps/books/provider/database/ConfigurationTable;->getCreationSql()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 145
    const-string v3, "CREATE TABLE annotations (_id INTEGER PRIMARY KEY AUTOINCREMENT, account_name TEXT NOT NULL, volume_id TEXT NOT NULL REFERENCES volumes(volume_id), annotation_type INTEGER NOT NULL, page_id TEXT NOT NULL REFERENCES pages(_id), start_position TEXT NOT NULL, end_position TEXT NOT NULL, note_body TEXT, created_timestamp INTEGER NOT NULL, edited_timestamp INTEGER NOT NULL)"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 160
    const-string v3, "CREATE TABLE session_keys (_id INTEGER PRIMARY KEY AUTOINCREMENT, account_name TEXT NOT NULL, volume_id TEXT NOT NULL REFERENCES volumes(volume_id), session_key_version TEXT NOT NULL, root_key_version INTEGER NOT NULL, session_key_blob BLOB NOT NULL)"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 168
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->recreateViewsAndTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 169
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 283
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 284
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->recreateIfFrontendChanged(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 285
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 7
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/16 v5, 0x4e

    const-string v6, "BooksDatabase"

    .line 204
    const-string v3, "BooksDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Upgrading DB from version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    move v0, p2

    .line 207
    .local v0, currentVersion:I
    const/4 v2, 0x0

    .line 210
    .local v2, upgradeViewsAndTriggers:Z
    if-ge p2, v5, :cond_1

    .line 211
    :try_start_0
    const-string v3, "BooksDatabase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " too old to upgrade, recreating DB."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->recreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    if-ne v0, v5, :cond_2

    .line 218
    const/16 v0, 0x50

    .line 220
    :cond_2
    const/16 v3, 0x4f

    if-ne v0, v3, :cond_3

    .line 222
    const-string v3, "DROP VIEW IF EXISTS view_chapters"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 223
    const/4 v2, 0x1

    .line 224
    const/16 v0, 0x50

    .line 226
    :cond_3
    const/16 v3, 0x50

    if-ne v0, v3, :cond_4

    .line 227
    const-string v3, "ALTER TABLE volume_states ADD COLUMN last_mode INTEGER NOT NULL DEFAULT -1"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 229
    const/16 v0, 0x51

    .line 231
    :cond_4
    const/16 v3, 0x51

    if-ne v0, v3, :cond_5

    .line 236
    const-string v3, "UPDATE resources SET session_key_id = NULL"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 237
    const/16 v0, 0x52

    .line 239
    :cond_5
    const/16 v3, 0x52

    if-ne v0, v3, :cond_6

    .line 244
    const-string v3, "UPDATE volumes SET cover_content_status = 0"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 245
    const/16 v0, 0x53

    .line 247
    :cond_6
    const/16 v3, 0x53

    if-ne v0, v3, :cond_7

    .line 249
    const/4 v2, 0x1

    .line 250
    const/16 v0, 0x54

    .line 252
    :cond_7
    const/16 v3, 0x54

    if-ne v0, v3, :cond_8

    .line 254
    const/16 v0, 0x68

    .line 256
    :cond_8
    const/16 v3, 0x68

    if-ne v0, v3, :cond_9

    .line 258
    invoke-static {}, Lcom/google/android/apps/books/provider/database/PagesTable;->getIndexSql()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 259
    const/16 v0, 0x69

    .line 261
    :cond_9
    const/16 v3, 0x69

    if-ne v0, v3, :cond_a

    .line 262
    const-string v3, "ALTER TABLE volumes ADD COLUMN content_version TEXT"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 263
    const/16 v0, 0x6a

    .line 267
    :cond_a
    if-eqz v2, :cond_b

    .line 268
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->recreateViewsAndTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :cond_b
    :goto_1
    if-eq v0, p3, :cond_0

    .line 276
    const-string v3, "BooksDatabase"

    const-string v3, "Database upgrade failed, dropping existing data"

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->recreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 270
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 271
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    const-string v3, "BooksDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUpgrade: SQLiteException, recreating db. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v0, -0x1

    goto :goto_1
.end method
