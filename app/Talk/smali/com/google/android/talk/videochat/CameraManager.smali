.class public Lcom/google/android/talk/videochat/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/videochat/CameraManager$CameraPreviewCallback;,
        Lcom/google/android/talk/videochat/CameraManager$CameraParametersCallback;,
        Lcom/google/android/talk/videochat/CameraManager$CameraParameters;
    }
.end annotation


# static fields
.field private static final CAMERA_STATE_CLOSED:I = 0x0

.field private static final CAMERA_STATE_NATIVE_WANTS:I = 0x1

.field private static final CAMERA_STATE_RUNNING:I = 0x2

.field private static final CAMERA_STATE_SUSPENDED:I = 0x3

.field private static final DEFAULT_FRAME_RATE:I = 0x1e

.field private static final DELAY_BEFORE_FIRST_DIM_FRAME_PUSH_MS:I = 0x3e8

.field private static final DELAY_BETWEEN_DIM_FRAME_PUSH_MS:I = 0x3e8

.field private static final HOLD_FRAME_DIM_AMOUNT:I = 0x28

.field private static final MAX_FRAME_RATE:I = 0x1e

.field private static final NANOSECONDS_PER_SECOND:J = 0x3b9aca00L

.field private static final NUM_PREVIEW_BUFFERS:I = 0x3

.field private static final PAUSE_ICON_CHROME:I = -0x80

.field private static final PAUSE_ICON_LUMA:I = -0x10

.field private static final PAUSE_ICON_X_GAP:I = 0x3

.field private static final PAUSE_ICON_X_OFFSET:I = 0xf

.field private static final PAUSE_ICON_X_SIZE:I = 0x3

.field private static final PAUSE_ICON_Y_OFFSET:I = 0xf

.field private static final PAUSE_ICON_Y_SIZE:I = 0x9

.field private static final TAG:Ljava/lang/String; = "Talk:CameraManager"

.field private static final TEST_STABILIZATION:Ljava/lang/String;

.field private static sInstance:Lcom/google/android/talk/videochat/CameraManager;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private mCallback:Lcom/google/android/talk/videochat/CameraManager$CameraParametersCallback;

.field private mCamera:Landroid/hardware/Camera;

.field private final mCameraLock:Ljava/lang/Object;

.field private mCameraPreviewFormat:I

.field private mCameraPreviewFrameRate:I

.field private mCameraPreviewHeight:I

.field private mCameraPreviewWidth:I

.field private mCameraState:I

.field private mCurrentCameraId:I

.field private mCurrentCameraIsFrontFacing:Z

.field private mDeviceOrientation:I

.field private mDisableCamera:Z

.field private mFramePusher:Landroid/os/Handler;

.field private mFrameRotationForDisplay:I

.field private mFrameRotationForEncode:I

.field private mHaveReadCameraIds:Z

