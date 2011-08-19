.class public Lcom/google/android/opengl/glview/GLSurfaceView;
.super Landroid/view/SurfaceView;
.source "GLSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/opengl/glview/GLSurfaceView$1;,
        Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;,
        Lcom/google/android/opengl/glview/GLSurfaceView$LogWriter;,
        Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;,
        Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;,
        Lcom/google/android/opengl/glview/GLSurfaceView$SimpleEGLConfigChooser;,
        Lcom/google/android/opengl/glview/GLSurfaceView$ComponentSizeChooser;,
        Lcom/google/android/opengl/glview/GLSurfaceView$BaseConfigChooser;,
        Lcom/google/android/opengl/glview/GLSurfaceView$EGLConfigChooser;,
        Lcom/google/android/opengl/glview/GLSurfaceView$DefaultWindowSurfaceFactory;,
        Lcom/google/android/opengl/glview/GLSurfaceView$EGLWindowSurfaceFactory;,
        Lcom/google/android/opengl/glview/GLSurfaceView$DefaultContextFactory;,
        Lcom/google/android/opengl/glview/GLSurfaceView$EGLContextFactory;,
        Lcom/google/android/opengl/glview/GLSurfaceView$Renderer;,
        Lcom/google/android/opengl/glview/GLSurfaceView$GLWrapper;
    }
.end annotation


# static fields
.field public static final DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final DEBUG_LOG_GL_CALLS:I = 0x2

.field private static final DRAW_TWICE_AFTER_SIZE_CHANGED:Z = true

.field private static final LOG_ATTACH_DETACH:Z = false

.field private static final LOG_EGL:Z = false

.field private static final LOG_PAUSE_RESUME:Z = false

.field private static final LOG_RENDERER:Z = false

.field private static final LOG_RENDERER_DRAW_FRAME:Z = false

.field private static final LOG_SURFACE:Z = false

.field private static final LOG_THREADS:Z = false

.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GLSurfaceView"

.field private static final sGLThreadManager:Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;


# instance fields
.field private mDebugFlags:I

.field private mDetached:Z

.field private mEGLConfigChooser:Lcom/google/android/opengl/glview/GLSurfaceView$EGLConfigChooser;

.field private mEGLContextClientVersion:I

.field private mEGLContextFactory:Lcom/google/android/opengl/glview/GLSurfaceView$EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Lcom/google/android/opengl/glview/GLSurfaceView$EGLWindowSurfaceFactory;

.field private mGLThread:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

.field private mGLWrapper:Lcom/google/android/opengl/glview/GLSurfaceView$GLWrapper;

.field private mPreserveEGLContextOnPause:Z

.field private mRenderer:Lcom/google/android/opengl/glview/GLSurfaceView$Renderer;

.field private mSizeChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1781
    new-instance v0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;-><init>(Lcom/google/android/opengl/glview/GLSurfaceView$1;)V

    sput-object v0, Lcom/google/android/opengl/glview/GLSurfaceView;->sGLThreadManager:Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 195
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 1782
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mSizeChanged:Z

    .line 196
    invoke-direct {p0}, Lcom/google/android/opengl/glview/GLSurfaceView;->init()V

    .line 197
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 204
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1782
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mSizeChanged:Z

    .line 205
    invoke-direct {p0}, Lcom/google/android/opengl/glview/GLSurfaceView;->init()V

    .line 206
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/opengl/glview/GLSurfaceView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mSizeChanged:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/google/android/opengl/glview/GLSurfaceView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mSizeChanged:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/google/android/opengl/glview/GLSurfaceView;)Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/opengl/glview/GLSurfaceView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mEGLContextClientVersion:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/opengl/glview/GLSurfaceView;)Lcom/google/android/opengl/glview/GLSurfaceView$EGLConfigChooser;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mEGLConfigChooser:Lcom/google/android/opengl/glview/GLSurfaceView$EGLConfigChooser;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/opengl/glview/GLSurfaceView;)Lcom/google/android/opengl/glview/GLSurfaceView$EGLContextFactory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mEGLContextFactory:Lcom/google/android/opengl/glview/GLSurfaceView$EGLContextFactory;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/opengl/glview/GLSurfaceView;)Lcom/google/android/opengl/glview/GLSurfaceView$EGLWindowSurfaceFactory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/google/android/opengl/glview/GLSurfaceView$EGLWindowSurfaceFactory;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/opengl/glview/GLSurfaceView;)Lcom/google/android/opengl/glview/GLSurfaceView$GLWrapper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mGLWrapper:Lcom/google/android/opengl/glview/GLSurfaceView$GLWrapper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/opengl/glview/GLSurfaceView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mDebugFlags:I

    return v0
