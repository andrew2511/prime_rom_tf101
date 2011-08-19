.class public abstract Lcom/google/android/maps/MapActivity;
.super Landroid/app/Activity;
.source "MapActivity.java"


# static fields
.field protected static final MAP_DATA_SOURCE_CHINA:I = 0x1

.field protected static final MAP_DATA_SOURCE_DEFAULT:I

.field private static final drawableIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sActivityReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/maps/MapActivity;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sMapReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConfig:Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;

.field private mDataRequestDispatcher:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

.field private mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

.field private mMapView:Lcom/google/android/maps/MapView;

.field private final mNetworkHandler:Landroid/os/Handler;

.field private mNetworkWatcher:Lcom/google/android/maps/NetworkConnectivityListener;

.field private mTrafficService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 294
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/maps/MapActivity;->drawableIdMap:Ljava/util/Map;

    .line 295
    sget-object v0, Lcom/google/android/maps/MapActivity;->drawableIdMap:Ljava/util/Map;

    const-string v1, "loading_tile_android"

    sget v2, Lcom/google/android/maps/InternalR$drawable;->loading_tile_android:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lcom/google/android/maps/MapActivity;->drawableIdMap:Ljava/util/Map;

    const-string v1, "no_tile_256"

    sget v2, Lcom/google/android/maps/InternalR$drawable;->no_tile_256:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/maps/MapActivity;->sMapReference:Ljava/lang/ref/WeakReference;

    .line 351
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/maps/MapActivity;->sActivityReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 272
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/MapActivity;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    .line 354
    new-instance v0, Lcom/google/android/maps/MapActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/maps/MapActivity$1;-><init>(Lcom/google/android/maps/MapActivity;)V

    iput-object v0, p0, Lcom/google/android/maps/MapActivity;->mNetworkHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/maps/MapActivity;)Lcom/google/android/maps/NetworkConnectivityListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mNetworkWatcher:Lcom/google/android/maps/NetworkConnectivityListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/maps/MapActivity;)Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;
    .registers 2
    .parameter "x0"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/maps/MapActivity;)Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;
    .registers 2
    .parameter "x0"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mConfig:Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;

    return-object v0
.end method

