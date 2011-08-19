.class public Lcom/layar/data/layer/LayerCacheManager;
.super Ljava/lang/Object;
.source "LayerCacheManager.java"

# interfaces
.implements Lcom/layar/data/layer/LayerSections;
.implements Lcom/layar/data/layer/LayersType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/data/layer/LayerCacheManager$LocationPair;
    }
.end annotation


# static fields
.field private static final PREF_FILE_NAME:Ljava/lang/String; = null

.field private static final PREF_FIRST_FEATURED_LAYER:Ljava/lang/String; = "PREFS_LAYERS_CACHE_first_featured_layer_name"

.field private static final PREF_KEY:Ljava/lang/String; = "PREFS_LAYERS_CACHE"

.field private static final REFRESH_DISTANCE:J = 0x3e8L

.field private static final REFRESH_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private doNeedUpdateCache:Z

.field public isBookmarksInitialized:Z

.field private final mContext:Landroid/content/Context;

.field private final mGeneralEditor:Landroid/content/SharedPreferences$Editor;

.field private final mGeneralPrefs:Landroid/content/SharedPreferences;

.field private final mLastLocation:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/layar/data/layer/LayerCacheManager$LocationPair;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastPageKey:Ljava/util/HashMap;
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

.field private final mLastUpdateTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLocation:Landroid/location/Location;

.field private final mPrefs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/layar/data/layer/LayerCacheManager;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/data/layer/LayerCacheManager;->TAG:Ljava/lang/String;

    .line 18
    const-class v0, Lcom/layar/data/layer/LayerCacheManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/data/layer/LayerCacheManager;->PREF_FILE_NAME:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v2, p0, Lcom/layar/data/layer/LayerCacheManager;->isBookmarksInitialized:Z

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/layar/data/layer/LayerCacheManager;->mPrefs:Ljava/util/HashMap;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/layar/data/layer/LayerCacheManager;->mLastUpdateTime:Ljava/util/HashMap;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/layar/data/layer/LayerCacheManager;->mLastLocation:Ljava/util/HashMap;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/layar/data/layer/LayerCacheManager;->mLastPageKey:Ljava/util/HashMap;

    .line 39
    new-instance v0, Landroid/location/Location;

    sget-object v1, Lcom/layar/data/layer/LayerCacheManager;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/layar/data/layer/LayerCacheManager;->mLocation:Landroid/location/Location;

    .line 40
    iput-boolean v2, p0, Lcom/layar/data/layer/LayerCacheManager;->doNeedUpdateCache:Z

    .line 43
    iput-object p1, p0, Lcom/layar/data/layer/LayerCacheManager;->mContext:Landroid/content/Context;

    .line 44
    sget-object v0, Lcom/layar/data/layer/LayerCacheManager;->PREF_FILE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/data/layer/LayerCacheManager;->mGeneralPrefs:Landroid/content/SharedPreferences;

    .line 45
    iget-object v0, p0, Lcom/layar/data/layer/LayerCacheManager;->mGeneralPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/data/layer/LayerCacheManager;->mGeneralEditor:Landroid/content/SharedPreferences$Editor;

    .line 47
    invoke-direct {p0}, Lcom/layar/data/layer/LayerCacheManager;->init()V

    .line 48
    return-void
.end method

