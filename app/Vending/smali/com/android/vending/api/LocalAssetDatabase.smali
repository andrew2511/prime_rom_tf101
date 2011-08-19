.class public Lcom/android/vending/api/LocalAssetDatabase;
.super Ljava/lang/Object;
.source "LocalAssetDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/api/LocalAssetDatabase$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final ALL_COLUMNS:[Ljava/lang/String;

.field private static final ID_COLUMN_ONLY:[Ljava/lang/String;

.field private static final LEGACY_DATABASE_NAMES:[Ljava/lang/String;

.field private static sCleanupComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/vending/model/LocalAssetInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCheckForInstallingUninstallingStmt:Landroid/database/sqlite/SQLiteStatement;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDeleteAssetStmt:Landroid/database/sqlite/SQLiteStatement;

.field private mInsertAssetStmt:Landroid/database/sqlite/SQLiteStatement;

.field private mLookupAssetAutoUpdateStmt:Landroid/database/sqlite/SQLiteStatement;

.field private mLookupAssetSourceStmt:Landroid/database/sqlite/SQLiteStatement;

.field private mLookupAssetStateStmt:Landroid/database/sqlite/SQLiteStatement;

.field private mUpdateAssetContentUriStmt:Landroid/database/sqlite/SQLiteStatement;

.field private mUpdateAssetSizeStmt:Landroid/database/sqlite/SQLiteStatement;

.field private mUpdateAutoUpdateStmt:Landroid/database/sqlite/SQLiteStatement;

.field private mUpdateRefundTimeoutStmt:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "assets.db"

    aput-object v1, v0, v3

    const-string v1, "assets14.db"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/vending/api/LocalAssetDatabase;->LEGACY_DATABASE_NAMES:[Ljava/lang/String;

    .line 107
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "server_string_id"

    aput-object v1, v0, v3

    const-string v1, "state"

    aput-object v1, v0, v4

    const-string v1, "download_pending_time"

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string v2, "download_start_time"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "install_time"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "uninstall_time"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "size"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "package_name"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "content_uri"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "is_forward_locked"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "signature"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "refund_timeout"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "version_code"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "referrer"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "source"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "auto_update"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "acct_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/vending/api/LocalAssetDatabase;->ALL_COLUMNS:[Ljava/lang/String;

    .line 134
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "server_string_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/vending/api/LocalAssetDatabase;->ID_COLUMN_ONLY:[Ljava/lang/String;

    .line 1026
    new-instance v0, Lcom/android/vending/api/LocalAssetDatabase$1;

    invoke-direct {v0}, Lcom/android/vending/api/LocalAssetDatabase$1;-><init>()V

    sput-object v0, Lcom/android/vending/api/LocalAssetDatabase;->sCleanupComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 137
    new-instance v0, Lcom/android/vending/api/LocalAssetDatabase$DatabaseHelper;

    invoke-direct {v0, p1}, Lcom/android/vending/api/LocalAssetDatabase$DatabaseHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/vending/api/LocalAssetDatabase$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/vending/api/LocalAssetDatabase;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 138
    return-void
.end method

.method protected constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/android/vending/api/LocalAssetDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 143
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/vending/api/LocalAssetDatabase;->LEGACY_DATABASE_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized cleanupDb()V
    .locals 14

    .prologue
    .line 1067
    monitor-enter p0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    :try_start_0
    invoke-virtual {p0, v11, v12, v13}, Lcom/android/vending/api/LocalAssetDatabase;->getLocalAssets(Lcom/android/vending/model/Asset$AssetType;Lcom/android/vending/model/LocalAssetInfo$AssetState;Z)Ljava/util/List;

    move-result-object v0

    .line 1068
    .local v0, allAssets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/LocalAssetInfo;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1072
    .local v1, allByPackage:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/android/vending/model/LocalAssetInfo;>;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/vending/model/LocalAssetInfo;

    .line 1073
    .local v7, info:Lcom/android/vending/model/LocalAssetInfo;
    invoke-virtual {v7}, Lcom/android/vending/model/LocalAssetInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 1075
    .local v10, packageName:Ljava/lang/String;
    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1076
    .local v3, assets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/LocalAssetInfo;>;"
    if-nez v3, :cond_0

    .line 1077
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #assets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/LocalAssetInfo;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1078
    .restart local v3       #assets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/LocalAssetInfo;>;"
    invoke-virtual {v1, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    :cond_0
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1067
    .end local v0           #allAssets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/LocalAssetInfo;>;"
    .end local v1           #allByPackage:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/android/vending/model/LocalAssetInfo;>;>;"
    .end local v3           #assets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/LocalAssetInfo;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #info:Lcom/android/vending/model/LocalAssetInfo;
    .end local v10           #packageName:Ljava/lang/String;
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 1084
    .restart local v0       #allAssets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/LocalAssetInfo;>;"
    .restart local v1       #allByPackage:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/android/vending/model/LocalAssetInfo;>;>;"
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1085
    .restart local v3       #assets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/LocalAssetInfo;>;"
    sget-object v11, Lcom/android/vending/api/LocalAssetDatabase;->sCleanupComparator:Ljava/util/Comparator;

    invoke-static {v3, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    .line 1092
    .end local v3           #assets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/LocalAssetInfo;>;"
    :cond_2
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1093
    .local v4, assetsToKeep:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/vending/model/LocalAssetInfo;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v5           #i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1094
    .restart local v10       #packageName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1095
    .local v9, lastTransient:Lcom/android/vending/model/LocalAssetInfo;
    const/4 v8, 0x0

    .line 1096
    .local v8, lastPermanent:Lcom/android/vending/model/LocalAssetInfo;
    invoke-virtual {v1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vending/model/LocalAssetInfo;

    .line 1097
    .local v2, asset:Lcom/android/vending/model/LocalAssetInfo;
    invoke-virtual {v2}, Lcom/android/vending/model/LocalAssetInfo;->getState()Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/vending/model/LocalAssetInfo$AssetState;->isTransient()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1098
    move-object v9, v2

    goto :goto_3

    .line 1100
    :cond_4
    move-object v8, v2

    goto :goto_3

    .line 1103
    .end local v2           #asset:Lcom/android/vending/model/LocalAssetInfo;
    :cond_5
    if-eqz v9, :cond_6

    .line 1104
    invoke-interface {v4, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1106
    :cond_6
    if-eqz v8, :cond_3

    .line 1107
    invoke-interface {v4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1112
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v8           #lastPermanent:Lcom/android/vending/model/LocalAssetInfo;
    .end local v9           #lastTransient:Lcom/android/vending/model/LocalAssetInfo;
    .end local v10           #packageName:Ljava/lang/String;
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_8
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vending/model/LocalAssetInfo;

    .line 1113
    .restart local v2       #asset:Lcom/android/vending/model/LocalAssetInfo;
    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 1114
    invoke-virtual {v2}, Lcom/android/vending/model/LocalAssetInfo;->getServerId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/vending/api/LocalAssetDatabase;->deleteAsset(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 1117
    .end local v2           #asset:Lcom/android/vending/model/LocalAssetInfo;
    :cond_9
    monitor-exit p0

    return-void
.end method

.method private compileInsertAssetStatement()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/vending/api/LocalAssetDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT OR REPLACE INTO assets15(server_string_id, state, download_pending_time, download_start_time, install_time, uninstall_time, size, type, package_name, content_uri, is_forward_locked, refund_timeout, version_code, referrer, source, auto_update, acct_name) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/api/LocalAssetDatabase;->mInsertAssetStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 266
    return-void
.end method

.method private declared-synchronized getAssetAutoUpdateState(Ljava/lang/String;)Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;
    .locals 4
    .parameter "packageName"

    .prologue
    .line 441
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/vending/api/LocalAssetDatabase;->mLookupAssetAutoUpdateStmt:Landroid/database/sqlite/SQLiteStatement;

    if-nez v2, :cond_0

    .line 442
    iget-object v2, p0, Lcom/android/vending/api/LocalAssetDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT auto_update FROM assets15 WHERE package_name == ? ORDER BY version_code DESC LIMIT 1"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/vending/api/LocalAssetDatabase;->mLookupAssetAutoUpdateStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 449
    :cond_0
    iget-object v2, p0, Lcom/android/vending/api/LocalAssetDatabase;->mLookupAssetAutoUpdateStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    :try_start_1
    iget-object v2, p0, Lcom/android/vending/api/LocalAssetDatabase;->mLookupAssetAutoUpdateStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v2

    long-to-int v1, v2

    .line 453
    .local v1, value:I
    invoke-static {}, Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;->values()[Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;

    move-result-object v2

    aget-object v2, v2, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_1 .. :try_end_1} :catch_0

    .line 455
    .end local v1           #value:I
    :goto_0
    monitor-exit p0

    return-object v2

    .line 454
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 455
    .local v0, e:Landroid/database/sqlite/SQLiteDoneException;
    const/4 v2, 0x0

    goto :goto_0

    .line 441
    .end local v0           #e:Landroid/database/sqlite/SQLiteDoneException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private getLocalInfo(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/vending/model/LocalAssetInfo;
    .locals 29
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/api/LocalAssetDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, v0

    const-string v3, "assets15"

    sget-object v4, Lcom/android/vending/api/LocalAssetDatabase;->ALL_COLUMNS:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v28

    .line 785
    .local v28, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 786
    const/4 v2, 0x0

    .line 806
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v2

    .line 788
    :cond_0
    const/4 v2, 0x1

    :try_start_1
    move-object/from16 v0, v28

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 789
    .local v27, assetStateStr:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/android/vending/model/LocalAssetInfo$AssetState;->valueOf(Ljava/lang/String;)Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-result-object v4

    .line 791
    .local v4, state:Lcom/android/vending/model/LocalAssetInfo$AssetState;
    invoke-static {}, Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;->values()[Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;

    move-result-object v2

    const/16 v3, 0x10

    move-object/from16 v0, v28

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aget-object v25, v2, v3

    .line 793
    .local v25, autoUpdateState:Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;
    new-instance v2, Lcom/android/vending/model/LocalAssetInfo;

    const/4 v3, 0x0

    move-object/from16 v0, v28

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    move-object/from16 v0, v28

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v7, 0x3

    move-object/from16 v0, v28

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v9, 0x4

    move-object/from16 v0, v28

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const/4 v11, 0x5

    move-object/from16 v0, v28

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const/4 v13, 0x6

    move-object/from16 v0, v28

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const/4 v15, 0x7

    move-object/from16 v0, v28

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    const/16 v17, 0x8

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x9

    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/vending/api/LocalAssetDatabase;->getUriFromString(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    const/16 v19, 0xa

    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v19

    const/16 v20, 0xb

    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0xc

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v21, 0x0

    :goto_1
    const/16 v22, 0xd

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    const/16 v23, 0xe

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0xf

    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    const/16 v26, 0x11

    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v2 .. v26}, Lcom/android/vending/model/LocalAssetInfo;-><init>(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;JJJJJJLjava/lang/String;Landroid/net/Uri;ZLjava/lang/String;Ljava/lang/Long;ILjava/lang/String;Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 806
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 793
    :cond_1
    const/16 v21, 0xc

    :try_start_2
    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v21

    goto :goto_1

    .line 806
    .end local v4           #state:Lcom/android/vending/model/LocalAssetInfo$AssetState;
    .end local v25           #autoUpdateState:Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;
    .end local v27           #assetStateStr:Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private declared-synchronized getSourceOfAsset(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "serverAssetId"

    .prologue
    .line 487
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/vending/api/LocalAssetDatabase;->mLookupAssetSourceStmt:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_0

    .line 488
    iget-object v1, p0, Lcom/android/vending/api/LocalAssetDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT source FROM assets15 WHERE server_string_id == ?"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/api/LocalAssetDatabase;->mLookupAssetSourceStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 492
    :cond_0
    iget-object v1, p0, Lcom/android/vending/api/LocalAssetDatabase;->mLookupAssetSourceStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    :try_start_1
    iget-object v1, p0, Lcom/android/vending/api/LocalAssetDatabase;->mLookupAssetSourceStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 497
    :goto_0
    monitor-exit p0

    return-object v1

    .line 496
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 497
    .local v0, e:Landroid/database/sqlite/SQLiteDoneException;
    const/4 v1, 0x0

    goto :goto_0

    .line 487
    .end local v0           #e:Landroid/database/sqlite/SQLiteDoneException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getUriAsString(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 834
    const-string v0, ""

    .line 835
    .local v0, uriString:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 836
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 839
    if-nez v0, :cond_0

    .line 840
    const-string v0, ""

    .line 843
    :cond_0
    return-object v0
.end method

.method private getUriFromString(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "uriString"

    .prologue
    .line 848
    if-nez p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static insertIntoLocalDb(Lcom/android/vending/model/AssetIdentifier;)V
    .locals 27
    .parameter "assetIdentifier"

    .prologue
    .line 1190
    new-instance v2, Lcom/android/vending/model/LocalAssetInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/model/AssetIdentifier;->getAssetId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    sget-object v15, Lcom/android/vending/model/Asset$AssetType;->APPLICATION:Lcom/android/vending/model/Asset$AssetType;

    invoke-virtual {v15}, Lcom/android/vending/model/Asset$AssetType;->getValue()I

    move-result v15

    int-to-long v15, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/model/AssetIdentifier;->getPackageName()Ljava/lang/String;

    move-result-object v17

    sget-object v18, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const/16 v19, 0x0

    const-string v20, ""

    const-wide/16 v21, 0x0

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/model/AssetIdentifier;->getVersionCode()I

    move-result v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/model/AssetIdentifier;->getAccount()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v2 .. v26}, Lcom/android/vending/model/LocalAssetInfo;-><init>(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;JJJJJJLjava/lang/String;Landroid/net/Uri;ZLjava/lang/String;Ljava/lang/Long;ILjava/lang/String;Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;Ljava/lang/String;)V

    .line 1210
    .local v2, localInfo:Lcom/android/vending/model/LocalAssetInfo;
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getLocalAssetDatabase()Lcom/android/vending/api/LocalAssetDatabase;

    move-result-object p0

    .line 1211
    .local p0, db:Lcom/android/vending/api/LocalAssetDatabase;
    move-object/from16 v0, p0

    move-object v1, v2

    invoke-virtual {v0, v1}, Lcom/android/vending/api/LocalAssetDatabase;->insertAsset(Lcom/android/vending/model/LocalAssetInfo;)V

    .line 1212
    return-void
.end method

.method private static isOriginalSystemApp(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 7
    .parameter "pm"
    .parameter "packageName"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 893
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 894
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    move v2, v6

    .line 895
    .local v2, isSystem:Z
    :goto_0
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_1

    move v3, v6

    .line 897
    .local v3, isUpdated:Z
    :goto_1
    if-eqz v2, :cond_2

    if-nez v3, :cond_2

    move v4, v6

    .line 899
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v2           #isSystem:Z
    .end local v3           #isUpdated:Z
    :goto_2
    return v4

    .restart local v0       #appInfo:Landroid/content/pm/ApplicationInfo;
    :cond_0
    move v2, v5

    .line 894
    goto :goto_0

    .restart local v2       #isSystem:Z
    :cond_1
    move v3, v5

    .line 895
    goto :goto_1

    .restart local v3       #isUpdated:Z
    :cond_2
    move v4, v5

    .line 897
    goto :goto_2

    .line 898
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v2           #isSystem:Z
    .end local v3           #isUpdated:Z
    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move v4, v5

    .line 899
    goto :goto_2
.end method

.method static latestDatabaseVersion()I
    .locals 1

    .prologue
    .line 147
    const/16 v0, 0xf

    return v0
.end method

.method private declared-synchronized notifyListener(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
    .locals 3
    .parameter "serverAssetId"
    .parameter "newState"

    .prologue
    .line 852
    monitor-enter p0

    :try_start_0
    const-string v0, "%s / %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 853
    invoke-static {}, Lcom/android/vending/model/LocalAssetCache;->get()Lcom/android/vending/model/AbstractLocalAssetCache;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/vending/model/AbstractLocalAssetCache;->localDbUpdate(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 854
    monitor-exit p0

    return-void

    .line 852
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static skipReconcileForPackage(Lcom/android/vending/model/LocalAsset;)Z
    .locals 7
    .parameter "localAsset"

    .prologue
    const/4 v6, 0x0

    .line 1235
    const-string v4, "backup"

    invoke-virtual {p0}, Lcom/android/vending/model/LocalAsset;->getSource()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v6

    .line 1241
    .end local p0
    :goto_0
    return v4

    .line 1239
    .restart local p0
    :cond_0
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/vending/VendingApplication;->getRestoreStartTime()J

    move-result-wide v2

    .line 1240
    .local v2, startTime:J
    sget-object v4, Lcom/android/vending/compat/VendingGservicesKeys;->VENDING_RESTORE_WINDOW_MS:Lcom/android/vending/util/GservicesValue;

    invoke-virtual {v4}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1241
    .local v0, restoreDuration:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    cmp-long v4, v4, v0

    if-gez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v6

    goto :goto_0
.end method

.method public static updateFromReconstruct(Landroid/content/Context;Ljava/util/List;)V
    .locals 8
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/AssetIdentifier;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1121
    .local p1, assetIdentifiers:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/AssetIdentifier;>;"
    const/4 v3, 0x0

    .line 1125
    .local v3, localChanges:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/AssetIdentifier;

    .line 1126
    .local v0, assetIdentifier:Lcom/android/vending/model/AssetIdentifier;
    invoke-virtual {v0}, Lcom/android/vending/model/AssetIdentifier;->findMatchingLocalAsset()Lcom/android/vending/model/LocalAsset;

    move-result-object v2

    .line 1127
    .local v2, localAsset:Lcom/android/vending/model/LocalAsset;
    invoke-virtual {v0}, Lcom/android/vending/model/AssetIdentifier;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1129
    .local v5, packageName:Ljava/lang/String;
    invoke-static {p0, v5}, Lcom/android/vending/model/Asset;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 1131
    .local v4, packageInfo:Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_1

    .line 1134
    invoke-virtual {v0}, Lcom/android/vending/model/AssetIdentifier;->getAssetId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/vending/model/LocalAsset;->getById(Ljava/lang/String;)Lcom/android/vending/model/LocalAsset;

    move-result-object v6

    if-nez v6, :cond_0

    .line 1143
    if-eqz v4, :cond_0

    iget v6, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0}, Lcom/android/vending/model/AssetIdentifier;->getVersionCode()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 1145
    add-int/lit8 v3, v3, 0x1

    .line 1146
    invoke-static {v0}, Lcom/android/vending/api/LocalAssetDatabase;->insertIntoLocalDb(Lcom/android/vending/model/AssetIdentifier;)V

    goto :goto_0

    .line 1151
    :cond_1
    invoke-static {v2}, Lcom/android/vending/api/LocalAssetDatabase;->skipReconcileForPackage(Lcom/android/vending/model/LocalAsset;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1156
    if-eqz v4, :cond_3

    .line 1158
    invoke-virtual {v2}, Lcom/android/vending/model/LocalAsset;->getState()Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-result-object v6

    sget-object v7, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-ne v6, v7, :cond_2

    invoke-virtual {v2}, Lcom/android/vending/model/LocalAsset;->getVersionCode()I

    move-result v6

    iget v7, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    if-eq v6, v7, :cond_0

    .line 1160
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 1161
    sget-object v6, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    invoke-virtual {v2, v6}, Lcom/android/vending/model/LocalAsset;->setState(Lcom/android/vending/model/LocalAssetInfo$AssetState;)V

    .line 1162
    iget v6, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v6}, Lcom/android/vending/model/LocalAsset;->setVersionCode(I)V

    goto :goto_0

    .line 1166
    :cond_3
    invoke-virtual {v2}, Lcom/android/vending/model/LocalAsset;->getState()Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-result-object v6

    sget-object v7, Lcom/android/vending/model/LocalAssetInfo$AssetState;->UNINSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-eq v6, v7, :cond_0

    .line 1167
    add-int/lit8 v3, v3, 0x1

    .line 1168
    sget-object v6, Lcom/android/vending/model/LocalAssetInfo$AssetState;->UNINSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    invoke-virtual {v2, v6}, Lcom/android/vending/model/LocalAsset;->setState(Lcom/android/vending/model/LocalAssetInfo$AssetState;)V

    goto :goto_0

    .line 1173
    .end local v0           #assetIdentifier:Lcom/android/vending/model/AssetIdentifier;
    .end local v2           #localAsset:Lcom/android/vending/model/LocalAsset;
    .end local v4           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v5           #packageName:Ljava/lang/String;
    :cond_4
    if-lez v3, :cond_5

    .line 1174
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " changes to local DB!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    .line 1175
    invoke-static {p0}, Lcom/android/vending/CheckinUpdater;->get(Landroid/content/Context;)Lcom/android/vending/CheckinUpdater;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/vending/CheckinUpdater;->update(Z)V

    .line 1177
    :cond_5
    invoke-static {v3}, Lcom/android/common/GoogleLogTags;->writeVendingReconstruct(I)V

    .line 1180
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getLocalAssetDatabase()Lcom/android/vending/api/LocalAssetDatabase;

    move-result-object v6

    invoke-direct {v6}, Lcom/android/vending/api/LocalAssetDatabase;->cleanupDb()V

    .line 1181
    return-void
.end method


# virtual methods
.method public declared-synchronized deleteAsset(Ljava/lang/String;)V
    .locals 2
    .parameter "assetId"

    .prologue
    .line 676
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/vending/api/LocalAssetDatabase;->mDeleteAssetStmt:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/android/vending/api/LocalAssetDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DELETE FROM assets15 WHERE server_string_id == ?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/api/LocalAssetDatabase;->mDeleteAssetStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/android/vending/api/LocalAssetDatabase;->mDeleteAssetStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 681
    iget-object v0, p0, Lcom/android/vending/api/LocalAssetDatabase;->mDeleteAssetStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 682
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/vending/api/LocalAssetDatabase;->notifyListener(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    monitor-exit p0

    return-void

    .line 676
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dump()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v3, 0x0

    .line 1250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/vending/api/LocalAssetDatabase;->ALL_COLUMNS:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/android/vending/util/Util;->longestString(Ljava/util/Collection;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s = %s\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1252
    .local v9, format:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1254
    .local v12, s:Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/android/vending/api/LocalAssetDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "assets15"

    sget-object v2, Lcom/android/vending/api/LocalAssetDatabase;->ALL_COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1256
    .local v8, cursor:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1257
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    sget-object v0, Lcom/android/vending/api/LocalAssetDatabase;->ALL_COLUMNS:[Ljava/lang/String;

    array-length v0, v0

    if-ge v10, v0, :cond_0

    .line 1258
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v11

    .line 1259
    .local v11, key:Ljava/lang/String;
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1260
    .local v13, value:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v11, v0, v1

    const/4 v1, 0x1

    aput-object v13, v0, v1

    invoke-static {v9, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1257
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1262
    .end local v11           #key:Ljava/lang/String;
    .end local v13           #value:Ljava/lang/String;
    :cond_0
    const-string v0, "\n"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1265
    .end local v10           #i:I
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1268
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getAssetForPackageName(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)Ljava/lang/String;
    .locals 2
    .parameter "packageName"
    .parameter "requiredState"

    .prologue
    .line 553
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/vending/api/LocalAssetDatabase;->getAssetsForPackageName(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)[Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, assets:[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 553
    .end local v0           #assets:[Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getAssetsForPackageName(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)[Ljava/lang/String;
    .locals 13
    .parameter "packageName"
    .parameter "requiredState"

    .prologue
    .line 567
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Lcom/android/vending/model/LocalAssetInfo$AssetState;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 568
    .local v12, stateString:Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/android/vending/api/LocalAssetDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "assets15"

    sget-object v2, Lcom/android/vending/api/LocalAssetDatabase;->ID_COLUMN_ONLY:[Ljava/lang/String;

    const-string v3, "package_name == ? AND state LIKE ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object v12, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v11

    .line 572
    .local v11, result:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 573
    .local v9, count:I
    new-array v8, v9, [Ljava/lang/String;

    .line 574
    .local v8, assetIds:[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-ge v10, v9, :cond_1

    .line 575
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 576
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 574
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 567
    .end local v8           #assetIds:[Ljava/lang/String;
    .end local v9           #count:I
    .end local v10           #i:I
    .end local v11           #result:Landroid/database/Cursor;
    .end local v12           #stateString:Ljava/lang/String;
    :cond_0
    :try_start_2
    const-string v0, "%"

    move-object v12, v0

    goto :goto_0

    .line 580
    .restart local v8       #assetIds:[Ljava/lang/String;
    .restart local v9       #count:I
    .restart local v10       #i:I
    .restart local v11       #result:Landroid/database/Cursor;
    .restart local v12       #stateString:Ljava/lang/String;
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v8

    .end local v8           #assetIds:[Ljava/lang/String;
    .end local v9           #count:I
    .end local v10           #i:I
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 567
    .end local v11           #result:Landroid/database/Cursor;
    .end local v12           #stateString:Ljava/lang/String;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAssetsForPackageNameAndSource(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 12
    .parameter "packageName"
    .parameter "source"

    .prologue
    .line 594
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/vending/api/LocalAssetDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "assets15"

    sget-object v2, Lcom/android/vending/api/LocalAssetDatabase;->ID_COLUMN_ONLY:[Ljava/lang/String;

    const-string v3, "package_name == ? AND source == ? "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v11

    .line 598
    .local v11, result:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 599
    .local v9, count:I
    new-array v8, v9, [Ljava/lang/String;

    .line 600
    .local v8, assetIds:[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v9, :cond_0

    .line 601
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 602
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 600
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 606
    :cond_0
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v8

    .end local v8           #assetIds:[Ljava/lang/String;
    .end local v9           #count:I
    .end local v10           #i:I
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 594
    .end local v11           #result:Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBackupStatus(Ljava/util/Set;)I
    .locals 17
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 647
    .local p1, successAssetStates:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/api/LocalAssetDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, v0

    const-string v3, "assets15"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "count(*)"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "state"

    aput-object v6, v4, v5

    const-string v5, "source == ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "backup"

    aput-object v8, v6, v7

    const-string v7, "state"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 651
    .local v14, result:Landroid/database/Cursor;
    const/16 v16, 0x0

    .line 652
    .local v16, successCount:I
    const/4 v11, 0x0

    .line 653
    .local v11, failCount:I
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 654
    .local v10, count:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-ge v12, v10, :cond_1

    .line 655
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    .line 656
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 657
    .local v13, n:I
    const/4 v2, 0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 658
    .local v15, state:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object v1, v15

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 659
    add-int v16, v16, v13

    .line 654
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 661
    :cond_0
    add-int/2addr v11, v13

    goto :goto_1

    .line 664
    .end local v13           #n:I
    .end local v15           #state:Ljava/lang/String;
    :cond_1
    if-nez v11, :cond_2

    move/from16 v2, v16

    .line 666
    :goto_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    return v2

    .line 664
    :cond_2
    add-int/lit8 v2, v16, 0x1

    neg-int v2, v2

    goto :goto_2

    .line 666
    .end local v10           #count:I
    .end local v12           #i:I
    :catchall_0
    move-exception v2

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public declared-synchronized getLocalAsset(Ljava/lang/String;)Lcom/android/vending/model/LocalAssetInfo;
    .locals 3
    .parameter "assetId"

    .prologue
    .line 817
    monitor-enter p0

    :try_start_0
    const-string v0, "server_string_id== ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/vending/api/LocalAssetDatabase;->getLocalInfo(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/vending/model/LocalAssetInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLocalAssetByPackageName(Ljava/lang/String;I)Lcom/android/vending/model/LocalAssetInfo;
    .locals 4
    .parameter "packageName"
    .parameter "versionCode"

    .prologue
    .line 827
    monitor-enter p0

    if-ltz p2, :cond_0

    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 828
    .local v0, versionStr:Ljava/lang/String;
    :goto_0
    const-string v1, "package_name == ? AND version_code LIKE ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/android/vending/api/LocalAssetDatabase;->getLocalInfo(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/vending/model/LocalAssetInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 827
    .end local v0           #versionStr:Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v1, "%"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getLocalAssets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/LocalAssetInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 779
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/vending/api/LocalAssetDatabase;->getLocalAssets(Lcom/android/vending/model/Asset$AssetType;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLocalAssets(Lcom/android/vending/model/Asset$AssetType;)Ljava/util/List;
    .locals 2
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/vending/model/Asset$AssetType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/LocalAssetInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 771
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/vending/api/LocalAssetDatabase;->getLocalAssets(Lcom/android/vending/model/Asset$AssetType;Lcom/android/vending/model/LocalAssetInfo$AssetState;Z)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLocalAssets(Lcom/android/vending/model/Asset$AssetType;Lcom/android/vending/model/LocalAssetInfo$AssetState;Z)Ljava/util/List;
    .locals 36
    .parameter "type"
    .parameter "assetState"
    .parameter "includeUninstalled"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/vending/model/Asset$AssetType;",
            "Lcom/android/vending/model/LocalAssetInfo$AssetState;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/LocalAssetInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 697
    monitor-enter p0

    const/4 v5, 0x0

    .line 698
    .local v5, selection:Ljava/lang/String;
    :try_start_0
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 700
    .local v35, selectionList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 701
    const-string v5, "type == ?"

    .line 702
    invoke-virtual/range {p1 .. p1}, Lcom/android/vending/model/Asset$AssetType;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v35

    move-object v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 705
    :cond_0
    if-eqz p2, :cond_3

    .line 706
    invoke-interface/range {v35 .. v35}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 707
    const-string v5, ""

    .line 711
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "state == ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 712
    invoke-virtual/range {p2 .. p2}, Lcom/android/vending/model/LocalAssetInfo$AssetState;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v35

    move-object v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 724
    :cond_1
    :goto_1
    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, v35

    move-object v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 725
    .local v6, selectionArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/api/LocalAssetDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, v0

    const-string v3, "assets15"

    sget-object v4, Lcom/android/vending/api/LocalAssetDatabase;->ALL_COLUMNS:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "version_code ASC"

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v33

    .line 728
    .local v33, cursor:Landroid/database/Cursor;
    :try_start_1
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v34

    .line 729
    .local v34, localAssets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/LocalAssetInfo;>;"
    :goto_2
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 730
    const/4 v2, 0x1

    move-object/from16 v0, v33

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 731
    .local v32, assetStateStr:Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Lcom/android/vending/model/LocalAssetInfo$AssetState;->valueOf(Ljava/lang/String;)Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-result-object v9

    .line 733
    .local v9, state:Lcom/android/vending/model/LocalAssetInfo$AssetState;
    invoke-static {}, Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;->values()[Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;

    move-result-object v2

    const/16 v3, 0x10

    move-object/from16 v0, v33

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aget-object v30, v2, v3

    .line 735
    .local v30, autoUpdateState:Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;
    const/16 v2, 0xa

    move-object/from16 v0, v33

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v24

    .line 737
    .local v24, isForwardLocked:Z
    const/16 v2, 0xc

    move-object/from16 v0, v33

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    move-object/from16 v26, v2

    .line 739
    .local v26, refundTimeout:Ljava/lang/Long;
    :goto_3
    new-instance v7, Lcom/android/vending/model/LocalAssetInfo;

    const/4 v2, 0x0

    move-object/from16 v0, v33

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x2

    move-object/from16 v0, v33

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/4 v2, 0x3

    move-object/from16 v0, v33

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v2, 0x4

    move-object/from16 v0, v33

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const/4 v2, 0x5

    move-object/from16 v0, v33

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const/4 v2, 0x6

    move-object/from16 v0, v33

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    const/4 v2, 0x7

    move-object/from16 v0, v33

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    const/16 v2, 0x8

    move-object/from16 v0, v33

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v2, 0x9

    move-object/from16 v0, v33

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-direct {v0, v1}, Lcom/android/vending/api/LocalAssetDatabase;->getUriFromString(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    const/16 v2, 0xb

    move-object/from16 v0, v33

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    const/16 v2, 0xd

    move-object/from16 v0, v33

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    const/16 v2, 0xe

    move-object/from16 v0, v33

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v2, 0xf

    move-object/from16 v0, v33

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v2, 0x11

    move-object/from16 v0, v33

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v7 .. v31}, Lcom/android/vending/model/LocalAssetInfo;-><init>(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;JJJJJJLjava/lang/String;Landroid/net/Uri;ZLjava/lang/String;Ljava/lang/Long;ILjava/lang/String;Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;Ljava/lang/String;)V

    move-object/from16 v0, v34

    move-object v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 760
    .end local v9           #state:Lcom/android/vending/model/LocalAssetInfo$AssetState;
    .end local v24           #isForwardLocked:Z
    .end local v26           #refundTimeout:Ljava/lang/Long;
    .end local v30           #autoUpdateState:Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;
    .end local v32           #assetStateStr:Ljava/lang/String;
    .end local v34           #localAssets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/LocalAssetInfo;>;"
    :catchall_0
    move-exception v2

    :try_start_2
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 697
    .end local v6           #selectionArgs:[Ljava/lang/String;
    .end local v33           #cursor:Landroid/database/Cursor;
    .end local v35           #selectionList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 709
    .restart local v35       #selectionList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 714
    :cond_3
    if-nez p3, :cond_1

    .line 715
    invoke-interface/range {v35 .. v35}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 716
    const-string v5, ""

    .line 720
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "state != ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 721
    sget-object v2, Lcom/android/vending/model/LocalAssetInfo$AssetState;->UNINSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    invoke-virtual {v2}, Lcom/android/vending/model/LocalAssetInfo$AssetState;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v35

    move-object v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 718
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v5

    goto :goto_4

    .line 737
    .restart local v6       #selectionArgs:[Ljava/lang/String;
    .restart local v9       #state:Lcom/android/vending/model/LocalAssetInfo$AssetState;
    .restart local v24       #isForwardLocked:Z
    .restart local v30       #autoUpdateState:Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;
    .restart local v32       #assetStateStr:Ljava/lang/String;
    .restart local v33       #cursor:Landroid/database/Cursor;
    .restart local v34       #localAssets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/LocalAssetInfo;>;"
    :cond_5
    const/16 v2, 0xc

    :try_start_4
    move-object/from16 v0, v33

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    move-object/from16 v26, v2

    goto/16 :goto_3

    .line 760
    .end local v9           #state:Lcom/android/vending/model/LocalAssetInfo$AssetState;
    .end local v24           #isForwardLocked:Z
    .end local v30           #autoUpdateState:Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;
    .end local v32           #assetStateStr:Ljava/lang/String;
    :cond_6
    :try_start_5
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return-object v34
.end method

.method public declared-synchronized getStateOfAsset(Ljava/lang/String;)Lcom/android/vending/model/LocalAssetInfo$AssetState;
    .locals 3
    .parameter "serverAssetId"

    .prologue
    .line 418
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/vending/api/LocalAssetDatabase;->mLookupAssetStateStmt:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_0

    .line 419
    iget-object v1, p0, Lcom/android/vending/api/LocalAssetDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT state FROM assets15 WHERE server_string_id == ?"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/api/LocalAssetDatabase;->mLookupAssetStateStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 423
    :cond_0
    iget-object v1, p0, Lcom/android/vending/api/LocalAssetDatabase;->mLookupAssetStateStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    :try_start_1
    iget-object v1, p0, Lcom/android/vending/api/LocalAssetDatabase;->mLookupAssetStateStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/vending/model/LocalAssetInfo$AssetState;->valueOf(Ljava/lang/String;)Lcom/android/vending/model/LocalAssetInfo$AssetState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 428
    :goto_0
    monitor-exit p0

    return-object v1

    .line 427
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 428
    .local v0, e:Landroid/database/sqlite/SQLiteDoneException;
    const/4 v1, 0x0

    goto :goto_0

    .line 418
    .end local v0           #e:Landroid/database/sqlite/SQLiteDoneException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized hasInstallingOrUninstallingAssets()Z
    .locals 5

    .prologue
    .line 860
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/vending/api/LocalAssetDatabase;->mCheckForInstallingUninstallingStmt:Landroid/database/sqlite/SQLiteStatement;

    if-nez v2, :cond_0

    .line 861
    iget-object v2, p0, Lcom/android/vending/api/LocalAssetDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT count(*) FROM assets15 WHERE state IN (\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALLING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\',\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/vending/model/LocalAssetInfo$AssetState;->UNINSTALLING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/vending/api/LocalAssetDatabase;->mCheckForInstallingUninstallingStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 865
    :cond_0
    iget-object v2, p0, Lcom/android/vending/api/LocalAssetDatabase;->mCheckForInstallingUninstallingStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 866
    .local v0, numDirty:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    monitor-exit p0

    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 860
    .end local v0           #numDirty:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized insertAsset(Lcom/android/vending/model/LocalAssetInfo;)V
    .locals 13
    .parameter "info"

    .prologue
    .line 192
    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Lcom/android/vending/api/LocalAssetDatabase;->mInsertAssetStmt:Landroid/database/sqlite/SQLiteStatement;

    if-nez v9, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/android/vending/api/LocalAssetDatabase;->compileInsertAssetStatement()V

    .line 196
    :cond_0
    invoke-virtual {p1}, Lcom/android/vending/model/LocalAssetInfo;->getServerId()Ljava/lang/String;

    move-result-object v5

    .line 197
    .local v5, serverAssetId:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/vending/api/LocalAssetDatabase;->mInsertAssetStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v10, 0x1

    invoke-virtual {v9, v10, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 198
    invoke-virtual {p1}, Lcom/android/vending/model/LocalAssetInfo;->getState()Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-result-object v7

    .line 199
    .local v7, state:Lcom/android/vending/model/LocalAssetInfo$AssetState;
    iget-object v9, p0, Lcom/android/vending/api/LocalAssetDatabase;->mInsertAssetStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v10, 0x2

    invoke-virtual {v7}, Lcom/android/vending/model/LocalAssetInfo$AssetState;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 200
    iget-object v9, p0, Lcom/android/vending/api/LocalAssetDatabase;->mInsertAssetStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v10, 0x3

    invoke-virtual {p1}, Lcom/android/vending/model/LocalAssetInfo;->getDownloadPendingTime()J

    move-result-wide v11

    invoke-virtual {v9, v10, v11, v12}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 201
    iget-object v9, p0, Lcom/android/vending/api/LocalAssetDatabase;->mInsertAssetStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v10, 0x4

    invoke-virtual {p1}, Lcom/android/vending/model/LocalAssetInfo;->getDownloadTime()J

    move-result-wide v11

    invoke-virtual {v9, v10, v11, v12}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 202
    iget-object v9, p0, Lcom/android/vending/api/LocalAssetDatabase;->mInsertAssetStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v10, 0x5

    invoke-virtual {p1}, Lcom/android/vending/model/LocalAssetInfo;->getInstallTime()J

    move-result-wide v11

    invoke-virtual {v9, v10, v11, v12}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 203
    iget-object v9, p0, Lcom/android/vending/api/LocalAssetDatabase;->mInsertAssetStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v10, 0x6

    invoke-virtual {p1}, Lcom/android/vending/model/LocalAssetInfo;->getUninstallTime()J

    move-result-wide v11

    invoke-virtual {v9, v10, v11, v12}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 204
    iget-object v9, p0, Lcom/android/vending/api/LocalAssetDatabase;->mInsertAssetStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v10, 0x7

    invoke-virtual {p1}, Lcom/android/vending/model/LocalAssetInfo;->getSize()J

    move-result-wide v11

    invoke-virtual {v9, v10, v11, v12}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 205
    iget-object v9, p0, Lcom/android/vending/api/LocalAssetDatabase;->mInsertAssetStmt:Landroid/database/sqlite/SQLiteStatement;

    const/16 v10, 0x8

    invoke-virtual {p1}, Lcom/android/vending/model/LocalAssetInfo;->getType()Lcom/android/vending/model/Asset$AssetType;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/vending/model/Asset$AssetType;->getValue()I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v9, v10, v11, v12}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 206
    invoke-virtual {p1}, Lcom/android/vending/model/LocalAssetInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, packageName:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 208
    const-string v2, ""

    .line 210
    :cond_1
    iget-object v9, p0, Lcom/android/vending/api/LocalAssetDatabase;->mInsertAssetStmt:Landroid/database/sqlite/SQLiteStatement;

    const/16 v10, 0x9

    invoke-virtual {v9, v10, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 211
    invoke-virtual {p1}, Lcom/android/vending/model/LocalAssetInfo;->getContentUri()Landroid/net/Uri;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/vending/api/LocalAssetDatabase;->getUriAsString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    .line 212
    .local v8, uriString:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/vending/api/LocalAssetDatabase;->mInsertAssetStmt:Landroid/database/sqlite/SQLiteStatement;

    const/16 v10, 0xa

    invoke-virtual {v9, v10, v8}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 213
    invoke-virtual {p1}, Lcom/android/vending/model/LocalAssetInfo;->isForwardLocked()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, forwardLockedString:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/vending/api/LocalAssetDatabase;->mInsertAssetStmt:Landroid/database/sqlite/SQLiteStatement;

    const/16 v10, 0xb

    invoke-virtual {v9, v10, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 215
    invoke-virtual {p1}, Lcom/android/vending/model/LocalAssetInfo;->getRefundTimeout()Ljava/lang/Long;

    move-result-object v4

    .line 216
    .local v4, refundTimeout:Ljava/lang/Long;
    if-nez v4, :cond_3

    .line 217
    iget-object v9, p0, Lcom/android/vending/api/LocalAssetDatabase;->mInsertAssetStmt:Landroid/database/sqlite/SQLiteStatement;

    const/16 v10, 0xc

    invoke-virtual {v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 221
    :goto_0
    iget-object v9, p0, Lcom/android/vending/api/LocalAssetDatabase;->mInsertAssetStmt:Landroid/database/sqlite/SQLiteStatement;

    const/16 v10, 0xd

    invoke-virtual {p1}, Lcom/android/vending/model/LocalAssetInfo;->getVersionCode()I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v9, v10, v11, v12}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 222
    invoke-virtual {p1}, Lcom/android/vending/model/LocalAssetInfo;->getReferrer()Ljava/lang/String;

    move-result-object v3

    .line 223
    .local v3, referrer:Ljava/lang/String;
    if-nez v3, :cond_4

    .line 224
    iget-object v9, p0, Lcom/android/vending/api/LocalAssetDatabase;->mInsertAssetStmt:Landroid/database/sqlite/SQLiteStatement;

    const/16 v10, 0xe

    invoke-virtual {v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 228
    :goto_1
    invoke-virtual {p1}, Lcom/android/vending/model/LocalAssetInfo;->getSource()Ljava/lang/String;

    move-result-object v6

    .line 229
    .local v6, source:Ljava/lang/String;
    if-nez v6, :cond_5

    .line 230
    iget-object v9, p0, Lcom/android/vending/api/LocalAssetDatabase;->mInsertAssetStmt:Landroid/database/sqlite/SQLiteStatement;

    const/16 v10, 0xf

    invoke-virtual {v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 234
    :goto_2
    invoke-virtual {p1}, Lcom/android/vending/model/LocalAssetInfo;->getAutoUpdateState()Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;

    move-result-object v0

    .line 235
    .local v0, autoUpdateState:Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;
    if-nez v0, :cond_2

    .line 236
    sget-object v0, Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;->DEFAULT:Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;

    .line 238
    :cond_2
    iget-object v9, p0, Lcom/android/vending/api/LocalAssetDatabase;->mInsertAssetStmt:Landroid/database/sqlite/SQLiteStatement;

    const/16 v10, 0x10

    invoke-virtual {v0}, Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;->ordinal()I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v9, v10, v11, v12}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 240
    iget-object v9, p0, Lcom/android/vending/api/LocalAssetDatabase;->mInsertAssetStmt:Landroid/database/sqlite/SQLiteStatement;

    const/16 v10, 0x11

    invoke-virtual {p1}, Lcom/android/vending/model/LocalAssetInfo;->getAccount()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 241
    iget-object v9, p0, Lcom/android/vending/api/LocalAssetDatabase;->mInsertAssetStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 242
    invoke-direct {p0, v5, v7}, Lcom/android/vending/api/LocalAssetDatabase;->notifyListener(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    monitor-exit p0

    return-void

    .line 219
    .end local v0           #autoUpdateState:Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;
    .end local v3           #referrer:Ljava/lang/String;
    .end local v6           #source:Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-object v9, p0, Lcom/android/vending/api/LocalAssetDatabase;->mInsertAssetStmt:Landroid/database/sqlite/SQLiteStatement;

    const/16 v10, 0xc

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v9, v10, v11, v12}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 192
    .end local v1           #forwardLockedString:Ljava/lang/String;
    .end local v2           #packageName:Ljava/lang/String;
    .end local v4           #refundTimeout:Ljava/lang/Long;
    .end local v5           #serverAssetId:Ljava/lang/String;
    .end local v7           #state:Lcom/android/vending/model/LocalAssetInfo$AssetState;
    .end local v8           #uriString:Ljava/lang/String;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 226
    .restart local v1       #forwardLockedString:Ljava/lang/String;
    .restart local v2       #packageName:Ljava/lang/String;
    .restart local v3       #referrer:Ljava/lang/String;
    .restart local v4       #refundTimeout:Ljava/lang/Long;
    .restart local v5       #serverAssetId:Ljava/lang/String;
    .restart local v7       #state:Lcom/android/vending/model/LocalAssetInfo$AssetState;
    .restart local v8       #uriString:Ljava/lang/String;
    :cond_4
    :try_start_2
    iget-object v9, p0, Lcom/android/vending/api/LocalAssetDatabase;->mInsertAssetStmt:Landroid/database/sqlite/SQLiteStatement;

    const/16 v10, 0xe

    invoke-virtual {v9, v10, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_1

    .line 232
    .restart local v6       #source:Ljava/lang/String;
    :cond_5
    iget-object v9, p0, Lcom/android/vending/api/LocalAssetDatabase;->mInsertAssetStmt:Landroid/database/sqlite/SQLiteStatement;

    const/16 v10, 0xf

    invoke-virtual {v9, v10, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized insertDownloadPendingAsset(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IZLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 27
    .parameter "serverAssetId"
    .parameter "packageName"
    .parameter "contentUri"
    .parameter "type"
    .parameter "isForwardLocked"
    .parameter "refundTimeout"
    .parameter "referrer"
    .parameter "source"
    .parameter "account"

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    new-instance v2, Lcom/android/vending/model/LocalAssetInfo;

    sget-object v4, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOAD_PENDING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    move/from16 v0, p4

    int-to-long v0, v0

    move-wide v15, v0

    const/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/vending/api/LocalAssetDatabase;->getAssetAutoUpdateState(Ljava/lang/String;)Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;

    move-result-object v25

    move-object/from16 v3, p1

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move/from16 v19, p5

    move-object/from16 v21, p6

    move-object/from16 v23, p7

    move-object/from16 v24, p8

    move-object/from16 v26, p9

    invoke-direct/range {v2 .. v26}, Lcom/android/vending/model/LocalAssetInfo;-><init>(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;JJJJJJLjava/lang/String;Landroid/net/Uri;ZLjava/lang/String;Ljava/lang/Long;ILjava/lang/String;Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;Ljava/lang/String;)V

    .line 188
    .local v2, info:Lcom/android/vending/model/LocalAssetInfo;
    move-object/from16 v0, p0

    move-object v1, v2

    invoke-virtual {v0, v1}, Lcom/android/vending/api/LocalAssetDatabase;->insertAsset(Lcom/android/vending/model/LocalAssetInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    monitor-exit p0

    return-void

    .line 169
    .end local v2           #info:Lcom/android/vending/model/LocalAssetInfo;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized removeAllByAccount(Ljava/lang/String;)V
    .locals 5
    .parameter "account"

    .prologue
    .line 1218
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/vending/model/LocalAssetCache;->get()Lcom/android/vending/model/AbstractLocalAssetCache;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/android/vending/model/AbstractLocalAssetCache;->getAllByAccount(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    .line 1219
    .local v2, localAssets:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/vending/model/LocalAsset;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vending/model/LocalAsset;

    .line 1220
    .local v1, localAsset:Lcom/android/vending/model/LocalAsset;
    invoke-virtual {v1}, Lcom/android/vending/model/LocalAsset;->getLocalInfo()Lcom/android/vending/model/LocalAssetInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/vending/model/LocalAssetInfo;->getServerId()Ljava/lang/String;

    move-result-object v3

    .line 1225
    .local v3, serverId:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/vending/api/LocalAssetDatabase;->deleteAsset(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1218
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #localAsset:Lcom/android/vending/model/LocalAsset;
    .end local v2           #localAssets:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/vending/model/LocalAsset;>;"
    .end local v3           #serverId:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1228
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #localAssets:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/vending/model/LocalAsset;>;"
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized syncWithPackageManager(Landroid/content/Context;)V
    .locals 21
    .parameter "context"

    .prologue
    .line 970
    monitor-enter p0

    const/16 v17, 0xa

    :try_start_0
    invoke-static/range {v17 .. v17}, Landroid/os/Process;->setThreadPriority(I)V

    .line 972
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 974
    .local v13, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/api/LocalAssetDatabase;->hasInstallingOrUninstallingAssets()Z

    move-result v6

    .line 975
    .local v6, hasDirtyAssets:Z
    if-nez v6, :cond_1

    .line 976
    const-string v17, "No INSTALLING or UNINSTALLING assets."

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1024
    :cond_0
    monitor-exit p0

    return-void

    .line 980
    :cond_1
    const/16 v17, 0x0

    :try_start_1
    move-object v0, v13

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v9

    .line 981
    .local v9, installedPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v17

    move-object v0, v8

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 983
    .local v8, installedPackageNames:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageInfo;

    .line 984
    .local v14, pkgInfo:Landroid/content/pm/PackageInfo;
    move-object v0, v14

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object v0, v8

    move-object/from16 v1, v17

    move-object v2, v14

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 970
    .end local v6           #hasDirtyAssets:Z
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #installedPackageNames:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .end local v9           #installedPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v13           #packageManager:Landroid/content/pm/PackageManager;
    .end local v14           #pkgInfo:Landroid/content/pm/PackageInfo;
    :catchall_0
    move-exception v17

    monitor-exit p0

    throw v17

    .line 988
    .restart local v6       #hasDirtyAssets:Z
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v8       #installedPackageNames:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .restart local v9       #installedPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v13       #packageManager:Landroid/content/pm/PackageManager;
    :cond_2
    const/16 v17, 0x0

    :try_start_2
    sget-object v18, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALLING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/vending/api/LocalAssetDatabase;->getLocalAssets(Lcom/android/vending/model/Asset$AssetType;Lcom/android/vending/model/LocalAssetInfo$AssetState;Z)Ljava/util/List;

    move-result-object v10

    .line 989
    .local v10, installingAssets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/LocalAssetInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/vending/model/LocalAssetInfo;

    .line 992
    .local v11, localInfo:Lcom/android/vending/model/LocalAssetInfo;
    invoke-virtual {v11}, Lcom/android/vending/model/LocalAssetInfo;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 993
    sget-object v5, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    .line 994
    .local v5, actualState:Lcom/android/vending/model/LocalAssetInfo$AssetState;
    invoke-virtual {v11}, Lcom/android/vending/model/LocalAssetInfo;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/PackageInfo;

    .line 995
    .local v12, packageInfo:Landroid/content/pm/PackageInfo;
    move-object v0, v12

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 1000
    .end local v12           #packageInfo:Landroid/content/pm/PackageInfo;
    .local v16, versionCode:Ljava/lang/Long;
    :goto_2
    invoke-virtual {v11}, Lcom/android/vending/model/LocalAssetInfo;->getServerId()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object v2, v5

    move-object/from16 v3, v18

    move-object/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/vending/api/LocalAssetDatabase;->updateStateOfAsset(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 1001
    const-string v17, "Corrected state of asset %s from INSTALLING to %s."

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v11}, Lcom/android/vending/model/LocalAssetInfo;->getServerId()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    aput-object v5, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 997
    .end local v5           #actualState:Lcom/android/vending/model/LocalAssetInfo$AssetState;
    .end local v16           #versionCode:Ljava/lang/Long;
    :cond_3
    sget-object v5, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALL_FAILED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    .line 998
    .restart local v5       #actualState:Lcom/android/vending/model/LocalAssetInfo$AssetState;
    const/16 v16, 0x0

    .restart local v16       #versionCode:Ljava/lang/Long;
    goto :goto_2

    .line 1006
    .end local v5           #actualState:Lcom/android/vending/model/LocalAssetInfo$AssetState;
    .end local v11           #localInfo:Lcom/android/vending/model/LocalAssetInfo;
    .end local v16           #versionCode:Ljava/lang/Long;
    :cond_4
    const/16 v17, 0x0

    sget-object v18, Lcom/android/vending/model/LocalAssetInfo$AssetState;->UNINSTALLING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/vending/api/LocalAssetDatabase;->getLocalAssets(Lcom/android/vending/model/Asset$AssetType;Lcom/android/vending/model/LocalAssetInfo$AssetState;Z)Ljava/util/List;

    move-result-object v15

    .line 1008
    .local v15, uninstallingAssets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/LocalAssetInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/vending/model/LocalAssetInfo;

    .line 1010
    .restart local v11       #localInfo:Lcom/android/vending/model/LocalAssetInfo;
    invoke-virtual {v11}, Lcom/android/vending/model/LocalAssetInfo;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1013
    sget-object v5, Lcom/android/vending/model/LocalAssetInfo$AssetState;->UNINSTALL_FAILED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    .line 1017
    .restart local v5       #actualState:Lcom/android/vending/model/LocalAssetInfo$AssetState;
    :goto_4
    invoke-virtual {v11}, Lcom/android/vending/model/LocalAssetInfo;->getServerId()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object v2, v5

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/vending/api/LocalAssetDatabase;->updateStateOfAsset(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;Ljava/lang/Long;)V

    .line 1018
    const-string v17, "Corrected state of asset %s from UNINSTALLING to %s."

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v11}, Lcom/android/vending/model/LocalAssetInfo;->getServerId()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    aput-object v5, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 1015
    .end local v5           #actualState:Lcom/android/vending/model/LocalAssetInfo$AssetState;
    :cond_5
    sget-object v5, Lcom/android/vending/model/LocalAssetInfo$AssetState;->UNINSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v5       #actualState:Lcom/android/vending/model/LocalAssetInfo$AssetState;
    goto :goto_4
.end method

.method public declared-synchronized syncWithPackageManager(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 22
    .parameter "context"
    .parameter "packageName"
    .parameter "added"

    .prologue
    .line 905
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 906
    .local v9, currentTime:Ljava/lang/Long;
    if-eqz p3, :cond_0

    sget-object v18, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-object/from16 v16, v18

    .line 908
    .local v16, updatedState:Lcom/android/vending/model/LocalAssetInfo$AssetState;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 913
    .local v14, packageManager:Landroid/content/pm/PackageManager;
    if-eqz p3, :cond_2

    move-object v0, v14

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/vending/api/LocalAssetDatabase;->isOriginalSystemApp(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 914
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/api/LocalAssetDatabase;->getAssetsForPackageName(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)[Ljava/lang/String;

    move-result-object v7

    .line 915
    .local v7, assetIds:[Ljava/lang/String;
    move-object v5, v7

    .local v5, arr$:[Ljava/lang/String;
    array-length v13, v5

    .local v13, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_1
    if-ge v11, v13, :cond_1

    aget-object v6, v5, v11

    .line 916
    .local v6, assetId:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/vending/api/LocalAssetDatabase;->deleteAsset(Ljava/lang/String;)V

    .line 915
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 906
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v6           #assetId:Ljava/lang/String;
    .end local v7           #assetIds:[Ljava/lang/String;
    .end local v11           #i$:I
    .end local v13           #len$:I
    .end local v14           #packageManager:Landroid/content/pm/PackageManager;
    .end local v16           #updatedState:Lcom/android/vending/model/LocalAssetInfo$AssetState;
    :cond_0
    sget-object v18, Lcom/android/vending/model/LocalAssetInfo$AssetState;->UNINSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v16, v18

    goto :goto_0

    .line 918
    .restart local v5       #arr$:[Ljava/lang/String;
    .restart local v7       #assetIds:[Ljava/lang/String;
    .restart local v11       #i$:I
    .restart local v13       #len$:I
    .restart local v14       #packageManager:Landroid/content/pm/PackageManager;
    .restart local v16       #updatedState:Lcom/android/vending/model/LocalAssetInfo$AssetState;
    :cond_1
    const/16 v18, 0x1

    .line 966
    :goto_2
    monitor-exit p0

    return v18

    .line 921
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v7           #assetIds:[Ljava/lang/String;
    .end local v11           #i$:I
    .end local v13           #len$:I
    :cond_2
    const/16 v17, 0x0

    .line 923
    .local v17, versionCode:Ljava/lang/Long;
    if-eqz p3, :cond_3

    .line 925
    const/16 v18, 0x0

    :try_start_1
    move-object v0, v14

    move-object/from16 v1, p2

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v17

    .line 933
    :cond_3
    :goto_3
    const/4 v8, 0x0

    .line 936
    .local v8, contentChanged:Z
    if-eqz p3, :cond_6

    .line 937
    :try_start_2
    sget-object v18, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALLING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/api/LocalAssetDatabase;->getAssetsForPackageName(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)[Ljava/lang/String;

    move-result-object v7

    .line 942
    .restart local v7       #assetIds:[Ljava/lang/String;
    move-object v0, v7

    array-length v0, v0

    move/from16 v18, v0

    if-nez v18, :cond_4

    .line 943
    sget-object v18, Lcom/android/vending/model/LocalAssetInfo$AssetState;->UNINSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/api/LocalAssetDatabase;->getAssetsForPackageName(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)[Ljava/lang/String;

    move-result-object v7

    .line 953
    :cond_4
    :goto_4
    move-object v0, v7

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_5

    .line 954
    const-string v18, "%d assets for package \"%s\": %s"

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object v0, v7

    array-length v0, v0

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    aput-object p2, v19, v20

    const/16 v20, 0x2

    aput-object v7, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 957
    :cond_5
    move-object v5, v7

    .restart local v5       #arr$:[Ljava/lang/String;
    array-length v13, v5

    .restart local v13       #len$:I
    const/4 v11, 0x0

    .restart local v11       #i$:I
    :goto_5
    if-ge v11, v13, :cond_8

    aget-object v6, v5, v11

    .line 960
    .restart local v6       #assetId:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v16

    move-object v3, v9

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/vending/api/LocalAssetDatabase;->updateStateOfAsset(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 963
    const-string v18, "backup"

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/vending/api/LocalAssetDatabase;->getSourceOfAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    const/16 v18, 0x1

    :goto_6
    or-int v8, v8, v18

    .line 957
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 927
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v6           #assetId:Ljava/lang/String;
    .end local v7           #assetIds:[Ljava/lang/String;
    .end local v8           #contentChanged:Z
    .end local v11           #i$:I
    .end local v13           #len$:I
    :catch_0
    move-exception v18

    move-object/from16 v10, v18

    .line 929
    .local v10, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "PackageManager cannot find package: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    .line 905
    .end local v9           #currentTime:Ljava/lang/Long;
    .end local v10           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v14           #packageManager:Landroid/content/pm/PackageManager;
    .end local v16           #updatedState:Lcom/android/vending/model/LocalAssetInfo$AssetState;
    .end local v17           #versionCode:Ljava/lang/Long;
    :catchall_0
    move-exception v18

    monitor-exit p0

    throw v18

    .line 946
    .restart local v8       #contentChanged:Z
    .restart local v9       #currentTime:Ljava/lang/Long;
    .restart local v14       #packageManager:Landroid/content/pm/PackageManager;
    .restart local v16       #updatedState:Lcom/android/vending/model/LocalAssetInfo$AssetState;
    .restart local v17       #versionCode:Ljava/lang/Long;
    :cond_6
    :try_start_3
    sget-object v18, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/api/LocalAssetDatabase;->getAssetsForPackageName(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)[Ljava/lang/String;

    move-result-object v12

    .line 947
    .local v12, installed:[Ljava/lang/String;
    sget-object v18, Lcom/android/vending/model/LocalAssetInfo$AssetState;->UNINSTALLING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/api/LocalAssetDatabase;->getAssetsForPackageName(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)[Ljava/lang/String;

    move-result-object v15

    .line 948
    .local v15, uninstalling:[Ljava/lang/String;
    move-object v0, v12

    array-length v0, v0

    move/from16 v18, v0

    move-object v0, v15

    array-length v0, v0

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object v7, v0

    .line 949
    .restart local v7       #assetIds:[Ljava/lang/String;
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v0, v12

    array-length v0, v0

    move/from16 v20, v0

    move-object v0, v12

    move/from16 v1, v18

    move-object v2, v7

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 950
    const/16 v18, 0x0

    move-object v0, v12

    array-length v0, v0

    move/from16 v19, v0

    move-object v0, v15

    array-length v0, v0

    move/from16 v20, v0

    move-object v0, v15

    move/from16 v1, v18

    move-object v2, v7

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    .line 963
    .end local v12           #installed:[Ljava/lang/String;
    .end local v15           #uninstalling:[Ljava/lang/String;
    .restart local v5       #arr$:[Ljava/lang/String;
    .restart local v6       #assetId:Ljava/lang/String;
    .restart local v11       #i$:I
    .restart local v13       #len$:I
    :cond_7
    const/16 v18, 0x0

    goto :goto_6

    .end local v6           #assetId:Ljava/lang/String;
    :cond_8
    move/from16 v18, v8

    .line 966
    goto/16 :goto_2
.end method

.method public declared-synchronized uninstallAsset(Ljava/lang/String;)V
    .locals 5
    .parameter "assetId"

    .prologue
    .line 870
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/vending/api/LocalAssetDatabase;->getLocalAsset(Ljava/lang/String;)Lcom/android/vending/model/LocalAssetInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 871
    .local v0, localInfo:Lcom/android/vending/model/LocalAssetInfo;
    if-nez v0, :cond_0

    .line 884
    :goto_0
    monitor-exit p0

    return-void

    .line 876
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/vending/model/LocalAssetInfo;->getState()Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-result-object v1

    .line 877
    .local v1, state:Lcom/android/vending/model/LocalAssetInfo$AssetState;
    invoke-virtual {v1}, Lcom/android/vending/model/LocalAssetInfo$AssetState;->isUninstallable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 878
    invoke-static {}, Lcom/android/vending/LocalDbSyncService;->installationOrUninstallationInitiated()V

    .line 879
    sget-object v2, Lcom/android/vending/model/LocalAssetInfo$AssetState;->UNINSTALLING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/android/vending/api/LocalAssetDatabase;->updateStateOfAsset(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;Ljava/lang/Long;Ljava/lang/Long;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 870
    .end local v0           #localInfo:Lcom/android/vending/model/LocalAssetInfo;
    .end local v1           #state:Lcom/android/vending/model/LocalAssetInfo$AssetState;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 881
    .restart local v0       #localInfo:Lcom/android/vending/model/LocalAssetInfo;
    .restart local v1       #state:Lcom/android/vending/model/LocalAssetInfo$AssetState;
    :cond_1
    :try_start_2
    const-string v2, "Asset %s submitted for removal, but is in state %s, ignoring."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized updateAutoUpdateStateOfAsset(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;)V
    .locals 4
    .parameter "serverAssetId"
    .parameter "autoUpdateState"

    .prologue
    .line 400
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/vending/api/LocalAssetDatabase;->mUpdateAutoUpdateStmt:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/vending/api/LocalAssetDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE assets15 SET auto_update = ? WHERE server_string_id == ?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/api/LocalAssetDatabase;->mUpdateAutoUpdateStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/android/vending/api/LocalAssetDatabase;->mUpdateAutoUpdateStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {p2}, Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;->ordinal()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 406
    iget-object v0, p0, Lcom/android/vending/api/LocalAssetDatabase;->mUpdateAutoUpdateStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/android/vending/api/LocalAssetDatabase;->mUpdateAutoUpdateStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 408
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/vending/api/LocalAssetDatabase;->notifyListener(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    monitor-exit p0

    return-void

    .line 400
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateContentUriOfAsset(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .parameter "serverAssetId"
    .parameter "assetUri"
    .parameter "signature"

    .prologue
    .line 379
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/vending/api/LocalAssetDatabase;->mUpdateAssetContentUriStmt:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/android/vending/api/LocalAssetDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE assets15 SET content_uri = ?, signature = ? WHERE server_string_id == ?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/api/LocalAssetDatabase;->mUpdateAssetContentUriStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/android/vending/api/LocalAssetDatabase;->mUpdateAssetContentUriStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-direct {p0, p2}, Lcom/android/vending/api/LocalAssetDatabase;->getUriAsString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/android/vending/api/LocalAssetDatabase;->mUpdateAssetContentUriStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/android/vending/api/LocalAssetDatabase;->mUpdateAssetContentUriStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/android/vending/api/LocalAssetDatabase;->mUpdateAssetContentUriStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 389
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/vending/api/LocalAssetDatabase;->notifyListener(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    monitor-exit p0

    return-void

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateRefundTimeoutOfAsset(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 4
    .parameter "packageName"
    .parameter "refundTimeout"

    .prologue
    .line 361
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/vending/api/LocalAssetDatabase;->mUpdateRefundTimeoutStmt:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/vending/api/LocalAssetDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE assets15 SET refund_timeout = ? WHERE package_name == ?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/api/LocalAssetDatabase;->mUpdateRefundTimeoutStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 367
    :cond_0
    if-nez p2, :cond_1

    .line 368
    iget-object v0, p0, Lcom/android/vending/api/LocalAssetDatabase;->mUpdateRefundTimeoutStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 372
    :goto_0
    iget-object v0, p0, Lcom/android/vending/api/LocalAssetDatabase;->mUpdateRefundTimeoutStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/android/vending/api/LocalAssetDatabase;->mUpdateRefundTimeoutStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    monitor-exit p0

    return-void

    .line 370
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/vending/api/LocalAssetDatabase;->mUpdateRefundTimeoutStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateSizeOfAsset(Ljava/lang/String;J)V
    .locals 2
    .parameter "serverAssetId"
    .parameter "assetSize"

    .prologue
    .line 342
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/vending/api/LocalAssetDatabase;->mUpdateAssetSizeStmt:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/vending/api/LocalAssetDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE assets15 SET size = ? WHERE server_string_id == ?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/api/LocalAssetDatabase;->mUpdateAssetSizeStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/android/vending/api/LocalAssetDatabase;->mUpdateAssetSizeStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 348
    iget-object v0, p0, Lcom/android/vending/api/LocalAssetDatabase;->mUpdateAssetSizeStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/android/vending/api/LocalAssetDatabase;->mUpdateAssetSizeStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 350
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/vending/api/LocalAssetDatabase;->notifyListener(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    monitor-exit p0

    return-void

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateStateOfAsset(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;Ljava/lang/Long;)V
    .locals 1
    .parameter "serverAssetId"
    .parameter "state"
    .parameter "time"

    .prologue
    .line 332
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/vending/api/LocalAssetDatabase;->updateStateOfAsset(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 333
    return-void
.end method

.method public declared-synchronized updateStateOfAsset(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 16
    .parameter "serverAssetId"
    .parameter "state"
    .parameter "time"
    .parameter "versionCode"

    .prologue
    .line 284
    monitor-enter p0

    if-nez p3, :cond_3

    .line 285
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 290
    .local v4, longTime:J
    :goto_0
    new-instance v3, Landroid/content/ContentValues;

    const/4 v10, 0x2

    invoke-direct {v3, v10}, Landroid/content/ContentValues;-><init>(I)V

    .line 291
    .local v3, contentValues:Landroid/content/ContentValues;
    const-string v10, "state"

    invoke-virtual/range {p2 .. p2}, Lcom/android/vending/model/LocalAssetInfo$AssetState;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const/4 v10, 0x1

    new-array v7, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v7, v10

    .line 293
    .local v7, serverIdArg:[Ljava/lang/String;
    sget-object v10, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-object v0, v10

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/vending/model/LocalAssetInfo$AssetState;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 294
    const-string v10, "install_time"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 300
    :cond_0
    :goto_1
    if-eqz p4, :cond_1

    .line 301
    const-string v10, "version_code"

    move-object v0, v3

    move-object v1, v10

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 303
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/api/LocalAssetDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v10, v0

    const-string v11, "assets15"

    const-string v12, "server_string_id = ?"

    invoke-virtual {v10, v11, v3, v12, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 304
    invoke-direct/range {p0 .. p2}, Lcom/android/vending/api/LocalAssetDatabase;->notifyListener(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V

    .line 307
    sget-object v10, Lcom/android/vending/model/LocalAssetInfo$AssetState;->UNINSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-object v0, v10

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/vending/model/LocalAssetInfo$AssetState;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/32 v12, 0x19bfcc00

    sub-long v8, v10, v12

    .line 309
    .local v8, staleTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/api/LocalAssetDatabase;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v10, v0

    const-string v11, "assets15"

    const-string v12, "state = ? AND uninstall_time < ?"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    sget-object v15, Lcom/android/vending/model/LocalAssetInfo$AssetState;->UNINSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    invoke-virtual {v15}, Lcom/android/vending/model/LocalAssetInfo$AssetState;->name()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v10, v11, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 316
    .local v6, result:I
    if-lez v6, :cond_2

    .line 317
    const-string v10, "%d old packages deleted"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    .end local v6           #result:I
    .end local v8           #staleTime:J
    :cond_2
    monitor-exit p0

    return-void

    .line 287
    .end local v3           #contentValues:Landroid/content/ContentValues;
    .end local v4           #longTime:J
    .end local v7           #serverIdArg:[Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .restart local v4       #longTime:J
    goto/16 :goto_0

    .line 295
    .restart local v3       #contentValues:Landroid/content/ContentValues;
    .restart local v7       #serverIdArg:[Ljava/lang/String;
    :cond_4
    sget-object v10, Lcom/android/vending/model/LocalAssetInfo$AssetState;->UNINSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-object v0, v10

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/vending/model/LocalAssetInfo$AssetState;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 296
    const-string v10, "uninstall_time"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 284
    .end local v3           #contentValues:Landroid/content/ContentValues;
    .end local v4           #longTime:J
    .end local v7           #serverIdArg:[Ljava/lang/String;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 297
    .restart local v3       #contentValues:Landroid/content/ContentValues;
    .restart local v4       #longTime:J
    .restart local v7       #serverIdArg:[Ljava/lang/String;
    :cond_5
    :try_start_2
    sget-object v10, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOADING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-object v0, v10

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/vending/model/LocalAssetInfo$AssetState;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 298
    const-string v10, "download_start_time"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method
