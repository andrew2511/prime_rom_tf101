.class public Lcom/google/android/talk/videochat/GlVideoView;
.super Landroid/opengl/GLSurfaceView;
.source "GlVideoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/videochat/GlVideoView$Renderer;,
        Lcom/google/android/talk/videochat/GlVideoView$DrawingStartedCallback;,
        Lcom/google/android/talk/videochat/GlVideoView$FloatRect;,
        Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameOutputData;,
        Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameInputData;,
        Lcom/google/android/talk/videochat/GlVideoView$RendererSetupOutputData;,
        Lcom/google/android/talk/videochat/GlVideoView$RendererSetupInputData;
    }
.end annotation


# static fields
.field private static CLIP_THRESHOLD:F

.field private static TAG:Ljava/lang/String;

.field private static mLocalFrameReadyLock:Ljava/lang/Object;


# instance fields
.field private mCameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mDisableRenderer:Z

.field private mDrawingStartedCallback:Lcom/google/android/talk/videochat/GlVideoView$DrawingStartedCallback;

.field private mFirstFrame:Z

.field private volatile mLocalFrameReady:Z

.field private volatile mLocalVideoReady:Z

.field private mRenderer:Lcom/google/android/talk/videochat/GlVideoView$Renderer;

.field private mVideoAnimator:Lcom/google/android/talk/videochat/VideoAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "videochat/videorenderer"

    sput-object v0, Lcom/google/android/talk/videochat/GlVideoView;->TAG:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/talk/videochat/GlVideoView;->mLocalFrameReadyLock:Ljava/lang/Object;

    .line 47
    const v0, 0x3dcccccd

    sput v0, Lcom/google/android/talk/videochat/GlVideoView;->CLIP_THRESHOLD:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/videochat/GlVideoView;->mFirstFrame:Z

    .line 41
    iput-boolean v1, p0, Lcom/google/android/talk/videochat/GlVideoView;->mLocalVideoReady:Z

    .line 42
    iput-boolean v1, p0, Lcom/google/android/talk/videochat/GlVideoView;->mLocalFrameReady:Z

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/videochat/GlVideoView;->mFirstFrame:Z

    .line 41
    iput-boolean v1, p0, Lcom/google/android/talk/videochat/GlVideoView;->mLocalVideoReady:Z

    .line 42
    iput-boolean v1, p0, Lcom/google/android/talk/videochat/GlVideoView;->mLocalFrameReady:Z

    .line 123
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/android/talk/videochat/GlVideoView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/talk/videochat/GlVideoView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/GlVideoView;->mLocalVideoReady:Z

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/talk/videochat/GlVideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/google/android/talk/videochat/GlVideoView;->mLocalVideoReady:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/google/android/talk/videochat/GlVideoView;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView;->mCameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/android/talk/videochat/GlVideoView;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/android/talk/videochat/GlVideoView;->mCameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$1200()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/android/talk/videochat/GlVideoView;->mLocalFrameReadyLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/talk/videochat/GlVideoView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/GlVideoView;->mDisableRenderer:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/google/android/talk/videochat/GlVideoView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/GlVideoView;->mFirstFrame:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/google/android/talk/videochat/GlVideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/google/android/talk/videochat/GlVideoView;->mFirstFrame:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/google/android/talk/videochat/GlVideoView;)Lcom/google/android/talk/videochat/GlVideoView$DrawingStartedCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView;->mDrawingStartedCallback:Lcom/google/android/talk/videochat/GlVideoView$DrawingStartedCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/talk/videochat/GlVideoView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/GlVideoView;->mLocalFrameReady:Z

    return v0
.end method

