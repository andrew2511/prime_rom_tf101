.class Lcom/google/android/street/Renderer;
.super Ljava/lang/Thread;
.source "Renderer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/google/android/street/PanoramaManager$PanoFetchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/street/Renderer$1;,
        Lcom/google/android/street/Renderer$Transition;,
        Lcom/google/android/street/Renderer$MessageQueue;,
        Lcom/google/android/street/Renderer$Message;,
        Lcom/google/android/street/Renderer$RenderStatus;,
        Lcom/google/android/street/Renderer$PixelToYawPitchArgs;,
        Lcom/google/android/street/Renderer$SetPanoramaConfigArgs;,
        Lcom/google/android/street/Renderer$PanoramaKeyAndTexture;,
        Lcom/google/android/street/Renderer$PanoramaDrawable;,
        Lcom/google/android/street/Renderer$RenderStatusReceiver;
    }
.end annotation


# static fields
.field private static final LONGER_HALF_FOV_TANGENT:D

.field private static final sEglSemaphore:Ljava/util/concurrent/Semaphore;


# instance fields
.field private mConfigurationChanged:Z

.field private mContext:Landroid/content/Context;

.field private mCopyrightID:I

.field private mCopyrightPaint:Landroid/graphics/Paint;

.field private mCurrentRenderStatus:Lcom/google/android/street/Renderer$RenderStatus;

.field private mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field private mGl:Ljavax/microedition/khronos/opengles/GL10;

.field private mGoogleLogo:Landroid/graphics/drawable/Drawable;

.field private mGoogleLogoLabelId:I

.field private mHaveSurface:Z

.field private mHeight:I

.field private mLabelMaker:Lcom/google/android/street/LabelMaker;

.field private mLabelsDirty:Z

.field private mLastPanIdDrawn:Ljava/lang/String;

.field private mLastRenderProgress:I

.field private mMessageQueue:Lcom/google/android/street/Renderer$MessageQueue;

.field private mNextPanoramaConfig:Lcom/google/android/street/Renderer$SetPanoramaConfigArgs;

.field private mOverlay:Lcom/google/android/street/Overlay;

.field private mPancake:Lcom/google/android/street/Overlay$Pancake;

.field private mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

.field private mPanoramaDrawable:Lcom/google/android/street/Renderer$PanoramaDrawable;

.field private final mPanoramaManager:Lcom/google/android/street/PanoramaManager;

.field private mProjector:Lcom/google/android/street/Projector;

.field private mReadyForMessages:Z

.field private mRenderStatusReceiver:Lcom/google/android/street/Renderer$RenderStatusReceiver;

.field private volatile mShuttingDown:Z

.field private mSizeChanged:Z

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mTextureCache:Lcom/google/android/street/TextureCache;

.field private mTransition:Lcom/google/android/street/Renderer$Transition;

.field private mUserOrientation:Lcom/google/android/street/UserOrientation;

.field private final mViewpointDetector:Lcom/google/android/street/ViewpointDetector;

.field private mWidth:I

.field private mZoomLevels:I

.field private newTimer:Lcom/google/android/street/Timer;

.field private timer:Lcom/google/android/street/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const/high16 v0, 0x4234

    invoke-static {v0}, Lcom/google/android/street/StreetMath;->degreesToRadians(F)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    sput-wide v0, Lcom/google/android/street/Renderer;->LONGER_HALF_FOV_TANGENT:D

    .line 433
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcom/google/android/street/Renderer;->sEglSemaphore:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method constructor <init>(Lcom/google/android/street/PanoramaManager;F)V
    .locals 5
    .parameter "panoramaManager"
    .parameter "screenDensity"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x90

    .line 514
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 479
    iput-object v3, p0, Lcom/google/android/street/Renderer;->timer:Lcom/google/android/street/Timer;

    .line 480
    iput-object v3, p0, Lcom/google/android/street/Renderer;->newTimer:Lcom/google/android/street/Timer;

    .line 482
    iput-object v3, p0, Lcom/google/android/street/Renderer;->mLastPanIdDrawn:Ljava/lang/String;

    .line 497
    new-instance v0, Lcom/google/android/street/ViewpointDetector;

    invoke-direct {v0}, Lcom/google/android/street/ViewpointDetector;-><init>()V

    iput-object v0, p0, Lcom/google/android/street/Renderer;->mViewpointDetector:Lcom/google/android/street/ViewpointDetector;

    .line 515
    iput-object p1, p0, Lcom/google/android/street/Renderer;->mPanoramaManager:Lcom/google/android/street/PanoramaManager;

    .line 516
    iput v1, p0, Lcom/google/android/street/Renderer;->mWidth:I

    .line 517
    iput v1, p0, Lcom/google/android/street/Renderer;->mHeight:I

    .line 518
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/street/Renderer;->mCopyrightPaint:Landroid/graphics/Paint;

    .line 519
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mCopyrightPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 520
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mCopyrightPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4140

    mul-float/2addr v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 521
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mCopyrightPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 522
    new-instance v0, Lcom/google/android/street/LabelMaker;

    const/16 v1, 0x200

    const/16 v2, 0x80

    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/street/LabelMaker;-><init>(ZII)V

    iput-object v0, p0, Lcom/google/android/street/Renderer;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    .line 523
    iput-boolean v4, p0, Lcom/google/android/street/Renderer;->mLabelsDirty:Z

    .line 524
    new-instance v0, Lcom/google/android/street/Renderer$RenderStatus;

    invoke-direct {v0}, Lcom/google/android/street/Renderer$RenderStatus;-><init>()V

    iput-object v0, p0, Lcom/google/android/street/Renderer;->mCurrentRenderStatus:Lcom/google/android/street/Renderer$RenderStatus;

    .line 525
    new-instance v0, Lcom/google/android/street/Renderer$MessageQueue;

    invoke-direct {v0, v3}, Lcom/google/android/street/Renderer$MessageQueue;-><init>(Lcom/google/android/street/Renderer$1;)V

    iput-object v0, p0, Lcom/google/android/street/Renderer;->mMessageQueue:Lcom/google/android/street/Renderer$MessageQueue;

    .line 526
    new-instance v0, Lcom/google/android/street/Projector;

    invoke-direct {v0}, Lcom/google/android/street/Projector;-><init>()V

    iput-object v0, p0, Lcom/google/android/street/Renderer;->mProjector:Lcom/google/android/street/Projector;

    .line 527
    return-void
.end method

.method private addPanoramaTile(Lcom/google/android/street/Renderer$PanoramaKeyAndTexture;)V
    .locals 3
    .parameter "keyAndTexture"

    .prologue
    .line 1266
    iget-object v1, p1, Lcom/google/android/street/Renderer$PanoramaKeyAndTexture;->mKey:Lcom/google/android/street/PanoramaImageKey;

    .line 1267
    .local v1, key:Lcom/google/android/street/PanoramaImageKey;
    iget-object v0, p1, Lcom/google/android/street/Renderer$PanoramaKeyAndTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 1271
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/google/android/street/Renderer;->mTextureCache:Lcom/google/android/street/TextureCache;

    invoke-virtual {v2, v1}, Lcom/google/android/street/TextureCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1272
    iget-object v2, p0, Lcom/google/android/street/Renderer;->mTextureCache:Lcom/google/android/street/TextureCache;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/street/TextureCache;->insertImage(Lcom/google/android/street/PanoramaImageKey;Landroid/graphics/Bitmap;)V

    .line 1274
    :cond_0
    return-void
.end method

.method private checkEglError(Ljavax/microedition/khronos/egl/EGL10;)Z
    .locals 6
    .parameter "egl"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1131
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 1132
    .local v0, eglError:I
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 1133
    const-string v1, "EGL error: %d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/street/Street;->log(Ljava/lang/String;)V

    .line 1134
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/street/Renderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, v5

    .line 1137
    :goto_0
    return v1

    :cond_0
    move v1, v4

    goto :goto_0
.end method