.end method

.method static synthetic access$800()Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/google/android/opengl/glview/GLSurfaceView;->sGLThreadManager:Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/opengl/glview/GLSurfaceView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mPreserveEGLContextOnPause:Z

    return v0
.end method

.method private checkRenderThreadState()V
    .locals 2

    .prologue
    .line 1663
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    if-eqz v0, :cond_0

    .line 1664
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1667
    :cond_0
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 212
    .local v0, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 215
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 220
    return-void
.end method


# virtual methods
.method public getDebugFlags()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mDebugFlags:I

    return v0
.end method

.method public getPreserveEGLContextOnPause()Z
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mPreserveEGLContextOnPause:Z

    return v0
.end method

.method public getRenderMode()I
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->getRenderMode()I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 551
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 555
    iget-boolean v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mDetached:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mRenderer:Lcom/google/android/opengl/glview/GLSurfaceView$Renderer;

    if-eqz v1, :cond_2

    .line 556
    const/4 v0, 0x1

    .line 557
    .local v0, renderMode:I
    iget-object v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    if-eqz v1, :cond_0

    .line 558
    iget-object v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    invoke-virtual {v1}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->getRenderMode()I

    move-result v0

    .line 560
    :cond_0
    new-instance v1, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    iget-object v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mRenderer:Lcom/google/android/opengl/glview/GLSurfaceView$Renderer;

    invoke-direct {v1, p0, v2}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;-><init>(Lcom/google/android/opengl/glview/GLSurfaceView;Lcom/google/android/opengl/glview/GLSurfaceView$Renderer;)V

    iput-object v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    .line 561
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 562
    iget-object v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    invoke-virtual {v1, v0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->setRenderMode(I)V

    .line 564
    :cond_1
    iget-object v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    invoke-virtual {v1}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->start()V

    .line 566
    .end local v0           #renderMode:I
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mDetached:Z

    .line 567
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->requestExitAndWait()V

    .line 582
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mDetached:Z

    .line 583
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 584
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->onPause()V

    .line 522
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->onResume()V

    .line 533
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 542
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 543
    return-void
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->requestRender()V

    .line 487
    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0
    .parameter "debugFlags"

    .prologue
    .line 249
    iput p1, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mDebugFlags:I

    .line 250
    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .locals 8
    .parameter "redSize"
    .parameter "greenSize"
    .parameter "blueSize"
    .parameter "alphaSize"
    .parameter "depthSize"
    .parameter "stencilSize"

    .prologue
    .line 412
    new-instance v0, Lcom/google/android/opengl/glview/GLSurfaceView$ComponentSizeChooser;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/opengl/glview/GLSurfaceView$ComponentSizeChooser;-><init>(Lcom/google/android/opengl/glview/GLSurfaceView;IIIIII)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/GLSurfaceView;->setEGLConfigChooser(Lcom/google/android/opengl/glview/GLSurfaceView$EGLConfigChooser;)V

    .line 414
    return-void
.end method

.method public setEGLConfigChooser(Lcom/google/android/opengl/glview/GLSurfaceView$EGLConfigChooser;)V
    .locals 0
    .parameter "configChooser"

    .prologue
    .line 375
    invoke-direct {p0}, Lcom/google/android/opengl/glview/GLSurfaceView;->checkRenderThreadState()V

    .line 376
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mEGLConfigChooser:Lcom/google/android/opengl/glview/GLSurfaceView$EGLConfigChooser;

    .line 377
    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1
    .parameter "needDepth"

    .prologue
    .line 394
    new-instance v0, Lcom/google/android/opengl/glview/GLSurfaceView$SimpleEGLConfigChooser;

    invoke-direct {v0, p0, p1}, Lcom/google/android/opengl/glview/GLSurfaceView$SimpleEGLConfigChooser;-><init>(Lcom/google/android/opengl/glview/GLSurfaceView;Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/GLSurfaceView;->setEGLConfigChooser(Lcom/google/android/opengl/glview/GLSurfaceView$EGLConfigChooser;)V

    .line 395
    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0
    .parameter "version"

    .prologue
    .line 443
    invoke-direct {p0}, Lcom/google/android/opengl/glview/GLSurfaceView;->checkRenderThreadState()V

    .line 444
    iput p1, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mEGLContextClientVersion:I

    .line 445
    return-void
.end method

.method public setEGLContextFactory(Lcom/google/android/opengl/glview/GLSurfaceView$EGLContextFactory;)V
    .locals 0
    .parameter "factory"

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/google/android/opengl/glview/GLSurfaceView;->checkRenderThreadState()V

    .line 345
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mEGLContextFactory:Lcom/google/android/opengl/glview/GLSurfaceView$EGLContextFactory;

    .line 346
    return-void
.end method

.method public setEGLWindowSurfaceFactory(Lcom/google/android/opengl/glview/GLSurfaceView$EGLWindowSurfaceFactory;)V
    .locals 0
    .parameter "factory"

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/google/android/opengl/glview/GLSurfaceView;->checkRenderThreadState()V

    .line 359
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/google/android/opengl/glview/GLSurfaceView$EGLWindowSurfaceFactory;

    .line 360
    return-void
.end method

.method public setGLWrapper(Lcom/google/android/opengl/glview/GLSurfaceView$GLWrapper;)V
    .locals 0
    .parameter "glWrapper"

    .prologue
    .line 236
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mGLWrapper:Lcom/google/android/opengl/glview/GLSurfaceView$GLWrapper;

    .line 237
    return-void
.end method

.method public setPreserveEGLContextOnPause(Z)V
    .locals 0
    .parameter "preserveOnPause"

    .prologue
    .line 280
    iput-boolean p1, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mPreserveEGLContextOnPause:Z

    .line 281
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1
    .parameter "renderMode"

    .prologue
    .line 464
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->setRenderMode(I)V

    .line 465
    return-void
.end method

.method public setRenderer(Lcom/google/android/opengl/glview/GLSurfaceView$Renderer;)V
    .locals 3
    .parameter "renderer"

    .prologue
    const/4 v2, 0x0

    .line 318
    invoke-direct {p0}, Lcom/google/android/opengl/glview/GLSurfaceView;->checkRenderThreadState()V

    .line 319
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mEGLConfigChooser:Lcom/google/android/opengl/glview/GLSurfaceView$EGLConfigChooser;

    if-nez v0, :cond_0

    .line 320
    new-instance v0, Lcom/google/android/opengl/glview/GLSurfaceView$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/opengl/glview/GLSurfaceView$SimpleEGLConfigChooser;-><init>(Lcom/google/android/opengl/glview/GLSurfaceView;Z)V

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mEGLConfigChooser:Lcom/google/android/opengl/glview/GLSurfaceView$EGLConfigChooser;

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mEGLContextFactory:Lcom/google/android/opengl/glview/GLSurfaceView$EGLContextFactory;

    if-nez v0, :cond_1

    .line 323
    new-instance v0, Lcom/google/android/opengl/glview/GLSurfaceView$DefaultContextFactory;

    invoke-direct {v0, p0, v2}, Lcom/google/android/opengl/glview/GLSurfaceView$DefaultContextFactory;-><init>(Lcom/google/android/opengl/glview/GLSurfaceView;Lcom/google/android/opengl/glview/GLSurfaceView$1;)V

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mEGLContextFactory:Lcom/google/android/opengl/glview/GLSurfaceView$EGLContextFactory;

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/google/android/opengl/glview/GLSurfaceView$EGLWindowSurfaceFactory;

    if-nez v0, :cond_2

    .line 326
    new-instance v0, Lcom/google/android/opengl/glview/GLSurfaceView$DefaultWindowSurfaceFactory;

    invoke-direct {v0, v2}, Lcom/google/android/opengl/glview/GLSurfaceView$DefaultWindowSurfaceFactory;-><init>(Lcom/google/android/opengl/glview/GLSurfaceView$1;)V

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/google/android/opengl/glview/GLSurfaceView$EGLWindowSurfaceFactory;

    .line 328
    :cond_2
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mRenderer:Lcom/google/android/opengl/glview/GLSurfaceView$Renderer;

    .line 329
    new-instance v0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    invoke-direct {v0, p0, p1}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;-><init>(Lcom/google/android/opengl/glview/GLSurfaceView;Lcom/google/android/opengl/glview/GLSurfaceView$Renderer;)V

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    .line 330
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->start()V

    .line 331
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 511
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    invoke-virtual {v0, p3, p4}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->onWindowResize(II)V

    .line 512
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 494
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->surfaceCreated()V

    .line 495
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 503
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->surfaceDestroyed()V

    .line 504
    return-void
.end method