.method private createMap()V
    .registers 11

    .prologue
    const v2, 0x64000

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v7, 0x5f

    const/16 v6, 0x2d

    .line 528
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->getInstance()Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    .line 529
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    if-eqz v0, :cond_ad

    .line 530
    const-string v0, "MapActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recycling dispatcher "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->resetConnectionFactory()V

    .line 552
    :goto_32
    invoke-super {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-super {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/KeyHelper;->getSignatureFingerprint(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 554
    iget-object v1, p0, Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v1, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->setAndroidSignature(Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->setApplicationName(Ljava/lang/String;)V

    .line 562
    invoke-virtual {p0}, Lcom/google/android/maps/MapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/maps/InternalR$array;->maps_starting_lat_lng:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 564
    new-instance v4, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    aget v1, v0, v8

    aget v0, v0, v9

    invoke-direct {v4, v1, v0}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;-><init>(II)V

    .line 565
    invoke-virtual {p0}, Lcom/google/android/maps/MapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/maps/InternalR$array;->maps_starting_zoom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 567
    aget v0, v0, v8

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoom(I)Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    move-result-object v5

    .line 569
    sget-object v0, Lcom/google/android/maps/MapActivity;->sMapReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    iput-object v0, p0, Lcom/google/android/maps/MapActivity;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    .line 570
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    if-nez v0, :cond_121

    .line 571
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    const v1, 0xc8000

    const/16 v6, 0xa

    move v3, v2

    invoke-direct/range {v0 .. v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;-><init>(IIILandroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;I)V

    iput-object v0, p0, Lcom/google/android/maps/MapActivity;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    .line 581
    :goto_8e
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/google/android/maps/MapActivity;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/maps/MapActivity;->sMapReference:Ljava/lang/ref/WeakReference;

    .line 582
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/maps/MapActivity;->sActivityReference:Ljava/lang/ref/WeakReference;

    .line 584
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;

    const-wide/32 v1, 0x1d4c0

    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/android/TaskRunnerManager;->getTaskRunner()Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;-><init>(JLandroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;)V

    iput-object v0, p0, Lcom/google/android/maps/MapActivity;->mTrafficService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;

    .line 585
    return-void

    .line 533
    :cond_ad
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;->getServerUrl()Ljava/lang/String;

    move-result-object v0

    .line 534
    const-string v1, "1.6"

    .line 535
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "android:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "ro.product.brand"

    const-string v5, "unknown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ro.product.device"

    const-string v5, "unknown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ro.product.model"

    const-string v5, "unknown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 543
    invoke-virtual {p0}, Lcom/google/android/maps/MapActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "client_id"

    const-string v6, "unknown"

    invoke-static {v4, v5, v6}, Landroid_maps_conflict_avoidance/com/google/android/gsf/GoogleSettingsContract$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 546
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gmm-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 548
    invoke-static {v0, v3, v1, v4, v9}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->createInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    goto/16 :goto_32

    .line 579
    :cond_121
    const-string v0, "MapActivity"

    const-string v1, "Recycling map object."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8e
.end method

.method private getServerUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/google/android/maps/MapActivity;->onGetMapDataSource()I

    move-result v0

    packed-switch v0, :pswitch_data_e

    .line 518
    const-string v0, "http://www.google.com/glm/mmap/a"

    :goto_9
    return-object v0

    .line 516
    :pswitch_a
    const-string v0, "http://www.google.cn/glm/mmap/a"

    goto :goto_9

    .line 514
    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_a
    .end packed-switch
.end method

.method private restoreGlobalState()V
    .registers 3

    .prologue
    .line 464
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mConfig:Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->setConfig(Landroid_maps_conflict_avoidance/com/google/common/Config;)V

    .line 465
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->resetConnectionFactory()V

    .line 466
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mMapView:Lcom/google/android/maps/MapView;

    if-eqz v0, :cond_15

    .line 467
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mMapView:Lcom/google/android/maps/MapView;

    iget-object v1, p0, Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapView;->restoreMapReferences(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)V

    .line 469
    :cond_15
    return-void
.end method

.method private sendStartSession()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 648
    invoke-virtual {p0}, Lcom/google/android/maps/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_35

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p0}, Lcom/google/android/maps/MapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 649
    const/4 v0, 0x1

    .line 654
    :goto_18
    :try_start_18
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 655
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 656
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 657
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->getInstance()Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->addSimpleRequest(I[BZZ)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_34} :catch_37

    .line 664
    :goto_34
    return-void

    :cond_35
    move v0, v2

    .line 651
    goto :goto_18

    .line 660
    :catch_37
    move-exception v0

    .line 662
    const-string v1, "MapActivity"

    const-string v2, "Error sending start session request"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_34
.end method

.method private setupTileDensity()V
    .registers 3

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/google/android/maps/MapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v1, 0xc8

    if-le v0, v1, :cond_12

    .line 430
    const/4 v0, 0x3

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setTextSize(I)V

    .line 432
    :cond_12
    return-void
.end method


# virtual methods
.method protected isLocationDisplayed()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 629
    iget-object v3, p0, Lcom/google/android/maps/MapActivity;->mMapView:Lcom/google/android/maps/MapView;

    if-nez v3, :cond_7

    move v3, v4

    .line 640
    :goto_6
    return v3

    .line 631
    :cond_7
    iget-object v3, p0, Lcom/google/android/maps/MapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v2

    .line 632
    .local v2, overlays:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    monitor-enter v2

    .line 633
    :try_start_e
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/Overlay;

    .line 634
    .local v1, overlay:Lcom/google/android/maps/Overlay;
    instance-of v3, v1, Lcom/google/android/maps/MyLocationOverlay;

    if-eqz v3, :cond_12

    check-cast v1, Lcom/google/android/maps/MyLocationOverlay;

    .end local v1           #overlay:Lcom/google/android/maps/Overlay;
    invoke-virtual {v1}, Lcom/google/android/maps/MyLocationOverlay;->isMyLocationEnabled()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 636
    const/4 v3, 0x1

    monitor-exit v2

    goto :goto_6

    .line 639
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_2d
    move-exception v3

    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_e .. :try_end_2f} :catchall_2d

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_30
    :try_start_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2d

    move v3, v4

    .line 640
    goto :goto_6
.end method

.method protected abstract isRouteDisplayed()Z
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "icicle"

    .prologue
    .line 414
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 416
    new-instance v0, Lcom/google/android/maps/NetworkConnectivityListener;

    invoke-direct {v0}, Lcom/google/android/maps/NetworkConnectivityListener;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/MapActivity;->mNetworkWatcher:Lcom/google/android/maps/NetworkConnectivityListener;

    .line 417
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mNetworkWatcher:Lcom/google/android/maps/NetworkConnectivityListener;

    iget-object v1, p0, Lcom/google/android/maps/MapActivity;->mNetworkHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/NetworkConnectivityListener;->registerHandler(Landroid/os/Handler;I)V

    .line 419
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;

    invoke-direct {v0, p0}, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/MapActivity;->mConfig:Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;

    .line 420
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mConfig:Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->getImageFactory()Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImageFactory;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/MapActivity;->drawableIdMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImageFactory;->setStringIdMap(Ljava/util/Map;)V

    .line 421
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;->setupTileDensity()V

    .line 422
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;->createMap()V

    .line 423
    if-nez p1, :cond_2f

    .line 424
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;->sendStartSession()V

    .line 426
    :cond_2f
    return-void
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    .line 495
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 496
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mMapView:Lcom/google/android/maps/MapView;

    if-eqz v0, :cond_e

    .line 497
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mMapView:Lcom/google/android/maps/MapView;

    iget-object v1, p0, Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapView;->cleanupMapReferences(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)V

    .line 499
    :cond_e
    sget-object v0, Lcom/google/android/maps/MapActivity;->sActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_35

    .line 500
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mNetworkWatcher:Lcom/google/android/maps/NetworkConnectivityListener;

    iget-object v1, p0, Lcom/google/android/maps/MapActivity;->mNetworkHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    .line 501
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/MapActivity;->mNetworkWatcher:Lcom/google/android/maps/NetworkConnectivityListener;

    .line 502
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mTrafficService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->close()V

    .line 503
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->close(Z)V

    .line 507
    :goto_2b
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mConfig:Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->getConnectionFactory()Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;

    move-result-object v0

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;->close()V

    .line 508
    return-void

    .line 505
    :cond_35
    const-string v0, "MapActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy leaving the lights on for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/maps/MapActivity;->sActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b
.end method

.method protected onGetMapDataSource()I
    .registers 2

    .prologue
    .line 680
    const/4 v0, 0x0

    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter "newIntent"

    .prologue
    .line 435
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 436
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;->sendStartSession()V

    .line 437
    return-void
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 478
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 479
    sget-object v0, Lcom/google/android/maps/MapActivity;->sActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_2e

    .line 480
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mTrafficService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->stop()V

    .line 481
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->pause()V

    .line 482
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->stop()V

    .line 483
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mNetworkWatcher:Lcom/google/android/maps/NetworkConnectivityListener;

    invoke-virtual {v0}, Lcom/google/android/maps/NetworkConnectivityListener;->stopListening()V

    .line 484
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->saveState()V

    .line 485
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mConfig:Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    move-result-object v0

    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->savePreferences()V

    .line 489
    :goto_2d
    return-void

    .line 487
    :cond_2e
    const-string v0, "MapActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause leaving the lights on for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/maps/MapActivity;->sActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 446
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 447
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;->restoreGlobalState()V

    .line 449
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mTrafficService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->start()V

    .line 450
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->start()V

    .line 451
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mNetworkWatcher:Lcom/google/android/maps/NetworkConnectivityListener;

    invoke-virtual {v0, p0}, Lcom/google/android/maps/NetworkConnectivityListener;->startListening(Landroid/content/Context;)V

    .line 452
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->resume()V

    .line 453
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/maps/MapActivity;->sActivityReference:Ljava/lang/ref/WeakReference;

    .line 454
    return-void
.end method

.method setupMapView(Lcom/google/android/maps/MapView;)V
    .registers 6
    .parameter "mapView"

    .prologue
    .line 396
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mMapView:Lcom/google/android/maps/MapView;

    if-eqz v0, :cond_c

    .line 397
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You are only allowed to have a single MapView in a MapActivity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :cond_c
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    iget-object v1, p1, Lcom/google/android/maps/MapView;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->setAndroidMapKey(Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {p0}, Lcom/google/android/maps/MapActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "logging_id2"

    invoke-static {v1, v2}, Landroid_maps_conflict_avoidance/com/google/android/gsf/GoogleSettingsContract$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->setAndroidLoggingId2(Ljava/lang/String;)V

    .line 403
    iput-object p1, p0, Lcom/google/android/maps/MapActivity;->mMapView:Lcom/google/android/maps/MapView;

    .line 404
    iget-object v0, p0, Lcom/google/android/maps/MapActivity;->mMapView:Lcom/google/android/maps/MapView;

    iget-object v1, p0, Lcom/google/android/maps/MapActivity;->mMap:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;

    iget-object v2, p0, Lcom/google/android/maps/MapActivity;->mTrafficService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;

    iget-object v3, p0, Lcom/google/android/maps/MapActivity;->mDataRequestDispatcher:Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/MapView;->setup(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;)V

    .line 405
    return-void
.end method
