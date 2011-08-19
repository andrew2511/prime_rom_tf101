.class public Lcom/google/android/opengl/glview/GLViewRenderer;
.super Ljava/lang/Object;
.source "GLViewRenderer.java"

# interfaces
.implements Lcom/google/android/opengl/glview/GLSurfaceView$Renderer;
.implements Lcom/google/android/opengl/glview/Listener;


# static fields
.field private static final CHECK_GLERRORS:Z

.field private static final DEBUG_LOG_FPS:Z

.field private static final DEBUG_LOG_LISTEN:Z

.field private static FPS_FRAMES:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCamera:Lcom/google/android/opengl/glview/GLCamera;

.field private mCanvas:Lcom/google/android/opengl/glview/GLCanvas;

.field private mContext:Landroid/content/Context;

.field private mFrameCount:I

.field private mFrameInterval:F

.field private mFrameTime:J

.field private mGLSurfaceView:Lcom/google/android/opengl/glview/GLSurfaceView;

.field private mRequestLayout:Z

.field private mRoot:Lcom/google/android/opengl/glview/TopLevelView;

.field private mTimeStart:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "GLViewRenderer"

    sput-object v0, Lcom/google/android/opengl/glview/GLViewRenderer;->TAG:Ljava/lang/String;

    .line 23
    const/16 v0, 0x32

    sput v0, Lcom/google/android/opengl/glview/GLViewRenderer;->FPS_FRAMES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/opengl/glview/GLSurfaceView;)V
    .locals 2
    .parameter "context"
    .parameter "glSurfaceView"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mFrameCount:I

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mTimeStart:J

    .line 39
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mGLSurfaceView:Lcom/google/android/opengl/glview/GLSurfaceView;

    .line 41
    new-instance v0, Lcom/google/android/opengl/glview/GLCanvas;

    invoke-direct {v0, p1}, Lcom/google/android/opengl/glview/GLCanvas;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mCanvas:Lcom/google/android/opengl/glview/GLCanvas;

    .line 42
    new-instance v0, Lcom/google/android/opengl/glview/GLCamera;

    iget-object v1, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mCanvas:Lcom/google/android/opengl/glview/GLCanvas;

    invoke-direct {v0, v1}, Lcom/google/android/opengl/glview/GLCamera;-><init>(Lcom/google/android/opengl/glview/GLCanvas;)V

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mCamera:Lcom/google/android/opengl/glview/GLCamera;

    .line 43
    return-void
.end method

.method private updateFPS()V
    .locals 7

    .prologue
    .line 79
    iget v3, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mFrameCount:I

    sget v4, Lcom/google/android/opengl/glview/GLViewRenderer;->FPS_FRAMES:I

    if-ge v3, v4, :cond_0

    .line 80
    iget v3, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mFrameCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mFrameCount:I

    .line 96
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLViewRenderer;->getFrameTime()J

    move-result-wide v1

    .line 84
    .local v1, time:J
    iget v3, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mFrameCount:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    iget-wide v5, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mTimeStart:J

    sub-long v5, v1, v5

    div-long/2addr v3, v5

    long-to-float v0, v3

    .line 85
    .local v0, fps:F
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mFrameCount:I

    .line 86
    iput-wide v1, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mTimeStart:J

    .line 88
    const/high16 v3, 0x447a

    div-float/2addr v3, v0

    float-to-double v3, v3

    goto :goto_0
.end method


# virtual methods
.method protected final canvasHeight()F
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mCanvas:Lcom/google/android/opengl/glview/GLCanvas;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLCanvas;->height()F

    move-result v0

    return v0
.end method

.method protected final canvasWidth()F
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mCanvas:Lcom/google/android/opengl/glview/GLCanvas;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLCanvas;->width()F

    move-result v0

    return v0
.end method

