.class public Lcom/layar/data/layer/LayerHandler;
.super Lcom/layar/data/POIsContainerHelper;
.source "LayerHandler.java"

# interfaces
.implements Lcom/layar/util/SensorHelper$LocationChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/data/layer/LayerHandler$AutoTriggerListener;,
        Lcom/layar/data/layer/LayerHandler$GetPOITask;,
        Lcom/layar/data/layer/LayerHandler$LayerHandlerListener;,
        Lcom/layar/data/layer/LayerHandler$RestoreTask;,
        Lcom/layar/data/layer/LayerHandler$ShowResponseMessageRunnable;
    }
.end annotation


# static fields
.field public static final ACTION_REFRESH:Ljava/lang/String; = "refresh"

.field public static final ACTION_UPDATE:Ljava/lang/String; = "update"

.field private static final AUTO_TRIGGER_WAIT_INTERVAL:J = 0x7d0L

.field private static final LOCATION_WAIT_INTERVAL:J = 0xbb8L

.field protected static final MAX_PAGES:I = 0xa

.field protected static final POI_MAX:I = 0x5a

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public actions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/data/PoiAction;",
            ">;"
        }
    .end annotation
.end field

.field protected autoTriggerHistory:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private checkPOIRunnable:Ljava/lang/Runnable;

.field public dataList:[Lcom/layar/data/POI;

.field public dialogData:Lcom/layar/data/DialogData;

.field private isFirstAutotriggerStart:Z

.field private isLocationUpdating:Z

.field private isShowingAutoTrigger:Z

.field private mAutoTriggerListener:Lcom/layar/data/layer/LayerHandler$AutoTriggerListener;

.field protected final mContext:Landroid/content/Context;

.field private mDownloadListener:Lcom/layar/data/DownloadListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/layar/data/DownloadListener",
            "<",
            "Lcom/layar/data/POI;",
            ">;"
        }
    .end annotation
.end field

.field private mGetPOITask:Lcom/layar/data/layer/LayerHandler$GetPOITask;

.field private mLayer:Lcom/layar/data/layer/Layer20;

.field protected final mLayerManager:Lcom/layar/data/layer/LayerManager;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/data/layer/LayerHandler$LayerHandlerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPoiId:Ljava/lang/String;

.field private mRefresher:Lcom/layar/data/layer/LayerRefresher;

.field private mRestoreTask:Lcom/layar/data/layer/LayerHandler$RestoreTask;

.field private mRestoreTaskSync:Ljava/lang/Object;

.field public final mStatus:Lcom/layar/util/StatusHelper;

.field public mustShowFilters:Z

.field private poiComparator:Lcom/layar/data/BasePOI$PoiComparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/layar/data/BasePOI$PoiComparator",
            "<",
            "Lcom/layar/data/POI;",
            ">;"
        }
    .end annotation
.end field

