.class public Lcom/layar/data/layer/LayerManager;
.super Ljava/lang/Object;
.source "LayerManager.java"

# interfaces
.implements Lcom/layar/data/layer/LayersType;
.implements Lcom/layar/data/layer/LayerSections;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/data/layer/LayerManager$InternalLayerFoundListener;,
        Lcom/layar/data/layer/LayerManager$LayarView;,
        Lcom/layar/data/layer/LayerManager$LayerFoundListener;,
        Lcom/layar/data/layer/LayerManager$LayerResponse;,
        Lcom/layar/data/layer/LayerManager$LayersResponse;,
        Lcom/layar/data/layer/LayerManager$POIResponse;
    }
.end annotation


# static fields
.field public static ADD_FAVORITE_MODE:Z = false

.field private static final API_PATTERN_COUNTRY:Ljava/lang/String; = "<country>"

.field private static final API_PATTERN_LAYERNAME:Ljava/lang/String; = "<layername>"

.field private static final API_PATTERN_SUBSECTION:Ljava/lang/String; = "<subsection>"

.field private static final API_REST_BOOKMARKLAYER_URL:Ljava/lang/String; = "/layer/api/list/<country>/bookmark/all/"

.field private static final API_REST_CATEGORYLAYER_URL:Ljava/lang/String; = "/layer/api/list/<country>/category/<subsection>/"

.field private static final API_REST_FEATUREDLAYER_URL:Ljava/lang/String; = "/layer/api/list/<country>/featured/<subsection>/"

.field private static final API_REST_GETPOI:Ljava/lang/String; = "/layer/api/pois/<layername>/"

.field private static final API_REST_LAYERDETAIL_URL:Ljava/lang/String; = "/layer/api/detail/<layername>/"

.field private static final API_REST_LOCALLAYER_URL:Ljava/lang/String; = "/layer/api/list/<country>/local/<subsection>/"

.field private static final API_REST_MODIFIEDLAYER_URL:Ljava/lang/String; = "/layer/api/list/<country>/modified/all/"

.field private static final API_REST_NEW_URL:Ljava/lang/String; = "/layer/api/list/<country>/new/all/"

.field private static final API_REST_POPULARLAYER_URL:Ljava/lang/String; = "/layer/api/list/<country>/popular/all/"

.field private static final API_REST_SEARCHLAYER_URL:Ljava/lang/String; = "/layer/api/list/<country>/search/all/"

.field private static final API_REST_YOURSLAYER_URL:Ljava/lang/String; = "/layer/api/list/all/my/<subsection>/"

.field private static final DEFAULT_ACCURACY:I = 0x3e8

.field public static final FAKE_ADD_TO_FAVORITE_LAYERTYPE:I = -0x6e

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/layar/data/layer/LayerManager;


# instance fields
.field private final FAVORITE_SELECTOR:Lcom/layar/data/layer/LayersSelector;

.field private final PURCHASED_SELECTOR:Lcom/layar/data/layer/LayersSelector;

.field activeViews:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/layar/data/layer/LayerManager$LayarView;",
            ">;"
        }
    .end annotation
.end field

.field public defaultView:Lcom/layar/data/layer/LayerManager$LayarView;

.field private final layerDb:Lcom/layar/data/layer/LayerDB20;

.field public layerHandler:Lcom/layar/data/layer/LayerHandler;

.field private final mCacheManager:Lcom/layar/data/layer/LayerCacheManager;

.field private mCommunicator:Lcom/layar/data/layer/LayerCommunicator;

.field private mContext:Landroid/content/Context;

.field private mPageParams:Lcom/layar/data/PaginationParams;

.field private mSelector:Lcom/layar/data/layer/LayersSelector;

.field public mSensorHelper:Lcom/layar/util/SensorHelper;

.field private final mSharedPref:Landroid/content/SharedPreferences;

.field private mUriBuider:Lcom/layar/util/UriHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-class v0, Lcom/layar/data/layer/LayerManager;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/data/layer/LayerManager;->TAG:Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    sput-boolean v0, Lcom/layar/data/layer/LayerManager;->ADD_FAVORITE_MODE:Z

    .line 95
    const/4 v0, 0x0

    sput-object v0, Lcom/layar/data/layer/LayerManager;->sInstance:Lcom/layar/data/layer/LayerManager;

    .line 61
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/layar/data/layer/LayerManager;->activeViews:Ljava/util/Set;

    .line 101
    sget-object v0, Lcom/layar/data/layer/LayerManager$LayarView;->AR:Lcom/layar/data/layer/LayerManager$LayarView;

    iput-object v0, p0, Lcom/layar/data/layer/LayerManager;->defaultView:Lcom/layar/data/layer/LayerManager$LayarView;

    .line 114
    new-instance v0, Lcom/layar/data/PaginationParams;

    invoke-direct {v0}, Lcom/layar/data/PaginationParams;-><init>()V

    iput-object v0, p0, Lcom/layar/data/layer/LayerManager;->mPageParams:Lcom/layar/data/PaginationParams;

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/data/layer/LayerManager;->mSelector:Lcom/layar/data/layer/LayersSelector;

    .line 116
    const-string v0, "my"

    const-string v1, "favorites"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/layar/data/layer/LayersSelector;->getSelector(Ljava/lang/String;Ljava/lang/String;Z)Lcom/layar/data/layer/LayersSelector;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/data/layer/LayerManager;->FAVORITE_SELECTOR:Lcom/layar/data/layer/LayersSelector;

    .line 117
    const-string v0, "my"

    const-string v1, "purchased"

    invoke-static {v0, v1}, Lcom/layar/data/layer/LayersSelector;->getSelector(Ljava/lang/String;Ljava/lang/String;)Lcom/layar/data/layer/LayersSelector;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/data/layer/LayerManager;->PURCHASED_SELECTOR:Lcom/layar/data/layer/LayersSelector;

    .line 120
    iput-object p1, p0, Lcom/layar/data/layer/LayerManager;->mContext:Landroid/content/Context;

    .line 121
    invoke-static {p1}, Lcom/layar/data/layer/LayerDB20;->getInstance(Landroid/content/Context;)Lcom/layar/data/layer/LayerDB20;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/data/layer/LayerManager;->layerDb:Lcom/layar/data/layer/LayerDB20;

    .line 122
    new-instance v0, Lcom/layar/data/layer/LayerCacheManager;

    invoke-direct {v0, p1}, Lcom/layar/data/layer/LayerCacheManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/layar/data/layer/LayerManager;->mCacheManager:Lcom/layar/data/layer/LayerCacheManager;

    .line 124
    invoke-static {p1}, Lcom/layar/util/SensorHelper;->getInstance(Landroid/content/Context;)Lcom/layar/util/SensorHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/data/layer/LayerManager;->mSensorHelper:Lcom/layar/util/SensorHelper;

    .line 126
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/data/layer/LayerManager;->mSharedPref:Landroid/content/SharedPreferences;

    .line 127
    invoke-static {}, Lcom/layar/util/UriHelper;->getInstance()Lcom/layar/util/UriHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/data/layer/LayerManager;->mUriBuider:Lcom/layar/util/UriHelper;

    .line 128
    new-instance v0, Lcom/layar/data/layer/LayerCommunicator;

    invoke-direct {v0, p1}, Lcom/layar/data/layer/LayerCommunicator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/layar/data/layer/LayerManager;->mCommunicator:Lcom/layar/data/layer/LayerCommunicator;

    .line 130
    new-instance v0, Lcom/layar/data/layer/LayerHandler;

    invoke-direct {v0, p0, p1}, Lcom/layar/data/layer/LayerHandler;-><init>(Lcom/layar/data/layer/LayerManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    .line 131
    return-void
.end method

.method static synthetic access$0(Lcom/layar/data/layer/LayerManager;)Lcom/layar/data/layer/LayerCacheManager;
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mCacheManager:Lcom/layar/data/layer/LayerCacheManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/layar/data/layer/LayerManager;)Lcom/layar/data/layer/LayerDB20;
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->layerDb:Lcom/layar/data/layer/LayerDB20;

    return-object v0
.end method

