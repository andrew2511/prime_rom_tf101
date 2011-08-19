.class public Lcom/android/camera/Camera;
.super Lcom/android/camera/ActivityBase;
.source "Camera.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;
.implements Lcom/android/camera/Switcher$OnSwitchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/Camera$MyCameraPickerListener;,
        Lcom/android/camera/Camera$MyIndicatorWheelListener;,
        Lcom/android/camera/Camera$MyHeadUpDisplayListener;,
        Lcom/android/camera/Camera$MyOrientationEventListener;,
        Lcom/android/camera/Camera$ZoomListener;,
        Lcom/android/camera/Camera$AutoFocusCallback;,
        Lcom/android/camera/Camera$JpegPictureCallback;,
        Lcom/android/camera/Camera$RawPictureCallback;,
        Lcom/android/camera/Camera$PostViewPictureCallback;,
        Lcom/android/camera/Camera$ShutterCallback;,
        Lcom/android/camera/Camera$LocationListener;,
        Lcom/android/camera/Camera$PopupGestureListener;,
        Lcom/android/camera/Camera$MainHandler;
    }
.end annotation


# static fields
.field private static final LAST_THUMB_PATH:Ljava/lang/String;


# instance fields
.field private final mAutoFocusCallback:Lcom/android/camera/Camera$AutoFocusCallback;

.field public mAutoFocusTime:J

.field private mBackCameraId:I

.field private mCameraDevice:Landroid/hardware/Camera;

.field private mCameraId:I

.field private mCameraPicker:Lcom/android/camera/ui/CameraPicker;

.field private mCaptureStartTime:J

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCropValue:Ljava/lang/String;

.field private mDidRegister:Z

.field private mDisplayRotation:I

.field private final mErrorCallback:Lcom/android/camera/CameraErrorCallback;

.field private mFirstTimeInitialized:Z

.field private mFocusCallbackTime:J

.field private mFocusMode:Ljava/lang/String;

.field private mFocusRectangle:Lcom/android/camera/ui/FocusRectangle;

.field private mFocusStartTime:J

.field private mFocusState:I

.field private mFocusToneGenerator:Landroid/media/ToneGenerator;

.field private mFrontCameraId:I

.field private mGLRootView:Lcom/android/camera/ui/GLRootView;

.field private final mGalleryItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mGpsHasSignalView:Landroid/view/View;

.field private mGpsNoSignalView:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private mHeadUpDisplay:Lcom/android/camera/ui/CameraHeadUpDisplay;

.field private mIndicatorWheel:Lcom/android/camera/ui/IndicatorWheel;

.field private mInitialParams:Landroid/hardware/Camera$Parameters;

.field private mIsImageCaptureIntent:Z

.field public mJpegCallbackFinishTime:J