.field public poisToDelete:[Lcom/layar/data/POI;

.field private restartLocationUpdate:Z

.field private syncLocationUpdate:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/layar/data/layer/LayerHandler;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/data/layer/LayerHandler;->TAG:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/layar/data/layer/LayerManager;Landroid/content/Context;)V
    .locals 3
    .parameter "layerManager"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 128
    invoke-direct {p0}, Lcom/layar/data/POIsContainerHelper;-><init>()V

    .line 105
    iput-object v1, p0, Lcom/layar/data/layer/LayerHandler;->dialogData:Lcom/layar/data/DialogData;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/layar/data/layer/LayerHandler;->actions:Ljava/util/ArrayList;

    .line 109
    iput-object v1, p0, Lcom/layar/data/layer/LayerHandler;->dataList:[Lcom/layar/data/POI;

    .line 111
    new-instance v0, Lcom/layar/data/BasePOI$PoiComparator;

    invoke-direct {v0}, Lcom/layar/data/BasePOI$PoiComparator;-><init>()V

    iput-object v0, p0, Lcom/layar/data/layer/LayerHandler;->poiComparator:Lcom/layar/data/BasePOI$PoiComparator;

    .line 115
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/layar/data/layer/LayerHandler;->mRestoreTaskSync:Ljava/lang/Object;

    .line 117
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/layar/data/layer/LayerHandler;->autoTriggerHistory:Ljava/util/HashSet;

    .line 118
    iput-object v1, p0, Lcom/layar/data/layer/LayerHandler;->mAutoTriggerListener:Lcom/layar/data/layer/LayerHandler$AutoTriggerListener;

    .line 119
    iput-boolean v2, p0, Lcom/layar/data/layer/LayerHandler;->isShowingAutoTrigger:Z

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/layar/data/layer/LayerHandler;->isFirstAutotriggerStart:Z

    .line 122
    iput-object v1, p0, Lcom/layar/data/layer/LayerHandler;->mDownloadListener:Lcom/layar/data/DownloadListener;

    .line 124
    iput-boolean v2, p0, Lcom/layar/data/layer/LayerHandler;->mustShowFilters:Z

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/layar/data/layer/LayerHandler;->mListeners:Ljava/util/ArrayList;

    .line 231
    new-instance v0, Lcom/layar/data/layer/LayerHandler$1;

    invoke-direct {v0, p0}, Lcom/layar/data/layer/LayerHandler$1;-><init>(Lcom/layar/data/layer/LayerHandler;)V

    iput-object v0, p0, Lcom/layar/data/layer/LayerHandler;->checkPOIRunnable:Ljava/lang/Runnable;

    .line 287
    new-instance v0, Lcom/layar/data/layer/LayerRefresher;

    iget-object v1, p0, Lcom/layar/data/layer/LayerHandler;->checkPOIRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Lcom/layar/data/layer/LayerRefresher;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/layar/data/layer/LayerHandler;->mRefresher:Lcom/layar/data/layer/LayerRefresher;

    .line 305
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/layar/data/layer/LayerHandler;->syncLocationUpdate:Ljava/lang/Object;

    .line 306
    iput-boolean v2, p0, Lcom/layar/data/layer/LayerHandler;->isLocationUpdating:Z

    .line 307
    iput-boolean v2, p0, Lcom/layar/data/layer/LayerHandler;->restartLocationUpdate:Z

    .line 129
    iput-object p2, p0, Lcom/layar/data/layer/LayerHandler;->mContext:Landroid/content/Context;

    .line 130
    iput-object p1, p0, Lcom/layar/data/layer/LayerHandler;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    .line 131
    new-instance v0, Lcom/layar/util/StatusHelper;

    invoke-direct {v0}, Lcom/layar/util/StatusHelper;-><init>()V

    iput-object v0, p0, Lcom/layar/data/layer/LayerHandler;->mStatus:Lcom/layar/util/StatusHelper;

    .line 137
    invoke-direct {p0}, Lcom/layar/data/layer/LayerHandler;->_doRestore()V

    .line 138
    return-void
.end method

.method private _doRestore()V
    .locals 4

    .prologue
    .line 973
    invoke-direct {p0}, Lcom/layar/data/layer/LayerHandler;->_getLayarRestorePoint()Ljava/lang/String;

    move-result-object v0

    .line 974
    .local v0, layarName:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 985
    :goto_0
    return-void

    .line 979
    :cond_0
    iget-object v1, p0, Lcom/layar/data/layer/LayerHandler;->mRestoreTaskSync:Ljava/lang/Object;

    monitor-enter v1

    .line 980
    :try_start_0
    iget-object v2, p0, Lcom/layar/data/layer/LayerHandler;->mRestoreTask:Lcom/layar/data/layer/LayerHandler$RestoreTask;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/layar/data/layer/LayerHandler;->mRestoreTask:Lcom/layar/data/layer/LayerHandler$RestoreTask;

    invoke-virtual {v2}, Lcom/layar/data/layer/LayerHandler$RestoreTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 981
    iget-object v2, p0, Lcom/layar/data/layer/LayerHandler;->mRestoreTask:Lcom/layar/data/layer/LayerHandler$RestoreTask;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/layar/data/layer/LayerHandler$RestoreTask;->cancel(Z)Z

    .line 982
    :cond_1
    new-instance v2, Lcom/layar/data/layer/LayerHandler$RestoreTask;

    invoke-direct {v2, p0, v0}, Lcom/layar/data/layer/LayerHandler$RestoreTask;-><init>(Lcom/layar/data/layer/LayerHandler;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/layar/data/layer/LayerHandler;->mRestoreTask:Lcom/layar/data/layer/LayerHandler$RestoreTask;

    .line 983
    iget-object v2, p0, Lcom/layar/data/layer/LayerHandler;->mRestoreTask:Lcom/layar/data/layer/LayerHandler$RestoreTask;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/layar/data/layer/LayerHandler$RestoreTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 979
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private _getLayarRestorePoint()Ljava/lang/String;
    .locals 3

    .prologue
    .line 966
    iget-object v1, p0, Lcom/layar/data/layer/LayerHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 967
    .local v0, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v1, "restorepoint.layarname"

    .line 968
    const/4 v2, 0x0

    .line 967
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private _saveRestorePoint(Ljava/lang/String;)V
    .locals 2
    .parameter "layarName"

    .prologue
    .line 957
    iget-object v1, p0, Lcom/layar/data/layer/LayerHandler;->mContext:Landroid/content/Context;

    .line 956
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 957
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 958
    .local v0, prefsEditor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "restorepoint.layarname"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 959
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 962
    return-void
.end method

.method static synthetic access$1(Lcom/layar/data/layer/LayerHandler;)Lcom/layar/data/layer/LayerHandler$GetPOITask;
    .locals 1
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler;->mGetPOITask:Lcom/layar/data/layer/LayerHandler$GetPOITask;

    return-object v0
.end method

.method static synthetic access$2(Lcom/layar/data/layer/LayerHandler;)Lcom/layar/data/DownloadListener;
    .locals 1
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler;->mDownloadListener:Lcom/layar/data/DownloadListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/layar/data/layer/LayerHandler;Lcom/layar/data/layer/LayerHandler$GetPOITask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/layar/data/layer/LayerHandler;->mGetPOITask:Lcom/layar/data/layer/LayerHandler$GetPOITask;

    return-void
.end method

.method static synthetic access$4(Lcom/layar/data/layer/LayerHandler;)Lcom/layar/data/layer/LayerRefresher;
    .locals 1
    .parameter

    .prologue
    .line 287
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler;->mRefresher:Lcom/layar/data/layer/LayerRefresher;

    return-object v0
.end method

.method static synthetic access$5(Lcom/layar/data/layer/LayerHandler;Lcom/layar/data/BasePOI;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/layar/data/layer/LayerHandler;->focusData:Lcom/layar/data/BasePOI;

    return-void
.end method

.method static synthetic access$6(Lcom/layar/data/layer/LayerHandler;)Lcom/layar/data/BasePOI$PoiComparator;
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler;->poiComparator:Lcom/layar/data/BasePOI$PoiComparator;

    return-object v0
.end method

.method static synthetic access$7(Lcom/layar/data/layer/LayerHandler;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler;->mRestoreTaskSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$8(Lcom/layar/data/layer/LayerHandler;Lcom/layar/data/layer/LayerHandler$RestoreTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/layar/data/layer/LayerHandler;->mRestoreTask:Lcom/layar/data/layer/LayerHandler$RestoreTask;

    return-void
.end method

.method public static setFilters(Landroid/net/Uri;Lcom/layar/data/layer/Layer20;)V
    .locals 11
    .parameter "uri"
    .parameter "layer"

    .prologue
    .line 150
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 214
    :cond_0
    return-void

    .line 153
    :cond_1
    const/4 v1, 0x0

    .line 154
    .local v1, searchBoxCount:I
    const/4 v0, 0x0

    .line 155
    .local v0, customSliderCount:I
    iget-object v5, p1, Lcom/layar/data/layer/Layer20;->filters:[Lcom/layar/data/Filter;

    array-length v6, v5

    const/4 v2, 0x0

    move v7, v2

    move v3, v1

    .end local v1           #searchBoxCount:I
    .local v3, searchBoxCount:I
    :goto_0
    if-ge v7, v6, :cond_0

    aget-object v1, v5, v7

    .line 156
    .local v1, filter:Lcom/layar/data/Filter;
    sget-object v2, Lcom/layar/data/Filter;->GEO_FILTER:Lcom/layar/data/Filter;

    if-ne v1, v2, :cond_2

    move v1, v3

    .line 155
    .end local v3           #searchBoxCount:I
    .local v1, searchBoxCount:I
    :goto_1
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    move v3, v1

    .end local v1           #searchBoxCount:I
    .restart local v3       #searchBoxCount:I
    goto :goto_0

    .line 158
    .local v1, filter:Lcom/layar/data/Filter;
    :cond_2
    sget-object v2, Lcom/layar/data/Filter;->RADIUS_FILTER:Lcom/layar/data/Filter;

    if-eq v1, v2, :cond_c

    .line 159
    sget-object v2, Lcom/layar/data/Filter;->KEYWORD_FILTER:Lcom/layar/data/Filter;

    if-ne v1, v2, :cond_3

    move v1, v3

    .line 160
    .end local v3           #searchBoxCount:I
    .local v1, searchBoxCount:I
    goto :goto_1

    .line 163
    .local v1, filter:Lcom/layar/data/Filter;
    .restart local v3       #searchBoxCount:I
    :cond_3
    :try_start_0
    iget-object v2, v1, Lcom/layar/data/Filter;->info:Lorg/json/JSONObject;

    .line 164
    .local v2, filterDetails:Lorg/json/JSONObject;
    const-string v4, "type"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, type:Ljava/lang/String;
    const-string v4, "SEARCHBOX"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 167
    add-int/lit8 v3, v3, 0x1

    .line 168
    const-string v2, "SEARCHBOX"

    .line 169
    .local v2, queryKey:Ljava/lang/String;
    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    .line 170
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .end local v2           #queryKey:Ljava/lang/String;
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 171
    .restart local v2       #queryKey:Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, value:Ljava/lang/String;
    if-eqz v2, :cond_c

    .line 173
    iget-object v1, v1, Lcom/layar/data/Filter;->info:Lorg/json/JSONObject;

    .end local v1           #filter:Lcom/layar/data/Filter;
    const-string v4, "value"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move v1, v3

    .end local v3           #searchBoxCount:I
    .local v1, searchBoxCount:I
    goto :goto_1

    .line 175
    .local v1, filter:Lcom/layar/data/Filter;
    .local v2, type:Ljava/lang/String;
    .restart local v3       #searchBoxCount:I
    :cond_5
    const-string v4, "RADIOLIST"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 176
    const-string v2, "RADIOLIST"

    .end local v2           #type:Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, value:Ljava/lang/String;
    if-eqz v2, :cond_c

    .line 178
    iget-object v1, v1, Lcom/layar/data/Filter;->info:Lorg/json/JSONObject;

    .end local v1           #filter:Lcom/layar/data/Filter;
    const-string v4, "selectedvalue"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move v1, v3

    .end local v3           #searchBoxCount:I
    .local v1, searchBoxCount:I
    goto :goto_1

    .line 180
    .local v1, filter:Lcom/layar/data/Filter;
    .local v2, type:Ljava/lang/String;
    .restart local v3       #searchBoxCount:I
    :cond_6
    const-string v4, "CUSTOM_SLIDER"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 181
    add-int/lit8 v0, v0, 0x1

    .line 182
    const-string v2, "CUSTOM_SLIDER"

    .line 183
    .local v2, queryKey:Ljava/lang/String;
    const/4 v4, 0x1

    if-le v0, v4, :cond_7

    .line 184
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .end local v2           #queryKey:Ljava/lang/String;
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 185
    .restart local v2       #queryKey:Ljava/lang/String;
    :cond_7
    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, value:Ljava/lang/String;
    if-eqz v2, :cond_c

    .line 187
    iget-object v1, v1, Lcom/layar/data/Filter;->info:Lorg/json/JSONObject;

    .end local v1           #filter:Lcom/layar/data/Filter;
    const-string v4, "value"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .end local v2           #value:Ljava/lang/String;
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move v1, v3

    .end local v3           #searchBoxCount:I
    .local v1, searchBoxCount:I
    goto/16 :goto_1

    .line 189
    .local v1, filter:Lcom/layar/data/Filter;
    .local v2, type:Ljava/lang/String;
    .restart local v3       #searchBoxCount:I
    :cond_8
    const-string v4, "CHECKBOXLIST"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 190
    const-string v2, "CHECKBOXLIST"

    .end local v2           #type:Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, selectedCSV:Ljava/lang/String;
    if-eqz v2, :cond_c

    .line 192
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 193
    .local v4, selectionsJSON:Lorg/json/JSONArray;
    const-string v8, ","

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v2, 0x0

    move v10, v2

    .end local v2           #selectedCSV:Ljava/lang/String;
    :goto_2
    if-lt v10, v9, :cond_9

    .line 195
    iget-object v1, v1, Lcom/layar/data/Filter;->info:Lorg/json/JSONObject;

    .end local v1           #filter:Lcom/layar/data/Filter;
    const-string v2, "selectedvalues"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move v1, v3

    .end local v3           #searchBoxCount:I
    .local v1, searchBoxCount:I
    goto/16 :goto_1

    .line 193
    .local v1, filter:Lcom/layar/data/Filter;
    .restart local v3       #searchBoxCount:I
    :cond_9
    aget-object v2, v8, v10

    .line 194
    .local v2, selection:Ljava/lang/String;
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 193
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_2

    .line 197
    .end local v4           #selectionsJSON:Lorg/json/JSONArray;
    .local v2, type:Ljava/lang/String;
    :cond_a
    const-string v4, "RANGE_SLIDER"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .end local v2           #type:Ljava/lang/String;
    if-eqz v2, :cond_c

    .line 198
    const-string v2, "RANGE_SLIDER"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, value:Ljava/lang/String;
    if-nez v2, :cond_b

    .line 200
    const-string v2, "radius"

    .end local v2           #value:Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 201
    .restart local v2       #value:Ljava/lang/String;
    :cond_b
    if-eqz v2, :cond_c

    .line 202
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 203
    .local v2, intValue:I
    iput v2, p1, Lcom/layar/data/layer/Layer20;->scope:I

    .line 204
    iget-object v1, v1, Lcom/layar/data/Filter;->info:Lorg/json/JSONObject;

    .end local v1           #filter:Lcom/layar/data/Filter;
    const-string v4, "value"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v1, v3

    .end local v3           #searchBoxCount:I
    .local v1, searchBoxCount:I
    goto/16 :goto_1

    .line 207
    .end local v1           #searchBoxCount:I
    .end local v2           #intValue:I
    .restart local v3       #searchBoxCount:I
    :catch_0
    move-exception v1

    move v2, v3

    .line 208
    .end local v3           #searchBoxCount:I
    .local v1, jsone:Lorg/json/JSONException;
    .local v2, searchBoxCount:I
    sget-object v3, Lcom/layar/data/layer/LayerHandler;->TAG:Ljava/lang/String;

    const-string v4, "Exception parsing filters"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .end local v2           #searchBoxCount:I
    .local v1, searchBoxCount:I
    goto/16 :goto_1

    .line 209
    .end local v1           #searchBoxCount:I
    .restart local v3       #searchBoxCount:I
    :catch_1
    move-exception v1

    move v2, v3

    .line 210
    .end local v3           #searchBoxCount:I
    .local v1, e:Ljava/lang/Exception;
    .restart local v2       #searchBoxCount:I
    sget-object v3, Lcom/layar/data/layer/LayerHandler;->TAG:Ljava/lang/String;

    const-string v4, "Exception setting filters"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .end local v2           #searchBoxCount:I
    .local v1, searchBoxCount:I
    goto/16 :goto_1

    .local v1, filter:Lcom/layar/data/Filter;
    .restart local v3       #searchBoxCount:I
    :cond_c
    move v1, v3

    .end local v3           #searchBoxCount:I
    .local v1, searchBoxCount:I
    goto/16 :goto_1
.end method


# virtual methods
.method protected checkAutoTrigger()V
    .locals 21

    .prologue
    .line 478
    monitor-enter p0

    .line 479
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerHandler;->mAutoTriggerListener:Lcom/layar/data/layer/LayerHandler$AutoTriggerListener;

    move-object v12, v0

    if-nez v12, :cond_0

    .line 480
    monitor-exit p0

    .line 534
    :goto_0
    return-void

    .line 482
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/layar/data/layer/LayerHandler;->getPOIs()[Lcom/layar/data/POI;

    move-result-object v10

    .line 483
    .local v10, poiList:[Lcom/layar/data/POI;
    if-nez v10, :cond_1

    .line 484
    monitor-exit p0

    goto :goto_0

    .line 478
    .end local v10           #poiList:[Lcom/layar/data/POI;
    :catchall_0
    move-exception v12

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 486
    .restart local v10       #poiList:[Lcom/layar/data/POI;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/layar/data/layer/LayerHandler;->isShowingAutoTrigger:Z

    move v12, v0

    if-eqz v12, :cond_2

    .line 487
    monitor-exit p0

    goto :goto_0

    .line 489
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerHandler;->poiComparator:Lcom/layar/data/BasePOI$PoiComparator;

    move-object v12, v0

    invoke-static {v10, v12}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 491
    const/4 v6, 0x0

    .line 492
    .local v6, isAutotriggerActionStarted:Z
    array-length v12, v10

    const/4 v13, 0x0

    :goto_1
    if-lt v13, v12, :cond_3

    .line 478
    monitor-exit p0

    goto :goto_0

    .line 492
    :cond_3
    aget-object v8, v10, v13

    .line 493
    .local v8, poi:Lcom/layar/data/POI;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/layar/data/layer/LayerHandler;->getCurrentLayer()Lcom/layar/data/layer/Layer20;

    move-result-object v15

    iget-object v15, v15, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v8, Lcom/layar/data/POI;->id:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 494
    .local v9, poiId:Ljava/lang/String;
    iget-object v14, v8, Lcom/layar/data/POI;->actions:[Lcom/layar/data/PoiAction;

    array-length v15, v14

    const/16 v16, 0x0

    :goto_2
    move/from16 v0, v16

    move v1, v15

    if-lt v0, v1, :cond_4

    .line 492
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 494
    :cond_4
    aget-object v5, v14, v16

    .line 496
    .local v5, action:Lcom/layar/data/PoiAction;
    move-object v0, v5

    iget v0, v0, Lcom/layar/data/PoiAction;->autoTriggerRange:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide v19, 0x3ff00068db8bac71L

    mul-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move v7, v0

    .line 497
    .local v7, newAutoTriggerRange:I
    move-object v0, v5

    iget-boolean v0, v0, Lcom/layar/data/PoiAction;->autoTrigger:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    move-object v0, v8

    iget v0, v0, Lcom/layar/data/POI;->geodistance:I

    move/from16 v17, v0

    move/from16 v0, v17

    move v1, v7

    if-gt v0, v1, :cond_5

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerHandler;->autoTriggerHistory:Ljava/util/HashSet;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 499
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/layar/data/layer/LayerHandler;->isFirstAutotriggerStart:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    if-eqz v6, :cond_6

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerHandler;->autoTriggerHistory:Ljava/util/HashSet;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 494
    :cond_5
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 509
    :cond_6
    const/4 v6, 0x1

    .line 511
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerHandler;->mAutoTriggerListener:Lcom/layar/data/layer/LayerHandler$AutoTriggerListener;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerHandler;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    move-object/from16 v17, v0

    .line 513
    invoke-virtual/range {v17 .. v17}, Lcom/layar/data/layer/LayerManager;->getAutoTriggerWarningAllow()Z

    move-result v11

    .line 514
    .local v11, triggerWithoutAsking:Z
    if-nez v11, :cond_7

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerHandler;->autoTriggerHistory:Ljava/util/HashSet;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerHandler;->mAutoTriggerListener:Lcom/layar/data/layer/LayerHandler$AutoTriggerListener;

    move-object/from16 v17, v0

    .line 517
    invoke-virtual/range {p0 .. p0}, Lcom/layar/data/layer/LayerHandler;->getCurrentLayer()Lcom/layar/data/layer/Layer20;

    move-result-object v18

    const/16 v19, 0x0

    .line 516
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v8

    move-object v3, v5

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Lcom/layar/data/ActionHelper;->executeAutoTrigger(Lcom/layar/data/layer/LayerHandler$AutoTriggerListener;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;Lcom/layar/data/PoiAction;Z)V

    goto :goto_3

    .line 525
    .end local v11           #triggerWithoutAsking:Z
    :catch_0
    move-exception v17

    goto :goto_3

    .line 519
    .restart local v11       #triggerWithoutAsking:Z
    :cond_7
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/layar/data/layer/LayerHandler;->setShowingAutoTrigger(Z)V

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerHandler;->autoTriggerHistory:Ljava/util/HashSet;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerHandler;->mAutoTriggerListener:Lcom/layar/data/layer/LayerHandler$AutoTriggerListener;

    move-object/from16 v17, v0

    .line 522
    invoke-virtual/range {p0 .. p0}, Lcom/layar/data/layer/LayerHandler;->getCurrentLayer()Lcom/layar/data/layer/Layer20;

    move-result-object v18

    const/16 v19, 0x1

    .line 521
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v8

    move-object v3, v5

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Lcom/layar/data/ActionHelper;->executeAutoTrigger(Lcom/layar/data/layer/LayerHandler$AutoTriggerListener;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;Lcom/layar/data/PoiAction;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method

.method public clearFocusLock()V
    .locals 5

    .prologue
    .line 929
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler;->mLayer:Lcom/layar/data/layer/Layer20;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler;->focusData:Lcom/layar/data/BasePOI;

    if-eqz v0, :cond_0

    .line 930
    invoke-static {}, Lcom/layar/data/event/EventsManager;->getInstance()Lcom/layar/data/event/EventsManager;

    move-result-object v1

    const/16 v2, 0x29

    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler;->mLayer:Lcom/layar/data/layer/Layer20;

    iget-object v3, v0, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    .line 931
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler;->focusData:Lcom/layar/data/BasePOI;

    check-cast v0, Lcom/layar/data/POI;

    iget-object v0, v0, Lcom/layar/data/POI;->id:Ljava/lang/String;

    iget-object v4, p0, Lcom/layar/data/layer/LayerHandler;->focusData:Lcom/layar/data/BasePOI;

    iget v4, v4, Lcom/layar/data/BasePOI;->geodistance:I

    .line 930
    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/layar/data/event/EventsManager;->add(SLjava/lang/String;Ljava/lang/String;I)V

    .line 933
    :cond_0
    invoke-super {p0}, Lcom/layar/data/POIsContainerHelper;->clearFocusLock()V

    .line 934
    return-void
.end method

.method public forcePOIUpdate(ZLjava/lang/String;)V
    .locals 3
    .parameter "clearCurrentData"
    .parameter "queryParams"

    .prologue
    const/4 v2, 0x0

    .line 363
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler;->mGetPOITask:Lcom/layar/data/layer/LayerHandler$GetPOITask;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler;->mGetPOITask:Lcom/layar/data/layer/LayerHandler$GetPOITask;

    invoke-virtual {v0}, Lcom/layar/data/layer/LayerHandler$GetPOITask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 365
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler;->mGetPOITask:Lcom/layar/data/layer/LayerHandler$GetPOITask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/layar/data/layer/LayerHandler$GetPOITask;->cancel(Z)Z

    .line 366
    iput-object v2, p0, Lcom/layar/data/layer/LayerHandler;->mGetPOITask:Lcom/layar/data/layer/LayerHandler$GetPOITask;

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler;->mRefresher:Lcom/layar/data/layer/LayerRefresher;

    invoke-virtual {v0, p1}, Lcom/layar/data/layer/LayerRefresher;->setFullRefresh(Z)V

    .line 370
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler;->mRefresher:Lcom/layar/data/layer/LayerRefresher;

    invoke-virtual {v0, p2}, Lcom/layar/data/layer/LayerRefresher;->setQueryString(Ljava/lang/String;)V

    .line 372
    if-eqz p1, :cond_1

    .line 373
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/layar/data/POI;

    iput-object v0, p0, Lcom/layar/data/layer/LayerHandler;->dataList:[Lcom/layar/data/POI;

    .line 374
    iput-object v2, p0, Lcom/layar/data/layer/LayerHandler;->focusData:Lcom/layar/data/BasePOI;

    .line 375
    invoke-virtual {p0}, Lcom/layar/data/layer/LayerHandler;->clearFocusLock()V

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler;->mRefresher:Lcom/layar/data/layer/LayerRefresher;

    invoke-virtual {v0}, Lcom/layar/data/layer/LayerRefresher;->refresh()V

    .line 385
    return-void
.end method

.method public getBIWBackgroundColor()I
    .locals 1

    .prologue
    .line 946
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler;->mLayer:Lcom/layar/data/layer/Layer20;

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler;->mLayer:Lcom/layar/data/layer/Layer20;

    iget v0, v0, Lcom/layar/data/layer/Layer20;->biwBgColor:I

    .line 949
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentLayer()Lcom/layar/data/layer/Layer20;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler;->mLayer:Lcom/layar/data/layer/Layer20;

    if-nez v0, :cond_0

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler;->mLayer:Lcom/layar/data/layer/Layer20;

    return-object v0
.end method

.method public getCurrentLayer(Lcom/layar/data/layer/LayerHandler$LayerHandlerListener;)Lcom/layar/data/layer/Layer20;
    .locals 2
    .parameter "listener"

    .prologue
    .line 448
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 449
    :try_start_0
    iget-object v1, p0, Lcom/layar/data/layer/LayerHandler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 450
    iget-object v1, p0, Lcom/layar/data/layer/LayerHandler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    invoke-virtual {p0}, Lcom/layar/data/layer/LayerHandler;->getCurrentLayer()Lcom/layar/data/layer/Layer20;

    move-result-object v0

    return-object v0

    .line 448
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getCurrentPoi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler;->mPoiId:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomCiws()[[Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler;->mLayer:Lcom/layar/data/layer/Layer20;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler;->mLayer:Lcom/layar/data/layer/Layer20;

    invoke-virtual {v0}, Lcom/layar/data/layer/Layer20;->getCustomCiws()[[Landroid/graphics/Bitmap;

    move-result-object v0

    .line 588
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInnerColor()I
    .locals 1

    .prologue
    .line 938
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler;->mLayer:Lcom/layar/data/layer/Layer20;

    if-eqz v0, :cond_0

    .line 939
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler;->mLayer:Lcom/layar/data/layer/Layer20;

    iget v0, v0, Lcom/layar/data/layer/Layer20;->outerColor:I

    .line 941
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getLastFetchTime()J
    .locals 2

    .prologue
    .line 915
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler;->mRefresher:Lcom/layar/data/layer/LayerRefresher;

    invoke-virtual {v0}, Lcom/layar/data/layer/LayerRefresher;->getLastTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPOI(Ljava/lang/String;)Lcom/layar/data/POI;
    .locals 5
    .parameter "poiId"

    .prologue
    .line 570
    iget-object v1, p0, Lcom/layar/data/layer/LayerHandler;->dataList:[Lcom/layar/data/POI;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    .line 574
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 570
    :cond_0
    aget-object v0, v1, v3

    .line 571
    .local v0, poi:Lcom/layar/data/POI;
    iget-object v4, v0, Lcom/layar/data/POI;->id:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, v0

    .line 572
    goto :goto_1

    .line 570
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getPOIs()[Lcom/layar/data/BasePOI;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/layar/data/layer/LayerHandler;->getPOIs()[Lcom/layar/data/POI;

    move-result-object v0

    return-object v0
.end method

.method public getPOIs()[Lcom/layar/data/POI;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler;->dataList:[Lcom/layar/data/POI;

    return-object v0
.end method

.method public getPOIsToDelete()[Lcom/layar/data/BasePOI;
    .locals 1

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler;->poisToDelete:[Lcom/layar/data/POI;

    return-object v0
.end method

.method public getScope()I
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler;->mLayer:Lcom/layar/data/layer/Layer20;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler;->mLayer:Lcom/layar/data/layer/Layer20;

    iget v0, v0, Lcom/layar/data/layer/Layer20;->scope:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasContent()Z
    .locals 1

    .prologue
    .line 910
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler;->mLayer:Lcom/layar/data/layer/Layer20;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public locationChanged(Landroid/location/Location;)V
    .locals 4
    .parameter "location"

    .prologue
    .line 310
    iget-object v2, p0, Lcom/layar/data/layer/LayerHandler;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v2, v2, Lcom/layar/data/layer/LayerManager;->activeViews:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 313
    iget-object v2, p0, Lcom/layar/data/layer/LayerHandler;->mRefresher:Lcom/layar/data/layer/LayerRefresher;

    invoke-virtual {v2, p1}, Lcom/layar/data/layer/LayerRefresher;->check(Landroid/location/Location;)V

    .line 316
    :cond_0
    invoke-virtual {p0}, Lcom/layar/data/layer/LayerHandler;->updateStatus()V

    .line 318
    invoke-virtual {p0}, Lcom/layar/data/layer/LayerHandler;->getPOIs()[Lcom/layar/data/POI;

    move-result-object v0

    .line 319
    .local v0, data:[Lcom/layar/data/POI;
    if-nez v0, :cond_2

    .line 358
    :cond_1
    :goto_0
    return-void

    .line 324
    :cond_2
    iget-object v2, p0, Lcom/layar/data/layer/LayerHandler;->syncLocationUpdate:Ljava/lang/Object;

    monitor-enter v2

    .line 325
    :try_start_0
    iget-boolean v3, p0, Lcom/layar/data/layer/LayerHandler;->isLocationUpdating:Z

    if-eqz v3, :cond_3

    .line 326
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/layar/data/layer/LayerHandler;->restartLocationUpdate:Z

    .line 324
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    monitor-enter p0

    .line 332
    :try_start_1
    iget-object v2, p0, Lcom/layar/data/layer/LayerHandler;->syncLocationUpdate:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 333
    const/4 v3, 0x1

    :try_start_2
    iput-boolean v3, p0, Lcom/layar/data/layer/LayerHandler;->isLocationUpdating:Z

    .line 332
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 335
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    :try_start_3
    array-length v2, v0

    if-lt v1, v2, :cond_4

    .line 347
    iget-object v2, p0, Lcom/layar/data/layer/LayerHandler;->poiComparator:Lcom/layar/data/BasePOI$PoiComparator;

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 329
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 350
    iget-boolean v2, p0, Lcom/layar/data/layer/LayerHandler;->isFirstAutotriggerStart:Z

    if-nez v2, :cond_1

    .line 351
    new-instance v2, Lcom/layar/data/layer/LayerHandler$2;

    invoke-direct {v2, p0}, Lcom/layar/data/layer/LayerHandler$2;-><init>(Lcom/layar/data/layer/LayerHandler;)V

    invoke-static {v2}, Lcom/layar/App;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 324
    .end local v1           #i:I
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 332
    :catchall_1
    move-exception v3

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v3

    .line 329
    :catchall_2
    move-exception v2

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2

    .line 338
    .restart local v1       #i:I
    :cond_4
    :try_start_7
    iget-object v2, p0, Lcom/layar/data/layer/LayerHandler;->syncLocationUpdate:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 339
    :try_start_8
    iget-boolean v3, p0, Lcom/layar/data/layer/LayerHandler;->restartLocationUpdate:Z

    if-eqz v3, :cond_5

    .line 340
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/layar/data/layer/LayerHandler;->isLocationUpdating:Z

    .line 341
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/layar/data/layer/LayerHandler;->restartLocationUpdate:Z

    .line 342
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_0

    .line 338
    :cond_5
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 345
    :try_start_b
    aget-object v2, v0, v1

    invoke-virtual {v2, p1}, Lcom/layar/data/POI;->calcutePosition(Landroid/location/Location;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 335
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 338
    :catchall_3
    move-exception v3

    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
.end method

.method public notifyDataChanged()V
    .locals 4

    .prologue
    .line 899
    invoke-virtual {p0}, Lcom/layar/data/layer/LayerHandler;->updateStatus()V

    .line 901
    iget-object v1, p0, Lcom/layar/data/layer/LayerHandler;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 902
    :try_start_0
    iget-object v2, p0, Lcom/layar/data/layer/LayerHandler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 901
    monitor-exit v1

    .line 906
    return-void

    .line 902
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/data/layer/LayerHandler$LayerHandlerListener;

    .line 903
    .local v0, listener:Lcom/layar/data/layer/LayerHandler$LayerHandlerListener;
    invoke-interface {v0}, Lcom/layar/data/layer/LayerHandler$LayerHandlerListener;->dataChanged()V

    goto :goto_0

    .line 901
    .end local v0           #listener:Lcom/layar/data/layer/LayerHandler$LayerHandlerListener;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public notifyDataUpdateStarted()V
    .locals 4

    .prologue
    .line 888
    iget-object v1, p0, Lcom/layar/data/layer/LayerHandler;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 889
    :try_start_0
    iget-object v2, p0, Lcom/layar/data/layer/LayerHandler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 888
    monitor-exit v1

    .line 893
    return-void

    .line 889
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/data/layer/LayerHandler$LayerHandlerListener;

    .line 890
    .local v0, listener:Lcom/layar/data/layer/LayerHandler$LayerHandlerListener;
    invoke-interface {v0}, Lcom/layar/data/layer/LayerHandler$LayerHandlerListener;->dataUpdateStarted()V

    goto :goto_0

    .line 888
    .end local v0           #listener:Lcom/layar/data/layer/LayerHandler$LayerHandlerListener;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public notifyLayersChanged()V
    .locals 4

    .prologue
    .line 878
    iget-object v1, p0, Lcom/layar/data/layer/LayerHandler;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 879
    :try_start_0
    iget-object v2, p0, Lcom/layar/data/layer/LayerHandler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 878
    monitor-exit v1

    .line 883
    return-void

    .line 879
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/data/layer/LayerHandler$LayerHandlerListener;

    .line 880
    .local v0, listener:Lcom/layar/data/layer/LayerHandler$LayerHandlerListener;
    invoke-interface {v0}, Lcom/layar/data/layer/LayerHandler$LayerHandlerListener;->layerChanged()V

    goto :goto_0

    .line 878
    .end local v0           #listener:Lcom/layar/data/layer/LayerHandler$LayerHandlerListener;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public registerListener(Lcom/layar/data/layer/LayerHandler$LayerHandlerListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 854
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 855
    :try_start_0
    iget-object v1, p0, Lcom/layar/data/layer/LayerHandler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 856
    iget-object v1, p0, Lcom/layar/data/layer/LayerHandler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 857
    :cond_0
    iget-object v1, p0, Lcom/layar/data/layer/LayerHandler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 858
    iget-object v1, p0, Lcom/layar/data/layer/LayerHandler;->mRefresher:Lcom/layar/data/layer/LayerRefresher;

    invoke-virtual {v1}, Lcom/layar/data/layer/LayerRefresher;->start()V

    .line 854
    :cond_1
    monitor-exit v0

    .line 860
    return-void

    .line 854
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAutoTriggerListener(Lcom/layar/data/layer/LayerHandler$AutoTriggerListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 553
    iput-object p1, p0, Lcom/layar/data/layer/LayerHandler;->mAutoTriggerListener:Lcom/layar/data/layer/LayerHandler$AutoTriggerListener;

    .line 554
    if-eqz p1, :cond_0

    .line 555
    new-instance v0, Lcom/layar/data/layer/LayerHandler$4;

    invoke-direct {v0, p0}, Lcom/layar/data/layer/LayerHandler$4;-><init>(Lcom/layar/data/layer/LayerHandler;)V

    .line 560
    const-wide/16 v1, 0x7d0

    .line 555
    invoke-static {v0, v1, v2}, Lcom/layar/App;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    .line 562
    :cond_0
    return-void
.end method

.method public setCurrentLayer(Lcom/layar/data/layer/Layer20;Ljava/lang/String;)V
    .locals 2
    .parameter "layer"
    .parameter "poiId"

    .prologue
    .line 388
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/layar/data/layer/LayerHandler;->setCurrentLayer(Lcom/layar/data/layer/Layer20;ZLjava/lang/String;Landroid/net/Uri;)V

    .line 389
    return-void
.end method

.method public setCurrentLayer(Lcom/layar/data/layer/Layer20;Z)V
    .locals 1
    .parameter "layer"
    .parameter "getPois"

    .prologue
    const/4 v0, 0x0

    .line 392
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/layar/data/layer/LayerHandler;->setCurrentLayer(Lcom/layar/data/layer/Layer20;ZLjava/lang/String;Landroid/net/Uri;)V

    .line 393
    return-void
.end method

.method public setCurrentLayer(Lcom/layar/data/layer/Layer20;ZLjava/lang/String;Landroid/net/Uri;)V
    .locals 6
    .parameter "layer"
    .parameter "getPois"
    .parameter "poiId"
    .parameter "uri"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 396
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler;->mLayer:Lcom/layar/data/layer/Layer20;

    if-eq p1, v0, :cond_1

    .line 397
    invoke-static {}, Lcom/layar/data/ImageCache;->clearPoiImageCache()V

    .line 398
    invoke-static {}, Lcom/layar/data/ImageCache;->clearModelCache()V

    .line 399
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler;->mLayer:Lcom/layar/data/layer/Layer20;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler;->mLayer:Lcom/layar/data/layer/Layer20;

    invoke-virtual {v0}, Lcom/layar/data/layer/Layer20;->clearCustomCiws()V

    .line 403
    :cond_0
    iput-object v5, p0, Lcom/layar/data/layer/LayerHandler;->focusData:Lcom/layar/data/BasePOI;

    .line 404
    iput-boolean v3, p0, Lcom/layar/data/layer/LayerHandler;->focusLock:Z

    .line 407
    :cond_1
    iput-boolean v4, p0, Lcom/layar/data/layer/LayerHandler;->isFirstAutotriggerStart:Z

    .line 409
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler;->mRefresher:Lcom/layar/data/layer/LayerRefresher;

    invoke-virtual {v0}, Lcom/layar/data/layer/LayerRefresher;->init()V

    .line 411
    iput-object p3, p0, Lcom/layar/data/layer/LayerHandler;->mPoiId:Ljava/lang/String;

    .line 412
    iput-object p1, p0, Lcom/layar/data/layer/LayerHandler;->mLayer:Lcom/layar/data/layer/Layer20;

    .line 414
    invoke-static {p4, p1}, Lcom/layar/data/layer/LayerHandler;->setFilters(Landroid/net/Uri;Lcom/layar/data/layer/Layer20;)V

    .line 415
    invoke-virtual {p0, p4}, Lcom/layar/data/layer/LayerHandler;->setShareDialogData(Landroid/net/Uri;)V

    .line 417
    if-nez p1, :cond_4

    .line 429
    :goto_0
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler;->mRefresher:Lcom/layar/data/layer/LayerRefresher;

    invoke-virtual {v0}, Lcom/layar/data/layer/LayerRefresher;->reset()V

    .line 430
    new-array v0, v3, [Lcom/layar/data/POI;

    iput-object v0, p0, Lcom/layar/data/layer/LayerHandler;->dataList:[Lcom/layar/data/POI;

    .line 431
    iput-object v5, p0, Lcom/layar/data/layer/LayerHandler;->focusData:Lcom/layar/data/BasePOI;

    .line 433
    iput-boolean v3, p1, Lcom/layar/data/layer/Layer20;->triedAuthOnce:Z

    .line 434
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler;->autoTriggerHistory:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 436
    if-eqz p2, :cond_3

    iget-boolean v0, p1, Lcom/layar/data/layer/Layer20;->showFilterOnLaunch:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler;->mPoiId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 437
    :cond_2
    invoke-virtual {p0, v4, v5}, Lcom/layar/data/layer/LayerHandler;->forcePOIUpdate(ZLjava/lang/String;)V

    .line 438
    :cond_3
    return-void

    .line 422
    :cond_4
    iget-object v0, p1, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    iget-wide v1, p1, Lcom/layar/data/layer/Layer20;->modified:J

    invoke-static {v0, v1, v2}, Lcom/layar/data/ImageCache;->setLayerModified(Ljava/lang/String;J)Z

    .line 423
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler;->mLayer:Lcom/layar/data/layer/Layer20;

    invoke-virtual {v0}, Lcom/layar/data/layer/Layer20;->initCustomCiws()V

    .line 424
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler;->mLayer:Lcom/layar/data/layer/Layer20;

    iget-boolean v0, v0, Lcom/layar/data/layer/Layer20;->showFilterOnLaunch:Z

    iput-boolean v0, p0, Lcom/layar/data/layer/LayerHandler;->mustShowFilters:Z

    .line 425
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler;->mLayer:Lcom/layar/data/layer/Layer20;

    iget-object v1, p0, Lcom/layar/data/layer/LayerHandler;->mLayer:Lcom/layar/data/layer/Layer20;

    iget-boolean v1, v1, Lcom/layar/data/layer/Layer20;->showFilterOnLaunch:Z

    if-eqz v1, :cond_5

    move v1, v3

    :goto_1
    iput-boolean v1, v0, Lcom/layar/data/layer/Layer20;->poiUpdatesEnabled:Z

    .line 426
    iget-object v0, p1, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/layar/data/layer/LayerHandler;->_saveRestorePoint(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move v1, v4

    .line 425
    goto :goto_1
.end method

.method public setDownloadListener(Lcom/layar/data/DownloadListener;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layar/data/DownloadListener",
            "<",
            "Lcom/layar/data/POI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, downloadListener:Lcom/layar/data/DownloadListener;,"Lcom/layar/data/DownloadListener<Lcom/layar/data/POI;>;"
    iput-object p1, p0, Lcom/layar/data/layer/LayerHandler;->mDownloadListener:Lcom/layar/data/DownloadListener;

    .line 142
    return-void
.end method

.method public setFocus(Lcom/layar/data/BasePOI;)V
    .locals 6
    .parameter "poi"

    .prologue
    .line 920
    invoke-super {p0, p1}, Lcom/layar/data/POIsContainerHelper;->setFocus(Lcom/layar/data/BasePOI;)V

    .line 922
    iget-object v1, p0, Lcom/layar/data/layer/LayerHandler;->mLayer:Lcom/layar/data/layer/Layer20;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 923
    invoke-static {}, Lcom/layar/data/event/EventsManager;->getInstance()Lcom/layar/data/event/EventsManager;

    move-result-object v2

    const/16 v3, 0x28

    iget-object v1, p0, Lcom/layar/data/layer/LayerHandler;->mLayer:Lcom/layar/data/layer/Layer20;

    iget-object v4, v1, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    .line 924
    move-object v0, p1

    check-cast v0, Lcom/layar/data/POI;

    move-object v1, v0

    iget-object v1, v1, Lcom/layar/data/POI;->id:Ljava/lang/String;

    iget v5, p1, Lcom/layar/data/BasePOI;->geodistance:I

    .line 923
    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/layar/data/event/EventsManager;->add(SLjava/lang/String;Ljava/lang/String;I)V

    .line 925
    :cond_0
    return-void
.end method

.method public setShareDialogData(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 221
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/layar/data/ShareDialogData;->isShareMessageAction(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    invoke-static {p1}, Lcom/layar/data/ShareDialogData;->parse(Landroid/net/Uri;)Lcom/layar/data/ShareDialogData;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/data/layer/LayerHandler;->dialogData:Lcom/layar/data/DialogData;

    goto :goto_0
.end method

.method public setShowingAutoTrigger(Z)V
    .locals 3
    .parameter "isShowing"

    .prologue
    .line 537
    monitor-enter p0

    .line 538
    :try_start_0
    iput-boolean p1, p0, Lcom/layar/data/layer/LayerHandler;->isShowingAutoTrigger:Z

    .line 540
    if-nez p1, :cond_0

    .line 541
    new-instance v0, Lcom/layar/data/layer/LayerHandler$3;

    invoke-direct {v0, p0}, Lcom/layar/data/layer/LayerHandler$3;-><init>(Lcom/layar/data/layer/LayerHandler;)V

    .line 546
    const-wide/16 v1, 0x7d0

    .line 541
    invoke-static {v0, v1, v2}, Lcom/layar/App;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    .line 537
    :cond_0
    monitor-exit p0

    .line 549
    return-void

    .line 537
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterListener(Lcom/layar/data/layer/LayerHandler$LayerHandlerListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 866
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 867
    :try_start_0
    iget-object v1, p0, Lcom/layar/data/layer/LayerHandler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 868
    iget-object v1, p0, Lcom/layar/data/layer/LayerHandler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 869
    :cond_0
    iget-object v1, p0, Lcom/layar/data/layer/LayerHandler;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 870
    iget-object v1, p0, Lcom/layar/data/layer/LayerHandler;->mRefresher:Lcom/layar/data/layer/LayerRefresher;

    invoke-virtual {v1}, Lcom/layar/data/layer/LayerRefresher;->stop()V

    .line 866
    :cond_1
    monitor-exit v0

    .line 872
    return-void

    .line 866
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateStatus()V
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler;->mStatus:Lcom/layar/util/StatusHelper;

    invoke-virtual {p0}, Lcom/layar/data/layer/LayerHandler;->getScope()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/layar/util/StatusHelper;->setRange(I)V

    .line 468
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->mSensorHelper:Lcom/layar/util/SensorHelper;

    invoke-virtual {v0}, Lcom/layar/util/SensorHelper;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler;->mStatus:Lcom/layar/util/StatusHelper;

    iget-object v1, p0, Lcom/layar/data/layer/LayerHandler;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v1, v1, Lcom/layar/data/layer/LayerManager;->mSensorHelper:Lcom/layar/util/SensorHelper;

    .line 470
    invoke-virtual {v1}, Lcom/layar/util/SensorHelper;->getCurrentAccuracy()F

    move-result v1

    float-to-int v1, v1

    .line 469
    invoke-virtual {v0, v1}, Lcom/layar/util/StatusHelper;->setAccuracy(I)V

    .line 474
    :goto_0
    return-void

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler;->mStatus:Lcom/layar/util/StatusHelper;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/layar/util/StatusHelper;->setAccuracy(I)V

    goto :goto_0
.end method
