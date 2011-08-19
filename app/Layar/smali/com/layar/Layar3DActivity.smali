.class public abstract Lcom/layar/Layar3DActivity;
.super Lcom/layar/DestroyInformerHelper;
.source "Layar3DActivity.java"

# interfaces
.implements Lcom/layar/data/layer/LayerHandler$AutoTriggerListener;
.implements Lcom/layar/ui/CustomMenu$CustomMenuListener;
.implements Lcom/layar/data/AudioPlayer;
.implements Lcom/layar/ui/RotationChangeInformer;
.implements Lcom/layar/ui/RotationListener;
.implements Lcom/layar/adapters/LayerActionsAdapter$ScreenshotHandler;
.implements Lcom/layar/core/ARRenderer$POIClickListener;
.implements Lcom/layar/data/DownloadListener;
.implements Lcom/layar/ui/ActionsMenu$ActionsMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/Layar3DActivity$MediaScannerNotifier;,
        Lcom/layar/Layar3DActivity$Preview;,
        Lcom/layar/Layar3DActivity$ScreenshotHandler3D;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/layar/DestroyInformerHelper;",
        "Lcom/layar/data/layer/LayerHandler$AutoTriggerListener;",
        "Lcom/layar/ui/CustomMenu$CustomMenuListener;",
        "Lcom/layar/data/AudioPlayer;",
        "Lcom/layar/ui/RotationChangeInformer;",
        "Lcom/layar/ui/RotationListener;",
        "Lcom/layar/adapters/LayerActionsAdapter$ScreenshotHandler;",
        "Lcom/layar/core/ARRenderer$POIClickListener;",
        "Lcom/layar/data/DownloadListener",
        "<",
        "Lcom/layar/data/POI;",
        ">;",
        "Lcom/layar/ui/ActionsMenu$ActionsMenuListener;"
    }
.end annotation


# static fields
.field public static final EXTRAS_DATA_ID:Ljava/lang/String; = "AR:dataId"

.field public static final EXTRAS_RESUMING:Ljava/lang/String; = "AR:resume"

.field public static final EXTRAS_SHOWN_ON_STARTUP:Ljava/lang/String; = "shownOnStartup"

.field public static final MAX_INITIALIZE_CAMERA_RETRY:I = 0xa

.field public static final REINITIALIZE_CAMERA_INTERVAL_MILISECONDS:I = 0xbb8

.field public static final REINITIALIZE_HANDLER_MESSAGE:I = 0x0

.field protected static final RESTART_ONE_LAYER_AR_VIEW:I = 0x1

.field protected static final RESTART_SPOTLIGHT_AR_VIEW:I = 0x2

.field public static final SCREENSHOT_EXIF_DENOM:Ljava/lang/String; = "/1"

.field public static final SCREENSHOT_EXIF_DENOM_SEPARATOR:Ljava/lang/String; = "/1,"

.field public static final SCREENSHOT_EXIF_MINUTES_SEPARATOR:Ljava/lang/String; = ":"

.field public static final SCREENSHOT_EXIF_SECONDS_SEPARATOR:Ljava/lang/String; = "\\."

.field public static SCREENSHOT_MODE:Z = false

.field private static final TAG:Ljava/lang/String; = "layar.Layar3DActivity"

.field public static final VIEW_REFRESH_INTERVAL:J = 0x1f4L

.field public static preview:Lcom/layar/Layar3DActivity$Preview;

.field public static showDetailBIW:Z


# instance fields
.field private audioPlayer:Lcom/layar/ui/AudioView;

.field protected dataId:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private invalidator:Ljava/lang/Runnable;

.field private mARView:Lcom/layar/core/ARView;

.field protected mBiw:Lcom/layar/ui/BriefInfoViewWrapper;

.field protected mLayerManager:Lcom/layar/data/layer/LayerManager;

.field protected mLayout:Lcom/layar/ui/RotateLayout;

.field private mMenu:Lcom/layar/ui/CustomMenu;

.field protected mPOIsContainer:Lcom/layar/core/POIsContainer;

.field protected mRenderer:Lcom/layar/core/ARRenderer;

.field private mSceenshotHandler:Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

.field private rotationListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/ui/RotationListener;",
            ">;"
        }
    .end annotation
.end field

.field protected running:Z

.field protected viewRadarButton:Landroid/view/View;

.field private viewScreenshotBar:Landroid/view/View;

.field protected viewStatus:Lcom/layar/ui/StatusView;

.field private wakelock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    sput-boolean v1, Lcom/layar/Layar3DActivity;->SCREENSHOT_MODE:Z

    .line 123
    const/4 v0, 0x0

    sput-object v0, Lcom/layar/Layar3DActivity;->preview:Lcom/layar/Layar3DActivity$Preview;

    .line 149
    sput-boolean v1, Lcom/layar/Layar3DActivity;->showDetailBIW:Z

    .line 85
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Lcom/layar/DestroyInformerHelper;-><init>()V

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layar/Layar3DActivity;->running:Z

    .line 143
    iput-object v1, p0, Lcom/layar/Layar3DActivity;->wakelock:Landroid/os/PowerManager$WakeLock;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/layar/Layar3DActivity;->rotationListeners:Ljava/util/ArrayList;

    .line 152
    iput-object v1, p0, Lcom/layar/Layar3DActivity;->mSceenshotHandler:Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    .line 85
    return-void