.field private mJpegImageData:[B

.field private mJpegPictureCallbackTime:J

.field private mLocation:[I

.field mLocationListeners:[Lcom/android/camera/Camera$LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mMediaProviderClient:Landroid/content/ContentProviderClient;

.field private mNotSelectableToast:Landroid/widget/Toast;

.field private mNumberOfCameras:I

.field private mOnResumeTime:J

.field private mOrientation:I

.field private mOrientationCompensation:I

.field private mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPausing:Z

.field public mPictureDisplayedToJpegCallbackTime:J

.field private mPicturesRemaining:J

.field private mPopupGestureDetector:Landroid/view/GestureDetector;

.field private final mPostViewPictureCallback:Lcom/android/camera/Camera$PostViewPictureCallback;

.field private mPostViewPictureCallbackTime:J

.field private mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

.field private mPreferences:Lcom/android/camera/ComboPreferences;

.field private mPreviewing:Z

.field private mQuickCapture:Z

.field private final mRawPictureCallback:Lcom/android/camera/Camera$RawPictureCallback;

.field private mRawPictureCallbackTime:J

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecordLocation:Z

.field private mSaveUri:Landroid/net/Uri;

.field private mSceneMode:Ljava/lang/String;

.field private mShutterButton:Lcom/android/camera/ShutterButton;

.field private final mShutterCallback:Lcom/android/camera/Camera$ShutterCallback;

.field private mShutterCallbackTime:J

.field public mShutterLag:J

.field public mShutterToPictureDisplayedTime:J

.field private mSmoothZoomSupported:Z

.field private mStartPreviewFail:Z

.field private mStatus:I

.field private mStorageHint:Lcom/android/camera/OnScreenHint;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mSwitcher:Lcom/android/camera/SwitcherSet;

.field private mTargetZoomValue:I

.field private mThumbnailButton:Lcom/android/camera/RotateImageView;

.field private mUpdateSet:I

.field private final mZoomListener:Lcom/android/camera/Camera$ZoomListener;

.field private mZoomMax:I

.field private mZoomPicker:Lcom/android/camera/ui/ZoomPicker;

.field private mZoomState:I

.field private mZoomValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/Storage;->THUMBNAILS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/image_last_thumb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/Camera;->LAST_THUMB_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;-><init>()V

    .line 132
    iput v3, p0, Lcom/android/camera/Camera;->mZoomState:I

    .line 133
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mSmoothZoomSupported:Z

    .line 144
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/Camera;->mOrientation:I

    .line 146
    iput v3, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    .line 155
    iput v4, p0, Lcom/android/camera/Camera;->mStatus:I

    .line 161
    iput-object v1, p0, Lcom/android/camera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 167
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mStartPreviewFail:Z

    .line 208
    iput v3, p0, Lcom/android/camera/Camera;->mFocusState:I

    .line 211
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mDidRegister:Z

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera;->mGalleryItems:Ljava/util/ArrayList;

    .line 215
    iput-object v1, p0, Lcom/android/camera/Camera;->mLocationManager:Landroid/location/LocationManager;

    .line 217
    new-instance v0, Lcom/android/camera/Camera$ShutterCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/Camera$ShutterCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mShutterCallback:Lcom/android/camera/Camera$ShutterCallback;

    .line 218
    new-instance v0, Lcom/android/camera/Camera$PostViewPictureCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/Camera$PostViewPictureCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mPostViewPictureCallback:Lcom/android/camera/Camera$PostViewPictureCallback;

    .line 220
    new-instance v0, Lcom/android/camera/Camera$RawPictureCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/Camera$RawPictureCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mRawPictureCallback:Lcom/android/camera/Camera$RawPictureCallback;

    .line 222
    new-instance v0, Lcom/android/camera/Camera$AutoFocusCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/Camera$AutoFocusCallback;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mAutoFocusCallback:Lcom/android/camera/Camera$AutoFocusCallback;

    .line 224
    new-instance v0, Lcom/android/camera/Camera$ZoomListener;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/Camera$ZoomListener;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mZoomListener:Lcom/android/camera/Camera$ZoomListener;

    .line 225
    new-instance v0, Lcom/android/camera/CameraErrorCallback;

    invoke-direct {v0}, Lcom/android/camera/CameraErrorCallback;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    .line 250
    new-instance v0, Lcom/android/camera/Camera$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/Camera$MainHandler;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    .line 530
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/camera/Camera;->mLocation:[I

    .line 567
    new-array v0, v2, [Lcom/android/camera/Camera$LocationListener;

    new-instance v1, Lcom/android/camera/Camera$LocationListener;

    const-string v2, "gps"

    invoke-direct {v1, p0, v2}, Lcom/android/camera/Camera$LocationListener;-><init>(Lcom/android/camera/Camera;Ljava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/camera/Camera$LocationListener;

    const-string v2, "network"

    invoke-direct {v1, p0, v2}, Lcom/android/camera/Camera$LocationListener;-><init>(Lcom/android/camera/Camera;Ljava/lang/String;)V

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/camera/Camera;->mLocationListeners:[Lcom/android/camera/Camera$LocationListener;

    .line 572
    new-instance v0, Lcom/android/camera/Camera$3;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$3;-><init>(Lcom/android/camera/Camera;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 2358
    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/camera/Camera;->isCameraIdle()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/android/camera/Camera;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/android/camera/Camera;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->onZoomValueChanged(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPausing:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/camera/Camera;)Lcom/android/camera/ui/ZoomPicker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomPicker:Lcom/android/camera/ui/ZoomPicker;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/camera/Camera;->mZoomMax:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/camera/Camera;->mTargetZoomValue:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Lcom/android/camera/Camera;->mTargetZoomValue:I

    return p1
.end method

.method static synthetic access$2000(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/camera/Camera;->mZoomState:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Lcom/android/camera/Camera;->mZoomState:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/camera/Camera;)Landroid/hardware/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/Camera;)Lcom/android/camera/ui/IndicatorWheel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorWheel:Lcom/android/camera/ui/IndicatorWheel;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/camera/Camera;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/Camera;->mLocation:[I

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/camera/Camera;->checkStorage()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateThumbnailButton()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mRecordLocation:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/camera/Camera;)Lcom/android/camera/ui/CameraHeadUpDisplay;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/CameraHeadUpDisplay;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/camera/Camera;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->showGpsOnScreenIndicator(Z)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/android/camera/Camera;->mShutterCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$3102(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-wide p1, p0, Lcom/android/camera/Camera;->mShutterCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$3200(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/android/camera/Camera;->mCaptureStartTime:J

    return-wide v0
.end method

.method static synthetic access$3300(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/camera/Camera;->clearFocusState()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/android/camera/Camera;->mPostViewPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$3402(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-wide p1, p0, Lcom/android/camera/Camera;->mPostViewPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$3500(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/android/camera/Camera;->mRawPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$3502(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-wide p1, p0, Lcom/android/camera/Camera;->mRawPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$3600(Lcom/android/camera/Camera;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->enableCameraControls(Z)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/android/camera/Camera;->mFocusCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$3702(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-wide p1, p0, Lcom/android/camera/Camera;->mFocusCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$3800(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/android/camera/Camera;->mFocusStartTime:J

    return-wide v0
.end method

.method static synthetic access$3900(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/camera/Camera;->mFocusState:I

    return v0
.end method

.method static synthetic access$3902(Lcom/android/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Lcom/android/camera/Camera;->mFocusState:I

    return p1
.end method

.method static synthetic access$4000(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/camera/Camera;->capture()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/camera/Camera;)Landroid/media/ToneGenerator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateFocusIndicator()V

    return-void
.end method

.method static synthetic access$4302(Lcom/android/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Lcom/android/camera/Camera;->mZoomValue:I

    return p1
.end method

.method static synthetic access$4400(Lcom/android/camera/Camera;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/android/camera/Camera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/camera/Camera;->mStartPreviewFail:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/CameraHardwareException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/camera/Camera;->startPreview()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/camera/Camera;->mOrientation:I

    return v0
.end method

.method static synthetic access$4902(Lcom/android/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Lcom/android/camera/Camera;->mOrientation:I

    return p1
.end method

.method static synthetic access$5000(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    return v0
.end method

.method static synthetic access$5002(Lcom/android/camera/Camera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    return p1
.end method

.method static synthetic access$5100(Lcom/android/camera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->setOrientationIndicator(I)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/camera/Camera;->switchToVideoMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/camera/Camera;->gotoGallery()V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/camera/Camera;)Lcom/android/camera/ComboPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/camera/Camera;->mCameraId:I

    return v0
.end method

.method static synthetic access$5600(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/camera/Camera;->mFrontCameraId:I

    return v0
.end method

.method static synthetic access$5700(Lcom/android/camera/Camera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/camera/Camera;->mBackCameraId:I

    return v0
.end method

.method static synthetic access$5800(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/camera/Camera;->onSharedPreferenceChanged()V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/camera/Camera;->restorePreferences()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/camera/Camera;->restartPreview()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/Camera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/android/camera/Camera;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-wide p1, p0, Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeFirstTime()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/Camera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->setCameraParametersWhenIdle(I)V

    return-void
.end method

.method private addBaseMenuItems(Landroid/view/Menu;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2185
    new-instance v0, Lcom/android/camera/Camera$6;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$6;-><init>(Lcom/android/camera/Camera;)V

    invoke-static {p1, v3, v0}, Lcom/android/camera/MenuHelper;->addSwitchModeMenuItem(Landroid/view/Menu;ZLjava/lang/Runnable;)V

    .line 2190
    const/4 v0, 0x2

    const v1, 0x7f0b0011

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/camera/Camera$7;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$7;-><init>(Lcom/android/camera/Camera;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    .line 2199
    const v1, 0x108003f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2200
    iget-object v1, p0, Lcom/android/camera/Camera;->mGalleryItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2202
    iget v0, p0, Lcom/android/camera/Camera;->mNumberOfCameras:I

    if-le v0, v3, :cond_0

    .line 2203
    const/4 v0, 0x3

    const v1, 0x7f0b0012

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/camera/Camera$8;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$8;-><init>(Lcom/android/camera/Camera;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080037

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2216
    :cond_0
    return-void
.end method

.method private addIdleHandler()V
    .locals 2

    .prologue
    .line 398
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 399
    .local v0, queue:Landroid/os/MessageQueue;
    new-instance v1, Lcom/android/camera/Camera$1;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$1;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 405
    return-void
.end method

.method private attachHeadUpDisplay()V
    .locals 3

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/CameraHeadUpDisplay;

    iget v1, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraHeadUpDisplay;->setOrientation(I)V

    .line 1137
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1138
    iget-object v0, p0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/CameraHeadUpDisplay;

    iget v1, p0, Lcom/android/camera/Camera;->mZoomValue:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraHeadUpDisplay;->setZoomIndex(I)V

    .line 1140
    :cond_0
    const v0, 0x7f0a001e

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1141
    new-instance v1, Lcom/android/camera/ui/GLRootView;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/GLRootView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/Camera;->mGLRootView:Lcom/android/camera/ui/GLRootView;

    .line 1142
    iget-object v1, p0, Lcom/android/camera/Camera;->mGLRootView:Lcom/android/camera/ui/GLRootView;

    iget-object v2, p0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/CameraHeadUpDisplay;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/GLRootView;->setContentPane(Lcom/android/camera/ui/GLView;)V

    .line 1143
    iget-object v1, p0, Lcom/android/camera/Camera;->mGLRootView:Lcom/android/camera/ui/GLRootView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1144
    return-void
.end method

.method private autoFocus()V
    .locals 2

    .prologue
    .line 1546
    invoke-direct {p0}, Lcom/android/camera/Camera;->canTakePicture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1547
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->enableCameraControls(Z)V

    .line 1548
    const-string v0, "camera"

    const-string v1, "Start autofocus."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mFocusStartTime:J

    .line 1550
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/Camera;->mFocusState:I

    .line 1551
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateFocusIndicator()V

    .line 1552
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/android/camera/Camera;->mAutoFocusCallback:Lcom/android/camera/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 1554
    :cond_0
    return-void
.end method

.method private canTakePicture()Z
    .locals 4

    .prologue
    .line 1540
    invoke-direct {p0}, Lcom/android/camera/Camera;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPreviewing:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/camera/Camera;->mPicturesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelAutoFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1558
    iget v0, p0, Lcom/android/camera/Camera;->mStatus:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/android/camera/Camera;->mFocusState:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mFocusState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mFocusState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1560
    :cond_0
    const-string v0, "camera"

    const-string v1, "Cancel autofocus."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->enableCameraControls(Z)V

    .line 1562
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 1564
    :cond_1
    iget v0, p0, Lcom/android/camera/Camera;->mFocusState:I

    if-eq v0, v3, :cond_2

    .line 1565
    invoke-direct {p0}, Lcom/android/camera/Camera;->clearFocusState()V

    .line 1567
    :cond_2
    return-void
.end method

.method private capture()V
    .locals 15

    .prologue
    .line 868
    iget-boolean v10, p0, Lcom/android/camera/Camera;->mPausing:Z

    if-nez v10, :cond_0

    iget v10, p0, Lcom/android/camera/Camera;->mStatus:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_0

    iget-object v10, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v10, :cond_1

    .line 932
    :cond_0
    :goto_0
    return-void

    .line 871
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/camera/Camera;->mCaptureStartTime:J

    .line 872
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/camera/Camera;->mPostViewPictureCallbackTime:J

    .line 873
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/camera/Camera;->enableCameraControls(Z)V

    .line 874
    const/4 v10, 0x2

    iput v10, p0, Lcom/android/camera/Camera;->mStatus:I

    .line 875
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/camera/Camera;->mJpegImageData:[B

    .line 879
    const/4 v7, 0x0

    .line 880
    .local v7, rotation:I
    iget v10, p0, Lcom/android/camera/Camera;->mOrientation:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_2

    .line 881
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v10

    iget v11, p0, Lcom/android/camera/Camera;->mCameraId:I

    aget-object v1, v10, v11

    .line 882
    .local v1, info:Landroid/hardware/Camera$CameraInfo;
    iget v10, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    .line 883
    iget v10, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v11, p0, Lcom/android/camera/Camera;->mOrientation:I

    sub-int/2addr v10, v11

    add-int/lit16 v10, v10, 0x168

    rem-int/lit16 v7, v10, 0x168

    .line 888
    .end local v1           #info:Landroid/hardware/Camera$CameraInfo;
    :cond_2
    :goto_1
    iget-object v10, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v7}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 891
    iget-object v10, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    .line 894
    iget-object v10, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 897
    iget-boolean v10, p0, Lcom/android/camera/Camera;->mRecordLocation:Z

    if-eqz v10, :cond_6

    invoke-direct {p0}, Lcom/android/camera/Camera;->getCurrentLocation()Landroid/location/Location;

    move-result-object v10

    move-object v4, v10

    .line 898
    .local v4, loc:Landroid/location/Location;
    :goto_2
    if-eqz v4, :cond_4

    .line 899
    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 900
    .local v2, lat:D
    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    .line 901
    .local v5, lon:D
    const-wide/16 v10, 0x0

    cmpl-double v10, v2, v10

    if-nez v10, :cond_3

    const-wide/16 v10, 0x0

    cmpl-double v10, v5, v10

    if-eqz v10, :cond_7

    :cond_3
    const/4 v10, 0x1

    move v0, v10

    .line 903
    .local v0, hasLatLon:Z
    :goto_3
    if-eqz v0, :cond_9

    .line 904
    const-string v10, "camera"

    const-string v11, "Set gps location"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    iget-object v10, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v2, v3}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 906
    iget-object v10, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v5, v6}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 907
    iget-object v10, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/hardware/Camera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    .line 908
    invoke-virtual {v4}, Landroid/location/Location;->hasAltitude()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 909
    iget-object v10, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/location/Location;->getAltitude()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 916
    :goto_4
    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_4

    .line 919
    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long v8, v10, v12

    .line 920
    .local v8, utcTimeSeconds:J
    iget-object v10, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v8, v9}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 927
    .end local v0           #hasLatLon:Z
    .end local v2           #lat:D
    .end local v5           #lon:D
    .end local v8           #utcTimeSeconds:J
    :cond_4
    :goto_5
    iget-object v10, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v11, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v10, v11}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 929
    iget-object v10, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v11, p0, Lcom/android/camera/Camera;->mShutterCallback:Lcom/android/camera/Camera$ShutterCallback;

    iget-object v12, p0, Lcom/android/camera/Camera;->mRawPictureCallback:Lcom/android/camera/Camera$RawPictureCallback;

    iget-object v13, p0, Lcom/android/camera/Camera;->mPostViewPictureCallback:Lcom/android/camera/Camera$PostViewPictureCallback;

    new-instance v14, Lcom/android/camera/Camera$JpegPictureCallback;

    invoke-direct {v14, p0, v4}, Lcom/android/camera/Camera$JpegPictureCallback;-><init>(Lcom/android/camera/Camera;Landroid/location/Location;)V

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 931
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/camera/Camera;->mPreviewing:Z

    goto/16 :goto_0

    .line 885
    .end local v4           #loc:Landroid/location/Location;
    .restart local v1       #info:Landroid/hardware/Camera$CameraInfo;
    :cond_5
    iget v10, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v11, p0, Lcom/android/camera/Camera;->mOrientation:I

    add-int/2addr v10, v11

    rem-int/lit16 v7, v10, 0x168

    goto/16 :goto_1

    .line 897
    .end local v1           #info:Landroid/hardware/Camera$CameraInfo;
    :cond_6
    const/4 v10, 0x0

    move-object v4, v10

    goto/16 :goto_2

    .line 901
    .restart local v2       #lat:D
    .restart local v4       #loc:Landroid/location/Location;
    .restart local v5       #lon:D
    :cond_7
    const/4 v10, 0x0

    move v0, v10

    goto :goto_3

    .line 914
    .restart local v0       #hasLatLon:Z
    :cond_8
    iget-object v10, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-wide/16 v11, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    goto :goto_4

    .line 923
    :cond_9
    const/4 v4, 0x0

    goto :goto_5
.end method

.method private changeHeadUpDisplayState()V
    .locals 3

    .prologue
    .line 1051
    iget-object v1, p0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/CameraHeadUpDisplay;

    if-nez v1, :cond_1

    .line 1064
    :cond_0
    :goto_0
    return-void

    .line 1057
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1058
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/Camera;->mPausing:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_2

    .line 1060
    iget-object v1, p0, Lcom/android/camera/Camera;->mGLRootView:Lcom/android/camera/ui/GLRootView;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/Camera;->attachHeadUpDisplay()V

    goto :goto_0

    .line 1061
    :cond_2
    iget-object v1, p0, Lcom/android/camera/Camera;->mGLRootView:Lcom/android/camera/ui/GLRootView;

    if-eqz v1, :cond_0

    .line 1062
    invoke-direct {p0}, Lcom/android/camera/Camera;->detachHeadUpDisplay()V

    goto :goto_0
.end method

.method private checkStorage()V
    .locals 4

    .prologue
    .line 1233
    invoke-static {}, Lcom/android/camera/Storage;->getAvailableSpace()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mPicturesRemaining:J

    .line 1234
    iget-wide v0, p0, Lcom/android/camera/Camera;->mPicturesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1235
    iget-wide v0, p0, Lcom/android/camera/Camera;->mPicturesRemaining:J

    const-wide/32 v2, 0x16e360

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/Camera;->mPicturesRemaining:J

    .line 1237
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateStorageHint()V

    .line 1238
    return-void
.end method

.method private clearFocusState()V
    .locals 1

    .prologue
    .line 1570
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/Camera;->mFocusState:I

    .line 1571
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateFocusIndicator()V

    .line 1572
    return-void
.end method

.method private closeCamera()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1743
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 1744
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 1745
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 1746
    iput-object v1, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    .line 1747
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mPreviewing:Z

    .line 1749
    :cond_0
    return-void
.end method

.method private collapseCameraControls()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1154
    iget-object v0, p0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/CameraHeadUpDisplay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/CameraHeadUpDisplay;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraHeadUpDisplay;->collapse()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 1160
    :goto_0
    return v0

    .line 1157
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorWheel:Lcom/android/camera/ui/IndicatorWheel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorWheel:Lcom/android/camera/ui/IndicatorWheel;

    invoke-virtual {v0}, Lcom/android/camera/ui/IndicatorWheel;->dismissSettingPopup()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 1158
    goto :goto_0

    .line 1160
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createName(J)Ljava/lang/String;
    .locals 3
    .parameter "dateTaken"

    .prologue
    .line 948
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 949
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const v2, 0x7f0b0075

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 952
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private detachHeadUpDisplay()V
    .locals 2

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/CameraHeadUpDisplay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraHeadUpDisplay;->setGpsHasSignal(Z)V

    .line 1148
    iget-object v0, p0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/CameraHeadUpDisplay;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraHeadUpDisplay;->collapse()Z

    .line 1149
    iget-object v0, p0, Lcom/android/camera/Camera;->mGLRootView:Lcom/android/camera/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLRootView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/Camera;->mGLRootView:Lcom/android/camera/ui/GLRootView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/Camera;->mGLRootView:Lcom/android/camera/ui/GLRootView;

    .line 1151
    return-void
.end method

.method private doAttach()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 1264
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPausing:Z

    if-eqz v0, :cond_0

    .line 1337
    :goto_0
    return-void

    .line 1268
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mJpegImageData:[B

    .line 1270
    iget-object v1, p0, Lcom/android/camera/Camera;->mCropValue:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 1275
    iget-object v1, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 1278
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1279
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1280
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 1282
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setResult(I)V

    .line 1283
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 1287
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 1284
    :catch_0
    move-exception v0

    move-object v0, v5

    .line 1287
    :goto_1
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v5

    :goto_2
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 1290
    :cond_1
    invoke-static {v0}, Lcom/android/camera/Exif;->getOrientation([B)I

    move-result v1

    .line 1291
    const v2, 0xc800

    invoke-static {v0, v2}, Lcom/android/camera/Util;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1292
    invoke-static {v0, v1}, Lcom/android/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1293
    new-instance v1, Landroid/content/Intent;

    const-string v2, "inline-data"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/android/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 1295
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    goto :goto_0

    .line 1302
    :cond_2
    :try_start_2
    const-string v1, "crop-temp"

    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1303
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1304
    const-string v2, "crop-temp"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/Camera;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    .line 1305
    :try_start_3
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 1306
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1307
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    .line 1317
    invoke-static {v2}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 1320
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1321
    iget-object v2, p0, Lcom/android/camera/Camera;->mCropValue:Ljava/lang/String;

    const-string v3, "circle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1322
    const-string v2, "circleCrop"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    :cond_3
    iget-object v2, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    if-eqz v2, :cond_4

    .line 1325
    const-string v2, "output"

    iget-object v3, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1330
    :goto_3
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.CROP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1332
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1333
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1335
    invoke-virtual {p0, v2, v4}, Lcom/android/camera/Camera;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1308
    :catch_1
    move-exception v0

    move-object v0, v5

    .line 1309
    :goto_4
    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->setResult(I)V

    .line 1310
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1317
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 1312
    :catch_2
    move-exception v0

    move-object v0, v5

    .line 1313
    :goto_5
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->setResult(I)V

    .line 1314
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1317
    invoke-static {v0}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object v1, v5

    :goto_6
    invoke-static {v1}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 1327
    :cond_4
    const-string v2, "return-data"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_3

    .line 1317
    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_6

    :catchall_3
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_6

    .line 1312
    :catch_3
    move-exception v0

    move-object v0, v2

    goto :goto_5

    .line 1308
    :catch_4
    move-exception v0

    move-object v0, v2

    goto :goto_4

    .line 1287
    :catchall_4
    move-exception v0

    goto/16 :goto_2

    .line 1284
    :catch_5
    move-exception v0

    move-object v0, v1

    goto/16 :goto_1
.end method

.method private doCancel()V
    .locals 2

    .prologue
    .line 1340
    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 1341
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    .line 1342
    return-void
.end method

.method private doFocus(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1670
    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseCameraControls()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1680
    :cond_0
    :goto_0
    return-void

    .line 1671
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusMode:Ljava/lang/String;

    const-string v1, "infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusMode:Ljava/lang/String;

    const-string v1, "fixed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusMode:Ljava/lang/String;

    const-string v1, "edof"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1674
    if-eqz p1, :cond_2

    .line 1675
    invoke-direct {p0}, Lcom/android/camera/Camera;->autoFocus()V

    goto :goto_0

    .line 1677
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/Camera;->cancelAutoFocus()V

    goto :goto_0
.end method

.method private doSnap()V
    .locals 3

    .prologue
    .line 1646
    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseCameraControls()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1666
    :cond_0
    :goto_0
    return-void

    .line 1648
    :cond_1
    const-string v0, "camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSnap: mFocusState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/Camera;->mFocusState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusMode:Ljava/lang/String;

    const-string v1, "infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusMode:Ljava/lang/String;

    const-string v1, "fixed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusMode:Ljava/lang/String;

    const-string v1, "edof"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/camera/Camera;->mFocusState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/Camera;->mFocusState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 1657
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/Camera;->capture()V

    goto :goto_0

    .line 1658
    :cond_3
    iget v0, p0, Lcom/android/camera/Camera;->mFocusState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 1662
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/Camera;->mFocusState:I

    goto :goto_0

    .line 1663
    :cond_4
    iget v0, p0, Lcom/android/camera/Camera;->mFocusState:I

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method private enableCameraControls(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/CameraHeadUpDisplay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/CameraHeadUpDisplay;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CameraHeadUpDisplay;->setEnabled(Z)V

    .line 1165
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorWheel:Lcom/android/camera/ui/IndicatorWheel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorWheel:Lcom/android/camera/ui/IndicatorWheel;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/IndicatorWheel;->setEnabled(Z)V

    .line 1166
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraPicker:Lcom/android/camera/ui/CameraPicker;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraPicker:Lcom/android/camera/ui/CameraPicker;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CameraPicker;->setEnabled(Z)V

    .line 1167
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomPicker:Lcom/android/camera/ui/ZoomPicker;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomPicker:Lcom/android/camera/ui/ZoomPicker;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ZoomPicker;->setEnabled(Z)V

    .line 1168
    :cond_3
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitcher:Lcom/android/camera/SwitcherSet;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitcher:Lcom/android/camera/SwitcherSet;

    invoke-virtual {v0, p1}, Lcom/android/camera/SwitcherSet;->setEnabled(Z)V

    .line 1169
    :cond_4
    return-void
.end method

.method private ensureCameraDevice()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/CameraHardwareException;
        }
    .end annotation

    .prologue
    .line 1752
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 1753
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/Camera;->mCameraId:I

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraHolder;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    .line 1754
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    .line 1756
    :cond_0
    return-void
.end method

.method private getCurrentLocation()Landroid/location/Location;
    .locals 2

    .prologue
    .line 2094
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/Camera;->mLocationListeners:[Lcom/android/camera/Camera$LocationListener;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 2095
    iget-object v1, p0, Lcom/android/camera/Camera;->mLocationListeners:[Lcom/android/camera/Camera$LocationListener;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/camera/Camera$LocationListener;->current()Landroid/location/Location;

    move-result-object v1

    .line 2096
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 2099
    :goto_1
    return-object v0

    .line 2094
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2098
    :cond_1
    const-string v0, "camera"

    const-string v1, "No location received yet."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getZoomRatios()[F
    .locals 6

    .prologue
    .line 521
    iget-object v4, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    .line 527
    .end local p0
    :goto_0
    return-object v4

    .line 522
    .restart local p0
    :cond_0
    iget-object v4, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v3

    .line 523
    .local v3, zoomRatios:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v2, v4, [F

    .line 524
    .local v2, result:[F
    const/4 v0, 0x0

    .local v0, i:I
    array-length v1, v2

    .end local p0
    .local v1, n:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 525
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x42c8

    div-float/2addr v4, v5

    aput v4, v2, v0

    .line 524
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v4, v2

    .line 527
    goto :goto_0
.end method

.method private gotoGallery()V
    .locals 0

    .prologue
    .line 2027
    invoke-static {p0}, Lcom/android/camera/MenuHelper;->gotoCameraImageGallery(Landroid/app/Activity;)V

    .line 2028
    return-void
.end method

.method private hideGpsOnScreenIndicator()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 621
    iget-object v0, p0, Lcom/android/camera/Camera;->mGpsNoSignalView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mGpsNoSignalView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mGpsHasSignalView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mGpsHasSignalView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 623
    :cond_1
    return-void
.end method

.method private hidePostCaptureAlert()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 2139
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_2

    .line 2140
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorWheel:Lcom/android/camera/ui/IndicatorWheel;

    if-nez v0, :cond_0

    .line 2141
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v3}, Lcom/android/camera/ShutterButton;->setVisibility(I)V

    .line 2145
    :goto_0
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 2146
    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_1

    aget v0, v1, v3

    .line 2147
    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2148
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2146
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 2143
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v5}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    goto :goto_0

    .line 2150
    :cond_1
    invoke-direct {p0, v5}, Lcom/android/camera/Camera;->enableCameraControls(Z)V

    .line 2153
    const v0, 0x7f0a0003

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 2154
    instance-of v0, p0, Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 2155
    check-cast p0, Landroid/widget/Button;

    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(I)V

    .line 2158
    :cond_2
    return-void

    .line 2145
    :array_0
    .array-data 0x4
        0x4t 0x0t 0xat 0x7ft
        0x7t 0x0t 0xat 0x7ft
    .end array-data
.end method

.method private initGpsOnScreenIndicator()V
    .locals 1

    .prologue
    .line 606
    const v0, 0x7f0a0023

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mGpsNoSignalView:Landroid/view/View;

    .line 607
    const v0, 0x7f0a0024

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mGpsHasSignalView:Landroid/view/View;

    .line 608
    return-void
.end method

.method private initThumbnailButton()V
    .locals 2

    .prologue
    .line 408
    const v0, 0x7f0a0028

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mThumbnailButton:Lcom/android/camera/RotateImageView;

    .line 410
    iget-object v0, p0, Lcom/android/camera/Camera;->mThumbnailButton:Lcom/android/camera/RotateImageView;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/android/camera/Camera;->mThumbnailButton:Lcom/android/camera/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/android/camera/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    iget-object v0, p0, Lcom/android/camera/Camera;->mThumbnailButton:Lcom/android/camera/RotateImageView;

    sget-object v1, Lcom/android/camera/Camera;->LAST_THUMB_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/RotateImageView;->loadData(Ljava/lang/String;)Z

    .line 413
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateThumbnailButton()V

    .line 415
    :cond_0
    return-void
.end method

.method private initializeCameraPicker()V
    .locals 4

    .prologue
    .line 591
    iget v1, p0, Lcom/android/camera/Camera;->mNumberOfCameras:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    const v1, 0x7f0a0016

    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/CameraPicker;

    iput-object v1, p0, Lcom/android/camera/Camera;->mCameraPicker:Lcom/android/camera/ui/CameraPicker;

    .line 594
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraPicker:Lcom/android/camera/ui/CameraPicker;

    if-eqz v1, :cond_0

    .line 595
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraPicker:Lcom/android/camera/ui/CameraPicker;

    const v2, 0x7f02004a

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/CameraPicker;->setImageResource(I)V

    .line 596
    iget-object v1, p0, Lcom/android/camera/Camera;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_id_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 598
    .local v0, pref:Lcom/android/camera/ListPreference;
    if-eqz v0, :cond_0

    .line 599
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraPicker:Lcom/android/camera/ui/CameraPicker;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/CameraPicker;->initialize(Lcom/android/camera/ListPreference;)V

    .line 600
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraPicker:Lcom/android/camera/ui/CameraPicker;

    new-instance v2, Lcom/android/camera/Camera$MyCameraPickerListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/camera/Camera$MyCameraPickerListener;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/CameraPicker;->setListener(Lcom/android/camera/ui/CameraPicker$Listener;)V

    goto :goto_0
.end method

.method private initializeFirstTime()V
    .locals 3

    .prologue
    .line 349
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    .line 395
    :goto_0
    return-void

    .line 353
    :cond_0
    new-instance v0, Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-direct {v0, p0, p0}, Lcom/android/camera/Camera$MyOrientationEventListener;-><init>(Lcom/android/camera/Camera;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    .line 354
    iget-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/Camera$MyOrientationEventListener;->enable()V

    .line 357
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/camera/Camera;->mLocationManager:Landroid/location/LocationManager;

    .line 359
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mRecordLocation:Z

    .line 361
    invoke-direct {p0}, Lcom/android/camera/Camera;->initGpsOnScreenIndicator()V

    .line 362
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mRecordLocation:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/Camera;->startReceivingLocationUpdates()V

    .line 364
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->keepMediaProviderInstance()V

    .line 365
    invoke-direct {p0}, Lcom/android/camera/Camera;->checkStorage()V

    .line 368
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    .line 369
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_2

    .line 370
    const v0, 0x7f0a000d

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    invoke-direct {p0}, Lcom/android/camera/Camera;->initThumbnailButton()V

    .line 375
    :cond_2
    const v0, 0x7f0a0006

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ShutterButton;

    iput-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 376
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 377
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setVisibility(I)V

    .line 379
    const v0, 0x7f0a0021

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FocusRectangle;

    iput-object v0, p0, Lcom/android/camera/Camera;->mFocusRectangle:Lcom/android/camera/ui/FocusRectangle;

    .line 380
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateFocusIndicator()V

    .line 382
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeScreenBrightness()V

    .line 383
    invoke-direct {p0}, Lcom/android/camera/Camera;->installIntentFilter()V

    .line 384
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeFocusTone()V

    .line 385
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeZoom()V

    .line 387
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorWheel:Lcom/android/camera/ui/IndicatorWheel;

    if-nez v0, :cond_3

    .line 388
    new-instance v0, Lcom/android/camera/ui/CameraHeadUpDisplay;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/CameraHeadUpDisplay;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/CameraHeadUpDisplay;

    .line 389
    iget-object v0, p0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/CameraHeadUpDisplay;

    new-instance v1, Lcom/android/camera/Camera$MyHeadUpDisplayListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/Camera$MyHeadUpDisplayListener;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraHeadUpDisplay;->setListener(Lcom/android/camera/ui/HeadUpDisplay$Listener;)V

    .line 390
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeHeadUpDisplay()V

    .line 392
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    .line 393
    invoke-direct {p0}, Lcom/android/camera/Camera;->changeHeadUpDisplayState()V

    .line 394
    invoke-direct {p0}, Lcom/android/camera/Camera;->addIdleHandler()V

    goto/16 :goto_0
.end method

.method private initializeFocusTone()V
    .locals 3

    .prologue
    .line 1409
    :try_start_0
    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v1, 0x1

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1415
    :goto_0
    return-void

    .line 1411
    :catch_0
    move-exception v0

    .line 1412
    const-string v1, "camera"

    const-string v2, "Exception caught while creating tone generator: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1413
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_0
.end method

.method private initializeHeadUpDisplay()V
    .locals 4

    .prologue
    .line 1116
    iget-object v1, p0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/CameraHeadUpDisplay;

    if-nez v1, :cond_0

    .line 1133
    :goto_0
    return-void

    .line 1117
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->loadCameraPreferences()V

    .line 1120
    const/4 v0, 0x0

    .line 1121
    .local v0, zoomRatios:[F
    iget-object v1, p0, Lcom/android/camera/Camera;->mZoomPicker:Lcom/android/camera/ui/ZoomPicker;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/camera/Camera;->getZoomRatios()[F

    move-result-object v0

    .line 1122
    :cond_1
    iget-object v1, p0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/CameraHeadUpDisplay;

    iget-object v2, p0, Lcom/android/camera/Camera;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget v3, p0, Lcom/android/camera/Camera;->mOrientationCompensation:I

    invoke-virtual {v1, p0, v2, v0, v3}, Lcom/android/camera/ui/CameraHeadUpDisplay;->initialize(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;[FI)V

    .line 1124
    iget-object v1, p0, Lcom/android/camera/Camera;->mZoomPicker:Lcom/android/camera/ui/ZoomPicker;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1125
    iget-object v1, p0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/CameraHeadUpDisplay;

    new-instance v2, Lcom/android/camera/Camera$5;

    invoke-direct {v2, p0}, Lcom/android/camera/Camera$5;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/CameraHeadUpDisplay;->setZoomListener(Lcom/android/camera/ui/ZoomControllerListener;)V

    .line 1132
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateSceneModeUI()V

    goto :goto_0
.end method

.method private initializeIndicatorWheel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1100
    const v0, 0x7f0a0013

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/IndicatorWheel;

    iput-object v0, p0, Lcom/android/camera/Camera;->mIndicatorWheel:Lcom/android/camera/ui/IndicatorWheel;

    .line 1101
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorWheel:Lcom/android/camera/ui/IndicatorWheel;

    if-nez v0, :cond_0

    .line 1113
    :goto_0
    return-void

    .line 1102
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->loadCameraPreferences()V

    .line 1104
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "pref_camera_flashmode_key"

    aput-object v2, v0, v1

    const-string v1, "pref_camera_whitebalance_key"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "pref_camera_coloreffect_key"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "pref_camera_scenemode_key"

    aput-object v2, v0, v1

    .line 1108
    iget-object v1, p0, Lcom/android/camera/Camera;->mIndicatorWheel:Lcom/android/camera/ui/IndicatorWheel;

    iget-object v2, p0, Lcom/android/camera/Camera;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v1, p0, v2, v0, v3}, Lcom/android/camera/ui/IndicatorWheel;->initialize(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;[Ljava/lang/String;Z)V

    .line 1109
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorWheel:Lcom/android/camera/ui/IndicatorWheel;

    new-instance v1, Lcom/android/camera/Camera$MyIndicatorWheelListener;

    invoke-direct {v1, p0, v4}, Lcom/android/camera/Camera$MyIndicatorWheelListener;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/IndicatorWheel;->setListener(Lcom/android/camera/ui/IndicatorWheel$Listener;)V

    .line 1110
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/camera/Camera$PopupGestureListener;

    invoke-direct {v1, p0, v4}, Lcom/android/camera/Camera$PopupGestureListener;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/Camera$1;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mPopupGestureDetector:Landroid/view/GestureDetector;

    .line 1112
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateSceneModeUI()V

    goto :goto_0
.end method

.method private initializeScreenBrightness()V
    .locals 4

    .prologue
    .line 1418
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1420
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1424
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1425
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1426
    const v2, 0x3f333333

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1427
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1429
    :cond_0
    return-void
.end method

.method private initializeSecondTime()V
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/Camera$MyOrientationEventListener;->enable()V

    .line 442
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mRecordLocation:Z

    .line 444
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mRecordLocation:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/Camera;->startReceivingLocationUpdates()V

    .line 446
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->installIntentFilter()V

    .line 447
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeFocusTone()V

    .line 448
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeZoom()V

    .line 449
    invoke-direct {p0}, Lcom/android/camera/Camera;->changeHeadUpDisplayState()V

    .line 451
    invoke-direct {p0}, Lcom/android/camera/Camera;->keepMediaProviderInstance()V

    .line 452
    invoke-direct {p0}, Lcom/android/camera/Camera;->checkStorage()V

    .line 454
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_1

    .line 455
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateThumbnailButton()V

    .line 457
    :cond_1
    return-void
.end method

.method private initializeZoom()V
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 496
    :goto_0
    return-void

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mZoomMax:I

    .line 463
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isSmoothZoomSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mSmoothZoomSupported:Z

    .line 464
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomPicker:Lcom/android/camera/ui/ZoomPicker;

    if-eqz v0, :cond_1

    .line 465
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomPicker:Lcom/android/camera/ui/ZoomPicker;

    invoke-direct {p0}, Lcom/android/camera/Camera;->getZoomRatios()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomPicker;->setZoomRatios([F)V

    .line 466
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomPicker:Lcom/android/camera/ui/ZoomPicker;

    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomPicker;->setZoomIndex(I)V

    .line 467
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomPicker:Lcom/android/camera/ui/ZoomPicker;

    iget-boolean v1, p0, Lcom/android/camera/Camera;->mSmoothZoomSupported:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomPicker;->setSmoothZoomSupported(Z)V

    .line 468
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomPicker:Lcom/android/camera/ui/ZoomPicker;

    new-instance v1, Lcom/android/camera/Camera$2;

    invoke-direct {v1, p0}, Lcom/android/camera/Camera$2;-><init>(Lcom/android/camera/Camera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomPicker;->setOnZoomChangeListener(Lcom/android/camera/ui/ZoomPicker$OnZoomChangedListener;)V

    .line 495
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/android/camera/Camera;->mZoomListener:Lcom/android/camera/Camera$ZoomListener;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    goto :goto_0
.end method

.method private installIntentFilter()V
    .locals 2

    .prologue
    .line 1396
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1398
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1399
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1400
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1401
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1402
    iget-object v1, p0, Lcom/android/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1403
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mDidRegister:Z

    .line 1404
    return-void
.end method

.method private isCameraIdle()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2103
    iget v0, p0, Lcom/android/camera/Camera;->mStatus:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mFocusState:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isImageCaptureIntent()Z
    .locals 2

    .prologue
    .line 2107
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2108
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1823
    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private keepMediaProviderInstance()V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/camera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    .line 343
    :cond_0
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 2281
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2282
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2283
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2284
    return-void
.end method

.method private loadCameraPreferences()V
    .locals 4

    .prologue
    .line 1094
    new-instance v0, Lcom/android/camera/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/Camera;->mInitialParams:Landroid/hardware/Camera$Parameters;

    iget v2, p0, Lcom/android/camera/Camera;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/camera/CameraSettings;-><init>(Landroid/app/Activity;Landroid/hardware/Camera$Parameters;I[Landroid/hardware/Camera$CameraInfo;)V

    .line 1096
    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraSettings;->getPreferenceGroup(I)Lcom/android/camera/PreferenceGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 1097
    return-void
.end method

.method private onSharedPreferenceChanged()V
    .locals 4

    .prologue
    .line 2236
    iget-boolean v2, p0, Lcom/android/camera/Camera;->mPausing:Z

    if-eqz v2, :cond_0

    .line 2267
    :goto_0
    return-void

    .line 2240
    :cond_0
    iget-object v2, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/RecordLocationPreference;->get(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v1

    .line 2243
    .local v1, recordLocation:Z
    iget-boolean v2, p0, Lcom/android/camera/Camera;->mRecordLocation:Z

    if-eq v2, v1, :cond_1

    .line 2244
    iput-boolean v1, p0, Lcom/android/camera/Camera;->mRecordLocation:Z

    .line 2245
    iget-boolean v2, p0, Lcom/android/camera/Camera;->mRecordLocation:Z

    if-eqz v2, :cond_2

    .line 2246
    invoke-direct {p0}, Lcom/android/camera/Camera;->startReceivingLocationUpdates()V

    .line 2251
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 2252
    .local v0, cameraId:I
    iget v2, p0, Lcom/android/camera/Camera;->mCameraId:I

    if-eq v2, v0, :cond_4

    .line 2256
    iget-boolean v2, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v2, :cond_3

    .line 2258
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/camera/MenuHelper;->gotoCameraMode(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 2263
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    goto :goto_0

    .line 2248
    .end local v0           #cameraId:I
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/Camera;->stopReceivingLocationUpdates()V

    goto :goto_1

    .line 2260
    .restart local v0       #cameraId:I
    :cond_3
    invoke-static {p0}, Lcom/android/camera/MenuHelper;->gotoCameraMode(Landroid/app/Activity;)V

    goto :goto_2

    .line 2265
    :cond_4
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->setCameraParametersWhenIdle(I)V

    goto :goto_0
.end method

.method private onZoomValueChanged(I)V
    .locals 3
    .parameter "index"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 500
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPausing:Z

    if-eqz v0, :cond_1

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mSmoothZoomSupported:Z

    if-eqz v0, :cond_3

    .line 503
    iget v0, p0, Lcom/android/camera/Camera;->mTargetZoomValue:I

    if-eq v0, p1, :cond_2

    iget v0, p0, Lcom/android/camera/Camera;->mZoomState:I

    if-eqz v0, :cond_2

    .line 504
    iput p1, p0, Lcom/android/camera/Camera;->mTargetZoomValue:I

    .line 505
    iget v0, p0, Lcom/android/camera/Camera;->mZoomState:I

    if-ne v0, v1, :cond_0

    .line 506
    iput v2, p0, Lcom/android/camera/Camera;->mZoomState:I

    .line 507
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopSmoothZoom()V

    goto :goto_0

    .line 509
    :cond_2
    iget v0, p0, Lcom/android/camera/Camera;->mZoomState:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/Camera;->mZoomValue:I

    if-eq v0, p1, :cond_0

    .line 510
    iput p1, p0, Lcom/android/camera/Camera;->mTargetZoomValue:I

    .line 511
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->startSmoothZoom(I)V

    .line 512
    iput v1, p0, Lcom/android/camera/Camera;->mZoomState:I

    goto :goto_0

    .line 515
    :cond_3
    iput p1, p0, Lcom/android/camera/Camera;->mZoomValue:I

    .line 516
    invoke-direct {p0, v2}, Lcom/android/camera/Camera;->setCameraParametersWhenIdle(I)V

    goto :goto_0
.end method

.method private overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1068
    iget-object v0, p0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/CameraHeadUpDisplay;

    if-eqz v0, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/CameraHeadUpDisplay;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "pref_camera_flashmode_key"

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    const-string v2, "pref_camera_whitebalance_key"

    aput-object v2, v1, v5

    aput-object p2, v1, v6

    const-string v2, "pref_camera_focusmode_key"

    aput-object v2, v1, v7

    const/4 v2, 0x5

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraHeadUpDisplay;->overrideSettings([Ljava/lang/String;)V

    .line 1074
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorWheel:Lcom/android/camera/ui/IndicatorWheel;

    if-eqz v0, :cond_1

    .line 1075
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorWheel:Lcom/android/camera/ui/IndicatorWheel;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "pref_camera_flashmode_key"

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    const-string v2, "pref_camera_whitebalance_key"

    aput-object v2, v1, v5

    aput-object p2, v1, v6

    const-string v2, "pref_camera_focusmode_key"

    aput-object v2, v1, v7

    const/4 v2, 0x5

    aput-object p3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/IndicatorWheel;->overrideSettings([Ljava/lang/String;)V

    .line 1080
    :cond_1
    return-void
.end method

.method private resetExposureCompensation()V
    .locals 5

    .prologue
    .line 320
    iget-object v2, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v3, "pref_camera_exposure_key"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, value:Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 323
    iget-object v2, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v2}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 324
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_camera_exposure_key"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 325
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 326
    iget-object v2, p0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/CameraHeadUpDisplay;

    if-eqz v2, :cond_0

    .line 327
    iget-object v2, p0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/CameraHeadUpDisplay;

    invoke-virtual {v2}, Lcom/android/camera/ui/CameraHeadUpDisplay;->reloadPreferences()V

    .line 329
    :cond_0
    iget-object v2, p0, Lcom/android/camera/Camera;->mIndicatorWheel:Lcom/android/camera/ui/IndicatorWheel;

    if-eqz v2, :cond_1

    .line 330
    iget-object v2, p0, Lcom/android/camera/Camera;->mIndicatorWheel:Lcom/android/camera/ui/IndicatorWheel;

    invoke-virtual {v2}, Lcom/android/camera/ui/IndicatorWheel;->reloadPreferences()V

    .line 333
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 2276
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2277
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 2278
    return-void
.end method

.method private restartPreview()Z
    .locals 2

    .prologue
    .line 1767
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->startPreview()V
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1772
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 1768
    :catch_0
    move-exception v0

    .line 1769
    .local v0, e:Lcom/android/camera/CameraHardwareException;
    invoke-direct {p0}, Lcom/android/camera/Camera;->showCameraErrorAndFinish()V

    .line 1770
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private restorePreferences()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2315
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2316
    iput v1, p0, Lcom/android/camera/Camera;->mZoomValue:I

    .line 2317
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraParametersWhenIdle(I)V

    .line 2318
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomPicker:Lcom/android/camera/ui/ZoomPicker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomPicker:Lcom/android/camera/ui/ZoomPicker;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomPicker;->setZoomIndex(I)V

    .line 2321
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/CameraHeadUpDisplay;

    if-eqz v0, :cond_1

    .line 2322
    iget-object v0, p0, Lcom/android/camera/Camera;->mHeadUpDisplay:Lcom/android/camera/ui/CameraHeadUpDisplay;

    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraHeadUpDisplay;->restorePreferences(Landroid/hardware/Camera$Parameters;)V

    .line 2325
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorWheel:Lcom/android/camera/ui/IndicatorWheel;

    if-eqz v0, :cond_2

    .line 2326
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorWheel:Lcom/android/camera/ui/IndicatorWheel;

    invoke-virtual {v0}, Lcom/android/camera/ui/IndicatorWheel;->dismissSettingPopup()Z

    .line 2327
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {p0, v0, v1}, Lcom/android/camera/CameraSettings;->restorePreferences(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;)V

    .line 2329
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeIndicatorWheel()V

    .line 2330
    invoke-direct {p0}, Lcom/android/camera/Camera;->onSharedPreferenceChanged()V

    .line 2332
    :cond_2
    return-void
.end method

.method public static roundOrientation(I)I
    .locals 1
    .parameter "orientation"

    .prologue
    .line 1172
    add-int/lit8 v0, p0, 0x2d

    div-int/lit8 v0, v0, 0x5a

    mul-int/lit8 v0, v0, 0x5a

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method private setCameraParameters(I)V
    .locals 2
    .parameter "updateSet"

    .prologue
    .line 1988
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1990
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 1991
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateCameraParametersInitialize()V

    .line 1994
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 1995
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateCameraParametersZoom()V

    .line 1998
    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    .line 1999
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateCameraParametersPreference()V

    .line 2002
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2003
    return-void
.end method

.method private setCameraParametersWhenIdle(I)V
    .locals 4
    .parameter "additionalUpdateSet"

    .prologue
    const/4 v3, 0x5

    const/4 v1, 0x0

    .line 2008
    iget v0, p0, Lcom/android/camera/Camera;->mUpdateSet:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/Camera;->mUpdateSet:I

    .line 2009
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 2012
    iput v1, p0, Lcom/android/camera/Camera;->mUpdateSet:I

    .line 2024
    :cond_0
    :goto_0
    return-void

    .line 2014
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2015
    iget v0, p0, Lcom/android/camera/Camera;->mUpdateSet:I

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraParameters(I)V

    .line 2016
    invoke-direct {p0}, Lcom/android/camera/Camera;->updateSceneModeUI()V

    .line 2017
    iput v1, p0, Lcom/android/camera/Camera;->mUpdateSet:I

    goto :goto_0

    .line 2019
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2020
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private setOrientationIndicator(I)V
    .locals 1
    .parameter

    .prologue
    .line 1205
    const v0, 0x7f0a0028

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/RotateImageView;

    .line 1207
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/camera/RotateImageView;->setDegree(I)V

    .line 1209
    :cond_0
    const v0, 0x7f0a0010

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/RotateImageView;

    .line 1210
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/camera/RotateImageView;->setDegree(I)V

    .line 1211
    :cond_1
    const v0, 0x7f0a000e

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/camera/RotateImageView;

    .line 1212
    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/camera/RotateImageView;->setDegree(I)V

    .line 1213
    :cond_2
    return-void
.end method

.method private setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter

    .prologue
    .line 1777
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1782
    return-void

    .line 1778
    :catch_0
    move-exception v0

    .line 1779
    invoke-direct {p0}, Lcom/android/camera/Camera;->closeCamera()V

    .line 1780
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "setPreviewDisplay failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setupCaptureParams()V
    .locals 2

    .prologue
    .line 2112
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 2113
    if-eqz v1, :cond_0

    .line 2114
    const-string v0, "output"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/camera/Camera;->mSaveUri:Landroid/net/Uri;

    .line 2115
    const-string v0, "crop"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mCropValue:Ljava/lang/String;

    .line 2117
    :cond_0
    return-void
.end method

.method private showCameraErrorAndFinish()V
    .locals 3

    .prologue
    .line 1759
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1760
    const/high16 v1, 0x7f0b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b0001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/android/camera/Util;->showFatalErrorAndFinish(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1763
    return-void
.end method

.method private showGpsOnScreenIndicator(Z)V
    .locals 3
    .parameter "hasSignal"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 611
    if-eqz p1, :cond_2

    .line 612
    iget-object v0, p0, Lcom/android/camera/Camera;->mGpsNoSignalView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mGpsNoSignalView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mGpsHasSignalView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mGpsHasSignalView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 618
    :cond_1
    :goto_0
    return-void

    .line 615
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mGpsNoSignalView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/Camera;->mGpsNoSignalView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 616
    :cond_3
    iget-object v0, p0, Lcom/android/camera/Camera;->mGpsHasSignalView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mGpsHasSignalView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showPostCaptureAlert()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2120
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_2

    .line 2121
    iget-object v0, p0, Lcom/android/camera/Camera;->mIndicatorWheel:Lcom/android/camera/ui/IndicatorWheel;

    if-nez v0, :cond_0

    .line 2122
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setVisibility(I)V

    .line 2126
    :goto_0
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 2127
    array-length v2, v1

    move v3, v4

    :goto_1
    if-ge v3, v2, :cond_1

    aget v0, v1, v3

    .line 2128
    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2129
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2127
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 2124
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v4}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    goto :goto_0

    .line 2133
    :cond_1
    const v0, 0x7f0a0003

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 2134
    instance-of v0, p0, Landroid/widget/Button;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/widget/Button;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2136
    :cond_2
    return-void

    .line 2126
    nop

    :array_0
    .array-data 0x4
        0x4t 0x0t 0xat 0x7ft
        0x7t 0x0t 0xat 0x7ft
    .end array-data
.end method

.method private startPreview()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/CameraHardwareException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1785
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPausing:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1810
    :cond_0
    :goto_0
    return-void

    .line 1787
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->ensureCameraDevice()V

    .line 1788
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/android/camera/Camera;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1792
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPreviewing:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/Camera;->stopPreview()V

    .line 1794
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 1795
    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    .line 1796
    iget v0, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    iget v1, p0, Lcom/android/camera/Camera;->mCameraId:I

    iget-object v2, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->setCameraDisplayOrientation(IILandroid/hardware/Camera;)V

    .line 1797
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->setCameraParameters(I)V

    .line 1801
    :try_start_0
    const-string v0, "camera"

    const-string v1, "startPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1807
    iput-boolean v3, p0, Lcom/android/camera/Camera;->mPreviewing:Z

    .line 1808
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/Camera;->mZoomState:I

    .line 1809
    iput v3, p0, Lcom/android/camera/Camera;->mStatus:I

    goto :goto_0

    .line 1803
    :catch_0
    move-exception v0

    .line 1804
    invoke-direct {p0}, Lcom/android/camera/Camera;->closeCamera()V

    .line 1805
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "startPreview failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private startReceivingLocationUpdates()V
    .locals 7

    .prologue
    .line 2050
    iget-object v0, p0, Lcom/android/camera/Camera;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 2052
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/camera/Camera;->mLocationListeners:[Lcom/android/camera/Camera$LocationListener;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2063
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/camera/Camera;->mLocationListeners:[Lcom/android/camera/Camera$LocationListener;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 2068
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->showGpsOnScreenIndicator(Z)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    .line 2074
    :goto_1
    const-string v0, "camera"

    const-string v1, "startReceivingLocationUpdates"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    :cond_0
    return-void

    .line 2057
    :catch_0
    move-exception v0

    .line 2058
    const-string v1, "camera"

    const-string v2, "fail to request location update, ignore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2059
    :catch_1
    move-exception v0

    .line 2060
    const-string v1, "camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "provider does not exist "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2069
    :catch_2
    move-exception v0

    .line 2070
    const-string v1, "camera"

    const-string v2, "fail to request location update, ignore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2071
    :catch_3
    move-exception v0

    .line 2072
    const-string v1, "camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "provider does not exist "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private stopPreview()V
    .locals 2

    .prologue
    .line 1813
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPreviewing:Z

    if-eqz v0, :cond_0

    .line 1814
    const-string v0, "camera"

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 1817
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mPreviewing:Z

    .line 1819
    invoke-direct {p0}, Lcom/android/camera/Camera;->clearFocusState()V

    .line 1820
    return-void
.end method

.method private stopReceivingLocationUpdates()V
    .locals 4

    .prologue
    .line 2079
    iget-object v0, p0, Lcom/android/camera/Camera;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    .line 2080
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/Camera;->mLocationListeners:[Lcom/android/camera/Camera$LocationListener;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 2082
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/Camera;->mLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/android/camera/Camera;->mLocationListeners:[Lcom/android/camera/Camera$LocationListener;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2080
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2083
    :catch_0
    move-exception v1

    .line 2084
    const-string v2, "camera"

    const-string v3, "fail to remove location listners, ignore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2087
    :cond_0
    const-string v0, "camera"

    const-string v1, "stopReceivingLocationUpdates"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->hideGpsOnScreenIndicator()V

    .line 2090
    return-void
.end method

.method private switchToVideoMode()Z
    .locals 2

    .prologue
    .line 2219
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/Camera;->isCameraIdle()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 2223
    :goto_0
    return v0

    .line 2220
    :cond_1
    invoke-static {p0}, Lcom/android/camera/MenuHelper;->gotoVideoMode(Landroid/app/Activity;)V

    .line 2221
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2222
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    .line 2223
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateCameraParametersInitialize()V
    .locals 4

    .prologue
    .line 1829
    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v0

    .line 1830
    .local v0, frameRates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 1831
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1832
    .local v1, max:Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 1835
    .end local v1           #max:Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private updateCameraParametersPreference()V
    .locals 6

    .prologue
    .line 1846
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_picturesize_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1848
    if-nez v0, :cond_6

    .line 1849
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {p0, v0}, Lcom/android/camera/CameraSettings;->initialCameraPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 1857
    :goto_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 1858
    const v0, 0x7f0a001d

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/PreviewFrameLayout;

    .line 1860
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    int-to-double v2, v2

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/PreviewFrameLayout;->setAspectRatio(D)V

    .line 1864
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    .line 1865
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    int-to-double v2, v2

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    int-to-double v4, v1

    div-double v1, v2, v4

    invoke-static {p0, v0, v1, v2}, Lcom/android/camera/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 1867
    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 1868
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1869
    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1873
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1874
    iget-object v1, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1876
    :cond_0
    const-string v1, "camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preview size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_scenemode_key"

    const v2, 0x7f0b005e

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    .line 1883
    iget-object v0, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1884
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1885
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 1886
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1891
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1901
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_jpegquality_key"

    const v2, 0x7f0b003a

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1906
    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, p0, Lcom/android/camera/Camera;->mCameraId:I

    invoke-static {v2, v0}, Lcom/android/camera/JpegEncodingQualityMappings;->getQualityNumber(ILjava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 1913
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_coloreffect_key"

    const v2, 0x7f0b0052

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1916
    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1917
    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 1921
    :cond_2
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_exposure_key"

    const v2, 0x7f0b0072

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1925
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1926
    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v2

    .line 1927
    iget-object v3, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v3

    .line 1928
    if-lt v1, v3, :cond_8

    if-gt v1, v2, :cond_8

    .line 1929
    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1937
    :goto_2
    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1939
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_flashmode_key"

    const v2, 0x7f0b0044

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1942
    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 1943
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1944
    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1954
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_whitebalance_key"

    const v2, 0x7f0b004b

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1957
    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1959
    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 1968
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_focusmode_key"

    const v2, 0x7f0b003f

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mFocusMode:Ljava/lang/String;

    .line 1971
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusMode:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Camera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1972
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/Camera;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1982
    :cond_5
    :goto_5
    return-void

    .line 1851
    :cond_6
    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v1

    .line 1852
    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v0, v1, v2}, Lcom/android/camera/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    goto/16 :goto_0

    .line 1894
    :cond_7
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    .line 1895
    iget-object v0, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1896
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    goto/16 :goto_1

    .line 1931
    :cond_8
    :try_start_1
    const-string v1, "camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid exposure range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 1933
    :catch_0
    move-exception v1

    .line 1934
    const-string v1, "camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid exposure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1946
    :cond_9
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 1947
    if-nez v0, :cond_3

    .line 1948
    const v0, 0x7f0b0045

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    goto/16 :goto_3

    .line 1961
    :cond_a
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    .line 1962
    if-nez v0, :cond_4

    .line 1963
    const-string v0, "auto"

    goto/16 :goto_4

    .line 1974
    :cond_b
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mFocusMode:Ljava/lang/String;

    .line 1975
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusMode:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 1976
    const-string v0, "auto"

    iput-object v0, p0, Lcom/android/camera/Camera;->mFocusMode:Ljava/lang/String;

    goto/16 :goto_5

    .line 1980
    :cond_c
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mFocusMode:Ljava/lang/String;

    goto/16 :goto_5
.end method

.method private updateCameraParametersZoom()V
    .locals 2

    .prologue
    .line 1839
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1840
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/Camera;->mZoomValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 1842
    :cond_0
    return-void
.end method

.method private updateFocusIndicator()V
    .locals 2

    .prologue
    .line 1575
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusRectangle:Lcom/android/camera/ui/FocusRectangle;

    if-nez v0, :cond_0

    .line 1586
    :goto_0
    return-void

    .line 1577
    :cond_0
    iget v0, p0, Lcom/android/camera/Camera;->mFocusState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/Camera;->mFocusState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1578
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusRectangle:Lcom/android/camera/ui/FocusRectangle;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusRectangle;->showStart()V

    goto :goto_0

    .line 1579
    :cond_2
    iget v0, p0, Lcom/android/camera/Camera;->mFocusState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1580
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusRectangle:Lcom/android/camera/ui/FocusRectangle;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusRectangle;->showSuccess()V

    goto :goto_0

    .line 1581
    :cond_3
    iget v0, p0, Lcom/android/camera/Camera;->mFocusState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 1582
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusRectangle:Lcom/android/camera/ui/FocusRectangle;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusRectangle;->showFail()V

    goto :goto_0

    .line 1584
    :cond_4
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusRectangle:Lcom/android/camera/ui/FocusRectangle;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusRectangle;->clear()V

    goto :goto_0
.end method

.method private updateSceneModeUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1085
    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/camera/Camera;->mSceneMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/Camera;->overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    :goto_0
    return-void

    .line 1089
    :cond_0
    invoke-direct {p0, v2, v2, v2}, Lcom/android/camera/Camera;->overrideCameraSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateStorageHint()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1369
    .line 1371
    iget-wide v0, p0, Lcom/android/camera/Camera;->mPicturesRemaining:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1372
    const v0, 0x7f0b0007

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1381
    :goto_0
    if-eqz v0, :cond_5

    .line 1382
    iget-object v1, p0, Lcom/android/camera/Camera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-nez v1, :cond_4

    .line 1383
    invoke-static {p0, v0}, Lcom/android/camera/OnScreenHint;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/android/camera/OnScreenHint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    .line 1387
    :goto_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v0}, Lcom/android/camera/OnScreenHint;->show()V

    .line 1392
    :cond_0
    :goto_2
    return-void

    .line 1373
    :cond_1
    iget-wide v0, p0, Lcom/android/camera/Camera;->mPicturesRemaining:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 1374
    const v0, 0x7f0b0009

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1375
    :cond_2
    iget-wide v0, p0, Lcom/android/camera/Camera;->mPicturesRemaining:J

    const-wide/16 v2, -0x3

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 1376
    const v0, 0x7f0b000a

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1377
    :cond_3
    iget-wide v0, p0, Lcom/android/camera/Camera;->mPicturesRemaining:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_6

    .line 1378
    const v0, 0x7f0b0008

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1385
    :cond_4
    iget-object v1, p0, Lcom/android/camera/Camera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v1, v0}, Lcom/android/camera/OnScreenHint;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1388
    :cond_5
    iget-object v0, p0, Lcom/android/camera/Camera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-eqz v0, :cond_0

    .line 1389
    iget-object v0, p0, Lcom/android/camera/Camera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v0}, Lcom/android/camera/OnScreenHint;->cancel()V

    .line 1390
    iput-object v4, p0, Lcom/android/camera/Camera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    goto :goto_2

    :cond_6
    move-object v0, v4

    goto :goto_0
.end method

.method private updateThumbnailButton()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 418
    iget-object v1, p0, Lcom/android/camera/Camera;->mThumbnailButton:Lcom/android/camera/RotateImageView;

    if-nez v1, :cond_0

    .line 432
    :goto_0
    return-void

    .line 420
    :cond_0
    iget-object v1, p0, Lcom/android/camera/Camera;->mThumbnailButton:Lcom/android/camera/RotateImageView;

    invoke-virtual {v1}, Lcom/android/camera/RotateImageView;->isUriValid()Z

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/android/camera/Camera;->mPicturesRemaining:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    .line 421
    iget-object v1, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1}, Lcom/android/camera/Storage;->getLastImageThumbnail(Landroid/content/ContentResolver;)Lcom/android/camera/Storage$Thumbnail;

    move-result-object v0

    .line 423
    .local v0, thumbnail:Lcom/android/camera/Storage$Thumbnail;
    if-eqz v0, :cond_2

    .line 424
    iget-object v1, p0, Lcom/android/camera/Camera;->mThumbnailButton:Lcom/android/camera/RotateImageView;

    invoke-virtual {v0}, Lcom/android/camera/Storage$Thumbnail;->getOriginalUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v3}, Lcom/android/camera/Storage$Thumbnail;->getBitmap(Landroid/content/ContentResolver;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/RotateImageView;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 430
    .end local v0           #thumbnail:Lcom/android/camera/Storage$Thumbnail;
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/camera/Camera;->mThumbnailButton:Lcom/android/camera/RotateImageView;

    iget-object v2, p0, Lcom/android/camera/Camera;->mThumbnailButton:Lcom/android/camera/RotateImageView;

    invoke-virtual {v2}, Lcom/android/camera/RotateImageView;->getUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/camera/RotateImageView;->setVisibility(I)V

    goto :goto_0

    .line 427
    .restart local v0       #thumbnail:Lcom/android/camera/Storage$Thumbnail;
    :cond_2
    iget-object v1, p0, Lcom/android/camera/Camera;->mThumbnailButton:Lcom/android/camera/RotateImageView;

    invoke-virtual {v1, v5, v5}, Lcom/android/camera/RotateImageView;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 430
    .end local v0           #thumbnail:Lcom/android/camera/Storage$Thumbnail;
    :cond_3
    const/16 v2, 0x8

    goto :goto_2
.end method

.method private viewImage(Lcom/android/camera/RotateImageView;)V
    .locals 4
    .parameter

    .prologue
    .line 2031
    invoke-virtual {p1}, Lcom/android/camera/RotateImageView;->isUriValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2032
    const-string v0, "camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uri invalid. uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/RotateImageView;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    :goto_0
    return-void

    .line 2037
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.REVIEW"

    invoke-virtual {p1}, Lcom/android/camera/RotateImageView;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2039
    :catch_0
    move-exception v0

    .line 2041
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p1}, Lcom/android/camera/RotateImageView;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2043
    :catch_1
    move-exception v0

    .line 2044
    const-string v1, "camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "review image fail. uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/camera/RotateImageView;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "m"

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/camera/Camera;->mPopupGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mPopupGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    const/4 v0, 0x1

    .line 564
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1519
    packed-switch p1, :pswitch_data_0

    .line 1537
    :goto_0
    return-void

    .line 1521
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1522
    if-eqz p3, :cond_0

    .line 1523
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1524
    if-eqz v1, :cond_0

    .line 1525
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1528
    :cond_0
    invoke-virtual {p0, p2, v0}, Lcom/android/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 1529
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    .line 1531
    const-string v0, "crop-temp"

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1532
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 1519
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1590
    invoke-direct {p0}, Lcom/android/camera/Camera;->isCameraIdle()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1596
    :cond_0
    :goto_0
    return-void

    .line 1593
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseCameraControls()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1594
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1241
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1261
    :cond_0
    :goto_0
    return-void

    .line 1243
    :sswitch_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->hidePostCaptureAlert()V

    .line 1244
    invoke-direct {p0}, Lcom/android/camera/Camera;->restartPreview()Z

    goto :goto_0

    .line 1247
    :sswitch_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1248
    iget-object v0, p0, Lcom/android/camera/Camera;->mThumbnailButton:Lcom/android/camera/RotateImageView;

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->viewImage(Lcom/android/camera/RotateImageView;)V

    goto :goto_0

    .line 1252
    :sswitch_2
    invoke-direct {p0}, Lcom/android/camera/Camera;->doAttach()V

    goto :goto_0

    .line 1255
    :sswitch_3
    invoke-direct {p0}, Lcom/android/camera/Camera;->doCancel()V

    goto :goto_0

    .line 1258
    :sswitch_4
    invoke-direct {p0}, Lcom/android/camera/Camera;->gotoGallery()V

    goto :goto_0

    .line 1241
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0000 -> :sswitch_4
        0x7f0a0003 -> :sswitch_3
        0x7f0a0004 -> :sswitch_0
        0x7f0a0007 -> :sswitch_2
        0x7f0a0028 -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 1464
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1465
    invoke-direct {p0}, Lcom/android/camera/Camera;->changeHeadUpDisplayState()V

    .line 1466
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 957
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 959
    invoke-direct {p0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    .line 960
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_2

    .line 961
    const v0, 0x7f040003

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setContentView(I)V

    .line 965
    :goto_0
    const v0, 0x7f0a0020

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/android/camera/Camera;->mSurfaceView:Landroid/view/SurfaceView;

    .line 967
    new-instance v0, Lcom/android/camera/ComboPreferences;

    invoke-direct {v0, p0}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 968
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 970
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mCameraId:I

    .line 973
    invoke-static {p0}, Lcom/android/camera/Util;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 974
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 975
    iput v0, p0, Lcom/android/camera/Camera;->mCameraId:I

    .line 978
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget v1, p0, Lcom/android/camera/Camera;->mCameraId:I

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 979
    iget-object v0, p0, Lcom/android/camera/Camera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v0}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 981
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getNumberOfCameras()I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mNumberOfCameras:I

    .line 982
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.quickCapture"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mQuickCapture:Z

    .line 985
    invoke-direct {p0}, Lcom/android/camera/Camera;->resetExposureCompensation()V

    .line 990
    new-instance v1, Ljava/lang/Thread;

    new-instance v0, Lcom/android/camera/Camera$4;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$4;-><init>(Lcom/android/camera/Camera;)V

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1005
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1010
    iget-object v0, p0, Lcom/android/camera/Camera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 1011
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1012
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 1014
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_3

    .line 1015
    invoke-direct {p0}, Lcom/android/camera/Camera;->setupCaptureParams()V

    .line 1017
    const v0, 0x7f0a0002

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1018
    const v0, 0x7f0a0003

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1019
    const v0, 0x7f0a0004

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1020
    const v0, 0x7f0a0007

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1029
    :goto_1
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 1030
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mStartPreviewFail:Z

    if-eqz v0, :cond_4

    .line 1031
    invoke-direct {p0}, Lcom/android/camera/Camera;->showCameraErrorAndFinish()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1048
    :cond_1
    :goto_2
    return-void

    .line 963
    :cond_2
    const v0, 0x7f040002

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->setContentView(I)V

    goto/16 :goto_0

    .line 1022
    :cond_3
    const v0, 0x7f0a000d

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/SwitcherSet;

    iput-object v0, p0, Lcom/android/camera/Camera;->mSwitcher:Lcom/android/camera/SwitcherSet;

    .line 1023
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitcher:Lcom/android/camera/SwitcherSet;

    invoke-virtual {v0, v3}, Lcom/android/camera/SwitcherSet;->setVisibility(I)V

    .line 1024
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitcher:Lcom/android/camera/SwitcherSet;

    invoke-virtual {v0, p0}, Lcom/android/camera/SwitcherSet;->setOnSwitchListener(Lcom/android/camera/Switcher$OnSwitchListener;)V

    goto :goto_1

    .line 1034
    :catch_0
    move-exception v0

    .line 1038
    :cond_4
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mBackCameraId:I

    .line 1039
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->mFrontCameraId:I

    .line 1043
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeIndicatorWheel()V

    .line 1044
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeCameraPicker()V

    .line 1046
    const v0, 0x7f0a0012

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ZoomPicker;

    iput-object v0, p0, Lcom/android/camera/Camera;->mZoomPicker:Lcom/android/camera/ui/ZoomPicker;

    .line 1047
    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomPicker:Lcom/android/camera/ui/ZoomPicker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/Camera;->mZoomPicker:Lcom/android/camera/ui/ZoomPicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ZoomPicker;->setEnabled(Z)V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 2173
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2175
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 2177
    const/4 v0, 0x0

    .line 2181
    :goto_0
    return v0

    .line 2179
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->addBaseMenuItems(Landroid/view/Menu;)V

    .line 2181
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1600
    sparse-switch p1, :sswitch_data_0

    .line 1630
    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1602
    :sswitch_0
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1603
    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->doFocus(Z)V

    :cond_0
    move v0, v1

    .line 1605
    goto :goto_0

    .line 1607
    :sswitch_1
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1608
    invoke-direct {p0}, Lcom/android/camera/Camera;->doSnap()V

    :cond_1
    move v0, v1

    .line 1610
    goto :goto_0

    .line 1614
    :sswitch_2
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 1618
    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseCameraControls()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 1619
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/camera/Camera;->doFocus(Z)V

    .line 1620
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1621
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->requestFocusFromTouch()Z

    .line 1625
    :goto_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setPressed(Z)V

    :cond_3
    move v0, v1

    .line 1627
    goto :goto_0

    .line 1623
    :cond_4
    iget-object v0, p0, Lcom/android/camera/Camera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->requestFocus()Z

    goto :goto_1

    .line 1600
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_2
        0x1b -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1635
    packed-switch p1, :pswitch_data_0

    .line 1642
    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1637
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    .line 1638
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->doFocus(Z)V

    .line 1640
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1635
    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_0
    .end packed-switch
.end method

.method protected onOverriddenPreferencesClicked()V
    .locals 2

    .prologue
    .line 2335
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPausing:Z

    if-eqz v0, :cond_0

    .line 2342
    :goto_0
    return-void

    .line 2336
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera;->mNotSelectableToast:Landroid/widget/Toast;

    if-nez v0, :cond_1

    .line 2337
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2338
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->mNotSelectableToast:Landroid/widget/Toast;

    .line 2340
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mNotSelectableToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 2341
    iget-object v0, p0, Lcom/android/camera/Camera;->mNotSelectableToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1470
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mPausing:Z

    .line 1471
    invoke-direct {p0}, Lcom/android/camera/Camera;->stopPreview()V

    .line 1473
    invoke-direct {p0}, Lcom/android/camera/Camera;->closeCamera()V

    .line 1474
    invoke-direct {p0}, Lcom/android/camera/Camera;->resetScreenOn()V

    .line 1475
    invoke-direct {p0}, Lcom/android/camera/Camera;->collapseCameraControls()Z

    .line 1476
    invoke-direct {p0}, Lcom/android/camera/Camera;->changeHeadUpDisplayState()V

    .line 1478
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_1

    .line 1479
    iget-object v0, p0, Lcom/android/camera/Camera;->mOrientationListener:Lcom/android/camera/Camera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/Camera$MyOrientationEventListener;->disable()V

    .line 1480
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    .line 1481
    iget-object v0, p0, Lcom/android/camera/Camera;->mThumbnailButton:Lcom/android/camera/RotateImageView;

    if-eqz v0, :cond_0

    .line 1482
    iget-object v0, p0, Lcom/android/camera/Camera;->mThumbnailButton:Lcom/android/camera/RotateImageView;

    sget-object v1, Lcom/android/camera/Camera;->LAST_THUMB_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/RotateImageView;->storeData(Ljava/lang/String;)Z

    .line 1485
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->hidePostCaptureAlert()V

    .line 1488
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mDidRegister:Z

    if-eqz v0, :cond_2

    .line 1489
    iget-object v0, p0, Lcom/android/camera/Camera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1490
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->mDidRegister:Z

    .line 1492
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/Camera;->stopReceivingLocationUpdates()V

    .line 1494
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_3

    .line 1495
    iget-object v0, p0, Lcom/android/camera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 1496
    iput-object v2, p0, Lcom/android/camera/Camera;->mFocusToneGenerator:Landroid/media/ToneGenerator;

    .line 1499
    :cond_3
    iget-object v0, p0, Lcom/android/camera/Camera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-eqz v0, :cond_4

    .line 1500
    iget-object v0, p0, Lcom/android/camera/Camera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v0}, Lcom/android/camera/OnScreenHint;->cancel()V

    .line 1501
    iput-object v2, p0, Lcom/android/camera/Camera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    .line 1506
    :cond_4
    iput-object v2, p0, Lcom/android/camera/Camera;->mJpegImageData:[B

    .line 1509
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1510
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1511
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1513
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onPause()V

    .line 1514
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 2162
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 2164
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2165
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/camera/Camera;->isCameraIdle()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2168
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onRestorePreferencesClicked()V
    .locals 3

    .prologue
    .line 2301
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPausing:Z

    if-eqz v0, :cond_0

    .line 2311
    :goto_0
    return-void

    .line 2302
    :cond_0
    new-instance v0, Lcom/android/camera/Camera$9;

    invoke-direct {v0, p0}, Lcom/android/camera/Camera$9;-><init>(Lcom/android/camera/Camera;)V

    .line 2307
    const v1, 0x7f0b000b

    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b000c

    invoke-virtual {p0, v2}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2, v0}, Lcom/android/camera/MenuHelper;->confirmAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1433
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onResume()V

    .line 1435
    iput-boolean v2, p0, Lcom/android/camera/Camera;->mPausing:Z

    .line 1436
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mJpegPictureCallbackTime:J

    .line 1437
    iput v2, p0, Lcom/android/camera/Camera;->mZoomValue:I

    .line 1440
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPreviewing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/Camera;->mStartPreviewFail:Z

    if-nez v0, :cond_1

    .line 1441
    invoke-direct {p0}, Lcom/android/camera/Camera;->resetExposureCompensation()V

    .line 1442
    invoke-direct {p0}, Lcom/android/camera/Camera;->restartPreview()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1460
    :cond_0
    :goto_0
    return-void

    .line 1445
    :cond_1
    iget-object v0, p0, Lcom/android/camera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_2

    .line 1448
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-nez v0, :cond_3

    .line 1449
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1454
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/Camera;->keepScreenOnAwhile()V

    .line 1456
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPreviewing:Z

    if-eqz v0, :cond_0

    .line 1457
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/Camera;->mOnResumeTime:J

    .line 1458
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1451
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeSecondTime()V

    goto :goto_1
.end method

.method public onShutterButtonClick(Lcom/android/camera/ShutterButton;)V
    .locals 1
    .parameter "button"

    .prologue
    .line 1356
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPausing:Z

    if-eqz v0, :cond_0

    .line 1364
    :goto_0
    return-void

    .line 1359
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/ShutterButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1361
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/Camera;->doSnap()V

    goto :goto_0

    .line 1359
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0006
        :pswitch_0
    .end packed-switch
.end method

.method public onShutterButtonFocus(Lcom/android/camera/ShutterButton;Z)V
    .locals 1
    .parameter "button"
    .parameter "pressed"

    .prologue
    .line 1345
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPausing:Z

    if-eqz v0, :cond_0

    .line 1353
    :goto_0
    return-void

    .line 1348
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/ShutterButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1350
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/camera/Camera;->doFocus(Z)V

    goto :goto_0

    .line 1348
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0006
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 1217
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onStart()V

    .line 1218
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    .line 1219
    iget-object v0, p0, Lcom/android/camera/Camera;->mSwitcher:Lcom/android/camera/SwitcherSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/SwitcherSet;->setSwitch(Z)V

    .line 1221
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1225
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onStop()V

    .line 1226
    iget-object v0, p0, Lcom/android/camera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_0

    .line 1227
    iget-object v0, p0, Lcom/android/camera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 1228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/Camera;->mMediaProviderClient:Landroid/content/ContentProviderClient;

    .line 1230
    :cond_0
    return-void
.end method

.method public onSwitchChanged(Lcom/android/camera/Switcher;Z)Z
    .locals 1
    .parameter "source"
    .parameter "onOff"

    .prologue
    .line 2227
    if-nez p2, :cond_0

    .line 2228
    invoke-direct {p0}, Lcom/android/camera/Camera;->switchToVideoMode()Z

    move-result v0

    .line 2230
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 2271
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onUserInteraction()V

    .line 2272
    invoke-direct {p0}, Lcom/android/camera/Camera;->keepScreenOnAwhile()V

    .line 2273
    return-void
.end method

.method public storeImage([BLandroid/hardware/Camera;Landroid/location/Location;)V
    .locals 7
    .parameter "data"
    .parameter "camera"
    .parameter "loc"

    .prologue
    .line 841
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_1

    .line 842
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 843
    .local v2, dateTaken:J
    invoke-direct {p0, v2, v3}, Lcom/android/camera/Camera;->createName(J)Ljava/lang/String;

    move-result-object v1

    .line 845
    .local v1, title:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, p3

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;[B)Lcom/android/camera/Storage$Thumbnail;

    move-result-object v6

    .line 848
    .local v6, thumbnail:Lcom/android/camera/Storage$Thumbnail;
    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera;->mThumbnailButton:Lcom/android/camera/RotateImageView;

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/android/camera/Camera;->mThumbnailButton:Lcom/android/camera/RotateImageView;

    invoke-virtual {v6}, Lcom/android/camera/Storage$Thumbnail;->getOriginalUri()Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v6, v5}, Lcom/android/camera/Storage$Thumbnail;->getBitmap(Landroid/content/ContentResolver;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/android/camera/RotateImageView;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 851
    iget-object v0, p0, Lcom/android/camera/Camera;->mThumbnailButton:Lcom/android/camera/RotateImageView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/camera/RotateImageView;->setVisibility(I)V

    .line 853
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.camera.NEW_PICTURE"

    invoke-virtual {v6}, Lcom/android/camera/Storage$Thumbnail;->getOriginalUri()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 864
    .end local v1           #title:Ljava/lang/String;
    .end local v2           #dateTaken:J
    .end local v6           #thumbnail:Lcom/android/camera/Storage$Thumbnail;
    :cond_0
    :goto_0
    return-void

    .line 857
    :cond_1
    iput-object p1, p0, Lcom/android/camera/Camera;->mJpegImageData:[B

    .line 858
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mQuickCapture:Z

    if-nez v0, :cond_2

    .line 859
    invoke-direct {p0}, Lcom/android/camera/Camera;->showPostCaptureAlert()V

    goto :goto_0

    .line 861
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/Camera;->doAttach()V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1684
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1685
    const-string v0, "camera"

    const-string v1, "holder.getSurface() == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    :cond_0
    :goto_0
    return-void

    .line 1689
    :cond_1
    const-string v0, "camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceChanged. w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    iput-object p1, p0, Lcom/android/camera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1699
    iget-object v0, p0, Lcom/android/camera/Camera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 1703
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPausing:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1710
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mPreviewing:Z

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iget v1, p0, Lcom/android/camera/Camera;->mDisplayRotation:I

    if-ne v0, v1, :cond_2

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1715
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 1727
    :goto_1
    iget-boolean v0, p0, Lcom/android/camera/Camera;->mFirstTimeInitialized:Z

    if-nez v0, :cond_3

    .line 1728
    iget-object v0, p0, Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1721
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/Camera;->restartPreview()Z

    goto :goto_1

    .line 1730
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/Camera;->initializeSecondTime()V

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 1735
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 1738
    invoke-direct {p0}, Lcom/android/camera/Camera;->stopPreview()V

    .line 1739
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/Camera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1740
    return-void
.end method