.method static synthetic access$202(Lcom/google/android/talk/videochat/GlVideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/google/android/talk/videochat/GlVideoView;->mLocalFrameReady:Z

    return p1
.end method

.method static synthetic access$700(Lcom/google/android/talk/videochat/GlVideoView;)Lcom/google/android/talk/videochat/VideoAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView;->mVideoAnimator:Lcom/google/android/talk/videochat/VideoAnimator;

    return-object v0
.end method

.method public static calculateRemoteSrcDestRects(IIIILcom/google/android/talk/videochat/GlVideoView$FloatRect;Lcom/google/android/talk/videochat/GlVideoView$FloatRect;)V
    .locals 15
    .parameter "viewportWidth"
    .parameter "viewportHeight"
    .parameter "rawRemoteWidth"
    .parameter "rawRemoteHeight"
    .parameter "srcRect"
    .parameter "destRect"

    .prologue
    .line 492
    move/from16 v0, p2

    int-to-float v0, v0

    move v2, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move v3, v0

    div-float v7, v2, v3

    .line 493
    .local v7, rawRemoteAspectRatio:F
    int-to-float v2, p0

    move/from16 v0, p1

    int-to-float v0, v0

    move v3, v0

    div-float v4, v2, v3

    .line 495
    .local v4, viewportAspectRatio:F
    const/4 v5, 0x0

    .line 496
    .local v5, leftClip:I
    const/4 v8, 0x0

    .line 497
    .local v8, rightClip:I
    const/4 v2, 0x0

    .line 498
    .local v2, bottomClip:I
    const/4 v10, 0x0

    .line 500
    .local v10, topClip:I
    const/4 v6, 0x0

    .line 501
    .local v6, leftLetterbox:F
    const/4 v9, 0x0

    .line 502
    .local v9, rightLetterbox:F
    const/4 v3, 0x0

    .line 503
    .local v3, bottomLetterbox:F
    const/4 v11, 0x0

    .line 505
    .local v11, topLetterbox:F
    cmpl-float v12, v4, v7

    if-lez v12, :cond_2

    .line 506
    move/from16 v0, p2

    int-to-float v0, v0

    move v12, v0

    div-float v4, v12, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .end local v4           #viewportAspectRatio:F
    move-result v4

    sub-int v4, p3, v4

    .line 510
    .local v4, clipAmount:I
    rem-int/lit8 v12, v4, 0x2

    if-eqz v12, :cond_0

    .line 511
    add-int/lit8 v4, v4, 0x1

    .line 514
    :cond_0
    int-to-float v12, v4

    move/from16 v0, p3

    int-to-float v0, v0

    move v13, v0

    div-float/2addr v12, v13

    sget v13, Lcom/google/android/talk/videochat/GlVideoView;->CLIP_THRESHOLD:F

    cmpl-float v12, v12, v13

    if-lez v12, :cond_1

    .line 516
    int-to-float v6, p0

    move/from16 v0, p1

    int-to-float v0, v0

    move v9, v0

    mul-float/2addr v7, v9

    sub-float/2addr v6, v7

    .line 517
    .local v6, letterboxAmount:F
    const/high16 v7, 0x4000

    div-float v7, v6, v7

    .end local v9           #rightLetterbox:F
    .local v7, rightLetterbox:F
    move v6, v7

    .local v6, leftLetterbox:F
    move v9, v10

    .end local v10           #topClip:I
    .local v9, topClip:I
    :goto_0
    move v10, v11

    .end local v11           #topLetterbox:F
    .local v10, topLetterbox:F
    move v14, v7

    .end local v7           #rightLetterbox:F
    .local v14, rightLetterbox:F
    move v7, v8

    .end local v8           #rightClip:I
    .local v7, rightClip:I
    move v8, v14

    .line 553
    .end local v14           #rightLetterbox:F
    .local v8, rightLetterbox:F
    :goto_1
    int-to-float v4, v5

    move v0, v4

    move-object/from16 v1, p4

    iput v0, v1, Lcom/google/android/talk/videochat/GlVideoView$FloatRect;->left:F

    .line 554
    .end local v4           #clipAmount:I
    int-to-float v4, v9

    move v0, v4

    move-object/from16 v1, p4

    iput v0, v1, Lcom/google/android/talk/videochat/GlVideoView$FloatRect;->top:F

    .line 555
    sub-int p2, p2, v7

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 p2, v0

    move/from16 v0, p2

    move-object/from16 v1, p4

    iput v0, v1, Lcom/google/android/talk/videochat/GlVideoView$FloatRect;->right:F

    .line 556
    .end local p2
    sub-int p2, p3, v2

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 p2, v0

    move/from16 v0, p2

    move-object/from16 v1, p4

    iput v0, v1, Lcom/google/android/talk/videochat/GlVideoView$FloatRect;->bottom:F

    .line 558
    move v0, v6

    move-object/from16 v1, p5

    iput v0, v1, Lcom/google/android/talk/videochat/GlVideoView$FloatRect;->left:F

    .line 559
    move v0, v10

    move-object/from16 v1, p5

    iput v0, v1, Lcom/google/android/talk/videochat/GlVideoView$FloatRect;->top:F

    .line 560
    int-to-float p0, p0

    sub-float/2addr p0, v8

    move v0, p0

    move-object/from16 v1, p5

    iput v0, v1, Lcom/google/android/talk/videochat/GlVideoView$FloatRect;->right:F

    .line 561
    .end local p0
    move/from16 v0, p1

    int-to-float v0, v0

    move p0, v0

    sub-float/2addr p0, v3

    move v0, p0

    move-object/from16 v1, p5

    iput v0, v1, Lcom/google/android/talk/videochat/GlVideoView$FloatRect;->bottom:F

    .line 562
    return-void

    .line 520
    .restart local v4       #clipAmount:I
    .local v7, rawRemoteAspectRatio:F
    .local v8, rightClip:I
    .local v9, rightLetterbox:F
    .local v10, topClip:I
    .restart local v11       #topLetterbox:F
    .restart local p0
    .restart local p2
    :cond_1
    div-int/lit8 v2, v4, 0x2

    move v7, v2

    .line 523
    .end local v10           #topClip:I
    .local v7, topClip:I
    rem-int/lit8 v10, v4, 0x4

    if-eqz v10, :cond_6

    .line 524
    add-int/lit8 v7, v7, 0x1

    .line 525
    add-int/lit8 v2, v2, -0x1

    move v14, v9

    .end local v9           #rightLetterbox:F
    .restart local v14       #rightLetterbox:F
    move v9, v7

    .end local v7           #topClip:I
    .local v9, topClip:I
    move v7, v14

    .end local v14           #rightLetterbox:F
    .local v7, rightLetterbox:F
    goto :goto_0

    .line 529
    .local v4, viewportAspectRatio:F
    .local v7, rawRemoteAspectRatio:F
    .local v9, rightLetterbox:F
    .restart local v10       #topClip:I
    :cond_2
    move/from16 v0, p3

    int-to-float v0, v0

    move v12, v0

    mul-float/2addr v4, v12

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .end local v4           #viewportAspectRatio:F
    move-result v4

    sub-int v4, p2, v4

    .line 533
    .local v4, clipAmount:I
    rem-int/lit8 v12, v4, 0x2

    if-eqz v12, :cond_3

    .line 534
    add-int/lit8 v4, v4, 0x1

    .line 537
    :cond_3
    int-to-float v12, v4

    move/from16 v0, p2

    int-to-float v0, v0

    move v13, v0

    div-float/2addr v12, v13

    sget v13, Lcom/google/android/talk/videochat/GlVideoView;->CLIP_THRESHOLD:F

    cmpl-float v12, v12, v13

    if-lez v12, :cond_4

    .line 539
    move/from16 v0, p1

    int-to-float v0, v0

    move v3, v0

    int-to-float v11, p0

    div-float v7, v11, v7

    sub-float/2addr v3, v7

    .line 540
    .local v3, letterboxAmount:F
    const/high16 v7, 0x4000

    div-float/2addr v3, v7

    .local v3, bottomLetterbox:F
    move v7, v3

    .end local v11           #topLetterbox:F
    .local v7, topLetterbox:F
    move v14, v7

    .end local v7           #topLetterbox:F
    .local v14, topLetterbox:F
    move v7, v8

    .end local v8           #rightClip:I
    .local v7, rightClip:I
    move v8, v9

    .end local v9           #rightLetterbox:F
    .local v8, rightLetterbox:F
    move v9, v10

    .end local v10           #topClip:I
    .local v9, topClip:I
    move v10, v14

    .line 541
    .end local v14           #topLetterbox:F
    .local v10, topLetterbox:F
    goto :goto_1

    .line 543
    .local v7, rawRemoteAspectRatio:F
    .local v8, rightClip:I
    .local v9, rightLetterbox:F
    .local v10, topClip:I
    .restart local v11       #topLetterbox:F
    :cond_4
    div-int/lit8 v5, v4, 0x2

    move v7, v5

    .line 546
    .end local v8           #rightClip:I
    .local v7, rightClip:I
    rem-int/lit8 v8, v4, 0x4

    if-eqz v8, :cond_5

    .line 547
    add-int/lit8 v7, v7, 0x1

    .line 548
    add-int/lit8 v5, v5, -0x1

    move v8, v9

    .end local v9           #rightLetterbox:F
    .local v8, rightLetterbox:F
    move v9, v10

    .end local v10           #topClip:I
    .local v9, topClip:I
    move v10, v11

    .end local v11           #topLetterbox:F
    .local v10, topLetterbox:F
    goto/16 :goto_1

    .end local v8           #rightLetterbox:F
    .local v9, rightLetterbox:F
    .local v10, topClip:I
    .restart local v11       #topLetterbox:F
    :cond_5
    move v8, v9

    .end local v9           #rightLetterbox:F
    .restart local v8       #rightLetterbox:F
    move v9, v10

    .end local v10           #topClip:I
    .local v9, topClip:I
    move v10, v11

    .end local v11           #topLetterbox:F
    .local v10, topLetterbox:F
    goto/16 :goto_1

    .end local v10           #topLetterbox:F
    .local v7, topClip:I
    .local v8, rightClip:I
    .local v9, rightLetterbox:F
    .restart local v11       #topLetterbox:F
    :cond_6
    move v14, v9

    .end local v9           #rightLetterbox:F
    .local v14, rightLetterbox:F
    move v9, v7

    .end local v7           #topClip:I
    .local v9, topClip:I
    move v7, v14

    .end local v14           #rightLetterbox:F
    .local v7, rightLetterbox:F
    goto/16 :goto_0
.end method


# virtual methods
.method public hideCameraVideo()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView;->mVideoAnimator:Lcom/google/android/talk/videochat/VideoAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/VideoAnimator;->setLocalVideoAlpha(F)V

    .line 174
    return-void
.end method

.method public hideRemoteVideo()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView;->mVideoAnimator:Lcom/google/android/talk/videochat/VideoAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/VideoAnimator;->setRemoteVideoAlpha(F)V

    .line 182
    return-void
.end method

.method public initialize(ZLcom/google/android/talk/videochat/GlVideoView$DrawingStartedCallback;Lcom/google/android/talk/videochat/VideoAnimator$CameraViewSizeChangedCallback;)V
    .locals 3
    .parameter "initiate"
    .parameter "callback"
    .parameter "sizeCallback"

    .prologue
    const/4 v2, 0x2

    .line 138
    sget-object v0, Lcom/google/android/talk/videochat/GlVideoView;->TAG:Ljava/lang/String;

    const-string v1, "VideoRendererView.init"

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    if-eqz p1, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/GlVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/GlVideoView;->setBackgroundColor(I)V

    .line 146
    :cond_0
    const-string v0, "Talk.disableRenderer"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    const-string v0, "talk"

    const-string v1, "Disabling video renderer"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/videochat/GlVideoView;->mDisableRenderer:Z

    .line 151
    :cond_1
    new-instance v0, Lcom/google/android/talk/videochat/VideoAnimator;

    invoke-virtual {p0}, Lcom/google/android/talk/videochat/GlVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p3}, Lcom/google/android/talk/videochat/VideoAnimator;-><init>(Landroid/content/Context;ZLcom/google/android/talk/videochat/VideoAnimator$CameraViewSizeChangedCallback;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView;->mVideoAnimator:Lcom/google/android/talk/videochat/VideoAnimator;

    .line 153
    iput-object p2, p0, Lcom/google/android/talk/videochat/GlVideoView;->mDrawingStartedCallback:Lcom/google/android/talk/videochat/GlVideoView$DrawingStartedCallback;

    .line 155
    invoke-virtual {p0, v2}, Lcom/google/android/talk/videochat/GlVideoView;->setEGLContextClientVersion(I)V

    .line 156
    new-instance v0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;

    invoke-direct {v0, p0, p0}, Lcom/google/android/talk/videochat/GlVideoView$Renderer;-><init>(Lcom/google/android/talk/videochat/GlVideoView;Lcom/google/android/talk/videochat/GlVideoView;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView;->mRenderer:Lcom/google/android/talk/videochat/GlVideoView$Renderer;

    .line 157
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView;->mRenderer:Lcom/google/android/talk/videochat/GlVideoView$Renderer;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/GlVideoView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 158
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 126
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/videochat/GlVideoView;->mFirstFrame:Z

    .line 128
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 206
    invoke-super {p0, p1, p2, p3, p4}, Landroid/opengl/GLSurfaceView;->onSizeChanged(IIII)V

    .line 207
    sget-object v0, Lcom/google/android/talk/videochat/GlVideoView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSizeChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public placeCameraViewInCorner(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 193
    if-eqz p1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView;->mVideoAnimator:Lcom/google/android/talk/videochat/VideoAnimator;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/VideoAnimator;->startCameraMoveToCornerAnimation()V

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView;->mVideoAnimator:Lcom/google/android/talk/videochat/VideoAnimator;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/VideoAnimator;->placeCameraInCorner()V

    goto :goto_0
.end method

.method public placeCameraViewInVanity(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 185
    if-eqz p1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView;->mVideoAnimator:Lcom/google/android/talk/videochat/VideoAnimator;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/VideoAnimator;->startCameraFlyInAnimation()V

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView;->mVideoAnimator:Lcom/google/android/talk/videochat/VideoAnimator;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/VideoAnimator;->placeCameraInVanity()V

    goto :goto_0
.end method

.method public setLibjingle(Lcom/google/android/talk/videochat/Libjingle;)V
    .locals 1
    .parameter "lj"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView;->mRenderer:Lcom/google/android/talk/videochat/GlVideoView$Renderer;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView;->mRenderer:Lcom/google/android/talk/videochat/GlVideoView$Renderer;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->setLibjingleTarget(Lcom/google/android/talk/videochat/Libjingle;)V

    .line 134
    :cond_0
    return-void
.end method

.method public setLocalVideoUnavailable()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView;->mVideoAnimator:Lcom/google/android/talk/videochat/VideoAnimator;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/VideoAnimator;->setLocalVideoUnavailable()V

    .line 202
    return-void
.end method

.method public showCameraVideo()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView;->mVideoAnimator:Lcom/google/android/talk/videochat/VideoAnimator;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/VideoAnimator;->startLocalVideoFadeInAnimation()V

    .line 170
    return-void
.end method

.method public showDarkBackgroundImage(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 161
    if-eqz p1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView;->mVideoAnimator:Lcom/google/android/talk/videochat/VideoAnimator;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/VideoAnimator;->startFadeInDarkBackgroundImage()V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView;->mVideoAnimator:Lcom/google/android/talk/videochat/VideoAnimator;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/VideoAnimator;->showDarkBackgroundImage()V

    goto :goto_0
.end method

.method public showRemoteVideo()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView;->mVideoAnimator:Lcom/google/android/talk/videochat/VideoAnimator;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/VideoAnimator;->startRemoteFadeInAnimation()V

    .line 178
    return-void
.end method
