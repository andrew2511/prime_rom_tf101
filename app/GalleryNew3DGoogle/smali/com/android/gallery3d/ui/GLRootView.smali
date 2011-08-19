.class public Lcom/android/gallery3d/ui/GLRootView;
.super Landroid/opengl/GLSurfaceView;
.source "GLRootView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/android/gallery3d/ui/GLRoot;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/GLRootView$1;,
        Lcom/android/gallery3d/ui/GLRootView$IdleRunner;
    }
.end annotation


# instance fields
.field private final mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/anim/CanvasAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

.field private mClipRect:Landroid/graphics/Rect;

.field private mClipRetryCount:I

.field private mContentView:Lcom/android/gallery3d/ui/GLView;

.field private final mEglConfigChooser:Lcom/android/gallery3d/ui/GalleryEGLConfigChooser;

.field private mFlags:I

.field private mFrameCount:I

.field private mFrameCountingStart:J

.field private mGL:Ljavax/microedition/khronos/opengles/GL11;

.field private final mIdleListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdleRunner:Lcom/android/gallery3d/ui/GLRootView$IdleRunner;

.field private mInDownState:Z

.field private mInvalidateColor:I

.field private mLastDrawFinishTime:J

.field private final mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile mRenderRequested:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/ui/GLRootView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    iput v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mFrameCount:I

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFrameCountingStart:J

    .line 57
    iput v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mInvalidateColor:I

    .line 70
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I

    .line 71
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderRequested:Z

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mClipRect:Landroid/graphics/Rect;

    .line 74
    iput v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mClipRetryCount:I

    .line 76
    new-instance v0, Lcom/android/gallery3d/ui/GalleryEGLConfigChooser;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/GalleryEGLConfigChooser;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mEglConfigChooser:Lcom/android/gallery3d/ui/GalleryEGLConfigChooser;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/LinkedList;

    .line 85
    new-instance v0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;

    invoke-direct {v0, p0, v3}, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;-><init>(Lcom/android/gallery3d/ui/GLRootView;Lcom/android/gallery3d/ui/GLRootView$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mIdleRunner:Lcom/android/gallery3d/ui/GLRootView$IdleRunner;

    .line 87
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 91
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mInDownState:Z

    .line 99
    iget v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I

    .line 100
    invoke-virtual {p0, v3}, Lcom/android/gallery3d/ui/GLRootView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mEglConfigChooser:Lcom/android/gallery3d/ui/GalleryEGLConfigChooser;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/GLRootView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 102
    invoke-virtual {p0, p0}, Lcom/android/gallery3d/ui/GLRootView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 107
    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery3d/ui/GLRootView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderRequested:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/GLRootView;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/GLRootView;)Lcom/android/gallery3d/ui/GLCanvasImpl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ui/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method private layoutContentPane()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 192
    iget v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I

    .line 193
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->getWidth()I

    move-result v1

    .line 194
    .local v1, width:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->getHeight()I

    move-result v0

    .line 195
    .local v0, height:I
    const-string v2, "GLRootView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "layout content pane "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 197
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v2, v5, v5, v1, v0}, Lcom/android/gallery3d/ui/GLView;->layout(IIII)V

    .line 201
    :cond_0
    return-void
.end method

