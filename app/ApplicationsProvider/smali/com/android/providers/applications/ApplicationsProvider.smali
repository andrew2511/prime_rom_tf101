.class public Lcom/android/providers/applications/ApplicationsProvider;
.super Landroid/content/ContentProvider;
.source "ApplicationsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/applications/ApplicationsProvider$UpdateHandler;,
        Lcom/android/providers/applications/ApplicationsProvider$MyPackageMonitor;
    }
.end annotation


# static fields
.field private static final INTENT_UPDATE_LAUNCH_COUNTS:Ljava/lang/String;

.field private static final sSearchProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSearchSuggestionsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mHandler:Landroid/os/Handler;

.field private mLaunchCountUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

.field private onApplicationsListUpdated:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 81
    invoke-static {}, Lcom/android/providers/applications/ApplicationsProvider;->buildUriMatcher()Landroid/content/UriMatcher;

    move-result-object v0

    sput-object v0, Lcom/android/providers/applications/ApplicationsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/providers/applications/ApplicationsProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".UPDATE_LAUNCH_COUNTS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/applications/ApplicationsProvider;->INTENT_UPDATE_LAUNCH_COUNTS:Ljava/lang/String;

    .line 107
    invoke-static {}, Lcom/android/providers/applications/ApplicationsProvider;->buildSuggestionsProjectionMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/applications/ApplicationsProvider;->sSearchSuggestionsProjectionMap:Ljava/util/HashMap;

    .line 109
    invoke-static {}, Lcom/android/providers/applications/ApplicationsProvider;->buildSearchProjectionMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/applications/ApplicationsProvider;->sSearchProjectionMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 164
    new-instance v0, Lcom/android/providers/applications/ApplicationsProvider$1;

    invoke-direct {v0, p0}, Lcom/android/providers/applications/ApplicationsProvider$1;-><init>(Lcom/android/providers/applications/ApplicationsProvider;)V

    iput-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 177
    new-instance v0, Lcom/android/providers/applications/ApplicationsProvider$2;

    invoke-direct {v0, p0}, Lcom/android/providers/applications/ApplicationsProvider$2;-><init>(Lcom/android/providers/applications/ApplicationsProvider;)V

    iput-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mLaunchCountUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 207
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/applications/ApplicationsProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/providers/applications/ApplicationsProvider;->postUpdateAll()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/providers/applications/ApplicationsProvider;->INTENT_UPDATE_LAUNCH_COUNTS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/providers/applications/ApplicationsProvider;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/providers/applications/ApplicationsProvider;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/providers/applications/ApplicationsProvider;->updateApplicationsList(Ljava/lang/String;)V

    return-void
.end method

.method private static addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 482
    .local p0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 485
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    return-void
.end method

.method private static buildSearchProjectionMap()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 471
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 472
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "_id"

    const-string v2, "_id"

    invoke-static {v0, v1, v2}, Lcom/android/providers/applications/ApplicationsProvider;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const-string v1, "name"

    const-string v2, "name"

    invoke-static {v0, v1, v2}, Lcom/android/providers/applications/ApplicationsProvider;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const-string v1, "icon"

    const-string v2, "icon"

    invoke-static {v0, v1, v2}, Lcom/android/providers/applications/ApplicationsProvider;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string v1, "uri"

    const-string v2, "\'content://applications/applications/\' || package || \'/\' || class"

    invoke-static {v0, v1, v2}, Lcom/android/providers/applications/ApplicationsProvider;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    return-object v0
.end method

