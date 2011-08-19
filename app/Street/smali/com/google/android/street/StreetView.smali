.class Lcom/google/android/street/StreetView;
.super Landroid/view/SurfaceView;
.source "StreetView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lcom/google/android/common/gesture/MultiTouchListener;
.implements Lcom/google/android/street/PanoramaManager$ConfigFetchListener;
.implements Lcom/google/android/street/Renderer$RenderStatusReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/street/StreetView$OrientationSensorListener;,
        Lcom/google/android/street/StreetView$Status;,
        Lcom/google/android/street/StreetView$Flinger;
    }
.end annotation


# instance fields
.field private clickToGoUiMode:I

.field private mAnchorPitch:F

.field private mAnchorYaw:F

.field private mAspectRatio:F

.field private mBadPanorama:Z

.field private mCurrentStatus:Lcom/google/android/street/StreetView$Status;

.field private mFlinger:Lcom/google/android/street/StreetView$Flinger;

.field private final mFlingerLock:Ljava/lang/Object;

.field private final mHandler:Landroid/os/Handler;

.field private mHighlighter:Lcom/google/android/street/Highlighter;

.field private mHorizontalTanRatio:F

.field private mInitialPanoId:Ljava/lang/String;

.field private mInitialPanoMapPoint:Lcom/google/android/street/MapPoint;

.field private mIsTablet:Z

.field private mLastDX:F

.field private mLastDY:F

.field private mNetworkUnavailableToast:Landroid/widget/Toast;

.field private mOldProgress:I

.field private mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

.field private mPanoramaConfigCache:Lcom/google/android/street/PanoramaConfigCache;

.field private mPanoramaLink:Lcom/google/android/street/PanoramaLink;

.field private mPanoramaManager:Lcom/google/android/street/PanoramaManager;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRenderer:Lcom/google/android/street/Renderer;

.field private mRequestedFaceToLatLng:Lcom/google/android/street/MapPoint;

.field private mRequestedUserOrientation:Lcom/google/android/street/UserOrientation;

.field private mScreenDensity:F

.field private mSensorEnabled:Z

.field private final mSensorListener:Lcom/google/android/street/StreetView$OrientationSensorListener;

.field private mStatusOverride:Ljava/lang/String;

.field private mStreet:Lcom/google/android/street/Street;

.field private mTrackballGestureDetector:Lcom/google/android/street/TrackballGestureDetector;

.field private mUnzoomedFovH:F

.field private mUnzoomedFovV:F

.field private mUseSensorToControlView:Z

.field private final mUserActivityReporter:Ljava/lang/Runnable;

.field private mUserOrientation:Lcom/google/android/street/UserOrientation;

.field private mVerticalTanRatio:F

.field private mZoomButtonsController:Landroid/widget/ZoomButtonsController;

.field private mZoomButtonsEnabled:Z

.field private mZoomLevels:I

.field private panoCount:I

.field private timer:Lcom/google/android/street/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 471
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/street/StreetView;->mZoomButtonsEnabled:Z

    .line 100
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/street/StreetView;->clickToGoUiMode:I

    .line 128
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/street/StreetView;->panoCount:I

    .line 129
    iput-object v1, p0, Lcom/google/android/street/StreetView;->timer:Lcom/google/android/street/Timer;

    .line 181
    new-instance v0, Lcom/google/android/street/StreetView$1;

    invoke-direct {v0, p0}, Lcom/google/android/street/StreetView$1;-><init>(Lcom/google/android/street/StreetView;)V

    iput-object v0, p0, Lcom/google/android/street/StreetView;->mUserActivityReporter:Ljava/lang/Runnable;

    .line 193
    new-instance v0, Lcom/google/android/street/StreetView$2;

    invoke-direct {v0, p0}, Lcom/google/android/street/StreetView$2;-><init>(Lcom/google/android/street/StreetView;)V

    iput-object v0, p0, Lcom/google/android/street/StreetView;->mHandler:Landroid/os/Handler;

    .line 213
    new-instance v0, Lcom/google/android/street/StreetView$OrientationSensorListener;

    invoke-direct {v0, p0, v1}, Lcom/google/android/street/StreetView$OrientationSensorListener;-><init>(Lcom/google/android/street/StreetView;Lcom/google/android/street/StreetView$1;)V

    iput-object v0, p0, Lcom/google/android/street/StreetView;->mSensorListener:Lcom/google/android/street/StreetView$OrientationSensorListener;

    .line 216
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/street/StreetView;->mFlingerLock:Ljava/lang/Object;

    .line 217
    iput-object v1, p0, Lcom/google/android/street/StreetView;->mFlinger:Lcom/google/android/street/StreetView$Flinger;

    .line 472
    invoke-direct {p0, p1}, Lcom/google/android/street/StreetView;->commonConstructor(Landroid/content/Context;)V

    .line 473
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 476
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/street/StreetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 477
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 480
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/street/StreetView;->mZoomButtonsEnabled:Z

    .line 100
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/street/StreetView;->clickToGoUiMode:I

    .line 128
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/street/StreetView;->panoCount:I

    .line 129
    iput-object v1, p0, Lcom/google/android/street/StreetView;->timer:Lcom/google/android/street/Timer;

    .line 181
    new-instance v0, Lcom/google/android/street/StreetView$1;

    invoke-direct {v0, p0}, Lcom/google/android/street/StreetView$1;-><init>(Lcom/google/android/street/StreetView;)V

    iput-object v0, p0, Lcom/google/android/street/StreetView;->mUserActivityReporter:Ljava/lang/Runnable;

    .line 193
    new-instance v0, Lcom/google/android/street/StreetView$2;

    invoke-direct {v0, p0}, Lcom/google/android/street/StreetView$2;-><init>(Lcom/google/android/street/StreetView;)V

    iput-object v0, p0, Lcom/google/android/street/StreetView;->mHandler:Landroid/os/Handler;

    .line 213
    new-instance v0, Lcom/google/android/street/StreetView$OrientationSensorListener;

    invoke-direct {v0, p0, v1}, Lcom/google/android/street/StreetView$OrientationSensorListener;-><init>(Lcom/google/android/street/StreetView;Lcom/google/android/street/StreetView$1;)V

    iput-object v0, p0, Lcom/google/android/street/StreetView;->mSensorListener:Lcom/google/android/street/StreetView$OrientationSensorListener;

    .line 216
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/street/StreetView;->mFlingerLock:Ljava/lang/Object;

    .line 217
    iput-object v1, p0, Lcom/google/android/street/StreetView;->mFlinger:Lcom/google/android/street/StreetView$Flinger;

    .line 481
    invoke-direct {p0, p1}, Lcom/google/android/street/StreetView;->commonConstructor(Landroid/content/Context;)V

    .line 482
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/street/StreetView;)Landroid/os/PowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/street/StreetView;ZLcom/google/android/street/PanoramaConfig;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/google/android/street/StreetView;->addPanoramaConfig(ZLcom/google/android/street/PanoramaConfig;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/street/StreetView;)Lcom/google/android/street/UserOrientation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/street/StreetView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->updateRendererUserOrientation()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/street/StreetView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->updateButtonsEnabled()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/street/StreetView;)Landroid/widget/ZoomButtonsController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/street/StreetView;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/street/StreetView;->smoothZoom(F)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/street/StreetView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/street/StreetView;->doUpdateProgress(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/street/StreetView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/street/StreetView;->doUpdateTransitionProgress(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/street/StreetView;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mFlingerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/street/StreetView;)Lcom/google/android/street/PanoramaConfig;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/street/StreetView;)Lcom/google/android/street/Street;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mStreet:Lcom/google/android/street/Street;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/street/StreetView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->okToAct()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/google/android/street/StreetView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->reportUserActivity()V

    return-void
.end method