.method static synthetic access$2(Lcom/layar/data/layer/LayerManager;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private appendPageKey(Landroid/net/Uri$Builder;Lcom/layar/data/layer/LayersSelector;)V
    .locals 3
    .parameter "builder"
    .parameter "selector"

    .prologue
    .line 202
    invoke-direct {p0, p2}, Lcom/layar/data/layer/LayerManager;->getParams(Lcom/layar/data/layer/LayersSelector;)Lcom/layar/data/PaginationParams;

    move-result-object v0

    .line 203
    .local v0, params:Lcom/layar/data/PaginationParams;
    iget-object v1, v0, Lcom/layar/data/PaginationParams;->pageKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 204
    const-string v1, "pageKey"

    iget-object v2, v0, Lcom/layar/data/PaginationParams;->pageKey:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 205
    :cond_0
    return-void
.end method

.method public static getLayerManager(Landroid/content/Context;)Lcom/layar/data/layer/LayerManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 134
    sget-object v0, Lcom/layar/data/layer/LayerManager;->sInstance:Lcom/layar/data/layer/LayerManager;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lcom/layar/data/layer/LayerManager;

    invoke-direct {v0, p0}, Lcom/layar/data/layer/LayerManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/layar/data/layer/LayerManager;->sInstance:Lcom/layar/data/layer/LayerManager;

    .line 136
    :cond_0
    sget-object v0, Lcom/layar/data/layer/LayerManager;->sInstance:Lcom/layar/data/layer/LayerManager;

    return-object v0
.end method

.method private getLayers(Landroid/net/Uri;Lcom/layar/data/layer/LayerManager$LayerFoundListener;Lcom/layar/data/PaginationParams;)Lcom/layar/data/layer/LayerManager$LayersResponse;
    .locals 12
    .parameter "uri"
    .parameter "listener"
    .parameter "outParams"

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x3

    .line 943
    invoke-static {}, Lcom/layar/App;->isOnline()Z

    move-result v8

    if-nez v8, :cond_0

    .line 944
    new-instance v8, Lcom/layar/data/layer/LayerManager$LayersResponse;

    const/16 v9, -0xa

    invoke-direct {v8, v9, v11}, Lcom/layar/data/layer/LayerManager$LayersResponse;-><init>(ILjava/util/ArrayList;)V

    .line 971
    :goto_0
    return-object v8

    .line 946
    :cond_0
    new-instance v2, Lcom/layar/data/layer/ResetLayerCacheListener;

    invoke-direct {v2, p2}, Lcom/layar/data/layer/ResetLayerCacheListener;-><init>(Lcom/layar/data/layer/LayerManager$LayerFoundListener;)V

    .line 948
    .local v2, layerListener:Lcom/layar/data/layer/LayerManager$LayerFoundListener;
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 949
    .local v1, get:Lorg/apache/http/client/methods/HttpGet;
    new-instance v4, Ljava/util/ArrayList;

    const/16 v8, 0x14

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 953
    .local v4, layers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/data/layer/Layer20;>;"
    :try_start_0
    new-instance v8, Lorg/apache/http/HttpHost;

    const-string v9, "dev.layar.com"

    invoke-direct {v8, v9}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v1}, Lcom/layar/util/HttpManager;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 954
    .local v5, response:Lorg/apache/http/HttpResponse;
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/layar/util/HttpManager;->responseAsString(Ljava/lang/String;Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v7

    .line 955
    .local v7, responseText:Ljava/lang/String;
    invoke-static {v7, v4, v2, p3}, Lcom/layar/data/layer/LayerManager;->parseLayers(Ljava/lang/String;Ljava/util/ArrayList;Lcom/layar/data/layer/LayerManager$LayerFoundListener;Lcom/layar/data/PaginationParams;)I

    move-result v6

    .line 956
    .local v6, responseCode:I
    if-eqz v6, :cond_1

    .line 957
    if-ne v6, v10, :cond_1

    .line 958
    new-instance v8, Lcom/layar/data/layer/LayerManager$2;

    invoke-direct {v8, p0}, Lcom/layar/data/layer/LayerManager$2;-><init>(Lcom/layar/data/layer/LayerManager;)V

    invoke-static {v8}, Lcom/layar/App;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 966
    :cond_1
    new-instance v3, Lcom/layar/data/layer/LayerManager$LayersResponse;

    invoke-direct {v3, v6, v4}, Lcom/layar/data/layer/LayerManager$LayersResponse;-><init>(ILjava/util/ArrayList;)V

    .line 967
    .local v3, layerResponse:Lcom/layar/data/layer/LayerManager$LayersResponse;
    invoke-virtual {v3, v7}, Lcom/layar/data/layer/LayerManager$LayersResponse;->parseGroups(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v3

    .line 968
    goto :goto_0

    .line 969
    .end local v3           #layerResponse:Lcom/layar/data/layer/LayerManager$LayersResponse;
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    .end local v6           #responseCode:I
    .end local v7           #responseText:Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 971
    .local v0, e:Ljava/io/IOException;
    new-instance v8, Lcom/layar/data/layer/LayerManager$LayersResponse;

    invoke-direct {v8, v10, v11}, Lcom/layar/data/layer/LayerManager$LayersResponse;-><init>(ILjava/util/ArrayList;)V

    goto :goto_0
.end method

.method private getLayers(Lcom/layar/data/layer/LayersSelector;Landroid/location/Location;Landroid/net/Uri;Lcom/layar/data/layer/LayerManager$LayerFoundListener;Lcom/layar/data/PaginationParams;)Lcom/layar/data/layer/LayerManager$LayersResponse;
    .locals 10
    .parameter "selector"
    .parameter "location"
    .parameter "uri"
    .parameter "listener"
    .parameter "outParams"

    .prologue
    .line 816
    iget-object v1, p0, Lcom/layar/data/layer/LayerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 818
    .local v8, resolver:Landroid/content/ContentResolver;
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/layar/data/layer/LayerManager;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " getLayers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 817
    invoke-static {v8, v1}, Lcom/layar/provider/ResolverHelper;->startTransaction(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/layar/util/Profiler$TimeProfile;

    move-result-object v7

    .line 821
    .local v7, profile:Lcom/layar/util/Profiler$TimeProfile;
    if-eqz p5, :cond_2

    iget-object v1, p5, Lcom/layar/data/PaginationParams;->pageKey:Ljava/lang/String;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    move v4, v1

    .line 822
    .local v4, firstPage:Z
    :goto_0
    new-instance v0, Lcom/layar/data/layer/LayerManager$1;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/layar/data/layer/LayerManager$1;-><init>(Lcom/layar/data/layer/LayerManager;Lcom/layar/data/PaginationParams;Lcom/layar/data/layer/LayersSelector;ZLandroid/location/Location;Lcom/layar/data/layer/LayerManager$LayerFoundListener;)V

    .line 853
    .local v0, internalListener:Lcom/layar/data/layer/LayerManager$InternalLayerFoundListener;
    invoke-direct {p0, p3, v0, p5}, Lcom/layar/data/layer/LayerManager;->getLayers(Landroid/net/Uri;Lcom/layar/data/layer/LayerManager$LayerFoundListener;Lcom/layar/data/PaginationParams;)Lcom/layar/data/layer/LayerManager$LayersResponse;

    move-result-object v9

    .line 854
    .local v9, response:Lcom/layar/data/layer/LayerManager$LayersResponse;
    invoke-static {v8, v7}, Lcom/layar/provider/ResolverHelper;->stopTransaction(Landroid/content/ContentResolver;Lcom/layar/util/Profiler$TimeProfile;)V

    .line 858
    iget-boolean v1, v0, Lcom/layar/data/layer/LayerManager$InternalLayerFoundListener;->wasPageUpdated:Z

    if-nez v1, :cond_1

    .line 859
    iget v1, v9, Lcom/layar/data/layer/LayerManager$LayersResponse;->responseCode:I

    if-nez v1, :cond_1

    .line 860
    if-eqz p5, :cond_0

    .line 861
    iget-object v1, p0, Lcom/layar/data/layer/LayerManager;->mCacheManager:Lcom/layar/data/layer/LayerCacheManager;

    iget-boolean v2, p5, Lcom/layar/data/PaginationParams;->hasMorePages:Z

    if-eqz v2, :cond_3

    .line 862
    iget-object v2, p5, Lcom/layar/data/PaginationParams;->pageKey:Ljava/lang/String;

    .line 861
    :goto_1
    invoke-virtual {v1, p1, v2}, Lcom/layar/data/layer/LayerCacheManager;->setPageKey(Lcom/layar/data/layer/LayersSelector;Ljava/lang/String;)V

    .line 864
    :cond_0
    if-eqz v4, :cond_1

    .line 866
    iget-object v1, p0, Lcom/layar/data/layer/LayerManager;->mCacheManager:Lcom/layar/data/layer/LayerCacheManager;

    invoke-virtual {v1, p1, p2}, Lcom/layar/data/layer/LayerCacheManager;->setLastLocation(Lcom/layar/data/layer/LayersSelector;Landroid/location/Location;)V

    .line 867
    iget-object v1, p0, Lcom/layar/data/layer/LayerManager;->mCacheManager:Lcom/layar/data/layer/LayerCacheManager;

    invoke-virtual {v1, p1}, Lcom/layar/data/layer/LayerCacheManager;->setLastUpdateTime(Lcom/layar/data/layer/LayersSelector;)V

    .line 871
    :cond_1
    return-object v9

    .line 821
    .end local v0           #internalListener:Lcom/layar/data/layer/LayerManager$InternalLayerFoundListener;
    .end local v4           #firstPage:Z
    .end local v9           #response:Lcom/layar/data/layer/LayerManager$LayersResponse;
    :cond_2
    const/4 v1, 0x1

    move v4, v1

    goto :goto_0

    .line 862
    .restart local v0       #internalListener:Lcom/layar/data/layer/LayerManager$InternalLayerFoundListener;
    .restart local v4       #firstPage:Z
    .restart local v9       #response:Lcom/layar/data/layer/LayerManager$LayersResponse;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getParams(Lcom/layar/data/layer/LayersSelector;)Lcom/layar/data/PaginationParams;
    .locals 2
    .parameter "selector"

    .prologue
    .line 188
    monitor-enter p0

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mPageParams:Lcom/layar/data/PaginationParams;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mSelector:Lcom/layar/data/layer/LayersSelector;

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    iget-object v1, p0, Lcom/layar/data/layer/LayerManager;->mSelector:Lcom/layar/data/layer/LayersSelector;

    iget-object v1, v1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->subsection:Ljava/lang/String;

    iget-object v1, p0, Lcom/layar/data/layer/LayerManager;->mSelector:Lcom/layar/data/layer/LayersSelector;

    iget-object v1, v1, Lcom/layar/data/layer/LayersSelector;->subsection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->category:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->category:Ljava/lang/String;

    iget-object v1, p0, Lcom/layar/data/layer/LayerManager;->mSelector:Lcom/layar/data/layer/LayersSelector;

    iget-object v1, v1, Lcom/layar/data/layer/LayersSelector;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mPageParams:Lcom/layar/data/PaginationParams;

    monitor-exit p0

    .line 197
    :goto_0
    return-object v0

    .line 195
    :cond_1
    new-instance v0, Lcom/layar/data/PaginationParams;

    invoke-direct {v0}, Lcom/layar/data/PaginationParams;-><init>()V

    iput-object v0, p0, Lcom/layar/data/layer/LayerManager;->mPageParams:Lcom/layar/data/PaginationParams;

    .line 196
    iput-object p1, p0, Lcom/layar/data/layer/LayerManager;->mSelector:Lcom/layar/data/layer/LayersSelector;

    .line 197
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mPageParams:Lcom/layar/data/PaginationParams;

    monitor-exit p0

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initializeFeaturedLayers(Ljava/lang/String;Lcom/layar/data/layer/LayerManager$LayerFoundListener;)I
    .locals 18
    .parameter "subsection"
    .parameter "listener"

    .prologue
    .line 531
    const-string v14, "featured"

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/layar/data/layer/LayersSelector;->getSelector(Ljava/lang/String;Ljava/lang/String;)Lcom/layar/data/layer/LayersSelector;

    move-result-object v13

    .line 533
    .local v13, selector:Lcom/layar/data/layer/LayersSelector;
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    .line 534
    .local v4, builder:Landroid/net/Uri$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->mUriBuider:Lcom/layar/util/UriHelper;

    move-object v14, v0

    const-string v15, "/layer/api/list/<country>/featured/<subsection>/"

    invoke-virtual {v14, v15}, Lcom/layar/util/UriHelper;->fixCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "<subsection>"

    move-object v0, v14

    move-object v1, v15

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->mUriBuider:Lcom/layar/util/UriHelper;

    move-object v14, v0

    invoke-virtual {v14, v4}, Lcom/layar/util/UriHelper;->appendBasicParams(Landroid/net/Uri$Builder;)V

    .line 537
    const/4 v5, 0x0

    .line 538
    .local v5, count:I
    new-instance v9, Lcom/layar/data/PaginationParams;

    invoke-direct {v9}, Lcom/layar/data/PaginationParams;-><init>()V

    .line 539
    .local v9, pagination:Lcom/layar/data/PaginationParams;
    const/4 v8, 0x0

    .line 540
    .local v8, lastResponseCode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->mContext:Landroid/content/Context;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 542
    .local v11, resolver:Landroid/content/ContentResolver;
    new-instance v14, Ljava/lang/StringBuilder;

    sget-object v15, Lcom/layar/data/layer/LayerManager;->TAG:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, " initializeFeaturedLayers"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 541
    invoke-static {v11, v14}, Lcom/layar/provider/ResolverHelper;->startTransaction(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/layar/util/Profiler$TimeProfile;

    move-result-object v10

    .line 544
    .local v10, profile:Lcom/layar/util/Profiler$TimeProfile;
    :cond_0
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, p2

    move-object v3, v9

    invoke-direct {v0, v1, v2, v3}, Lcom/layar/data/layer/LayerManager;->getLayers(Landroid/net/Uri;Lcom/layar/data/layer/LayerManager$LayerFoundListener;Lcom/layar/data/PaginationParams;)Lcom/layar/data/layer/LayerManager$LayersResponse;

    move-result-object v12

    .line 545
    .local v12, response:Lcom/layar/data/layer/LayerManager$LayersResponse;
    iget v8, v12, Lcom/layar/data/layer/LayerManager$LayersResponse;->responseCode:I

    .line 546
    iget v14, v12, Lcom/layar/data/layer/LayerManager$LayersResponse;->responseCode:I

    if-nez v14, :cond_2

    .line 547
    if-nez v5, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->layerDb:Lcom/layar/data/layer/LayerDB20;

    move-object v14, v0

    invoke-virtual {v14, v13}, Lcom/layar/data/layer/LayerDB20;->clear(Lcom/layar/data/layer/LayersSelector;)V

    .line 548
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->layerDb:Lcom/layar/data/layer/LayerDB20;

    move-object v14, v0

    iget-object v15, v12, Lcom/layar/data/layer/LayerManager$LayersResponse;->layers:Ljava/util/ArrayList;

    invoke-virtual {v14, v13, v15}, Lcom/layar/data/layer/LayerDB20;->addLayers(Lcom/layar/data/layer/LayersSelector;Ljava/util/List;)V

    .line 550
    iget-object v14, v12, Lcom/layar/data/layer/LayerManager$LayersResponse;->layers:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_5

    .line 553
    iget-object v14, v12, Lcom/layar/data/layer/LayerManager$LayersResponse;->layers:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/2addr v5, v14

    .line 554
    const-string v14, "pageKey"

    iget-object v15, v9, Lcom/layar/data/PaginationParams;->pageKey:Ljava/lang/String;

    invoke-virtual {v4, v14, v15}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 557
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->mContext:Landroid/content/Context;

    move-object v14, v0

    iget-object v15, v12, Lcom/layar/data/layer/LayerManager$LayersResponse;->groups:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->layerDb:Lcom/layar/data/layer/LayerDB20;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Lcom/layar/data/layer/GroupsManager;->saveGroups(Landroid/content/Context;Ljava/util/ArrayList;Lcom/layar/data/layer/LayerDB20;)V

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->mCacheManager:Lcom/layar/data/layer/LayerCacheManager;

    move-object v14, v0

    invoke-virtual {v14, v13}, Lcom/layar/data/layer/LayerCacheManager;->isReseted(Lcom/layar/data/layer/LayersSelector;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 563
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/layar/data/layer/LayerManager;->isCurrentSelector(Lcom/layar/data/layer/LayersSelector;)Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->mCacheManager:Lcom/layar/data/layer/LayerCacheManager;

    move-object v14, v0

    invoke-virtual {v14, v13}, Lcom/layar/data/layer/LayerCacheManager;->isReseted(Lcom/layar/data/layer/LayersSelector;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->mSensorHelper:Lcom/layar/util/SensorHelper;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/layar/util/SensorHelper;->getCurrentLocation()Landroid/location/Location;

    move-result-object v6

    .line 565
    .local v6, curLoc:Landroid/location/Location;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->mCacheManager:Lcom/layar/data/layer/LayerCacheManager;

    move-object v14, v0

    invoke-virtual {v14, v13, v6}, Lcom/layar/data/layer/LayerCacheManager;->setLastLocation(Lcom/layar/data/layer/LayersSelector;Landroid/location/Location;)V

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->mCacheManager:Lcom/layar/data/layer/LayerCacheManager;

    move-object v14, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    move-object v0, v14

    move-object v1, v13

    move-wide v2, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/layar/data/layer/LayerCacheManager;->setLastUpdateTime(Lcom/layar/data/layer/LayersSelector;J)V

    .line 568
    .end local v6           #curLoc:Landroid/location/Location;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->layerDb:Lcom/layar/data/layer/LayerDB20;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/layar/data/layer/LayerDB20;->cleanDatabase()V

    .line 569
    invoke-static {v11, v10}, Lcom/layar/provider/ResolverHelper;->stopTransaction(Landroid/content/ContentResolver;Lcom/layar/util/Profiler$TimeProfile;)V

    .line 570
    return v8

    .line 550
    :cond_5
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/layar/data/layer/Layer20;

    .line 551
    .local v7, l:Lcom/layar/data/layer/Layer20;
    iget-object v15, v7, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    move-object v0, v7

    iget-wide v0, v0, Lcom/layar/data/layer/Layer20;->modified:J

    move-wide/from16 v16, v0

    invoke-static/range {v15 .. v17}, Lcom/layar/data/ImageCache;->setLayerModified(Ljava/lang/String;J)Z

    goto :goto_0

    .line 561
    .end local v7           #l:Lcom/layar/data/layer/Layer20;
    :cond_6
    iget-boolean v14, v9, Lcom/layar/data/PaginationParams;->hasMorePages:Z

    if-eqz v14, :cond_3

    if-eqz v8, :cond_0

    goto :goto_1
.end method

.method public static mapSusectionIdToApiKey(I)Ljava/lang/String;
    .locals 3
    .parameter "id"

    .prologue
    const v1, 0x7f090085

    .line 1401
    const v0, 0x7f09008b

    if-ne p0, v0, :cond_0

    .line 1402
    const-string v0, "all"

    .line 1421
    :goto_0
    return-object v0

    .line 1403
    :cond_0
    const v0, 0x7f09008d

    if-ne p0, v0, :cond_1

    .line 1404
    const-string v0, "free"

    goto :goto_0

    .line 1405
    :cond_1
    const v0, 0x7f09008c

    if-ne p0, v0, :cond_2

    .line 1406
    const-string v0, "paid"

    goto :goto_0

    .line 1407
    :cond_2
    const v0, 0x7f090081

    if-ne p0, v0, :cond_3

    .line 1408
    const-string v0, "favorites"

    goto :goto_0

    .line 1409
    :cond_3
    const v0, 0x7f09008e

    if-ne p0, v0, :cond_4

    .line 1410
    const-string v0, "dev"

    goto :goto_0

    .line 1411
    :cond_4
    const v0, 0x7f09008f

    if-ne p0, v0, :cond_5

    .line 1412
    const-string v0, "purchased"

    goto :goto_0

    .line 1413
    :cond_5
    const v0, 0x7f090087

    if-ne p0, v0, :cond_6

    .line 1414
    const-string v0, "nearby"

    goto :goto_0

    .line 1415
    :cond_6
    if-ne p0, v1, :cond_7

    .line 1416
    const-string v0, "local"

    goto :goto_0

    .line 1417
    :cond_7
    const v0, 0x7f090086

    if-ne p0, v0, :cond_8

    .line 1418
    const-string v0, "intl"

    goto :goto_0

    .line 1420
    :cond_8
    if-ne p0, v1, :cond_9

    .line 1421
    const-string v0, "all"

    goto :goto_0

    .line 1423
    :cond_9
    new-instance v0, Ljava/util/UnknownFormatConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t find correct value for string id ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseLayers(Ljava/lang/String;Ljava/util/ArrayList;Lcom/layar/data/layer/LayerManager$LayerFoundListener;)I
    .locals 1
    .parameter "jsonText"
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/data/layer/Layer20;",
            ">;",
            "Lcom/layar/data/layer/LayerManager$LayerFoundListener;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1316
    .local p1, layers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/data/layer/Layer20;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/layar/data/layer/LayerManager;->parseLayers(Ljava/lang/String;Ljava/util/ArrayList;Lcom/layar/data/layer/LayerManager$LayerFoundListener;Lcom/layar/data/PaginationParams;)I

    move-result v0

    return v0
.end method

.method private static parseLayers(Ljava/lang/String;Ljava/util/ArrayList;Lcom/layar/data/layer/LayerManager$LayerFoundListener;Lcom/layar/data/PaginationParams;)I
    .locals 10
    .parameter "jsonText"
    .parameter
    .parameter "listener"
    .parameter "outParams"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/data/layer/Layer20;",
            ">;",
            "Lcom/layar/data/layer/LayerManager$LayerFoundListener;",
            "Lcom/layar/data/PaginationParams;",
            ")I"
        }
    .end annotation

    .prologue
    .local p1, layers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/data/layer/Layer20;>;"
    const/4 v9, 0x0

    .line 1333
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1335
    .local v4, jsonObj:Lorg/json/JSONObject;
    const-string v8, "responseCode"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 1336
    .local v6, responseCode:I
    if-eqz v6, :cond_1

    .line 1337
    if-eqz p3, :cond_0

    const/4 v8, 0x0

    iput-boolean v8, p3, Lcom/layar/data/PaginationParams;->hasMorePages:Z

    :cond_0
    move v8, v6

    .line 1368
    .end local v4           #jsonObj:Lorg/json/JSONObject;
    .end local v6           #responseCode:I
    :goto_0
    return v8

    .line 1341
    .restart local v4       #jsonObj:Lorg/json/JSONObject;
    .restart local v6       #responseCode:I
    :cond_1
    if-eqz p3, :cond_2

    .line 1344
    const-string v8, "morePages"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p3, Lcom/layar/data/PaginationParams;->hasMorePages:Z

    .line 1345
    iget-boolean v8, p3, Lcom/layar/data/PaginationParams;->hasMorePages:Z

    if-eqz v8, :cond_4

    .line 1346
    const-string v8, "nextPageKey"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p3, Lcom/layar/data/PaginationParams;->pageKey:Ljava/lang/String;

    .line 1352
    :cond_2
    :goto_1
    const-string v8, "layers"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1353
    .local v3, jsonAry:Lorg/json/JSONArray;
    if-nez v3, :cond_3

    .line 1354
    const-string v8, "results"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1355
    :cond_3
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    move v7, v8

    .line 1356
    .local v7, size:I
    :goto_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    if-lt v1, v7, :cond_6

    move v8, v9

    .line 1365
    goto :goto_0

    .line 1348
    .end local v1           #i:I
    .end local v3           #jsonAry:Lorg/json/JSONArray;
    .end local v7           #size:I
    :cond_4
    const/4 v8, 0x0

    iput-object v8, p3, Lcom/layar/data/PaginationParams;->pageKey:Ljava/lang/String;

    goto :goto_1

    .line 1366
    .end local v4           #jsonObj:Lorg/json/JSONObject;
    .end local v6           #responseCode:I
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 1368
    .local v0, e:Ljava/lang/Exception;
    const/4 v8, -0x3

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #jsonAry:Lorg/json/JSONArray;
    .restart local v4       #jsonObj:Lorg/json/JSONObject;
    .restart local v6       #responseCode:I
    :cond_5
    move v7, v9

    .line 1355
    goto :goto_2

    .line 1357
    .restart local v1       #i:I
    .restart local v7       #size:I
    :cond_6
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1358
    .local v2, json:Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/layar/data/layer/Layer20;->parseLayer(Lorg/json/JSONObject;)Lcom/layar/data/layer/Layer20;

    move-result-object v5

    .line 1359
    .local v5, layer:Lcom/layar/data/layer/Layer20;
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1361
    if-eqz p2, :cond_7

    .line 1362
    invoke-interface {p2, v5, p1}, Lcom/layar/data/layer/LayerManager$LayerFoundListener;->onLayerFound(Lcom/layar/data/layer/Layer20;Ljava/util/ArrayList;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1356
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public static reportLayerProblem(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "layerTitle"

    .prologue
    .line 1427
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1428
    .local v1, reportIntent:Landroid/content/Intent;
    const-string v3, "plain/text"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1429
    const-string v3, "android.intent.extra.EMAIL"

    .line 1430
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const v6, 0x7f090004

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1429
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1431
    const v3, 0x7f09018e

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1432
    .local v2, subject:Ljava/lang/String;
    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1433
    const v3, 0x7f090006

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1434
    .local v0, message:Ljava/lang/String;
    const-string v3, "%layername%"

    invoke-virtual {v0, v3, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1435
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1436
    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1437
    return-void
.end method

.method private restorePageKey(Lcom/layar/data/layer/LayersSelector;)V
    .locals 3
    .parameter "selector"

    .prologue
    .line 879
    iget-object v1, p0, Lcom/layar/data/layer/LayerManager;->mCacheManager:Lcom/layar/data/layer/LayerCacheManager;

    invoke-virtual {v1, p1}, Lcom/layar/data/layer/LayerCacheManager;->getPageKey(Lcom/layar/data/layer/LayersSelector;)Ljava/lang/String;

    move-result-object v0

    .line 884
    .local v0, pageKey:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 889
    :goto_0
    return-void

    .line 886
    :cond_0
    invoke-direct {p0, p1}, Lcom/layar/data/layer/LayerManager;->getParams(Lcom/layar/data/layer/LayersSelector;)Lcom/layar/data/PaginationParams;

    move-result-object v1

    iput-object v1, p0, Lcom/layar/data/layer/LayerManager;->mPageParams:Lcom/layar/data/PaginationParams;

    .line 887
    iget-object v1, p0, Lcom/layar/data/layer/LayerManager;->mPageParams:Lcom/layar/data/PaginationParams;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/layar/data/PaginationParams;->hasMorePages:Z

    .line 888
    iget-object v1, p0, Lcom/layar/data/layer/LayerManager;->mPageParams:Lcom/layar/data/PaginationParams;

    iput-object v0, v1, Lcom/layar/data/PaginationParams;->pageKey:Ljava/lang/String;

    goto :goto_0
.end method

.method private updateModifiedBookmarkLayers()V
    .locals 13

    .prologue
    const/4 v4, 0x0

    .line 704
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->layerDb:Lcom/layar/data/layer/LayerDB20;

    iget-object v1, p0, Lcom/layar/data/layer/LayerManager;->FAVORITE_SELECTOR:Lcom/layar/data/layer/LayersSelector;

    invoke-virtual {v0, v1, v4}, Lcom/layar/data/layer/LayerDB20;->getLayers(Lcom/layar/data/layer/LayersSelector;Lcom/layar/data/layer/LayerManager$LayerFoundListener;)Ljava/util/ArrayList;

    move-result-object v8

    .line 707
    .local v8, favorites:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/data/layer/Layer20;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 708
    .local v7, count:I
    if-nez v7, :cond_0

    .line 731
    :goto_0
    return-void

    .line 711
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 712
    .local v10, ids:Ljava/lang/StringBuilder;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 713
    .local v12, modified:Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-lt v9, v7, :cond_1

    .line 723
    new-instance v6, Landroid/net/Uri$Builder;

    invoke-direct {v6}, Landroid/net/Uri$Builder;-><init>()V

    .line 724
    .local v6, builder:Landroid/net/Uri$Builder;
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mUriBuider:Lcom/layar/util/UriHelper;

    const-string v1, "/layer/api/list/<country>/modified/all/"

    invoke-virtual {v0, v1}, Lcom/layar/util/UriHelper;->fixCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 725
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mUriBuider:Lcom/layar/util/UriHelper;

    invoke-virtual {v0, v6}, Lcom/layar/util/UriHelper;->appendBasicParams(Landroid/net/Uri$Builder;)V

    .line 726
    const-string v0, "layerIds"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 727
    const-string v0, "modifiedDates"

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 729
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mSensorHelper:Lcom/layar/util/SensorHelper;

    invoke-virtual {v0}, Lcom/layar/util/SensorHelper;->getCurrentLocation()Landroid/location/Location;

    move-result-object v2

    .line 730
    .local v2, curLoc:Landroid/location/Location;
    iget-object v1, p0, Lcom/layar/data/layer/LayerManager;->FAVORITE_SELECTOR:Lcom/layar/data/layer/LayersSelector;

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/layar/data/layer/LayerManager;->getLayers(Lcom/layar/data/layer/LayersSelector;Landroid/location/Location;Landroid/net/Uri;Lcom/layar/data/layer/LayerManager$LayerFoundListener;Lcom/layar/data/PaginationParams;)Lcom/layar/data/layer/LayerManager$LayersResponse;

    goto :goto_0

    .line 714
    .end local v2           #curLoc:Landroid/location/Location;
    .end local v6           #builder:Landroid/net/Uri$Builder;
    :cond_1
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/layar/data/layer/Layer20;

    .line 715
    .local v11, layer:Lcom/layar/data/layer/Layer20;
    iget-object v0, v11, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    iget-wide v0, v11, Lcom/layar/data/layer/Layer20;->modified:J

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 717
    const/4 v0, 0x1

    sub-int v0, v7, v0

    if-ge v9, v0, :cond_2

    .line 718
    const-string v0, ","

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    const-string v0, ","

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method


# virtual methods
.method public addBookmark(Lcom/layar/data/layer/Layer20;)V
    .locals 2
    .parameter "layer"

    .prologue
    .line 774
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->layerDb:Lcom/layar/data/layer/LayerDB20;

    iget-object v1, p0, Lcom/layar/data/layer/LayerManager;->FAVORITE_SELECTOR:Lcom/layar/data/layer/LayersSelector;

    invoke-virtual {v0, v1, p1}, Lcom/layar/data/layer/LayerDB20;->addLayer(Lcom/layar/data/layer/LayersSelector;Lcom/layar/data/layer/Layer20;)V

    .line 775
    return-void
.end method

.method public addFavorites(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/data/layer/Layer20;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 692
    .local p1, layers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/data/layer/Layer20;>;"
    iget-object v2, p0, Lcom/layar/data/layer/LayerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 694
    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/layar/data/layer/LayerManager;->TAG:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " addFavorites"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 693
    invoke-static {v1, v2}, Lcom/layar/provider/ResolverHelper;->startTransaction(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/layar/util/Profiler$TimeProfile;

    move-result-object v0

    .line 695
    .local v0, profile:Lcom/layar/util/Profiler$TimeProfile;
    iget-object v2, p0, Lcom/layar/data/layer/LayerManager;->layerDb:Lcom/layar/data/layer/LayerDB20;

    iget-object v3, p0, Lcom/layar/data/layer/LayerManager;->FAVORITE_SELECTOR:Lcom/layar/data/layer/LayersSelector;

    invoke-virtual {v2, v3, p1}, Lcom/layar/data/layer/LayerDB20;->addLayers(Lcom/layar/data/layer/LayersSelector;Ljava/util/List;)V

    .line 696
    invoke-static {v1, v0}, Lcom/layar/provider/ResolverHelper;->stopTransaction(Landroid/content/ContentResolver;Lcom/layar/util/Profiler$TimeProfile;)V

    .line 697
    return-void
.end method

.method public cleanupRecent()V
    .locals 9

    .prologue
    const/16 v8, 0x32

    const/4 v3, 0x0

    .line 1440
    iget-object v1, p0, Lcom/layar/data/layer/LayerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1442
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/layar/provider/LayarProvider;->RECENT_LAYER_CONTENT_URI:Landroid/net/Uri;

    .line 1443
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Lcom/layar/provider/RecentLayerAlias;->_ID:Lcom/layar/provider/RecentLayerAlias;

    iget-object v5, v5, Lcom/layar/provider/RecentLayerAlias;->fullColumn:Ljava/lang/String;

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    .line 1441
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1444
    .local v6, countCursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-le v1, v8, :cond_0

    .line 1445
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/layar/provider/RecentLayerAlias;->_ID:Lcom/layar/provider/RecentLayerAlias;

    iget-object v2, v2, Lcom/layar/provider/RecentLayerAlias;->fullColumn:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " NOT IN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1446
    const-string v2, "( SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/layar/provider/RecentLayerAlias;->_ID:Lcom/layar/provider/RecentLayerAlias;

    iget-object v2, v2, Lcom/layar/provider/RecentLayerAlias;->fullColumn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1447
    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "recent_layers"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ORDER BY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1448
    sget-object v2, Lcom/layar/provider/RecentLayerAlias;->RECENT_DATE:Lcom/layar/provider/RecentLayerAlias;

    iget-object v2, v2, Lcom/layar/provider/RecentLayerAlias;->fullColumn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DESC, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1449
    sget-object v2, Lcom/layar/provider/RecentLayerAlias;->_ID:Lcom/layar/provider/RecentLayerAlias;

    iget-object v2, v2, Lcom/layar/provider/RecentLayerAlias;->fullColumn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DESC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LIMIT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1450
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1445
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1451
    .local v7, selection:Ljava/lang/String;
    sget-object v1, Lcom/layar/provider/LayarProvider;->RECENT_LAYER_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v7, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1456
    .end local v7           #selection:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public clearBookmarks()V
    .locals 2

    .prologue
    .line 790
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->layerDb:Lcom/layar/data/layer/LayerDB20;

    iget-object v1, p0, Lcom/layar/data/layer/LayerManager;->FAVORITE_SELECTOR:Lcom/layar/data/layer/LayersSelector;

    invoke-virtual {v0, v1}, Lcom/layar/data/layer/LayerDB20;->clear(Lcom/layar/data/layer/LayersSelector;)V

    .line 791
    return-void
.end method

.method fetchPOI(Lcom/layar/data/layer/Layer20;Ljava/util/ArrayList;Ljava/lang/String;Landroid/location/Location;Ljava/util/Map;)Lcom/layar/data/layer/LayerManager$POIResponse;
    .locals 29
    .parameter "layer"
    .parameter
    .parameter "pageKey"
    .parameter "curLoc"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/layar/data/layer/Layer20;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/data/POI;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/location/Location;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/layar/data/layer/LayerManager$POIResponse;"
        }
    .end annotation

    .prologue
    .line 1161
    .local p2, tempPOIList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/data/POI;>;"
    .local p5, queryParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 1163
    const/16 v24, 0x0

    .line 1302
    .end local p3
    :goto_0
    return-object v24

    .line 1166
    .restart local p3
    :cond_0
    invoke-static {}, Lcom/layar/App;->isOnline()Z

    move-result v24

    if-nez v24, :cond_1

    .line 1168
    new-instance v24, Lcom/layar/data/layer/LayerManager$POIResponse;

    const/16 v25, -0xa

    invoke-direct/range {v24 .. v25}, Lcom/layar/data/layer/LayerManager$POIResponse;-><init>(I)V

    goto :goto_0

    .line 1172
    :cond_1
    new-instance v6, Landroid/net/Uri$Builder;

    invoke-direct {v6}, Landroid/net/Uri$Builder;-><init>()V

    .line 1173
    .local v6, builder:Landroid/net/Uri$Builder;
    const-string v24, "/layer/api/pois/<layername>/"

    const-string v25, "<layername>"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v24

    move-object v0, v6

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->mUriBuider:Lcom/layar/util/UriHelper;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/layar/util/UriHelper;->appendBasicParams(Landroid/net/Uri$Builder;)V

    .line 1175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/layar/data/layer/LayerHandler;->getCurrentPoi()Ljava/lang/String;

    move-result-object v16

    .line 1176
    .local v16, poiId:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_2

    .line 1177
    const-string v24, "requestedPoiId"

    move-object v0, v6

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1180
    :cond_2
    if-eqz p3, :cond_3

    .line 1181
    const-string v24, "pageKey"

    move-object v0, v6

    move-object/from16 v1, v24

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1183
    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/layar/data/layer/Layer20;->filters:[Lcom/layar/data/Filter;

    move-object/from16 v24, v0

    if-nez v24, :cond_4

    .line 1185
    const/16 v24, 0x0

    goto :goto_0

    .line 1188
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->mUriBuider:Lcom/layar/util/UriHelper;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object v1, v6

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/layar/util/UriHelper;->appendLocationParams(Landroid/net/Uri$Builder;Landroid/location/Location;)Landroid/net/Uri$Builder;

    .line 1189
    const/16 v19, 0x0

    .line 1190
    .local v19, searchBoxCount:I
    const/4 v9, 0x0

    .line 1191
    .local v9, customSliderCount:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/layar/data/layer/Layer20;->filters:[Lcom/layar/data/Filter;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x0

    :goto_1
    move/from16 v0, v26

    move/from16 v1, v25

    if-lt v0, v1, :cond_9

    .line 1237
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/layar/data/layer/Layer20;->flexibleRadius:Z

    move/from16 v24, v0

    if-nez v24, :cond_5

    .line 1238
    const-string v24, "radius"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget v0, v0, Lcom/layar/data/layer/Layer20;->scope:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object v0, v6

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1239
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->mSensorHelper:Lcom/layar/util/SensorHelper;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/layar/util/SensorHelper;->hasAccuracy()Z

    move-result v24

    if-eqz v24, :cond_13

    .line 1240
    const-string v24, "accuracy"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->mSensorHelper:Lcom/layar/util/SensorHelper;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/layar/util/SensorHelper;->getCurrentAccuracy()F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    move-object v0, v6

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1244
    :goto_2
    const/4 v5, 0x0

    .line 1245
    .local v5, actionFound:Z
    if-eqz p5, :cond_6

    .line 1246
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .end local p3
    :goto_3
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-nez v25, :cond_14

    .line 1252
    :cond_6
    if-nez v5, :cond_7

    .line 1253
    const-string v24, "action"

    const-string v25, "refresh"

    move-object v0, v6

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1255
    :cond_7
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v23

    .line 1257
    .local v23, uri:Landroid/net/Uri;
    new-instance v12, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v24

    move-object v0, v12

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1258
    .local v12, get:Lorg/apache/http/client/methods/HttpGet;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/layar/data/layer/Layer20;->authURL:Ljava/lang/String;

    move-object/from16 v24, v0

    if-eqz v24, :cond_8

    .line 1259
    invoke-static {}, Lcom/layar/util/CookieStore;->get()Lcom/layar/util/CookieStore;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/layar/data/layer/Layer20;->poiDomainURL:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/layar/util/CookieStore;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1261
    .local v7, cookies:Ljava/lang/String;
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_8

    .line 1262
    const-string v24, "X-Layar-Dev-Cookies"

    move-object v0, v12

    move-object/from16 v1, v24

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    const-string v24, "Cookie"

    move-object v0, v12

    move-object/from16 v1, v24

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    .end local v7           #cookies:Ljava/lang/String;
    :cond_8
    :try_start_0
    new-instance v17, Lcom/layar/data/layer/LayerManager$POIResponse;

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/layar/data/layer/LayerManager$POIResponse;-><init>(I)V

    .line 1269
    .local v17, poiResponse:Lcom/layar/data/layer/LayerManager$POIResponse;
    new-instance v24, Lorg/apache/http/HttpHost;

    const-string v25, "dev.layar.com"

    invoke-direct/range {v24 .. v25}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;)V

    .line 1270
    new-instance v25, Lcom/layar/data/layer/LayerManager$3;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/layar/data/layer/LayerManager$3;-><init>(Lcom/layar/data/layer/LayerManager;Lcom/layar/data/layer/LayerManager$POIResponse;Ljava/util/ArrayList;Lcom/layar/data/layer/Layer20;)V

    .line 1269
    move-object/from16 v0, v24

    move-object v1, v12

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/layar/util/HttpManager;->executeRequest(Lorg/apache/http/HttpHost;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/layar/util/HttpManager$ResponseHandler;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v24, v17

    .line 1298
    goto/16 :goto_0

    .line 1191
    .end local v5           #actionFound:Z
    .end local v12           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v17           #poiResponse:Lcom/layar/data/layer/LayerManager$POIResponse;
    .end local v23           #uri:Landroid/net/Uri;
    .restart local p3
    :cond_9
    aget-object v10, v24, v26

    .line 1192
    .local v10, filter:Lcom/layar/data/Filter;
    sget-object v27, Lcom/layar/data/Filter;->GEO_FILTER:Lcom/layar/data/Filter;

    move-object v0, v10

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_b

    .line 1191
    :cond_a
    :goto_4
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_1

    .line 1194
    :cond_b
    sget-object v27, Lcom/layar/data/Filter;->RADIUS_FILTER:Lcom/layar/data/Filter;

    move-object v0, v10

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_a

    sget-object v27, Lcom/layar/data/Filter;->KEYWORD_FILTER:Lcom/layar/data/Filter;

    move-object v0, v10

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_a

    .line 1198
    :try_start_1
    iget-object v11, v10, Lcom/layar/data/Filter;->info:Lorg/json/JSONObject;

    .line 1199
    .local v11, filterDetails:Lorg/json/JSONObject;
    const-string v27, "type"

    move-object v0, v11

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1201
    .local v22, type:Ljava/lang/String;
    const-string v27, "SEARCHBOX"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_d

    .line 1202
    add-int/lit8 v19, v19, 0x1

    .line 1203
    const-string v27, "value"

    move-object v0, v11

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 1204
    const-string v18, "SEARCHBOX"

    .line 1205
    .local v18, queryKey:Ljava/lang/String;
    const/16 v27, 0x1

    move/from16 v0, v19

    move/from16 v1, v27

    if-le v0, v1, :cond_c

    .line 1206
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, "_"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1207
    :cond_c
    const-string v27, "value"

    move-object v0, v11

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object v0, v6

    move-object/from16 v1, v18

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 1231
    .end local v11           #filterDetails:Lorg/json/JSONObject;
    .end local v18           #queryKey:Ljava/lang/String;
    .end local v22           #type:Ljava/lang/String;
    :catch_0
    move-exception v27

    move-object/from16 v14, v27

    .line 1232
    .local v14, jsone:Lorg/json/JSONException;
    sget-object v27, Lcom/layar/data/layer/LayerManager;->TAG:Ljava/lang/String;

    const-string v28, "Exception parsing filters"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object v2, v14

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 1209
    .end local v14           #jsone:Lorg/json/JSONException;
    .restart local v11       #filterDetails:Lorg/json/JSONObject;
    .restart local v22       #type:Ljava/lang/String;
    :cond_d
    :try_start_2
    const-string v27, "RADIOLIST"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_e

    .line 1210
    const-string v27, "selectedvalue"

    move-object v0, v11

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 1211
    const-string v27, "selectedvalue"

    move-object v0, v11

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object v0, v6

    move-object/from16 v1, v22

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto/16 :goto_4

    .line 1213
    :cond_e
    const-string v27, "CUSTOM_SLIDER"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_10

    .line 1214
    add-int/lit8 v9, v9, 0x1

    .line 1215
    const-string v18, "CUSTOM_SLIDER"

    .line 1216
    .restart local v18       #queryKey:Ljava/lang/String;
    const/16 v27, 0x1

    move v0, v9

    move/from16 v1, v27

    if-le v0, v1, :cond_f

    .line 1217
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, "_"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1218
    :cond_f
    const-string v27, "value"

    move-object v0, v11

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object v0, v6

    move-object/from16 v1, v18

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto/16 :goto_4

    .line 1219
    .end local v18           #queryKey:Ljava/lang/String;
    :cond_10
    const-string v27, "CHECKBOXLIST"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 1220
    const-string v27, "selectedvalues"

    move-object v0, v11

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v21

    .line 1221
    .local v21, selectionsArray:Lorg/json/JSONArray;
    const-string v20, ""

    .line 1222
    .local v20, selectedCSV:Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 1223
    .local v8, count:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_5
    if-lt v13, v8, :cond_11

    .line 1229
    move-object v0, v6

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto/16 :goto_4

    .line 1224
    :cond_11
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v27

    if-nez v27, :cond_12

    .line 1225
    move-object/from16 v0, v21

    move v1, v13

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1223
    :goto_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 1227
    :cond_12
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, ","

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v21

    move v1, v13

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v20

    goto :goto_6

    .line 1242
    .end local v8           #count:I
    .end local v10           #filter:Lcom/layar/data/Filter;
    .end local v11           #filterDetails:Lorg/json/JSONObject;
    .end local v13           #i:I
    .end local v20           #selectedCSV:Ljava/lang/String;
    .end local v21           #selectionsArray:Lorg/json/JSONArray;
    .end local v22           #type:Ljava/lang/String;
    :cond_13
    const-string v24, "accuracy"

    const/16 v25, 0x3e8

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    move-object v0, v6

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto/16 :goto_2

    .line 1246
    .end local p3
    .restart local v5       #actionFound:Z
    :cond_14
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1247
    .local v15, key:Ljava/lang/String;
    move-object/from16 v0, p5

    move-object v1, v15

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    move-object v0, v6

    move-object v1, v15

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1248
    if-nez v5, :cond_15

    const-string v25, "action"

    move-object/from16 v0, v25

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_15

    const/16 v25, 0x0

    move/from16 v5, v25

    :goto_7
    goto/16 :goto_3

    :cond_15
    const/16 v25, 0x1

    move/from16 v5, v25

    goto :goto_7

    .line 1299
    .end local v15           #key:Ljava/lang/String;
    .restart local v12       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v23       #uri:Landroid/net/Uri;
    :catch_1
    move-exception v24

    .line 1302
    const/16 v24, 0x0

    goto/16 :goto_0
.end method

.method public getAutoTriggerWarningAllow()Z
    .locals 3

    .prologue
    .line 926
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "prefs.autotriggers"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getCategoryLayers(ILjava/lang/String;Lcom/layar/data/layer/LayerManager$LayerFoundListener;)Lcom/layar/data/layer/LayerManager$LayersResponse;
    .locals 10
    .parameter "categoryId"
    .parameter "subsection"
    .parameter "listener"

    .prologue
    .line 400
    if-gez p1, :cond_0

    .line 401
    const/4 v0, 0x0

    .line 431
    :goto_0
    return-object v0

    .line 403
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 404
    .local v7, category:Ljava/lang/String;
    const-string v0, "category"

    invoke-static {v0, p2, v7}, Lcom/layar/data/layer/LayersSelector;->getSelector(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/layar/data/layer/LayersSelector;

    move-result-object v1

    .line 407
    .local v1, selector:Lcom/layar/data/layer/LayersSelector;
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mSensorHelper:Lcom/layar/util/SensorHelper;

    invoke-virtual {v0}, Lcom/layar/util/SensorHelper;->getCurrentLocation()Landroid/location/Location;

    move-result-object v2

    .line 408
    .local v2, curLoc:Landroid/location/Location;
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mCacheManager:Lcom/layar/data/layer/LayerCacheManager;

    invoke-virtual {v0, v1, v2}, Lcom/layar/data/layer/LayerCacheManager;->needUpdate(Lcom/layar/data/layer/LayersSelector;Landroid/location/Location;)Z

    move-result v9

    .line 409
    .local v9, needUpdate:Z
    invoke-direct {p0, v1}, Lcom/layar/data/layer/LayerManager;->getParams(Lcom/layar/data/layer/LayersSelector;)Lcom/layar/data/PaginationParams;

    move-result-object v5

    .line 410
    .local v5, pageParams:Lcom/layar/data/PaginationParams;
    if-eqz v9, :cond_1

    iget-boolean v0, v5, Lcom/layar/data/PaginationParams;->hasMorePages:Z

    if-nez v0, :cond_1

    .line 411
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->layerDb:Lcom/layar/data/layer/LayerDB20;

    invoke-virtual {v0, v1}, Lcom/layar/data/layer/LayerDB20;->clear(Lcom/layar/data/layer/LayersSelector;)V

    .line 412
    const/4 v0, 0x1

    iput-boolean v0, v5, Lcom/layar/data/PaginationParams;->hasMorePages:Z

    .line 416
    :cond_1
    iget-boolean v0, v5, Lcom/layar/data/PaginationParams;->hasMorePages:Z

    if-eqz v0, :cond_2

    .line 419
    new-instance v6, Landroid/net/Uri$Builder;

    invoke-direct {v6}, Landroid/net/Uri$Builder;-><init>()V

    .line 420
    .local v6, builder:Landroid/net/Uri$Builder;
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mUriBuider:Lcom/layar/util/UriHelper;

    const-string v3, "/layer/api/list/<country>/category/<subsection>/"

    invoke-virtual {v0, v3}, Lcom/layar/util/UriHelper;->fixCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 421
    const-string v3, "<subsection>"

    invoke-virtual {v0, v3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 420
    invoke-virtual {v6, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 422
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mUriBuider:Lcom/layar/util/UriHelper;

    invoke-virtual {v0, v6}, Lcom/layar/util/UriHelper;->appendBasicParams(Landroid/net/Uri$Builder;)V

    .line 423
    const-string v0, "categoryId"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 424
    invoke-direct {p0, v6, v1}, Lcom/layar/data/layer/LayerManager;->appendPageKey(Landroid/net/Uri$Builder;Lcom/layar/data/layer/LayersSelector;)V

    .line 425
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mUriBuider:Lcom/layar/util/UriHelper;

    invoke-virtual {v0, v6, v2}, Lcom/layar/util/UriHelper;->appendLocationParams(Landroid/net/Uri$Builder;Landroid/location/Location;)Landroid/net/Uri$Builder;

    .line 426
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    move-object v0, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/layar/data/layer/LayerManager;->getLayers(Lcom/layar/data/layer/LayersSelector;Landroid/location/Location;Landroid/net/Uri;Lcom/layar/data/layer/LayerManager$LayerFoundListener;Lcom/layar/data/PaginationParams;)Lcom/layar/data/layer/LayerManager$LayersResponse;

    move-result-object v0

    goto :goto_0

    .line 429
    .end local v6           #builder:Landroid/net/Uri$Builder;
    :cond_2
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->layerDb:Lcom/layar/data/layer/LayerDB20;

    invoke-virtual {v0, v1, p3}, Lcom/layar/data/layer/LayerDB20;->getLayers(Lcom/layar/data/layer/LayersSelector;Lcom/layar/data/layer/LayerManager$LayerFoundListener;)Ljava/util/ArrayList;

    move-result-object v8

    .line 430
    .local v8, layers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/data/layer/Layer20;>;"
    invoke-direct {p0, v1}, Lcom/layar/data/layer/LayerManager;->restorePageKey(Lcom/layar/data/layer/LayersSelector;)V

    .line 431
    new-instance v0, Lcom/layar/data/layer/LayerManager$LayersResponse;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v8}, Lcom/layar/data/layer/LayerManager$LayersResponse;-><init>(ILjava/util/ArrayList;)V

    goto :goto_0
.end method

.method public getFeaturedLayers(Ljava/lang/String;Lcom/layar/data/layer/LayerManager$LayerFoundListener;)Lcom/layar/data/layer/LayerManager$LayersResponse;
    .locals 7
    .parameter "subsection"
    .parameter "listener"

    .prologue
    .line 498
    const-string v5, "featured"

    invoke-static {v5, p1}, Lcom/layar/data/layer/LayersSelector;->getSelector(Ljava/lang/String;Ljava/lang/String;)Lcom/layar/data/layer/LayersSelector;

    move-result-object v4

    .line 501
    .local v4, selector:Lcom/layar/data/layer/LayersSelector;
    iget-object v5, p0, Lcom/layar/data/layer/LayerManager;->mCacheManager:Lcom/layar/data/layer/LayerCacheManager;

    invoke-virtual {v5, v4}, Lcom/layar/data/layer/LayerCacheManager;->needUpdate(Lcom/layar/data/layer/LayersSelector;)Z

    move-result v1

    .line 502
    .local v1, needUpdate:Z
    invoke-direct {p0, v4}, Lcom/layar/data/layer/LayerManager;->getParams(Lcom/layar/data/layer/LayersSelector;)Lcom/layar/data/PaginationParams;

    move-result-object v2

    .line 503
    .local v2, pageParams:Lcom/layar/data/PaginationParams;
    if-eqz v1, :cond_0

    iget-boolean v5, v2, Lcom/layar/data/PaginationParams;->hasMorePages:Z

    if-nez v5, :cond_0

    .line 504
    iget-object v5, p0, Lcom/layar/data/layer/LayerManager;->layerDb:Lcom/layar/data/layer/LayerDB20;

    invoke-virtual {v5, v4}, Lcom/layar/data/layer/LayerDB20;->clear(Lcom/layar/data/layer/LayersSelector;)V

    .line 505
    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/layar/data/PaginationParams;->hasMorePages:Z

    .line 509
    :cond_0
    iget-boolean v5, v2, Lcom/layar/data/PaginationParams;->hasMorePages:Z

    if-eqz v5, :cond_1

    .line 511
    invoke-direct {p0, p1, p2}, Lcom/layar/data/layer/LayerManager;->initializeFeaturedLayers(Ljava/lang/String;Lcom/layar/data/layer/LayerManager$LayerFoundListener;)I

    move-result v3

    .line 512
    .local v3, responseCode:I
    new-instance v5, Lcom/layar/data/layer/LayerManager$LayersResponse;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6}, Lcom/layar/data/layer/LayerManager$LayersResponse;-><init>(ILjava/util/ArrayList;)V

    .line 517
    .end local v3           #responseCode:I
    :goto_0
    return-object v5

    .line 514
    :cond_1
    iget-object v5, p0, Lcom/layar/data/layer/LayerManager;->layerDb:Lcom/layar/data/layer/LayerDB20;

    invoke-virtual {v5, v4, p2}, Lcom/layar/data/layer/LayerDB20;->getLayers(Lcom/layar/data/layer/LayersSelector;Lcom/layar/data/layer/LayerManager$LayerFoundListener;)Ljava/util/ArrayList;

    move-result-object v0

    .line 517
    .local v0, layers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/data/layer/Layer20;>;"
    new-instance v5, Lcom/layar/data/layer/LayerManager$LayersResponse;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v0}, Lcom/layar/data/layer/LayerManager$LayersResponse;-><init>(ILjava/util/ArrayList;)V

    goto :goto_0
.end method

.method public getFirstFeaturedLayerName()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 244
    invoke-virtual {p0}, Lcom/layar/data/layer/LayerManager;->readFirstFeaturedLayerName()Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, cachedLayerName:Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object v5, v1

    .line 264
    :goto_0
    return-object v5

    .line 248
    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 249
    .local v0, builder:Landroid/net/Uri$Builder;
    iget-object v5, p0, Lcom/layar/data/layer/LayerManager;->mUriBuider:Lcom/layar/util/UriHelper;

    const-string v6, "/layer/api/list/<country>/featured/<subsection>/"

    invoke-virtual {v5, v6}, Lcom/layar/util/UriHelper;->fixCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 250
    const-string v6, "<subsection>"

    const-string v7, "all"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 249
    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 251
    iget-object v5, p0, Lcom/layar/data/layer/LayerManager;->mUriBuider:Lcom/layar/util/UriHelper;

    invoke-virtual {v5, v0}, Lcom/layar/util/UriHelper;->appendBasicParams(Landroid/net/Uri$Builder;)V

    .line 253
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {p0, v5, v8, v8}, Lcom/layar/data/layer/LayerManager;->getLayers(Landroid/net/Uri;Lcom/layar/data/layer/LayerManager$LayerFoundListener;Lcom/layar/data/PaginationParams;)Lcom/layar/data/layer/LayerManager$LayersResponse;

    move-result-object v4

    .line 254
    .local v4, response:Lcom/layar/data/layer/LayerManager$LayersResponse;
    iget v5, v4, Lcom/layar/data/layer/LayerManager$LayersResponse;->responseCode:I

    if-nez v5, :cond_3

    .line 255
    iget-object v5, v4, Lcom/layar/data/layer/LayerManager$LayersResponse;->layers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v8

    .line 256
    goto :goto_0

    .line 257
    :cond_1
    iget-object v5, v4, Lcom/layar/data/layer/LayerManager$LayersResponse;->layers:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/layar/data/layer/Layer20;

    .line 258
    .local v2, firstLayer:Lcom/layar/data/layer/Layer20;
    if-nez v2, :cond_2

    move-object v5, v8

    .line 259
    goto :goto_0

    .line 260
    :cond_2
    iget-object v3, v2, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    .line 261
    .local v3, layerName:Ljava/lang/String;
    iget-object v5, p0, Lcom/layar/data/layer/LayerManager;->mCacheManager:Lcom/layar/data/layer/LayerCacheManager;

    invoke-virtual {v5, v3}, Lcom/layar/data/layer/LayerCacheManager;->setFirstFeaturedLayerName(Ljava/lang/String;)V

    move-object v5, v3

    .line 262
    goto :goto_0

    .end local v2           #firstLayer:Lcom/layar/data/layer/Layer20;
    .end local v3           #layerName:Ljava/lang/String;
    :cond_3
    move-object v5, v8

    .line 264
    goto :goto_0
.end method

.method public getGroupLayers(ILcom/layar/data/layer/LayerManager$LayerFoundListener;)Lcom/layar/data/layer/LayerManager$LayersResponse;
    .locals 5
    .parameter "groupId"
    .parameter "listener"

    .prologue
    .line 583
    const-string v2, "group"

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 582
    invoke-static {v2, v3, v4}, Lcom/layar/data/layer/LayersSelector;->getSelector(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/layar/data/layer/LayersSelector;

    move-result-object v1

    .line 584
    .local v1, selector:Lcom/layar/data/layer/LayersSelector;
    iget-object v2, p0, Lcom/layar/data/layer/LayerManager;->layerDb:Lcom/layar/data/layer/LayerDB20;

    invoke-virtual {v2, v1, p2}, Lcom/layar/data/layer/LayerDB20;->getLayers(Lcom/layar/data/layer/LayersSelector;Lcom/layar/data/layer/LayerManager$LayerFoundListener;)Ljava/util/ArrayList;

    move-result-object v0

    .line 587
    .local v0, layers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/data/layer/Layer20;>;"
    new-instance v2, Lcom/layar/data/layer/LayerManager$LayersResponse;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lcom/layar/data/layer/LayerManager$LayersResponse;-><init>(ILjava/util/ArrayList;)V

    return-object v2
.end method

.method public getLayer(Ljava/lang/String;)Lcom/layar/data/layer/LayerManager$LayerResponse;
    .locals 13
    .parameter "layername"

    .prologue
    const/4 v12, 0x0

    .line 441
    invoke-static {}, Lcom/layar/App;->isOnline()Z

    move-result v9

    if-nez v9, :cond_0

    .line 442
    new-instance v9, Lcom/layar/data/layer/LayerManager$LayerResponse;

    const/16 v10, -0xa

    invoke-direct {v9, v10, v12}, Lcom/layar/data/layer/LayerManager$LayerResponse;-><init>(ILcom/layar/data/layer/Layer20;)V

    .line 478
    :goto_0
    return-object v9

    .line 443
    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 444
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v9, "/layer/api/detail/<layername>/"

    const-string v10, "<layername>"

    invoke-virtual {v9, v10, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 445
    iget-object v9, p0, Lcom/layar/data/layer/LayerManager;->mUriBuider:Lcom/layar/util/UriHelper;

    invoke-virtual {v9, v0}, Lcom/layar/util/UriHelper;->appendBasicParams(Landroid/net/Uri$Builder;)V

    .line 447
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 448
    .local v8, uri:Ljava/lang/String;
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v8}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 452
    .local v2, get:Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    new-instance v9, Lorg/apache/http/HttpHost;

    const-string v10, "dev.layar.com"

    invoke-direct {v9, v10}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v2}, Lcom/layar/util/HttpManager;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 453
    .local v5, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_3

    .line 455
    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    .line 454
    invoke-static {v9, v5}, Lcom/layar/util/HttpManager;->responseAsString(Ljava/lang/String;Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v7

    .line 456
    .local v7, responseText:Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 459
    .local v3, json:Lorg/json/JSONObject;
    const-string v9, "errorCode"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 460
    const-string v9, "errorCode"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 465
    .local v6, responseCode:I
    :goto_1
    if-nez v6, :cond_2

    .line 466
    const-string v9, "layer"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-static {v9}, Lcom/layar/data/layer/Layer20;->parseLayer(Lorg/json/JSONObject;)Lcom/layar/data/layer/Layer20;

    move-result-object v4

    .line 469
    .local v4, layer:Lcom/layar/data/layer/Layer20;
    :goto_2
    new-instance v9, Lcom/layar/data/layer/LayerManager$LayerResponse;

    invoke-direct {v9, v6, v4}, Lcom/layar/data/layer/LayerManager$LayerResponse;-><init>(ILcom/layar/data/layer/Layer20;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 473
    .end local v3           #json:Lorg/json/JSONObject;
    .end local v4           #layer:Lcom/layar/data/layer/Layer20;
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    .end local v6           #responseCode:I
    .end local v7           #responseText:Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 474
    .local v1, e:Ljava/io/IOException;
    sget-object v9, Lcom/layar/data/layer/LayerManager;->TAG:Ljava/lang/String;

    const-string v10, "Could not load layer details"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 475
    new-instance v9, Lcom/layar/data/layer/LayerManager$LayerResponse;

    const/4 v10, -0x2

    invoke-direct {v9, v10, v12}, Lcom/layar/data/layer/LayerManager$LayerResponse;-><init>(ILcom/layar/data/layer/Layer20;)V

    goto :goto_0

    .line 462
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #json:Lorg/json/JSONObject;
    .restart local v5       #response:Lorg/apache/http/HttpResponse;
    .restart local v7       #responseText:Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v9, "responseCode"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .restart local v6       #responseCode:I
    goto :goto_1

    .line 468
    :cond_2
    const/4 v4, 0x0

    .restart local v4       #layer:Lcom/layar/data/layer/Layer20;
    goto :goto_2

    .line 471
    .end local v3           #json:Lorg/json/JSONObject;
    .end local v4           #layer:Lcom/layar/data/layer/Layer20;
    .end local v6           #responseCode:I
    .end local v7           #responseText:Ljava/lang/String;
    :cond_3
    new-instance v9, Lcom/layar/data/layer/LayerManager$LayerResponse;

    const/4 v10, -0x1

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/layar/data/layer/LayerManager$LayerResponse;-><init>(ILcom/layar/data/layer/Layer20;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 476
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v9

    move-object v1, v9

    .line 477
    .local v1, e:Lorg/json/JSONException;
    sget-object v9, Lcom/layar/data/layer/LayerManager;->TAG:Ljava/lang/String;

    const-string v10, "Could not parse layer details"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 478
    new-instance v9, Lcom/layar/data/layer/LayerManager$LayerResponse;

    const/4 v10, -0x3

    invoke-direct {v9, v10, v12}, Lcom/layar/data/layer/LayerManager$LayerResponse;-><init>(ILcom/layar/data/layer/Layer20;)V

    goto/16 :goto_0
.end method

.method public getLayerCount(I)Lcom/layar/data/layer/LayerCommunicator$GetLayerCountResponse;
    .locals 1
    .parameter "categoryId"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mCommunicator:Lcom/layar/data/layer/LayerCommunicator;

    invoke-virtual {v0, p1}, Lcom/layar/data/layer/LayerCommunicator;->getLayerCount(I)Lcom/layar/data/layer/LayerCommunicator$GetLayerCountResponse;

    move-result-object v0

    return-object v0
.end method

.method public getLocalLayers(Ljava/lang/String;Lcom/layar/data/layer/LayerManager$LayerFoundListener;)Lcom/layar/data/layer/LayerManager$LayersResponse;
    .locals 9
    .parameter "subsection"
    .parameter "listener"

    .prologue
    const/4 v3, 0x0

    .line 355
    if-nez p1, :cond_0

    move-object v0, v3

    .line 387
    :goto_0
    return-object v0

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mSensorHelper:Lcom/layar/util/SensorHelper;

    invoke-virtual {v0}, Lcom/layar/util/SensorHelper;->getCurrentLocation()Landroid/location/Location;

    move-result-object v2

    .line 361
    .local v2, curLoc:Landroid/location/Location;
    if-nez v2, :cond_1

    move-object v0, v3

    .line 362
    goto :goto_0

    .line 364
    :cond_1
    const-string v0, "local"

    invoke-static {v0, p1}, Lcom/layar/data/layer/LayersSelector;->getSelector(Ljava/lang/String;Ljava/lang/String;)Lcom/layar/data/layer/LayersSelector;

    move-result-object v1

    .line 365
    .local v1, selector:Lcom/layar/data/layer/LayersSelector;
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mCacheManager:Lcom/layar/data/layer/LayerCacheManager;

    invoke-virtual {v0, v1, v2}, Lcom/layar/data/layer/LayerCacheManager;->needUpdate(Lcom/layar/data/layer/LayersSelector;Landroid/location/Location;)Z

    move-result v8

    .line 367
    .local v8, needUpdate:Z
    invoke-direct {p0, v1}, Lcom/layar/data/layer/LayerManager;->getParams(Lcom/layar/data/layer/LayersSelector;)Lcom/layar/data/PaginationParams;

    move-result-object v5

    .line 368
    .local v5, pageParams:Lcom/layar/data/PaginationParams;
    if-eqz v8, :cond_2

    iget-boolean v0, v5, Lcom/layar/data/PaginationParams;->hasMorePages:Z

    if-nez v0, :cond_2

    .line 369
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->layerDb:Lcom/layar/data/layer/LayerDB20;

    invoke-virtual {v0, v1}, Lcom/layar/data/layer/LayerDB20;->clear(Lcom/layar/data/layer/LayersSelector;)V

    .line 370
    const/4 v0, 0x1

    iput-boolean v0, v5, Lcom/layar/data/PaginationParams;->hasMorePages:Z

    .line 374
    :cond_2
    iget-boolean v0, v5, Lcom/layar/data/PaginationParams;->hasMorePages:Z

    if-eqz v0, :cond_3

    .line 377
    new-instance v6, Landroid/net/Uri$Builder;

    invoke-direct {v6}, Landroid/net/Uri$Builder;-><init>()V

    .line 378
    .local v6, builder:Landroid/net/Uri$Builder;
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mUriBuider:Lcom/layar/util/UriHelper;

    const-string v3, "/layer/api/list/<country>/local/<subsection>/"

    invoke-virtual {v0, v3}, Lcom/layar/util/UriHelper;->fixCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "<subsection>"

    invoke-virtual {v0, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 379
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mUriBuider:Lcom/layar/util/UriHelper;

    invoke-virtual {v0, v6}, Lcom/layar/util/UriHelper;->appendBasicParams(Landroid/net/Uri$Builder;)V

    .line 380
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mUriBuider:Lcom/layar/util/UriHelper;

    invoke-virtual {v0, v6, v2}, Lcom/layar/util/UriHelper;->appendLocationParams(Landroid/net/Uri$Builder;Landroid/location/Location;)Landroid/net/Uri$Builder;

    .line 381
    invoke-direct {p0, v6, v1}, Lcom/layar/data/layer/LayerManager;->appendPageKey(Landroid/net/Uri$Builder;Lcom/layar/data/layer/LayersSelector;)V

    .line 382
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/layar/data/layer/LayerManager;->getLayers(Lcom/layar/data/layer/LayersSelector;Landroid/location/Location;Landroid/net/Uri;Lcom/layar/data/layer/LayerManager$LayerFoundListener;Lcom/layar/data/PaginationParams;)Lcom/layar/data/layer/LayerManager$LayersResponse;

    move-result-object v0

    goto :goto_0

    .line 385
    .end local v6           #builder:Landroid/net/Uri$Builder;
    :cond_3
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->layerDb:Lcom/layar/data/layer/LayerDB20;

    invoke-virtual {v0, v1, p2}, Lcom/layar/data/layer/LayerDB20;->getLayers(Lcom/layar/data/layer/LayersSelector;Lcom/layar/data/layer/LayerManager$LayerFoundListener;)Ljava/util/ArrayList;

    move-result-object v7

    .line 386
    .local v7, layers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/data/layer/Layer20;>;"
    invoke-direct {p0, v1}, Lcom/layar/data/layer/LayerManager;->restorePageKey(Lcom/layar/data/layer/LayersSelector;)V

    .line 387
    new-instance v0, Lcom/layar/data/layer/LayerManager$LayersResponse;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v7}, Lcom/layar/data/layer/LayerManager$LayersResponse;-><init>(ILjava/util/ArrayList;)V

    goto :goto_0
.end method

.method public getNewLayers(Lcom/layar/data/layer/LayerManager$LayerFoundListener;)Lcom/layar/data/layer/LayerManager$LayersResponse;
    .locals 6
    .parameter "listener"

    .prologue
    .line 319
    const-string v4, "new"

    const-string v5, "all"

    invoke-static {v4, v5}, Lcom/layar/data/layer/LayersSelector;->getSelector(Ljava/lang/String;Ljava/lang/String;)Lcom/layar/data/layer/LayersSelector;

    move-result-object v3

    .line 322
    .local v3, selector:Lcom/layar/data/layer/LayersSelector;
    iget-object v4, p0, Lcom/layar/data/layer/LayerManager;->mSensorHelper:Lcom/layar/util/SensorHelper;

    invoke-virtual {v4}, Lcom/layar/util/SensorHelper;->getCurrentLocation()Landroid/location/Location;

    move-result-object v1

    .line 323
    .local v1, curLoc:Landroid/location/Location;
    invoke-direct {p0, v3}, Lcom/layar/data/layer/LayerManager;->getParams(Lcom/layar/data/layer/LayersSelector;)Lcom/layar/data/PaginationParams;

    move-result-object v2

    .line 326
    .local v2, pageParams:Lcom/layar/data/PaginationParams;
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 327
    .local v0, builder:Landroid/net/Uri$Builder;
    iget-object v4, p0, Lcom/layar/data/layer/LayerManager;->mUriBuider:Lcom/layar/util/UriHelper;

    const-string v5, "/layer/api/list/<country>/new/all/"

    invoke-virtual {v4, v5}, Lcom/layar/util/UriHelper;->fixCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 328
    iget-object v4, p0, Lcom/layar/data/layer/LayerManager;->mUriBuider:Lcom/layar/util/UriHelper;

    invoke-virtual {v4, v0}, Lcom/layar/util/UriHelper;->appendBasicParams(Landroid/net/Uri$Builder;)V

    .line 329
    invoke-direct {p0, v0, v3}, Lcom/layar/data/layer/LayerManager;->appendPageKey(Landroid/net/Uri$Builder;Lcom/layar/data/layer/LayersSelector;)V

    .line 330
    iget-object v4, p0, Lcom/layar/data/layer/LayerManager;->mUriBuider:Lcom/layar/util/UriHelper;

    invoke-virtual {v4, v0, v1}, Lcom/layar/util/UriHelper;->appendLocationParams(Landroid/net/Uri$Builder;Landroid/location/Location;)Landroid/net/Uri$Builder;

    .line 331
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p0, v4, p1, v2}, Lcom/layar/data/layer/LayerManager;->getLayers(Landroid/net/Uri;Lcom/layar/data/layer/LayerManager$LayerFoundListener;Lcom/layar/data/PaginationParams;)Lcom/layar/data/layer/LayerManager$LayersResponse;

    move-result-object v4

    return-object v4
.end method

.method public getPageParams()Lcom/layar/data/PaginationParams;
    .locals 1

    .prologue
    .line 165
    monitor-enter p0

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mPageParams:Lcom/layar/data/PaginationParams;

    monitor-exit p0

    return-object v0

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPopularLayers(Ljava/lang/String;Lcom/layar/data/layer/LayerManager$LayerFoundListener;)Lcom/layar/data/layer/LayerManager$LayersResponse;
    .locals 9
    .parameter "subsection"
    .parameter "listener"

    .prologue
    .line 276
    const-string v0, "popular"

    invoke-static {v0, p1}, Lcom/layar/data/layer/LayersSelector;->getSelector(Ljava/lang/String;Ljava/lang/String;)Lcom/layar/data/layer/LayersSelector;

    move-result-object v1

    .line 279
    .local v1, selector:Lcom/layar/data/layer/LayersSelector;
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mSensorHelper:Lcom/layar/util/SensorHelper;

    invoke-virtual {v0}, Lcom/layar/util/SensorHelper;->getCurrentLocation()Landroid/location/Location;

    move-result-object v2

    .line 280
    .local v2, curLoc:Landroid/location/Location;
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mCacheManager:Lcom/layar/data/layer/LayerCacheManager;

    invoke-virtual {v0, v1, v2}, Lcom/layar/data/layer/LayerCacheManager;->needUpdate(Lcom/layar/data/layer/LayersSelector;Landroid/location/Location;)Z

    move-result v8

    .line 281
    .local v8, needUpdate:Z
    invoke-direct {p0, v1}, Lcom/layar/data/layer/LayerManager;->getParams(Lcom/layar/data/layer/LayersSelector;)Lcom/layar/data/PaginationParams;

    move-result-object v5

    .line 282
    .local v5, pageParams:Lcom/layar/data/PaginationParams;
    if-eqz v8, :cond_0

    iget-boolean v0, v5, Lcom/layar/data/PaginationParams;->hasMorePages:Z

    if-nez v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->layerDb:Lcom/layar/data/layer/LayerDB20;

    invoke-virtual {v0, v1}, Lcom/layar/data/layer/LayerDB20;->clear(Lcom/layar/data/layer/LayersSelector;)V

    .line 284
    const/4 v0, 0x1

    iput-boolean v0, v5, Lcom/layar/data/PaginationParams;->hasMorePages:Z

    .line 288
    :cond_0
    iget-boolean v0, v5, Lcom/layar/data/PaginationParams;->hasMorePages:Z

    if-eqz v0, :cond_2

    .line 291
    new-instance v6, Landroid/net/Uri$Builder;

    invoke-direct {v6}, Landroid/net/Uri$Builder;-><init>()V

    .line 292
    .local v6, builder:Landroid/net/Uri$Builder;
    const-string v0, "all"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mUriBuider:Lcom/layar/util/UriHelper;

    const-string v3, "/layer/api/list/<country>/popular/all/"

    invoke-virtual {v0, v3}, Lcom/layar/util/UriHelper;->fixCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 296
    :goto_0
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mUriBuider:Lcom/layar/util/UriHelper;

    invoke-virtual {v0, v6}, Lcom/layar/util/UriHelper;->appendBasicParams(Landroid/net/Uri$Builder;)V

    .line 297
    invoke-direct {p0, v6, v1}, Lcom/layar/data/layer/LayerManager;->appendPageKey(Landroid/net/Uri$Builder;Lcom/layar/data/layer/LayersSelector;)V

    .line 298
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mUriBuider:Lcom/layar/util/UriHelper;

    invoke-virtual {v0, v6, v2}, Lcom/layar/util/UriHelper;->appendLocationParams(Landroid/net/Uri$Builder;Landroid/location/Location;)Landroid/net/Uri$Builder;

    .line 302
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/layar/data/layer/LayerManager;->getLayers(Lcom/layar/data/layer/LayersSelector;Landroid/location/Location;Landroid/net/Uri;Lcom/layar/data/layer/LayerManager$LayerFoundListener;Lcom/layar/data/PaginationParams;)Lcom/layar/data/layer/LayerManager$LayersResponse;

    move-result-object v0

    .line 307
    .end local v6           #builder:Landroid/net/Uri$Builder;
    :goto_1
    return-object v0

    .line 295
    .restart local v6       #builder:Landroid/net/Uri$Builder;
    :cond_1
    const-string v0, "/layer/api/list/<country>/popular/all/"

    const-string v3, "<country>"

    invoke-virtual {v0, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 305
    .end local v6           #builder:Landroid/net/Uri$Builder;
    :cond_2
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->layerDb:Lcom/layar/data/layer/LayerDB20;

    invoke-virtual {v0, v1, p2}, Lcom/layar/data/layer/LayerDB20;->getLayers(Lcom/layar/data/layer/LayersSelector;Lcom/layar/data/layer/LayerManager$LayerFoundListener;)Ljava/util/ArrayList;

    move-result-object v7

    .line 306
    .local v7, layers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/data/layer/Layer20;>;"
    invoke-direct {p0, v1}, Lcom/layar/data/layer/LayerManager;->restorePageKey(Lcom/layar/data/layer/LayersSelector;)V

    .line 307
    new-instance v0, Lcom/layar/data/layer/LayerManager$LayersResponse;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v7}, Lcom/layar/data/layer/LayerManager$LayersResponse;-><init>(ILjava/util/ArrayList;)V

    goto :goto_1
.end method

.method public getRecentLayers(Lcom/layar/data/layer/LayerManager$LayerFoundListener;)Lcom/layar/data/layer/LayerManager$LayersResponse;
    .locals 6
    .parameter "listener"

    .prologue
    const/4 v5, 0x0

    .line 343
    const-string v3, "recent"

    const-string v4, "all"

    invoke-static {v3, v4}, Lcom/layar/data/layer/LayersSelector;->getSelector(Ljava/lang/String;Ljava/lang/String;)Lcom/layar/data/layer/LayersSelector;

    move-result-object v2

    .line 345
    .local v2, selector:Lcom/layar/data/layer/LayersSelector;
    invoke-direct {p0, v2}, Lcom/layar/data/layer/LayerManager;->getParams(Lcom/layar/data/layer/LayersSelector;)Lcom/layar/data/PaginationParams;

    move-result-object v1

    .line 347
    .local v1, pageParams:Lcom/layar/data/PaginationParams;
    invoke-virtual {p0}, Lcom/layar/data/layer/LayerManager;->cleanupRecent()V

    .line 349
    iget-object v3, p0, Lcom/layar/data/layer/LayerManager;->layerDb:Lcom/layar/data/layer/LayerDB20;

    invoke-virtual {v3, v2, p1}, Lcom/layar/data/layer/LayerDB20;->getLayers(Lcom/layar/data/layer/LayersSelector;Lcom/layar/data/layer/LayerManager$LayerFoundListener;)Ljava/util/ArrayList;

    move-result-object v0

    .line 350
    .local v0, layers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/data/layer/Layer20;>;"
    iput-boolean v5, v1, Lcom/layar/data/PaginationParams;->hasMorePages:Z

    .line 351
    new-instance v3, Lcom/layar/data/layer/LayerManager$LayersResponse;

    invoke-direct {v3, v5, v0}, Lcom/layar/data/layer/LayerManager$LayersResponse;-><init>(ILjava/util/ArrayList;)V

    return-object v3
.end method

.method public getSearchLayers(Ljava/lang/String;Lcom/layar/data/layer/LayerManager$LayerFoundListener;)Lcom/layar/data/layer/LayerManager$LayersResponse;
    .locals 8
    .parameter "query"
    .parameter "listener"

    .prologue
    .line 208
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 209
    .local v1, builder:Landroid/net/Uri$Builder;
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mUriBuider:Lcom/layar/util/UriHelper;

    const-string v7, "/layer/api/list/<country>/search/all/"

    invoke-virtual {v0, v7}, Lcom/layar/util/UriHelper;->fixCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 210
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mUriBuider:Lcom/layar/util/UriHelper;

    invoke-virtual {v0, v1}, Lcom/layar/util/UriHelper;->appendBasicParams(Landroid/net/Uri$Builder;)V

    .line 211
    const-string v0, "searchTerms"

    invoke-virtual {v1, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 212
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mPageParams:Lcom/layar/data/PaginationParams;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mPageParams:Lcom/layar/data/PaginationParams;

    iget-object v0, v0, Lcom/layar/data/PaginationParams;->query:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mPageParams:Lcom/layar/data/PaginationParams;

    iget-object v0, v0, Lcom/layar/data/PaginationParams;->query:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 215
    :cond_0
    new-instance v0, Lcom/layar/data/PaginationParams;

    invoke-direct {v0}, Lcom/layar/data/PaginationParams;-><init>()V

    iput-object v0, p0, Lcom/layar/data/layer/LayerManager;->mPageParams:Lcom/layar/data/PaginationParams;

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mPageParams:Lcom/layar/data/PaginationParams;

    iput-object p1, v0, Lcom/layar/data/PaginationParams;->query:Ljava/lang/String;

    .line 217
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mPageParams:Lcom/layar/data/PaginationParams;

    iget-object v0, v0, Lcom/layar/data/PaginationParams;->pageKey:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 218
    const-string v0, "pageKey"

    iget-object v7, p0, Lcom/layar/data/layer/LayerManager;->mPageParams:Lcom/layar/data/PaginationParams;

    iget-object v7, v7, Lcom/layar/data/PaginationParams;->pageKey:Ljava/lang/String;

    invoke-virtual {v1, v0, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mSensorHelper:Lcom/layar/util/SensorHelper;

    invoke-virtual {v0}, Lcom/layar/util/SensorHelper;->getCurrentLocation()Landroid/location/Location;

    move-result-object v6

    .line 221
    .local v6, curLoc:Landroid/location/Location;
    if-eqz v6, :cond_3

    .line 222
    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 223
    .local v2, latitude:D
    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 224
    .local v4, longitude:D
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mUriBuider:Lcom/layar/util/UriHelper;

    invoke-virtual/range {v0 .. v5}, Lcom/layar/util/UriHelper;->appendLocationParams(Landroid/net/Uri$Builder;DD)Landroid/net/Uri$Builder;

    .line 227
    .end local v2           #latitude:D
    .end local v4           #longitude:D
    :cond_3
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iget-object v7, p0, Lcom/layar/data/layer/LayerManager;->mPageParams:Lcom/layar/data/PaginationParams;

    invoke-direct {p0, v0, p2, v7}, Lcom/layar/data/layer/LayerManager;->getLayers(Landroid/net/Uri;Lcom/layar/data/layer/LayerManager$LayerFoundListener;Lcom/layar/data/PaginationParams;)Lcom/layar/data/layer/LayerManager$LayersResponse;

    move-result-object v0

    return-object v0
.end method

.method public getYoursLayers(Ljava/lang/String;Lcom/layar/data/layer/LayerManager$LayerFoundListener;)Lcom/layar/data/layer/LayerManager$LayersResponse;
    .locals 10
    .parameter "subsection"
    .parameter "listener"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 601
    if-nez p1, :cond_0

    .line 602
    const/4 v0, 0x0

    .line 656
    :goto_0
    return-object v0

    .line 604
    :cond_0
    const-string v0, "my"

    invoke-static {v0, p1}, Lcom/layar/data/layer/LayersSelector;->getSelector(Ljava/lang/String;Ljava/lang/String;)Lcom/layar/data/layer/LayersSelector;

    move-result-object v1

    .line 607
    .local v1, selector:Lcom/layar/data/layer/LayersSelector;
    const-string v0, "favorites"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 608
    iput-boolean v4, v1, Lcom/layar/data/layer/LayersSelector;->useOrder:Z

    .line 609
    invoke-direct {p0, v1}, Lcom/layar/data/layer/LayerManager;->getParams(Lcom/layar/data/layer/LayersSelector;)Lcom/layar/data/PaginationParams;

    move-result-object v5

    .line 610
    .local v5, pageParams:Lcom/layar/data/PaginationParams;
    iput-boolean v3, v5, Lcom/layar/data/PaginationParams;->hasMorePages:Z

    .line 612
    new-instance v9, Lcom/layar/data/layer/LayerManager$LayersResponse;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v9, v3, v0}, Lcom/layar/data/layer/LayerManager$LayersResponse;-><init>(ILjava/util/ArrayList;)V

    .line 613
    .local v9, response:Lcom/layar/data/layer/LayerManager$LayersResponse;
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mCacheManager:Lcom/layar/data/layer/LayerCacheManager;

    iget-boolean v0, v0, Lcom/layar/data/layer/LayerCacheManager;->isBookmarksInitialized:Z

    if-nez v0, :cond_1

    .line 614
    invoke-virtual {p0}, Lcom/layar/data/layer/LayerManager;->initializeBookmarkLayers()Lcom/layar/data/layer/LayerManager$LayersResponse;

    move-result-object v0

    iget v0, v0, Lcom/layar/data/layer/LayerManager$LayersResponse;->responseCode:I

    iput v0, v9, Lcom/layar/data/layer/LayerManager$LayersResponse;->responseCode:I

    .line 617
    :cond_1
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mSelector:Lcom/layar/data/layer/LayersSelector;

    if-eq v0, v1, :cond_3

    .line 618
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mSelector:Lcom/layar/data/layer/LayersSelector;

    iget-object v0, v0, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    const-string v3, "my"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 619
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mSelector:Lcom/layar/data/layer/LayersSelector;

    iget-object v0, v0, Lcom/layar/data/layer/LayersSelector;->subsection:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move-object v0, v9

    .line 621
    goto :goto_0

    .line 625
    :cond_3
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mCacheManager:Lcom/layar/data/layer/LayerCacheManager;

    invoke-virtual {v0, v1}, Lcom/layar/data/layer/LayerCacheManager;->needUpdate(Lcom/layar/data/layer/LayersSelector;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 626
    invoke-direct {p0}, Lcom/layar/data/layer/LayerManager;->updateModifiedBookmarkLayers()V

    .line 628
    :cond_4
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->layerDb:Lcom/layar/data/layer/LayerDB20;

    invoke-virtual {v0, v1, p2}, Lcom/layar/data/layer/LayerDB20;->getLayers(Lcom/layar/data/layer/LayersSelector;Lcom/layar/data/layer/LayerManager$LayerFoundListener;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v9, Lcom/layar/data/layer/LayerManager$LayersResponse;->layers:Ljava/util/ArrayList;

    move-object v0, v9

    .line 631
    goto :goto_0

    .line 634
    .end local v5           #pageParams:Lcom/layar/data/PaginationParams;
    .end local v9           #response:Lcom/layar/data/layer/LayerManager$LayersResponse;
    :cond_5
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mSensorHelper:Lcom/layar/util/SensorHelper;

    invoke-virtual {v0}, Lcom/layar/util/SensorHelper;->getCurrentLocation()Landroid/location/Location;

    move-result-object v2

    .line 635
    .local v2, curLoc:Landroid/location/Location;
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mCacheManager:Lcom/layar/data/layer/LayerCacheManager;

    invoke-virtual {v0, v1, v2}, Lcom/layar/data/layer/LayerCacheManager;->needUpdate(Lcom/layar/data/layer/LayersSelector;Landroid/location/Location;)Z

    move-result v8

    .line 636
    .local v8, needUpdate:Z
    invoke-direct {p0, v1}, Lcom/layar/data/layer/LayerManager;->getParams(Lcom/layar/data/layer/LayersSelector;)Lcom/layar/data/PaginationParams;

    move-result-object v5

    .line 637
    .restart local v5       #pageParams:Lcom/layar/data/PaginationParams;
    if-eqz v8, :cond_6

    iget-boolean v0, v5, Lcom/layar/data/PaginationParams;->hasMorePages:Z

    if-nez v0, :cond_6

    .line 638
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->layerDb:Lcom/layar/data/layer/LayerDB20;

    invoke-virtual {v0, v1}, Lcom/layar/data/layer/LayerDB20;->clear(Lcom/layar/data/layer/LayersSelector;)V

    .line 639
    iput-boolean v4, v5, Lcom/layar/data/PaginationParams;->hasMorePages:Z

    .line 643
    :cond_6
    iget-boolean v0, v5, Lcom/layar/data/PaginationParams;->hasMorePages:Z

    if-eqz v0, :cond_7

    .line 646
    new-instance v6, Landroid/net/Uri$Builder;

    invoke-direct {v6}, Landroid/net/Uri$Builder;-><init>()V

    .line 647
    .local v6, builder:Landroid/net/Uri$Builder;
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mUriBuider:Lcom/layar/util/UriHelper;

    const-string v3, "/layer/api/list/all/my/<subsection>/"

    invoke-virtual {v0, v3}, Lcom/layar/util/UriHelper;->fixCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "<subsection>"

    invoke-virtual {v0, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 648
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mUriBuider:Lcom/layar/util/UriHelper;

    invoke-virtual {v0, v6}, Lcom/layar/util/UriHelper;->appendBasicParams(Landroid/net/Uri$Builder;)V

    .line 649
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mUriBuider:Lcom/layar/util/UriHelper;

    invoke-virtual {v0, v6, v2}, Lcom/layar/util/UriHelper;->appendLocationParams(Landroid/net/Uri$Builder;Landroid/location/Location;)Landroid/net/Uri$Builder;

    .line 650
    invoke-direct {p0, v6, v1}, Lcom/layar/data/layer/LayerManager;->appendPageKey(Landroid/net/Uri$Builder;Lcom/layar/data/layer/LayersSelector;)V

    .line 651
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/layar/data/layer/LayerManager;->getLayers(Lcom/layar/data/layer/LayersSelector;Landroid/location/Location;Landroid/net/Uri;Lcom/layar/data/layer/LayerManager$LayerFoundListener;Lcom/layar/data/PaginationParams;)Lcom/layar/data/layer/LayerManager$LayersResponse;

    move-result-object v0

    goto/16 :goto_0

    .line 654
    .end local v6           #builder:Landroid/net/Uri$Builder;
    :cond_7
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->layerDb:Lcom/layar/data/layer/LayerDB20;

    invoke-virtual {v0, v1, p2}, Lcom/layar/data/layer/LayerDB20;->getLayers(Lcom/layar/data/layer/LayersSelector;Lcom/layar/data/layer/LayerManager$LayerFoundListener;)Ljava/util/ArrayList;

    move-result-object v7

    .line 655
    .local v7, layers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/data/layer/Layer20;>;"
    invoke-direct {p0, v1}, Lcom/layar/data/layer/LayerManager;->restorePageKey(Lcom/layar/data/layer/LayersSelector;)V

    .line 656
    new-instance v0, Lcom/layar/data/layer/LayerManager$LayersResponse;

    invoke-direct {v0, v3, v7}, Lcom/layar/data/layer/LayerManager$LayersResponse;-><init>(ILjava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method public initializeBookmarkLayers()Lcom/layar/data/layer/LayerManager$LayersResponse;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 669
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 670
    .local v0, builder:Landroid/net/Uri$Builder;
    iget-object v4, p0, Lcom/layar/data/layer/LayerManager;->mUriBuider:Lcom/layar/util/UriHelper;

    const-string v5, "/layer/api/list/<country>/bookmark/all/"

    invoke-virtual {v4, v5}, Lcom/layar/util/UriHelper;->fixCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 671
    iget-object v4, p0, Lcom/layar/data/layer/LayerManager;->mUriBuider:Lcom/layar/util/UriHelper;

    invoke-virtual {v4, v0}, Lcom/layar/util/UriHelper;->appendBasicParams(Landroid/net/Uri$Builder;)V

    .line 673
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p0, v4, v6, v6}, Lcom/layar/data/layer/LayerManager;->getLayers(Landroid/net/Uri;Lcom/layar/data/layer/LayerManager$LayerFoundListener;Lcom/layar/data/PaginationParams;)Lcom/layar/data/layer/LayerManager$LayersResponse;

    move-result-object v3

    .line 674
    .local v3, response:Lcom/layar/data/layer/LayerManager$LayersResponse;
    iget v4, v3, Lcom/layar/data/layer/LayerManager$LayersResponse;->responseCode:I

    if-nez v4, :cond_0

    iget-object v4, v3, Lcom/layar/data/layer/LayerManager$LayersResponse;->layers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 675
    iget-object v4, p0, Lcom/layar/data/layer/LayerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 677
    .local v2, resolver:Landroid/content/ContentResolver;
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/layar/data/layer/LayerManager;->TAG:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " initializeBookmarkLayers"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 676
    invoke-static {v2, v4}, Lcom/layar/provider/ResolverHelper;->startTransaction(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/layar/util/Profiler$TimeProfile;

    move-result-object v1

    .line 678
    .local v1, profile:Lcom/layar/util/Profiler$TimeProfile;
    iget-object v4, p0, Lcom/layar/data/layer/LayerManager;->layerDb:Lcom/layar/data/layer/LayerDB20;

    iget-object v5, p0, Lcom/layar/data/layer/LayerManager;->FAVORITE_SELECTOR:Lcom/layar/data/layer/LayersSelector;

    iget-object v6, v3, Lcom/layar/data/layer/LayerManager$LayersResponse;->layers:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v6}, Lcom/layar/data/layer/LayerDB20;->addLayers(Lcom/layar/data/layer/LayersSelector;Ljava/util/List;)V

    .line 679
    invoke-static {v2, v1}, Lcom/layar/provider/ResolverHelper;->stopTransaction(Landroid/content/ContentResolver;Lcom/layar/util/Profiler$TimeProfile;)V

    .line 682
    .end local v1           #profile:Lcom/layar/util/Profiler$TimeProfile;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :cond_0
    iget v4, v3, Lcom/layar/data/layer/LayerManager$LayersResponse;->responseCode:I

    if-nez v4, :cond_1

    .line 683
    iget-object v4, p0, Lcom/layar/data/layer/LayerManager;->mCacheManager:Lcom/layar/data/layer/LayerCacheManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/layar/data/layer/LayerCacheManager;->setBookmarksInitializes(Z)V

    .line 684
    :cond_1
    return-object v3
.end method

.method public isBookmarked(Lcom/layar/data/layer/Layer20;)Z
    .locals 3
    .parameter "layer"

    .prologue
    .line 766
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->layerDb:Lcom/layar/data/layer/LayerDB20;

    iget-object v1, p0, Lcom/layar/data/layer/LayerManager;->FAVORITE_SELECTOR:Lcom/layar/data/layer/LayersSelector;

    iget-object v2, p1, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/layar/data/layer/LayerDB20;->isExists(Lcom/layar/data/layer/LayersSelector;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isCurrentSelector(Lcom/layar/data/layer/LayersSelector;)Z
    .locals 2
    .parameter "selector"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mSelector:Lcom/layar/data/layer/LayersSelector;

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    iget-object v1, p0, Lcom/layar/data/layer/LayerManager;->mSelector:Lcom/layar/data/layer/LayersSelector;

    iget-object v1, v1, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->subsection:Ljava/lang/String;

    iget-object v1, p0, Lcom/layar/data/layer/LayerManager;->mSelector:Lcom/layar/data/layer/LayersSelector;

    iget-object v1, v1, Lcom/layar/data/layer/LayersSelector;->subsection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->category:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/layar/data/layer/LayersSelector;->category:Ljava/lang/String;

    iget-object v1, p0, Lcom/layar/data/layer/LayerManager;->mSelector:Lcom/layar/data/layer/LayersSelector;

    iget-object v1, v1, Lcom/layar/data/layer/LayersSelector;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 181
    goto :goto_0
.end method

.method public isCurrentSelector(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "type"
    .parameter "subsection"

    .prologue
    .line 171
    invoke-static {p1, p2}, Lcom/layar/data/layer/LayersSelector;->getSelector(Ljava/lang/String;Ljava/lang/String;)Lcom/layar/data/layer/LayersSelector;

    move-result-object v0

    .line 172
    .local v0, selector:Lcom/layar/data/layer/LayersSelector;
    invoke-virtual {p0, v0}, Lcom/layar/data/layer/LayerManager;->isCurrentSelector(Lcom/layar/data/layer/LayersSelector;)Z

    move-result v1

    return v1
.end method

.method public isCurrentSelector(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "type"
    .parameter "subsection"
    .parameter "categoryId"

    .prologue
    .line 176
    invoke-static {p1, p2, p3}, Lcom/layar/data/layer/LayersSelector;->getSelector(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/layar/data/layer/LayersSelector;

    move-result-object v0

    .line 177
    .local v0, selector:Lcom/layar/data/layer/LayersSelector;
    invoke-virtual {p0, v0}, Lcom/layar/data/layer/LayerManager;->isCurrentSelector(Lcom/layar/data/layer/LayersSelector;)Z

    move-result v1

    return v1
.end method

.method public isPurchased(Lcom/layar/data/layer/Layer20;)Z
    .locals 3
    .parameter "layer"

    .prologue
    .line 770
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->layerDb:Lcom/layar/data/layer/LayerDB20;

    iget-object v1, p0, Lcom/layar/data/layer/LayerManager;->PURCHASED_SELECTOR:Lcom/layar/data/layer/LayersSelector;

    iget-object v2, p1, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/layar/data/layer/LayerDB20;->isExists(Lcom/layar/data/layer/LayersSelector;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public moveBookmarkBefore(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "layerNameMovable"
    .parameter "layerNameAnchor"

    .prologue
    .line 794
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->layerDb:Lcom/layar/data/layer/LayerDB20;

    iget-object v1, p0, Lcom/layar/data/layer/LayerManager;->FAVORITE_SELECTOR:Lcom/layar/data/layer/LayersSelector;

    invoke-virtual {v0, v1, p1, p2}, Lcom/layar/data/layer/LayerDB20;->reorderBefore(Lcom/layar/data/layer/LayersSelector;Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    return-void
.end method

.method public needUpdateCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "type"
    .parameter "subsection"
    .parameter "category"

    .prologue
    .line 1391
    invoke-static {p1, p2, p3}, Lcom/layar/data/layer/LayersSelector;->getSelector(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/layar/data/layer/LayersSelector;

    move-result-object v0

    .line 1392
    .local v0, selector:Lcom/layar/data/layer/LayersSelector;
    iget-object v1, p0, Lcom/layar/data/layer/LayerManager;->mCacheManager:Lcom/layar/data/layer/LayerCacheManager;

    invoke-virtual {v1, v0}, Lcom/layar/data/layer/LayerCacheManager;->needUpdate(Lcom/layar/data/layer/LayersSelector;)Z

    move-result v1

    return v1
.end method

.method public readFirstFeaturedLayerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mCacheManager:Lcom/layar/data/layer/LayerCacheManager;

    invoke-virtual {v0}, Lcom/layar/data/layer/LayerCacheManager;->getFirstFeaturedLayerName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public registerView(Lcom/layar/data/layer/LayerManager$LayarView;)V
    .locals 3
    .parameter "layarView"

    .prologue
    .line 895
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->activeViews:Ljava/util/Set;

    monitor-enter v0

    .line 898
    :try_start_0
    iget-object v1, p0, Lcom/layar/data/layer/LayerManager;->activeViews:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 900
    iget-object v1, p0, Lcom/layar/data/layer/LayerManager;->mSensorHelper:Lcom/layar/util/SensorHelper;

    invoke-virtual {v1, p1}, Lcom/layar/util/SensorHelper;->startSensor(Lcom/layar/data/layer/LayerManager$LayarView;)V

    .line 901
    iget-object v1, p0, Lcom/layar/data/layer/LayerManager;->mSensorHelper:Lcom/layar/util/SensorHelper;

    iget-object v2, p0, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v1, v2}, Lcom/layar/util/SensorHelper;->registerLocationListener(Lcom/layar/util/SensorHelper$LocationChangeListener;)V

    .line 895
    monitor-exit v0

    .line 903
    return-void

    .line 895
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeBookmark(Lcom/layar/data/layer/Layer20;)V
    .locals 2
    .parameter "layer"

    .prologue
    .line 778
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->layerDb:Lcom/layar/data/layer/LayerDB20;

    iget-object v1, p0, Lcom/layar/data/layer/LayerManager;->FAVORITE_SELECTOR:Lcom/layar/data/layer/LayersSelector;

    invoke-virtual {v0, v1, p1}, Lcom/layar/data/layer/LayerDB20;->removeLayer(Lcom/layar/data/layer/LayersSelector;Lcom/layar/data/layer/Layer20;)V

    .line 779
    return-void
.end method

.method public removeBookmark(Ljava/lang/String;)V
    .locals 2
    .parameter "layerName"

    .prologue
    .line 782
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->layerDb:Lcom/layar/data/layer/LayerDB20;

    iget-object v1, p0, Lcom/layar/data/layer/LayerManager;->FAVORITE_SELECTOR:Lcom/layar/data/layer/LayersSelector;

    invoke-virtual {v0, v1, p1}, Lcom/layar/data/layer/LayerDB20;->removeLayer(Lcom/layar/data/layer/LayersSelector;Ljava/lang/String;)V

    .line 783
    return-void
.end method

.method public resetCache()V
    .locals 1

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mCacheManager:Lcom/layar/data/layer/LayerCacheManager;

    invoke-virtual {v0}, Lcom/layar/data/layer/LayerCacheManager;->reset()V

    .line 1375
    return-void
.end method

.method public resetCache(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mCacheManager:Lcom/layar/data/layer/LayerCacheManager;

    invoke-virtual {v0, p1}, Lcom/layar/data/layer/LayerCacheManager;->reset(Ljava/lang/String;)V

    .line 1387
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->layerDb:Lcom/layar/data/layer/LayerDB20;

    invoke-virtual {v0, p1}, Lcom/layar/data/layer/LayerDB20;->clear(Ljava/lang/String;)V

    .line 1388
    return-void
.end method

.method public resetPageParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "type"
    .parameter "subsection"
    .parameter "category"

    .prologue
    .line 144
    monitor-enter p0

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mPageParams:Lcom/layar/data/PaginationParams;

    if-nez v0, :cond_0

    .line 146
    monitor-exit p0

    .line 162
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mSelector:Lcom/layar/data/layer/LayersSelector;

    if-nez v0, :cond_1

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/data/layer/LayerManager;->mPageParams:Lcom/layar/data/PaginationParams;

    .line 150
    monitor-exit p0

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 153
    :cond_1
    if-eqz p1, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mSelector:Lcom/layar/data/layer/LayersSelector;

    iget-object v0, v0, Lcom/layar/data/layer/LayersSelector;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 154
    monitor-exit p0

    goto :goto_0

    .line 155
    :cond_2
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mSelector:Lcom/layar/data/layer/LayersSelector;

    iget-object v0, v0, Lcom/layar/data/layer/LayersSelector;->subsection:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 156
    monitor-exit p0

    goto :goto_0

    .line 157
    :cond_3
    if-eqz p3, :cond_4

    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mSelector:Lcom/layar/data/layer/LayersSelector;

    iget-object v0, v0, Lcom/layar/data/layer/LayersSelector;->category:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 158
    monitor-exit p0

    goto :goto_0

    .line 159
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/data/layer/LayerManager;->mSelector:Lcom/layar/data/layer/LayersSelector;

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/data/layer/LayerManager;->mPageParams:Lcom/layar/data/PaginationParams;

    .line 144
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public resetYours()V
    .locals 1

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->layerDb:Lcom/layar/data/layer/LayerDB20;

    invoke-virtual {v0}, Lcom/layar/data/layer/LayerDB20;->clearPurchased()V

    .line 1379
    return-void
.end method

.method public setAutoTriggerAlwaysAllow(Z)V
    .locals 2
    .parameter "allow"

    .prologue
    .line 922
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "prefs.autotriggers"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 923
    return-void
.end method

.method public unregisterView(Lcom/layar/data/layer/LayerManager$LayarView;)V
    .locals 3
    .parameter "layarView"

    .prologue
    .line 906
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->activeViews:Ljava/util/Set;

    monitor-enter v0

    .line 909
    :try_start_0
    iget-object v1, p0, Lcom/layar/data/layer/LayerManager;->activeViews:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 914
    iget-object v1, p0, Lcom/layar/data/layer/LayerManager;->activeViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 915
    iget-object v1, p0, Lcom/layar/data/layer/LayerManager;->mSensorHelper:Lcom/layar/util/SensorHelper;

    invoke-virtual {v1}, Lcom/layar/util/SensorHelper;->stopSensor()V

    .line 916
    iget-object v1, p0, Lcom/layar/data/layer/LayerManager;->mSensorHelper:Lcom/layar/util/SensorHelper;

    iget-object v2, p0, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v1, v2}, Lcom/layar/util/SensorHelper;->unRegisterLocationListener(Lcom/layar/util/SensorHelper$LocationChangeListener;)V

    .line 906
    :cond_0
    monitor-exit v0

    .line 919
    return-void

    .line 906
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateBookmark(Lcom/layar/data/layer/Layer20;)V
    .locals 1
    .parameter "layer"

    .prologue
    .line 786
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->layerDb:Lcom/layar/data/layer/LayerDB20;

    invoke-virtual {v0, p1}, Lcom/layar/data/layer/LayerDB20;->addLayer(Lcom/layar/data/layer/Layer20;)V

    .line 787
    return-void
.end method

.method public updateRecentLayers()V
    .locals 15

    .prologue
    const/4 v4, 0x0

    .line 735
    const-string v0, "recent"

    const-string v3, "all"

    invoke-static {v0, v3}, Lcom/layar/data/layer/LayersSelector;->getSelector(Ljava/lang/String;Ljava/lang/String;)Lcom/layar/data/layer/LayersSelector;

    move-result-object v1

    .line 736
    .local v1, selector:Lcom/layar/data/layer/LayersSelector;
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->layerDb:Lcom/layar/data/layer/LayerDB20;

    invoke-virtual {v0, v1, v4}, Lcom/layar/data/layer/LayerDB20;->getLayers(Lcom/layar/data/layer/LayersSelector;Lcom/layar/data/layer/LayerManager$LayerFoundListener;)Ljava/util/ArrayList;

    move-result-object v8

    .line 739
    .local v8, favorites:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/data/layer/Layer20;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 740
    .local v7, count:I
    if-nez v7, :cond_0

    .line 763
    :goto_0
    return-void

    .line 743
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 744
    .local v10, ids:Ljava/lang/StringBuilder;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 745
    .local v12, modified:Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-lt v9, v7, :cond_1

    .line 755
    new-instance v6, Landroid/net/Uri$Builder;

    invoke-direct {v6}, Landroid/net/Uri$Builder;-><init>()V

    .line 756
    .local v6, builder:Landroid/net/Uri$Builder;
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mUriBuider:Lcom/layar/util/UriHelper;

    const-string v3, "/layer/api/list/<country>/modified/all/"

    invoke-virtual {v0, v3}, Lcom/layar/util/UriHelper;->fixCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 757
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mUriBuider:Lcom/layar/util/UriHelper;

    invoke-virtual {v0, v6}, Lcom/layar/util/UriHelper;->appendBasicParams(Landroid/net/Uri$Builder;)V

    .line 758
    const-string v0, "layerIds"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 759
    const-string v0, "modifiedDates"

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 761
    iget-object v0, p0, Lcom/layar/data/layer/LayerManager;->mSensorHelper:Lcom/layar/util/SensorHelper;

    invoke-virtual {v0}, Lcom/layar/util/SensorHelper;->getCurrentLocation()Landroid/location/Location;

    move-result-object v2

    .line 762
    .local v2, curLoc:Landroid/location/Location;
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/layar/data/layer/LayerManager;->getLayers(Lcom/layar/data/layer/LayersSelector;Landroid/location/Location;Landroid/net/Uri;Lcom/layar/data/layer/LayerManager$LayerFoundListener;Lcom/layar/data/PaginationParams;)Lcom/layar/data/layer/LayerManager$LayersResponse;

    goto :goto_0

    .line 746
    .end local v2           #curLoc:Landroid/location/Location;
    .end local v6           #builder:Landroid/net/Uri$Builder;
    :cond_1
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/layar/data/layer/Layer20;

    .line 747
    .local v11, layer:Lcom/layar/data/layer/Layer20;
    iget-object v0, v11, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    iget-wide v13, v11, Lcom/layar/data/layer/Layer20;->modified:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 749
    const/4 v0, 0x1

    sub-int v0, v7, v0

    if-ge v9, v0, :cond_2

    .line 750
    const-string v0, ","

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    const-string v0, ","

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method