.method private static buildSuggestionsProjectionMap()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 456
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 457
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "_id"

    const-string v2, "_id"

    invoke-static {v0, v1, v2}, Lcom/android/providers/applications/ApplicationsProvider;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string v1, "suggest_text_1"

    const-string v2, "name"

    invoke-static {v0, v1, v2}, Lcom/android/providers/applications/ApplicationsProvider;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v1, "suggest_text_2"

    const-string v2, "description"

    invoke-static {v0, v1, v2}, Lcom/android/providers/applications/ApplicationsProvider;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string v1, "suggest_intent_data"

    const-string v2, "\'content://applications/applications/\' || package || \'/\' || class"

    invoke-static {v0, v1, v2}, Lcom/android/providers/applications/ApplicationsProvider;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const-string v1, "suggest_icon_1"

    const-string v2, "icon"

    invoke-static {v0, v1, v2}, Lcom/android/providers/applications/ApplicationsProvider;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-string v1, "suggest_icon_2"

    const-string v2, "NULL"

    invoke-static {v0, v1, v2}, Lcom/android/providers/applications/ApplicationsProvider;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const-string v1, "suggest_shortcut_id"

    const-string v2, "package || \'/\' || class"

    invoke-static {v0, v1, v2}, Lcom/android/providers/applications/ApplicationsProvider;->addProjection(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    return-object v0
.end method

.method private buildTokenFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "filterParam"

    .prologue
    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "token GLOB "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 450
    .local v0, filter:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/database/DatabaseUtils;->getHexCollationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 452
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static buildUriMatcher()Landroid/content/UriMatcher;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 135
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 136
    .local v0, matcher:Landroid/content/UriMatcher;
    const-string v1, "applications"

    const-string v2, "search_suggest_query"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 138
    const-string v1, "applications"

    const-string v2, "search_suggest_query/*"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 140
    const-string v1, "applications"

    const-string v2, "search_suggest_shortcut"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 142
    const-string v1, "applications"

    const-string v2, "search_suggest_shortcut/*"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 144
    const-string v1, "applications"

    const-string v2, "search"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 146
    const-string v1, "applications"

    const-string v2, "search/*"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 148
    return-object v0
.end method

.method private createDatabase()V
    .locals 2

    .prologue
    .line 271
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/database/sqlite/SQLiteDatabase;->create(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 272
    iget-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE IF NOT EXISTS applications (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT COLLATE LOCALIZED,description description TEXT,package TEXT,class TEXT,icon TEXT,launch_count INTEGER DEFAULT 0);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX applicationsComponentIndex ON applications (package,class);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE applicationsLookup (token TEXT,source INTEGER REFERENCES applications(_id),token_index INTEGER);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX applicationsLookupIndex ON applicationsLookup (token,source);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TRIGGER applicationsLookup_update UPDATE OF name ON applications BEGIN DELETE FROM applicationsLookup WHERE source = new._id;SELECT _TOKENIZE(\'applicationsLookup\', new._id, new.name, \' \', 1);END"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TRIGGER applicationsLookup_insert AFTER INSERT ON applications BEGIN SELECT _TOKENIZE(\'applicationsLookup\', new._id, new.name, \' \', 1);END"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TRIGGER applicationsLookup_delete DELETE ON applications BEGIN DELETE FROM applicationsLookup WHERE source = old._id;END"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method private getActivityIconUri(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 4
    .parameter "activityInfo"

    .prologue
    const/4 v3, 0x0

    .line 581
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v0

    .line 582
    .local v0, icon:I
    if-nez v0, :cond_0

    move-object v2, v3

    .line 584
    :goto_0
    return-object v2

    .line 583
    :cond_0
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v2, v0}, Lcom/android/providers/applications/ApplicationsProvider;->getResourceUri(Landroid/content/pm/ApplicationInfo;I)Landroid/net/Uri;

    move-result-object v1

    .line 584
    .local v1, uri:Landroid/net/Uri;
    if-nez v1, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getOrderBy()Ljava/lang/String;
    .locals 2

    .prologue
    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 433
    .local v0, orderBy:Ljava/lang/StringBuilder;
    const-string v1, "MIN(token_index) != 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-virtual {p0}, Lcom/android/providers/applications/ApplicationsProvider;->canRankByLaunchCount()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 436
    const-string v1, ", launch_count DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    :cond_0
    const-string v1, ", name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getResourceUri(Landroid/content/pm/ApplicationInfo;I)Landroid/net/Uri;
    .locals 4
    .parameter "appInfo"
    .parameter "res"

    .prologue
    const/4 v3, 0x0

    .line 614
    :try_start_0
    invoke-virtual {p0}, Lcom/android/providers/applications/ApplicationsProvider;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1

    .line 615
    .local v1, resources:Landroid/content/res/Resources;
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2, p2}, Lcom/android/providers/applications/ApplicationsProvider;->getResourceUri(Landroid/content/res/Resources;Ljava/lang/String;I)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 619
    .end local v1           #resources:Landroid/content/res/Resources;
    :goto_0
    return-object v2

    .line 616
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v2, v3

    .line 617
    goto :goto_0

    .line 618
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    move-object v2, v3

    .line 619
    goto :goto_0
.end method

.method private static getResourceUri(Landroid/content/res/Resources;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 4
    .parameter "resources"
    .parameter "appPkg"
    .parameter "res"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 625
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 626
    .local v1, resPkg:Ljava/lang/String;
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 627
    .local v2, type:Ljava/lang/String;
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 628
    .local v0, name:Ljava/lang/String;
    invoke-static {p1, v1, v2, v0}, Lcom/android/providers/applications/ApplicationsProvider;->makeResourceUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method private getSearchResults(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "query"
    .parameter "projectionIn"

    .prologue
    .line 407
    sget-object v0, Lcom/android/providers/applications/ApplicationsProvider;->sSearchProjectionMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/applications/ApplicationsProvider;->searchApplications(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getSuggestions(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "query"
    .parameter "projectionIn"

    .prologue
    .line 379
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    const/4 v0, 0x0

    .line 382
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/providers/applications/ApplicationsProvider;->sSearchSuggestionsProjectionMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/applications/ApplicationsProvider;->searchApplications(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method private static makeResourceUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "appPkg"
    .parameter "resPkg"
    .parameter "type"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 633
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 634
    .local v0, uriBuilder:Landroid/net/Uri$Builder;
    const-string v1, "android.resource"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 635
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 636
    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 637
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 638
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 642
    :goto_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 640
    :cond_0
    invoke-virtual {v0, p3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0
.end method

.method private postUpdateAll()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 234
    iget-object v1, p0, Lcom/android/providers/applications/ApplicationsProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 236
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 237
    .local v0, msg:Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 238
    iget-object v1, p0, Lcom/android/providers/applications/ApplicationsProvider;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 239
    return-void
.end method

.method private refreshShortcut(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "shortcutId"
    .parameter "projectionIn"

    .prologue
    const/4 v3, 0x0

    .line 391
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    .line 392
    .local v8, component:Landroid/content/ComponentName;
    if-nez v8, :cond_0

    .line 393
    const-string v1, "ApplicationsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad shortcut id: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 403
    :goto_0
    return-object v1

    .line 396
    :cond_0
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 397
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "applications"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 398
    sget-object v1, Lcom/android/providers/applications/ApplicationsProvider;->sSearchSuggestionsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 399
    const-string v1, "package = ? AND class = ?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 400
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 401
    .local v4, selectionArgs:[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, p2

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .local v9, cursor:Landroid/database/Cursor;
    move-object v1, v9

    .line 403
    goto :goto_0
.end method

.method private removeApplications(Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"

    .prologue
    const/4 v2, 0x0

    .line 588
    if-nez p1, :cond_0

    .line 589
    iget-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "applications"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 594
    :goto_0
    return-void

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "applications"

    const-string v2, "package = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private searchApplications(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Landroid/database/Cursor;
    .locals 9
    .parameter "query"
    .parameter "projectionIn"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .local p3, columnMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 412
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 413
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "applicationsLookup JOIN applications ON applicationsLookup.source = applications._id"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 414
    invoke-virtual {v0, p3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 415
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 416
    invoke-direct {p0, p1}, Lcom/android/providers/applications/ApplicationsProvider;->buildTokenFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 419
    :cond_0
    const-string v5, "applications._id"

    .line 420
    .local v5, groupBy:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/providers/applications/ApplicationsProvider;->getOrderBy()Ljava/lang/String;

    move-result-object v7

    .line 421
    .local v7, orderBy:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, p2

    move-object v4, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 423
    .local v8, cursor:Landroid/database/Cursor;
    return-object v8
.end method

.method private updateApplicationsList(Ljava/lang/String;)V
    .locals 25
    .parameter "packageName"

    .prologue
    .line 497
    new-instance v14, Landroid/database/DatabaseUtils$InsertHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v23, v0

    const-string v24, "applications"

    move-object v0, v14

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 499
    .local v14, inserter:Landroid/database/DatabaseUtils$InsertHelper;
    const-string v23, "name"

    move-object v0, v14

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 500
    .local v20, nameCol:I
    const-string v23, "description"

    move-object v0, v14

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 501
    .local v9, descriptionCol:I
    const-string v23, "package"

    move-object v0, v14

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 502
    .local v21, packageCol:I
    const-string v23, "class"

    move-object v0, v14

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 503
    .local v7, classCol:I
    const-string v23, "icon"

    move-object v0, v14

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 504
    .local v12, iconCol:I
    const-string v23, "launch_count"

    move-object v0, v14

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 506
    .local v16, launchCountCol:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/applications/ApplicationsProvider;->fetchLaunchCounts()Ljava/util/Map;

    move-result-object v17

    .line 508
    .local v17, launchCounts:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 510
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/applications/ApplicationsProvider;->removeApplications(Ljava/lang/String;)V

    .line 511
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/applications/ApplicationsProvider;->getContext()Landroid/content/Context;

    move-result-object v23

    const v24, 0x7f040002

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 513
    .local v8, description:Ljava/lang/String;
    new-instance v18, Landroid/content/Intent;

    const-string v23, "android.intent.action.MAIN"

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 514
    .local v18, mainIntent:Landroid/content/Intent;
    const-string v23, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    if-eqz p1, :cond_0

    .line 517
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/applications/ApplicationsProvider;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 520
    .local v19, manager:Landroid/content/pm/PackageManager;
    const/16 v23, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 521
    .local v3, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v3, :cond_3

    const/16 v23, 0x0

    move/from16 v5, v23

    .line 522
    .local v5, activityCount:I
    :goto_0
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-ge v10, v5, :cond_4

    .line 523
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 524
    .local v13, info:Landroid/content/pm/ResolveInfo;
    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    .line 525
    .local v22, title:Ljava/lang/String;
    move-object v0, v13

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object v4, v0

    .line 526
    .local v4, activityClassName:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 527
    move-object/from16 v22, v4

    .line 530
    :cond_1
    move-object v0, v13

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v6, v0

    .line 531
    .local v6, activityPackageName:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 532
    .local v15, launchCount:Ljava/lang/Integer;
    if-nez v15, :cond_2

    .line 533
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 536
    :cond_2
    move-object v0, v13

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/providers/applications/ApplicationsProvider;->getActivityIconUri(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v11

    .line 537
    .local v11, icon:Ljava/lang/String;
    invoke-virtual {v14}, Landroid/database/DatabaseUtils$InsertHelper;->prepareForInsert()V

    .line 538
    move-object v0, v14

    move/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 539
    invoke-virtual {v14, v9, v8}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 540
    move-object v0, v14

    move/from16 v1, v21

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 541
    invoke-virtual {v14, v7, v4}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 542
    invoke-virtual {v14, v12, v11}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 543
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move-object v0, v14

    move/from16 v1, v16

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    .line 544
    invoke-virtual {v14}, Landroid/database/DatabaseUtils$InsertHelper;->execute()J

    .line 522
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 521
    .end local v4           #activityClassName:Ljava/lang/String;
    .end local v5           #activityCount:I
    .end local v6           #activityPackageName:Ljava/lang/String;
    .end local v10           #i:I
    .end local v11           #icon:Ljava/lang/String;
    .end local v13           #info:Landroid/content/pm/ResolveInfo;
    .end local v15           #launchCount:Ljava/lang/Integer;
    .end local v22           #title:Ljava/lang/String;
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v5, v23

    goto/16 :goto_0

    .line 546
    .restart local v5       #activityCount:I
    .restart local v10       #i:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 549
    invoke-virtual {v14}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/applications/ApplicationsProvider;->onApplicationsListUpdated:Ljava/lang/Runnable;

    move-object/from16 v23, v0

    if-eqz v23, :cond_5

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/applications/ApplicationsProvider;->onApplicationsListUpdated:Ljava/lang/Runnable;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/lang/Runnable;->run()V

    .line 557
    :cond_5
    return-void

    .line 548
    .end local v3           #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5           #activityCount:I
    .end local v8           #description:Ljava/lang/String;
    .end local v10           #i:I
    .end local v18           #mainIntent:Landroid/content/Intent;
    .end local v19           #manager:Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 549
    invoke-virtual {v14}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    throw v23
.end method


# virtual methods
.method protected canRankByLaunchCount()Z
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 669
    invoke-virtual {p0}, Lcom/android/providers/applications/ApplicationsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.GLOBAL_SEARCH"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 609
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected fetchLaunchCounts()Ljava/util/Map;
    .locals 5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 648
    :try_start_0
    invoke-virtual {p0}, Lcom/android/providers/applications/ApplicationsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 651
    .local v0, activityManager:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAllPackageLaunchCounts()Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, allPackageLaunchCounts:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object v3, v1

    .line 655
    .end local v0           #activityManager:Landroid/app/ActivityManager;
    .end local v1           #allPackageLaunchCounts:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_0
    return-object v3

    .line 653
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 654
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "ApplicationsProvider"

    const-string v4, "Could not fetch launch counts"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 655
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method protected getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 661
    invoke-virtual {p0}, Lcom/android/providers/applications/ApplicationsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    .line 319
    sget-object v0, Lcom/android/providers/applications/ApplicationsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 327
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t support querying."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/vnd.android.search.suggest"

    .line 325
    :goto_0
    return-object v0

    .line 323
    :pswitch_1
    const-string v0, "vnd.android.cursor.item/vnd.android.search.suggest"

    goto :goto_0

    .line 325
    :pswitch_2
    const-string v0, "vnd.android.cursor.dir/vnd.android.application"

    goto :goto_0

    .line 319
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 598
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 191
    invoke-direct {p0}, Lcom/android/providers/applications/ApplicationsProvider;->createDatabase()V

    .line 193
    new-instance v2, Lcom/android/providers/applications/ApplicationsProvider$MyPackageMonitor;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/providers/applications/ApplicationsProvider$MyPackageMonitor;-><init>(Lcom/android/providers/applications/ApplicationsProvider;Lcom/android/providers/applications/ApplicationsProvider$1;)V

    invoke-virtual {p0}, Lcom/android/providers/applications/ApplicationsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/android/providers/applications/ApplicationsProvider$MyPackageMonitor;->register(Landroid/content/Context;Z)V

    .line 195
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 196
    .local v0, localeFilter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/providers/applications/ApplicationsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/applications/ApplicationsProvider;->mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 198
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ApplicationsProviderUpdater"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 199
    .local v1, thread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 200
    new-instance v2, Lcom/android/providers/applications/ApplicationsProvider$UpdateHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/providers/applications/ApplicationsProvider$UpdateHandler;-><init>(Lcom/android/providers/applications/ApplicationsProvider;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/providers/applications/ApplicationsProvider;->mHandler:Landroid/os/Handler;

    .line 202
    invoke-direct {p0}, Lcom/android/providers/applications/ApplicationsProvider;->postUpdateAll()V

    .line 203
    invoke-virtual {p0}, Lcom/android/providers/applications/ApplicationsProvider;->scheduleRegularLaunchCountUpdates()V

    .line 204
    return v4
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .parameter "uri"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v3, 0x1

    .line 340
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 341
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selection not allowed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 343
    :cond_0
    if-eqz p4, :cond_1

    array-length v2, p4

    if-eqz v2, :cond_1

    .line 344
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectionArgs not allowed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 346
    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 347
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sortOrder not allowed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 350
    :cond_2
    sget-object v2, Lcom/android/providers/applications/ApplicationsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 373
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "URL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " doesn\'t support querying."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 352
    :pswitch_0
    const/4 v0, 0x0

    .line 353
    .local v0, query:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_3

    .line 354
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 356
    :cond_3
    invoke-direct {p0, v0, p2}, Lcom/android/providers/applications/ApplicationsProvider;->getSuggestions(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 370
    .end local v0           #query:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 359
    :pswitch_1
    const/4 v1, 0x0

    .line 360
    .local v1, shortcutId:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_4

    .line 361
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 363
    :cond_4
    invoke-direct {p0, v1, p2}, Lcom/android/providers/applications/ApplicationsProvider;->refreshShortcut(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0

    .line 366
    .end local v1           #shortcutId:Ljava/lang/String;
    :pswitch_2
    const/4 v0, 0x0

    .line 367
    .restart local v0       #query:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_5

    .line 368
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 370
    :cond_5
    invoke-direct {p0, v0, p2}, Lcom/android/providers/applications/ApplicationsProvider;->getSearchResults(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0

    .line 350
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected scheduleRegularLaunchCountUpdates()V
    .locals 8
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const-wide/32 v2, 0x1499700

    .line 247
    invoke-virtual {p0}, Lcom/android/providers/applications/ApplicationsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/android/providers/applications/ApplicationsProvider;->mLaunchCountUpdateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    sget-object v7, Lcom/android/providers/applications/ApplicationsProvider;->INTENT_UPDATE_LAUNCH_COUNTS:Ljava/lang/String;

    invoke-direct {v5, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 251
    invoke-virtual {p0}, Lcom/android/providers/applications/ApplicationsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x0

    new-instance v5, Landroid/content/Intent;

    sget-object v7, Lcom/android/providers/applications/ApplicationsProvider;->INTENT_UPDATE_LAUNCH_COUNTS:Ljava/lang/String;

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x1000

    invoke-static {v1, v4, v5, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 256
    .local v6, updateLaunchCountsIntent:Landroid/app/PendingIntent;
    invoke-virtual {p0}, Lcom/android/providers/applications/ApplicationsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "alarm"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 258
    .local v0, alarmManager:Landroid/app/AlarmManager;
    const/4 v1, 0x3

    move-wide v4, v2

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 260
    return-void
.end method

.method protected setOnApplicationsListUpdated(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "onApplicationsListUpdated"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 675
    iput-object p1, p0, Lcom/android/providers/applications/ApplicationsProvider;->onApplicationsListUpdated:Ljava/lang/Runnable;

    .line 676
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 604
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected updateLaunchCounts()V
    .locals 9
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/android/providers/applications/ApplicationsProvider;->fetchLaunchCounts()Ljava/util/Map;

    move-result-object v1

    .line 563
    .local v1, launchCounts:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 565
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 566
    .local v2, packageName:Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 567
    .local v3, updatedValues:Landroid/content/ContentValues;
    const-string v5, "launch_count"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 569
    iget-object v4, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "applications"

    const-string v6, "package = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 574
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #packageName:Ljava/lang/String;
    .end local v3           #updatedValues:Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 572
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 574
    iget-object v4, p0, Lcom/android/providers/applications/ApplicationsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 578
    return-void
.end method