.method private addPanoramaConfig(ZLcom/google/android/street/PanoramaConfig;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1885
    if-eqz p1, :cond_1

    .line 1886
    const-string v0, "SV panorama config request was interrupted"

    invoke-static {v0}, Lcom/google/android/street/Street;->log(Ljava/lang/String;)V

    .line 1890
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    .line 1896
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/street/StreetView;->invalidate()V

    .line 1897
    return-void

    .line 1887
    :cond_1
    if-nez p2, :cond_0

    .line 1888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SV received panorama "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/street/Street;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1893
    :cond_2
    if-nez p2, :cond_3

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/street/StreetView;->mBadPanorama:Z

    .line 1894
    invoke-direct {p0, p2}, Lcom/google/android/street/StreetView;->setPanoramaConfig(Lcom/google/android/street/PanoramaConfig;)V

    goto :goto_1

    .line 1893
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private checkStatus()Ljava/lang/CharSequence;
    .locals 15

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 1746
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->wasNetworkUp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1747
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mNetworkUnavailableToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 1748
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mNetworkUnavailableToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1749
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/street/StreetView;->mNetworkUnavailableToast:Landroid/widget/Toast;

    .line 1758
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaLink:Lcom/google/android/street/PanoramaLink;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaLink:Lcom/google/android/street/PanoramaLink;

    iget-object v0, v0, Lcom/google/android/street/PanoramaLink;->mPanoId:Ljava/lang/String;

    move-object v2, v0

    .line 1760
    :goto_1
    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/google/android/street/StreetView;->mInitialPanoMapPoint:Lcom/google/android/street/MapPoint;

    if-eqz v0, :cond_9

    .line 1762
    :cond_1
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfigCache:Lcom/google/android/street/PanoramaConfigCache;

    invoke-virtual {v0, v2}, Lcom/google/android/street/PanoramaConfigCache;->get(Ljava/lang/String;)Lcom/google/android/street/PanoramaConfig;

    move-result-object v1

    .line 1763
    if-eqz v1, :cond_6

    .line 1768
    invoke-direct {p0, v1}, Lcom/google/android/street/StreetView;->setPanoramaConfig(Lcom/google/android/street/PanoramaConfig;)V

    .line 1774
    iget-object v0, v1, Lcom/google/android/street/PanoramaConfig;->mRootImageKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_5

    .line 1775
    iget-object v5, p0, Lcom/google/android/street/StreetView;->mPanoramaManager:Lcom/google/android/street/PanoramaManager;

    iget-object v7, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    iget-object v0, v1, Lcom/google/android/street/PanoramaConfig;->mRootImageKeys:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/street/PanoramaImageKey;

    sub-int v8, v2, v6

    if-ne v4, v8, :cond_4

    move v8, v6

    :goto_3
    invoke-virtual {v5, v7, v0, v8}, Lcom/google/android/street/PanoramaManager;->requestPanoramaTile(Lcom/google/android/street/PanoramaManager$PanoFetchListener;Lcom/google/android/street/PanoramaImageKey;Z)Z

    .line 1774
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    .line 1751
    :cond_2
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mNetworkUnavailableToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 1752
    invoke-virtual {p0}, Lcom/google/android/street/StreetView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04000e

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/street/StreetView;->mNetworkUnavailableToast:Landroid/widget/Toast;

    .line 1754
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mNetworkUnavailableToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1758
    :cond_3
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mInitialPanoId:Ljava/lang/String;

    move-object v2, v0

    goto :goto_1

    :cond_4
    move v8, v3

    .line 1775
    goto :goto_3

    .line 1779
    :cond_5
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->getStatusFromPanoramaConfig()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1833
    :goto_4
    return-object v0

    .line 1786
    :cond_6
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaManager:Lcom/google/android/street/PanoramaManager;

    iget-object v1, p0, Lcom/google/android/street/StreetView;->mInitialPanoMapPoint:Lcom/google/android/street/MapPoint;

    if-nez v2, :cond_8

    move v4, v6

    :goto_5
    invoke-virtual {v0, p0, v2, v1, v4}, Lcom/google/android/street/PanoramaManager;->requestPanoramaConfiguration(Lcom/google/android/street/PanoramaManager$ConfigFetchListener;Ljava/lang/String;Lcom/google/android/street/MapPoint;Z)Z

    .line 1788
    if-eqz v2, :cond_7

    .line 1799
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaManager:Lcom/google/android/street/PanoramaManager;

    iget-object v1, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    move v4, v3

    move v5, v3

    move v7, v3

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/street/PanoramaManager;->requestPanoramaTile(Lcom/google/android/street/PanoramaManager$PanoFetchListener;Ljava/lang/String;IIIIZ)Z

    .line 1801
    iget-object v7, p0, Lcom/google/android/street/StreetView;->mPanoramaManager:Lcom/google/android/street/PanoramaManager;

    iget-object v8, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    const/4 v13, 0x2

    move-object v9, v2

    move v10, v3

    move v11, v3

    move v12, v3

    move v14, v3

    invoke-virtual/range {v7 .. v14}, Lcom/google/android/street/PanoramaManager;->requestPanoramaTile(Lcom/google/android/street/PanoramaManager$PanoFetchListener;Ljava/lang/String;IIIIZ)Z

    .line 1803
    iget-object v7, p0, Lcom/google/android/street/StreetView;->mPanoramaManager:Lcom/google/android/street/PanoramaManager;

    iget-object v8, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    const/4 v13, 0x3

    move-object v9, v2

    move v10, v3

    move v11, v3

    move v12, v3

    move v14, v3

    invoke-virtual/range {v7 .. v14}, Lcom/google/android/street/PanoramaManager;->requestPanoramaTile(Lcom/google/android/street/PanoramaManager$PanoFetchListener;Ljava/lang/String;IIIIZ)Z

    .line 1805
    iget-object v7, p0, Lcom/google/android/street/StreetView;->mPanoramaManager:Lcom/google/android/street/PanoramaManager;

    iget-object v8, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    const/4 v13, 0x4

    move-object v9, v2

    move v10, v3

    move v11, v3

    move v12, v3

    move v14, v3

    invoke-virtual/range {v7 .. v14}, Lcom/google/android/street/PanoramaManager;->requestPanoramaTile(Lcom/google/android/street/PanoramaManager$PanoFetchListener;Ljava/lang/String;IIIIZ)Z

    .line 1807
    iget-object v7, p0, Lcom/google/android/street/StreetView;->mPanoramaManager:Lcom/google/android/street/PanoramaManager;

    iget-object v8, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    const/4 v13, 0x5

    move-object v9, v2

    move v10, v3

    move v11, v3

    move v12, v3

    move v14, v3

    invoke-virtual/range {v7 .. v14}, Lcom/google/android/street/PanoramaManager;->requestPanoramaTile(Lcom/google/android/street/PanoramaManager$PanoFetchListener;Ljava/lang/String;IIIIZ)Z

    .line 1809
    iget-object v7, p0, Lcom/google/android/street/StreetView;->mPanoramaManager:Lcom/google/android/street/PanoramaManager;

    iget-object v8, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    const/4 v13, 0x6

    move-object v9, v2

    move v10, v3

    move v11, v3

    move v12, v3

    move v14, v3

    invoke-virtual/range {v7 .. v14}, Lcom/google/android/street/PanoramaManager;->requestPanoramaTile(Lcom/google/android/street/PanoramaManager$PanoFetchListener;Ljava/lang/String;IIIIZ)Z

    .line 1813
    iget-object v7, p0, Lcom/google/android/street/StreetView;->mPanoramaManager:Lcom/google/android/street/PanoramaManager;

    iget-object v8, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    const/4 v13, -0x1

    move-object v9, v2

    move v10, v3

    move v11, v3

    move v12, v3

    move v14, v6

    invoke-virtual/range {v7 .. v14}, Lcom/google/android/street/PanoramaManager;->requestPanoramaTile(Lcom/google/android/street/PanoramaManager$PanoFetchListener;Ljava/lang/String;IIIIZ)Z

    .line 1816
    :cond_7
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->getLoadingStatus()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_4

    :cond_8
    move v4, v3

    .line 1786
    goto :goto_5

    .line 1820
    :cond_9
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    if-eqz v0, :cond_b

    .line 1821
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mStatusOverride:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/street/StreetView;->mStatusOverride:Ljava/lang/String;

    goto :goto_4

    :cond_a
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->getStatusFromPanoramaConfig()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_4

    .line 1825
    :cond_b
    iget-boolean v0, p0, Lcom/google/android/street/StreetView;->mBadPanorama:Z

    if-eqz v0, :cond_c

    .line 1830
    const v0, 0x7f04000b

    invoke-direct {p0, v0}, Lcom/google/android/street/StreetView;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_4

    .line 1833
    :cond_c
    const v0, 0x7f04000a

    invoke-direct {p0, v0}, Lcom/google/android/street/StreetView;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_4
.end method

.method private clickToGo(FF)Z
    .locals 11
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 1129
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v0, v0, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    if-nez v0, :cond_0

    move v0, v5

    .line 1182
    :goto_0
    return v0

    .line 1135
    :cond_0
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    invoke-virtual {v0, p1, p2, v5}, Lcom/google/android/street/Renderer;->pixelToYawPitch(FFZ)[F

    move-result-object v9

    .line 1136
    .local v9, yawPitch:[F
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    aget v3, v9, v5

    aget v4, v9, v10

    invoke-virtual {v0, v3, v4, v9}, Lcom/google/android/street/PanoramaConfig;->worldToVehicleYawPitch(FF[F)V

    .line 1138
    const/4 v0, 0x2

    new-array v6, v0, [F

    .line 1142
    .local v6, newYawPitch:[F
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v0, v0, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    invoke-virtual {v0}, Lcom/google/android/street/DepthMap;->decompress()Z

    .line 1144
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v0, v0, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    aget v3, v9, v5

    aget v4, v9, v10

    invoke-virtual {v0, v3, v4, v6}, Lcom/google/android/street/DepthMap;->getPanoId(FF[F)Ljava/lang/String;

    move-result-object v1

    .line 1148
    .local v1, newPanoId:Ljava/lang/String;
    if-nez v1, :cond_1

    move v0, v10

    .line 1149
    goto :goto_0

    .line 1154
    :cond_1
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v0, v0, Lcom/google/android/street/PanoramaConfig;->mPanoId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v5

    .line 1155
    goto :goto_0

    .line 1160
    :cond_2
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    aget v3, v6, v5

    aget v4, v6, v10

    invoke-virtual {v0, v3, v4, v6}, Lcom/google/android/street/PanoramaConfig;->vehicleToWorldYawPitch(FF[F)V

    .line 1165
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v0, v0, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    aget v3, v9, v5

    aget v4, v9, v10

    invoke-virtual {v0, v3, v4}, Lcom/google/android/street/DepthMap;->getPlane(FF)Lcom/google/android/street/DepthMap$DepthMapPlane;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/street/DepthMap$DepthMapPlane;->isGround()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1167
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    aget v3, v6, v5

    invoke-static {v3}, Lcom/google/android/street/StreetMath;->normalizeUnitAngle(F)F

    move-result v3

    invoke-static {v3}, Lcom/google/android/street/StreetMath;->unitToDegrees(F)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/street/UserOrientation;->setYaw(F)V

    .line 1169
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    const/high16 v3, 0x4000

    aget v4, v6, v10

    invoke-static {v4}, Lcom/google/android/street/StreetMath;->normalizeUnitAngle(F)F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual {v0, v3}, Lcom/google/android/street/UserOrientation;->setTilt(F)V

    .line 1172
    :cond_3
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v0, v0, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    aget v3, v9, v5

    aget v4, v9, v10

    invoke-virtual {v0, v3, v4}, Lcom/google/android/street/DepthMap;->getPanoPoint(FF)Lcom/google/android/street/DepthMap$Point;

    move-result-object v7

    .line 1175
    .local v7, panoPoint:Lcom/google/android/street/DepthMap$Point;
    new-instance v8, Lcom/google/android/street/Renderer$Transition;

    iget v0, v7, Lcom/google/android/street/DepthMap$Point;->x:F

    iget v3, v7, Lcom/google/android/street/DepthMap$Point;->y:F

    iget-object v4, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    const/16 v5, 0x3e8

    invoke-direct {v8, v0, v3, v4, v5}, Lcom/google/android/street/Renderer$Transition;-><init>(FFLcom/google/android/street/UserOrientation;I)V

    .line 1178
    .local v8, transition:Lcom/google/android/street/Renderer$Transition;
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v0, v0, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    invoke-virtual {v8, v0}, Lcom/google/android/street/Renderer$Transition;->detectCollision(Lcom/google/android/street/DepthMap;)Z

    .line 1179
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    invoke-virtual {v0, v8}, Lcom/google/android/street/Renderer;->startTransition(Lcom/google/android/street/Renderer$Transition;)V

    .line 1180
    iget-object v3, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/street/StreetView;->loadPanorama(Ljava/lang/String;Lcom/google/android/street/MapPoint;Lcom/google/android/street/UserOrientation;Lcom/google/android/street/MapPoint;Lcom/google/android/street/PanoramaConfig;)V

    .line 1181
    invoke-virtual {p0}, Lcom/google/android/street/StreetView;->invalidate()V

    move v0, v10

    .line 1182
    goto/16 :goto_0
.end method

.method private commonConstructor(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 485
    invoke-virtual {p0}, Lcom/google/android/street/StreetView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 487
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/google/android/street/StreetView;->mScreenDensity:F

    .line 488
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SV ScreenDensity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/street/StreetView;->mScreenDensity:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", DPI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/street/Street;->log(Ljava/lang/String;)V

    .line 490
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->updateDeviceOrientation()V

    .line 491
    new-instance v2, Lcom/google/android/street/UserOrientation;

    invoke-direct {v2}, Lcom/google/android/street/UserOrientation;-><init>()V

    iput-object v2, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    .line 492
    new-instance v2, Lcom/google/android/street/PanoramaConfigCache;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Lcom/google/android/street/PanoramaConfigCache;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/street/StreetView;->mPanoramaConfigCache:Lcom/google/android/street/PanoramaConfigCache;

    .line 494
    new-instance v2, Lcom/google/android/street/StreetView$Status;

    invoke-direct {v2}, Lcom/google/android/street/StreetView$Status;-><init>()V

    iput-object v2, p0, Lcom/google/android/street/StreetView;->mCurrentStatus:Lcom/google/android/street/StreetView$Status;

    .line 495
    new-instance v2, Lcom/google/android/street/TrackballGestureDetector;

    iget-object v3, p0, Lcom/google/android/street/StreetView;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Lcom/google/android/street/TrackballGestureDetector;-><init>(Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/google/android/street/StreetView;->mTrackballGestureDetector:Lcom/google/android/street/TrackballGestureDetector;

    .line 497
    invoke-static {}, Lcom/google/android/common/gesture/GestureController;->getInstance()Lcom/google/android/common/gesture/GestureController;

    move-result-object v2

    invoke-virtual {v2, p1, p0, p0}, Lcom/google/android/common/gesture/GestureController;->initGestureController(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 499
    invoke-static {}, Lcom/google/android/common/gesture/GestureController;->getInstance()Lcom/google/android/common/gesture/GestureController;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/common/gesture/GestureController;->setIsLongpressEnabled(Z)V

    .line 501
    invoke-static {}, Lcom/google/android/common/gesture/MultiTouchController;->getInstance()Lcom/google/android/common/gesture/MultiTouchController;

    move-result-object v1

    .line 503
    .local v1, multiTouchController:Lcom/google/android/common/gesture/MultiTouchController;
    invoke-virtual {v1, p1, p0}, Lcom/google/android/common/gesture/MultiTouchController;->initMultiTouchListener(Landroid/content/Context;Lcom/google/android/common/gesture/MultiTouchListener;)V

    .line 506
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/common/gesture/MultiTouchController;->setMultiTouchSupported(Landroid/content/pm/PackageManager;)V

    .line 508
    invoke-virtual {v1}, Lcom/google/android/common/gesture/MultiTouchController;->isMultiTouchSupported()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/google/android/street/StreetView;->mZoomButtonsEnabled:Z

    .line 510
    new-instance v2, Lcom/google/android/street/Highlighter;

    invoke-direct {v2}, Lcom/google/android/street/Highlighter;-><init>()V

    iput-object v2, p0, Lcom/google/android/street/StreetView;->mHighlighter:Lcom/google/android/street/Highlighter;

    .line 511
    return-void

    :cond_0
    move v2, v4

    .line 508
    goto :goto_0
.end method

.method private createRenderer()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 700
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    if-eqz v0, :cond_0

    .line 701
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mRenderer already exists"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 704
    :cond_0
    new-instance v0, Lcom/google/android/street/Renderer;

    iget-object v1, p0, Lcom/google/android/street/StreetView;->mPanoramaManager:Lcom/google/android/street/PanoramaManager;

    iget v2, p0, Lcom/google/android/street/StreetView;->mScreenDensity:F

    invoke-direct {v0, v1, v2}, Lcom/google/android/street/Renderer;-><init>(Lcom/google/android/street/PanoramaManager;F)V

    iput-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    .line 708
    iget-boolean v0, p0, Lcom/google/android/street/StreetView;->mIsTablet:Z

    if-nez v0, :cond_1

    move v6, v8

    .line 710
    .local v6, drawRoadLabels:Z
    :goto_0
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    invoke-virtual {p0}, Lcom/google/android/street/StreetView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/street/StreetView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/street/StreetView;->clickToGoUiMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    move v4, v8

    :goto_1
    iget v3, p0, Lcom/google/android/street/StreetView;->clickToGoUiMode:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_3

    move v5, v8

    :goto_2
    move-object v3, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/street/Renderer;->initialize(Landroid/content/Context;Landroid/view/SurfaceHolder;Lcom/google/android/street/Renderer$RenderStatusReceiver;ZZZ)V

    .line 714
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    iget-object v1, p0, Lcom/google/android/street/StreetView;->timer:Lcom/google/android/street/Timer;

    invoke-virtual {v0, v1}, Lcom/google/android/street/Renderer;->setTimer(Lcom/google/android/street/Timer;)V

    .line 715
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mHighlighter:Lcom/google/android/street/Highlighter;

    iget-object v1, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    invoke-virtual {v0, v1}, Lcom/google/android/street/Highlighter;->setRenderer(Lcom/google/android/street/Renderer;)V

    .line 716
    return-void

    .end local v6           #drawRoadLabels:Z
    :cond_1
    move v6, v7

    .line 708
    goto :goto_0

    .restart local v6       #drawRoadLabels:Z
    :cond_2
    move v4, v7

    .line 710
    goto :goto_1

    :cond_3
    move v5, v7

    goto :goto_2
.end method

.method private doTilt(F)V
    .locals 5
    .parameter

    .prologue
    .line 1603
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget v0, v0, Lcom/google/android/street/PanoramaConfig;->mProjectionType:I

    .line 1607
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-virtual {v0}, Lcom/google/android/street/UserOrientation;->getScale()F

    move-result v0

    .line 1608
    const/high16 v1, 0x3e00

    mul-float/2addr v0, v1

    .line 1616
    iget-object v1, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget v1, v1, Lcom/google/android/street/PanoramaConfig;->mMaxVisiblePitchDeg:F

    invoke-static {v1}, Lcom/google/android/street/StreetView;->tiltDegToHalfTurns(F)F

    move-result v1

    add-float/2addr v1, v0

    .line 1619
    iget-object v2, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget v2, v2, Lcom/google/android/street/PanoramaConfig;->mMinVisiblePitchDeg:F

    invoke-static {v2}, Lcom/google/android/street/StreetView;->tiltDegToHalfTurns(F)F

    move-result v2

    sub-float/2addr v2, v0

    .line 1622
    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    .line 1623
    add-float/2addr v1, v2

    const/high16 v2, 0x3f00

    mul-float/2addr v1, v2

    move v2, v1

    .line 1626
    :goto_0
    iget-object v3, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-virtual {v3}, Lcom/google/android/street/UserOrientation;->getTilt()F

    move-result v3

    mul-float/2addr v0, p1

    add-float/2addr v0, v3

    .line 1630
    iget-object v3, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-static {v0, v2, v1}, Lcom/google/android/street/StreetMath;->clamp(FFF)F

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/android/street/UserOrientation;->setTilt(F)V

    .line 1631
    return-void

    :cond_0
    move v4, v2

    move v2, v1

    move v1, v4

    goto :goto_0
.end method

.method private doUpdateProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mStreet:Lcom/google/android/street/Street;

    invoke-virtual {v0, p1}, Lcom/google/android/street/Street;->reportProgress(I)V

    .line 1289
    return-void
.end method

.method private doUpdateTransitionProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mStreet:Lcom/google/android/street/Street;

    invoke-virtual {v0, p1}, Lcom/google/android/street/Street;->reportTransitionProgress(I)V

    .line 1293
    return-void
.end method

.method private doYaw(F)V
    .locals 1
    .parameter "deltaYaw"

    .prologue
    .line 1556
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/street/StreetView;->doYawTilt(FF)V

    .line 1557
    return-void
.end method

.method private doYawTilt(FF)V
    .locals 4
    .parameter "deltaYaw"
    .parameter "deltaTilt"

    .prologue
    .line 1567
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    iget-object v1, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-virtual {v1}, Lcom/google/android/street/UserOrientation;->getYaw()F

    move-result v1

    const/high16 v2, 0x4120

    mul-float/2addr v2, p1

    iget-object v3, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-virtual {v3}, Lcom/google/android/street/UserOrientation;->getScale()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v1}, Lcom/google/android/street/StreetMath;->normalizeDegrees(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/street/UserOrientation;->setYaw(F)V

    .line 1572
    invoke-direct {p0, p2}, Lcom/google/android/street/StreetView;->doTilt(F)V

    .line 1573
    return-void
.end method

.method private doZoom(F)V
    .locals 3
    .parameter "deltaZoom"

    .prologue
    .line 1582
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    iget v1, p0, Lcom/google/android/street/StreetView;->mZoomLevels:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/google/android/street/UserOrientation;->addZoom(FI)V

    .line 1583
    return-void
.end method

.method private declared-synchronized enableSensor(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 1955
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 1956
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/street/StreetView;->mSensorEnabled:Z

    if-nez v0, :cond_0

    .line 1957
    iget-boolean v0, p0, Lcom/google/android/street/StreetView;->mUseSensorToControlView:Z

    if-eqz v0, :cond_0

    .line 1958
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mSensorListener:Lcom/google/android/street/StreetView$OrientationSensorListener;

    invoke-virtual {v0}, Lcom/google/android/street/StreetView$OrientationSensorListener;->register()V

    .line 1959
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/street/StreetView;->mSensorEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1968
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1963
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/street/StreetView;->mSensorEnabled:Z

    if-eqz v0, :cond_0

    .line 1964
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mSensorListener:Lcom/google/android/street/StreetView$OrientationSensorListener;

    invoke-virtual {v0}, Lcom/google/android/street/StreetView$OrientationSensorListener;->unregister()V

    .line 1965
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/street/StreetView;->mSensorEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1955
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private finishTap(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x14

    const/4 v6, -0x2

    const/high16 v5, 0x3f80

    const/4 v2, 0x0

    .line 1221
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    invoke-virtual {v0}, Lcom/google/android/street/Renderer;->clearPancake()V

    .line 1224
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mHighlighter:Lcom/google/android/street/Highlighter;

    invoke-virtual {v0}, Lcom/google/android/street/Highlighter;->getCurrentlyPressedItem()I

    move-result v0

    .line 1227
    iget-object v1, p0, Lcom/google/android/street/StreetView;->mHighlighter:Lcom/google/android/street/Highlighter;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/google/android/street/Highlighter;->up(FF)I

    move-result v1

    .line 1231
    if-ne v1, v6, :cond_1

    .line 1232
    invoke-virtual {p0}, Lcom/google/android/street/StreetView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04000c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1271
    :cond_0
    :goto_0
    return-void

    .line 1237
    :cond_1
    if-ne v0, v6, :cond_2

    .line 1243
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v0, v0, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    if-eqz v0, :cond_2

    .line 1244
    const/high16 v0, 0x4286

    iget v3, p0, Lcom/google/android/street/StreetView;->mScreenDensity:F

    mul-float/2addr v0, v3

    .line 1245
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-direct {p0, v3, v4}, Lcom/google/android/street/StreetView;->clickToGo(FF)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1251
    iget-boolean v3, p0, Lcom/google/android/street/StreetView;->mUseSensorToControlView:Z

    if-eqz v3, :cond_3

    .line 1252
    invoke-direct {p0, v5}, Lcom/google/android/street/StreetView;->smoothZoom(F)V

    .line 1260
    :cond_2
    :goto_1
    if-lt v1, v7, :cond_4

    .line 1261
    sub-int v0, v1, v7

    .line 1262
    iget-object v1, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v1, v1, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    invoke-virtual {v1, v0}, Lcom/google/android/street/DepthMap;->getPanoId(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/street/StreetView;->loadPanorama(Ljava/lang/String;Lcom/google/android/street/MapPoint;Lcom/google/android/street/UserOrientation;Lcom/google/android/street/MapPoint;Lcom/google/android/street/PanoramaConfig;)V

    .line 1264
    invoke-virtual {p0}, Lcom/google/android/street/StreetView;->invalidate()V

    goto :goto_0

    .line 1254
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float v0, v4, v0

    invoke-direct {p0, v5, v3, v0}, Lcom/google/android/street/StreetView;->smoothZoom(FFF)V

    goto :goto_1

    .line 1268
    :cond_4
    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    .line 1269
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    invoke-virtual {v0, v1}, Lcom/google/android/street/Renderer;->getPanoramaLink(I)Lcom/google/android/street/PanoramaLink;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/street/StreetView;->goTo(Lcom/google/android/street/PanoramaLink;)V

    goto :goto_0
.end method

.method private formatStreetAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1864
    if-nez p1, :cond_1

    .line 1865
    if-nez p2, :cond_0

    .line 1866
    const-string v0, ""

    .line 1875
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    .line 1868
    goto :goto_0

    .line 1870
    :cond_1
    if-nez p2, :cond_2

    move-object v0, p1

    .line 1871
    goto :goto_0

    .line 1873
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/street/StreetView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04000d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1875
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getClosestLink(F)Lcom/google/android/street/PanoramaLink;
    .locals 2
    .parameter "yawDeg"

    .prologue
    .line 1650
    const/4 v0, 0x0

    .line 1651
    .local v0, result:Lcom/google/android/street/PanoramaLink;
    iget-object v1, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    if-eqz v1, :cond_0

    .line 1652
    iget-object v1, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    invoke-virtual {v1, p1}, Lcom/google/android/street/PanoramaConfig;->getClosestLink(F)Lcom/google/android/street/PanoramaLink;

    move-result-object v0

    .line 1654
    :cond_0
    return-object v0
.end method

.method private getLoadingStatus()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1838
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->wasNetworkUp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1839
    const-string v0, ""

    .line 1841
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f040006

    invoke-direct {p0, v0}, Lcom/google/android/street/StreetView;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private getStatus(Lcom/google/android/street/StreetView$Status;)V
    .locals 2
    .parameter "status"

    .prologue
    const/4 v1, 0x0

    .line 1720
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->wasNetworkUp()Z

    move-result v0

    iput-boolean v0, p1, Lcom/google/android/street/StreetView$Status;->mGotNetworkConnection:Z

    .line 1721
    iput-boolean v1, p1, Lcom/google/android/street/StreetView$Status;->mGotPanoramaConfig:Z

    .line 1722
    iget-boolean v0, p0, Lcom/google/android/street/StreetView;->mBadPanorama:Z

    iput-boolean v0, p1, Lcom/google/android/street/StreetView$Status;->mBadPanorama:Z

    .line 1723
    iput-boolean v1, p1, Lcom/google/android/street/StreetView$Status;->mThrottling:Z

    .line 1724
    iput-boolean v1, p1, Lcom/google/android/street/StreetView$Status;->mDisabled:Z

    .line 1728
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaLink:Lcom/google/android/street/PanoramaLink;

    if-nez v0, :cond_0

    .line 1732
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/google/android/street/StreetView$Status;->mGotPanoramaConfig:Z

    .line 1733
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    invoke-virtual {v0}, Lcom/google/android/street/PanoramaConfig;->someRequestsWillBeDenied()Z

    move-result v0

    iput-boolean v0, p1, Lcom/google/android/street/StreetView$Status;->mThrottling:Z

    .line 1734
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-boolean v0, v0, Lcom/google/android/street/PanoramaConfig;->mDisabled:Z

    iput-boolean v0, p1, Lcom/google/android/street/StreetView$Status;->mDisabled:Z

    .line 1736
    :cond_0
    return-void
.end method

.method private getStatusFromPanoramaConfig()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1850
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    if-nez v0, :cond_0

    .line 1851
    const-string v0, ""

    .line 1859
    :goto_0
    return-object v0

    .line 1853
    :cond_0
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-boolean v0, v0, Lcom/google/android/street/PanoramaConfig;->mDisabled:Z

    if-eqz v0, :cond_1

    .line 1854
    const v0, 0x7f040007

    invoke-direct {p0, v0}, Lcom/google/android/street/StreetView;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1856
    :cond_1
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    invoke-virtual {v0}, Lcom/google/android/street/PanoramaConfig;->serviceTemporarilyUnavailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1857
    const v0, 0x7f040008

    invoke-direct {p0, v0}, Lcom/google/android/street/StreetView;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 1859
    :cond_2
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v0, v0, Lcom/google/android/street/PanoramaConfig;->mStreetRange:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v1, v1, Lcom/google/android/street/PanoramaConfig;->mText:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/street/StreetView;->formatStreetAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getText(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "index"

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mStreet:Lcom/google/android/street/Street;

    invoke-virtual {v0, p1}, Lcom/google/android/street/Street;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private goTo(Lcom/google/android/street/PanoramaLink;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1663
    if-nez p1, :cond_0

    .line 1699
    :goto_0
    return-void

    .line 1666
    :cond_0
    iget-object v0, p1, Lcom/google/android/street/PanoramaLink;->mPanoId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/street/PanoramaLink;->mPanoId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 1670
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/street/StreetView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040007

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1675
    :cond_2
    const-string v0, "Panorama step"

    iget-object v1, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    invoke-static {v0, v1}, Lcom/google/android/street/Street;->noteStartFrame(Ljava/lang/String;Lcom/google/android/street/PanoramaConfig;)V

    .line 1676
    iput-boolean v3, p0, Lcom/google/android/street/StreetView;->mBadPanorama:Z

    .line 1677
    iput-object v2, p0, Lcom/google/android/street/StreetView;->mInitialPanoId:Ljava/lang/String;

    .line 1678
    iput-object v2, p0, Lcom/google/android/street/StreetView;->mInitialPanoMapPoint:Lcom/google/android/street/MapPoint;

    .line 1679
    iput-object p1, p0, Lcom/google/android/street/StreetView;->mPanoramaLink:Lcom/google/android/street/PanoramaLink;

    .line 1680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SV step to panorama "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/street/StreetView;->mPanoramaLink:Lcom/google/android/street/PanoramaLink;

    iget-object v1, v1, Lcom/google/android/street/PanoramaLink;->mPanoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/street/Street;->logI(Ljava/lang/String;)V

    .line 1696
    iput-object v2, p0, Lcom/google/android/street/StreetView;->mStatusOverride:Ljava/lang/String;

    .line 1697
    invoke-virtual {p0}, Lcom/google/android/street/StreetView;->clearDirectionsArrowParams()V

    .line 1698
    invoke-virtual {p0}, Lcom/google/android/street/StreetView;->invalidate()V

    goto :goto_0
.end method

.method private nextZoomLevel()F
    .locals 3

    .prologue
    .line 615
    iget-object v1, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-virtual {v1}, Lcom/google/android/street/UserOrientation;->getZoom()F

    move-result v0

    .line 616
    .local v0, currentLevel:F
    iget v1, p0, Lcom/google/android/street/StreetView;->mZoomLevels:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/high16 v1, 0x3f80

    :goto_0
    return v1

    :cond_0
    neg-float v1, v0

    goto :goto_0
.end method

.method private okToAct()Z
    .locals 1

    .prologue
    .line 1971
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onIndirectUp(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 1213
    invoke-direct {p0, p1}, Lcom/google/android/street/StreetView;->finishTap(Landroid/view/MotionEvent;)V

    .line 1214
    return-void
.end method

.method private reportUserActivity()V
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mUserActivityReporter:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/street/StreetView;->post(Ljava/lang/Runnable;)Z

    .line 805
    return-void
.end method

.method private final send(II)V
    .locals 3
    .parameter "what"
    .parameter "arg1"

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/street/StreetView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1331
    return-void
.end method

.method private final send(IIILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 1334
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/street/StreetView;->mHandler:Landroid/os/Handler;

    invoke-static {v1, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1335
    return-void
.end method

.method private setPanoramaConfig(Lcom/google/android/street/PanoramaConfig;)V
    .locals 3
    .parameter "newPanoramaConfig"

    .prologue
    const/4 v2, 0x0

    .line 1909
    iput-object p1, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    .line 1929
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    if-eqz v0, :cond_2

    .line 1931
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v0, v0, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    if-eqz v0, :cond_0

    .line 1932
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v0, v0, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    invoke-virtual {v0}, Lcom/google/android/street/DepthMap;->decompress()Z

    .line 1936
    :cond_0
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    if-eqz v0, :cond_1

    .line 1937
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    iget-object v1, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    invoke-virtual {v0, v1}, Lcom/google/android/street/Renderer;->setPanoramaConfig(Lcom/google/android/street/PanoramaConfig;)V

    .line 1940
    :cond_1
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfigCache:Lcom/google/android/street/PanoramaConfigCache;

    invoke-virtual {v0, p1}, Lcom/google/android/street/PanoramaConfigCache;->insert(Lcom/google/android/street/PanoramaConfig;)V

    .line 1941
    invoke-virtual {p0}, Lcom/google/android/street/StreetView;->initUserOrientation()V

    .line 1942
    iput-object v2, p0, Lcom/google/android/street/StreetView;->mPanoramaLink:Lcom/google/android/street/PanoramaLink;

    .line 1943
    iput-object v2, p0, Lcom/google/android/street/StreetView;->mInitialPanoId:Ljava/lang/String;

    .line 1944
    iput-object v2, p0, Lcom/google/android/street/StreetView;->mInitialPanoMapPoint:Lcom/google/android/street/MapPoint;

    .line 1948
    :cond_2
    return-void
.end method

.method private setTangentRatios(FF)V
    .locals 6
    .parameter "anchorYaw"
    .parameter "anchorPitch"

    .prologue
    const/high16 v5, 0x4000

    .line 2021
    iget-object v3, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-virtual {v3}, Lcom/google/android/street/UserOrientation;->getYaw()F

    move-result v3

    invoke-static {v3}, Lcom/google/android/street/StreetMath;->degreesToUnit(F)F

    move-result v1

    .line 2022
    .local v1, currentYaw:F
    iget-object v3, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-virtual {v3}, Lcom/google/android/street/UserOrientation;->getTilt()F

    move-result v3

    div-float v0, v3, v5

    .line 2023
    .local v0, currentPitch:F
    iget-object v3, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-virtual {v3}, Lcom/google/android/street/UserOrientation;->getScale()F

    move-result v2

    .line 2025
    .local v2, scale:F
    iput p1, p0, Lcom/google/android/street/StreetView;->mAnchorYaw:F

    .line 2026
    iput p2, p0, Lcom/google/android/street/StreetView;->mAnchorPitch:F

    .line 2028
    invoke-static {v1, p1}, Lcom/google/android/street/StreetMath;->angleSubtractUnit(FF)F

    move-result v3

    invoke-static {v3}, Lcom/google/android/street/StreetMath;->tanUnit(F)F

    move-result v3

    iget v4, p0, Lcom/google/android/street/StreetView;->mUnzoomedFovH:F

    div-float/2addr v4, v5

    invoke-static {v4}, Lcom/google/android/street/StreetMath;->degreesToUnit(F)F

    move-result v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Lcom/google/android/street/StreetMath;->tanUnit(F)F

    move-result v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/google/android/street/StreetView;->mHorizontalTanRatio:F

    .line 2033
    invoke-static {v0, p2}, Lcom/google/android/street/StreetMath;->angleSubtractUnit(FF)F

    move-result v3

    invoke-static {v3}, Lcom/google/android/street/StreetMath;->tanUnit(F)F

    move-result v3

    iget v4, p0, Lcom/google/android/street/StreetView;->mUnzoomedFovV:F

    div-float/2addr v4, v5

    invoke-static {v4}, Lcom/google/android/street/StreetMath;->degreesToUnit(F)F

    move-result v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Lcom/google/android/street/StreetMath;->tanUnit(F)F

    move-result v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/google/android/street/StreetView;->mVerticalTanRatio:F

    .line 2037
    return-void
.end method

.method private showZoomController(Z)V
    .locals 2
    .parameter "focusable"

    .prologue
    .line 1527
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-nez v0, :cond_0

    .line 1532
    :goto_0
    return-void

    .line 1530
    :cond_0
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v0, p1}, Landroid/widget/ZoomButtonsController;->setFocusable(Z)V

    .line 1531
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    goto :goto_0
.end method

.method private smoothZoom(F)V
    .locals 5
    .parameter "amount"

    .prologue
    .line 1024
    const/4 v0, 0x5

    .line 1025
    .local v0, SMOOTH_STEPS:I
    const/high16 v3, 0x40a0

    div-float v1, p1, v3

    .line 1028
    .local v1, f:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    .line 1029
    invoke-virtual {p0, v1}, Lcom/google/android/street/StreetView;->zoom(F)V

    .line 1030
    monitor-enter p0

    .line 1032
    const-wide/16 v3, 0x1e

    :try_start_0
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1036
    :goto_1
    :try_start_1
    monitor-exit p0

    .line 1028
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1036
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1033
    :catch_0
    move-exception v3

    goto :goto_1

    .line 1038
    :cond_0
    return-void
.end method

.method private smoothZoom(FFF)V
    .locals 6
    .parameter "zoomAmount"
    .parameter "anchorX"
    .parameter "anchorY"

    .prologue
    const/4 v5, 0x0

    .line 984
    iget-object v4, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    invoke-virtual {v4, p2, p3, v5}, Lcom/google/android/street/Renderer;->pixelToYawPitch(FFZ)[F

    move-result-object v1

    .line 988
    .local v1, anchorYawPitch:[F
    if-nez v1, :cond_1

    .line 1018
    :cond_0
    return-void

    .line 992
    :cond_1
    const/4 v0, 0x7

    .line 993
    .local v0, SMOOTH_STEPS:I
    const/high16 v4, 0x40e0

    div-float v3, p1, v4

    .line 996
    .local v3, zoomStep:F
    aget v4, v1, v5

    const/4 v5, 0x1

    aget v5, v1, v5

    invoke-direct {p0, v4, v5}, Lcom/google/android/street/StreetView;->setTangentRatios(FF)V

    .line 999
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v4, 0x7

    if-ge v2, v4, :cond_0

    .line 1000
    invoke-direct {p0, v3}, Lcom/google/android/street/StreetView;->doZoom(F)V

    .line 1003
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->updateOrientationForZoom()V

    .line 1005
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->updateRendererAndButtons()V

    .line 1008
    const/4 v4, 0x6

    if-ge v2, v4, :cond_2

    .line 1009
    monitor-enter p0

    .line 1011
    const-wide/16 v4, 0x1e

    :try_start_0
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1015
    :goto_1
    :try_start_1
    monitor-exit p0

    .line 999
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1015
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 1012
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private startFlinger(FF)V
    .locals 4
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 297
    iget-object v1, p0, Lcom/google/android/street/StreetView;->mFlingerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 298
    :try_start_0
    iget-object v2, p0, Lcom/google/android/street/StreetView;->mFlinger:Lcom/google/android/street/StreetView$Flinger;

    if-eqz v2, :cond_0

    .line 299
    iget-object v2, p0, Lcom/google/android/street/StreetView;->mFlinger:Lcom/google/android/street/StreetView$Flinger;

    invoke-virtual {v2}, Lcom/google/android/street/StreetView$Flinger;->stop()V

    .line 301
    :cond_0
    new-instance v2, Lcom/google/android/street/StreetView$Flinger;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/street/StreetView$Flinger;-><init>(Lcom/google/android/street/StreetView;FF)V

    iput-object v2, p0, Lcom/google/android/street/StreetView;->mFlinger:Lcom/google/android/street/StreetView$Flinger;

    .line 302
    new-instance v0, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/google/android/street/StreetView;->mFlinger:Lcom/google/android/street/StreetView$Flinger;

    const-string v3, "Flinger"

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 303
    .local v0, th:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 304
    monitor-exit v1

    .line 305
    return-void

    .line 304
    .end local v0           #th:Ljava/lang/Thread;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static tiltDegToHalfTurns(F)F
    .locals 2
    .parameter

    .prologue
    .line 1595
    const/high16 v0, 0x3f00

    const v1, 0x3bb60b61

    mul-float/2addr v1, p0

    sub-float/2addr v0, v1

    return v0
.end method

.method private updateButtonsEnabled()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 580
    iget-object v1, p0, Lcom/google/android/street/StreetView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-nez v1, :cond_0

    .line 586
    :goto_0
    return-void

    .line 583
    :cond_0
    iget-object v1, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-virtual {v1}, Lcom/google/android/street/UserOrientation;->getZoom()F

    move-result v0

    .line 584
    .local v0, zoom:F
    iget-object v1, p0, Lcom/google/android/street/StreetView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    iget v2, p0, Lcom/google/android/street/StreetView;->mZoomLevels:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ZoomButtonsController;->setZoomInEnabled(Z)V

    .line 585
    iget-object v1, p0, Lcom/google/android/street/StreetView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2

    move v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/ZoomButtonsController;->setZoomOutEnabled(Z)V

    goto :goto_0

    :cond_1
    move v2, v4

    .line 584
    goto :goto_1

    :cond_2
    move v2, v4

    .line 585
    goto :goto_2
.end method

.method private updateDeviceOrientation()V
    .locals 2

    .prologue
    .line 602
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    if-eqz v0, :cond_0

    .line 603
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->updateZoomLevels()V

    .line 604
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/street/StreetView;->zoom(F)V

    .line 605
    iget-boolean v0, p0, Lcom/google/android/street/StreetView;->mZoomButtonsEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/street/StreetView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v0}, Landroid/widget/ZoomButtonsController;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 608
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 611
    :cond_0
    return-void
.end method

.method private updateOrientationForZoom()V
    .locals 7

    .prologue
    const/high16 v6, 0x4000

    .line 2045
    iget-object v3, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-virtual {v3}, Lcom/google/android/street/UserOrientation;->getScale()F

    move-result v2

    .line 2047
    .local v2, scale:F
    iget v3, p0, Lcom/google/android/street/StreetView;->mAnchorYaw:F

    iget v4, p0, Lcom/google/android/street/StreetView;->mHorizontalTanRatio:F

    iget v5, p0, Lcom/google/android/street/StreetView;->mUnzoomedFovH:F

    div-float/2addr v5, v6

    invoke-static {v5}, Lcom/google/android/street/StreetMath;->degreesToUnit(F)F

    move-result v5

    mul-float/2addr v5, v2

    invoke-static {v5}, Lcom/google/android/street/StreetMath;->tanUnit(F)F

    move-result v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Lcom/google/android/street/StreetMath;->atanUnit(F)F

    move-result v4

    add-float v1, v3, v4

    .line 2051
    .local v1, newYaw:F
    iget v3, p0, Lcom/google/android/street/StreetView;->mAnchorPitch:F

    iget v4, p0, Lcom/google/android/street/StreetView;->mVerticalTanRatio:F

    iget v5, p0, Lcom/google/android/street/StreetView;->mUnzoomedFovV:F

    div-float/2addr v5, v6

    invoke-static {v5}, Lcom/google/android/street/StreetMath;->degreesToUnit(F)F

    move-result v5

    mul-float/2addr v5, v2

    invoke-static {v5}, Lcom/google/android/street/StreetMath;->tanUnit(F)F

    move-result v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Lcom/google/android/street/StreetMath;->atanUnit(F)F

    move-result v4

    add-float v0, v3, v4

    .line 2055
    .local v0, newPitch:F
    iget-object v3, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-static {v1}, Lcom/google/android/street/StreetMath;->unitToDegrees(F)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/street/UserOrientation;->setYaw(F)V

    .line 2058
    iget-object v3, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    mul-float v4, v6, v0

    invoke-virtual {v3, v4}, Lcom/google/android/street/UserOrientation;->setTilt(F)V

    .line 2059
    return-void
.end method

.method private updateRendererAndButtons()V
    .locals 0

    .prologue
    .line 593
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->updateRendererUserOrientation()V

    .line 594
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->updateButtonsEnabled()V

    .line 595
    return-void
.end method

.method private updateRendererUserOrientation()V
    .locals 3

    .prologue
    .line 570
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    new-instance v1, Lcom/google/android/street/UserOrientation;

    iget-object v2, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-direct {v1, v2}, Lcom/google/android/street/UserOrientation;-><init>(Lcom/google/android/street/UserOrientation;)V

    invoke-virtual {v0, v1}, Lcom/google/android/street/Renderer;->setUserOrientation(Lcom/google/android/street/UserOrientation;)V

    .line 573
    :cond_0
    return-void
.end method

.method private updateStatusText()V
    .locals 3

    .prologue
    .line 640
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->checkStatus()Ljava/lang/CharSequence;

    move-result-object v1

    .line 641
    .local v1, message:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/google/android/street/StreetView;->mStreet:Lcom/google/android/street/Street;

    invoke-virtual {v2, v1}, Lcom/google/android/street/Street;->setStatusText(Ljava/lang/CharSequence;)V

    .line 644
    iget-object v2, p0, Lcom/google/android/street/StreetView;->mCurrentStatus:Lcom/google/android/street/StreetView$Status;

    invoke-direct {p0, v2}, Lcom/google/android/street/StreetView;->getStatus(Lcom/google/android/street/StreetView$Status;)V

    .line 645
    iget-object v2, p0, Lcom/google/android/street/StreetView;->mCurrentStatus:Lcom/google/android/street/StreetView$Status;

    invoke-virtual {v2}, Lcom/google/android/street/StreetView$Status;->getProgress()I

    move-result v0

    .line 646
    .local v0, currentProgress:I
    iget v2, p0, Lcom/google/android/street/StreetView;->mOldProgress:I

    if-eq v0, v2, :cond_0

    .line 647
    iput v0, p0, Lcom/google/android/street/StreetView;->mOldProgress:I

    .line 648
    iget-object v2, p0, Lcom/google/android/street/StreetView;->mStreet:Lcom/google/android/street/Street;

    invoke-virtual {v2, v0}, Lcom/google/android/street/Street;->reportProgress(I)V

    .line 650
    :cond_0
    return-void
.end method

.method private updateZoomLevels()V
    .locals 3

    .prologue
    .line 1461
    invoke-virtual {p0}, Lcom/google/android/street/StreetView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 1462
    invoke-virtual {p0}, Lcom/google/android/street/StreetView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 1463
    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/street/StreetView;->mAspectRatio:F

    .line 1464
    iget v0, p0, Lcom/google/android/street/StreetView;->mAspectRatio:F

    invoke-static {v0}, Lcom/google/android/street/Renderer;->getUnzoomedVerticalFov(F)F

    move-result v0

    iput v0, p0, Lcom/google/android/street/StreetView;->mUnzoomedFovV:F

    .line 1465
    iget v0, p0, Lcom/google/android/street/StreetView;->mAspectRatio:F

    invoke-static {v0}, Lcom/google/android/street/Renderer;->getUnzoomedHorizontalFov(F)F

    move-result v0

    iput v0, p0, Lcom/google/android/street/StreetView;->mUnzoomedFovH:F

    .line 1467
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget v0, v0, Lcom/google/android/street/PanoramaConfig;->mImageHeight:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/street/StreetView;->mUnzoomedFovV:F

    mul-float/2addr v0, v1

    const v1, 0x3bb60b61

    mul-float/2addr v0, v1

    .line 1469
    invoke-static {v0}, Lcom/google/android/street/StreetMath;->log2(F)F

    move-result v0

    .line 1470
    iget-object v1, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget v1, v1, Lcom/google/android/street/PanoramaConfig;->mNumZoomLevels:I

    const/4 v2, 0x0

    float-to-int v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/street/StreetView;->mZoomLevels:I

    .line 1479
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    if-eqz v0, :cond_0

    .line 1480
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    iget v1, p0, Lcom/google/android/street/StreetView;->mZoomLevels:I

    invoke-virtual {v0, v1}, Lcom/google/android/street/Renderer;->setZoomLevels(I)V

    .line 1482
    :cond_0
    return-void
.end method

.method private wasNetworkUp()Z
    .locals 1

    .prologue
    .line 1905
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mStreet:Lcom/google/android/street/Street;

    invoke-virtual {v0}, Lcom/google/android/street/Street;->wasNetworkAvailable()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public clearDirectionsArrowParams()V
    .locals 2

    .prologue
    const/high16 v1, -0x4080

    .line 1551
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    invoke-virtual {v0, v1, v1}, Lcom/google/android/street/Renderer;->setDirectionsArrowParams(FF)V

    .line 1552
    return-void
.end method

.method public clearStatusOverride()V
    .locals 1

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mStatusOverride:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1541
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/street/StreetView;->mStatusOverride:Ljava/lang/String;

    .line 1542
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->updateStatusText()V

    .line 1544
    :cond_0
    return-void
.end method

.method public getPanoramaConfig()Lcom/google/android/street/PanoramaConfig;
    .locals 1

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    return-object v0
.end method

.method public getUserOrientation()Lcom/google/android/street/UserOrientation;
    .locals 1

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    if-nez v0, :cond_0

    .line 1305
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRequestedUserOrientation:Lcom/google/android/street/UserOrientation;

    .line 1307
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    goto :goto_0
.end method

.method public goForward()V
    .locals 2

    .prologue
    .line 1634
    iget-object v1, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-virtual {v1}, Lcom/google/android/street/UserOrientation;->getYaw()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/street/StreetView;->getClosestLink(F)Lcom/google/android/street/PanoramaLink;

    move-result-object v0

    .line 1635
    .local v0, forward:Lcom/google/android/street/PanoramaLink;
    if-eqz v0, :cond_0

    .line 1636
    invoke-direct {p0, v0}, Lcom/google/android/street/StreetView;->goTo(Lcom/google/android/street/PanoramaLink;)V

    .line 1638
    :cond_0
    return-void
.end method

.method public handleScaleEvent(Lcom/google/android/common/gesture/ScaleEvent;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1981
    invoke-virtual {p1}, Lcom/google/android/common/gesture/ScaleEvent;->isScaleBegin()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/street/StreetView;->mUseSensorToControlView:Z

    if-nez v0, :cond_1

    .line 1983
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    invoke-virtual {p1}, Lcom/google/android/common/gesture/ScaleEvent;->getFocusX()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/common/gesture/ScaleEvent;->getFocusY()F

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/street/Renderer;->pixelToYawPitch(FFZ)[F

    move-result-object v0

    .line 1985
    if-nez v0, :cond_0

    move v0, v3

    .line 2000
    :goto_0
    return v0

    .line 1988
    :cond_0
    aget v1, v0, v3

    aget v0, v0, v4

    invoke-direct {p0, v1, v0}, Lcom/google/android/street/StreetView;->setTangentRatios(FF)V

    .line 1991
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/common/gesture/ScaleEvent;->getCurrentSpan()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/common/gesture/ScaleEvent;->getPreviousSpan()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x4334

    div-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/street/StreetView;->mScreenDensity:F

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/street/StreetView;->doZoom(F)V

    .line 1994
    iget-boolean v0, p0, Lcom/google/android/street/StreetView;->mUseSensorToControlView:Z

    if-nez v0, :cond_2

    .line 1995
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->updateOrientationForZoom()V

    .line 1998
    :cond_2
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->updateRendererAndButtons()V

    move v0, v4

    .line 2000
    goto :goto_0
.end method

.method public handleTwoFingerTap()V
    .locals 1

    .prologue
    .line 2008
    const/high16 v0, -0x4080

    invoke-direct {p0, v0}, Lcom/google/android/street/StreetView;->smoothZoom(F)V

    .line 2009
    return-void
.end method

.method public hasPanorama()Z
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaLink:Lcom/google/android/street/PanoramaLink;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initUserOrientation()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x4334

    const/4 v9, 0x0

    .line 1379
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRequestedUserOrientation:Lcom/google/android/street/UserOrientation;

    if-eqz v0, :cond_1

    .line 1380
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRequestedUserOrientation:Lcom/google/android/street/UserOrientation;

    iput-object v0, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    .line 1381
    iput-object v11, p0, Lcom/google/android/street/StreetView;->mRequestedUserOrientation:Lcom/google/android/street/UserOrientation;

    .line 1434
    :goto_0
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRequestedFaceToLatLng:Lcom/google/android/street/MapPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    if-eqz v0, :cond_0

    .line 1435
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v0, v0, Lcom/google/android/street/PanoramaConfig;->mLatLng:Lcom/google/android/street/MapPoint;

    iget-object v1, p0, Lcom/google/android/street/StreetView;->mRequestedFaceToLatLng:Lcom/google/android/street/MapPoint;

    invoke-virtual {v0, v1}, Lcom/google/android/street/MapPoint;->angleTo(Lcom/google/android/street/MapPoint;)F

    move-result v0

    .line 1437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SV adjusting face: pano-latlng="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v2, v2, Lcom/google/android/street/PanoramaConfig;->mLatLng:Lcom/google/android/street/MapPoint;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " face-latlng="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/street/StreetView;->mRequestedFaceToLatLng:Lcom/google/android/street/MapPoint;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " yaw="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/street/Street;->log(Ljava/lang/String;)V

    .line 1440
    iput-object v11, p0, Lcom/google/android/street/StreetView;->mRequestedFaceToLatLng:Lcom/google/android/street/MapPoint;

    .line 1441
    new-instance v1, Lcom/google/android/street/UserOrientation;

    iget-object v2, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-virtual {v2}, Lcom/google/android/street/UserOrientation;->getTilt()F

    move-result v2

    iget-object v3, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-virtual {v3}, Lcom/google/android/street/UserOrientation;->getZoom()F

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/street/UserOrientation;-><init>(FFF)V

    iput-object v1, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    .line 1447
    :cond_0
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->updateZoomLevels()V

    .line 1451
    invoke-direct {p0, v9, v9}, Lcom/google/android/street/StreetView;->doYawTilt(FF)V

    .line 1452
    invoke-virtual {p0, v9}, Lcom/google/android/street/StreetView;->zoom(F)V

    .line 1453
    return-void

    .line 1384
    :cond_1
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaLink:Lcom/google/android/street/PanoramaLink;

    if-eqz v0, :cond_4

    .line 1391
    const/high16 v0, 0x7f80

    .line 1394
    iget-object v1, p0, Lcom/google/android/street/StreetView;->mPanoramaLink:Lcom/google/android/street/PanoramaLink;

    iget v1, v1, Lcom/google/android/street/PanoramaLink;->mYawDeg:F

    .line 1395
    iget-object v2, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    if-eqz v2, :cond_6

    .line 1396
    iget-object v2, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v2, v2, Lcom/google/android/street/PanoramaConfig;->mLinks:[Lcom/google/android/street/PanoramaLink;

    .line 1397
    if-eqz v2, :cond_6

    .line 1398
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v0

    move v0, v4

    move v4, v9

    :goto_1
    if-ge v0, v3, :cond_3

    aget-object v6, v2, v0

    .line 1402
    iget v6, v6, Lcom/google/android/street/PanoramaLink;->mYawDeg:F

    sub-float/2addr v6, v1

    add-float/2addr v6, v10

    .line 1404
    const v7, 0x3b360b61

    mul-float/2addr v7, v6

    invoke-static {v7}, Landroid/util/FloatMath;->floor(F)F

    move-result v7

    const/high16 v8, 0x43b4

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    .line 1408
    sub-float/2addr v6, v10

    .line 1409
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 1410
    const/high16 v8, 0x41c8

    cmpg-float v8, v7, v8

    if-gtz v8, :cond_2

    cmpg-float v8, v7, v5

    if-gtz v8, :cond_2

    move v4, v6

    move v5, v7

    .line 1398
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v4

    .line 1419
    :goto_2
    iget-object v1, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-virtual {v1}, Lcom/google/android/street/UserOrientation;->getYaw()F

    move-result v1

    add-float/2addr v0, v1

    .line 1429
    :goto_3
    new-instance v1, Lcom/google/android/street/UserOrientation;

    const/high16 v2, 0x3f00

    iget-object v3, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-virtual {v3}, Lcom/google/android/street/UserOrientation;->getZoom()F

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/street/UserOrientation;-><init>(FFF)V

    iput-object v1, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    goto/16 :goto_0

    .line 1421
    :cond_4
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    if-eqz v0, :cond_5

    .line 1423
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget v0, v0, Lcom/google/android/street/PanoramaConfig;->mPanoYawDeg:F

    goto :goto_3

    :cond_5
    move v0, v9

    .line 1425
    goto :goto_3

    :cond_6
    move v0, v9

    goto :goto_2
.end method

.method public initialize(Lcom/google/android/street/Street;Lcom/google/android/street/PanoramaManager;Z)V
    .locals 3
    .parameter "street"
    .parameter "panoramaManager"
    .parameter "isTablet"

    .prologue
    const/4 v2, 0x0

    .line 533
    iput-object p1, p0, Lcom/google/android/street/StreetView;->mStreet:Lcom/google/android/street/Street;

    .line 534
    iput-object p2, p0, Lcom/google/android/street/StreetView;->mPanoramaManager:Lcom/google/android/street/PanoramaManager;

    .line 535
    iput-boolean p3, p0, Lcom/google/android/street/StreetView;->mIsTablet:Z

    .line 537
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->createRenderer()V

    .line 539
    iget-boolean v0, p0, Lcom/google/android/street/StreetView;->mZoomButtonsEnabled:Z

    if-eqz v0, :cond_0

    .line 540
    new-instance v0, Landroid/widget/ZoomButtonsController;

    invoke-direct {v0, p0}, Landroid/widget/ZoomButtonsController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/street/StreetView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    .line 541
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    new-instance v1, Lcom/google/android/street/StreetView$3;

    invoke-direct {v1, p0}, Lcom/google/android/street/StreetView$3;-><init>(Lcom/google/android/street/StreetView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setOnZoomListener(Landroid/widget/ZoomButtonsController$OnZoomListener;)V

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mStreet:Lcom/google/android/street/Street;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Lcom/google/android/street/Street;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/google/android/street/StreetView;->mPowerManager:Landroid/os/PowerManager;

    .line 561
    invoke-virtual {p0}, Lcom/google/android/street/StreetView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.android.street.StreetView"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "useSensorToControlView"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/street/StreetView;->mUseSensorToControlView:Z

    .line 565
    iget-boolean v0, p0, Lcom/google/android/street/StreetView;->mUseSensorToControlView:Z

    invoke-direct {p0, v0}, Lcom/google/android/street/StreetView;->enableSensor(Z)V

    .line 566
    return-void
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 631
    invoke-super {p0}, Landroid/view/SurfaceView;->invalidate()V

    .line 633
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    if-eqz v0, :cond_0

    .line 634
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->updateStatusText()V

    .line 636
    :cond_0
    return-void
.end method

.method public loadPanorama(Ljava/lang/String;Lcom/google/android/street/MapPoint;Lcom/google/android/street/UserOrientation;Lcom/google/android/street/MapPoint;Lcom/google/android/street/PanoramaConfig;)V
    .locals 1
    .parameter "panoId"
    .parameter "panoMapPoint"
    .parameter "orientation"
    .parameter "faceToLatLng"
    .parameter "config"

    .prologue
    .line 1357
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/street/StreetView;->mBadPanorama:Z

    .line 1358
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaLink:Lcom/google/android/street/PanoramaLink;

    .line 1359
    iput-object p1, p0, Lcom/google/android/street/StreetView;->mInitialPanoId:Ljava/lang/String;

    .line 1360
    iput-object p2, p0, Lcom/google/android/street/StreetView;->mInitialPanoMapPoint:Lcom/google/android/street/MapPoint;

    .line 1361
    iput-object p3, p0, Lcom/google/android/street/StreetView;->mRequestedUserOrientation:Lcom/google/android/street/UserOrientation;

    .line 1362
    iput-object p4, p0, Lcom/google/android/street/StreetView;->mRequestedFaceToLatLng:Lcom/google/android/street/MapPoint;

    .line 1363
    invoke-direct {p0, p5}, Lcom/google/android/street/StreetView;->setPanoramaConfig(Lcom/google/android/street/PanoramaConfig;)V

    .line 1364
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 905
    iget-boolean v0, p0, Lcom/google/android/street/StreetView;->mZoomButtonsEnabled:Z

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 908
    :cond_0
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x1

    .line 1101
    iget v0, p0, Lcom/google/android/street/StreetView;->clickToGoUiMode:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v0, v0, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    if-eqz v0, :cond_0

    .line 1103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/street/StreetView;->clickToGo(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 1121
    :goto_0
    return v0

    .line 1111
    :cond_0
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-virtual {v0}, Lcom/google/android/street/UserOrientation;->getZoom()F

    move-result v0

    add-float/2addr v0, v3

    iget v1, p0, Lcom/google/android/street/StreetView;->mZoomLevels:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    .line 1112
    iget-boolean v0, p0, Lcom/google/android/street/StreetView;->mUseSensorToControlView:Z

    if-eqz v0, :cond_1

    .line 1113
    invoke-direct {p0, v3}, Lcom/google/android/street/StreetView;->smoothZoom(F)V

    :goto_1
    move v0, v2

    .line 1121
    goto :goto_0

    .line 1115
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v3, v0, v1}, Lcom/google/android/street/StreetView;->smoothZoom(FFF)V

    goto :goto_1

    .line 1118
    :cond_2
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-virtual {v0}, Lcom/google/android/street/UserOrientation;->getZoom()F

    move-result v0

    neg-float v0, v0

    invoke-direct {p0, v0}, Lcom/google/android/street/StreetView;->smoothZoom(F)V

    goto :goto_1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 1190
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v3, 0x1

    .line 1069
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mFlingerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1070
    :try_start_0
    iget-object v1, p0, Lcom/google/android/street/StreetView;->mFlinger:Lcom/google/android/street/StreetView$Flinger;

    if-eqz v1, :cond_0

    .line 1071
    iget-object v1, p0, Lcom/google/android/street/StreetView;->mFlinger:Lcom/google/android/street/StreetView$Flinger;

    invoke-virtual {v1}, Lcom/google/android/street/StreetView$Flinger;->stop()V

    .line 1073
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1079
    iget-boolean v0, p0, Lcom/google/android/street/StreetView;->mZoomButtonsEnabled:Z

    if-eqz v0, :cond_1

    .line 1080
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v0, v3}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 1082
    :cond_1
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mHighlighter:Lcom/google/android/street/Highlighter;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/street/Highlighter;->down(FF)Z

    .line 1083
    return v3

    .line 1073
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x4020

    const/high16 v2, -0x3fe0

    .line 1046
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mHighlighter:Lcom/google/android/street/Highlighter;

    invoke-virtual {v0}, Lcom/google/android/street/Highlighter;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1047
    const/4 v0, 0x0

    .line 1062
    :goto_0
    return v0

    .line 1049
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/street/StreetView;->mUseSensorToControlView:Z

    if-eqz v0, :cond_1

    move v0, v4

    .line 1050
    goto :goto_0

    .line 1059
    :cond_1
    iget v0, p0, Lcom/google/android/street/StreetView;->mLastDX:F

    invoke-static {v0, v2, v3}, Lcom/google/android/street/StreetMath;->clamp(FFF)F

    move-result v0

    .line 1060
    iget v1, p0, Lcom/google/android/street/StreetView;->mLastDY:F

    invoke-static {v1, v2, v3}, Lcom/google/android/street/StreetMath;->clamp(FFF)F

    move-result v1

    .line 1061
    const v2, 0x3f4ccccd

    mul-float/2addr v0, v2

    const/high16 v2, 0x3f00

    mul-float/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/street/StreetView;->startFlinger(FF)V

    move v0, v4

    .line 1062
    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f80

    const/high16 v5, -0x4080

    .line 809
    const/4 v0, 0x1

    .line 823
    .local v0, handled:Z
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->okToAct()Z

    move-result v2

    .line 824
    .local v2, okToAct:Z
    iget-boolean v4, p0, Lcom/google/android/street/StreetView;->mUseSensorToControlView:Z

    if-nez v4, :cond_2

    const/4 v4, 0x1

    move v1, v4

    .line 825
    .local v1, inNormalControlMode:Z
    :goto_0
    const/4 v3, 0x0

    .line 827
    .local v3, selectLink:Z
    sparse-switch p1, :sswitch_data_0

    .line 884
    const/4 v0, 0x0

    .line 888
    :cond_0
    :goto_1
    if-eqz v0, :cond_3

    .line 889
    if-eqz v3, :cond_1

    .line 892
    iget-object v4, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    if-eqz v4, :cond_1

    .line 893
    iget-object v4, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    invoke-virtual {v4, v7}, Lcom/google/android/street/Renderer;->setMotionUse(I)V

    .line 900
    :cond_1
    :goto_2
    return v0

    .end local v1           #inNormalControlMode:Z
    .end local v3           #selectLink:Z
    :cond_2
    move v1, v7

    .line 824
    goto :goto_0

    .line 829
    .restart local v1       #inNormalControlMode:Z
    .restart local v3       #selectLink:Z
    :sswitch_0
    const/4 v0, 0x0

    .line 830
    goto :goto_1

    .line 832
    :sswitch_1
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 833
    invoke-virtual {p0, v6}, Lcom/google/android/street/StreetView;->tilt(F)V

    .line 834
    const/4 v3, 0x1

    goto :goto_1

    .line 838
    :sswitch_2
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 839
    invoke-virtual {p0, v5}, Lcom/google/android/street/StreetView;->tilt(F)V

    .line 840
    const/4 v3, 0x1

    goto :goto_1

    .line 844
    :sswitch_3
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 845
    invoke-virtual {p0, v5}, Lcom/google/android/street/StreetView;->yaw(F)V

    .line 846
    const/4 v3, 0x1

    goto :goto_1

    .line 850
    :sswitch_4
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 851
    invoke-virtual {p0, v6}, Lcom/google/android/street/StreetView;->yaw(F)V

    .line 852
    const/4 v3, 0x1

    goto :goto_1

    .line 858
    :sswitch_5
    if-eqz v2, :cond_0

    .line 859
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->nextZoomLevel()F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/android/street/StreetView;->zoom(F)V

    goto :goto_1

    .line 864
    :sswitch_6
    if-eqz v2, :cond_0

    .line 865
    invoke-virtual {p0, v5}, Lcom/google/android/street/StreetView;->zoom(F)V

    .line 867
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/google/android/street/StreetView;->tilt(F)V

    goto :goto_1

    .line 872
    :sswitch_7
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 873
    invoke-virtual {p0}, Lcom/google/android/street/StreetView;->initUserOrientation()V

    goto :goto_1

    .line 878
    :sswitch_8
    if-eqz v2, :cond_0

    .line 879
    invoke-virtual {p0}, Lcom/google/android/street/StreetView;->toggleCompassMode()V

    goto :goto_1

    .line 898
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_2

    .line 827
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
        0x17 -> :sswitch_5
        0x1f -> :sswitch_8
        0x23 -> :sswitch_6
        0x2d -> :sswitch_7
        0x30 -> :sswitch_5
        0x3e -> :sswitch_6
    .end sparse-switch
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 927
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    invoke-virtual {v0}, Lcom/google/android/street/Renderer;->renderingPause()V

    .line 656
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/street/StreetView;->enableSensor(Z)V

    .line 668
    return-void
.end method

.method public onRestart()V
    .locals 2

    .prologue
    .line 689
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->createRenderer()V

    .line 690
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    if-eqz v0, :cond_1

    .line 691
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v0, v0, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v0, v0, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    invoke-virtual {v0}, Lcom/google/android/street/DepthMap;->decompress()Z

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    iget-object v1, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    invoke-virtual {v0, v1}, Lcom/google/android/street/Renderer;->setPanoramaConfig(Lcom/google/android/street/PanoramaConfig;)V

    .line 696
    :cond_1
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->updateRendererAndButtons()V

    .line 697
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    invoke-virtual {v0}, Lcom/google/android/street/Renderer;->renderingResume()V

    .line 674
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/street/StreetView;->enableSensor(Z)V

    .line 675
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v7, 0x1

    .line 931
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->okToAct()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v7

    .line 974
    :goto_0
    return v2

    .line 939
    :cond_0
    iget-boolean v2, p0, Lcom/google/android/street/StreetView;->mZoomButtonsEnabled:Z

    if-eqz v2, :cond_1

    .line 940
    iget-object v2, p0, Lcom/google/android/street/StreetView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2, v7}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 944
    :cond_1
    iget-object v2, p0, Lcom/google/android/street/StreetView;->mHighlighter:Lcom/google/android/street/Highlighter;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/street/Highlighter;->move(FF)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 946
    iget-object v2, p0, Lcom/google/android/street/StreetView;->mHighlighter:Lcom/google/android/street/Highlighter;

    invoke-virtual {v2}, Lcom/google/android/street/Highlighter;->getCurrentlyPressedItem()I

    move-result v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_2

    .line 948
    iget-object v2, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    const/high16 v5, 0x4286

    iget v6, p0, Lcom/google/android/street/StreetView;->mScreenDensity:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/google/android/street/Renderer;->setPancake(FF)V

    :cond_2
    move v2, v7

    .line 951
    goto :goto_0

    .line 955
    :cond_3
    iget-boolean v2, p0, Lcom/google/android/street/StreetView;->mUseSensorToControlView:Z

    if-eqz v2, :cond_4

    move v2, v7

    .line 956
    goto :goto_0

    .line 960
    :cond_4
    const v0, 0x3ca3d70a

    .line 961
    .local v0, xm:F
    const v1, -0x43dc28f6

    .line 962
    .local v1, ym:F
    const v2, 0x3ca3d70a

    mul-float/2addr v2, p3

    iput v2, p0, Lcom/google/android/street/StreetView;->mLastDX:F

    .line 963
    const v2, -0x43dc28f6

    mul-float/2addr v2, p4

    iput v2, p0, Lcom/google/android/street/StreetView;->mLastDY:F

    .line 971
    iget v2, p0, Lcom/google/android/street/StreetView;->mUnzoomedFovH:F

    mul-float/2addr v2, p3

    const/high16 v3, 0x4120

    invoke-virtual {p0}, Lcom/google/android/street/StreetView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    iget v3, p0, Lcom/google/android/street/StreetView;->mUnzoomedFovV:F

    mul-float/2addr v3, p4

    const/high16 v4, -0x3e4c

    invoke-virtual {p0}, Lcom/google/android/street/StreetView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    div-float/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/google/android/street/StreetView;->yawTilt(FF)V

    move v2, v7

    .line 974
    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 1066
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 1198
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 919
    invoke-direct {p0, p1}, Lcom/google/android/street/StreetView;->finishTap(Landroid/view/MotionEvent;)V

    .line 920
    const/4 v0, 0x1

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 759
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;->onSizeChanged(IIII)V

    .line 760
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->updateDeviceOrientation()V

    .line 761
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    invoke-virtual {v0}, Lcom/google/android/street/Renderer;->shutdown()V

    .line 680
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    .line 686
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    const/4 v1, 0x1

    .line 724
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->okToAct()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 730
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    invoke-virtual {v0, v1}, Lcom/google/android/street/Renderer;->setMotionUse(I)V

    .line 736
    invoke-static {}, Lcom/google/android/common/gesture/GestureController;->getInstance()Lcom/google/android/common/gesture/GestureController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/common/gesture/GestureController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 753
    :goto_0
    return v0

    .line 741
    :cond_0
    invoke-static {}, Lcom/google/android/common/gesture/MultiTouchController;->getInstance()Lcom/google/android/common/gesture/MultiTouchController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/common/gesture/MultiTouchController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 742
    goto :goto_0

    .line 747
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 748
    invoke-direct {p0, p1}, Lcom/google/android/street/StreetView;->onIndirectUp(Landroid/view/MotionEvent;)V

    move v0, v1

    .line 749
    goto :goto_0

    :cond_2
    move v0, v1

    .line 753
    goto :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const v11, 0x3e4ccccd

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 765
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->okToAct()Z

    move-result v7

    if-nez v7, :cond_0

    move v7, v9

    .line 800
    :goto_0
    return v7

    .line 768
    :cond_0
    iget-boolean v7, p0, Lcom/google/android/street/StreetView;->mUseSensorToControlView:Z

    if-nez v7, :cond_2

    move v2, v9

    .line 769
    .local v2, inNormalControlMode:Z
    :goto_1
    iget-object v7, p0, Lcom/google/android/street/StreetView;->mTrackballGestureDetector:Lcom/google/android/street/TrackballGestureDetector;

    invoke-virtual {v7, p1}, Lcom/google/android/street/TrackballGestureDetector;->analyze(Landroid/view/MotionEvent;)V

    .line 771
    iget-object v7, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    invoke-virtual {v7, v8}, Lcom/google/android/street/Renderer;->setMotionUse(I)V

    .line 772
    iget-object v7, p0, Lcom/google/android/street/StreetView;->mTrackballGestureDetector:Lcom/google/android/street/TrackballGestureDetector;

    invoke-virtual {v7}, Lcom/google/android/street/TrackballGestureDetector;->isScroll()Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v2, :cond_3

    .line 773
    const/high16 v0, 0x40a0

    .line 774
    .local v0, TRACKBALL_SCALE:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    const/high16 v8, 0x40a0

    mul-float v5, v7, v8

    .line 775
    .local v5, yaw:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    const/high16 v8, -0x3fe0

    mul-float v3, v7, v8

    .line 777
    .local v3, tilt:F
    cmpl-float v7, v5, v10

    if-nez v7, :cond_1

    cmpl-float v7, v3, v10

    if-eqz v7, :cond_4

    .line 778
    :cond_1
    mul-float v6, v11, v5

    .line 779
    .local v6, yawStep:F
    mul-float v4, v11, v3

    .line 780
    .local v4, tiltStep:F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    const/4 v7, 0x5

    if-ge v1, v7, :cond_4

    .line 781
    invoke-direct {p0, v6, v4}, Lcom/google/android/street/StreetView;->doYawTilt(FF)V

    .line 782
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->updateRendererUserOrientation()V

    .line 783
    monitor-enter p0

    .line 785
    const-wide/16 v7, 0x1e

    :try_start_0
    invoke-virtual {p0, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    :goto_3
    :try_start_1
    monitor-exit p0

    .line 780
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0           #TRACKBALL_SCALE:F
    .end local v1           #i:I
    .end local v2           #inNormalControlMode:Z
    .end local v3           #tilt:F
    .end local v4           #tiltStep:F
    .end local v5           #yaw:F
    .end local v6           #yawStep:F
    :cond_2
    move v2, v8

    .line 768
    goto :goto_1

    .line 789
    .restart local v0       #TRACKBALL_SCALE:F
    .restart local v1       #i:I
    .restart local v2       #inNormalControlMode:Z
    .restart local v3       #tilt:F
    .restart local v4       #tiltStep:F
    .restart local v5       #yaw:F
    .restart local v6       #yawStep:F
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 792
    .end local v0           #TRACKBALL_SCALE:F
    .end local v1           #i:I
    .end local v3           #tilt:F
    .end local v4           #tiltStep:F
    .end local v5           #yaw:F
    .end local v6           #yawStep:F
    :cond_3
    iget-object v7, p0, Lcom/google/android/street/StreetView;->mTrackballGestureDetector:Lcom/google/android/street/TrackballGestureDetector;

    invoke-virtual {v7}, Lcom/google/android/street/TrackballGestureDetector;->isTap()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 793
    iget-object v7, p0, Lcom/google/android/street/StreetView;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-virtual {v7}, Lcom/google/android/street/UserOrientation;->getZoom()F

    move-result v7

    cmpl-float v7, v7, v10

    if-nez v7, :cond_5

    .line 794
    invoke-virtual {p0}, Lcom/google/android/street/StreetView;->goForward()V

    :cond_4
    :goto_4
    move v7, v9

    .line 800
    goto :goto_0

    .line 795
    :cond_5
    iget-boolean v7, p0, Lcom/google/android/street/StreetView;->mZoomButtonsEnabled:Z

    if-eqz v7, :cond_4

    .line 796
    invoke-direct {p0, v9}, Lcom/google/android/street/StreetView;->showZoomController(Z)V

    goto :goto_4

    .line 786
    .restart local v0       #TRACKBALL_SCALE:F
    .restart local v1       #i:I
    .restart local v3       #tilt:F
    .restart local v4       #tiltStep:F
    .restart local v5       #yaw:F
    .restart local v6       #yawStep:F
    :catch_0
    move-exception v7

    goto :goto_3
.end method

.method public postPanoramaInfo(ZLcom/google/android/street/PanoramaConfig;)V
    .locals 2
    .parameter "interrupted"
    .parameter "panoramaConfig"

    .prologue
    const/4 v1, 0x0

    .line 1324
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0, v1, p2}, Lcom/google/android/street/StreetView;->send(IIILjava/lang/Object;)V

    .line 1325
    return-void

    :cond_0
    move v0, v1

    .line 1324
    goto :goto_0
.end method

.method public reloadPanorama()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1372
    iput-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaLink:Lcom/google/android/street/PanoramaLink;

    .line 1373
    iput-object v0, p0, Lcom/google/android/street/StreetView;->mInitialPanoId:Ljava/lang/String;

    .line 1374
    iput-object v0, p0, Lcom/google/android/street/StreetView;->mInitialPanoMapPoint:Lcom/google/android/street/MapPoint;

    .line 1375
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    invoke-direct {p0, v0}, Lcom/google/android/street/StreetView;->setPanoramaConfig(Lcom/google/android/street/PanoramaConfig;)V

    .line 1376
    return-void
.end method

.method public reportRenderStatusProgress(I)V
    .locals 7
    .parameter "progress"

    .prologue
    .line 1276
    const-wide v1, 0x409f400000000000L

    const-wide v3, 0x3fe999999999999aL

    int-to-double v5, p1

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-int v0, v1

    .line 1278
    .local v0, combinedProgress:I
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/google/android/street/StreetView;->send(II)V

    .line 1279
    return-void
.end method

.method public reportTransitionProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 1282
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/google/android/street/StreetView;->send(II)V

    .line 1283
    return-void
.end method

.method public setDirectionsArrowParams(FF)V
    .locals 1
    .parameter "incomingYaw"
    .parameter "outgoingYaw"

    .prologue
    .line 1547
    iget-object v0, p0, Lcom/google/android/street/StreetView;->mRenderer:Lcom/google/android/street/Renderer;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/street/Renderer;->setDirectionsArrowParams(FF)V

    .line 1548
    return-void
.end method

.method public setStatusOverride(Ljava/lang/String;)V
    .locals 0
    .parameter "statusOverride"

    .prologue
    .line 1535
    iput-object p1, p0, Lcom/google/android/street/StreetView;->mStatusOverride:Ljava/lang/String;

    .line 1536
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->updateStatusText()V

    .line 1537
    return-void
.end method

.method public setTimer(Lcom/google/android/street/Timer;)V
    .locals 0
    .parameter "timer"

    .prologue
    .line 517
    return-void
.end method

.method public declared-synchronized tilt(F)V
    .locals 1
    .parameter "deltaTilt"

    .prologue
    .line 1495
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/street/StreetView;->doTilt(F)V

    .line 1496
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->updateRendererUserOrientation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1497
    monitor-exit p0

    return-void

    .line 1495
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toggleCompassMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1702
    iget-boolean v0, p0, Lcom/google/android/street/StreetView;->mUseSensorToControlView:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/street/StreetView;->mUseSensorToControlView:Z

    .line 1703
    iget-boolean v0, p0, Lcom/google/android/street/StreetView;->mUseSensorToControlView:Z

    if-eqz v0, :cond_1

    const v0, 0x7f040004

    .line 1705
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/street/StreetView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1707
    iget-boolean v0, p0, Lcom/google/android/street/StreetView;->mUseSensorToControlView:Z

    invoke-direct {p0, v0}, Lcom/google/android/street/StreetView;->enableSensor(Z)V

    .line 1710
    invoke-virtual {p0}, Lcom/google/android/street/StreetView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.android.street.StreetView"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "useSensorToControlView"

    iget-boolean v2, p0, Lcom/google/android/street/StreetView;->mUseSensorToControlView:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1716
    return-void

    :cond_0
    move v0, v2

    .line 1702
    goto :goto_0

    .line 1703
    :cond_1
    const v0, 0x7f040005

    goto :goto_1
.end method

.method public declared-synchronized yaw(F)V
    .locals 1
    .parameter "deltaYaw"

    .prologue
    .line 1490
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/street/StreetView;->doYaw(F)V

    .line 1491
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->updateRendererUserOrientation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1492
    monitor-exit p0

    return-void

    .line 1490
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized yawTilt(FF)V
    .locals 1
    .parameter "deltaYaw"
    .parameter "deltaTilt"

    .prologue
    .line 1485
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/street/StreetView;->doYawTilt(FF)V

    .line 1486
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->updateRendererUserOrientation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1487
    monitor-exit p0

    return-void

    .line 1485
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public zoom(F)V
    .locals 0
    .parameter "deltaZoom"

    .prologue
    .line 1501
    invoke-direct {p0, p1}, Lcom/google/android/street/StreetView;->doZoom(F)V

    .line 1502
    invoke-direct {p0}, Lcom/google/android/street/StreetView;->updateRendererAndButtons()V

    .line 1503
    return-void
.end method