.end method

.method static synthetic access$1(Lcom/layar/Layar3DActivity;)Lcom/layar/core/ARView;
    .locals 1
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->mARView:Lcom/layar/core/ARView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/layar/Layar3DActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1209
    invoke-direct {p0, p1}, Lcom/layar/Layar3DActivity;->geotagImageToExif(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/layar/Layar3DActivity;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->viewScreenshotBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4(Lcom/layar/Layar3DActivity;Lcom/layar/Layar3DActivity$ScreenshotHandler3D;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/layar/Layar3DActivity;->mSceenshotHandler:Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    return-void
.end method

.method static synthetic access$5(Lcom/layar/Layar3DActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/layar/Layar3DActivity;->refreshBiws()V

    return-void
.end method

.method static synthetic access$6(Lcom/layar/Layar3DActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7(Lcom/layar/Layar3DActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->invalidator:Ljava/lang/Runnable;

    return-object v0
.end method

.method private convertCoordinates(D)Ljava/lang/String;
    .locals 9
    .parameter "coord"

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1233
    invoke-static {p1, p2, v5}, Landroid/location/Location;->convert(DI)Ljava/lang/String;

    move-result-object v2

    .line 1240
    .local v2, str:Ljava/lang/String;
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1241
    .local v3, strs:[Ljava/lang/String;
    aget-object v4, v3, v5

    const-string v5, "\\."

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1242
    .local v1, seconds:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    aget-object v4, v3, v6

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1243
    .local v0, preformated:Ljava/lang/StringBuilder;
    const-string v4, "/1,"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1244
    aget-object v4, v3, v7

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1245
    const-string v4, "/1,"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1246
    if-eqz v1, :cond_1

    array-length v4, v1

    if-lez v4, :cond_1

    .line 1247
    aget-object v4, v1, v6

    const-string v5, "0"

    if-eq v4, v5, :cond_0

    .line 1248
    aget-object v4, v1, v6

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1250
    :cond_0
    array-length v4, v1

    if-le v4, v7, :cond_1

    .line 1251
    aget-object v4, v1, v7

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1252
    aget-object v4, v1, v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v7, :cond_2

    .line 1253
    const-string v4, "/1"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1255
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/high16 v5, 0x4024

    aget-object v7, v1, v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    int-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private geotagImageToExif(Ljava/lang/String;)V
    .locals 7
    .parameter "path"

    .prologue
    const-wide/16 v5, 0x0

    .line 1210
    sget-boolean v2, Lcom/layar/util/MyConfig;->USE_EXIF:Z

    if-nez v2, :cond_1

    .line 1224
    :cond_0
    :goto_0
    return-void

    .line 1213
    :cond_1
    invoke-static {}, Lcom/layar/App;->getSensorHelper()Lcom/layar/util/SensorHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/layar/util/SensorHelper;->getCurrentLocation()Landroid/location/Location;

    move-result-object v1

    .line 1214
    .local v1, loc:Landroid/location/Location;
    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    .line 1217
    new-instance v0, Lcom/layar/reflect/ExifWrapper;

    invoke-direct {v0, p1}, Lcom/layar/reflect/ExifWrapper;-><init>(Ljava/lang/String;)V

    .line 1218
    .local v0, exif:Lcom/layar/reflect/ExifWrapper;
    const-string v2, "GPSLatitude"

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/layar/Layar3DActivity;->convertCoordinates(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/layar/reflect/ExifWrapper;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    const-string v2, "GPSLongitude"

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/layar/Layar3DActivity;->convertCoordinates(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/layar/reflect/ExifWrapper;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    const-string v2, "GPSLatitudeRef"

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    cmpl-double v3, v3, v5

    if-lez v3, :cond_2

    const-string v3, "N"

    :goto_1
    invoke-virtual {v0, v2, v3}, Lcom/layar/reflect/ExifWrapper;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    const-string v2, "GPSLongitudeRef"

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    cmpl-double v3, v3, v5

    if-lez v3, :cond_3

    const-string v3, "E"

    :goto_2
    invoke-virtual {v0, v2, v3}, Lcom/layar/reflect/ExifWrapper;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    invoke-virtual {v0}, Lcom/layar/reflect/ExifWrapper;->saveAttributes()Z

    goto :goto_0

    .line 1220
    :cond_2
    const-string v3, "S"

    goto :goto_1

    .line 1221
    :cond_3
    const-string v3, "W"

    goto :goto_2
.end method

.method private informRotationChanged(I)V
    .locals 3
    .parameter "newRotation"

    .prologue
    .line 718
    iget-object v1, p0, Lcom/layar/Layar3DActivity;->rotationListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 721
    return-void

    .line 718
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/ui/RotationListener;

    .line 719
    .local v0, listener:Lcom/layar/ui/RotationListener;
    invoke-interface {v0, p1}, Lcom/layar/ui/RotationListener;->rotationChanged(I)V

    goto :goto_0
.end method

.method private refreshBiws()V
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/layar/Layar3DActivity;->refreshBiws(Z)V

    .line 349
    return-void
.end method

.method private refreshBiws(Z)V
    .locals 6
    .parameter "hideArrow"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 352
    iget-object v2, p0, Lcom/layar/Layar3DActivity;->mPOIsContainer:Lcom/layar/core/POIsContainer;

    .line 353
    iget-object v3, p0, Lcom/layar/Layar3DActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v3, v3, Lcom/layar/data/layer/LayerManager;->mSensorHelper:Lcom/layar/util/SensorHelper;

    invoke-virtual {v3}, Lcom/layar/util/SensorHelper;->getCurrentDirection()F

    move-result v3

    invoke-interface {v2, v3}, Lcom/layar/core/POIsContainer;->getFocus(F)Lcom/layar/data/BasePOI;

    move-result-object v0

    .line 355
    .local v0, focus:Lcom/layar/data/BasePOI;
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/layar/data/BasePOI;->showSmallBiw:Z

    if-eqz v2, :cond_1

    move v1, v4

    .line 362
    .local v1, hideBiw:Z
    :goto_0
    iget-object v2, p0, Lcom/layar/Layar3DActivity;->mBiw:Lcom/layar/ui/BriefInfoViewWrapper;

    invoke-virtual {v2, v0, v4}, Lcom/layar/ui/BriefInfoViewWrapper;->setPOI(Lcom/layar/data/BasePOI;Z)V

    .line 363
    if-eqz v1, :cond_2

    .line 364
    if-eqz p1, :cond_0

    .line 365
    iget-object v2, p0, Lcom/layar/Layar3DActivity;->mRenderer:Lcom/layar/core/ARRenderer;

    invoke-virtual {v2, v4}, Lcom/layar/core/ARRenderer;->setArrowVisible(Z)V

    .line 366
    :cond_0
    iget-object v2, p0, Lcom/layar/Layar3DActivity;->mBiw:Lcom/layar/ui/BriefInfoViewWrapper;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/layar/ui/BriefInfoViewWrapper;->setVisibility(I)V

    .line 371
    :goto_1
    return-void

    .end local v1           #hideBiw:Z
    :cond_1
    move v1, v5

    .line 355
    goto :goto_0

    .line 368
    .restart local v1       #hideBiw:Z
    :cond_2
    iget-object v2, p0, Lcom/layar/Layar3DActivity;->mRenderer:Lcom/layar/core/ARRenderer;

    invoke-virtual {v2, v5}, Lcom/layar/core/ARRenderer;->setArrowVisible(Z)V

    .line 369
    iget-object v2, p0, Lcom/layar/Layar3DActivity;->mBiw:Lcom/layar/ui/BriefInfoViewWrapper;

    invoke-virtual {v2, v4}, Lcom/layar/ui/BriefInfoViewWrapper;->setVisibility(I)V

    goto :goto_1
.end method

.method private showMenu()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->mMenu:Lcom/layar/ui/CustomMenu;

    invoke-virtual {v0}, Lcom/layar/ui/CustomMenu;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->mMenu:Lcom/layar/ui/CustomMenu;

    invoke-virtual {v0}, Lcom/layar/ui/CustomMenu;->hideMenu()V

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->mMenu:Lcom/layar/ui/CustomMenu;

    invoke-virtual {v0}, Lcom/layar/ui/CustomMenu;->isCreated()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/layar/Layar3DActivity;->mMenu:Lcom/layar/ui/CustomMenu;

    invoke-virtual {p0, v0}, Lcom/layar/Layar3DActivity;->createMenu(Lcom/layar/ui/CustomMenu;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 289
    :cond_2
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->mMenu:Lcom/layar/ui/CustomMenu;

    invoke-virtual {p0, v0}, Lcom/layar/Layar3DActivity;->prepareMenu(Lcom/layar/ui/CustomMenu;)Z

    .line 290
    :cond_3
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->mMenu:Lcom/layar/ui/CustomMenu;

    invoke-virtual {v0}, Lcom/layar/ui/CustomMenu;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->mMenu:Lcom/layar/ui/CustomMenu;

    invoke-virtual {v0}, Lcom/layar/ui/CustomMenu;->showMenu()V

    goto :goto_0
.end method


# virtual methods
.method protected createMenu(Lcom/layar/ui/CustomMenu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 238
    invoke-virtual {p1}, Lcom/layar/ui/CustomMenu;->isCreated()Z

    move-result v0

    .line 239
    .local v0, result:Z
    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {p1, p0}, Lcom/layar/ui/CustomMenu;->setListener(Lcom/layar/ui/CustomMenu$CustomMenuListener;)V

    .line 241
    :cond_0
    return v0
.end method

.method public createScreenshot()V
    .locals 2

    .prologue
    .line 724
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->viewScreenshotBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 725
    return-void
.end method

.method public getAudioPlayer()Lcom/layar/data/AudioPlayer;
    .locals 0

    .prologue
    .line 1164
    return-object p0
.end method

.method public getLayoutRotation()I
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->mLayout:Lcom/layar/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/layar/ui/RotateLayout;->getLayoutRotation()I

    move-result v0

    return v0
.end method

.method public getOwner()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 1169
    return-object p0
.end method

.method public getPoisContainer()Lcom/layar/core/POIsContainer;
    .locals 1

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->mPOIsContainer:Lcom/layar/core/POIsContainer;

    return-object v0
.end method

.method protected abstract initLayerRenderer()V
.end method

.method protected abstract initPOIsContainer()V
.end method

.method protected initView()V
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->mBiw:Lcom/layar/ui/BriefInfoViewWrapper;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/layar/ui/BriefInfoViewWrapper;->setVisibility(I)V

    .line 472
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->mBiw:Lcom/layar/ui/BriefInfoViewWrapper;

    invoke-virtual {v0, p0}, Lcom/layar/ui/BriefInfoViewWrapper;->setActionListener(Lcom/layar/ui/ActionsMenu$ActionsMenuListener;)V

    .line 473
    return-void
.end method

.method public onAction(Lcom/layar/data/PoiAction;Lcom/layar/data/layer/Layer20;)V
    .locals 7
    .parameter "action"
    .parameter "layer"

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->mPOIsContainer:Lcom/layar/core/POIsContainer;

    invoke-interface {v0}, Lcom/layar/core/POIsContainer;->getFocus()Lcom/layar/data/BasePOI;

    move-result-object v2

    .line 1269
    .local v2, focus:Lcom/layar/data/BasePOI;
    iget-object v4, p0, Lcom/layar/Layar3DActivity;->mPOIsContainer:Lcom/layar/core/POIsContainer;

    move-object v0, p1

    move-object v1, p2

    move-object v3, p0

    move-object v5, p0

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/layar/data/ActionHelper;->executeAction(Lcom/layar/data/PoiAction;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;Landroid/app/Activity;Lcom/layar/core/POIsContainer;Lcom/layar/data/AudioPlayer;Lcom/layar/ui/ActionsMenu$ActionsMenuListener;)V

    .line 1270
    return-void
.end method

.method protected abstract onAfterCreate()V
.end method

.method protected abstract onBeforeCreate()V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, -0x1

    .line 159
    invoke-super {p0, p1}, Lcom/layar/DestroyInformerHelper;->onCreate(Landroid/os/Bundle;)V

    .line 161
    invoke-virtual {p0}, Lcom/layar/Layar3DActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/layar/data/layer/LayerManager;->getLayerManager(Landroid/content/Context;)Lcom/layar/data/layer/LayerManager;

    move-result-object v3

    iput-object v3, p0, Lcom/layar/Layar3DActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    .line 163
    invoke-virtual {p0}, Lcom/layar/Layar3DActivity;->initPOIsContainer()V

    .line 164
    invoke-virtual {p0}, Lcom/layar/Layar3DActivity;->initLayerRenderer()V

    .line 166
    invoke-virtual {p0}, Lcom/layar/Layar3DActivity;->onBeforeCreate()V

    .line 167
    invoke-virtual {p0}, Lcom/layar/Layar3DActivity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 227
    :goto_0
    return-void

    .line 171
    :cond_0
    new-instance v3, Lcom/layar/core/ARView;

    iget-object v4, p0, Lcom/layar/Layar3DActivity;->mRenderer:Lcom/layar/core/ARRenderer;

    invoke-direct {v3, p0, v4}, Lcom/layar/core/ARView;-><init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView$Renderer;)V

    iput-object v3, p0, Lcom/layar/Layar3DActivity;->mARView:Lcom/layar/core/ARView;

    .line 172
    iget-object v3, p0, Lcom/layar/Layar3DActivity;->mARView:Lcom/layar/core/ARView;

    invoke-virtual {p0, v3}, Lcom/layar/Layar3DActivity;->setContentView(Landroid/view/View;)V

    .line 176
    sget-object v3, Lcom/layar/Layar3DActivity;->preview:Lcom/layar/Layar3DActivity$Preview;

    if-nez v3, :cond_1

    .line 177
    new-instance v3, Lcom/layar/Layar3DActivity$Preview;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/layar/Layar3DActivity$Preview;-><init>(Landroid/content/Context;Lcom/layar/Layar3DActivity$Preview$PreviewFallListener;)V

    sput-object v3, Lcom/layar/Layar3DActivity;->preview:Lcom/layar/Layar3DActivity$Preview;

    .line 179
    sget-object v3, Lcom/layar/Layar3DActivity;->preview:Lcom/layar/Layar3DActivity$Preview;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 180
    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 179
    invoke-virtual {p0, v3, v4}, Lcom/layar/Layar3DActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 185
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f030026

    .line 186
    const v3, 0x7f070066

    invoke-virtual {p0, v3}, Lcom/layar/Layar3DActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 185
    invoke-virtual {v0, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/layar/ui/RotateLayout;

    iput-object v3, p0, Lcom/layar/Layar3DActivity;->mLayout:Lcom/layar/ui/RotateLayout;

    .line 187
    iget-object v3, p0, Lcom/layar/Layar3DActivity;->mLayout:Lcom/layar/ui/RotateLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 188
    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 187
    invoke-virtual {p0, v3, v4}, Lcom/layar/Layar3DActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    const v3, 0x7f070069

    invoke-virtual {p0, v3}, Lcom/layar/Layar3DActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/layar/ui/StatusView;

    iput-object v3, p0, Lcom/layar/Layar3DActivity;->viewStatus:Lcom/layar/ui/StatusView;

    .line 191
    const v3, 0x7f070067

    invoke-virtual {p0, v3}, Lcom/layar/Layar3DActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/layar/Layar3DActivity;->viewRadarButton:Landroid/view/View;

    .line 192
    const v3, 0x7f07006a

    invoke-virtual {p0, v3}, Lcom/layar/Layar3DActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/layar/ui/BriefInfoViewWrapper;

    iput-object v3, p0, Lcom/layar/Layar3DActivity;->mBiw:Lcom/layar/ui/BriefInfoViewWrapper;

    .line 193
    const v3, 0x7f07006b

    invoke-virtual {p0, v3}, Lcom/layar/Layar3DActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/layar/ui/CustomMenu;

    iput-object v3, p0, Lcom/layar/Layar3DActivity;->mMenu:Lcom/layar/ui/CustomMenu;

    .line 195
    const v3, 0x7f07006c

    invoke-virtual {p0, v3}, Lcom/layar/Layar3DActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/layar/ui/AudioView;

    iput-object v3, p0, Lcom/layar/Layar3DActivity;->audioPlayer:Lcom/layar/ui/AudioView;

    .line 196
    iget-object v3, p0, Lcom/layar/Layar3DActivity;->audioPlayer:Lcom/layar/ui/AudioView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/layar/ui/AudioView;->setVisibility(I)V

    .line 198
    iget-object v3, p0, Lcom/layar/Layar3DActivity;->mMenu:Lcom/layar/ui/CustomMenu;

    invoke-virtual {p0, v3}, Lcom/layar/Layar3DActivity;->createMenu(Lcom/layar/ui/CustomMenu;)Z

    .line 200
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 201
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/layar/Layar3DActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 203
    iget-object v3, p0, Lcom/layar/Layar3DActivity;->mBiw:Lcom/layar/ui/BriefInfoViewWrapper;

    iget-object v4, p0, Lcom/layar/Layar3DActivity;->mPOIsContainer:Lcom/layar/core/POIsContainer;

    invoke-virtual {v3, v4}, Lcom/layar/ui/BriefInfoViewWrapper;->setPOIsContainer(Lcom/layar/core/POIsContainer;)V

    .line 205
    const v3, 0x7f070008

    invoke-virtual {p0, v3}, Lcom/layar/Layar3DActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/layar/Layar3DActivity;->viewScreenshotBar:Landroid/view/View;

    .line 206
    const v3, 0x7f070009

    invoke-virtual {p0, v3}, Lcom/layar/Layar3DActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/layar/Layar3DActivity$1;

    invoke-direct {v4, p0}, Lcom/layar/Layar3DActivity$1;-><init>(Lcom/layar/Layar3DActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    sget-boolean v3, Lcom/layar/Layar3DActivity;->SCREENSHOT_MODE:Z

    if-eqz v3, :cond_2

    .line 219
    iget-object v3, p0, Lcom/layar/Layar3DActivity;->viewScreenshotBar:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 221
    :cond_2
    iget-object v3, p0, Lcom/layar/Layar3DActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v3, v3, Lcom/layar/data/layer/LayerManager;->mSensorHelper:Lcom/layar/util/SensorHelper;

    invoke-virtual {v3}, Lcom/layar/util/SensorHelper;->getLayoutRotation()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/layar/Layar3DActivity;->rotationChanged(I)V

    .line 223
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/layar/Layar3DActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 224
    .local v2, pm:Landroid/os/PowerManager;
    const/4 v3, 0x6

    const-string v4, "layar.Layar3DActivity"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/layar/Layar3DActivity;->wakelock:Landroid/os/PowerManager$WakeLock;

    .line 226
    invoke-virtual {p0}, Lcom/layar/Layar3DActivity;->onAfterCreate()V

    goto/16 :goto_0
.end method

.method public onDownloaded(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 1180
    return-void
.end method

.method public onDownloadingCanceled()V
    .locals 0

    .prologue
    .line 1195
    return-void
.end method

.method public onDownloadingEnded()V
    .locals 0

    .prologue
    .line 1190
    return-void
.end method

.method public onDownloadingError(I)V
    .locals 4
    .parameter "responseCode"

    .prologue
    .line 1205
    new-instance v0, Lcom/layar/ActivityHelper;

    invoke-direct {v0, p0}, Lcom/layar/ActivityHelper;-><init>(Landroid/app/Activity;)V

    .line 1206
    .local v0, helper:Lcom/layar/ActivityHelper;
    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/layar/ActivityHelper;->downloadErrorHandling(IZIZ)Z

    .line 1207
    return-void
.end method

.method public onDownloadingStarted()V
    .locals 0

    .prologue
    .line 1185
    return-void
.end method

.method public onItemDownloaded(Lcom/layar/data/POI;)V
    .locals 0
    .parameter "item"

    .prologue
    .line 1200
    return-void
.end method

.method public bridge synthetic onItemDownloaded(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/layar/data/POI;

    invoke-virtual {p0, p1}, Lcom/layar/Layar3DActivity;->onItemDownloaded(Lcom/layar/data/POI;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x1

    .line 258
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->mLayout:Lcom/layar/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/layar/ui/RotateLayout;->invalidate()V

    .line 259
    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/layar/Layar3DActivity;->viewScreenshotBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->viewScreenshotBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 261
    const/4 v0, 0x0

    sput-boolean v0, Lcom/layar/Layar3DActivity;->SCREENSHOT_MODE:Z

    move v0, v2

    .line 281
    :goto_0
    return v0

    .line 264
    :cond_0
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    move v0, v2

    .line 265
    goto :goto_0

    .line 266
    :cond_1
    if-ne p1, v1, :cond_2

    iget-object v0, p0, Lcom/layar/Layar3DActivity;->mMenu:Lcom/layar/ui/CustomMenu;

    invoke-virtual {v0}, Lcom/layar/ui/CustomMenu;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 267
    goto :goto_0

    .line 268
    :cond_2
    if-ne p1, v1, :cond_3

    iget-object v0, p0, Lcom/layar/Layar3DActivity;->audioPlayer:Lcom/layar/ui/AudioView;

    invoke-virtual {v0}, Lcom/layar/ui/AudioView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 269
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->audioPlayer:Lcom/layar/ui/AudioView;

    invoke-virtual {v0}, Lcom/layar/ui/AudioView;->stop()V

    move v0, v2

    .line 270
    goto :goto_0

    .line 273
    :cond_3
    if-ne p1, v1, :cond_4

    .line 274
    invoke-virtual {p0, v2}, Lcom/layar/Layar3DActivity;->setResult(I)V

    .line 275
    invoke-super {p0, p1, p2}, Lcom/layar/DestroyInformerHelper;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 277
    :cond_4
    const/16 v0, 0x19

    if-eq p1, v0, :cond_5

    .line 278
    const/16 v0, 0x18

    if-eq p1, v0, :cond_5

    const/16 v0, 0x54

    if-ne p1, v0, :cond_6

    :cond_5
    move v0, v2

    .line 279
    goto :goto_0

    .line 281
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/layar/DestroyInformerHelper;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v2, 0x19

    const/4 v3, 0x1

    .line 297
    const/16 v1, 0x52

    if-ne p1, v1, :cond_0

    .line 298
    invoke-direct {p0}, Lcom/layar/Layar3DActivity;->showMenu()V

    move v1, v3

    .line 311
    :goto_0
    return v1

    .line 300
    :cond_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/layar/Layar3DActivity;->mMenu:Lcom/layar/ui/CustomMenu;

    invoke-virtual {v1}, Lcom/layar/ui/CustomMenu;->isShown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 301
    iget-object v1, p0, Lcom/layar/Layar3DActivity;->mMenu:Lcom/layar/ui/CustomMenu;

    invoke-virtual {v1}, Lcom/layar/ui/CustomMenu;->hideMenu()V

    .line 311
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/layar/DestroyInformerHelper;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 302
    :cond_2
    if-eq p1, v2, :cond_3

    .line 303
    const/16 v1, 0x18

    if-ne p1, v1, :cond_1

    .line 304
    :cond_3
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/layar/Layar3DActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 305
    .local v0, audioManager:Landroid/media/AudioManager;
    if-ne p1, v2, :cond_4

    .line 306
    const/4 v1, -0x1

    .line 308
    :goto_1
    const/16 v2, 0x14

    .line 305
    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->adjustVolume(II)V

    move v1, v3

    .line 309
    goto :goto_0

    :cond_4
    move v1, v3

    .line 307
    goto :goto_1
.end method

.method public onMenuItemClick(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->mMenu:Lcom/layar/ui/CustomMenu;

    invoke-virtual {v0}, Lcom/layar/ui/CustomMenu;->hideMenu()V

    .line 254
    return-void
.end method

.method public onPOIClick(Lcom/layar/data/BasePOI;)V
    .locals 0
    .parameter "poi"

    .prologue
    .line 695
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->mSceenshotHandler:Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->mSceenshotHandler:Lcom/layar/Layar3DActivity$ScreenshotHandler3D;

    invoke-virtual {v0}, Lcom/layar/Layar3DActivity$ScreenshotHandler3D;->finish()V

    .line 385
    :cond_0
    sget-object v0, Lcom/layar/Layar3DActivity;->preview:Lcom/layar/Layar3DActivity$Preview;

    if-eqz v0, :cond_1

    .line 386
    sget-object v0, Lcom/layar/Layar3DActivity;->preview:Lcom/layar/Layar3DActivity$Preview;

    invoke-virtual {v0}, Lcom/layar/Layar3DActivity$Preview;->forceStop()V

    .line 387
    const/4 v0, 0x0

    sput-object v0, Lcom/layar/Layar3DActivity;->preview:Lcom/layar/Layar3DActivity$Preview;

    .line 390
    :cond_1
    invoke-super {p0}, Lcom/layar/DestroyInformerHelper;->onPause()V

    .line 392
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->wakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 397
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/layar/ui/RotateLayout;->setLockRotation(Z)V

    .line 398
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->mSensorHelper:Lcom/layar/util/SensorHelper;

    invoke-virtual {v0, p0}, Lcom/layar/util/SensorHelper;->unregisterRotationListener(Lcom/layar/ui/RotationListener;)V

    .line 400
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layar/Layar3DActivity;->running:Z

    .line 401
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    sget-object v1, Lcom/layar/data/layer/LayerManager$LayarView;->AR:Lcom/layar/data/layer/LayerManager$LayarView;

    invoke-virtual {v0, v1}, Lcom/layar/data/layer/LayerManager;->unregisterView(Lcom/layar/data/layer/LayerManager$LayarView;)V

    .line 402
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->viewStatus:Lcom/layar/ui/StatusView;

    invoke-virtual {v0}, Lcom/layar/ui/StatusView;->stop()V

    .line 405
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->mARView:Lcom/layar/core/ARView;

    invoke-virtual {v0}, Lcom/layar/core/ARView;->onPause()V

    .line 406
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->mRenderer:Lcom/layar/core/ARRenderer;

    invoke-virtual {v0}, Lcom/layar/core/ARRenderer;->resetTextures()V

    .line 408
    invoke-static {}, Lcom/layar/util/DownloadManager;->getInstance()Lcom/layar/util/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layar/util/DownloadManager;->pause()V

    .line 413
    invoke-virtual {p0}, Lcom/layar/Layar3DActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 414
    invoke-virtual {p0}, Lcom/layar/Layar3DActivity;->finish()V

    .line 415
    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 432
    invoke-super {p0}, Lcom/layar/DestroyInformerHelper;->onResume()V

    .line 434
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->wakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 438
    invoke-static {}, Lcom/layar/App;->refreshArSettings()V

    .line 441
    invoke-static {v4}, Lcom/layar/ui/RotateLayout;->setLockRotation(Z)V

    .line 442
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->mSensorHelper:Lcom/layar/util/SensorHelper;

    invoke-virtual {v0, p0}, Lcom/layar/util/SensorHelper;->registerRotationListener(Lcom/layar/ui/RotationListener;)V

    .line 444
    iput-boolean v5, p0, Lcom/layar/Layar3DActivity;->running:Z

    .line 445
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    sget-object v1, Lcom/layar/data/layer/LayerManager$LayarView;->AR:Lcom/layar/data/layer/LayerManager$LayarView;

    invoke-virtual {v0, v1}, Lcom/layar/data/layer/LayerManager;->registerView(Lcom/layar/data/layer/LayerManager$LayarView;)V

    .line 446
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->viewStatus:Lcom/layar/ui/StatusView;

    invoke-virtual {v0}, Lcom/layar/ui/StatusView;->start()V

    .line 448
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/layar/Layar3DActivity;->invalidator:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 452
    invoke-virtual {p0}, Lcom/layar/Layar3DActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "AR:resume"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/Layar3DActivity;->mRenderer:Lcom/layar/core/ARRenderer;

    invoke-virtual {v0}, Lcom/layar/core/ARRenderer;->preparePOIs()V

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->mRenderer:Lcom/layar/core/ARRenderer;

    invoke-virtual {v0}, Lcom/layar/core/ARRenderer;->resetTextures()V

    .line 455
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->mARView:Lcom/layar/core/ARView;

    invoke-virtual {v0}, Lcom/layar/core/ARView;->onResume()V

    .line 457
    invoke-static {}, Lcom/layar/util/DownloadManager;->getInstance()Lcom/layar/util/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layar/util/DownloadManager;->start()V

    .line 459
    sget-boolean v0, Lcom/layar/Layar3DActivity;->showDetailBIW:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/layar/Layar3DActivity;->mPOIsContainer:Lcom/layar/core/POIsContainer;

    invoke-interface {v0}, Lcom/layar/core/POIsContainer;->getFocus()Lcom/layar/data/BasePOI;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 460
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->mPOIsContainer:Lcom/layar/core/POIsContainer;

    invoke-interface {v0}, Lcom/layar/core/POIsContainer;->isFocusLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->mBiw:Lcom/layar/ui/BriefInfoViewWrapper;

    iget-object v1, p0, Lcom/layar/Layar3DActivity;->mPOIsContainer:Lcom/layar/core/POIsContainer;

    invoke-interface {v1}, Lcom/layar/core/POIsContainer;->getFocus()Lcom/layar/data/BasePOI;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/layar/ui/BriefInfoViewWrapper;->setPOI(Lcom/layar/data/BasePOI;Z)V

    .line 464
    :cond_1
    sput-boolean v4, Lcom/layar/Layar3DActivity;->showDetailBIW:Z

    .line 466
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->mPOIsContainer:Lcom/layar/core/POIsContainer;

    invoke-interface {v0}, Lcom/layar/core/POIsContainer;->isFocusLock()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 467
    invoke-direct {p0, v4}, Lcom/layar/Layar3DActivity;->refreshBiws(Z)V

    .line 468
    :cond_2
    return-void
.end method

.method protected onSettingsButtonClicked()V
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v0}, Lcom/layar/data/layer/LayerHandler;->getCurrentLayer()Lcom/layar/data/layer/Layer20;

    move-result-object v0

    .line 476
    invoke-static {p0, v0}, Lcom/layar/data/layer/LayerHelper;->onSettingsButtonClicked(Landroid/content/Context;Lcom/layar/data/layer/Layer20;)V

    .line 478
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 316
    invoke-super {p0}, Lcom/layar/DestroyInformerHelper;->onStart()V

    .line 320
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->mSensorHelper:Lcom/layar/util/SensorHelper;

    invoke-virtual {v0, p0}, Lcom/layar/util/SensorHelper;->registerRotationListener(Lcom/layar/ui/RotationListener;)V

    .line 321
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->mMenu:Lcom/layar/ui/CustomMenu;

    invoke-virtual {v0}, Lcom/layar/ui/CustomMenu;->hideMenu()V

    .line 322
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/layar/Layar3DActivity;->handler:Landroid/os/Handler;

    .line 323
    new-instance v0, Lcom/layar/Layar3DActivity$2;

    invoke-direct {v0, p0}, Lcom/layar/Layar3DActivity$2;-><init>(Lcom/layar/Layar3DActivity;)V

    iput-object v0, p0, Lcom/layar/Layar3DActivity;->invalidator:Ljava/lang/Runnable;

    .line 338
    invoke-virtual {p0}, Lcom/layar/Layar3DActivity;->initView()V

    .line 340
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->mSensorHelper:Lcom/layar/util/SensorHelper;

    invoke-virtual {v0}, Lcom/layar/util/SensorHelper;->isGPSEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/layar/Layar3DActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090031

    .line 342
    const/4 v2, 0x1

    .line 341
    invoke-static {v0, v1, v2}, Lcom/layar/ui/SmartToast;->makeText(Landroid/content/Context;II)Lcom/layar/ui/SmartToast;

    move-result-object v0

    .line 342
    invoke-virtual {v0}, Lcom/layar/ui/SmartToast;->show()V

    .line 345
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 419
    invoke-super {p0}, Lcom/layar/DestroyInformerHelper;->onStop()V

    .line 423
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->audioPlayer:Lcom/layar/ui/AudioView;

    invoke-virtual {v0}, Lcom/layar/ui/AudioView;->stop()V

    .line 424
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/Layar3DActivity;->handler:Landroid/os/Handler;

    .line 425
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->mSensorHelper:Lcom/layar/util/SensorHelper;

    invoke-virtual {v0, p0}, Lcom/layar/util/SensorHelper;->unregisterRotationListener(Lcom/layar/ui/RotationListener;)V

    .line 427
    invoke-static {}, Lcom/layar/util/DownloadManager;->clearInstance()V

    .line 428
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 680
    invoke-super {p0, p1}, Lcom/layar/DestroyInformerHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 685
    :goto_0
    return v1

    .line 682
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 683
    .local v0, action:I
    if-nez v0, :cond_1

    .line 684
    iget-object v1, p0, Lcom/layar/Layar3DActivity;->mRenderer:Lcom/layar/core/ARRenderer;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3, p0}, Lcom/layar/core/ARRenderer;->handleTouch(FFLcom/layar/core/ARRenderer$POIClickListener;)Z

    .line 685
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public playAudio(Landroid/content/Intent;)V
    .locals 1
    .parameter "i"

    .prologue
    .line 699
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->audioPlayer:Lcom/layar/ui/AudioView;

    invoke-virtual {v0, p1, p0}, Lcom/layar/ui/AudioView;->play(Landroid/content/Intent;Landroid/app/Activity;)V

    .line 700
    return-void
.end method

.method protected prepareMenu(Lcom/layar/ui/CustomMenu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 245
    invoke-virtual {p1}, Lcom/layar/ui/CustomMenu;->isCreated()Z

    move-result v0

    .line 246
    .local v0, result:Z
    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p1, p0}, Lcom/layar/ui/CustomMenu;->setListener(Lcom/layar/ui/CustomMenu$CustomMenuListener;)V

    .line 248
    :cond_0
    return v0
.end method

.method public registerRotationListener(Lcom/layar/ui/RotationListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 709
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->rotationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    return-void
.end method

.method public rotationChanged(I)V
    .locals 1
    .parameter "newRotation"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->mLayout:Lcom/layar/ui/RotateLayout;

    invoke-virtual {v0, p1}, Lcom/layar/ui/RotateLayout;->setRotation(I)V

    .line 375
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->mMenu:Lcom/layar/ui/CustomMenu;

    invoke-virtual {v0, p1}, Lcom/layar/ui/CustomMenu;->setRotation(I)V

    .line 376
    invoke-direct {p0, p1}, Lcom/layar/Layar3DActivity;->informRotationChanged(I)V

    .line 377
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->mRenderer:Lcom/layar/core/ARRenderer;

    invoke-virtual {v0, p1}, Lcom/layar/core/ARRenderer;->setRotation(I)V

    .line 378
    return-void
.end method

.method public unregisterRotationListener(Lcom/layar/ui/RotationListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 714
    iget-object v0, p0, Lcom/layar/Layar3DActivity;->rotationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 715
    return-void
.end method
