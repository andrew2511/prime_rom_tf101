.class public Lcom/google/android/opengl/carousel/CarouselRenderer;
.super Ljava/lang/Object;
.source "CarouselRenderer.java"

# interfaces
.implements Lcom/google/android/opengl/glview/GLSurfaceView$Renderer;


# static fields
.field private static FPS_FRAMES:I = 0x0

.field private static final MAX_FPS_LOG:I = 0x100

.field private static final REMOVE_FPS_LOG_WHEN_FULL:I = 0x40

.field private static final TAG:Ljava/lang/String; = "CarouselRenderer"


# instance fields
.field public DBG:Z

.field public mAspect:F

.field public mAutoRotation:Z

.field private mAxis:Lcom/google/android/opengl/carousel/BaseAxis;

.field public mCamera:Lcom/google/android/opengl/carousel/GLCamera;

.field public mContext:Landroid/content/Context;

.field public mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

.field public mFPS:D

.field mFadeAmoundLoc:I

.field public mFpsLog:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/opengl/carousel/CarouselView$FpsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFrameCount:I

.field public mGLProgram:Lcom/google/android/opengl/carousel/GLProgram;

.field public mHeight:I

.field public mIsPortrait:Z

.field public mMultiTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

.field public mOrientation:I

.field public mProjMatrix:[F

.field public mScene:Lcom/google/android/opengl/carousel/CarouselScene;

.field public mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

.field public mTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

.field public mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

.field private mTimeStart:J

.field public mVPMatrix:[F

.field public mView:Lcom/google/android/opengl/carousel/CarouselView;

.field public mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/16 v0, 0x32

    sput v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->FPS_FRAMES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/opengl/carousel/CarouselView;Lcom/google/android/opengl/carousel/CarouselSetting;)V
    .locals 3
    .parameter "context"
    .parameter "view"
    .parameter "setting"

    .prologue
    const/16 v1, 0x10

    const/4 v2, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->DBG:Z

    .line 37
    new-instance v0, Lcom/google/android/opengl/carousel/GLProgram;

    invoke-direct {v0}, Lcom/google/android/opengl/carousel/GLProgram;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mGLProgram:Lcom/google/android/opengl/carousel/GLProgram;

    .line 39
    new-instance v0, Lcom/google/android/opengl/carousel/GLProgram;

    invoke-direct {v0}, Lcom/google/android/opengl/carousel/GLProgram;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    .line 41
    new-instance v0, Lcom/google/android/opengl/carousel/GLProgram;

    invoke-direct {v0}, Lcom/google/android/opengl/carousel/GLProgram;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mMultiTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    .line 50
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mProjMatrix:[F

    .line 52
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mVPMatrix:[F

    .line 59
    iput v2, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFrameCount:I

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTimeStart:J

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFPS:D

    .line 64
    iput v2, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mWidth:I

    .line 65
    iput v2, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mHeight:I

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mAspect:F

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFpsLog:Ljava/util/ArrayList;

    .line 81
    iput-object p1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    .line 83
    iput-object p3, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    .line 85
    new-instance v0, Lcom/google/android/opengl/carousel/GLCamera;

    invoke-direct {v0, p0}, Lcom/google/android/opengl/carousel/GLCamera;-><init>(Lcom/google/android/opengl/carousel/CarouselRenderer;)V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCamera:Lcom/google/android/opengl/carousel/GLCamera;

    .line 87
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselScene;

    invoke-direct {v0, p0, p3}, Lcom/google/android/opengl/carousel/CarouselScene;-><init>(Lcom/google/android/opengl/carousel/CarouselRenderer;Lcom/google/android/opengl/carousel/CarouselSetting;)V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    .line 88
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselTexture;

    invoke-direct {v0, p0}, Lcom/google/android/opengl/carousel/CarouselTexture;-><init>(Lcom/google/android/opengl/carousel/CarouselRenderer;)V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    .line 89
    return-void
.end method

.method private applyCarouselConfig(Lcom/google/android/opengl/carousel/CarouselConfig;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    iget v1, p1, Lcom/google/android/opengl/carousel/CarouselConfig;->mSlotCount:I

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/carousel/CarouselView;->setSlotCount(I)V

    .line 301
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    iget v1, p1, Lcom/google/android/opengl/carousel/CarouselConfig;->mVisibleSlotCount:I

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/carousel/CarouselView;->setVisibleSlots(I)V

    .line 302
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    iget v1, p1, Lcom/google/android/opengl/carousel/CarouselConfig;->mRadius:F

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/carousel/CarouselView;->setRadius(F)V

    .line 303
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCamera:Lcom/google/android/opengl/carousel/GLCamera;

    iget v1, p1, Lcom/google/android/opengl/carousel/CarouselConfig;->mFovy:F

    iput v1, v0, Lcom/google/android/opengl/carousel/GLCamera;->mFovy:F

    .line 304
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, p1, Lcom/google/android/opengl/carousel/CarouselConfig;->mVisibleDetailCount:I

    iput v1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mVisibleDetailCount:I

    .line 305
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, p1, Lcom/google/android/opengl/carousel/CarouselConfig;->mPauseDeltaThreshold:F

    iput v1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mPauseDeltaThreshold:F

    .line 306
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, p1, Lcom/google/android/opengl/carousel/CarouselConfig;->mAccelerationFactor:F

    iput v1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mAccelerationFactor:F

    .line 307
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v1, p1, Lcom/google/android/opengl/carousel/CarouselConfig;->mEye:[F

    iput-object v1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mEye:[F

    .line 308
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v1, p1, Lcom/google/android/opengl/carousel/CarouselConfig;->mAt:[F

    iput-object v1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mAt:[F

    .line 309
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v1, p1, Lcom/google/android/opengl/carousel/CarouselConfig;->mUp:[F

    iput-object v1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mUp:[F

    .line 310
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, p1, Lcom/google/android/opengl/carousel/CarouselConfig;->mStartAngle:F

    iput v1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mStartAngle:F

    .line 311
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, p1, Lcom/google/android/opengl/carousel/CarouselConfig;->mMaxDeltaBias:F

    iput v1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mMaxDeltaBias:F

    .line 312
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, p1, Lcom/google/android/opengl/carousel/CarouselConfig;->mTextureVelocityThreshold:F

    iput v1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mTextureVelocityThreshold:F

    .line 313
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, p1, Lcom/google/android/opengl/carousel/CarouselConfig;->mRowCount:I

    iput v1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mRowCount:I

    .line 314
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-boolean v1, p1, Lcom/google/android/opengl/carousel/CarouselConfig;->mShowDetails:Z

    iput-boolean v1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mShowDetails:Z

    .line 315
    return-void
.end method

.method private enableGlDepth()V
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/opengl/GLES20;->glDepthMask(Z)V

    .line 262
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 263
    const/16 v0, 0x201

    invoke-static {v0}, Landroid/opengl/GLES20;->glDepthFunc(I)V

    .line 264
    const/high16 v0, 0x3f80

    invoke-static {v0}, Landroid/opengl/GLES20;->glClearDepthf(F)V

    .line 265
    return-void
.end method

.method private setGlParameter()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 245
    const/16 v0, 0xcf5

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 246
    const/16 v0, 0xbd0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 247
    const/16 v0, 0x303

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 248
    invoke-static {v1, v1, v1, v1}, Landroid/opengl/GLES20;->glColorMask(ZZZZ)V

    .line 250
    const/16 v0, 0xb44

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 251
    const/16 v0, 0x405

    invoke-static {v0}, Landroid/opengl/GLES20;->glCullFace(I)V

    .line 254
    const-string v0, "setGlParameter"

    invoke-static {v0}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method private setUniform()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 273
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    invoke-virtual {p0, v1}, Lcom/google/android/opengl/carousel/CarouselRenderer;->useProgram(Lcom/google/android/opengl/carousel/GLProgram;)V

    .line 274
    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 275
    invoke-static {v4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 276
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget v1, v1, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const-string v2, "uTexture"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 277
    .local v0, sampleLoc:I
    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 279
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mMultiTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    invoke-virtual {p0, v1}, Lcom/google/android/opengl/carousel/CarouselRenderer;->useProgram(Lcom/google/android/opengl/carousel/GLProgram;)V

    .line 280
    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 281
    invoke-static {v4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 283
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget v1, v1, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const-string v2, "uTexture"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 284
    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 286
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget v1, v1, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const-string v2, "uTexture1"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 287
    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 289
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget v1, v1, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    const-string v2, "uFadeAmount"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFadeAmoundLoc:I

    .line 290
    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFadeAmoundLoc:I

    const/high16 v2, 0x3f80

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 292
    const-string v1, "setUniform"

    invoke-static {v1}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method private updateFPS()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 111
    iget v7, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFrameCount:I

    sget v8, Lcom/google/android/opengl/carousel/CarouselRenderer;->FPS_FRAMES:I

    if-ge v7, v8, :cond_1

    .line 112
    iget v7, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFrameCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFrameCount:I

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 115
    .local v3, time:J
    iget v7, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFrameCount:I

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v7, v7

    iget-wide v9, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTimeStart:J

    sub-long v9, v3, v9

    div-long/2addr v7, v9

    long-to-double v7, v7

    iput-wide v7, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFPS:D

    .line 116
    iput v11, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFrameCount:I

    .line 117
    iput-wide v3, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTimeStart:J

    .line 119
    const-wide v7, 0x408f400000000000L

    iget-wide v9, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFPS:D

    div-double v5, v7, v9

    .line 121
    .local v5, timeEclapse:D
    iget-object v7, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-boolean v7, v7, Lcom/google/android/opengl/carousel/CarouselSetting;->mEnableFpsLog:Z

    if-eqz v7, :cond_3

    .line 122
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$FpsInfo;

    iget-wide v7, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFPS:D

    invoke-direct {v0, v7, v8, v5, v6}, Lcom/google/android/opengl/carousel/CarouselView$FpsInfo;-><init>(DD)V

    .line 123
    .local v0, fpsInfo:Lcom/google/android/opengl/carousel/CarouselView$FpsInfo;
    iget-object v7, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFpsLog:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v8, 0x100

    if-lt v7, v8, :cond_2

    .line 124
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/16 v7, 0x40

    if-ge v1, v7, :cond_2

    .line 125
    iget-object v7, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFpsLog:Ljava/util/ArrayList;

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 128
    .end local v1           #i:I
    :cond_2
    iget-object v7, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFpsLog:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .end local v0           #fpsInfo:Lcom/google/android/opengl/carousel/CarouselView$FpsInfo;
    :cond_3
    iget-boolean v7, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->DBG:Z

    if-eqz v7, :cond_0

    .line 131
    const-string v7, "** Drawing cycle uses: %.2f ms, the FPS is %.2f"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v8, v11

    const/4 v9, 0x1

    iget-wide v10, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFPS:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, logStr:Ljava/lang/String;
    const-string v7, "CarouselRenderer"

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public changeFovy()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCamera:Lcom/google/android/opengl/carousel/GLCamera;

    iget v0, v0, Lcom/google/android/opengl/carousel/GLCamera;->mFovy:F

    const/high16 v1, 0x41f0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCamera:Lcom/google/android/opengl/carousel/GLCamera;

    const/high16 v1, 0x4220

    iput v1, v0, Lcom/google/android/opengl/carousel/GLCamera;->mFovy:F

    .line 209
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->updatePerspective()V

    .line 210
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCamera:Lcom/google/android/opengl/carousel/GLCamera;

    const/high16 v1, 0x41c8

    iput v1, v0, Lcom/google/android/opengl/carousel/GLCamera;->mFovy:F

    goto :goto_0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .parameter "gl"

    .prologue
    .line 95
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    invoke-virtual {v1}, Lcom/google/android/opengl/carousel/CarouselScene;->draw()Z

    move-result v0

    .line 96
    .local v0, stillAnimating:Z
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->updateFPS()V

    .line 98
    if-eqz v0, :cond_0

    .line 99
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    invoke-virtual {v1}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 101
    :cond_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 5
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x0

    .line 142
    invoke-static {v2, v2, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 143
    iput p2, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mWidth:I

    .line 144
    iput p3, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mHeight:I

    .line 146
    int-to-float v0, p2

    int-to-float v1, p3

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mAspect:F

    .line 147
    if-le p3, p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mIsPortrait:Z

    .line 149
    iget-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mIsPortrait:Z

    if-eqz v0, :cond_2

    .line 150
    const-string v0, "CarouselRenderer"

    const-string v1, "In portrait mode now!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselView;->mConfigPortrait:Lcom/google/android/opengl/carousel/CarouselConfig;

    invoke-direct {p0, v0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->applyCarouselConfig(Lcom/google/android/opengl/carousel/CarouselConfig;)V

    .line 152
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mHeight:I

    int-to-double v1, v1

    iget v3, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mWidth:I

    sget v4, Lcom/google/android/opengl/carousel/CarouselSetting;->TRAJECTORY_X_OFFSET:I

    sub-int/2addr v3, v4

    int-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mTrajectoryAngle:F

    .line 160
    :goto_1
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCamera:Lcom/google/android/opengl/carousel/GLCamera;

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/carousel/GLCamera;->setLookat(Lcom/google/android/opengl/carousel/CarouselSetting;)V

    .line 162
    iget-boolean v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->DBG:Z

    if-eqz v0, :cond_0

    .line 163
    const-string v0, "CarouselRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-onSurfaceChanged, width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fovy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCamera:Lcom/google/android/opengl/carousel/GLCamera;

    iget v2, v2, Lcom/google/android/opengl/carousel/GLCamera;->mFovy:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->updatePerspective()V

    .line 169
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselScene;->updateCarouselRotationAngle()V

    .line 170
    return-void

    :cond_1
    move v0, v2

    .line 147
    goto :goto_0

    .line 155
    :cond_2
    const-string v0, "CarouselRenderer"

    const-string v1, "In landscape mode now!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselView;->mConfigLandscape:Lcom/google/android/opengl/carousel/CarouselConfig;

    invoke-direct {p0, v0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->applyCarouselConfig(Lcom/google/android/opengl/carousel/CarouselConfig;)V

    .line 157
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mHeight:I

    int-to-double v1, v1

    iget v3, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mWidth:I

    int-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mTrajectoryAngle:F

    goto :goto_1
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3
    .parameter "glUnused"
    .parameter "config"

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->setGlParameter()V

    .line 178
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mGLProgram:Lcom/google/android/opengl/carousel/GLProgram;

    sget-object v1, Lcom/google/android/opengl/carousel/GLProgram;->sVertexShader:Ljava/lang/String;

    const-string v2, "precision mediump float;\nvarying vec4 vColor;\nvoid main() {\n  gl_FragColor = vColor;\n}\n"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/opengl/carousel/GLProgram;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    sget-object v1, Lcom/google/android/opengl/carousel/GLProgram;->sVertexShader:Ljava/lang/String;

    sget-object v2, Lcom/google/android/opengl/carousel/GLProgram;->sSingleTextureShader:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/opengl/carousel/GLProgram;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mMultiTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    sget-object v1, Lcom/google/android/opengl/carousel/GLProgram;->sVertexShader:Ljava/lang/String;

    sget-object v2, Lcom/google/android/opengl/carousel/GLProgram;->sMultiTextureShader:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/opengl/carousel/GLProgram;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mGLProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget v0, v0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget v0, v0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mMultiTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget v0, v0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    if-nez v0, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselTexture;->loadTexture()V

    .line 189
    invoke-direct {p0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->setUniform()V

    .line 191
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTimeStart:J

    .line 192
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->requestRedraw()V

    goto :goto_0
.end method

.method public requestRedraw()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselView;->requestRender()V

    .line 108
    return-void
.end method

.method public setFadeAmount(F)V
    .locals 2
    .parameter "fade"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mFadeAmount:F

    .line 235
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mMultiTexProgram:Lcom/google/android/opengl/carousel/GLProgram;

    if-ne v0, v1, :cond_0

    .line 236
    iget v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFadeAmoundLoc:I

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v1, v1, Lcom/google/android/opengl/carousel/CarouselSetting;->mFadeAmount:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 238
    :cond_0
    const-string v0, "setFadeAmount"

    invoke-static {v0}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public setMVPUniform([F)V
    .locals 3
    .parameter "matrix"

    .prologue
    const/4 v2, 0x0

    .line 230
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget v0, v0, Lcom/google/android/opengl/carousel/GLProgram;->muMVPMatHandle:I

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, p1, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 231
    return-void
.end method

.method public updatePerspective()V
    .locals 5

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mProjMatrix:[F

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCamera:Lcom/google/android/opengl/carousel/GLCamera;

    iget v1, v1, Lcom/google/android/opengl/carousel/GLCamera;->mFovy:F

    iget v2, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mAspect:F

    const v3, 0x3dcccccd

    const/high16 v4, 0x42c8

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/opengl/carousel/GL2Helper;->loadPerspectiveMatrix([FFFFF)V

    .line 200
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCamera:Lcom/google/android/opengl/carousel/GLCamera;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/GLCamera;->setCamera()V

    .line 201
    return-void
.end method

.method public useProgram(Lcom/google/android/opengl/carousel/GLProgram;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 219
    iput-object p1, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    .line 220
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mCurrentProgram:Lcom/google/android/opengl/carousel/GLProgram;

    iget v0, v0, Lcom/google/android/opengl/carousel/GLProgram;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 221
    const-string v0, "glUseProgram"

    invoke-static {v0}, Lcom/google/android/opengl/carousel/GL2Helper;->checkGlError(Ljava/lang/String;)V

    .line 222
    return-void
.end method