.method private static getLocationPrefKey(Lcom/layar/data/layer/LayersSelector;)Ljava/lang/String;
    .locals 3
    .parameter "selector"

    .prologue
    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PREFS_LAYERS_CACHE_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/data/layer/LayersSelector;->subsection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 259
    iget-object v1, p0, Lcom/layar/data/layer/LayersSelector;->category:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/layar/data/layer/LayersSelector;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 260
    const-string v1, "_LOCATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 259
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private static getPagePrefKey(Lcom/layar/data/layer/LayersSelector;)Ljava/lang/String;
    .locals 3
    .parameter "selector"

    .prologue
    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PREFS_LAYERS_CACHE_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/data/layer/LayersSelector;->subsection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 265
    iget-object v1, p0, Lcom/layar/data/layer/LayersSelector;->category:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/layar/data/layer/LayersSelector;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 266
    const-string v1, "_PAGE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 265
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private getPrefs(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 4
    .parameter "type"

    .prologue
    .line 56
    iget-object v1, p0, Lcom/layar/data/layer/LayerCacheManager;->mPrefs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/layar/data/layer/LayerCacheManager;->mContext:Landroid/content/Context;

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/layar/data/layer/LayerCacheManager;->PREF_FILE_NAME:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 57
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 59
    .local v0, pref:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/layar/data/layer/LayerCacheManager;->mPrefs:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 62
    .end local v0           #pref:Landroid/content/SharedPreferences;
    .end local p0
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    iget-object v1, p0, Lcom/layar/data/layer/LayerCacheManager;->mPrefs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/SharedPreferences;

    move-object v1, p0

    goto :goto_0
.end method

.method private static getUpdatePrefKey(Lcom/layar/data/layer/LayersSelector;)Ljava/lang/String;
    .locals 3
    .parameter "selector"

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PREFS_LAYERS_CACHE_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/data/layer/LayersSelector;->subsection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 253
    iget-object v1, p0, Lcom/layar/data/layer/LayersSelector;->category:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/layar/data/layer/LayersSelector;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 254
    const-string v1, "_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 253
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/layar/data/layer/LayerCacheManager;->mGeneralPrefs:Landroid/content/SharedPreferences;

    .line 52
    const-string v1, "PREFS_BOOKMARKS_INITIALIZED"

    const/4 v2, 0x0

    .line 51
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/layar/data/layer/LayerCacheManager;->isBookmarksInitialized:Z

    .line 53
    return-void
.end method

.method private initLocation(Lcom/layar/data/layer/LayersSelector;)V
    .locals 9
    .parameter "selector"

    .prologue
    const v8, 0x7f7fffff

    .line 240
    invoke-static {p1}, Lcom/layar/data/layer/LayerCacheManager;->getLocationPrefKey(Lcom/layar/data/layer/LayersSelector;)Ljava/lang/String;

    move-result-object v6

    .line 241
    .local v6, prefKey:Ljava/lang/String;
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/layar/data/layer/LayerCacheManager;->getPrefs(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_LAT"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    float-to-double v2, v0

    .line 242
    .local v2, lat:D
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/layar/data/layer/LayerCacheManager;->getPrefs(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "_LON"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    float-to-double v4, v0

    .line 243
    .local v4, lon:D
    iget-object v7, p0, Lcom/layar/data/layer/LayerCacheManager;->mLastLocation:Ljava/util/HashMap;

    new-instance v0, Lcom/layar/data/layer/LayerCacheManager$LocationPair;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/layar/data/layer/LayerCacheManager$LocationPair;-><init>(Lcom/layar/data/layer/LayerCacheManager;DD)V

    invoke-virtual {v7, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    return-void
.end method

.method private initPageKey(Lcom/layar/data/layer/LayersSelector;)V
    .locals 4
    .parameter "selector"

    .prologue
    .line 247
    invoke-static {p1}, Lcom/layar/data/layer/LayerCacheManager;->getPagePrefKey(Lcom/layar/data/layer/LayersSelector;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, prefKey:Ljava/lang/String;
    iget-object v1, p0, Lcom/layar/data/layer/LayerCacheManager;->mLastPageKey:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/layar/data/layer/LayerCacheManager;->getPrefs(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    return-void
.end method

.method private initUpdate(Lcom/layar/data/layer/LayersSelector;)V
    .locals 5
    .parameter "selector"

    .prologue
    .line 235
    invoke-static {p1}, Lcom/layar/data/layer/LayerCacheManager;->getUpdatePrefKey(Lcom/layar/data/layer/LayersSelector;)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, prefKey:Ljava/lang/String;
    iget-object v1, p0, Lcom/layar/data/layer/LayerCacheManager;->mLastUpdateTime:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/layar/data/layer/LayerCacheManager;->getPrefs(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-interface {v2, v0, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    return-void
.end method


# virtual methods
.method public cachedLayersNeedUpdate()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/layar/data/layer/LayerCacheManager;->doNeedUpdateCache:Z

    return v0
.end method

.method public getFirstFeaturedLayerName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/layar/data/layer/LayerCacheManager;->mGeneralPrefs:Landroid/content/SharedPreferences;

    const-string v1, "PREFS_LAYERS_CACHE_first_featured_layer_name"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastLocation(Lcom/layar/data/layer/LayersSelector;)Landroid/location/Location;
    .locals 6
    .parameter "selector"

    .prologue
    .line 121
    iget-object v2, p0, Lcom/layar/data/layer/LayerCacheManager;->mLocation:Landroid/location/Location;

    monitor-enter v2

    .line 122
    :try_start_0
    invoke-static {p1}, Lcom/layar/data/layer/LayerCacheManager;->getLocationPrefKey(Lcom/layar/data/layer/LayersSelector;)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, prefKey:Ljava/lang/String;
    iget-object v3, p0, Lcom/layar/data/layer/LayerCacheManager;->mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 124
    invoke-direct {p0, p1}, Lcom/layar/data/layer/LayerCacheManager;->initLocation(Lcom/layar/data/layer/LayersSelector;)V

    .line 125
    :cond_0
    iget-object v3, p0, Lcom/layar/data/layer/LayerCacheManager;->mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/data/layer/LayerCacheManager$LocationPair;

    .line 126
    .local v0, location:Lcom/layar/data/layer/LayerCacheManager$LocationPair;
    if-nez v0, :cond_1

    .line 127
    monitor-exit v2

    const/4 v2, 0x0

    .line 130
    :goto_0
    return-object v2

    .line 128
    :cond_1
    iget-object v3, p0, Lcom/layar/data/layer/LayerCacheManager;->mLocation:Landroid/location/Location;

    iget-wide v4, v0, Lcom/layar/data/layer/LayerCacheManager$LocationPair;->lat:D

    invoke-virtual {v3, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 129
    iget-object v3, p0, Lcom/layar/data/layer/LayerCacheManager;->mLocation:Landroid/location/Location;

    iget-wide v4, v0, Lcom/layar/data/layer/LayerCacheManager$LocationPair;->lon:D

    invoke-virtual {v3, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    .line 130
    iget-object v3, p0, Lcom/layar/data/layer/LayerCacheManager;->mLocation:Landroid/location/Location;

    monitor-exit v2

    move-object v2, v3

    goto :goto_0

    .line 121
    .end local v0           #location:Lcom/layar/data/layer/LayerCacheManager$LocationPair;
    .end local v1           #prefKey:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getLastUpdatetime(Lcom/layar/data/layer/LayersSelector;)J
    .locals 3
    .parameter "selector"

    .prologue
    .line 151
    invoke-static {p1}, Lcom/layar/data/layer/LayerCacheManager;->getUpdatePrefKey(Lcom/layar/data/layer/LayersSelector;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, prefKey:Ljava/lang/String;
    iget-object v1, p0, Lcom/layar/data/layer/LayerCacheManager;->mLastUpdateTime:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    invoke-direct {p0, p1}, Lcom/layar/data/layer/LayerCacheManager;->initUpdate(Lcom/layar/data/layer/LayersSelector;)V

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/layar/data/layer/LayerCacheManager;->mLastUpdateTime:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1
.end method

.method public getPageKey(Lcom/layar/data/layer/LayersSelector;)Ljava/lang/String;
    .locals 2
    .parameter "selector"

    .prologue
    .line 96
    invoke-static {p1}, Lcom/layar/data/layer/LayerCacheManager;->getPagePrefKey(Lcom/layar/data/layer/LayersSelector;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, prefKey:Ljava/lang/String;
    iget-object v1, p0, Lcom/layar/data/layer/LayerCacheManager;->mLastPageKey:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    invoke-direct {p0, p1}, Lcom/layar/data/layer/LayerCacheManager;->initPageKey(Lcom/layar/data/layer/LayersSelector;)V

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/layar/data/layer/LayerCacheManager;->mLastPageKey:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public isReseted(Lcom/layar/data/layer/LayersSelector;)Z
    .locals 2
    .parameter "selector"

    .prologue
    .line 158
    invoke-static {p1}, Lcom/layar/data/layer/LayerCacheManager;->getUpdatePrefKey(Lcom/layar/data/layer/LayersSelector;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, prefKey:Ljava/lang/String;
    iget-object v1, p0, Lcom/layar/data/layer/LayerCacheManager;->mLastUpdateTime:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public needUpdate(Lcom/layar/data/layer/LayersSelector;)Z
    .locals 7
    .parameter "selector"

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lcom/layar/data/layer/LayerCacheManager;->getLastUpdatetime(Lcom/layar/data/layer/LayersSelector;)J

    move-result-wide v0

    .line 167
    .local v0, lastUpdateTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-wide/32 v5, 0x36ee80

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    const/4 v3, 0x1

    move v2, v3

    .line 169
    .local v2, updateByTime:Z
    :goto_0
    return v2

    .line 167
    .end local v2           #updateByTime:Z
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    goto :goto_0
.end method

.method public needUpdate(Lcom/layar/data/layer/LayersSelector;Landroid/location/Location;)Z
    .locals 9
    .parameter "selector"
    .parameter "location"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 176
    invoke-virtual {p0, p1}, Lcom/layar/data/layer/LayerCacheManager;->needUpdate(Lcom/layar/data/layer/LayersSelector;)Z

    move-result v2

    .line 177
    .local v2, updateByTime:Z
    if-eqz v2, :cond_0

    move v3, v7

    .line 185
    :goto_0
    return v3

    .line 179
    :cond_0
    if-nez p2, :cond_1

    move v3, v8

    .line 180
    goto :goto_0

    .line 181
    :cond_1
    invoke-virtual {p0, p1}, Lcom/layar/data/layer/LayerCacheManager;->getLastLocation(Lcom/layar/data/layer/LayersSelector;)Landroid/location/Location;

    move-result-object v0

    .line 182
    .local v0, cacheLocation:Landroid/location/Location;
    if-nez v0, :cond_2

    move v3, v7

    .line 183
    goto :goto_0

    .line 184
    :cond_2
    invoke-virtual {p2, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v3

    float-to-int v1, v3

    .line 185
    .local v1, distance:I
    int-to-long v3, v1

    const-wide/16 v5, 0x3e8

    cmp-long v3, v3, v5

    if-ltz v3, :cond_3

    move v3, v7

    goto :goto_0

    :cond_3
    move v3, v8

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/layar/data/layer/LayerCacheManager;->doNeedUpdateCache:Z

    .line 219
    monitor-enter p0

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/layar/data/layer/LayerCacheManager;->mGeneralPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 221
    const-string v0, "featured"

    invoke-direct {p0, v0}, Lcom/layar/data/layer/LayerCacheManager;->getPrefs(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 222
    const-string v0, "local"

    invoke-direct {p0, v0}, Lcom/layar/data/layer/LayerCacheManager;->getPrefs(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 223
    const-string v0, "popular"

    invoke-direct {p0, v0}, Lcom/layar/data/layer/LayerCacheManager;->getPrefs(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 224
    const-string v0, "category"

    invoke-direct {p0, v0}, Lcom/layar/data/layer/LayerCacheManager;->getPrefs(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 225
    const-string v0, "my"

    invoke-direct {p0, v0}, Lcom/layar/data/layer/LayerCacheManager;->getPrefs(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 219
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    iget-object v0, p0, Lcom/layar/data/layer/LayerCacheManager;->mLastUpdateTime:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 229
    iget-object v0, p0, Lcom/layar/data/layer/LayerCacheManager;->mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 230
    iget-object v0, p0, Lcom/layar/data/layer/LayerCacheManager;->mLastPageKey:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 231
    return-void

    .line 219
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public reset(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 199
    if-nez p1, :cond_0

    .line 210
    :goto_0
    return-void

    .line 201
    :cond_0
    monitor-enter p0

    .line 202
    :try_start_0
    invoke-direct {p0, p1}, Lcom/layar/data/layer/LayerCacheManager;->getPrefs(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 201
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    iget-object v0, p0, Lcom/layar/data/layer/LayerCacheManager;->mLastUpdateTime:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 208
    iget-object v0, p0, Lcom/layar/data/layer/LayerCacheManager;->mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 209
    iget-object v0, p0, Lcom/layar/data/layer/LayerCacheManager;->mLastPageKey:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    .line 201
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setBookmarksInitializes(Z)V
    .locals 3
    .parameter "bookmarksInitialized"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/layar/data/layer/LayerCacheManager;->isBookmarksInitialized:Z

    .line 78
    const-class v0, Lcom/layar/data/layer/LayerCacheManager;

    monitor-enter v0

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/layar/data/layer/LayerCacheManager;->mGeneralEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "PREFS_BOOKMARKS_INITIALIZED"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 80
    iget-object v1, p0, Lcom/layar/data/layer/LayerCacheManager;->mGeneralEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 78
    monitor-exit v0

    .line 82
    return-void

    .line 78
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setFirstFeaturedLayerName(Ljava/lang/String;)V
    .locals 3
    .parameter "layerName"

    .prologue
    .line 66
    const-class v0, Lcom/layar/data/layer/LayerCacheManager;

    monitor-enter v0

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/layar/data/layer/LayerCacheManager;->mGeneralEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "PREFS_LAYERS_CACHE_first_featured_layer_name"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 68
    iget-object v1, p0, Lcom/layar/data/layer/LayerCacheManager;->mGeneralEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 66
    monitor-exit v0

    .line 70
    return-void

    .line 66
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setLastLocation(Lcom/layar/data/layer/LayersSelector;DD)V
    .locals 9
    .parameter "selector"
    .parameter "lat"
    .parameter "lon"

    .prologue
    .line 110
    invoke-static {p1}, Lcom/layar/data/layer/LayerCacheManager;->getLocationPrefKey(Lcom/layar/data/layer/LayersSelector;)Ljava/lang/String;

    move-result-object v7

    .line 111
    .local v7, prefKey:Ljava/lang/String;
    iget-object v8, p0, Lcom/layar/data/layer/LayerCacheManager;->mLastLocation:Ljava/util/HashMap;

    new-instance v0, Lcom/layar/data/layer/LayerCacheManager$LocationPair;

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/layar/data/layer/LayerCacheManager$LocationPair;-><init>(Lcom/layar/data/layer/LayerCacheManager;DD)V

    invoke-virtual {v8, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/layar/data/layer/LayerCacheManager;->getPrefs(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 113
    .local v6, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_LAT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    double-to-float v1, p2

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_LON"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    double-to-float v1, p4

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 115
    monitor-enter p0

    .line 116
    :try_start_0
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 115
    monitor-exit p0

    .line 118
    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLastLocation(Lcom/layar/data/layer/LayersSelector;Landroid/location/Location;)V
    .locals 6
    .parameter "selector"
    .parameter "location"

    .prologue
    .line 103
    if-nez p2, :cond_0

    .line 106
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/layar/data/layer/LayerCacheManager;->setLastLocation(Lcom/layar/data/layer/LayersSelector;DD)V

    goto :goto_0
.end method

.method public setLastUpdateTime(Lcom/layar/data/layer/LayersSelector;)V
    .locals 2
    .parameter "selector"

    .prologue
    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 136
    .local v0, lastUpdateTime:J
    invoke-virtual {p0, p1, v0, v1}, Lcom/layar/data/layer/LayerCacheManager;->setLastUpdateTime(Lcom/layar/data/layer/LayersSelector;J)V

    .line 137
    return-void
.end method

.method public setLastUpdateTime(Lcom/layar/data/layer/LayersSelector;J)V
    .locals 4
    .parameter "selector"
    .parameter "lastUpdateTime"

    .prologue
    .line 141
    invoke-static {p1}, Lcom/layar/data/layer/LayerCacheManager;->getUpdatePrefKey(Lcom/layar/data/layer/LayersSelector;)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, prefKey:Ljava/lang/String;
    iget-object v2, p0, Lcom/layar/data/layer/LayerCacheManager;->mLastUpdateTime:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v2, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/layar/data/layer/LayerCacheManager;->getPrefs(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 144
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 145
    monitor-enter p0

    .line 146
    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 145
    monitor-exit p0

    .line 148
    return-void

    .line 145
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setPageKey(Lcom/layar/data/layer/LayersSelector;Ljava/lang/String;)V
    .locals 3
    .parameter "selector"
    .parameter "pageKey"

    .prologue
    .line 86
    invoke-static {p1}, Lcom/layar/data/layer/LayerCacheManager;->getPagePrefKey(Lcom/layar/data/layer/LayersSelector;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, prefKey:Ljava/lang/String;
    iget-object v2, p0, Lcom/layar/data/layer/LayerCacheManager;->mLastPageKey:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v2, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/layar/data/layer/LayerCacheManager;->getPrefs(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 89
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 90
    monitor-enter p0

    .line 91
    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 90
    monitor-exit p0

    .line 93
    return-void

    .line 90
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