.method protected drawFrame()V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mRoot:Lcom/google/android/opengl/glview/TopLevelView;

    if-eqz v0, :cond_1

    .line 64
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mRequestLayout:Z

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLViewRenderer;->onLayout()V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mCanvas:Lcom/google/android/opengl/glview/GLCanvas;

    iget-wide v1, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mFrameTime:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/opengl/glview/GLCanvas;->setFrameTime(J)V

    .line 68
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mCanvas:Lcom/google/android/opengl/glview/GLCanvas;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLCanvas;->startDrawing()V

    .line 69
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mRoot:Lcom/google/android/opengl/glview/TopLevelView;

    iget-object v1, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mCanvas:Lcom/google/android/opengl/glview/GLCanvas;

    iget v2, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mFrameInterval:F

    invoke-virtual {v0, v1, v2}, Lcom/google/android/opengl/glview/TopLevelView;->onDrawFrame(Lcom/google/android/opengl/glview/GLCanvas;F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mGLSurfaceView:Lcom/google/android/opengl/glview/GLSurfaceView;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLSurfaceView;->requestRender()V

    .line 76
    :cond_1
    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getFrameTime()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mFrameTime:J

    return-wide v0
.end method

.method public getGLSurfaceView()Lcom/google/android/opengl/glview/GLSurfaceView;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mGLSurfaceView:Lcom/google/android/opengl/glview/GLSurfaceView;

    return-object v0
.end method

.method protected final getRoot()Lcom/google/android/opengl/glview/TopLevelView;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mRoot:Lcom/google/android/opengl/glview/TopLevelView;

    return-object v0
.end method

.method public listen(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "msg"
    .parameter "senderId"
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v0, 0x1

    .line 138
    packed-switch p1, :pswitch_data_0

    .line 146
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 140
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLViewRenderer;->requestRender()V

    goto :goto_0

    .line 143
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLViewRenderer;->requestLayout()V

    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .parameter "glUnused"

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLViewRenderer;->preDrawFrame()V

    .line 51
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLViewRenderer;->drawFrame()V

    .line 52
    return-void
.end method

.method protected onLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 180
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mRoot:Lcom/google/android/opengl/glview/TopLevelView;

    iget-object v1, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mCanvas:Lcom/google/android/opengl/glview/GLCanvas;

    invoke-virtual {v1}, Lcom/google/android/opengl/glview/GLCanvas;->width()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mCanvas:Lcom/google/android/opengl/glview/GLCanvas;

    invoke-virtual {v2}, Lcom/google/android/opengl/glview/GLCanvas;->height()F

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/google/android/opengl/glview/TopLevelView;->setContentRect(FFFF)V

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mRequestLayout:Z

    .line 182
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 5
    .parameter "glUnused"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v4, 0x0

    .line 110
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mCanvas:Lcom/google/android/opengl/glview/GLCanvas;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/opengl/glview/GLCanvas;->setExtent(FF)V

    .line 113
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mRoot:Lcom/google/android/opengl/glview/TopLevelView;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/google/android/opengl/glview/TopLevelView;

    const/4 v1, 0x0

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/android/opengl/glview/TopLevelView;-><init>(IFFLcom/google/android/opengl/glview/Listener;)V

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mRoot:Lcom/google/android/opengl/glview/TopLevelView;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mRoot:Lcom/google/android/opengl/glview/TopLevelView;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/google/android/opengl/glview/TopLevelView;->setContentRect(FFFF)V

    .line 118
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mCamera:Lcom/google/android/opengl/glview/GLCamera;

    invoke-virtual {v0, p2, p3}, Lcom/google/android/opengl/glview/GLCamera;->setCamera(II)V

    .line 119
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .parameter "glUnused"
    .parameter "config"

    .prologue
    .line 127
    const/16 v0, 0xcf5

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 129
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mCanvas:Lcom/google/android/opengl/glview/GLCanvas;

    invoke-virtual {v0, p2}, Lcom/google/android/opengl/glview/GLCanvas;->onSurfaceCreated(Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 130
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mRoot:Lcom/google/android/opengl/glview/TopLevelView;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mRoot:Lcom/google/android/opengl/glview/TopLevelView;

    iget-object v1, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mCanvas:Lcom/google/android/opengl/glview/GLCanvas;

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/TopLevelView;->onSurfaceCreated(Lcom/google/android/opengl/glview/GLCanvas;)V

    .line 133
    :cond_0
    return-void
.end method

.method protected preDrawFrame()V
    .locals 8

    .prologue
    .line 55
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 56
    .local v1, now:J
    const v3, 0x3a83126f

    const-wide/16 v4, 0x32

    iget-wide v6, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mFrameTime:J

    sub-long v6, v1, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-float v4, v4

    mul-float v0, v3, v4

    .line 57
    .local v0, dt:F
    iput v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mFrameInterval:F

    .line 58
    iput-wide v1, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mFrameTime:J

    .line 59
    invoke-direct {p0}, Lcom/google/android/opengl/glview/GLViewRenderer;->updateFPS()V

    .line 60
    return-void
.end method

.method protected final requestLayout()V
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mRequestLayout:Z

    .line 176
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mGLSurfaceView:Lcom/google/android/opengl/glview/GLSurfaceView;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLSurfaceView;->requestRender()V

    .line 177
    return-void
.end method

.method protected final requestRender()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mGLSurfaceView:Lcom/google/android/opengl/glview/GLSurfaceView;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLSurfaceView;->requestRender()V

    .line 172
    return-void
.end method

.method public route(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 6
    .parameter "tag"
    .parameter "e0"
    .parameter "e1"
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mRoot:Lcom/google/android/opengl/glview/TopLevelView;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mRoot:Lcom/google/android/opengl/glview/TopLevelView;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/opengl/glview/TopLevelView;->route(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Lcom/google/android/opengl/glview/GLView$EventTracker;

    .line 154
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mGLSurfaceView:Lcom/google/android/opengl/glview/GLSurfaceView;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLSurfaceView;->requestRender()V

    .line 156
    :cond_0
    return-void
.end method

.method protected setCanvasConfiguration(Ljava/lang/Object;)V
    .locals 1
    .parameter "configuration"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLViewRenderer;->mCanvas:Lcom/google/android/opengl/glview/GLCanvas;

    invoke-virtual {v0, p1}, Lcom/google/android/opengl/glview/GLCanvas;->setConfiguration(Ljava/lang/Object;)V

    .line 186
    return-void
.end method