.method private createLabels(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter "gl"

    .prologue
    .line 1557
    iget-object v1, p0, Lcom/google/android/street/Renderer;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    invoke-virtual {v1, p1}, Lcom/google/android/street/LabelMaker;->beginAdding(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1559
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/street/Renderer;->mCopyrightID:I

    .line 1560
    iget-object v1, p0, Lcom/google/android/street/Renderer;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    if-eqz v1, :cond_0

    .line 1561
    iget-object v1, p0, Lcom/google/android/street/Renderer;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v0, v1, Lcom/google/android/street/PanoramaConfig;->mCopyright:Ljava/lang/String;

    .line 1562
    .local v0, copyright:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1563
    iget-object v1, p0, Lcom/google/android/street/Renderer;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    iget-object v2, p0, Lcom/google/android/street/Renderer;->mCopyrightPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/google/android/street/LabelMaker;->add(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;)I

    move-result v1

    iput v1, p0, Lcom/google/android/street/Renderer;->mCopyrightID:I

    .line 1567
    .end local v0           #copyright:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/google/android/street/Renderer;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    iget-object v2, p0, Lcom/google/android/street/Renderer;->mGoogleLogo:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/street/LabelMaker;->add(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/drawable/Drawable;)I

    move-result v1

    iput v1, p0, Lcom/google/android/street/Renderer;->mGoogleLogoLabelId:I

    .line 1568
    iget-object v1, p0, Lcom/google/android/street/Renderer;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    invoke-virtual {v1, p1}, Lcom/google/android/street/LabelMaker;->endAdding(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1569
    return-void
.end method

.method private dispatch(Lcom/google/android/street/Renderer$Message;)V
    .locals 3
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 688
    iget v0, p1, Lcom/google/android/street/Renderer$Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 748
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/google/android/street/Renderer$Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 690
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/street/Renderer;->doSurfaceCreated()V

    .line 751
    :goto_0
    :pswitch_1
    return-void

    .line 693
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/street/Renderer;->doSurfaceDestroyed()V

    goto :goto_0

    .line 696
    :pswitch_3
    iget v0, p1, Lcom/google/android/street/Renderer$Message;->arg1:I

    iget v1, p1, Lcom/google/android/street/Renderer$Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/street/Renderer;->doSurfaceChanged(II)V

    goto :goto_0

    .line 699
    :pswitch_4
    iget-object v0, p1, Lcom/google/android/street/Renderer$Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/street/Renderer$SetPanoramaConfigArgs;

    invoke-direct {p0, v0}, Lcom/google/android/street/Renderer;->doSetPanoramaConfig(Lcom/google/android/street/Renderer$SetPanoramaConfigArgs;)V

    goto :goto_0

    .line 702
    :pswitch_5
    iget v0, p1, Lcom/google/android/street/Renderer$Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/google/android/street/Renderer;->doSetZoomLevels(I)V

    goto :goto_0

    .line 705
    :pswitch_6
    iget-object v0, p1, Lcom/google/android/street/Renderer$Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/street/UserOrientation;

    invoke-direct {p0, v0}, Lcom/google/android/street/Renderer;->doSetUserOrientation(Lcom/google/android/street/UserOrientation;)V

    goto :goto_0

    .line 708
    :pswitch_7
    iget v0, p1, Lcom/google/android/street/Renderer$Message;->arg1:I

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iget v1, p1, Lcom/google/android/street/Renderer$Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/street/Renderer;->doSetPancake(FF)V

    goto :goto_0

    .line 712
    :pswitch_8
    invoke-direct {p0}, Lcom/google/android/street/Renderer;->doClearPancake()V

    goto :goto_0

    .line 715
    :pswitch_9
    iget-object v0, p1, Lcom/google/android/street/Renderer$Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/street/Renderer$Transition;

    invoke-direct {p0, v0}, Lcom/google/android/street/Renderer;->doStartTransition(Lcom/google/android/street/Renderer$Transition;)V

    goto :goto_0

    .line 718
    :pswitch_a
    iget-object v0, p1, Lcom/google/android/street/Renderer$Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/street/Renderer$PanoramaKeyAndTexture;

    invoke-direct {p0, v0}, Lcom/google/android/street/Renderer;->addPanoramaTile(Lcom/google/android/street/Renderer$PanoramaKeyAndTexture;)V

    goto :goto_0

    .line 724
    :pswitch_b
    invoke-direct {p0}, Lcom/google/android/street/Renderer;->doRenderingPause()V

    goto :goto_0

    .line 727
    :pswitch_c
    invoke-direct {p0}, Lcom/google/android/street/Renderer;->doRenderingResume()V

    goto :goto_0

    .line 730
    :pswitch_d
    iget v0, p1, Lcom/google/android/street/Renderer$Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/google/android/street/Renderer;->doSetHighlight(I)V

    goto :goto_0

    .line 733
    :pswitch_e
    iget v0, p1, Lcom/google/android/street/Renderer$Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/google/android/street/Renderer;->doSetMotionUse(I)V

    goto :goto_0

    .line 736
    :pswitch_f
    iget-object v0, p1, Lcom/google/android/street/Renderer$Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/google/android/street/Renderer;->doFence(Ljava/lang/Object;)V

    goto :goto_0

    .line 739
    :pswitch_10
    invoke-direct {p0}, Lcom/google/android/street/Renderer;->doShutdown()V

    goto :goto_0

    .line 742
    :pswitch_11
    iget v0, p1, Lcom/google/android/street/Renderer$Message;->arg1:I

    iget v1, p1, Lcom/google/android/street/Renderer$Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/street/Renderer;->doSetRouteParamters(II)V

    goto :goto_0

    .line 745
    :pswitch_12
    iget-object v0, p1, Lcom/google/android/street/Renderer$Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/street/Renderer$PixelToYawPitchArgs;

    invoke-direct {p0, v0}, Lcom/google/android/street/Renderer;->doPixelToYawPitch(Lcom/google/android/street/Renderer$PixelToYawPitchArgs;)V

    goto :goto_0

    .line 688
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_a
        :pswitch_1
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private doClearPancake()V
    .locals 1

    .prologue
    .line 1548
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/street/Renderer;->mPancake:Lcom/google/android/street/Overlay$Pancake;

    .line 1549
    return-void
.end method

.method private doFence(Ljava/lang/Object;)V
    .locals 1
    .parameter "fence"

    .prologue
    .line 1294
    monitor-enter p1

    .line 1295
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1296
    monitor-exit p1

    .line 1297
    return-void

    .line 1296
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private doPixelToYawPitch(Lcom/google/android/street/Renderer$PixelToYawPitchArgs;)V
    .locals 12
    .parameter "args"

    .prologue
    const/high16 v11, 0x3f80

    const/4 v7, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 963
    iget-object v2, p0, Lcom/google/android/street/Renderer;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    if-nez v2, :cond_0

    .line 964
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/google/android/street/Renderer$PixelToYawPitchArgs;->mYawPitchOut:[F

    .line 1010
    :goto_0
    monitor-enter p1

    .line 1011
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p1, Lcom/google/android/street/Renderer$PixelToYawPitchArgs;->mDone:Z

    .line 1012
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 1013
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1014
    return-void

    .line 967
    :cond_0
    iget-object v2, p0, Lcom/google/android/street/Renderer;->mProjector:Lcom/google/android/street/Projector;

    iget-object v3, p0, Lcom/google/android/street/Renderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-virtual {v2, v3}, Lcom/google/android/street/Projector;->getCurrentProjection(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 970
    iget-boolean v2, p1, Lcom/google/android/street/Renderer$PixelToYawPitchArgs;->mIsVehicleRelative:Z

    if-eqz v2, :cond_3

    .line 975
    const/16 v2, 0x10

    new-array v0, v2, [F

    .line 976
    .local v0, modelMatrix:[F
    iget-object v2, p0, Lcom/google/android/street/Renderer;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-virtual {v2}, Lcom/google/android/street/UserOrientation;->getRotationMatrix()[F

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/street/Renderer;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    invoke-virtual {v3}, Lcom/google/android/street/PanoramaConfig;->getTiltMatrix()[F

    move-result-object v4

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 979
    iget-object v2, p0, Lcom/google/android/street/Renderer;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget v2, v2, Lcom/google/android/street/PanoramaConfig;->mPanoYawDeg:F

    neg-float v2, v2

    move v3, v7

    move v4, v11

    move v5, v7

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 986
    :goto_1
    const/4 v2, 0x4

    new-array v6, v2, [F

    .line 988
    .local v6, objectCoords:[F
    iget-object v2, p0, Lcom/google/android/street/Renderer;->mProjector:Lcom/google/android/street/Projector;

    const/4 v3, 0x3

    new-array v3, v3, [F

    iget v4, p1, Lcom/google/android/street/Renderer$PixelToYawPitchArgs;->mX:F

    aput v4, v3, v1

    iget v4, p0, Lcom/google/android/street/Renderer;->mHeight:I

    int-to-float v4, v4

    iget v5, p1, Lcom/google/android/street/Renderer$PixelToYawPitchArgs;->mY:F

    sub-float/2addr v4, v5

    aput v4, v3, v9

    aput v11, v3, v10

    move v4, v1

    move-object v5, v0

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/street/Projector;->unproject([FI[F[FI)V

    .line 992
    new-array v8, v10, [F

    .line 993
    .local v8, yawPitch:[F
    aget v2, v6, v1

    aget v3, v6, v9

    aget v4, v6, v10

    invoke-static {v2, v3, v4, v8}, Lcom/google/android/street/StreetMath;->rectangularToSphericalCoords(FFF[F)V

    .line 996
    iget-boolean v2, p1, Lcom/google/android/street/Renderer$PixelToYawPitchArgs;->mIsVehicleRelative:Z

    if-nez v2, :cond_1

    .line 999
    aget v2, v8, v1

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    invoke-static {v2}, Lcom/google/android/street/StreetMath;->normalizeUnitAngle(F)F

    move-result v2

    aput v2, v8, v1

    .line 1005
    :cond_1
    aget v1, v8, v1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_2

    aget v1, v8, v9

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-object v1, p1, Lcom/google/android/street/Renderer$PixelToYawPitchArgs;->mYawPitchOut:[F

    goto :goto_0

    .line 982
    .end local v0           #modelMatrix:[F
    .end local v6           #objectCoords:[F
    .end local v8           #yawPitch:[F
    :cond_3
    iget-object v2, p0, Lcom/google/android/street/Renderer;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-virtual {v2}, Lcom/google/android/street/UserOrientation;->getRotationMatrix()[F

    move-result-object v0

    .restart local v0       #modelMatrix:[F
    goto :goto_1

    .restart local v6       #objectCoords:[F
    .restart local v8       #yawPitch:[F
    :cond_4
    move-object v1, v8

    .line 1005
    goto :goto_2

    .line 1013
    .end local v0           #modelMatrix:[F
    .end local v6           #objectCoords:[F
    .end local v8           #yawPitch:[F
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private doRenderingPause()V
    .locals 0

    .prologue
    .line 1277
    invoke-direct {p0}, Lcom/google/android/street/Renderer;->shutdownEgl()V

    .line 1278
    return-void
.end method

.method private doRenderingResume()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1281
    invoke-direct {p0}, Lcom/google/android/street/Renderer;->startEgl()V

    .line 1282
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/street/Renderer;->mSizeChanged:Z

    .line 1283
    return-void
.end method

.method private doSetHighlight(I)V
    .locals 1
    .parameter "highlight"

    .prologue
    .line 1286
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mOverlay:Lcom/google/android/street/Overlay;

    invoke-virtual {v0, p1}, Lcom/google/android/street/Overlay;->setHighlight(I)V

    .line 1287
    return-void
.end method

.method private doSetMotionUse(I)V
    .locals 3
    .parameter "device"

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mOverlay:Lcom/google/android/street/Overlay;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/street/Overlay;->doSetMotionUse(IJ)V

    .line 1291
    return-void
.end method

.method private doSetPancake(FF)V
    .locals 12
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x2

    const/4 v11, 0x1

    const/4 v6, 0x0

    .line 1519
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v0, v0, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    if-nez v0, :cond_0

    .line 1545
    :goto_0
    return-void

    .line 1524
    :cond_0
    new-instance v8, Lcom/google/android/street/Renderer$PixelToYawPitchArgs;

    invoke-direct {v8, p1, p2, v6}, Lcom/google/android/street/Renderer$PixelToYawPitchArgs;-><init>(FFZ)V

    .line 1525
    .local v8, args:Lcom/google/android/street/Renderer$PixelToYawPitchArgs;
    invoke-direct {p0, v8}, Lcom/google/android/street/Renderer;->doPixelToYawPitch(Lcom/google/android/street/Renderer$PixelToYawPitchArgs;)V

    .line 1529
    new-array v10, v5, [F

    .line 1530
    .local v10, vehicleYawPitch:[F
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v1, v8, Lcom/google/android/street/Renderer$PixelToYawPitchArgs;->mYawPitchOut:[F

    aget v1, v1, v6

    iget-object v2, v8, Lcom/google/android/street/Renderer$PixelToYawPitchArgs;->mYawPitchOut:[F

    aget v2, v2, v11

    invoke-virtual {v0, v1, v2, v10}, Lcom/google/android/street/PanoramaConfig;->worldToVehicleYawPitch(FF[F)V

    .line 1536
    const/4 v0, 0x3

    new-array v9, v0, [F

    .line 1537
    .local v9, normal:[F
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v0, v0, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    invoke-virtual {v0}, Lcom/google/android/street/DepthMap;->decompress()Z

    .line 1538
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v0, v0, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    aget v1, v10, v6

    aget v2, v10, v11

    invoke-virtual {v0, v1, v2, v9}, Lcom/google/android/street/DepthMap;->computeDepthAndNormal(FF[F)F

    move-result v4

    .line 1540
    .local v4, depth:F
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v0, v0, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    aget v1, v10, v6

    aget v2, v10, v11

    invoke-virtual {v0, v1, v2}, Lcom/google/android/street/DepthMap;->isGround(FF)Z

    move-result v7

    .line 1542
    .local v7, isGround:Z
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    aget v1, v9, v6

    aget v2, v9, v11

    aget v3, v9, v5

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/google/android/street/PanoramaConfig;->vehicleToWorld(FFF[F)V

    .line 1543
    new-instance v0, Lcom/google/android/street/Overlay$Pancake;

    aget v1, v9, v6

    aget v2, v9, v11

    aget v3, v9, v5

    iget-object v5, v8, Lcom/google/android/street/Renderer$PixelToYawPitchArgs;->mYawPitchOut:[F

    aget v5, v5, v6

    iget-object v6, v8, Lcom/google/android/street/Renderer$PixelToYawPitchArgs;->mYawPitchOut:[F

    aget v6, v6, v11

    invoke-direct/range {v0 .. v7}, Lcom/google/android/street/Overlay$Pancake;-><init>(FFFFFFZ)V

    iput-object v0, p0, Lcom/google/android/street/Renderer;->mPancake:Lcom/google/android/street/Overlay$Pancake;

    goto :goto_0
.end method

.method private declared-synchronized doSetPanoramaConfig(Lcom/google/android/street/Renderer$SetPanoramaConfigArgs;)V
    .locals 3
    .parameter "args"

    .prologue
    .line 1223
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mTransition:Lcom/google/android/street/Renderer$Transition;

    if-eqz v0, :cond_1

    .line 1226
    iput-object p1, p0, Lcom/google/android/street/Renderer;->mNextPanoramaConfig:Lcom/google/android/street/Renderer$SetPanoramaConfigArgs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1242
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1232
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/street/Renderer;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v0, v0, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    if-eqz v0, :cond_2

    .line 1233
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v0, v0, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    invoke-virtual {v0}, Lcom/google/android/street/DepthMap;->compress()Z

    .line 1236
    :cond_2
    iget-object v0, p1, Lcom/google/android/street/Renderer$SetPanoramaConfigArgs;->mConfig:Lcom/google/android/street/PanoramaConfig;

    iput-object v0, p0, Lcom/google/android/street/Renderer;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    .line 1237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/street/Renderer;->mConfigurationChanged:Z

    .line 1238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/street/Renderer;->mLabelsDirty:Z

    .line 1239
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    if-eqz v0, :cond_0

    .line 1240
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mViewpointDetector:Lcom/google/android/street/ViewpointDetector;

    iget-object v1, p0, Lcom/google/android/street/Renderer;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v2, p0, Lcom/google/android/street/Renderer;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/street/ViewpointDetector;->checkConfig(Lcom/google/android/street/PanoramaConfig;Lcom/google/android/street/UserOrientation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1223
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private doSetRouteParamters(II)V
    .locals 3
    .parameter "incomingYaw"
    .parameter "outgoingYaw"

    .prologue
    .line 932
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mOverlay:Lcom/google/android/street/Overlay;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/street/Overlay;->setDirectionsArrowParams(FF)V

    .line 933
    return-void
.end method

.method private doSetUserOrientation(Lcom/google/android/street/UserOrientation;)V
    .locals 2
    .parameter "userOrientation"

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mTransition:Lcom/google/android/street/Renderer$Transition;

    if-eqz v0, :cond_0

    .line 1263
    :goto_0
    return-void

    .line 1261
    :cond_0
    iput-object p1, p0, Lcom/google/android/street/Renderer;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    .line 1262
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mViewpointDetector:Lcom/google/android/street/ViewpointDetector;

    iget-object v1, p0, Lcom/google/android/street/Renderer;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-virtual {v0, v1}, Lcom/google/android/street/ViewpointDetector;->checkOrientation(Lcom/google/android/street/UserOrientation;)V

    goto :goto_0
.end method

.method private doSetZoomLevels(I)V
    .locals 1
    .parameter "zoomLevels"

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mTransition:Lcom/google/android/street/Renderer$Transition;

    if-eqz v0, :cond_0

    .line 1250
    :goto_0
    return-void

    .line 1249
    :cond_0
    iput p1, p0, Lcom/google/android/street/Renderer;->mZoomLevels:I

    goto :goto_0
.end method

.method private doShutdown()V
    .locals 1

    .prologue
    .line 928
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/street/Renderer;->mShuttingDown:Z

    .line 929
    return-void
.end method

.method private doStartTransition(Lcom/google/android/street/Renderer$Transition;)V
    .locals 1
    .parameter "transition"

    .prologue
    .line 1552
    iput-object p1, p0, Lcom/google/android/street/Renderer;->mTransition:Lcom/google/android/street/Renderer$Transition;

    .line 1553
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/street/Renderer;->mNextPanoramaConfig:Lcom/google/android/street/Renderer$SetPanoramaConfigArgs;

    .line 1554
    return-void
.end method

.method private doSurfaceChanged(II)V
    .locals 7
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1175
    iget v2, p0, Lcom/google/android/street/Renderer;->mWidth:I

    if-nez v2, :cond_1

    iget v2, p0, Lcom/google/android/street/Renderer;->mHeight:I

    if-nez v2, :cond_1

    move v0, v6

    .line 1176
    .local v0, firstTime:Z
    :goto_0
    if-nez v0, :cond_0

    .line 1177
    const-string v2, "Window changed size: %d,%d -> %d,%d Recreating OpenGL surface"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/google/android/street/Renderer;->mWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget v4, p0, Lcom/google/android/street/Renderer;->mHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/street/Street;->log(Ljava/lang/String;)V

    .line 1192
    invoke-direct {p0}, Lcom/google/android/street/Renderer;->recreateSurface()V

    .line 1193
    invoke-direct {p0}, Lcom/google/android/street/Renderer;->recreateSurface()V

    .line 1195
    :cond_0
    iput p1, p0, Lcom/google/android/street/Renderer;->mWidth:I

    .line 1196
    iput p2, p0, Lcom/google/android/street/Renderer;->mHeight:I

    .line 1197
    iput-boolean v6, p0, Lcom/google/android/street/Renderer;->mSizeChanged:Z

    .line 1199
    iget v2, p0, Lcom/google/android/street/Renderer;->mWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/street/Renderer;->mHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Lcom/google/android/street/Renderer;->getUnzoomedHorizontalFov(F)F

    move-result v1

    .line 1200
    .local v1, hFov:F
    iget-object v2, p0, Lcom/google/android/street/Renderer;->mViewpointDetector:Lcom/google/android/street/ViewpointDetector;

    invoke-virtual {v2, v1}, Lcom/google/android/street/ViewpointDetector;->setHorizontalFovDegrees(F)V

    .line 1201
    return-void

    .end local v0           #firstTime:Z
    .end local v1           #hFov:F
    :cond_1
    move v0, v5

    .line 1175
    goto :goto_0
.end method

.method private doSurfaceCreated()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1072
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/street/Renderer;->mHaveSurface:Z

    .line 1073
    invoke-direct {p0}, Lcom/google/android/street/Renderer;->startEgl()V

    .line 1074
    return-void
.end method

.method private doSurfaceDestroyed()V
    .locals 1

    .prologue
    .line 1144
    invoke-direct {p0}, Lcom/google/android/street/Renderer;->shutdownEgl()V

    .line 1145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/street/Renderer;->mHaveSurface:Z

    .line 1146
    return-void
.end method

.method private draw(J)V
    .locals 5
    .parameter "currentTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1340
    iget v3, p0, Lcom/google/android/street/Renderer;->mWidth:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/google/android/street/Renderer;->mHeight:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/street/Renderer;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v3, :cond_1

    .line 1370
    :cond_0
    return-void

    .line 1345
    :cond_1
    iget-boolean v3, p0, Lcom/google/android/street/Renderer;->mSizeChanged:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    move v2, v3

    .line 1346
    .local v2, frameCount:I
    :goto_0
    const/4 v1, 0x0

    .local v1, frame:I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 1347
    invoke-direct {p0, p1, p2}, Lcom/google/android/street/Renderer;->drawFrame(J)V

    .line 1348
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 1349
    .local v0, egl:Ljavax/microedition/khronos/egl/EGL10;
    iget-object v3, p0, Lcom/google/android/street/Renderer;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/google/android/street/Renderer;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 1346
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1345
    .end local v0           #egl:Ljavax/microedition/khronos/egl/EGL10;
    .end local v1           #frame:I
    .end local v2           #frameCount:I
    :cond_2
    const/4 v3, 0x1

    move v2, v3

    goto :goto_0
.end method

.method private drawFrame(J)V
    .locals 2
    .parameter "currentTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1373
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    .line 1374
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL10;
    if-eqz v0, :cond_0

    .line 1375
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/street/Renderer;->drawPanorama(Ljavax/microedition/khronos/opengles/GL10;J)V

    .line 1376
    invoke-direct {p0, v0}, Lcom/google/android/street/Renderer;->drawLabels(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1378
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/street/Renderer;->mLabelsDirty:Z

    .line 1379
    iput-boolean v1, p0, Lcom/google/android/street/Renderer;->mSizeChanged:Z

    .line 1380
    iput-boolean v1, p0, Lcom/google/android/street/Renderer;->mConfigurationChanged:Z

    .line 1381
    return-void
.end method

.method private drawLabels(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .parameter

    .prologue
    const/high16 v4, 0x4120

    const/high16 v3, 0x4000

    .line 1572
    iget-boolean v0, p0, Lcom/google/android/street/Renderer;->mLabelsDirty:Z

    if-eqz v0, :cond_0

    .line 1573
    invoke-direct {p0, p1}, Lcom/google/android/street/Renderer;->createLabels(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1575
    :cond_0
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    iget v1, p0, Lcom/google/android/street/Renderer;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/street/Renderer;->mHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/street/LabelMaker;->beginDrawing(Ljavax/microedition/khronos/opengles/GL10;FF)V

    .line 1576
    iget v0, p0, Lcom/google/android/street/Renderer;->mCopyrightID:I

    if-ltz v0, :cond_1

    .line 1577
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    iget v1, p0, Lcom/google/android/street/Renderer;->mCopyrightID:I

    invoke-virtual {v0, v1}, Lcom/google/android/street/LabelMaker;->getWidth(I)F

    move-result v0

    .line 1578
    iget-object v1, p0, Lcom/google/android/street/Renderer;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    iget v2, p0, Lcom/google/android/street/Renderer;->mWidth:I

    int-to-float v2, v2

    add-float/2addr v0, v3

    sub-float v0, v2, v0

    iget v2, p0, Lcom/google/android/street/Renderer;->mCopyrightID:I

    invoke-virtual {v1, p1, v0, v3, v2}, Lcom/google/android/street/LabelMaker;->draw(Ljavax/microedition/khronos/opengles/GL10;FFI)V

    .line 1581
    :cond_1
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    iget v1, p0, Lcom/google/android/street/Renderer;->mGoogleLogoLabelId:I

    invoke-virtual {v0, p1, v4, v4, v1}, Lcom/google/android/street/LabelMaker;->draw(Ljavax/microedition/khronos/opengles/GL10;FFI)V

    .line 1582
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    invoke-virtual {v0, p1}, Lcom/google/android/street/LabelMaker;->endDrawing(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1583
    return-void
.end method

.method private drawPanorama(Ljavax/microedition/khronos/opengles/GL10;J)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1385
    iget-boolean v0, p0, Lcom/google/android/street/Renderer;->mConfigurationChanged:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/street/Renderer;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    if-eqz v0, :cond_0

    .line 1388
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget v0, v0, Lcom/google/android/street/PanoramaConfig;->mProjectionType:I

    packed-switch v0, :pswitch_data_0

    .line 1394
    new-instance v0, Lcom/google/android/street/Sphere;

    iget-object v1, p0, Lcom/google/android/street/Renderer;->mPanoramaManager:Lcom/google/android/street/PanoramaManager;

    invoke-direct {v0, v1, p0}, Lcom/google/android/street/Sphere;-><init>(Lcom/google/android/street/PanoramaManager;Lcom/google/android/street/PanoramaManager$PanoFetchListener;)V

    iput-object v0, p0, Lcom/google/android/street/Renderer;->mPanoramaDrawable:Lcom/google/android/street/Renderer$PanoramaDrawable;

    .line 1401
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/android/street/Renderer;->isReadyToEndTransition()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1404
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v0, v0, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    if-eqz v0, :cond_1

    .line 1405
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v0, v0, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    invoke-virtual {v0}, Lcom/google/android/street/DepthMap;->compress()Z

    .line 1408
    :cond_1
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mTransition:Lcom/google/android/street/Renderer$Transition;

    iget-object v0, v0, Lcom/google/android/street/Renderer$Transition;->mNewUserOrientation:Lcom/google/android/street/UserOrientation;

    iput-object v0, p0, Lcom/google/android/street/Renderer;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    .line 1409
    iput-object v2, p0, Lcom/google/android/street/Renderer;->mTransition:Lcom/google/android/street/Renderer$Transition;

    .line 1410
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mNextPanoramaConfig:Lcom/google/android/street/Renderer$SetPanoramaConfigArgs;

    invoke-direct {p0, v0}, Lcom/google/android/street/Renderer;->doSetPanoramaConfig(Lcom/google/android/street/Renderer$SetPanoramaConfigArgs;)V

    .line 1411
    iput-object v2, p0, Lcom/google/android/street/Renderer;->mNextPanoramaConfig:Lcom/google/android/street/Renderer$SetPanoramaConfigArgs;

    .line 1414
    :cond_2
    iget v0, p0, Lcom/google/android/street/Renderer;->mWidth:I

    .line 1415
    iget v1, p0, Lcom/google/android/street/Renderer;->mHeight:I

    .line 1417
    iget-boolean v2, p0, Lcom/google/android/street/Renderer;->mSizeChanged:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/google/android/street/Renderer;->mConfigurationChanged:Z

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/google/android/street/Renderer;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    if-eqz v2, :cond_4

    .line 1419
    iget-object v2, p0, Lcom/google/android/street/Renderer;->mPanoramaDrawable:Lcom/google/android/street/Renderer$PanoramaDrawable;

    iget-object v3, p0, Lcom/google/android/street/Renderer;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v4, p0, Lcom/google/android/street/Renderer;->mTextureCache:Lcom/google/android/street/TextureCache;

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/google/android/street/Renderer$PanoramaDrawable;->initialize(Lcom/google/android/street/PanoramaConfig;Lcom/google/android/street/TextureCache;II)V

    .line 1420
    iget-object v2, p0, Lcom/google/android/street/Renderer;->mProjector:Lcom/google/android/street/Projector;

    invoke-virtual {v2, v6, v6, v0, v1}, Lcom/google/android/street/Projector;->setCurrentView(IIII)V

    .line 1421
    iget-object v2, p0, Lcom/google/android/street/Renderer;->mOverlay:Lcom/google/android/street/Overlay;

    iget-object v3, p0, Lcom/google/android/street/Renderer;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/street/Overlay;->initialize(Lcom/google/android/street/PanoramaConfig;II)V

    .line 1430
    :cond_4
    const/high16 v2, 0x3f80

    invoke-interface {p1, v5, v5, v5, v2}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 1431
    const/16 v2, 0x4000

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 1434
    iget-object v2, p0, Lcom/google/android/street/Renderer;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/street/Renderer;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    invoke-virtual {v2}, Lcom/google/android/street/PanoramaConfig;->serviceTemporarilyUnavailable()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/google/android/street/Renderer;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/street/Renderer;->mPanoramaDrawable:Lcom/google/android/street/Renderer$PanoramaDrawable;

    if-nez v2, :cond_6

    .line 1487
    :cond_5
    :goto_1
    return-void

    .line 1390
    :pswitch_0
    new-instance v0, Lcom/google/android/street/Cube;

    iget-object v1, p0, Lcom/google/android/street/Renderer;->mPanoramaManager:Lcom/google/android/street/PanoramaManager;

    invoke-direct {v0, v1, p0}, Lcom/google/android/street/Cube;-><init>(Lcom/google/android/street/PanoramaManager;Lcom/google/android/street/PanoramaManager$PanoFetchListener;)V

    iput-object v0, p0, Lcom/google/android/street/Renderer;->mPanoramaDrawable:Lcom/google/android/street/Renderer$PanoramaDrawable;

    goto :goto_0

    .line 1442
    :cond_6
    invoke-interface {p1, v6, v6, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 1445
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mTransition:Lcom/google/android/street/Renderer$Transition;

    if-nez v0, :cond_9

    .line 1446
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    .line 1461
    :goto_2
    iget-object v1, p0, Lcom/google/android/street/Renderer;->mPanoramaDrawable:Lcom/google/android/street/Renderer$PanoramaDrawable;

    iget-object v2, p0, Lcom/google/android/street/Renderer;->mCurrentRenderStatus:Lcom/google/android/street/Renderer$RenderStatus;

    iget-object v3, p0, Lcom/google/android/street/Renderer;->mTransition:Lcom/google/android/street/Renderer$Transition;

    invoke-interface {v1, p1, v0, v2, v3}, Lcom/google/android/street/Renderer$PanoramaDrawable;->draw(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/street/UserOrientation;Lcom/google/android/street/Renderer$RenderStatus;Lcom/google/android/street/Renderer$Transition;)V

    .line 1463
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mRenderStatusReceiver:Lcom/google/android/street/Renderer$RenderStatusReceiver;

    if-eqz v0, :cond_8

    .line 1465
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mPanoramaConfig:Lcom/google/android/street/PanoramaConfig;

    invoke-virtual {v0}, Lcom/google/android/street/PanoramaConfig;->someRequestsWillBeDenied()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1466
    const/16 v0, 0x2710

    .line 1470
    :goto_3
    iget v1, p0, Lcom/google/android/street/Renderer;->mLastRenderProgress:I

    if-eq v0, v1, :cond_7

    .line 1471
    iget-object v1, p0, Lcom/google/android/street/Renderer;->mRenderStatusReceiver:Lcom/google/android/street/Renderer$RenderStatusReceiver;

    invoke-interface {v1, v0}, Lcom/google/android/street/Renderer$RenderStatusReceiver;->reportRenderStatusProgress(I)V

    .line 1472
    iput v0, p0, Lcom/google/android/street/Renderer;->mLastRenderProgress:I

    .line 1474
    :cond_7
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mTransition:Lcom/google/android/street/Renderer$Transition;

    if-nez v0, :cond_b

    .line 1475
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mRenderStatusReceiver:Lcom/google/android/street/Renderer$RenderStatusReceiver;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/google/android/street/Renderer$RenderStatusReceiver;->reportTransitionProgress(I)V

    .line 1484
    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mTransition:Lcom/google/android/street/Renderer$Transition;

    if-nez v0, :cond_5

    .line 1485
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mOverlay:Lcom/google/android/street/Overlay;

    iget-object v2, p0, Lcom/google/android/street/Renderer;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    iget-object v3, p0, Lcom/google/android/street/Renderer;->mPancake:Lcom/google/android/street/Overlay$Pancake;

    move-object v1, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/street/Overlay;->draw(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/street/UserOrientation;Lcom/google/android/street/Overlay$Pancake;J)V

    goto :goto_1

    .line 1449
    :cond_9
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mTransition:Lcom/google/android/street/Renderer$Transition;

    iget-object v0, v0, Lcom/google/android/street/Renderer$Transition;->mNewUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-virtual {v0}, Lcom/google/android/street/UserOrientation;->getYaw()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/street/Renderer;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-virtual {v1}, Lcom/google/android/street/UserOrientation;->getYaw()F

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/street/StreetMath;->angleSubtractDegrees(FF)F

    move-result v0

    .line 1452
    iget-object v1, p0, Lcom/google/android/street/Renderer;->mTransition:Lcom/google/android/street/Renderer$Transition;

    iget-object v1, v1, Lcom/google/android/street/Renderer$Transition;->mNewUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-virtual {v1}, Lcom/google/android/street/UserOrientation;->getTilt()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/street/Renderer;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-virtual {v2}, Lcom/google/android/street/UserOrientation;->getTilt()F

    move-result v2

    sub-float/2addr v1, v2

    .line 1454
    new-instance v2, Lcom/google/android/street/UserOrientation;

    iget-object v3, p0, Lcom/google/android/street/Renderer;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-virtual {v3}, Lcom/google/android/street/UserOrientation;->getYaw()F

    move-result v3

    iget-object v4, p0, Lcom/google/android/street/Renderer;->mTransition:Lcom/google/android/street/Renderer$Transition;

    invoke-virtual {v4}, Lcom/google/android/street/Renderer$Transition;->getProgress()F

    move-result v4

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    iget-object v3, p0, Lcom/google/android/street/Renderer;->mUserOrientation:Lcom/google/android/street/UserOrientation;

    invoke-virtual {v3}, Lcom/google/android/street/UserOrientation;->getTilt()F

    move-result v3

    iget-object v4, p0, Lcom/google/android/street/Renderer;->mTransition:Lcom/google/android/street/Renderer$Transition;

    invoke-virtual {v4}, Lcom/google/android/street/Renderer$Transition;->getProgress()F

    move-result v4

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    invoke-direct {v2, v0, v1, v5}, Lcom/google/android/street/UserOrientation;-><init>(FFF)V

    move-object v0, v2

    goto :goto_2

    .line 1468
    :cond_a
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mCurrentRenderStatus:Lcom/google/android/street/Renderer$RenderStatus;

    invoke-virtual {v0}, Lcom/google/android/street/Renderer$RenderStatus;->getProgress()I

    move-result v0

    goto :goto_3

    .line 1478
    :cond_b
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mRenderStatusReceiver:Lcom/google/android/street/Renderer$RenderStatusReceiver;

    const v1, 0x461c4000

    iget-object v2, p0, Lcom/google/android/street/Renderer;->mTransition:Lcom/google/android/street/Renderer$Transition;

    invoke-virtual {v2}, Lcom/google/android/street/Renderer$Transition;->getUnboundedProgress()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/google/android/street/Renderer$RenderStatusReceiver;->reportTransitionProgress(I)V

    goto :goto_4

    .line 1388
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private finishMainLoop()V
    .locals 1

    .prologue
    .line 936
    invoke-direct {p0}, Lcom/google/android/street/Renderer;->shutdownEgl()V

    .line 937
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 938
    return-void
.end method

.method public static getUnzoomedHorizontalFov(F)F
    .locals 5
    .parameter "aspectRatio"

    .prologue
    .line 568
    invoke-static {p0}, Lcom/google/android/street/Renderer;->isLandscape(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 569
    const/high16 v1, 0x42b4

    .line 575
    :goto_0
    return v1

    .line 573
    :cond_0
    sget-wide v1, Lcom/google/android/street/Renderer;->LONGER_HALF_FOV_TANGENT:D

    float-to-double v3, p0

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->atan(D)D

    move-result-wide v1

    double-to-float v0, v1

    .line 575
    .local v0, halfBaseHorizontalFovRad:F
    const/high16 v1, 0x4000

    mul-float/2addr v1, v0

    invoke-static {v1}, Lcom/google/android/street/StreetMath;->radiansToDegrees(F)F

    move-result v1

    goto :goto_0
.end method

.method public static getUnzoomedVerticalFov(F)F
    .locals 5
    .parameter "aspectRatio"

    .prologue
    .line 550
    invoke-static {p0}, Lcom/google/android/street/Renderer;->isLandscape(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 551
    sget-wide v1, Lcom/google/android/street/Renderer;->LONGER_HALF_FOV_TANGENT:D

    float-to-double v3, p0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->atan(D)D

    move-result-wide v1

    double-to-float v0, v1

    .line 553
    .local v0, halfBaseVerticalFovRad:F
    const/high16 v1, 0x4000

    mul-float/2addr v1, v0

    invoke-static {v1}, Lcom/google/android/street/StreetMath;->radiansToDegrees(F)F

    move-result v1

    .line 557
    .end local v0           #halfBaseVerticalFovRad:F
    :goto_0
    return v1

    :cond_0
    const/high16 v1, 0x42b4

    goto :goto_0
.end method

.method private initGL(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .parameter "gl"

    .prologue
    .line 1305
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/egl/EGL10;

    .line 1306
    .local v2, egl:Ljavax/microedition/khronos/egl/EGL10;
    iget-object v1, p0, Lcom/google/android/street/Renderer;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 1307
    .local v1, dpy:Ljavax/microedition/khronos/egl/EGLDisplay;
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1308
    .local v0, config:Ljavax/microedition/khronos/egl/EGLConfig;
    iget-object v3, p0, Lcom/google/android/street/Renderer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v4, 0x0

    invoke-interface {v2, v1, v0, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/street/Renderer;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1310
    iget-object v3, p0, Lcom/google/android/street/Renderer;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/google/android/street/Renderer;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/google/android/street/Renderer;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v1, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1312
    iget-object v3, p0, Lcom/google/android/street/Renderer;->mTextureCache:Lcom/google/android/street/TextureCache;

    invoke-virtual {v3, p1}, Lcom/google/android/street/TextureCache;->initialize(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1313
    iget-object v3, p0, Lcom/google/android/street/Renderer;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    invoke-virtual {v3, p1}, Lcom/google/android/street/LabelMaker;->initialize(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1314
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/street/Renderer;->mLabelsDirty:Z

    .line 1316
    const/16 v3, 0xb71

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 1317
    const/16 v3, 0xc11

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 1320
    const/16 v3, 0xbd0

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 1321
    const/16 v3, 0xb50

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 1322
    const/16 v3, 0xbe2

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 1323
    const/16 v3, 0xc50

    const/16 v4, 0x1102

    invoke-interface {p1, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 1325
    const/16 v3, 0x1d00

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 1327
    const/16 v3, 0xb44

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 1328
    const/16 v3, 0x901

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 1329
    const/16 v3, 0x203

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDepthFunc(I)V

    .line 1330
    return-void
.end method

.method private static isLandscape(F)Z
    .locals 1
    .parameter "aspectRatio"

    .prologue
    .line 535
    const/high16 v0, 0x3f80

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isReadyToEndTransition()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1495
    iget-object v5, p0, Lcom/google/android/street/Renderer;->mTransition:Lcom/google/android/street/Renderer$Transition;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/google/android/street/Renderer;->mTransition:Lcom/google/android/street/Renderer$Transition;

    invoke-virtual {v5}, Lcom/google/android/street/Renderer$Transition;->isComplete()Z

    move-result v5

    if-eqz v5, :cond_4

    move v3, v7

    .line 1498
    .local v3, isTransitionComplete:Z
    :goto_0
    const/4 v2, 0x0

    .line 1499
    .local v2, isNextPanoReady:Z
    const/4 v1, 0x0

    .line 1500
    .local v1, isNextPanoDisabled:Z
    iget-object v5, p0, Lcom/google/android/street/Renderer;->mNextPanoramaConfig:Lcom/google/android/street/Renderer$SetPanoramaConfigArgs;

    if-eqz v5, :cond_2

    .line 1503
    const/4 v2, 0x1

    .line 1504
    iget-object v5, p0, Lcom/google/android/street/Renderer;->mNextPanoramaConfig:Lcom/google/android/street/Renderer$SetPanoramaConfigArgs;

    iget-object v5, v5, Lcom/google/android/street/Renderer$SetPanoramaConfigArgs;->mConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v5, v5, Lcom/google/android/street/PanoramaConfig;->mRootImageKeys:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/street/PanoramaImageKey;

    .line 1505
    .local v4, key:Lcom/google/android/street/PanoramaImageKey;
    iget-object v5, p0, Lcom/google/android/street/Renderer;->mTextureCache:Lcom/google/android/street/TextureCache;

    invoke-virtual {v5, v4}, Lcom/google/android/street/TextureCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 1506
    const/4 v2, 0x0

    .line 1511
    .end local v4           #key:Lcom/google/android/street/PanoramaImageKey;
    :cond_1
    iget-object v5, p0, Lcom/google/android/street/Renderer;->mNextPanoramaConfig:Lcom/google/android/street/Renderer$SetPanoramaConfigArgs;

    iget-object v5, v5, Lcom/google/android/street/Renderer$SetPanoramaConfigArgs;->mConfig:Lcom/google/android/street/PanoramaConfig;

    iget-boolean v1, v5, Lcom/google/android/street/PanoramaConfig;->mDisabled:Z

    .line 1514
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_2
    if-eqz v3, :cond_5

    if-nez v2, :cond_3

    if-eqz v1, :cond_5

    :cond_3
    move v5, v7

    :goto_1
    return v5

    .end local v1           #isNextPanoDisabled:Z
    .end local v2           #isNextPanoReady:Z
    .end local v3           #isTransitionComplete:Z
    :cond_4
    move v3, v6

    .line 1495
    goto :goto_0

    .restart local v1       #isNextPanoDisabled:Z
    .restart local v2       #isNextPanoReady:Z
    .restart local v3       #isTransitionComplete:Z
    :cond_5
    move v5, v6

    .line 1514
    goto :goto_1
.end method

.method private nextMessage(Lcom/google/android/street/Renderer$Message;)Lcom/google/android/street/Renderer$Message;
    .locals 2
    .parameter "m"

    .prologue
    .line 653
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mMessageQueue:Lcom/google/android/street/Renderer$MessageQueue;

    monitor-enter v0

    .line 654
    if-eqz p1, :cond_0

    .line 655
    :try_start_0
    iget-object v1, p0, Lcom/google/android/street/Renderer;->mMessageQueue:Lcom/google/android/street/Renderer$MessageQueue;

    invoke-virtual {v1, p1}, Lcom/google/android/street/Renderer$MessageQueue;->recycle(Lcom/google/android/street/Renderer$Message;)V

    .line 657
    :cond_0
    iget-object v1, p0, Lcom/google/android/street/Renderer;->mMessageQueue:Lcom/google/android/street/Renderer$MessageQueue;

    invoke-virtual {v1}, Lcom/google/android/street/Renderer$MessageQueue;->get()Lcom/google/android/street/Renderer$Message;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 658
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private outerDraw()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1333
    iget-object v2, p0, Lcom/google/android/street/Renderer;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v2, :cond_0

    .line 1334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1335
    .local v0, currentTime:J
    invoke-direct {p0, v0, v1}, Lcom/google/android/street/Renderer;->draw(J)V

    .line 1337
    .end local v0           #currentTime:J
    :cond_0
    return-void
.end method

.method private recreateSurface()V
    .locals 7

    .prologue
    .line 1205
    iget-object v2, p0, Lcom/google/android/street/Renderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 1207
    .local v2, egl:Ljavax/microedition/khronos/egl/EGL10;
    if-eqz v2, :cond_0

    .line 1208
    iget-object v1, p0, Lcom/google/android/street/Renderer;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 1209
    .local v1, dpy:Ljavax/microedition/khronos/egl/EGLDisplay;
    iget-object v3, p0, Lcom/google/android/street/Renderer;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1210
    .local v3, surface:Ljavax/microedition/khronos/egl/EGLSurface;
    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v1, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1212
    invoke-interface {v2, v1, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 1214
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1215
    .local v0, config:Ljavax/microedition/khronos/egl/EGLConfig;
    iget-object v4, p0, Lcom/google/android/street/Renderer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v5, 0x0

    invoke-interface {v2, v1, v0, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/street/Renderer;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1217
    iget-object v4, p0, Lcom/google/android/street/Renderer;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/google/android/street/Renderer;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v6, p0, Lcom/google/android/street/Renderer;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v1, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1218
    invoke-direct {p0, v2}, Lcom/google/android/street/Renderer;->checkEglError(Ljavax/microedition/khronos/egl/EGL10;)Z

    .line 1220
    .end local v0           #config:Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v1           #dpy:Ljavax/microedition/khronos/egl/EGLDisplay;
    .end local v3           #surface:Ljavax/microedition/khronos/egl/EGLSurface;
    :cond_0
    return-void
.end method

.method private final send(IIILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mMessageQueue:Lcom/google/android/street/Renderer$MessageQueue;

    monitor-enter v0

    .line 1036
    :try_start_0
    iget-object v1, p0, Lcom/google/android/street/Renderer;->mMessageQueue:Lcom/google/android/street/Renderer$MessageQueue;

    invoke-virtual {v1}, Lcom/google/android/street/Renderer$MessageQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1037
    iget-object v1, p0, Lcom/google/android/street/Renderer;->mMessageQueue:Lcom/google/android/street/Renderer$MessageQueue;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1039
    :cond_0
    iget-object v1, p0, Lcom/google/android/street/Renderer;->mMessageQueue:Lcom/google/android/street/Renderer$MessageQueue;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/android/street/Renderer$MessageQueue;->send(IIILjava/lang/Object;)V

    .line 1040
    monitor-exit v0

    .line 1041
    return-void

    .line 1040
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final send(ILjava/lang/Object;)V
    .locals 1
    .parameter "what"
    .parameter "obj"

    .prologue
    const/4 v0, 0x0

    .line 1023
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/google/android/street/Renderer;->send(IIILjava/lang/Object;)V

    .line 1024
    return-void
.end method

.method private final sendCoalesce(I)V
    .locals 2
    .parameter "what"

    .prologue
    const/4 v1, 0x0

    .line 1044
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/google/android/street/Renderer;->sendCoalesce(IIILjava/lang/Object;)V

    .line 1045
    return-void
.end method

.method private final sendCoalesce(II)V
    .locals 2
    .parameter "what"
    .parameter "arg1"

    .prologue
    .line 1052
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/street/Renderer;->sendCoalesce(IIILjava/lang/Object;)V

    .line 1053
    return-void
.end method

.method private final sendCoalesce(III)V
    .locals 1
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1056
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/street/Renderer;->sendCoalesce(IIILjava/lang/Object;)V

    .line 1057
    return-void
.end method

.method private final sendCoalesce(IIILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mMessageQueue:Lcom/google/android/street/Renderer$MessageQueue;

    monitor-enter v0

    .line 1061
    :try_start_0
    iget-object v1, p0, Lcom/google/android/street/Renderer;->mMessageQueue:Lcom/google/android/street/Renderer$MessageQueue;

    invoke-virtual {v1}, Lcom/google/android/street/Renderer$MessageQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1062
    iget-object v1, p0, Lcom/google/android/street/Renderer;->mMessageQueue:Lcom/google/android/street/Renderer$MessageQueue;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1064
    :cond_0
    iget-object v1, p0, Lcom/google/android/street/Renderer;->mMessageQueue:Lcom/google/android/street/Renderer$MessageQueue;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/android/street/Renderer$MessageQueue;->sendCoalesce(IIILjava/lang/Object;)V

    .line 1065
    monitor-exit v0

    .line 1066
    return-void

    .line 1065
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final sendCoalesce(ILjava/lang/Object;)V
    .locals 1
    .parameter "what"
    .parameter "obj"

    .prologue
    const/4 v0, 0x0

    .line 1048
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/google/android/street/Renderer;->sendCoalesce(IIILjava/lang/Object;)V

    .line 1049
    return-void
.end method

.method private shutdownEgl()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1150
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1151
    .local v0, context:Ljavax/microedition/khronos/egl/EGLContext;
    iget-object v2, p0, Lcom/google/android/street/Renderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    .line 1152
    .local v2, gl:Ljavax/microedition/khronos/opengles/GL10;
    iget-object v1, p0, Lcom/google/android/street/Renderer;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 1153
    .local v1, dpy:Ljavax/microedition/khronos/egl/EGLDisplay;
    iget-object v3, p0, Lcom/google/android/street/Renderer;->mEGLSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1155
    .local v3, surface:Ljavax/microedition/khronos/egl/EGLSurface;
    if-eqz v0, :cond_2

    .line 1156
    iget-object v4, p0, Lcom/google/android/street/Renderer;->mTextureCache:Lcom/google/android/street/TextureCache;

    invoke-virtual {v4}, Lcom/google/android/street/TextureCache;->shutdown()V

    .line 1157
    iget-object v4, p0, Lcom/google/android/street/Renderer;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    invoke-virtual {v4, v2}, Lcom/google/android/street/LabelMaker;->shutdown(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1158
    iget-object v4, p0, Lcom/google/android/street/Renderer;->mOverlay:Lcom/google/android/street/Overlay;

    invoke-virtual {v4, v2}, Lcom/google/android/street/Overlay;->shutdown(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1159
    if-eqz v1, :cond_1

    .line 1160
    iget-object v4, p0, Lcom/google/android/street/Renderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v4, v1, v5, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1162
    iget-object v4, p0, Lcom/google/android/street/Renderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1163
    if-eqz v3, :cond_0

    .line 1164
    iget-object v4, p0, Lcom/google/android/street/Renderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4, v1, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 1166
    :cond_0
    iget-object v4, p0, Lcom/google/android/street/Renderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 1168
    :cond_1
    iput-object v8, p0, Lcom/google/android/street/Renderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 1169
    iput-object v8, p0, Lcom/google/android/street/Renderer;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1170
    sget-object v4, Lcom/google/android/street/Renderer;->sEglSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1172
    :cond_2
    return-void
.end method

.method private startEgl()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x1

    .line 1077
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/street/Renderer;->mHaveSurface:Z

    if-eqz v0, :cond_0

    .line 1078
    sget-object v0, Lcom/google/android/street/Renderer;->sEglSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 1079
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/google/android/street/Renderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 1089
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v9, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v9}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    .line 1090
    .local v1, dpy:Ljavax/microedition/khronos/egl/EGLDisplay;
    const/4 v0, 0x2

    new-array v8, v0, [I

    .line 1091
    .local v8, version:[I
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0, v1, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 1092
    const/4 v0, 0x3

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    .line 1096
    .local v2, configSpec:[I
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1097
    .local v3, configs:[Ljavax/microedition/khronos/egl/EGLConfig;
    new-array v5, v4, [I

    .line 1098
    .local v5, numConfig:[I
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 1099
    const/4 v0, 0x0

    aget-object v6, v3, v0

    .line 1100
    .local v6, config:Ljavax/microedition/khronos/egl/EGLConfig;
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v6, v4, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v7

    .line 1103
    .local v7, context:Ljavax/microedition/khronos/egl/EGLContext;
    iput-object v1, p0, Lcom/google/android/street/Renderer;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 1104
    iput-object v6, p0, Lcom/google/android/street/Renderer;->mEGLConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1105
    iput-object v7, p0, Lcom/google/android/street/Renderer;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1106
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-direct {p0, v0}, Lcom/google/android/street/Renderer;->checkEglError(Ljavax/microedition/khronos/egl/EGL10;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1107
    iput-object v10, p0, Lcom/google/android/street/Renderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    .line 1108
    sget-object v0, Lcom/google/android/street/Renderer;->sEglSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1128
    .end local v1           #dpy:Ljavax/microedition/khronos/egl/EGLDisplay;
    .end local v2           #configSpec:[I
    .end local v3           #configs:[Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v5           #numConfig:[I
    .end local v6           #config:Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v7           #context:Ljavax/microedition/khronos/egl/EGLContext;
    .end local v8           #version:[I
    :cond_0
    :goto_0
    return-void

    .line 1111
    .restart local v1       #dpy:Ljavax/microedition/khronos/egl/EGLDisplay;
    .restart local v2       #configSpec:[I
    .restart local v3       #configs:[Ljavax/microedition/khronos/egl/EGLConfig;
    .restart local v5       #numConfig:[I
    .restart local v6       #config:Ljavax/microedition/khronos/egl/EGLConfig;
    .restart local v7       #context:Ljavax/microedition/khronos/egl/EGLContext;
    .restart local v8       #version:[I
    :cond_1
    invoke-virtual {v7}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    iput-object v0, p0, Lcom/google/android/street/Renderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    .line 1124
    new-instance v0, Lcom/google/android/street/GLMatrixWrapper;

    iget-object v4, p0, Lcom/google/android/street/Renderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-direct {v0, v4}, Lcom/google/android/street/GLMatrixWrapper;-><init>(Ljavax/microedition/khronos/opengles/GL;)V

    iput-object v0, p0, Lcom/google/android/street/Renderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    .line 1126
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-direct {p0, v0}, Lcom/google/android/street/Renderer;->initGL(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_0

    .line 1092
    :array_0
    .array-data 0x4
        0x25t 0x30t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method private waitForFence()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 941
    iget-boolean v1, p0, Lcom/google/android/street/Renderer;->mShuttingDown:Z

    if-eqz v1, :cond_0

    .line 942
    invoke-virtual {p0}, Lcom/google/android/street/Renderer;->join()V

    .line 950
    :goto_0
    return-void

    .line 945
    :cond_0
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 946
    .local v0, fenceObj:Ljava/lang/Integer;
    monitor-enter v0

    .line 947
    const/16 v1, 0xc

    :try_start_0
    invoke-direct {p0, v1, v0}, Lcom/google/android/street/Renderer;->send(ILjava/lang/Object;)V

    .line 948
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 949
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private waitForWork()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v7, 0x0

    .line 663
    iget-object v4, p0, Lcom/google/android/street/Renderer;->mTransition:Lcom/google/android/street/Renderer$Transition;

    if-eqz v4, :cond_0

    .line 685
    :goto_0
    return-void

    .line 666
    :cond_0
    iget-object v4, p0, Lcom/google/android/street/Renderer;->mMessageQueue:Lcom/google/android/street/Renderer$MessageQueue;

    monitor-enter v4

    .line 667
    :goto_1
    :try_start_0
    iget-object v5, p0, Lcom/google/android/street/Renderer;->mMessageQueue:Lcom/google/android/street/Renderer$MessageQueue;

    invoke-virtual {v5}, Lcom/google/android/street/Renderer$MessageQueue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 670
    iget-object v5, p0, Lcom/google/android/street/Renderer;->mEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-nez v5, :cond_2

    move-wide v0, v7

    .line 672
    .local v0, nextDrawTime:J
    :goto_2
    cmp-long v5, v0, v7

    if-eqz v5, :cond_4

    .line 673
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v2, v0, v5

    .line 675
    .local v2, waitTime:J
    cmp-long v5, v2, v7

    if-gtz v5, :cond_3

    .line 684
    .end local v0           #nextDrawTime:J
    .end local v2           #waitTime:J
    :cond_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 670
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/google/android/street/Renderer;->mOverlay:Lcom/google/android/street/Overlay;

    invoke-virtual {v5}, Lcom/google/android/street/Overlay;->getNextDrawTime()J

    move-result-wide v5

    move-wide v0, v5

    goto :goto_2

    .line 678
    .restart local v0       #nextDrawTime:J
    .restart local v2       #waitTime:J
    :cond_3
    iget-object v5, p0, Lcom/google/android/street/Renderer;->mMessageQueue:Lcom/google/android/street/Renderer$MessageQueue;

    invoke-virtual {v5, v2, v3}, Ljava/lang/Object;->wait(J)V

    goto :goto_1

    .line 681
    .end local v2           #waitTime:J
    :cond_4
    iget-object v5, p0, Lcom/google/android/street/Renderer;->mMessageQueue:Lcom/google/android/street/Renderer$MessageQueue;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public assertNotOnRenderingThread()V
    .locals 2

    .prologue
    .line 1597
    const-string v0, "This code can only be called outside the rendering thread."

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/google/mobile/common/util/Assert;->assertNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1599
    return-void
.end method

.method public clearPancake()V
    .locals 1

    .prologue
    .line 803
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/google/android/street/Renderer;->sendCoalesce(I)V

    .line 804
    return-void
.end method

.method public getPanoramaLink(I)Lcom/google/android/street/PanoramaLink;
    .locals 1
    .parameter "index"

    .prologue
    .line 921
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mOverlay:Lcom/google/android/street/Overlay;

    invoke-virtual {v0, p1}, Lcom/google/android/street/Overlay;->getPanoramaLink(I)Lcom/google/android/street/PanoramaLink;

    move-result-object v0

    return-object v0
.end method

.method public hit(II)I
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 874
    iget v1, p0, Lcom/google/android/street/Renderer;->mHeight:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    sub-int v0, v1, p2

    .line 877
    .local v0, renderY:I
    iget-object v1, p0, Lcom/google/android/street/Renderer;->mOverlay:Lcom/google/android/street/Overlay;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/street/Overlay;->hit(II)I

    move-result v1

    return v1
.end method

.method public initialize(Landroid/content/Context;Landroid/view/SurfaceHolder;Lcom/google/android/street/Renderer$RenderStatusReceiver;ZZZ)V
    .locals 6
    .parameter "context"
    .parameter "surfaceHolder"
    .parameter "renderStatusReceiver"
    .parameter "enablePancake"
    .parameter "enablePanoPoints"
    .parameter "drawRoadLabels"

    .prologue
    .line 590
    iput-object p1, p0, Lcom/google/android/street/Renderer;->mContext:Landroid/content/Context;

    .line 591
    iput-object p2, p0, Lcom/google/android/street/Renderer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 592
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 593
    new-instance v0, Lcom/google/android/street/TextureCache;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/google/android/street/TextureCache;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/street/Renderer;->mTextureCache:Lcom/google/android/street/TextureCache;

    .line 594
    iput-object p3, p0, Lcom/google/android/street/Renderer;->mRenderStatusReceiver:Lcom/google/android/street/Renderer$RenderStatusReceiver;

    .line 595
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/street/Renderer;->mPanoramaDrawable:Lcom/google/android/street/Renderer$PanoramaDrawable;

    .line 596
    iget-object v0, p0, Lcom/google/android/street/Renderer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 597
    new-instance v0, Lcom/google/android/street/Overlay;

    iget-object v1, p0, Lcom/google/android/street/Renderer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/street/Renderer;->mProjector:Lcom/google/android/street/Projector;

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/street/Overlay;-><init>(Landroid/content/Context;Lcom/google/android/street/Projector;ZZZ)V

    iput-object v0, p0, Lcom/google/android/street/Renderer;->mOverlay:Lcom/google/android/street/Overlay;

    .line 599
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/street/Renderer;->mGoogleLogo:Landroid/graphics/drawable/Drawable;

    .line 602
    const-string v0, "Renderer"

    invoke-virtual {p0, v0}, Lcom/google/android/street/Renderer;->setName(Ljava/lang/String;)V

    .line 607
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/android/street/Renderer;->setPriority(I)V

    .line 608
    invoke-virtual {p0}, Lcom/google/android/street/Renderer;->start()V

    .line 610
    monitor-enter p0

    .line 611
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/street/Renderer;->mReadyForMessages:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 613
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 614
    :catch_0
    move-exception v0

    goto :goto_0

    .line 618
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 619
    return-void

    .line 618
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public pixelToYawPitch(FFZ)[F
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "isVehicleRelative"

    .prologue
    .line 893
    invoke-virtual {p0}, Lcom/google/android/street/Renderer;->assertNotOnRenderingThread()V

    .line 894
    new-instance v0, Lcom/google/android/street/Renderer$PixelToYawPitchArgs;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/street/Renderer$PixelToYawPitchArgs;-><init>(FFZ)V

    .line 896
    .local v0, args:Lcom/google/android/street/Renderer$PixelToYawPitchArgs;
    monitor-enter v0

    .line 897
    const/16 v1, 0xf

    :try_start_0
    invoke-direct {p0, v1, v0}, Lcom/google/android/street/Renderer;->send(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 900
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 904
    :goto_0
    :try_start_2
    iget-boolean v1, v0, Lcom/google/android/street/Renderer$PixelToYawPitchArgs;->mDone:Z

    if-eqz v1, :cond_0

    .line 905
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 906
    iget-object v1, v0, Lcom/google/android/street/Renderer$PixelToYawPitchArgs;->mYawPitchOut:[F

    return-object v1

    .line 905
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 901
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public postPanoramaTileImage(Lcom/google/android/street/PanoramaImageKey;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "key"
    .parameter "bitmap"

    .prologue
    .line 820
    const/4 v0, 0x6

    new-instance v1, Lcom/google/android/street/Renderer$PanoramaKeyAndTexture;

    invoke-direct {v1, p1, p2}, Lcom/google/android/street/Renderer$PanoramaKeyAndTexture;-><init>(Lcom/google/android/street/PanoramaImageKey;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/street/Renderer;->send(ILjava/lang/Object;)V

    .line 821
    return-void
.end method

.method public renderingPause()V
    .locals 1

    .prologue
    .line 824
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/street/Renderer;->sendCoalesce(I)V

    .line 825
    return-void
.end method

.method public renderingResume()V
    .locals 1

    .prologue
    .line 832
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/google/android/street/Renderer;->sendCoalesce(I)V

    .line 833
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 627
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/google/android/street/Renderer;->mReadyForMessages:Z

    .line 629
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 630
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 631
    const/4 v0, 0x0

    .line 632
    .local v0, m:Lcom/google/android/street/Renderer$Message;
    :goto_0
    :try_start_2
    iget-boolean v1, p0, Lcom/google/android/street/Renderer;->mShuttingDown:Z

    if-nez v1, :cond_1

    .line 633
    :goto_1
    invoke-direct {p0, v0}, Lcom/google/android/street/Renderer;->nextMessage(Lcom/google/android/street/Renderer$Message;)Lcom/google/android/street/Renderer$Message;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 634
    invoke-direct {p0, v0}, Lcom/google/android/street/Renderer;->dispatch(Lcom/google/android/street/Renderer$Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 639
    .end local v0           #m:Lcom/google/android/street/Renderer$Message;
    :catch_0
    move-exception v1

    .line 645
    invoke-direct {p0}, Lcom/google/android/street/Renderer;->finishMainLoop()V

    .line 650
    :goto_2
    return-void

    .line 630
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 645
    :catchall_1
    move-exception v1

    invoke-direct {p0}, Lcom/google/android/street/Renderer;->finishMainLoop()V

    throw v1

    .line 636
    .restart local v0       #m:Lcom/google/android/street/Renderer$Message;
    :cond_0
    :try_start_5
    invoke-direct {p0}, Lcom/google/android/street/Renderer;->outerDraw()V

    .line 637
    invoke-direct {p0}, Lcom/google/android/street/Renderer;->waitForWork()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 645
    :cond_1
    invoke-direct {p0}, Lcom/google/android/street/Renderer;->finishMainLoop()V

    goto :goto_2
.end method

.method public setDirectionsArrowParams(FF)V
    .locals 3
    .parameter "incomingYaw"
    .parameter "outgoingYaw"

    .prologue
    .line 850
    const/16 v0, 0xe

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/street/Renderer;->sendCoalesce(III)V

    .line 852
    return-void
.end method

.method public setHighlight(I)V
    .locals 1
    .parameter "item"

    .prologue
    .line 842
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lcom/google/android/street/Renderer;->sendCoalesce(II)V

    .line 843
    return-void
.end method

.method public setMotionUse(I)V
    .locals 1
    .parameter "device"

    .prologue
    .line 846
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lcom/google/android/street/Renderer;->sendCoalesce(II)V

    .line 847
    return-void
.end method

.method public setPancake(FF)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 795
    const/16 v0, 0x10

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/street/Renderer;->sendCoalesce(III)V

    .line 797
    return-void
.end method

.method public setPanoramaConfig(Lcom/google/android/street/PanoramaConfig;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 783
    const/4 v0, 0x3

    new-instance v1, Lcom/google/android/street/Renderer$SetPanoramaConfigArgs;

    invoke-direct {v1, p1}, Lcom/google/android/street/Renderer$SetPanoramaConfigArgs;-><init>(Lcom/google/android/street/PanoramaConfig;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/street/Renderer;->sendCoalesce(ILjava/lang/Object;)V

    .line 785
    return-void
.end method

.method public setTimer(Lcom/google/android/street/Timer;)V
    .locals 0
    .parameter "timer"

    .prologue
    .line 584
    iput-object p1, p0, Lcom/google/android/street/Renderer;->newTimer:Lcom/google/android/street/Timer;

    .line 585
    return-void
.end method

.method public setUserOrientation(Lcom/google/android/street/UserOrientation;)V
    .locals 1
    .parameter "userOrientation"

    .prologue
    .line 788
    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/google/android/street/Renderer;->sendCoalesce(ILjava/lang/Object;)V

    .line 789
    return-void
.end method

.method public setZoomLevels(I)V
    .locals 1
    .parameter "zoomLevels"

    .prologue
    .line 814
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/google/android/street/Renderer;->sendCoalesce(II)V

    .line 815
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 855
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/google/android/street/Renderer;->sendCoalesce(I)V

    .line 856
    invoke-virtual {p0}, Lcom/google/android/street/Renderer;->interrupt()V

    .line 858
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/street/Renderer;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 862
    :goto_0
    return-void

    .line 859
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startTransition(Lcom/google/android/street/Renderer$Transition;)V
    .locals 1
    .parameter "transition"

    .prologue
    .line 810
    const/16 v0, 0x12

    invoke-direct {p0, v0, p1}, Lcom/google/android/street/Renderer;->sendCoalesce(ILjava/lang/Object;)V

    .line 811
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 774
    const/4 v0, 0x2

    invoke-direct {p0, v0, p3, p4}, Lcom/google/android/street/Renderer;->sendCoalesce(III)V

    .line 775
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 757
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/street/Renderer;->sendCoalesce(I)V

    .line 758
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 763
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/street/Renderer;->sendCoalesce(I)V

    .line 765
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/street/Renderer;->waitForFence()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    :goto_0
    return-void

    .line 766
    :catch_0
    move-exception v0

    goto :goto_0
.end method