.field private mLastCameraBuffer:[B

.field private mLastCameraBufferRotation:I

.field private mLastFrameTime:J

.field private mLastReportedParameters:Lcom/google/android/talk/videochat/CameraManager$CameraParameters;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMinDurationBetweenFrames:J

.field private mNativePreviewCallbackRef:I

.field private mPreferredBackCameraId:I

.field private mPreferredFrontCameraId:I

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/talk/videochat/CameraManager;->TEST_STABILIZATION:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/talk/videochat/CameraManager;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    .line 118
    iput-boolean v2, p0, Lcom/google/android/talk/videochat/CameraManager;->mHaveReadCameraIds:Z

    .line 127
    iput v2, p0, Lcom/google/android/talk/videochat/CameraManager;->mNativePreviewCallbackRef:I

    .line 137
    iput v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mDeviceOrientation:I

    .line 141
    iput v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraPreviewWidth:I

    .line 142
    iput v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraPreviewHeight:I

    .line 175
    const-string v0, "Talk.disableCamera"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    const-string v0, "Talk:CameraManager"

    const-string v1, "Disabling camera"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/videochat/CameraManager;->mDisableCamera:Z

    .line 181
    :cond_0
    const-wide/32 v0, 0x1fca055

    iput-wide v0, p0, Lcom/google/android/talk/videochat/CameraManager;->mMinDurationBetweenFrames:J

    .line 183
    invoke-static {}, Lcom/google/android/talk/TalkApp;->refreshTalkLogLevel()I

    .line 184
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/talk/videochat/CameraManager;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/talk/videochat/CameraManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CameraManager;->nativePushPausedFrame()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/talk/videochat/CameraManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/google/android/talk/videochat/CameraManager;->mNativePreviewCallbackRef:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/talk/videochat/CameraManager;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/google/android/talk/videochat/CameraManager;->mLastFrameTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/google/android/talk/videochat/CameraManager;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/google/android/talk/videochat/CameraManager;->mLastFrameTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/google/android/talk/videochat/CameraManager;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/google/android/talk/videochat/CameraManager;->mMinDurationBetweenFrames:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/google/android/talk/videochat/CameraManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/google/android/talk/videochat/CameraManager;->mFrameRotationForEncode:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/talk/videochat/CameraManager;I[BJI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 31
    invoke-direct/range {p0 .. p5}, Lcom/google/android/talk/videochat/CameraManager;->nativePushFrame(I[BJI)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/talk/videochat/CameraManager;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/talk/videochat/CameraManager;->mLastCameraBuffer:[B

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/android/talk/videochat/CameraManager;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/android/talk/videochat/CameraManager;->mLastCameraBuffer:[B

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/android/talk/videochat/CameraManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/google/android/talk/videochat/CameraManager;->mLastCameraBufferRotation:I

    return p1
.end method

.method static synthetic access$900(Lcom/google/android/talk/videochat/CameraManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/talk/videochat/CameraManager;->mFramePusher:Landroid/os/Handler;

    return-object v0
.end method

.method public static acquireCameraNative()Z
    .locals 1

    .prologue
    .line 1100
    invoke-static {}, Lcom/google/android/talk/videochat/CameraManager;->getInstance()Lcom/google/android/talk/videochat/CameraManager;

    move-result-object v0

    invoke-direct {v0}, Lcom/google/android/talk/videochat/CameraManager;->openCameraForNative()Z

    move-result v0

    return v0
.end method

.method private static convertIntegerListToIntArray(Ljava/util/List;)[I
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 1042
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    new-array v3, v5, [I

    .line 1043
    .local v3, intarray:[I
    const/4 v0, 0x0

    .line 1044
    .local v0, i:I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1045
    .local v4, value:Ljava/lang/Integer;
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v3, v0

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_0

    .line 1047
    .end local v4           #value:Ljava/lang/Integer;
    :cond_0
    return-object v3
.end method

.method private createCameraParameters()Lcom/google/android/talk/videochat/CameraManager$CameraParameters;
    .locals 4

    .prologue
    .line 344
    new-instance v0, Lcom/google/android/talk/videochat/CameraManager$CameraParameters;

    invoke-direct {v0, p0}, Lcom/google/android/talk/videochat/CameraManager$CameraParameters;-><init>(Lcom/google/android/talk/videochat/CameraManager;)V

    .line 345
    .local v0, params:Lcom/google/android/talk/videochat/CameraManager$CameraParameters;
    iget-boolean v2, p0, Lcom/google/android/talk/videochat/CameraManager;->mCurrentCameraIsFrontFacing:Z

    iput-boolean v2, v0, Lcom/google/android/talk/videochat/CameraManager$CameraParameters;->shouldFlip:Z

    .line 346
    iget v2, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraPreviewWidth:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 347
    iget v2, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraPreviewWidth:I

    iput v2, v0, Lcom/google/android/talk/videochat/CameraManager$CameraParameters;->width:I

    .line 348
    iget v2, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraPreviewHeight:I

    iput v2, v0, Lcom/google/android/talk/videochat/CameraManager$CameraParameters;->height:I

    .line 361
    :cond_0
    :goto_0
    iget v2, p0, Lcom/google/android/talk/videochat/CameraManager;->mFrameRotationForDisplay:I

    iput v2, v0, Lcom/google/android/talk/videochat/CameraManager$CameraParameters;->frameRotationForDisplay:I

    .line 362
    return-object v0

    .line 355
    :cond_1
    iget-object v2, p0, Lcom/google/android/talk/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_0

    .line 356
    iget-object v2, p0, Lcom/google/android/talk/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 357
    .local v1, size:Landroid/hardware/Camera$Size;
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iput v2, v0, Lcom/google/android/talk/videochat/CameraManager$CameraParameters;->width:I

    .line 358
    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    iput v2, v0, Lcom/google/android/talk/videochat/CameraManager$CameraParameters;->height:I

    goto :goto_0
.end method

.method private createLastFramePusher()V
    .locals 4

    .prologue
    .line 760
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/google/android/talk/videochat/CameraManager$1;

    invoke-direct {v1, p0}, Lcom/google/android/talk/videochat/CameraManager$1;-><init>(Lcom/google/android/talk/videochat/CameraManager;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/CameraManager;->mFramePusher:Landroid/os/Handler;

    .line 774
    iget-object v0, p0, Lcom/google/android/talk/videochat/CameraManager;->mFramePusher:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 775
    return-void
.end method

.method private destroyLastFramePusher()V
    .locals 2

    .prologue
    .line 779
    iget-object v0, p0, Lcom/google/android/talk/videochat/CameraManager;->mFramePusher:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/google/android/talk/videochat/CameraManager;->mFramePusher:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 781
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/videochat/CameraManager;->mFramePusher:Landroid/os/Handler;

    .line 783
    :cond_0
    return-void
.end method

.method private dimFrame([B)V
    .locals 5
    .parameter "framedata"

    .prologue
    const/16 v4, 0x28

    .line 641
    array-length v3, p1

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v2, v3, 0x3

    .line 643
    .local v2, yplaneLength:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 644
    aget-byte v1, p1, v0

    .line 645
    .local v1, pixel:I
    if-ltz v1, :cond_0

    if-ge v1, v4, :cond_0

    .line 646
    const/4 v1, 0x0

    .line 650
    :goto_1
    and-int/lit16 v3, v1, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    .line 643
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 648
    :cond_0
    sub-int/2addr v1, v4

    goto :goto_1

    .line 652
    .end local v1           #pixel:I
    :cond_1
    return-void
.end method

.method private drawPauseIcon([BIII)V
    .locals 29
    .parameter "framedata"
    .parameter "frameWidth"
    .parameter "frameHeight"
    .parameter "rotation"

    .prologue
    .line 660
    sparse-switch p4, :sswitch_data_0

    .line 705
    const-string v2, "Talk:CameraManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepareHoldFrame Unknown rotation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/talk/TalkApp;->Logwtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    :goto_0
    return-void

    .line 662
    :sswitch_0
    const/16 v27, 0xf

    .line 663
    .local v27, yRelativeOffset:I
    const/16 v23, 0xf

    .line 664
    .local v23, xRelativeOffset:I
    const/16 v28, 0x9

    .line 665
    .local v28, yRelativeSize:I
    const/16 v24, 0x3

    .line 666
    .local v24, xRelativeSize:I
    const/16 v26, 0x0

    .line 667
    .local v26, yRelativeGap:I
    const/16 v22, 0x3

    .line 668
    .local v22, xRelativeGap:I
    move/from16 v20, p2

    .line 669
    .local v20, rotatedFrameWidth:I
    move/from16 v19, p3

    .line 712
    .local v19, rotatedFrameHeight:I
    :goto_1
    move/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 713
    .local v18, maxFrameDimension:I
    mul-int v2, p3, v27

    div-int/lit8 v2, v2, 0x64

    and-int/lit8 v6, v2, -0x2

    .line 714
    .local v6, yPixelOffset:I
    mul-int v2, p2, v23

    div-int/lit8 v2, v2, 0x64

    and-int/lit8 v7, v2, -0x2

    .line 715
    .local v7, xPixelOffset:I
    mul-int v2, v18, v28

    div-int/lit8 v2, v2, 0x64

    and-int/lit8 v8, v2, -0x2

    .line 716
    .local v8, yPixelSize:I
    mul-int v2, v18, v24

    div-int/lit8 v2, v2, 0x64

    and-int/lit8 v9, v2, -0x2

    .line 717
    .local v9, xPixelSize:I
    mul-int v2, v18, v26

    div-int/lit8 v2, v2, 0x64

    and-int/lit8 v25, v2, -0x2

    .line 718
    .local v25, yPixelGap:I
    mul-int v2, v18, v22

    div-int/lit8 v2, v2, 0x64

    and-int/lit8 v21, v2, -0x2

    .local v21, xPixelGap:I
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    .line 723
    invoke-direct/range {v2 .. v9}, Lcom/google/android/talk/videochat/CameraManager;->paintWhiteRect([BIIIIII)V

    .line 726
    if-nez v25, :cond_0

    const/4 v2, 0x0

    :goto_2
    add-int v14, v6, v2

    if-nez v21, :cond_1

    const/4 v2, 0x0

    :goto_3
    add-int v15, v7, v2

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v16, v8

    move/from16 v17, v9

    invoke-direct/range {v10 .. v17}, Lcom/google/android/talk/videochat/CameraManager;->paintWhiteRect([BIIIIII)V

    goto :goto_0

    .line 672
    .end local v6           #yPixelOffset:I
    .end local v7           #xPixelOffset:I
    .end local v8           #yPixelSize:I
    .end local v9           #xPixelSize:I
    .end local v18           #maxFrameDimension:I
    .end local v19           #rotatedFrameHeight:I
    .end local v20           #rotatedFrameWidth:I
    .end local v21           #xPixelGap:I
    .end local v22           #xRelativeGap:I
    .end local v23           #xRelativeOffset:I
    .end local v24           #xRelativeSize:I
    .end local v25           #yPixelGap:I
    .end local v26           #yRelativeGap:I
    .end local v27           #yRelativeOffset:I
    .end local v28           #yRelativeSize:I
    :sswitch_1
    const/16 v27, 0x4c

    .line 674
    .restart local v27       #yRelativeOffset:I
    const/16 v23, 0xf

    .line 675
    .restart local v23       #xRelativeOffset:I
    const/16 v28, 0x3

    .line 676
    .restart local v28       #yRelativeSize:I
    const/16 v24, 0x9

    .line 677
    .restart local v24       #xRelativeSize:I
    const/16 v26, 0x3

    .line 678
    .restart local v26       #yRelativeGap:I
    const/16 v22, 0x0

    .line 679
    .restart local v22       #xRelativeGap:I
    move/from16 v20, p3

    .line 680
    .restart local v20       #rotatedFrameWidth:I
    move/from16 v19, p2

    .line 681
    .restart local v19       #rotatedFrameHeight:I
    goto :goto_1

    .line 683
    .end local v19           #rotatedFrameHeight:I
    .end local v20           #rotatedFrameWidth:I
    .end local v22           #xRelativeGap:I
    .end local v23           #xRelativeOffset:I
    .end local v24           #xRelativeSize:I
    .end local v26           #yRelativeGap:I
    .end local v27           #yRelativeOffset:I
    .end local v28           #yRelativeSize:I
    :sswitch_2
    const/16 v27, 0x4c

    .line 684
    .restart local v27       #yRelativeOffset:I
    const/16 v23, 0x4c

    .line 686
    .restart local v23       #xRelativeOffset:I
    const/16 v28, 0x9

    .line 687
    .restart local v28       #yRelativeSize:I
    const/16 v24, 0x3

    .line 688
    .restart local v24       #xRelativeSize:I
    const/16 v26, 0x0

    .line 689
    .restart local v26       #yRelativeGap:I
    const/16 v22, 0x3

    .line 690
    .restart local v22       #xRelativeGap:I
    move/from16 v20, p2

    .line 691
    .restart local v20       #rotatedFrameWidth:I
    move/from16 v19, p3

    .line 692
    .restart local v19       #rotatedFrameHeight:I
    goto :goto_1

    .line 694
    .end local v19           #rotatedFrameHeight:I
    .end local v20           #rotatedFrameWidth:I
    .end local v22           #xRelativeGap:I
    .end local v23           #xRelativeOffset:I
    .end local v24           #xRelativeSize:I
    .end local v26           #yRelativeGap:I
    .end local v27           #yRelativeOffset:I
    .end local v28           #yRelativeSize:I
    :sswitch_3
    const/16 v27, 0xf

    .line 695
    .restart local v27       #yRelativeOffset:I
    const/16 v23, 0x4c

    .line 697
    .restart local v23       #xRelativeOffset:I
    const/16 v28, 0x3

    .line 698
    .restart local v28       #yRelativeSize:I
    const/16 v24, 0x9

    .line 699
    .restart local v24       #xRelativeSize:I
    const/16 v26, 0x3

    .line 700
    .restart local v26       #yRelativeGap:I
    const/16 v22, 0x0

    .line 701
    .restart local v22       #xRelativeGap:I
    move/from16 v20, p3

    .line 702
    .restart local v20       #rotatedFrameWidth:I
    move/from16 v19, p2

    .line 703
    .restart local v19       #rotatedFrameHeight:I
    goto/16 :goto_1

    .line 726
    .restart local v6       #yPixelOffset:I
    .restart local v7       #xPixelOffset:I
    .restart local v8       #yPixelSize:I
    .restart local v9       #xPixelSize:I
    .restart local v18       #maxFrameDimension:I
    .restart local v21       #xPixelGap:I
    .restart local v25       #yPixelGap:I
    :cond_0
    add-int v2, v8, v25

    goto :goto_2

    :cond_1
    add-int v2, v9, v21

    goto :goto_3

    .line 660
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private findCameraIds()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 187
    const/4 v1, -0x1

    .line 188
    .local v1, bestFrontCameraId:I
    const/4 v0, -0x1

    .line 189
    .local v0, bestBackCameraId:I
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v4

    .line 191
    .local v4, numCameras:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 192
    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 193
    .local v3, info:Landroid/hardware/Camera$CameraInfo;
    invoke-static {v2, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 194
    const-string v5, "Talk:CameraManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Camera "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " facing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " orientation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget v5, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 197
    move v1, v2

    .line 201
    :cond_0
    :goto_1
    if-eq v1, v8, :cond_3

    if-eq v0, v8, :cond_3

    .line 205
    .end local v3           #info:Landroid/hardware/Camera$CameraInfo;
    :cond_1
    iput v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mPreferredFrontCameraId:I

    .line 206
    iput v0, p0, Lcom/google/android/talk/videochat/CameraManager;->mPreferredBackCameraId:I

    .line 207
    return-void

    .line 198
    .restart local v3       #info:Landroid/hardware/Camera$CameraInfo;
    :cond_2
    iget v5, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v5, :cond_0

    .line 199
    move v0, v2

    goto :goto_1

    .line 191
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getInstance()Lcom/google/android/talk/videochat/CameraManager;
    .locals 2

    .prologue
    .line 161
    sget-object v0, Lcom/google/android/talk/videochat/CameraManager;->sInstance:Lcom/google/android/talk/videochat/CameraManager;

    if-nez v0, :cond_1

    .line 162
    sget-object v0, Lcom/google/android/talk/videochat/CameraManager;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 163
    :try_start_0
    sget-object v1, Lcom/google/android/talk/videochat/CameraManager;->sInstance:Lcom/google/android/talk/videochat/CameraManager;

    if-nez v1, :cond_0

    .line 164
    new-instance v1, Lcom/google/android/talk/videochat/CameraManager;

    invoke-direct {v1}, Lcom/google/android/talk/videochat/CameraManager;-><init>()V

    sput-object v1, Lcom/google/android/talk/videochat/CameraManager;->sInstance:Lcom/google/android/talk/videochat/CameraManager;

    .line 166
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :cond_1
    sget-object v0, Lcom/google/android/talk/videochat/CameraManager;->sInstance:Lcom/google/android/talk/videochat/CameraManager;

    return-object v0

    .line 166
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getSupportedFormats()[I
    .locals 5

    .prologue
    .line 1056
    iget-object v2, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1057
    :try_start_0
    iget-object v3, p0, Lcom/google/android/talk/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-nez v3, :cond_0

    .line 1058
    const-string v3, "Talk:CameraManager"

    const-string v4, "no camera, so returning null from getSupportedFormats"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    const/4 v3, 0x0

    monitor-exit v2

    move-object v2, v3

    .line 1065
    :goto_0
    return-object v2

    .line 1061
    :cond_0
    iget-object v3, p0, Lcom/google/android/talk/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 1062
    .local v1, parameters:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    move-result-object v0

    .line 1063
    .local v0, formats:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1064
    const-string v2, "Talk:CameraManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camera getSupportedFormats entry "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    invoke-static {v0}, Lcom/google/android/talk/videochat/CameraManager;->convertIntegerListToIntArray(Ljava/util/List;)[I

    move-result-object v2

    goto :goto_0

    .line 1063
    .end local v0           #formats:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v1           #parameters:Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public static getSupportedFormatsNative()[I
    .locals 1

    .prologue
    .line 1112
    invoke-static {}, Lcom/google/android/talk/videochat/CameraManager;->getInstance()Lcom/google/android/talk/videochat/CameraManager;

    move-result-object v0

    invoke-direct {v0}, Lcom/google/android/talk/videochat/CameraManager;->getSupportedFormats()[I

    move-result-object v0

    return-object v0
.end method

.method private getSupportedFrameRates()[I
    .locals 6

    .prologue
    .line 1075
    iget-object v2, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1076
    :try_start_0
    iget-object v3, p0, Lcom/google/android/talk/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-nez v3, :cond_0

    .line 1077
    const-string v3, "Talk:CameraManager"

    const-string v4, "no camera, so returning null from getSupportedFrameRates"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    const/4 v3, 0x0

    monitor-exit v2

    move-object v2, v3

    .line 1092
    :goto_0
    return-object v2

    .line 1081
    :cond_0
    iget-object v3, p0, Lcom/google/android/talk/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 1082
    .local v1, parameters:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v0

    .line 1083
    .local v0, framerates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez v0, :cond_1

    .line 1087
    const-string v3, "Talk:CameraManager"

    const-string v4, "Camera getSupportedPreviewFrameRates returned null"

    invoke-static {v3, v4}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x1e

    aput v5, v3, v4

    monitor-exit v2

    move-object v2, v3

    goto :goto_0

    .line 1090
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1091
    const-string v2, "Talk:CameraManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camera getSupportedFrameRates "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    invoke-static {v0}, Lcom/google/android/talk/videochat/CameraManager;->convertIntegerListToIntArray(Ljava/util/List;)[I

    move-result-object v2

    goto :goto_0

    .line 1090
    .end local v0           #framerates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v1           #parameters:Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public static getSupportedFrameRatesNative()[I
    .locals 1

    .prologue
    .line 1116
    invoke-static {}, Lcom/google/android/talk/videochat/CameraManager;->getInstance()Lcom/google/android/talk/videochat/CameraManager;

    move-result-object v0

    invoke-direct {v0}, Lcom/google/android/talk/videochat/CameraManager;->getSupportedFrameRates()[I

    move-result-object v0

    return-object v0
.end method

.method private getSupportedPackedSizes()[I
    .locals 10

    .prologue
    .line 1011
    iget-object v7, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1012
    :try_start_0
    iget-object v8, p0, Lcom/google/android/talk/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-nez v8, :cond_0

    .line 1013
    const-string v8, "Talk:CameraManager"

    const-string v9, "no camera, so returning null from getSupportedPackedSizes"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    const/4 v8, 0x0

    monitor-exit v7

    move-object v7, v8

    .line 1033
    :goto_0
    return-object v7

    .line 1016
    :cond_0
    iget-object v8, p0, Lcom/google/android/talk/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v8}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 1017
    .local v4, parameters:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v5

    .line 1018
    .local v5, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1020
    if-nez v5, :cond_1

    .line 1021
    const-string v7, "Talk:CameraManager"

    const-string v8, "Got null from parameters.getSupportedPreviewSizes"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    new-array v3, v7, [I

    .line 1025
    .local v3, packedSizes:[I
    const/4 v0, 0x0

    .line 1027
    .local v0, i:I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    .line 1028
    .local v6, supportedsize:Landroid/hardware/Camera$Size;
    const-string v7, "Talk:CameraManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Camera getSupportedSizes "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    iget v7, v6, Landroid/hardware/Camera$Size;->width:I

    aput v7, v3, v0

    .line 1031
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    iget v7, v6, Landroid/hardware/Camera$Size;->height:I

    aput v7, v3, v1

    goto :goto_1

    .line 1018
    .end local v0           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #packedSizes:[I
    .end local v4           #parameters:Landroid/hardware/Camera$Parameters;
    .end local v5           #sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v6           #supportedsize:Landroid/hardware/Camera$Size;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .restart local v0       #i:I
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #packedSizes:[I
    .restart local v4       #parameters:Landroid/hardware/Camera$Parameters;
    .restart local v5       #sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_2
    move-object v7, v3

    .line 1033
    goto :goto_0
.end method

.method public static getSupportedPackedSizesNative()[I
    .locals 1

    .prologue
    .line 1108
    invoke-static {}, Lcom/google/android/talk/videochat/CameraManager;->getInstance()Lcom/google/android/talk/videochat/CameraManager;

    move-result-object v0

    invoke-direct {v0}, Lcom/google/android/talk/videochat/CameraManager;->getSupportedPackedSizes()[I

    move-result-object v0

    return-object v0
.end method

.method private final native nativePushFrame(I[BJI)V
.end method

.method private final native nativePushPausedFrame()V
.end method

.method private openCameraForNative()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 272
    iget-object v0, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    monitor-enter v0

    .line 273
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mDisableCamera:Z

    if-nez v1, :cond_1

    .line 274
    const-string v1, "Talk:CameraManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openCameraForNative state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraState:I

    packed-switch v1, :pswitch_data_0

    .line 287
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 288
    const-string v1, "Talk:CameraManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "native wanted camera but couldn\'t get it: disabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/talk/videochat/CameraManager;->mDisableCamera:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_0
    monitor-exit v0

    move v0, v4

    .line 293
    :goto_1
    return v0

    .line 278
    :pswitch_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraState:I

    .line 279
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CameraManager;->openCameraIfNeeded()V

    goto :goto_0

    .line 295
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 282
    :pswitch_2
    :try_start_1
    const-string v1, "Talk:CameraManager"

    const-string v2, "got openCameraForNative in state NATIVE_WANTS"

    invoke-static {v1, v2}, Lcom/google/android/talk/TalkApp;->Logwtf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 293
    :cond_1
    const/4 v1, 0x0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_1

    .line 275
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private openCameraIfNeeded()V
    .locals 4

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mDisableCamera:Z

    if-nez v1, :cond_2

    .line 219
    iget-boolean v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mHaveReadCameraIds:Z

    if-nez v1, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CameraManager;->findCameraIds()V

    .line 221
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mHaveReadCameraIds:Z

    .line 222
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CameraManager;->useFrontCamera()V

    .line 225
    :cond_0
    const-string v1, "Talk:CameraManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Opening Camera disabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/talk/videochat/CameraManager;->mDisableCamera:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " currentID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/talk/videochat/CameraManager;->mCurrentCameraId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " frontID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/talk/videochat/CameraManager;->mPreferredFrontCameraId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " backID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/talk/videochat/CameraManager;->mPreferredBackCameraId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mCurrentCameraId:I

    invoke-static {v1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    .line 232
    iget v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mDeviceOrientation:I

    if-ltz v1, :cond_1

    .line 233
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CameraManager;->setRotationParams()V

    .line 235
    :cond_1
    iget v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraPreviewWidth:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 236
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CameraManager;->setCaptureParametersToSavedState()V

    .line 239
    :cond_2
    monitor-exit v0

    .line 240
    return-void

    .line 239
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private paintWhiteRect([BIIIIII)V
    .locals 8
    .parameter "framedata"
    .parameter "width"
    .parameter "height"
    .parameter "yOffset"
    .parameter "xOffset"
    .parameter "ySize"
    .parameter "xSize"

    .prologue
    .line 734
    const-string v5, "Talk:CameraManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "paintWhiteRect frame "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " offset "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    array-length v5, p1

    mul-int/lit8 v5, v5, 0x2

    div-int/lit8 v3, v5, 0x3

    .line 738
    .local v3, yplaneLength:I
    move v4, p2

    .line 739
    .local v4, yplanePitch:I
    move v0, p2

    .line 740
    .local v0, chromaPlanePitch:I
    move v1, p4

    .local v1, i:I
    :goto_0
    add-int v5, p6, p4

    if-ge v1, v5, :cond_1

    .line 741
    move v2, p5

    .local v2, j:I
    :goto_1
    add-int v5, p7, p5

    if-ge v2, v5, :cond_0

    .line 742
    add-int/lit8 v5, v1, 0x0

    mul-int/2addr v5, v4

    add-int/lit8 v6, v2, 0x0

    add-int/2addr v5, v6

    const/16 v6, -0x10

    aput-byte v6, p1, v5

    .line 743
    add-int/lit8 v5, v1, 0x0

    mul-int/2addr v5, v4

    add-int/lit8 v6, v2, 0x1

    add-int/2addr v5, v6

    const/16 v6, -0x10

    aput-byte v6, p1, v5

    .line 744
    add-int/lit8 v5, v1, 0x1

    mul-int/2addr v5, v4

    add-int/lit8 v6, v2, 0x0

    add-int/2addr v5, v6

    const/16 v6, -0x10

    aput-byte v6, p1, v5

    .line 745
    add-int/lit8 v5, v1, 0x1

    mul-int/2addr v5, v4

    add-int/lit8 v6, v2, 0x1

    add-int/2addr v5, v6

    const/16 v6, -0x10

    aput-byte v6, p1, v5

    .line 746
    div-int/lit8 v5, v1, 0x2

    mul-int/2addr v5, v0

    add-int/2addr v5, v3

    add-int/2addr v5, v2

    add-int/lit8 v5, v5, 0x0

    const/16 v6, -0x80

    aput-byte v6, p1, v5

    .line 747
    div-int/lit8 v5, v1, 0x2

    mul-int/2addr v5, v0

    add-int/2addr v5, v3

    add-int/2addr v5, v2

    add-int/lit8 v5, v5, 0x1

    const/16 v6, -0x80

    aput-byte v6, p1, v5

    .line 741
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 740
    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 750
    .end local v2           #j:I
    :cond_1
    return-void
.end method

.method private prepareHoldFrame([BIII)V
    .locals 3
    .parameter "framedata"
    .parameter "frameWidth"
    .parameter "frameHeight"
    .parameter "rotation"

    .prologue
    .line 629
    const-string v0, "Talk:CameraManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareHoldFrame "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "deg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    iget v0, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraPreviewFormat:I

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    .line 632
    const-string v0, "Talk:CameraManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t run prepareHoldFrame on image format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraPreviewFormat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :goto_0
    return-void

    .line 636
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/CameraManager;->dimFrame([B)V

    .line 637
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/talk/videochat/CameraManager;->drawPauseIcon([BIII)V

    goto :goto_0
.end method

.method private releaseCamera()V
    .locals 3

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    monitor-enter v0

    .line 247
    :try_start_0
    const-string v1, "Talk:CameraManager"

    const-string v2, "releaseCamera"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 250
    iget-object v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 251
    iget-object v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 252
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    .line 254
    :cond_0
    monitor-exit v0

    .line 255
    return-void

    .line 254
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private releaseCameraForNative()V
    .locals 4

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    monitor-enter v0

    .line 304
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mDisableCamera:Z

    if-nez v1, :cond_0

    .line 305
    const-string v1, "Talk:CameraManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseCameraForNative state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CameraManager;->removePreviewCallback()V

    .line 307
    iget v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 308
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraState:I

    .line 309
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CameraManager;->releaseCamera()V

    .line 310
    iget-object v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 311
    const-string v1, "Talk:CameraManager"

    const-string v2, "releaseForNative called while in NATIVE_WANTS but camera didn\'t actually release"

    invoke-static {v1, v2}, Lcom/google/android/talk/TalkApp;->Logwtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :cond_0
    monitor-exit v0

    .line 317
    return-void

    .line 316
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static releaseCameraNative()V
    .locals 1

    .prologue
    .line 1104
    invoke-static {}, Lcom/google/android/talk/videochat/CameraManager;->getInstance()Lcom/google/android/talk/videochat/CameraManager;

    move-result-object v0

    invoke-direct {v0}, Lcom/google/android/talk/videochat/CameraManager;->releaseCameraForNative()V

    .line 1105
    return-void
.end method

.method private removePreviewCallback()V
    .locals 3

    .prologue
    .line 517
    iget-object v0, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    monitor-enter v0

    .line 518
    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mNativePreviewCallbackRef:I

    .line 519
    iget-object v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 520
    iget-object v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 522
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mLastCameraBuffer:[B

    .line 523
    monitor-exit v0

    .line 524
    return-void

    .line 523
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static removePreviewCallbackNative()V
    .locals 1

    .prologue
    .line 1131
    invoke-static {}, Lcom/google/android/talk/videochat/CameraManager;->getInstance()Lcom/google/android/talk/videochat/CameraManager;

    move-result-object v0

    invoke-direct {v0}, Lcom/google/android/talk/videochat/CameraManager;->removePreviewCallback()V

    .line 1132
    return-void
.end method

.method private sendCameraParameterChangeNotification()V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/google/android/talk/videochat/CameraManager;->mCallback:Lcom/google/android/talk/videochat/CameraManager$CameraParametersCallback;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/google/android/talk/videochat/CameraManager;->mCallback:Lcom/google/android/talk/videochat/CameraManager$CameraParametersCallback;

    invoke-direct {p0}, Lcom/google/android/talk/videochat/CameraManager;->createCameraParameters()Lcom/google/android/talk/videochat/CameraManager$CameraParameters;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/talk/videochat/CameraManager$CameraParametersCallback;->onCameraParametersChanged(Lcom/google/android/talk/videochat/CameraManager$CameraParameters;)V

    .line 341
    :cond_0
    return-void
.end method

.method private setCaptureParameters(IIII)V
    .locals 3
    .parameter "width"
    .parameter "height"
    .parameter "imageFormat"
    .parameter "frameRate"

    .prologue
    .line 392
    const-string v0, "Talk:CameraManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera setCaptureParameters state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fmt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    monitor-enter v0

    .line 398
    :try_start_0
    iput p1, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraPreviewWidth:I

    .line 399
    iput p2, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraPreviewHeight:I

    .line 400
    iput p4, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraPreviewFrameRate:I

    .line 401
    iput p3, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraPreviewFormat:I

    .line 402
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CameraManager;->sendCameraParameterChangeNotification()V

    .line 404
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CameraManager;->setCaptureParametersToSavedState()V

    .line 405
    monitor-exit v0

    .line 406
    return-void

    .line 405
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setCaptureParametersNative(IIII)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "imageFormat"
    .parameter "frameRate"

    .prologue
    .line 1121
    invoke-static {}, Lcom/google/android/talk/videochat/CameraManager;->getInstance()Lcom/google/android/talk/videochat/CameraManager;

    move-result-object v0

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/talk/videochat/CameraManager;->setCaptureParameters(IIII)V

    .line 1122
    return-void
.end method

.method private setCaptureParametersToSavedState()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 409
    iget-object v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    monitor-enter v1

    .line 410
    :try_start_0
    iget-object v2, p0, Lcom/google/android/talk/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_3

    .line 411
    const-string v2, "Talk:CameraManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camera setCaptureParametersToSavedState state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraPreviewWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraPreviewHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " fmt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraPreviewFormat:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraPreviewFrameRate:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " fps"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget-object v2, p0, Lcom/google/android/talk/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 421
    iget-object v2, p0, Lcom/google/android/talk/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 423
    .local v0, parameters:Landroid/hardware/Camera$Parameters;
    iget v2, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraPreviewWidth:I

    iget v3, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraPreviewHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 424
    iget v2, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraPreviewFormat:I

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 427
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 428
    iget v2, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraPreviewFrameRate:I

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 431
    :cond_0
    iget v2, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraState:I

    if-ne v2, v5, :cond_1

    .line 432
    const-string v2, "Talk:CameraManager"

    const-string v3, "Setting the capture parameters after startPreview has been called should be avoided if possible."

    invoke-static {v2, v3}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v2, p0, Lcom/google/android/talk/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 436
    :cond_1
    iget-object v2, p0, Lcom/google/android/talk/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 437
    iget v2, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraState:I

    if-ne v2, v5, :cond_2

    .line 438
    const-string v2, "Talk:CameraManager"

    const-string v3, "setCaptureParametersToSavedState calling startPreview"

    invoke-static {v2, v3}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-object v2, p0, Lcom/google/android/talk/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V

    .line 443
    :cond_2
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CameraManager;->setupCallbackWithBuffers()V

    .line 445
    .end local v0           #parameters:Landroid/hardware/Camera$Parameters;
    :cond_3
    monitor-exit v1

    .line 446
    return-void

    .line 445
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private setPreviewCallback(I)V
    .locals 3
    .parameter "nativeRef"

    .prologue
    .line 503
    iget-object v0, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    monitor-enter v0

    .line 504
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 505
    iput p1, p0, Lcom/google/android/talk/videochat/CameraManager;->mNativePreviewCallbackRef:I

    .line 506
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CameraManager;->setupCallbackWithBuffers()V

    .line 510
    :goto_0
    monitor-exit v0

    .line 511
    return-void

    .line 508
    :cond_0
    const-string v1, "Talk:CameraManager"

    const-string v2, "setPreviewCallback with no camera"

    invoke-static {v1, v2}, Lcom/google/android/talk/TalkApp;->Logwtf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 510
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setPreviewCallbackNative(I)V
    .locals 0
    .parameter "nativeRef"

    .prologue
    .line 1128
    return-void
.end method

.method private setRotationParams()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    .line 828
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/CameraManager;->getCameraOrientation()I

    move-result v0

    .line 841
    .local v0, cameraOrientation:I
    iget-object v5, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    monitor-enter v5

    .line 845
    :try_start_0
    iget v6, p0, Lcom/google/android/talk/videochat/CameraManager;->mDeviceOrientation:I

    add-int/2addr v6, v0

    rem-int/lit16 v1, v6, 0x168

    .line 848
    .local v1, displayOrientationForRenderer:I
    iget-boolean v6, p0, Lcom/google/android/talk/videochat/CameraManager;->mCurrentCameraIsFrontFacing:Z

    if-eqz v6, :cond_2

    .line 849
    iget v6, p0, Lcom/google/android/talk/videochat/CameraManager;->mDeviceOrientation:I

    sub-int/2addr v6, v0

    add-int/lit16 v6, v6, 0x168

    rem-int/lit16 v4, v6, 0x168

    .line 850
    .local v4, newEncodeRotation:I
    iget v6, p0, Lcom/google/android/talk/videochat/CameraManager;->mDeviceOrientation:I

    add-int/2addr v6, v0

    rem-int/lit16 v3, v6, 0x168

    .line 853
    .local v3, newDisplayOrientation:I
    const/16 v6, 0x168

    sub-int/2addr v6, v3

    rem-int/lit16 v3, v6, 0x168

    .line 859
    :goto_0
    const-string v6, "Talk:CameraManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setRotation dev "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/google/android/talk/videochat/CameraManager;->mDeviceOrientation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " displayOrientation "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " encode "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isfront "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/google/android/talk/videochat/CameraManager;->mCurrentCameraIsFrontFacing:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    iput v4, p0, Lcom/google/android/talk/videochat/CameraManager;->mFrameRotationForEncode:I

    .line 864
    iput v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mFrameRotationForDisplay:I

    .line 869
    iget-object v6, p0, Lcom/google/android/talk/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v6, :cond_1

    .line 870
    iget v6, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraState:I

    if-ne v6, v9, :cond_0

    .line 871
    iget-object v6, p0, Lcom/google/android/talk/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 875
    :cond_0
    :try_start_1
    const-string v6, "Talk:CameraManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CameraManager: set display orientation to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    iget-object v6, p0, Lcom/google/android/talk/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v6, v3}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 883
    :goto_1
    :try_start_2
    iget v6, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraState:I

    if-ne v6, v9, :cond_1

    .line 884
    const-string v6, "Talk:CameraManager"

    const-string v7, "setRotationParams calling startPreview"

    invoke-static {v6, v7}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    iget-object v6, p0, Lcom/google/android/talk/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->startPreview()V

    .line 886
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CameraManager;->setupCallbackWithBuffers()V

    .line 890
    :cond_1
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CameraManager;->sendCameraParameterChangeNotification()V

    .line 891
    monitor-exit v5

    .line 892
    return-void

    .line 855
    .end local v3           #newDisplayOrientation:I
    .end local v4           #newEncodeRotation:I
    :cond_2
    iget v6, p0, Lcom/google/android/talk/videochat/CameraManager;->mDeviceOrientation:I

    sub-int v6, v0, v6

    add-int/lit16 v6, v6, 0x168

    rem-int/lit16 v4, v6, 0x168

    .line 856
    .restart local v4       #newEncodeRotation:I
    iget v6, p0, Lcom/google/android/talk/videochat/CameraManager;->mDeviceOrientation:I

    sub-int v6, v0, v6

    add-int/lit16 v6, v6, 0x168

    rem-int/lit16 v3, v6, 0x168

    .restart local v3       #newDisplayOrientation:I
    goto/16 :goto_0

    .line 878
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 879
    .local v2, ex:Ljava/lang/RuntimeException;
    const-string v6, "Talk:CameraManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "### CameraManager: set camera display orientation to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " failed!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v6, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 891
    .end local v1           #displayOrientationForRenderer:I
    .end local v2           #ex:Ljava/lang/RuntimeException;
    .end local v3           #newDisplayOrientation:I
    .end local v4           #newEncodeRotation:I
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6
.end method

.method private setupCallbackWithBuffers()V
    .locals 10

    .prologue
    .line 457
    iget-object v6, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    monitor-enter v6

    .line 460
    :try_start_0
    iget-object v7, p0, Lcom/google/android/talk/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 461
    iget v7, p0, Lcom/google/android/talk/videochat/CameraManager;->mNativePreviewCallbackRef:I

    if-eqz v7, :cond_0

    .line 462
    iget-object v7, p0, Lcom/google/android/talk/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v7}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 463
    .local v4, parameters:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 464
    .local v5, previewSize:Landroid/hardware/Camera$Size;
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v3

    .line 466
    .local v3, imageFormat:I
    iget v7, v5, Landroid/hardware/Camera$Size;->width:I

    iget v8, v5, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v7, v8

    invoke-static {v3}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v8

    mul-int/2addr v7, v8

    div-int/lit8 v1, v7, 0x8

    .line 476
    .local v1, bufferSize:I
    iget-object v7, p0, Lcom/google/android/talk/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    new-instance v8, Lcom/google/android/talk/videochat/CameraManager$CameraPreviewCallback;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/google/android/talk/videochat/CameraManager$CameraPreviewCallback;-><init>(Lcom/google/android/talk/videochat/CameraManager;Lcom/google/android/talk/videochat/CameraManager$1;)V

    invoke-virtual {v7, v8}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 478
    const-string v7, "Talk:CameraManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Allocating 3 buffers ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v7, 0x3

    if-ge v2, v7, :cond_0

    .line 481
    new-array v0, v1, [B

    .line 489
    .local v0, buffer:[B
    iget-object v7, p0, Lcom/google/android/talk/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v7, v0}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 480
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 492
    .end local v0           #buffer:[B
    .end local v1           #bufferSize:I
    .end local v2           #i:I
    .end local v3           #imageFormat:I
    .end local v4           #parameters:Landroid/hardware/Camera$Parameters;
    .end local v5           #previewSize:Landroid/hardware/Camera$Size;
    :cond_0
    monitor-exit v6

    .line 493
    return-void

    .line 492
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method private suspendCameraInternal()V
    .locals 2

    .prologue
    .line 805
    iget-object v0, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    monitor-enter v0

    .line 806
    :try_start_0
    monitor-exit v0

    .line 807
    return-void

    .line 806
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private useFrontCamera()V
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/CameraManager;->mHaveReadCameraIds:Z

    if-eqz v0, :cond_0

    .line 262
    iget v0, p0, Lcom/google/android/talk/videochat/CameraManager;->mPreferredFrontCameraId:I

    iput v0, p0, Lcom/google/android/talk/videochat/CameraManager;->mCurrentCameraId:I

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/videochat/CameraManager;->mCurrentCameraIsFrontFacing:Z

    .line 265
    :cond_0
    return-void
.end method


# virtual methods
.method public getCameraOrientation()I
    .locals 2

    .prologue
    .line 570
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 572
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    iget v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mCurrentCameraId:I

    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 573
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    return v1
.end method

.method public getCurrentCaptureParameters()Lcom/google/android/talk/videochat/CameraManager$CameraParameters;
    .locals 1

    .prologue
    .line 380
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CameraManager;->createCameraParameters()Lcom/google/android/talk/videochat/CameraManager$CameraParameters;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    monitor-enter v0

    .line 324
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mDisableCamera:Z

    if-nez v1, :cond_0

    .line 325
    const-string v1, "Talk:CameraManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reset state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CameraManager;->destroyLastFramePusher()V

    .line 327
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CameraManager;->removePreviewCallback()V

    .line 328
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraState:I

    .line 329
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CameraManager;->releaseCamera()V

    .line 330
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CameraManager;->useFrontCamera()V

    .line 331
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraPreviewWidth:I

    .line 332
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraPreviewHeight:I

    .line 334
    :cond_0
    monitor-exit v0

    .line 335
    return-void

    .line 334
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCameraParametersChangeCallback(Lcom/google/android/talk/videochat/CameraManager$CameraParametersCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    monitor-enter v0

    .line 371
    :try_start_0
    iput-object p1, p0, Lcom/google/android/talk/videochat/CameraManager;->mCallback:Lcom/google/android/talk/videochat/CameraManager$CameraParametersCallback;

    .line 372
    monitor-exit v0

    .line 373
    return-void

    .line 372
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPreviewSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 902
    iget-object v0, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    monitor-enter v0

    .line 903
    :try_start_0
    const-string v1, "Talk:CameraManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreviewSurfaceTexture "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    iget-boolean v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mDisableCamera:Z

    if-eqz v1, :cond_0

    .line 906
    monitor-exit v0

    .line 1000
    :goto_0
    return-void

    .line 908
    :cond_0
    iput-object p1, p0, Lcom/google/android/talk/videochat/CameraManager;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 909
    iget v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraState:I

    packed-switch v1, :pswitch_data_0

    .line 929
    :cond_1
    :goto_1
    sget-object v1, Lcom/google/android/talk/videochat/CameraManager;->TEST_STABILIZATION:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_2

    .line 930
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mMediaPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 934
    :cond_2
    :try_start_1
    sget-object v1, Lcom/google/android/talk/videochat/CameraManager;->TEST_STABILIZATION:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 937
    const-class v1, Landroid/media/MediaPlayer;

    .line 938
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/graphics/SurfaceTexture;

    aput-object v4, v2, v3

    .line 939
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 941
    :try_start_2
    const-string v4, "setTexture"

    invoke-virtual {v1, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/videochat/CameraManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move v1, v5

    .line 948
    :goto_2
    if-eqz v1, :cond_3

    .line 949
    :try_start_3
    iget-object v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 955
    :cond_3
    :try_start_4
    sget-object v1, Lcom/google/android/talk/videochat/CameraManager;->TEST_STABILIZATION:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_5

    .line 957
    :try_start_5
    iget-object v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget-object v2, Lcom/google/android/talk/videochat/CameraManager;->TEST_STABILIZATION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 959
    if-eqz v5, :cond_4

    .line 960
    new-instance v1, Ljava/io/IOException;

    const-string v2, "never"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 962
    :catch_0
    move-exception v1

    .line 963
    :try_start_6
    const-string v2, "Talk:CameraManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :cond_4
    new-instance v1, Lcom/google/android/talk/videochat/CameraManager$1Latch;

    invoke-direct {v1, p0}, Lcom/google/android/talk/videochat/CameraManager$1Latch;-><init>(Lcom/google/android/talk/videochat/CameraManager;)V

    .line 983
    iget-object v2, p0, Lcom/google/android/talk/videochat/CameraManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v3, Lcom/google/android/talk/videochat/CameraManager$2;

    invoke-direct {v3, p0, v1}, Lcom/google/android/talk/videochat/CameraManager$2;-><init>(Lcom/google/android/talk/videochat/CameraManager;Lcom/google/android/talk/videochat/CameraManager$1Latch;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 991
    iget-object v2, p0, Lcom/google/android/talk/videochat/CameraManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 992
    invoke-virtual {v1}, Lcom/google/android/talk/videochat/CameraManager$1Latch;->awaitSet()V

    .line 993
    iget-object v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 995
    :cond_5
    iget-object v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 996
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CameraManager;->setupCallbackWithBuffers()V

    .line 997
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraState:I

    .line 998
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CameraManager;->destroyLastFramePusher()V

    .line 999
    monitor-exit v0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1

    .line 911
    :pswitch_0
    :try_start_7
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CameraManager;->openCameraIfNeeded()V

    goto/16 :goto_1

    .line 914
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CameraManager;->openCameraIfNeeded()V

    goto/16 :goto_1

    .line 918
    :pswitch_2
    iget-object v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_1

    .line 919
    const-string v1, "Talk:CameraManager"

    const-string v2, "setPreviewSurfaceTexture: state is NATIVE_WANTS but mCamera is null"

    invoke-static {v1, v2}, Lcom/google/android/talk/TalkApp;->Logwtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CameraManager;->openCameraIfNeeded()V

    goto/16 :goto_1

    .line 926
    :pswitch_3
    iget-object v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    goto/16 :goto_1

    .line 943
    :catch_1
    move-exception v1

    move v1, v6

    .line 946
    goto/16 :goto_2

    .line 944
    :catch_2
    move-exception v1

    move v1, v6

    .line 946
    goto/16 :goto_2

    .line 945
    :catch_3
    move-exception v1

    move v1, v6

    goto/16 :goto_2

    .line 951
    :catch_4
    move-exception v1

    .line 952
    const-string v1, "Talk:CameraManager"

    const-string v2, "setPreviewTexture failed"

    invoke-static {v1, v2}, Lcom/google/android/talk/TalkApp;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :cond_6
    move v1, v6

    goto/16 :goto_2

    .line 909
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public setRotation(I)V
    .locals 4
    .parameter "rotation"

    .prologue
    .line 814
    const-string v1, "Talk:CameraManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRotation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    const/4 v0, 0x0

    .line 816
    .local v0, degrees:I
    packed-switch p1, :pswitch_data_0

    .line 822
    :goto_0
    iput v0, p0, Lcom/google/android/talk/videochat/CameraManager;->mDeviceOrientation:I

    .line 824
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CameraManager;->setRotationParams()V

    .line 825
    return-void

    .line 817
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 818
    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    .line 819
    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    .line 820
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 816
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public suspendCamera()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 790
    iget-object v0, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    monitor-enter v0

    .line 791
    :try_start_0
    const-string v1, "Talk:CameraManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "suspendCamera state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    iget v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraState:I

    if-eq v1, v4, :cond_0

    .line 793
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CameraManager;->suspendCameraInternal()V

    .line 794
    const/4 v1, 0x3

    iput v1, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraState:I

    .line 795
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CameraManager;->releaseCamera()V

    .line 796
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CameraManager;->createLastFramePusher()V

    .line 798
    :cond_0
    monitor-exit v0

    .line 799
    return-void

    .line 798
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public switchCamera()V
    .locals 6

    .prologue
    .line 577
    iget-object v2, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    monitor-enter v2

    .line 578
    :try_start_0
    const-string v3, "Talk:CameraManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switchCamera state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CameraManager;->releaseCamera()V

    .line 582
    iget v3, p0, Lcom/google/android/talk/videochat/CameraManager;->mCurrentCameraId:I

    iget v4, p0, Lcom/google/android/talk/videochat/CameraManager;->mPreferredFrontCameraId:I

    if-ne v3, v4, :cond_0

    .line 583
    iget v3, p0, Lcom/google/android/talk/videochat/CameraManager;->mPreferredBackCameraId:I

    iput v3, p0, Lcom/google/android/talk/videochat/CameraManager;->mCurrentCameraId:I

    .line 584
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/android/talk/videochat/CameraManager;->mCurrentCameraIsFrontFacing:Z

    .line 589
    :goto_0
    iget v3, p0, Lcom/google/android/talk/videochat/CameraManager;->mCameraState:I

    packed-switch v3, :pswitch_data_0

    .line 614
    :goto_1
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CameraManager;->sendCameraParameterChangeNotification()V

    .line 615
    monitor-exit v2

    .line 616
    :goto_2
    return-void

    .line 586
    :cond_0
    iget v3, p0, Lcom/google/android/talk/videochat/CameraManager;->mPreferredFrontCameraId:I

    iput v3, p0, Lcom/google/android/talk/videochat/CameraManager;->mCurrentCameraId:I

    .line 587
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/talk/videochat/CameraManager;->mCurrentCameraIsFrontFacing:Z

    goto :goto_0

    .line 615
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 591
    :pswitch_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CameraManager;->openCameraIfNeeded()V

    goto :goto_1

    .line 594
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/talk/videochat/CameraManager;->openCameraIfNeeded()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 596
    :try_start_2
    sget-object v3, Lcom/google/android/talk/videochat/CameraManager;->TEST_STABILIZATION:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 599
    const/4 v0, 0x1

    .line 600
    .local v0, always:Z
    if-eqz v0, :cond_2

    .line 601
    new-instance v3, Ljava/io/IOException;

    const-string v4, "not supported"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 606
    .end local v0           #always:Z
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 607
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    const-string v3, "Talk:CameraManager"

    const-string v4, "setPreviewTexture failed"

    invoke-static {v3, v4}, Lcom/google/android/talk/TalkApp;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 604
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    :try_start_4
    iget-object v3, p0, Lcom/google/android/talk/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    iget-object v4, p0, Lcom/google/android/talk/videochat/CameraManager;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 610
    :cond_2
    :try_start_5
    const-string v3, "Talk:CameraManager"

    const-string v4, "switchCamera calling startPreview"

    invoke-static {v3, v4}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    iget-object v3, p0, Lcom/google/android/talk/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->startPreview()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 589
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
