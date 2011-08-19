.class public Lcom/android/camera/VideoCamera;
.super Lcom/android/camera/ActivityBase;
.source "VideoCamera.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;
.implements Lcom/android/camera/Switcher$OnSwitchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/VideoCamera$PopupGestureListener;,
        Lcom/android/camera/VideoCamera$MyCameraPickerListener;,
        Lcom/android/camera/VideoCamera$MyIndicatorWheelListener;,
        Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener;,
        Lcom/android/camera/VideoCamera$MyOrientationEventListener;,
        Lcom/android/camera/VideoCamera$MyBroadcastReceiver;,
        Lcom/android/camera/VideoCamera$MainHandler;
    }
.end annotation


# static fields
.field private static final LAST_THUMB_PATH:Ljava/lang/String;

.field private static final TIME_LAPSE_VIDEO_QUALITY:[I

.field private static final VIDEO_QUALITY:[I


# instance fields
.field private mBackCameraId:I

.field private mCameraDevice:Landroid/hardware/Camera;

.field private mCameraId:I

.field private mCameraPicker:Lcom/android/camera/ui/CameraPicker;

.field private mCaptureTimeLapse:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentVideoFilename:Ljava/lang/String;

.field private mCurrentVideoUri:Landroid/net/Uri;

.field private mCurrentVideoValues:Landroid/content/ContentValues;

.field private mDesiredPreviewHeight:I

.field private mDesiredPreviewWidth:I

.field private mDisplayRotation:I

.field private final mErrorCallback:Lcom/android/camera/CameraErrorCallback;

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

.field private final mHandler:Landroid/os/Handler;

.field private mHeadUpDisplay:Lcom/android/camera/ui/CamcorderHeadUpDisplay;

.field private mIndicatorWheel:Lcom/android/camera/ui/IndicatorWheel;

.field private mIsVideoCaptureIntent:Z

.field private mLocation:[I

.field private mMaxVideoDurationInMs:I

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mMediaRecorderRecording:Z

.field private mNumberOfCameras:I

.field private mOnResumeTime:J

.field private mOpenCameraFail:Z

.field private mOrientation:I

.field private mOrientationCompensation:I

.field private mOrientationHint:I

.field private mOrientationListener:Lcom/android/camera/VideoCamera$MyOrientationEventListener;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field mPausing:Z

.field private mPopupGestureDetector:Landroid/view/GestureDetector;

.field private mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

.field private mPreferences:Lcom/android/camera/ComboPreferences;

.field private mPreviewBorder:Landroid/view/View;

.field private mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

.field mPreviewing:Z

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mProfileQuality:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mQuickCapture:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecordingStartTime:J

.field private mRecordingTimeCountsDown:Z

.field private mRecordingTimeView:Landroid/widget/TextView;

.field private mReviewControl:Landroid/view/View;

.field private mShutterButton:Lcom/android/camera/ShutterButton;

.field private mStorageHint:Lcom/android/camera/OnScreenHint;

.field private mStorageSpace:J

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSwitcher:Lcom/android/camera/SwitcherSet;

.field private mThumbnailButton:Lcom/android/camera/RotateImageView;

.field private mTimeBetweenTimeLapseFrameCaptureMs:I

.field private mTimeLapseLabel:Landroid/view/View;

.field private mTimeLapseProfileQuality:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mVideoFilename:Ljava/lang/String;

.field private mVideoFrame:Landroid/widget/ImageView;

.field private mVideoPreview:Landroid/view/SurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/Storage;->THUMBNAILS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/video_last_thumb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/VideoCamera;->LAST_THUMB_PATH:Ljava/lang/String;

    .line 113
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/VideoCamera;->TIME_LAPSE_VIDEO_QUALITY:[I

    .line 122
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/VideoCamera;->VIDEO_QUALITY:[I

    return-void

    .line 113
    nop

    :array_0
    .array-data 0x4
        0xedt 0x3t 0x0t 0x0t
        0xect 0x3t 0x0t 0x0t
        0xebt 0x3t 0x0t 0x0t
        0xeat 0x3t 0x0t 0x0t
    .end array-data

    .line 122
    :array_1
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Lcom/android/camera/ActivityBase;-><init>()V

    .line 140
    new-instance v0, Lcom/android/camera/CameraErrorCallback;

    invoke-direct {v0}, Lcom/android/camera/CameraErrorCallback;-><init>()V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    .line 147
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 163
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mOpenCameraFail:Z

    .line 168
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    .line 193
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    .line 195
    iput v1, p0, Lcom/android/camera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 202
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mPausing:Z

    .line 203
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    .line 213
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeCountsDown:Z

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mGalleryItems:Ljava/util/ArrayList;

    .line 217
    new-instance v0, Lcom/android/camera/VideoCamera$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/VideoCamera$MainHandler;-><init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    .line 230
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    .line 232
    iput v1, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensation:I

    .line 280
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1944
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mLocation:[I

    .line 1945
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ShutterButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateThumbnailButton()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mOpenCameraFail:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/camera/VideoCamera;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/camera/VideoCamera;->mOpenCameraFail:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/camera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->openCamera()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->readVideoPreferences()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/camera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/camera/VideoCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput p1, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/camera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensation:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/camera/VideoCamera;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput p1, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensation:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateRecordingTime()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/camera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/camera/VideoCamera;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->setOrientationIndicator(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ui/CamcorderHeadUpDisplay;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHeadUpDisplay:Lcom/android/camera/ui/CamcorderHeadUpDisplay;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showStorageHint()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/camera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->switchToCameraMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->gotoGallery()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ComboPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/camera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/camera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/android/camera/VideoCamera;->mFrontCameraId:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/android/camera/VideoCamera;->mDisplayRotation:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/camera/VideoCamera;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/android/camera/VideoCamera;->mBackCameraId:I

    return v0
.end method

.method static synthetic access$3100(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->onSharedPreferenceChanged()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->onRestorePreferencesClicked()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->restorePreferences()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ui/IndicatorWheel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorWheel:Lcom/android/camera/ui/IndicatorWheel;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/camera/VideoCamera;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mLocation:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/VideoCamera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startPreview()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/VideoCamera;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/android/camera/VideoCamera;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/camera/VideoCamera;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateAndShowStorageHint()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()V

    return-void
.end method

.method private acquireVideoThumb()V
    .locals 3

    .prologue
    .line 1600
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mThumbnailButton:Lcom/android/camera/RotateImageView;

    if-eqz v1, :cond_0

    .line 1601
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1603
    .local v0, videoFrame:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mThumbnailButton:Lcom/android/camera/RotateImageView;

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/RotateImageView;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 1604
    if-eqz v0, :cond_0

    .line 1605
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mThumbnailButton:Lcom/android/camera/RotateImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/RotateImageView;->setVisibility(I)V

    .line 1608
    .end local v0           #videoFrame:Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method private addBaseMenuItems(Landroid/view/Menu;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1318
    new-instance v0, Lcom/android/camera/VideoCamera$3;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoCamera$3;-><init>(Lcom/android/camera/VideoCamera;)V

    invoke-static {p1, v2, v0}, Lcom/android/camera/MenuHelper;->addSwitchModeMenuItem(Landroid/view/Menu;ZLjava/lang/Runnable;)V

    .line 1323
    const/4 v0, 0x2

    const v1, 0x7f0b0011

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/camera/VideoCamera$4;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoCamera$4;-><init>(Lcom/android/camera/VideoCamera;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    .line 1333
    const v1, 0x108003f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1334
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mGalleryItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1336
    iget v0, p0, Lcom/android/camera/VideoCamera;->mNumberOfCameras:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1337
    const/4 v0, 0x3

    const v1, 0x7f0b0012

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/camera/VideoCamera$5;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoCamera$5;-><init>(Lcom/android/camera/VideoCamera;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080037

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1350
    :cond_0
    return-void
.end method

.method private attachHeadUpDisplay()V
    .locals 3

    .prologue
    .line 501
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mHeadUpDisplay:Lcom/android/camera/ui/CamcorderHeadUpDisplay;

    iget v2, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensation:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/CamcorderHeadUpDisplay;->setOrientation(I)V

    .line 502
    const v1, 0x7f0a001e

    invoke-virtual {p0, v1}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 503
    .local v0, frame:Landroid/view/ViewGroup;
    new-instance v1, Lcom/android/camera/ui/GLRootView;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/GLRootView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mGLRootView:Lcom/android/camera/ui/GLRootView;

    .line 504
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mGLRootView:Lcom/android/camera/ui/GLRootView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 505
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mGLRootView:Lcom/android/camera/ui/GLRootView;

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mHeadUpDisplay:Lcom/android/camera/ui/CamcorderHeadUpDisplay;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/GLRootView;->setContentPane(Lcom/android/camera/ui/GLView;)V

    .line 506
    return-void
.end method

.method private changeHeadUpDisplayState()V
    .locals 3

    .prologue
    .line 453
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mHeadUpDisplay:Lcom/android/camera/ui/CamcorderHeadUpDisplay;

    if-nez v1, :cond_1

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 460
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mPausing:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mGLRootView:Lcom/android/camera/ui/GLRootView;

    if-nez v1, :cond_2

    .line 462
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->attachHeadUpDisplay()V

    goto :goto_0

    .line 463
    :cond_2
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mGLRootView:Lcom/android/camera/ui/GLRootView;

    if-eqz v1, :cond_0

    .line 464
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->detachHeadUpDisplay()V

    goto :goto_0
.end method

.method private cleanupEmptyFile()V
    .locals 5

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1118
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1119
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1120
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Empty video file deleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    .line 1124
    :cond_0
    return-void
.end method

.method private closeCamera()V
    .locals 2

    .prologue
    .line 921
    const-string v0, "videocamera"

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 923
    const-string v0, "videocamera"

    const-string v1, "already stopped."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :goto_0
    return-void

    .line 927
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    .line 928
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->release()V

    .line 929
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    .line 930
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    goto :goto_0
.end method

.method private collapseCameraControls()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 515
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHeadUpDisplay:Lcom/android/camera/ui/CamcorderHeadUpDisplay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHeadUpDisplay:Lcom/android/camera/ui/CamcorderHeadUpDisplay;

    invoke-virtual {v0}, Lcom/android/camera/ui/CamcorderHeadUpDisplay;->collapse()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 521
    :goto_0
    return v0

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorWheel:Lcom/android/camera/ui/IndicatorWheel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorWheel:Lcom/android/camera/ui/IndicatorWheel;

    invoke-virtual {v0}, Lcom/android/camera/ui/IndicatorWheel;->dismissSettingPopup()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 519
    goto :goto_0

    .line 521
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createName(J)Ljava/lang/String;
    .locals 3
    .parameter "dateTaken"

    .prologue
    .line 305
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 306
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const v2, 0x7f0b0076

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 309
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private deleteCurrentVideo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1298
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1299
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->deleteVideoFile(Ljava/lang/String;)V

    .line 1300
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1301
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 1302
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1303
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1306
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateAndShowStorageHint()V

    .line 1307
    return-void
.end method

.method private deleteVideoFile(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1310
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting video "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1312
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1313
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    :cond_0
    return-void
.end method

.method private detachHeadUpDisplay()V
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHeadUpDisplay:Lcom/android/camera/ui/CamcorderHeadUpDisplay;

    invoke-virtual {v0}, Lcom/android/camera/ui/CamcorderHeadUpDisplay;->collapse()Z

    .line 510
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mGLRootView:Lcom/android/camera/ui/GLRootView;

    invoke-virtual {v0}, Lcom/android/camera/ui/GLRootView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mGLRootView:Lcom/android/camera/ui/GLRootView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 511
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mGLRootView:Lcom/android/camera/ui/GLRootView;

    .line 512
    return-void
.end method

.method private doReturnToCaller(Z)V
    .locals 3
    .parameter "valid"

    .prologue
    .line 1104
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1106
    .local v1, resultIntent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 1107
    const/4 v0, -0x1

    .line 1108
    .local v0, resultCode:I
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1112
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/VideoCamera;->setResult(ILandroid/content/Intent;)V

    .line 1113
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->finish()V

    .line 1114
    return-void

    .line 1110
    .end local v0           #resultCode:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #resultCode:I
    goto :goto_0
.end method

.method private enableCameraControls(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHeadUpDisplay:Lcom/android/camera/ui/CamcorderHeadUpDisplay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHeadUpDisplay:Lcom/android/camera/ui/CamcorderHeadUpDisplay;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CamcorderHeadUpDisplay;->setEnabled(Z)V

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorWheel:Lcom/android/camera/ui/IndicatorWheel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorWheel:Lcom/android/camera/ui/IndicatorWheel;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/IndicatorWheel;->setEnabled(Z)V

    .line 527
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraPicker:Lcom/android/camera/ui/CameraPicker;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraPicker:Lcom/android/camera/ui/CameraPicker;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CameraPicker;->setEnabled(Z)V

    .line 528
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitcher:Lcom/android/camera/SwitcherSet;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitcher:Lcom/android/camera/SwitcherSet;

    invoke-virtual {v0, p1}, Lcom/android/camera/SwitcherSet;->setEnabled(Z)V

    .line 529
    :cond_3
    return-void
.end method

.method private static fadeIn(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 1519
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1520
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1521
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1522
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1523
    return-void
.end method

.method private static fadeOut(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 1526
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1527
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1528
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1529
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1530
    return-void
.end method

.method private filterPreferenceScreenByIntent(Lcom/android/camera/PreferenceGroup;)Lcom/android/camera/PreferenceGroup;
    .locals 2
    .parameter

    .prologue
    .line 1354
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1355
    const-string v1, "android.intent.extra.videoQuality"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1356
    const-string v1, "pref_video_quality_key"

    invoke-static {p1, v1}, Lcom/android/camera/CameraSettings;->removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V

    .line 1360
    :cond_0
    const-string v1, "android.intent.extra.durationLimit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1361
    const-string v0, "pref_video_quality_key"

    invoke-static {p1, v0}, Lcom/android/camera/CameraSettings;->removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;)V

    .line 1364
    :cond_1
    return-object p1
.end method

.method private finishRecorderAndCloseCamera()V
    .locals 1

    .prologue
    .line 936
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_1

    .line 937
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 938
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()V

    .line 939
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showAlert()V

    .line 947
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeCamera()V

    .line 948
    return-void

    .line 941
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()V

    .line 942
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->getThumbnail()V

    goto :goto_0

    .line 945
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()V

    goto :goto_0
.end method

.method private generateVideoFilename(I)V
    .locals 8
    .parameter

    .prologue
    .line 1249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1250
    invoke-direct {p0, v0, v1}, Lcom/android/camera/VideoCamera;->createName(J)Ljava/lang/String;

    move-result-object v2

    .line 1251
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".3gp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1252
    const-string v4, "video/3gpp"

    .line 1253
    const/4 v5, 0x2

    if-ne p1, v5, :cond_0

    .line 1254
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".mp4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1255
    const-string v4, "video/mp4"

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    .line 1257
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    .line 1258
    new-instance v5, Landroid/content/ContentValues;

    const/4 v6, 0x7

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v5, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 1259
    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v6, "title"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v5, "_display_name"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v4, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1262
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "mime_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v1, "_data"

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New video filename: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    return-void

    :cond_0
    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    goto :goto_0
.end method

.method private getDesiredPreviewSize()V
    .locals 6

    .prologue
    .line 800
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 801
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    .line 803
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    .line 821
    :goto_0
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDesiredPreviewWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". mDesiredPreviewHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    return-void

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 806
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 807
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v2, v0

    .line 808
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 810
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 811
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 812
    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v0, v4

    if-le v0, v2, :cond_1

    .line 813
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 816
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v2, v0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v4, v0

    div-double/2addr v2, v4

    invoke-static {p0, v1, v2, v3}, Lcom/android/camera/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 818
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iput v1, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    .line 819
    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    iput v0, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    goto :goto_0
.end method

.method private getThumbnail()V
    .locals 0

    .prologue
    .line 1463
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->acquireVideoThumb()V

    .line 1464
    return-void
.end method

.method private getTimeLapseVideoLength(J)J
    .locals 6
    .parameter "deltaMs"

    .prologue
    .line 1682
    long-to-double v2, p1

    iget v4, p0, Lcom/android/camera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v4, v4

    div-double v0, v2, v4

    .line 1683
    .local v0, numberOfFrames:D
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    int-to-double v2, v2

    div-double v2, v0, v2

    const-wide v4, 0x408f400000000000L

    mul-double/2addr v2, v4

    double-to-long v2, v2

    return-wide v2
.end method

.method private gotoGallery()V
    .locals 0

    .prologue
    .line 1082
    invoke-static {p0}, Lcom/android/camera/MenuHelper;->gotoCameraVideoGallery(Landroid/app/Activity;)V

    .line 1083
    return-void
.end method

.method private hideAlert()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1497
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFrame:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1498
    const v0, 0x7f0a0006

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/VideoCamera;->fadeIn(Landroid/view/View;)V

    .line 1499
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0, v5}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 1500
    invoke-direct {p0, v5}, Lcom/android/camera/VideoCamera;->enableCameraControls(Z)V

    .line 1503
    const v0, 0x7f0a0003

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1504
    instance-of v1, v0, Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 1505
    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0b000e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1508
    :cond_0
    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 1509
    array-length v2, v1

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v0, v1, v3

    .line 1510
    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1511
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1509
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 1513
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    if-eqz v0, :cond_2

    .line 1514
    invoke-direct {p0, v5}, Lcom/android/camera/VideoCamera;->showTimeLapseUI(Z)V

    .line 1516
    :cond_2
    return-void

    .line 1508
    :array_0
    .array-data 0x4
        0x4t 0x0t 0xat 0x7ft
        0x7t 0x0t 0xat 0x7ft
        0x5t 0x0t 0xat 0x7ft
    .end array-data
.end method

.method private initThumbnailButton()V
    .locals 2

    .prologue
    .line 1611
    const v0, 0x7f0a0028

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnailButton:Lcom/android/camera/RotateImageView;

    .line 1612
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnailButton:Lcom/android/camera/RotateImageView;

    if-eqz v0, :cond_0

    .line 1613
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnailButton:Lcom/android/camera/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/android/camera/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1614
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnailButton:Lcom/android/camera/RotateImageView;

    sget-object v1, Lcom/android/camera/VideoCamera;->LAST_THUMB_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/RotateImageView;->loadData(Ljava/lang/String;)Z

    .line 1616
    :cond_0
    return-void
.end method

.method private initializeCameraPicker()V
    .locals 4

    .prologue
    .line 470
    iget v1, p0, Lcom/android/camera/VideoCamera;->mNumberOfCameras:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    const v1, 0x7f0a0016

    invoke-virtual {p0, v1}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/CameraPicker;

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mCameraPicker:Lcom/android/camera/ui/CameraPicker;

    .line 473
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCameraPicker:Lcom/android/camera/ui/CameraPicker;

    if-eqz v1, :cond_0

    .line 474
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCameraPicker:Lcom/android/camera/ui/CameraPicker;

    const v2, 0x7f02004b

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/CameraPicker;->setImageResource(I)V

    .line 475
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    const-string v2, "pref_camera_id_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 477
    .local v0, pref:Lcom/android/camera/ListPreference;
    if-eqz v0, :cond_0

    .line 478
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCameraPicker:Lcom/android/camera/ui/CameraPicker;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/CameraPicker;->initialize(Lcom/android/camera/ListPreference;)V

    .line 479
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCameraPicker:Lcom/android/camera/ui/CameraPicker;

    new-instance v2, Lcom/android/camera/VideoCamera$MyCameraPickerListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/camera/VideoCamera$MyCameraPickerListener;-><init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/CameraPicker;->setListener(Lcom/android/camera/ui/CameraPicker$Listener;)V

    goto :goto_0
.end method

.method private initializeHeadUpDisplay()V
    .locals 3

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHeadUpDisplay:Lcom/android/camera/ui/CamcorderHeadUpDisplay;

    if-nez v0, :cond_0

    .line 498
    :goto_0
    return-void

    .line 492
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->loadCameraPreferences()V

    .line 494
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_1

    .line 495
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->filterPreferenceScreenByIntent(Lcom/android/camera/PreferenceGroup;)Lcom/android/camera/PreferenceGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 497
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHeadUpDisplay:Lcom/android/camera/ui/CamcorderHeadUpDisplay;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    iget v2, p0, Lcom/android/camera/VideoCamera;->mOrientationCompensation:I

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/camera/ui/CamcorderHeadUpDisplay;->initialize(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;I)V

    goto :goto_0
.end method

.method private initializeIndicatorWheel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 532
    const v1, 0x7f0a0013

    invoke-virtual {p0, v1}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/IndicatorWheel;

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mIndicatorWheel:Lcom/android/camera/ui/IndicatorWheel;

    .line 533
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mIndicatorWheel:Lcom/android/camera/ui/IndicatorWheel;

    if-nez v1, :cond_0

    .line 545
    :goto_0
    return-void

    .line 534
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->loadCameraPreferences()V

    .line 536
    const/4 v1, 0x5

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "pref_camera_video_flashmode_key"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "pref_camera_whitebalance_key"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "pref_camera_coloreffect_key"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "pref_video_quality_key"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "pref_video_time_lapse_frame_interval_key"

    aput-object v2, v0, v1

    .line 541
    .local v0, keys:[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mIndicatorWheel:Lcom/android/camera/ui/IndicatorWheel;

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    invoke-virtual {v1, p0, v2, v0, v3}, Lcom/android/camera/ui/IndicatorWheel;->initialize(Landroid/content/Context;Lcom/android/camera/PreferenceGroup;[Ljava/lang/String;Z)V

    .line 542
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mIndicatorWheel:Lcom/android/camera/ui/IndicatorWheel;

    new-instance v2, Lcom/android/camera/VideoCamera$MyIndicatorWheelListener;

    invoke-direct {v2, p0, v4}, Lcom/android/camera/VideoCamera$MyIndicatorWheelListener;-><init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/IndicatorWheel;->setListener(Lcom/android/camera/ui/IndicatorWheel$Listener;)V

    .line 543
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/android/camera/VideoCamera$PopupGestureListener;

    invoke-direct {v2, p0, v4}, Lcom/android/camera/VideoCamera$PopupGestureListener;-><init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V

    invoke-direct {v1, p0, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mPopupGestureDetector:Landroid/view/GestureDetector;

    goto :goto_0
.end method

.method private initializeRecorder()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    .line 1128
    const-string v0, "videocamera"

    const-string v1, "initializeRecorder"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 1224
    :goto_0
    return-void

    .line 1132
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_1

    .line 1133
    const-string v0, "videocamera"

    const-string v1, "Surface holder is null. Wait for surface changed."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1137
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1138
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1141
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_9

    if-eqz v1, :cond_9

    .line 1142
    const-string v0, "output"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1143
    if-eqz v0, :cond_2

    .line 1145
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "rw"

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1147
    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1153
    :cond_2
    :goto_1
    const-string v0, "android.intent.extra.sizeLimit"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1155
    :goto_2
    new-instance v2, Landroid/media/MediaRecorder;

    invoke-direct {v2}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1158
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->unlock()V

    .line 1159
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 1160
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    if-nez v2, :cond_3

    .line 1161
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 1163
    :cond_3
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v7}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 1164
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1165
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v3, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 1166
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    if-eqz v2, :cond_4

    .line 1167
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-wide v3, 0x408f400000000000L

    iget v5, p0, Lcom/android/camera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v5, v5

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 1173
    :cond_4
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_6

    .line 1174
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 1180
    :goto_3
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 1186
    iget-wide v2, p0, Lcom/android/camera/VideoCamera;->mStorageSpace:J

    const-wide/32 v4, 0x20000

    sub-long/2addr v2, v4

    .line 1187
    cmp-long v4, v0, v8

    if-lez v4, :cond_8

    cmp-long v4, v0, v2

    if-gez v4, :cond_8

    .line 1192
    :goto_4
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1202
    :goto_5
    const/4 v0, 0x0

    .line 1203
    iget v1, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 1204
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    aget-object v0, v0, v1

    .line 1205
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, v7, :cond_7

    .line 1206
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v1, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 1211
    :cond_5
    :goto_6
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v0}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 1212
    iput v0, p0, Lcom/android/camera/VideoCamera;->mOrientationHint:I

    .line 1215
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1222
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1223
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    goto/16 :goto_0

    .line 1148
    :catch_0
    move-exception v0

    .line 1150
    const-string v2, "videocamera"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1176
    :cond_6
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v2}, Lcom/android/camera/VideoCamera;->generateVideoFilename(I)V

    .line 1177
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto :goto_3

    .line 1208
    :cond_7
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iget v1, p0, Lcom/android/camera/VideoCamera;->mOrientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    goto :goto_6

    .line 1216
    :catch_1
    move-exception v0

    .line 1217
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1218
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->releaseMediaRecorder()V

    .line 1219
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1193
    :catch_2
    move-exception v0

    goto :goto_5

    :cond_8
    move-wide v0, v2

    goto/16 :goto_4

    :cond_9
    move-wide v0, v8

    goto/16 :goto_2
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

    .line 1736
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

.method private isVideoCaptureIntent()Z
    .locals 2

    .prologue
    .line 1099
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1100
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private keepScreenOn()V
    .locals 2

    .prologue
    .line 1595
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1596
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1597
    return-void
.end method

.method private keepScreenOnAwhile()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 1589
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1590
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1591
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1592
    return-void
.end method

.method private loadCameraPreferences()V
    .locals 4

    .prologue
    .line 485
    new-instance v0, Lcom/android/camera/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v2, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/camera/CameraSettings;-><init>(Landroid/app/Activity;Landroid/hardware/Camera$Parameters;I[Landroid/hardware/Camera$CameraInfo;)V

    .line 487
    .local v0, settings:Lcom/android/camera/CameraSettings;
    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraSettings;->getPreferenceGroup(I)Lcom/android/camera/PreferenceGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mPreferenceGroup:Lcom/android/camera/PreferenceGroup;

    .line 488
    return-void
.end method

.method private static millisecondToTimeString(JZ)Ljava/lang/String;
    .locals 11
    .parameter "milliSeconds"
    .parameter "displayCentiSeconds"

    .prologue
    .line 1635
    const-wide/16 v0, 0x3e8

    div-long v6, p0, v0

    .line 1636
    .local v6, seconds:J
    const-wide/16 v0, 0x3c

    div-long v2, v6, v0

    .line 1637
    .local v2, minutes:J
    const-wide/16 v0, 0x3c

    div-long v0, v2, v0

    .line 1638
    .local v0, hours:J
    const-wide/16 v4, 0x3c

    mul-long/2addr v4, v0

    sub-long v4, v2, v4

    .line 1639
    .local v4, remainderMinutes:J
    const-wide/16 v8, 0x3c

    mul-long/2addr v2, v8

    sub-long v2, v6, v2

    .line 1641
    .local v2, remainderSeconds:J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1644
    .local v8, timeStringBuilder:Ljava/lang/StringBuilder;
    const-wide/16 v9, 0x0

    cmp-long v9, v0, v9

    if-lez v9, :cond_1

    .line 1645
    const-wide/16 v9, 0xa

    cmp-long v9, v0, v9

    if-gez v9, :cond_0

    .line 1646
    const/16 v9, 0x30

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1648
    :cond_0
    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1650
    const/16 v0, 0x3a

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1654
    .end local v0           #hours:J
    :cond_1
    const-wide/16 v0, 0xa

    cmp-long v0, v4, v0

    if-gez v0, :cond_2

    .line 1655
    const/16 v0, 0x30

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1657
    :cond_2
    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1658
    const/16 v0, 0x3a

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1661
    const-wide/16 v0, 0xa

    cmp-long v0, v2, v0

    if-gez v0, :cond_3

    .line 1662
    const/16 v0, 0x30

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1664
    :cond_3
    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1667
    if-eqz p2, :cond_5

    .line 1668
    const/16 p2, 0x2e

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1669
    .end local p2
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, v6

    sub-long/2addr p0, v0

    const-wide/16 v0, 0xa

    div-long/2addr p0, v0

    .line 1670
    .local p0, remainderCentiSeconds:J
    const-wide/16 v0, 0xa

    cmp-long p2, p0, v0

    if-gez p2, :cond_4

    .line 1671
    const/16 p2, 0x30

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1673
    :cond_4
    invoke-virtual {v8, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1676
    .end local p0           #remainderCentiSeconds:J
    :cond_5
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private onRestorePreferencesClicked()V
    .locals 3

    .prologue
    .line 1840
    new-instance v0, Lcom/android/camera/VideoCamera$6;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoCamera$6;-><init>(Lcom/android/camera/VideoCamera;)V

    .line 1845
    const v1, 0x7f0b000b

    invoke-virtual {p0, v1}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b000c

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2, v0}, Lcom/android/camera/MenuHelper;->confirmAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1849
    return-void
.end method

.method private onSharedPreferenceChanged()V
    .locals 5

    .prologue
    .line 1867
    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mPausing:Z

    if-eqz v2, :cond_0

    .line 1901
    :goto_0
    return-void

    .line 1868
    :cond_0
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    monitor-enter v2

    .line 1871
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v3, :cond_1

    monitor-exit v2

    goto :goto_0

    .line 1900
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1874
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 1875
    .local v0, cameraId:I
    iget v3, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    if-eq v3, v0, :cond_3

    .line 1879
    iget-boolean v3, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v3, :cond_2

    .line 1881
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/camera/MenuHelper;->gotoVideoMode(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 1885
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->finish()V

    .line 1899
    :goto_2
    iget-boolean v3, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    invoke-direct {p0, v3}, Lcom/android/camera/VideoCamera;->showTimeLapseUI(Z)V

    .line 1900
    monitor-exit v2

    goto :goto_0

    .line 1883
    :cond_2
    invoke-static {p0}, Lcom/android/camera/MenuHelper;->gotoVideoMode(Landroid/app/Activity;)V

    goto :goto_1

    .line 1887
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->readVideoPreferences()V

    .line 1889
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 1890
    .local v1, size:Landroid/hardware/Camera$Size;
    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    if-ne v3, v4, :cond_4

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    iget v4, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    if-eq v3, v4, :cond_5

    .line 1892
    :cond_4
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->stopPreview()V

    .line 1893
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resizeForPreviewAspectRatio()V

    .line 1894
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startPreview()V

    goto :goto_2

    .line 1896
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setCameraParameters()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private onStopVideoRecording(Z)V
    .locals 1
    .parameter "valid"

    .prologue
    .line 639
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()V

    .line 640
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_1

    .line 641
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mQuickCapture:Z

    if-eqz v0, :cond_0

    .line 642
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->doReturnToCaller(Z)V

    .line 649
    :goto_0
    return-void

    .line 644
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showAlert()V

    goto :goto_0

    .line 647
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->getThumbnail()V

    goto :goto_0
.end method

.method private openCamera()Z
    .locals 3

    .prologue
    .line 888
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 889
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraHolder;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    .line 895
    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 891
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 892
    .local v0, e:Lcom/android/camera/CameraHardwareException;
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showCameraErrorAndFinish()V

    .line 893
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private pauseAudioPlayback()V
    .locals 3

    .prologue
    .line 1397
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1398
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1400
    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->sendBroadcast(Landroid/content/Intent;)V

    .line 1401
    return-void
.end method

.method private readVideoPreferences()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 708
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_video_quality_key"

    const-string v2, "high"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 711
    invoke-static {p0, v0}, Lcom/android/camera/CameraSettings;->getVideoQuality(Landroid/content/Context;Ljava/lang/String;)Z

    .line 715
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 716
    const-string v2, "android.intent.extra.videoQuality"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 717
    const-string v0, "android.intent.extra.videoQuality"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 719
    if-lez v0, :cond_1

    .line 720
    const v0, 0x7f0b0024

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 728
    :cond_0
    :goto_0
    const-string v2, "android.intent.extra.durationLimit"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 729
    const-string v2, "android.intent.extra.durationLimit"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 731
    mul-int/lit16 v1, v1, 0x3e8

    iput v1, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    .line 738
    :goto_1
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v2, "pref_video_time_lapse_frame_interval_key"

    const v3, 0x7f0b0029

    invoke-virtual {p0, v3}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 741
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 743
    iget v1, p0, Lcom/android/camera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    .line 744
    iget v1, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    iget-boolean v2, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/camera/VideoCamera;->getProfileQuality(ILjava/lang/String;Z)I

    move-result v0

    .line 745
    iget v1, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    invoke-static {v1, v0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    .line 746
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->getDesiredPreviewSize()V

    .line 747
    return-void

    .line 722
    :cond_1
    const v0, 0x7f0b0026

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 733
    :cond_2
    invoke-static {p0, v0}, Lcom/android/camera/CameraSettings;->getVideoDurationInMillis(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    goto :goto_1

    :cond_3
    move v1, v4

    .line 743
    goto :goto_2
.end method

.method private registerVideo()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1268
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_1

    .line 1269
    const-string v0, "content://media/external/video/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1270
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v2, "_size"

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1272
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/camera/VideoCamera;->mRecordingStartTime:J

    sub-long/2addr v1, v3

    .line 1273
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_2

    .line 1274
    iget-boolean v3, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    if-eqz v3, :cond_0

    .line 1275
    invoke-direct {p0, v1, v2}, Lcom/android/camera/VideoCamera;->getTimeLapseVideoLength(J)J

    move-result-wide v1

    .line 1277
    :cond_0
    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v4, "duration"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1282
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1290
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current video URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    :cond_1
    :goto_1
    iput-object v6, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 1294
    return-void

    .line 1279
    :cond_2
    const-string v3, "videocamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Video duration <= 0 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1284
    :catch_0
    move-exception v0

    .line 1287
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1290
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current video URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current video URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

.method private releaseMediaRecorder()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1227
    const-string v0, "videocamera"

    const-string v1, "Releasing media recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 1229
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->cleanupEmptyFile()V

    .line 1230
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 1231
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 1232
    iput-object v3, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1234
    :cond_0
    iput-object v3, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    .line 1235
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1

    .line 1237
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1241
    :goto_0
    iput-object v3, p0, Lcom/android/camera/VideoCamera;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1245
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    .line 1246
    :cond_2
    return-void

    .line 1238
    :catch_0
    move-exception v0

    .line 1239
    const-string v1, "videocamera"

    const-string v2, "Fail to close fd"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private resetScreenOn()V
    .locals 2

    .prologue
    .line 1584
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1585
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1586
    return-void
.end method

.method private resizeForPreviewAspectRatio()V
    .locals 5

    .prologue
    .line 826
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v1, v1

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PreviewFrameLayout;->setAspectRatio(D)V

    .line 828
    return-void
.end method

.method private restorePreferences()V
    .locals 2

    .prologue
    .line 1852
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHeadUpDisplay:Lcom/android/camera/ui/CamcorderHeadUpDisplay;

    if-eqz v0, :cond_0

    .line 1853
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHeadUpDisplay:Lcom/android/camera/ui/CamcorderHeadUpDisplay;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CamcorderHeadUpDisplay;->restorePreferences(Landroid/hardware/Camera$Parameters;)V

    .line 1856
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorWheel:Lcom/android/camera/ui/IndicatorWheel;

    if-eqz v0, :cond_1

    .line 1857
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorWheel:Lcom/android/camera/ui/IndicatorWheel;

    invoke-virtual {v0}, Lcom/android/camera/ui/IndicatorWheel;->dismissSettingPopup()Z

    .line 1858
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {p0, v0, v1}, Lcom/android/camera/CameraSettings;->restorePreferences(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;)V

    .line 1860
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeIndicatorWheel()V

    .line 1861
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->onSharedPreferenceChanged()V

    .line 1863
    :cond_1
    return-void
.end method

.method public static roundOrientation(I)I
    .locals 1
    .parameter "orientation"

    .prologue
    .line 548
    add-int/lit8 v0, p0, 0x2d

    div-int/lit8 v0, v0, 0x5a

    mul-int/lit8 v0, v0, 0x5a

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method private setCameraParameters()V
    .locals 3

    .prologue
    .line 1740
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1742
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v1, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewWidth:I

    iget v2, p0, Lcom/android/camera/VideoCamera;->mDesiredPreviewHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1743
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 1746
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_video_flashmode_key"

    const v2, 0x7f0b004a

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1749
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 1750
    invoke-static {v0, v1}, Lcom/android/camera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1751
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1761
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_whitebalance_key"

    const v2, 0x7f0b004b

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1764
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1766
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 1775
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    const-string v1, "pref_camera_coloreffect_key"

    const v2, 0x7f0b0052

    invoke-virtual {p0, v2}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1778
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/VideoCamera;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1779
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 1782
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1784
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1785
    return-void

    .line 1753
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 1754
    if-nez v0, :cond_0

    .line 1755
    const v0, 0x7f0b0045

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    goto :goto_0

    .line 1768
    :cond_4
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    .line 1769
    if-nez v0, :cond_1

    .line 1770
    const-string v0, "auto"

    goto :goto_1
.end method

.method private setOrientationIndicator(I)V
    .locals 2
    .parameter "degree"

    .prologue
    .line 582
    const v1, 0x7f0a0028

    invoke-virtual {p0, v1}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/RotateImageView;

    .line 584
    .local v0, icon:Lcom/android/camera/RotateImageView;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/camera/RotateImageView;->setDegree(I)V

    .line 586
    :cond_0
    const v1, 0x7f0a0010

    invoke-virtual {p0, v1}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #icon:Lcom/android/camera/RotateImageView;
    check-cast v0, Lcom/android/camera/RotateImageView;

    .line 587
    .restart local v0       #icon:Lcom/android/camera/RotateImageView;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/camera/RotateImageView;->setDegree(I)V

    .line 588
    :cond_1
    const v1, 0x7f0a000e

    invoke-virtual {p0, v1}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #icon:Lcom/android/camera/RotateImageView;
    check-cast v0, Lcom/android/camera/RotateImageView;

    .line 589
    .restart local v0       #icon:Lcom/android/camera/RotateImageView;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/camera/RotateImageView;->setDegree(I)V

    .line 590
    :cond_2
    return-void
.end method

.method private setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter

    .prologue
    .line 879
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 884
    return-void

    .line 880
    :catch_0
    move-exception v0

    .line 881
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeCamera()V

    .line 882
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "setPreviewDisplay failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private showAlert()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1467
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorWheel:Lcom/android/camera/ui/IndicatorWheel;

    if-nez v0, :cond_0

    .line 1468
    const v0, 0x7f0a0006

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/VideoCamera;->fadeOut(Landroid/view/View;)V

    .line 1470
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1471
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1475
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    .line 1476
    iget v2, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    aget-object v1, v1, v2

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v1, :cond_2

    .line 1477
    iget v1, p0, Lcom/android/camera/VideoCamera;->mOrientationHint:I

    neg-int v1, v1

    invoke-static {v0, v1, v4}, Lcom/android/camera/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1481
    :goto_0
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mVideoFrame:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1482
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFrame:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1484
    :cond_1
    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 1485
    array-length v2, v1

    move v3, v4

    :goto_1
    if-ge v3, v2, :cond_3

    aget v0, v1, v3

    .line 1486
    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1487
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/VideoCamera;->fadeIn(Landroid/view/View;)V

    .line 1485
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 1479
    :cond_2
    iget v1, p0, Lcom/android/camera/VideoCamera;->mOrientationHint:I

    neg-int v1, v1

    invoke-static {v0, v1, v3}, Lcom/android/camera/Util;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 1491
    :cond_3
    const v0, 0x7f0a0003

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1492
    instance-of v1, v0, Landroid/widget/Button;

    if-eqz v1, :cond_4

    check-cast v0, Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1493
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/camera/VideoCamera;->showTimeLapseUI(Z)V

    .line 1494
    return-void

    .line 1484
    :array_0
    .array-data 0x4
        0x4t 0x0t 0xat 0x7ft
        0x7t 0x0t 0xat 0x7ft
        0x5t 0x0t 0xat 0x7ft
    .end array-data
.end method

.method private showCameraErrorAndFinish()V
    .locals 3

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 314
    .local v0, ress:Landroid/content/res/Resources;
    const/high16 v1, 0x7f0b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b0001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/android/camera/Util;->showFatalErrorAndFinish(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method private showRecordingUI(Z)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1438
    if-eqz p1, :cond_2

    .line 1439
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1441
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f020037

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setBackgroundResource(I)V

    .line 1442
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1443
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1444
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewControl:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewControl:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1445
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    if-eqz v0, :cond_1

    .line 1446
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorWheel:Lcom/android/camera/ui/IndicatorWheel;

    iget v1, p0, Lcom/android/camera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    iget-wide v2, p0, Lcom/android/camera/VideoCamera;->mRecordingStartTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ui/IndicatorWheel;->startTimeLapseAnimation(IJ)V

    .line 1460
    :cond_1
    :goto_0
    return-void

    .line 1451
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1453
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v1, 0x7f020032

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setBackgroundResource(I)V

    .line 1454
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1455
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewControl:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReviewControl:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1456
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    if-eqz v0, :cond_1

    .line 1457
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorWheel:Lcom/android/camera/ui/IndicatorWheel;

    invoke-virtual {v0}, Lcom/android/camera/ui/IndicatorWheel;->stopTimeLapseAnimation()V

    goto :goto_0
.end method

.method private showStorageHint()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 683
    .line 684
    iget-wide v0, p0, Lcom/android/camera/VideoCamera;->mStorageSpace:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 685
    const v0, 0x7f0b0007

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 694
    :goto_0
    if-eqz v0, :cond_5

    .line 695
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-nez v1, :cond_4

    .line 696
    invoke-static {p0, v0}, Lcom/android/camera/OnScreenHint;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/android/camera/OnScreenHint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    .line 700
    :goto_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v0}, Lcom/android/camera/OnScreenHint;->show()V

    .line 705
    :cond_0
    :goto_2
    return-void

    .line 686
    :cond_1
    iget-wide v0, p0, Lcom/android/camera/VideoCamera;->mStorageSpace:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 687
    const v0, 0x7f0b0009

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 688
    :cond_2
    iget-wide v0, p0, Lcom/android/camera/VideoCamera;->mStorageSpace:J

    const-wide/16 v2, -0x3

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 689
    const v0, 0x7f0b000a

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 690
    :cond_3
    iget-wide v0, p0, Lcom/android/camera/VideoCamera;->mStorageSpace:J

    const-wide/32 v2, 0x80000

    cmp-long v0, v0, v2

    if-gez v0, :cond_6

    .line 691
    const v0, 0x7f0b0074

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 698
    :cond_4
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v1, v0}, Lcom/android/camera/OnScreenHint;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 701
    :cond_5
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v0}, Lcom/android/camera/OnScreenHint;->cancel()V

    .line 703
    iput-object v4, p0, Lcom/android/camera/VideoCamera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    goto :goto_2

    :cond_6
    move-object v0, v4

    goto :goto_0
.end method

.method private showTimeLapseUI(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1904
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mTimeLapseLabel:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1905
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mTimeLapseLabel:Landroid/view/View;

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1907
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreviewBorder:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1908
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPreviewBorder:Landroid/view/View;

    if-eqz p1, :cond_3

    const v1, 0x7f020009

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1913
    :cond_1
    return-void

    .line 1905
    :cond_2
    const/4 v1, 0x4

    goto :goto_0

    .line 1908
    :cond_3
    const v1, 0x7f020008

    goto :goto_1
.end method

.method private startPlayVideoActivity()V
    .locals 5

    .prologue
    .line 601
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 603
    .local v1, intent:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/camera/VideoCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    :goto_0
    return-void

    .line 604
    :catch_0
    move-exception v0

    .line 605
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v2, "videocamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t view video "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 899
    const-string v0, "videocamera"

    const-string v1, "startPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 902
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    if-ne v0, v2, :cond_0

    .line 903
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 904
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    .line 906
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 907
    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/VideoCamera;->mDisplayRotation:I

    .line 908
    iget v0, p0, Lcom/android/camera/VideoCamera;->mDisplayRotation:I

    iget v1, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->setCameraDisplayOrientation(IILandroid/hardware/Camera;)V

    .line 909
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->setCameraParameters()V

    .line 912
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 913
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 918
    return-void

    .line 914
    :catch_0
    move-exception v0

    .line 915
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->closeCamera()V

    .line 916
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "startPreview failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private startVideoRecording()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1404
    const-string v0, "videocamera"

    const-string v1, "startVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateAndShowStorageHint()V

    .line 1407
    iget-wide v0, p0, Lcom/android/camera/VideoCamera;->mStorageSpace:J

    const-wide/32 v2, 0x80000

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1408
    const-string v0, "videocamera"

    const-string v1, "Storage issue, ignore the start request"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    :goto_0
    return-void

    .line 1412
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeRecorder()V

    .line 1413
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_1

    .line 1414
    const-string v0, "videocamera"

    const-string v1, "Fail to initialize media recorder"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1418
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->pauseAudioPlayback()V

    .line 1421
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1427
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->enableCameraControls(Z)V

    .line 1429
    iput-boolean v4, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    .line 1430
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/VideoCamera;->mRecordingStartTime:J

    .line 1431
    invoke-direct {p0, v4}, Lcom/android/camera/VideoCamera;->showRecordingUI(Z)V

    .line 1433
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateRecordingTime()V

    .line 1434
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->keepScreenOn()V

    goto :goto_0

    .line 1422
    :catch_0
    move-exception v0

    .line 1423
    const-string v1, "videocamera"

    const-string v2, "Could not start media recorder. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1424
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->releaseMediaRecorder()V

    goto :goto_0
.end method

.method private stopVideoRecording()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1555
    const-string v0, "videocamera"

    const-string v1, "stopVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_1

    .line 1558
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1559
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1561
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 1562
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1563
    const-string v0, "videocamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting current video filename: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v4

    .line 1570
    :goto_0
    iput-boolean v3, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    .line 1571
    invoke-direct {p0, v3}, Lcom/android/camera/VideoCamera;->showRecordingUI(Z)V

    .line 1572
    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v1, :cond_0

    .line 1573
    invoke-direct {p0, v4}, Lcom/android/camera/VideoCamera;->enableCameraControls(Z)V

    .line 1575
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->keepScreenOnAwhile()V

    .line 1576
    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/android/camera/VideoCamera;->mStorageSpace:J

    const-wide/32 v2, 0x80000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 1577
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->registerVideo()V

    .line 1580
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->releaseMediaRecorder()V

    .line 1581
    return-void

    .line 1566
    :catch_0
    move-exception v0

    .line 1567
    const-string v1, "videocamera"

    const-string v2, "stop fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1568
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->deleteVideoFile(Ljava/lang/String;)V

    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method private switchToCameraMode()Z
    .locals 1

    .prologue
    .line 1788
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 1791
    :goto_0
    return v0

    .line 1789
    :cond_1
    invoke-static {p0}, Lcom/android/camera/MenuHelper;->gotoCameraMode(Landroid/app/Activity;)V

    .line 1790
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->finish()V

    .line 1791
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateAndShowStorageHint()V
    .locals 2

    .prologue
    .line 678
    invoke-static {}, Lcom/android/camera/Storage;->getAvailableSpace()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/VideoCamera;->mStorageSpace:J

    .line 679
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showStorageHint()V

    .line 680
    return-void
.end method

.method private updateRecordingTime()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1687
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    .line 1733
    :goto_0
    return-void

    .line 1690
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1691
    iget-wide v2, p0, Lcom/android/camera/VideoCamera;->mRecordingStartTime:J

    sub-long/2addr v0, v2

    .line 1695
    iget v2, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    const v3, 0xea60

    sub-int/2addr v2, v3

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    move v2, v8

    .line 1699
    :goto_1
    if-eqz v2, :cond_5

    .line 1700
    const-wide/16 v3, 0x0

    iget v5, p0, Lcom/android/camera/VideoCamera;->mMaxVideoDurationInMs:I

    int-to-long v5, v5

    sub-long/2addr v5, v0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    const-wide/16 v5, 0x3e7

    add-long/2addr v3, v5

    .line 1705
    :goto_2
    iget-boolean v5, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    if-nez v5, :cond_3

    .line 1706
    invoke-static {v3, v4, v7}, Lcom/android/camera/VideoCamera;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v3

    .line 1707
    const-wide/16 v4, 0x3e8

    move-wide v9, v4

    move-object v5, v3

    move-wide v3, v9

    .line 1716
    :goto_3
    iget-object v6, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1718
    iget-boolean v5, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeCountsDown:Z

    if-eq v5, v2, :cond_1

    .line 1721
    iput-boolean v2, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeCountsDown:Z

    .line 1723
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v2, :cond_4

    const v2, 0x7f080001

    :goto_4
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 1727
    iget-object v5, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1730
    :cond_1
    rem-long/2addr v0, v3

    sub-long v0, v3, v0

    .line 1731
    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    move v2, v7

    .line 1695
    goto :goto_1

    .line 1712
    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/android/camera/VideoCamera;->getTimeLapseVideoLength(J)J

    move-result-wide v3

    invoke-static {v3, v4, v8}, Lcom/android/camera/VideoCamera;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v3

    .line 1713
    iget v4, p0, Lcom/android/camera/VideoCamera;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-long v4, v4

    move-wide v9, v4

    move-object v5, v3

    move-wide v3, v9

    goto :goto_3

    .line 1723
    :cond_4
    const/high16 v2, 0x7f08

    goto :goto_4

    :cond_5
    move-wide v3, v0

    goto :goto_2
.end method

.method private updateThumbnailButton()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1619
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mThumbnailButton:Lcom/android/camera/RotateImageView;

    if-nez v1, :cond_0

    .line 1632
    :goto_0
    return-void

    .line 1620
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mThumbnailButton:Lcom/android/camera/RotateImageView;

    invoke-virtual {v1}, Lcom/android/camera/RotateImageView;->isUriValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1621
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1}, Lcom/android/camera/Storage;->getLastVideoThumbnail(Landroid/content/ContentResolver;)Lcom/android/camera/Storage$Thumbnail;

    move-result-object v0

    .line 1623
    .local v0, thumbnail:Lcom/android/camera/Storage$Thumbnail;
    if-eqz v0, :cond_2

    .line 1624
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mThumbnailButton:Lcom/android/camera/RotateImageView;

    invoke-virtual {v0}, Lcom/android/camera/Storage$Thumbnail;->getOriginalUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v3}, Lcom/android/camera/Storage$Thumbnail;->getBitmap(Landroid/content/ContentResolver;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/RotateImageView;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 1630
    .end local v0           #thumbnail:Lcom/android/camera/Storage$Thumbnail;
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mThumbnailButton:Lcom/android/camera/RotateImageView;

    iget-object v2, p0, Lcom/android/camera/VideoCamera;->mThumbnailButton:Lcom/android/camera/RotateImageView;

    invoke-virtual {v2}, Lcom/android/camera/RotateImageView;->getUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/camera/RotateImageView;->setVisibility(I)V

    goto :goto_0

    .line 1627
    .restart local v0       #thumbnail:Lcom/android/camera/Storage$Thumbnail;
    :cond_2
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mThumbnailButton:Lcom/android/camera/RotateImageView;

    invoke-virtual {v1, v2, v2}, Lcom/android/camera/RotateImageView;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 1630
    .end local v0           #thumbnail:Lcom/android/camera/Storage$Thumbnail;
    :cond_3
    const/16 v2, 0x8

    goto :goto_2
.end method

.method private viewVideo(Lcom/android/camera/RotateImageView;)V
    .locals 4
    .parameter

    .prologue
    .line 1537
    invoke-virtual {p1}, Lcom/android/camera/RotateImageView;->isUriValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1538
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.REVIEW"

    invoke-virtual {p1}, Lcom/android/camera/RotateImageView;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1540
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1552
    :goto_0
    return-void

    .line 1541
    :catch_0
    move-exception v0

    .line 1543
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p1}, Lcom/android/camera/RotateImageView;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1544
    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1545
    :catch_1
    move-exception v0

    .line 1546
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "review video fail. uri="

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

    .line 1550
    :cond_0
    const-string v0, "videocamera"

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

    goto :goto_0
.end method


# virtual methods
.method buildProfileQuality(I[I)Ljava/util/HashMap;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 775
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 778
    const/4 v1, 0x0

    move v2, v5

    move v3, v5

    :goto_0
    array-length v4, p2

    if-ge v1, v4, :cond_4

    .line 779
    aget v4, p2, v1

    invoke-static {p1, v4}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 780
    if-ne v3, v5, :cond_1

    .line 781
    aget v2, p2, v1

    .line 786
    :goto_1
    aget v3, p2, v1

    move v6, v3

    move v3, v2

    move v2, v6

    .line 778
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 782
    :cond_1
    if-ne v5, v5, :cond_3

    .line 783
    aget v1, p2, v1

    .line 789
    :goto_2
    if-ne v1, v5, :cond_2

    move v1, v3

    .line 792
    :cond_2
    const v4, 0x7f0b0024

    invoke-virtual {p0, v4}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    const v4, 0x7f0b0025

    invoke-virtual {p0, v4}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    const v1, 0x7f0b0027

    invoke-virtual {p0, v1}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    const v1, 0x7f0b0026

    invoke-virtual {p0, v1}, Lcom/android/camera/VideoCamera;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    return-object v0

    :cond_3
    move v2, v3

    goto :goto_1

    :cond_4
    move v1, v5

    goto :goto_2
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "m"

    .prologue
    .line 1937
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPopupGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mPopupGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1938
    const/4 v0, 0x1

    .line 1941
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method getProfileQuality(ILjava/lang/String;Z)I
    .locals 2
    .parameter "cameraId"
    .parameter "quality"
    .parameter "captureTimeLapse"

    .prologue
    .line 751
    if-eqz p3, :cond_2

    .line 752
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mTimeLapseProfileQuality:[Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 753
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getNumberOfCameras()I

    move-result v1

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mTimeLapseProfileQuality:[Ljava/util/HashMap;

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mTimeLapseProfileQuality:[Ljava/util/HashMap;

    .line 757
    .local v0, qualityMap:[Ljava/util/HashMap;,"[Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    aget-object v1, v0, p1

    if-nez v1, :cond_1

    .line 758
    sget-object v1, Lcom/android/camera/VideoCamera;->TIME_LAPSE_VIDEO_QUALITY:[I

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/VideoCamera;->buildProfileQuality(I[I)Ljava/util/HashMap;

    move-result-object v1

    aput-object v1, v0, p1

    .line 770
    :cond_1
    :goto_0
    aget-object v1, v0, p1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 761
    .end local v0           #qualityMap:[Ljava/util/HashMap;,"[Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local p0
    :cond_2
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mProfileQuality:[Ljava/util/HashMap;

    if-nez v1, :cond_3

    .line 762
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getNumberOfCameras()I

    move-result v1

    new-array v1, v1, [Ljava/util/HashMap;

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mProfileQuality:[Ljava/util/HashMap;

    .line 765
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mProfileQuality:[Ljava/util/HashMap;

    .line 766
    .restart local v0       #qualityMap:[Ljava/util/HashMap;,"[Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    aget-object v1, v0, p1

    if-nez v1, :cond_1

    .line 767
    sget-object v1, Lcom/android/camera/VideoCamera;->VIDEO_QUALITY:[I

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/VideoCamera;->buildProfileQuality(I[I)Ljava/util/HashMap;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 988
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPausing:Z

    if-eqz v0, :cond_1

    .line 994
    :cond_0
    :goto_0
    return-void

    .line 989
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_2

    .line 990
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->onStopVideoRecording(Z)V

    goto :goto_0

    .line 991
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->collapseCameraControls()Z

    move-result v0

    if-nez v0, :cond_0

    .line 992
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 610
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 612
    :sswitch_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->deleteCurrentVideo()V

    .line 613
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->hideAlert()V

    goto :goto_0

    .line 616
    :sswitch_1
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startPlayVideoActivity()V

    goto :goto_0

    .line 619
    :sswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->doReturnToCaller(Z)V

    goto :goto_0

    .line 622
    :sswitch_3
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()V

    .line 623
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->doReturnToCaller(Z)V

    goto :goto_0

    .line 626
    :sswitch_4
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnailButton:Lcom/android/camera/RotateImageView;

    invoke-direct {p0, v0}, Lcom/android/camera/VideoCamera;->viewVideo(Lcom/android/camera/RotateImageView;)V

    goto :goto_0

    .line 629
    :sswitch_5
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->gotoGallery()V

    goto :goto_0

    .line 610
    :sswitch_data_0
    .sparse-switch
        0x7f0a0000 -> :sswitch_5
        0x7f0a0003 -> :sswitch_3
        0x7f0a0004 -> :sswitch_0
        0x7f0a0005 -> :sswitch_1
        0x7f0a0007 -> :sswitch_2
        0x7f0a0028 -> :sswitch_4
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 1804
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1811
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->changeHeadUpDisplayState()V

    .line 1812
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v9, 0x0

    .line 321
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 323
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 326
    .local v5, win:Landroid/view/Window;
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "screen_brightness_mode"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 330
    .local v2, mode:I
    const/4 v7, 0x1

    if-ne v2, v7, :cond_0

    .line 331
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 332
    .local v6, winParams:Landroid/view/WindowManager$LayoutParams;
    const v7, 0x3f333333

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 333
    invoke-virtual {v5, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 336
    .end local v6           #winParams:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    new-instance v7, Lcom/android/camera/ComboPreferences;

    invoke-direct {v7, p0}, Lcom/android/camera/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    .line 337
    iget-object v7, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v7}, Lcom/android/camera/ComboPreferences;->getGlobal()Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-static {v7}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 338
    iget-object v7, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-static {v7}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v7

    iput v7, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    .line 341
    invoke-static {p0}, Lcom/android/camera/Util;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v1

    .line 342
    .local v1, intentCameraId:I
    const/4 v7, -0x1

    if-eq v1, v7, :cond_1

    .line 343
    iput v1, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    .line 346
    :cond_1
    iget-object v7, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    iget v8, p0, Lcom/android/camera/VideoCamera;->mCameraId:I

    invoke-virtual {v7, p0, v8}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 347
    iget-object v7, p0, Lcom/android/camera/VideoCamera;->mPreferences:Lcom/android/camera/ComboPreferences;

    invoke-virtual {v7}, Lcom/android/camera/ComboPreferences;->getLocal()Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-static {v7}, Lcom/android/camera/CameraSettings;->upgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 349
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/CameraHolder;->getNumberOfCameras()I

    move-result v7

    iput v7, p0, Lcom/android/camera/VideoCamera;->mNumberOfCameras:I

    .line 355
    new-instance v4, Ljava/lang/Thread;

    new-instance v7, Lcom/android/camera/VideoCamera$1;

    invoke-direct {v7, p0}, Lcom/android/camera/VideoCamera$1;-><init>(Lcom/android/camera/VideoCamera;)V

    invoke-direct {v4, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 367
    .local v4, startPreviewThread:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 369
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/VideoCamera;->mContentResolver:Landroid/content/ContentResolver;

    .line 371
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/android/camera/VideoCamera;->requestWindowFeature(I)Z

    .line 372
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->isVideoCaptureIntent()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    .line 373
    iget-boolean v7, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v7, :cond_3

    .line 374
    const v7, 0x7f040010

    invoke-virtual {p0, v7}, Lcom/android/camera/VideoCamera;->setContentView(I)V

    .line 376
    const v7, 0x7f0a0002

    invoke-virtual {p0, v7}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/VideoCamera;->mReviewControl:Landroid/view/View;

    .line 377
    iget-object v7, p0, Lcom/android/camera/VideoCamera;->mReviewControl:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 378
    const v7, 0x7f0a0003

    invoke-virtual {p0, v7}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    const v7, 0x7f0a0007

    invoke-virtual {p0, v7}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    const v7, 0x7f0a0005

    invoke-virtual {p0, v7}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    const v7, 0x7f0a0004

    invoke-virtual {p0, v7}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 382
    .local v3, retake:Landroid/view/View;
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    instance-of v7, v3, Landroid/widget/ImageView;

    if-eqz v7, :cond_2

    .line 384
    check-cast v3, Landroid/widget/ImageView;

    .end local v3           #retake:Landroid/view/View;
    const v7, 0x7f020026

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 398
    :goto_0
    const v7, 0x7f0a001d

    invoke-virtual {p0, v7}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/camera/PreviewFrameLayout;

    iput-object v7, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    .line 400
    iget-object v7, p0, Lcom/android/camera/VideoCamera;->mPreviewFrameLayout:Lcom/android/camera/PreviewFrameLayout;

    invoke-virtual {v7, p0}, Lcom/android/camera/PreviewFrameLayout;->setOnSizeChangedListener(Lcom/android/camera/PreviewFrameLayout$OnSizeChangedListener;)V

    .line 402
    const v7, 0x7f0a0020

    invoke-virtual {p0, v7}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/SurfaceView;

    iput-object v7, p0, Lcom/android/camera/VideoCamera;->mVideoPreview:Landroid/view/SurfaceView;

    .line 403
    const v7, 0x7f0a0025

    invoke-virtual {p0, v7}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/camera/VideoCamera;->mVideoFrame:Landroid/widget/ImageView;

    .line 408
    iget-object v7, p0, Lcom/android/camera/VideoCamera;->mVideoPreview:Landroid/view/SurfaceView;

    invoke-virtual {v7}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 409
    .local v0, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 410
    const/4 v7, 0x3

    invoke-interface {v0, v7}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 412
    invoke-virtual {p0}, Lcom/android/camera/VideoCamera;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "android.intent.extra.quickCapture"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/camera/VideoCamera;->mQuickCapture:Z

    .line 414
    const v7, 0x7f0a0006

    invoke-virtual {p0, v7}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/camera/ShutterButton;

    iput-object v7, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    .line 415
    iget-object v7, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    const v8, 0x7f020027

    invoke-virtual {v7, v8}, Lcom/android/camera/ShutterButton;->setImageResource(I)V

    .line 416
    iget-object v7, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v7, p0}, Lcom/android/camera/ShutterButton;->setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V

    .line 417
    iget-object v7, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v7}, Lcom/android/camera/ShutterButton;->requestFocus()Z

    .line 419
    const v7, 0x7f0a0026

    invoke-virtual {p0, v7}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/camera/VideoCamera;->mRecordingTimeView:Landroid/widget/TextView;

    .line 420
    new-instance v7, Lcom/android/camera/VideoCamera$MyOrientationEventListener;

    invoke-direct {v7, p0, p0}, Lcom/android/camera/VideoCamera$MyOrientationEventListener;-><init>(Lcom/android/camera/VideoCamera;Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/camera/VideoCamera;->mOrientationListener:Lcom/android/camera/VideoCamera$MyOrientationEventListener;

    .line 421
    const v7, 0x7f0a0027

    invoke-virtual {p0, v7}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/VideoCamera;->mTimeLapseLabel:Landroid/view/View;

    .line 422
    const v7, 0x7f0a001f

    invoke-virtual {p0, v7}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/VideoCamera;->mPreviewBorder:Landroid/view/View;

    .line 426
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Thread;->join()V

    .line 427
    iget-boolean v7, p0, Lcom/android/camera/VideoCamera;->mOpenCameraFail:Z

    if-eqz v7, :cond_4

    .line 428
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->showCameraErrorAndFinish()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :goto_1
    return-void

    .line 386
    .end local v0           #holder:Landroid/view/SurfaceHolder;
    .restart local v3       #retake:Landroid/view/View;
    :cond_2
    check-cast v3, Landroid/widget/Button;

    .end local v3           #retake:Landroid/view/View;
    const v7, 0x7f02006f

    invoke-virtual {v3, v7, v9, v9, v9}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_0

    .line 390
    :cond_3
    const v7, 0x7f04000f

    invoke-virtual {p0, v7}, Lcom/android/camera/VideoCamera;->setContentView(I)V

    .line 392
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initThumbnailButton()V

    .line 393
    const v7, 0x7f0a000d

    invoke-virtual {p0, v7}, Lcom/android/camera/VideoCamera;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/camera/SwitcherSet;

    iput-object v7, p0, Lcom/android/camera/VideoCamera;->mSwitcher:Lcom/android/camera/SwitcherSet;

    .line 394
    iget-object v7, p0, Lcom/android/camera/VideoCamera;->mSwitcher:Lcom/android/camera/SwitcherSet;

    invoke-virtual {v7, v9}, Lcom/android/camera/SwitcherSet;->setVisibility(I)V

    .line 395
    iget-object v7, p0, Lcom/android/camera/VideoCamera;->mSwitcher:Lcom/android/camera/SwitcherSet;

    invoke-virtual {v7, p0}, Lcom/android/camera/SwitcherSet;->setOnSwitchListener(Lcom/android/camera/Switcher$OnSwitchListener;)V

    goto/16 :goto_0

    .line 431
    .restart local v0       #holder:Landroid/view/SurfaceHolder;
    :catch_0
    move-exception v7

    .line 435
    :cond_4
    iget-boolean v7, p0, Lcom/android/camera/VideoCamera;->mCaptureTimeLapse:Z

    invoke-direct {p0, v7}, Lcom/android/camera/VideoCamera;->showTimeLapseUI(Z)V

    .line 436
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resizeForPreviewAspectRatio()V

    .line 438
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/CameraHolder;->getBackCameraId()I

    move-result v7

    iput v7, p0, Lcom/android/camera/VideoCamera;->mBackCameraId:I

    .line 439
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/CameraHolder;->getFrontCameraId()I

    move-result v7

    iput v7, p0, Lcom/android/camera/VideoCamera;->mFrontCameraId:I

    .line 442
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeIndicatorWheel()V

    .line 444
    iget-object v7, p0, Lcom/android/camera/VideoCamera;->mIndicatorWheel:Lcom/android/camera/ui/IndicatorWheel;

    if-nez v7, :cond_5

    .line 445
    new-instance v7, Lcom/android/camera/ui/CamcorderHeadUpDisplay;

    invoke-direct {v7, p0}, Lcom/android/camera/ui/CamcorderHeadUpDisplay;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/camera/VideoCamera;->mHeadUpDisplay:Lcom/android/camera/ui/CamcorderHeadUpDisplay;

    .line 446
    iget-object v7, p0, Lcom/android/camera/VideoCamera;->mHeadUpDisplay:Lcom/android/camera/ui/CamcorderHeadUpDisplay;

    new-instance v8, Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/android/camera/VideoCamera$MyHeadUpDisplayListener;-><init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V

    invoke-virtual {v7, v8}, Lcom/android/camera/ui/CamcorderHeadUpDisplay;->setListener(Lcom/android/camera/ui/HeadUpDisplay$Listener;)V

    .line 447
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeHeadUpDisplay()V

    .line 449
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->initializeCameraPicker()V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 1087
    invoke-super {p0, p1}, Lcom/android/camera/ActivityBase;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1089
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 1091
    const/4 v0, 0x0

    .line 1095
    :goto_0
    return v0

    .line 1093
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->addBaseMenuItems(Landroid/view/Menu;)V

    .line 1095
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 1
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 1369
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1371
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()V

    .line 1372
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateAndShowStorageHint()V

    .line 1374
    :cond_0
    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1378
    const/16 v0, 0x320

    if-ne p2, v0, :cond_1

    .line 1379
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/camera/VideoCamera;->onStopVideoRecording(Z)V

    .line 1388
    :cond_0
    :goto_0
    return-void

    .line 1380
    :cond_1
    const/16 v0, 0x321

    if-ne p2, v0, :cond_0

    .line 1382
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lcom/android/camera/VideoCamera;->onStopVideoRecording(Z)V

    .line 1385
    :cond_2
    const v0, 0x7f0b0077

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 999
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPausing:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 1021
    :goto_0
    return v0

    .line 1003
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1021
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1005
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1006
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->performClick()Z

    move v0, v1

    .line 1007
    goto :goto_0

    .line 1011
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1012
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/android/camera/ShutterButton;->performClick()Z

    move v0, v1

    .line 1013
    goto :goto_0

    .line 1017
    :sswitch_2
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 1003
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_1
        0x1b -> :sswitch_0
        0x52 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1026
    packed-switch p1, :pswitch_data_0

    .line 1031
    invoke-super {p0, p1, p2}, Lcom/android/camera/ActivityBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1028
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setPressed(Z)V

    .line 1029
    const/4 v0, 0x1

    goto :goto_0

    .line 1026
    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 952
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onPause()V

    .line 953
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPausing:Z

    .line 955
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->changeHeadUpDisplayState()V

    .line 956
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorWheel:Lcom/android/camera/ui/IndicatorWheel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mIndicatorWheel:Lcom/android/camera/ui/IndicatorWheel;

    invoke-virtual {v0}, Lcom/android/camera/ui/IndicatorWheel;->dismissSettingPopup()Z

    .line 958
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->finishRecorderAndCloseCamera()V

    .line 960
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 961
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/camera/VideoCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 962
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 964
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resetScreenOn()V

    .line 966
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnailButton:Lcom/android/camera/RotateImageView;

    if-eqz v0, :cond_2

    .line 967
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mThumbnailButton:Lcom/android/camera/RotateImageView;

    sget-object v1, Lcom/android/camera/VideoCamera;->LAST_THUMB_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/RotateImageView;->storeData(Ljava/lang/String;)Z

    .line 970
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    if-eqz v0, :cond_3

    .line 971
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    invoke-virtual {v0}, Lcom/android/camera/OnScreenHint;->cancel()V

    .line 972
    iput-object v2, p0, Lcom/android/camera/VideoCamera;->mStorageHint:Lcom/android/camera/OnScreenHint;

    .line 975
    :cond_3
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mOrientationListener:Lcom/android/camera/VideoCamera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->disable()V

    .line 977
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 978
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 832
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onResume()V

    .line 833
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPausing:Z

    .line 837
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mOrientationListener:Lcom/android/camera/VideoCamera$MyOrientationEventListener;

    invoke-virtual {v0}, Lcom/android/camera/VideoCamera$MyOrientationEventListener;->enable()V

    .line 838
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mOpenCameraFail:Z

    if-nez v0, :cond_2

    .line 839
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->openCamera()Z

    move-result v0

    if-nez v0, :cond_1

    .line 875
    :cond_0
    :goto_0
    return-void

    .line 840
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->readVideoPreferences()V

    .line 841
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->resizeForPreviewAspectRatio()V

    .line 842
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startPreview()V

    .line 844
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->keepScreenOnAwhile()V

    .line 847
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 849
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 850
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 851
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 852
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 853
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 854
    new-instance v1, Lcom/android/camera/VideoCamera$MyBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/VideoCamera$MyBroadcastReceiver;-><init>(Lcom/android/camera/VideoCamera;Lcom/android/camera/VideoCamera$1;)V

    iput-object v1, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 855
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/VideoCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 856
    invoke-static {}, Lcom/android/camera/Storage;->getAvailableSpace()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/VideoCamera;->mStorageSpace:J

    .line 858
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/VideoCamera$2;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoCamera$2;-><init>(Lcom/android/camera/VideoCamera;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 864
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->changeHeadUpDisplayState()V

    .line 867
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_3

    .line 868
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->updateThumbnailButton()V

    .line 871
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    if-eqz v0, :cond_0

    .line 872
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/VideoCamera;->mOnResumeTime:J

    .line 873
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onShutterButtonClick(Lcom/android/camera/ShutterButton;)V
    .locals 5
    .parameter "button"

    .prologue
    .line 652
    invoke-virtual {p1}, Lcom/android/camera/ShutterButton;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 654
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->collapseCameraControls()Z

    move-result v1

    if-nez v1, :cond_0

    .line 655
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    .line 657
    .local v0, stop:Z
    if-eqz v0, :cond_2

    .line 658
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/camera/VideoCamera;->onStopVideoRecording(Z)V

    .line 662
    :goto_1
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mShutterButton:Lcom/android/camera/ShutterButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 667
    iget-boolean v1, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    .line 668
    :cond_1
    iget-object v1, p0, Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 660
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startVideoRecording()V

    goto :goto_1

    .line 652
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0006
        :pswitch_0
    .end packed-switch
.end method

.method public onShutterButtonFocus(Lcom/android/camera/ShutterButton;Z)V
    .locals 0
    .parameter "button"
    .parameter "pressed"

    .prologue
    .line 636
    return-void
.end method

.method public onSizeChanged()V
    .locals 0

    .prologue
    .line 1816
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 594
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onStart()V

    .line 595
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mSwitcher:Lcom/android/camera/SwitcherSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/SwitcherSet;->setSwitch(Z)V

    .line 598
    :cond_0
    return-void
.end method

.method public onSwitchChanged(Lcom/android/camera/Switcher;Z)Z
    .locals 1
    .parameter "source"
    .parameter "onOff"

    .prologue
    const/4 v0, 0x1

    .line 1795
    if-ne p2, v0, :cond_0

    .line 1796
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->switchToCameraMode()Z

    move-result v0

    .line 1798
    :cond_0
    return v0
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 982
    invoke-super {p0}, Lcom/android/camera/ActivityBase;->onUserInteraction()V

    .line 983
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->keepScreenOnAwhile()V

    .line 984
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1036
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1037
    const-string v0, "videocamera"

    const-string v1, "holder.getSurface() == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    :cond_0
    :goto_0
    return-void

    .line 1041
    :cond_1
    const-string v0, "videocamera"

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

    .line 1043
    iput-object p1, p0, Lcom/android/camera/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1045
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPausing:Z

    if-nez v0, :cond_0

    .line 1058
    iget-object v0, p0, Lcom/android/camera/VideoCamera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 1065
    iget-boolean v0, p0, Lcom/android/camera/VideoCamera;->mPreviewing:Z

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iget v1, p0, Lcom/android/camera/VideoCamera;->mDisplayRotation:I

    if-ne v0, v1, :cond_2

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1067
    invoke-direct {p0, p1}, Lcom/android/camera/VideoCamera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 1069
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->stopVideoRecording()V

    .line 1070
    invoke-direct {p0}, Lcom/android/camera/VideoCamera;->startPreview()V

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 1075
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 1078
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1079
    return-void
.end method
