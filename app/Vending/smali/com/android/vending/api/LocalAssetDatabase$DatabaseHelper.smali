.class Lcom/android/vending/api/LocalAssetDatabase$DatabaseHelper;
.super Lcom/android/vending/api/MultiFileDatabaseHelper;
.source "LocalAssetDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/api/LocalAssetDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DatabaseHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 1277
    const-string v0, "assets15.db"

    const/16 v1, 0xf

    invoke-static {}, Lcom/android/vending/api/LocalAssetDatabase;->access$000()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/vending/api/MultiFileDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 1278
    return-void
.end method

.method private createNewAssetTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 1311
    invoke-direct {p0, p1}, Lcom/android/vending/api/LocalAssetDatabase$DatabaseHelper;->createV15AssetTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1312
    return-void
.end method

.method private createV15AssetTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1287
    const-string v0, "CREATE TABLE assets15(_id INTEGER PRIMARY KEY AUTOINCREMENT, content_uri TEXT, state TEXT, download_pending_time INTEGER, download_start_time INTEGER, install_time INTEGER, uninstall_time INTEGER, size INTEGER, type TEXT, package_name TEXT, is_forward_locked TEXT, signature TEXT, refund_timeout INTEGER, version_code INTEGER, server_string_id TEXT UNIQUE, referrer TEXT, source TEXT, auto_update INTEGER, acct_name TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1308
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 1282
    invoke-direct {p0, p1}, Lcom/android/vending/api/LocalAssetDatabase$DatabaseHelper;->createNewAssetTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1283
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 1316
    const/16 v0, 0xf

    if-ge p2, v0, :cond_0

    .line 1319
    const-string v0, "DROP TABLE IF EXISTS assets10"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1320
    const-string v0, "DROP TABLE IF EXISTS assets15"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1321
    invoke-direct {p0, p1}, Lcom/android/vending/api/LocalAssetDatabase$DatabaseHelper;->createV15AssetTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1323
    :cond_0
    return-void
.end method