.method private onDrawFrameLocked(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 10
    .parameter "gl"

    .prologue
    const/4 v9, 0x1

    .line 283
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/GLCanvasImpl;->deleteRecycledResources()V

    .line 286
    invoke-static {}, Lcom/android/gallery3d/ui/UploadedTexture;->resetUploadLimit()V

    .line 288
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderRequested:Z

    .line 290
    iget v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLRootView;->layoutContentPane()V

    .line 295
    :cond_0
    iget v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mClipRetryCount:I

    if-lez v5, :cond_1

    .line 296
    iget v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mClipRetryCount:I

    sub-int/2addr v5, v9

    iput v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mClipRetryCount:I

    .line 297
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mClipRect:Landroid/graphics/Rect;

    .line 298
    .local v0, clip:Landroid/graphics/Rect;
    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-interface {p1, v5, v6, v7, v8}, Ljavax/microedition/khronos/opengles/GL10;->glScissor(IIII)V

    .line 301
    .end local v0           #clip:Landroid/graphics/Rect;
    :cond_1
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/gallery3d/ui/GLCanvasImpl;->setCurrentAnimationTimeMillis(J)V

    .line 302
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    if-eqz v5, :cond_2

    .line 303
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    iget-object v6, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/ui/GLView;->render(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 306
    :cond_2
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 307
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 308
    .local v3, now:J
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 309
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/anim/CanvasAnimation;

    invoke-virtual {v5, v3, v4}, Lcom/android/gallery3d/anim/CanvasAnimation;->setStartTime(J)V

    .line 308
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 311
    :cond_3
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 314
    .end local v1           #i:I
    .end local v2           #n:I
    .end local v3           #now:J
    :cond_4
    invoke-static {}, Lcom/android/gallery3d/ui/UploadedTexture;->uploadLimitReached()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 315
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->requestRender()V

    .line 318
    :cond_5
    iget-boolean v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderRequested:Z

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mIdleRunner:Lcom/android/gallery3d/ui/GLRootView$IdleRunner;

    iget-boolean v5, v5, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->mActive:Z

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 320
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mIdleRunner:Lcom/android/gallery3d/ui/GLRootView$IdleRunner;

    iput-boolean v9, v5, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->mActive:Z

    .line 321
    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mIdleRunner:Lcom/android/gallery3d/ui/GLRootView$IdleRunner;

    invoke-virtual {p0, v5}, Lcom/android/gallery3d/ui/GLRootView;->queueEvent(Ljava/lang/Runnable;)V

    .line 332
    :cond_6
    return-void
.end method


# virtual methods
.method public addOnGLIdleListener(Lcom/android/gallery3d/ui/GLRoot$OnGLIdleListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mIdleListeners:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 129
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderRequested:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mIdleRunner:Lcom/android/gallery3d/ui/GLRootView$IdleRunner;

    iget-boolean v0, v0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->mActive:Z

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mIdleRunner:Lcom/android/gallery3d/ui/GLRootView$IdleRunner;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/gallery3d/ui/GLRootView$IdleRunner;->mActive:Z

    .line 131
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mIdleRunner:Lcom/android/gallery3d/ui/GLRootView$IdleRunner;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/GLRootView;->queueEvent(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 136
    return-void

    .line 134
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 336
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 337
    .local v0, action:I
    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    if-ne v0, v4, :cond_3

    .line 339
    :cond_0
    iput-boolean v3, p0, Lcom/android/gallery3d/ui/GLRootView;->mInDownState:Z

    .line 343
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 346
    :try_start_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v2, p1}, Lcom/android/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v1, v4

    .line 348
    .local v1, handled:Z
    :goto_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 349
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mInDownState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v2, v1

    .end local v1           #handled:Z
    :goto_1
    return v2

    .line 340
    :cond_3
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mInDownState:Z

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    move v2, v3

    .line 341
    goto :goto_1

    :cond_4
    move v1, v3

    .line 346
    goto :goto_0

    .line 353
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public lockRenderThread()V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 396
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 10
    .parameter "gl"

    .prologue
    const-wide/16 v8, 0x0

    .line 262
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 264
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/GLRootView;->onDrawFrameLocked(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 268
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 270
    .local v0, end:J
    iget-wide v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mLastDrawFinishTime:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_0

    .line 271
    iget-wide v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mLastDrawFinishTime:J

    const-wide/16 v6, 0x21

    add-long/2addr v4, v6

    sub-long v2, v4, v0

    .line 272
    .local v2, wait:J
    cmp-long v4, v2, v8

    if-lez v4, :cond_0

    .line 273
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 276
    .end local v2           #wait:J
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mLastDrawFinishTime:J

    .line 277
    return-void

    .line 266
    .end local v0           #end:J
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 206
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->requestLayoutContentPane()V

    .line 207
    :cond_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 6
    .parameter "gl1"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v5, 0x0

    .line 234
    const-string v2, "GLRootView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSurfaceChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", gl10: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/4 v2, -0x4

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 237
    invoke-static {}, Lcom/android/gallery3d/util/Utils;->setRenderThread()V

    .line 238
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    move-object v1, v0

    .line 239
    .local v1, gl:Ljavax/microedition/khronos/opengles/GL11;
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-ne v2, v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/android/gallery3d/util/Utils;->Assert(Z)V

    .line 241
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-virtual {v2, p2, p3}, Lcom/android/gallery3d/ui/GLCanvasImpl;->setSize(II)V

    .line 243
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v5, v5, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 244
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mClipRetryCount:I

    .line 245
    return-void

    :cond_0
    move v2, v5

    .line 239
    goto :goto_0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 5
    .parameter "gl1"
    .parameter "config"

    .prologue
    .line 214
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    move-object v1, v0

    .line 215
    .local v1, gl:Ljavax/microedition/khronos/opengles/GL11;
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v2, :cond_0

    .line 217
    const-string v2, "GLRootView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GLObject has changed from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    iput-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 220
    new-instance v2, Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-direct {v2, v1}, Lcom/android/gallery3d/ui/GLCanvasImpl;-><init>(Ljavax/microedition/khronos/opengles/GL11;)V

    iput-object v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvasImpl;

    .line 222
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/ui/GLRootView;->setRenderMode(I)V

    .line 226
    return-void
.end method

.method public requestLayoutContentPane()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 189
    :goto_0
    return-void

    .line 182
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 184
    :cond_2
    :try_start_2
    iget v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mFlags:I

    .line 185
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->requestRender()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderRequested:Z

    if-eqz v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderRequested:Z

    .line 172
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    goto :goto_0
.end method

.method public setContentPane(Lcom/android/gallery3d/ui/GLView;)V
    .locals 9
    .parameter "content"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 139
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    if-ne v2, p1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    if-eqz v2, :cond_3

    .line 141
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mInDownState:Z

    if-eqz v2, :cond_2

    .line 142
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 143
    .local v0, now:J
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 145
    .local v8, cancelEvent:Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v2, v8}, Lcom/android/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 146
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 147
    iput-boolean v7, p0, Lcom/android/gallery3d/ui/GLRootView;->mInDownState:Z

    .line 149
    .end local v0           #now:J
    .end local v8           #cancelEvent:Landroid/view/MotionEvent;
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/GLView;->detachFromRoot()V

    .line 150
    invoke-static {}, Lcom/android/gallery3d/ui/BasicTexture;->yieldAllTextures()V

    .line 152
    :cond_3
    iput-object p1, p0, Lcom/android/gallery3d/ui/GLRootView;->mContentView:Lcom/android/gallery3d/ui/GLView;

    .line 153
    if-eqz p1, :cond_0

    .line 154
    invoke-virtual {p1, p0}, Lcom/android/gallery3d/ui/GLView;->attachToRoot(Lcom/android/gallery3d/ui/GLRoot;)V

    .line 155
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/GLRootView;->requestLayoutContentPane()V

    goto :goto_0
.end method

.method public unlockRenderThread()V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 400
    return-void
.end method
