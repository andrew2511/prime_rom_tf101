.class public final Lcom/asus/livewallpaper/gl/EglHelper;
.super Ljava/lang/Object;
.source "EglHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/livewallpaper/gl/EglHelper$ConfigChooser;,
        Lcom/asus/livewallpaper/gl/EglHelper$BaseConfigChooser;,
        Lcom/asus/livewallpaper/gl/EglHelper$GLWrapper;
    }
.end annotation


# instance fields
.field mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

.field mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field mErrorCode:I

.field mGLWrapper:Lcom/asus/livewallpaper/gl/EglHelper$GLWrapper;


# direct methods
.method public constructor <init>(Lcom/asus/livewallpaper/gl/EglHelper$GLWrapper;)V
    .locals 8
    .parameter "wrapper"

    .prologue
    const/4 v2, 0x5

    const/4 v5, 0x0

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    new-instance v0, Lcom/asus/livewallpaper/gl/EglHelper$ConfigChooser;

    const/4 v3, 0x6

    move-object v1, p0

    move v4, v2

    move v6, v5

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/asus/livewallpaper/gl/EglHelper$ConfigChooser;-><init>(Lcom/asus/livewallpaper/gl/EglHelper;IIIIII)V

    iput-object v0, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    .line 265
    const/16 v0, 0x3000

    iput v0, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mErrorCode:I

    .line 276
    iput-object p1, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mGLWrapper:Lcom/asus/livewallpaper/gl/EglHelper$GLWrapper;

    .line 277
    return-void
.end method

.method private getEglErrorInner()I
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mErrorCode:I

    .line 477
    iget v0, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mErrorCode:I

    return v0

    .line 475
    :cond_0
    const/16 v0, 0x300e

    goto :goto_0
.end method

.method private throwEglException(Ljava/lang/String;)V
    .locals 1
    .parameter "function"

    .prologue
    .line 457
    invoke-direct {p0}, Lcom/asus/livewallpaper/gl/EglHelper;->getEglErrorInner()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/asus/livewallpaper/gl/EglHelper;->throwEglException(Ljava/lang/String;I)V

    .line 458
    return-void
.end method

.method private throwEglException(Ljava/lang/String;I)V
    .locals 5
    .parameter "function"
    .parameter "error"

    .prologue
    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, message:Ljava/lang/String;
    const-string v1, "EglHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "throwEglException tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    return-void
.end method


# virtual methods
.method public createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;
    .locals 7
    .parameter "holder"

    .prologue
    const/4 v5, 0x0

    .line 347
    iget-object v2, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v2, :cond_0

    .line 348
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "egl not initialized"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 350
    :cond_0
    iget-object v2, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-nez v2, :cond_1

    .line 351
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "eglDisplay not initialized"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 353
    :cond_1
    iget-object v2, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v2, :cond_2

    .line 354
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "mEglConfig not initialized"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 359
    :cond_2
    invoke-virtual {p0}, Lcom/asus/livewallpaper/gl/EglHelper;->destroySurface()V

    .line 362
    iget-object v2, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v2, v3, v4, p1, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    iput-object v2, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 365
    iget-object v2, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v2, v3, :cond_5

    .line 366
    :cond_3
    invoke-direct {p0}, Lcom/asus/livewallpaper/gl/EglHelper;->getEglErrorInner()I

    move-result v0

    .line 367
    .local v0, error:I
    const/16 v2, 0x300b

    if-ne v0, v2, :cond_4

    .line 368
    const-string v2, "EglHelper"

    const-string v3, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 387
    .end local v0           #error:I
    :goto_0
    return-object v2

    .line 372
    .restart local v0       #error:I
    :cond_4
    const-string v2, "createWindowSurface"

    invoke-direct {p0, v2, v0}, Lcom/asus/livewallpaper/gl/EglHelper;->throwEglException(Ljava/lang/String;I)V

    .line 377
    .end local v0           #error:I
    :cond_5
    iget-object v2, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v6, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 379
    const-string v2, "eglMakeCurrent"

    invoke-direct {p0, v2}, Lcom/asus/livewallpaper/gl/EglHelper;->throwEglException(Ljava/lang/String;)V

    .line 382
    :cond_6
    iget-object v2, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v2}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    .line 383
    .local v1, gl:Ljavax/microedition/khronos/opengles/GL;
    iget-object v2, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mGLWrapper:Lcom/asus/livewallpaper/gl/EglHelper$GLWrapper;

    if-eqz v2, :cond_7

    .line 384
    iget-object v2, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mGLWrapper:Lcom/asus/livewallpaper/gl/EglHelper$GLWrapper;

    invoke-interface {v2, v1}, Lcom/asus/livewallpaper/gl/EglHelper$GLWrapper;->wrap(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    :cond_7
    move-object v2, v1

    .line 387
    goto :goto_0
.end method

.method public destroySurface()V
    .locals 5

    .prologue
    .line 430
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_0

    .line 431
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 433
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 434
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 436
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 440
    invoke-virtual {p0}, Lcom/asus/livewallpaper/gl/EglHelper;->destroySurface()V

    .line 445
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 447
    iput-object v3, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_1

    .line 450
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 451
    iput-object v3, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 453
    :cond_1
    return-void
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 482
    iget v0, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mErrorCode:I

    return v0
.end method

.method public start()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 294
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v1, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 297
    iget-object v1, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 299
    iget-object v1, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v1, v2, :cond_0

    .line 300
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "eglGetDisplay failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 304
    :cond_0
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 305
    .local v0, version:[I
    iget-object v1, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 306
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "eglInitialize failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 316
    :cond_1
    iget-object v1, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    iget-object v2, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v3}, Landroid/opengl/GLSurfaceView$EGLConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 320
    iget-object v1, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 323
    iget-object v1, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v1, v2, :cond_3

    .line 324
    :cond_2
    iput-object v5, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 325
    const-string v1, "createContext"

    invoke-direct {p0, v1}, Lcom/asus/livewallpaper/gl/EglHelper;->throwEglException(Ljava/lang/String;)V

    .line 332
    :cond_3
    iput-object v5, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 333
    return-void
.end method

.method public swap()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 397
    iget-object v1, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/asus/livewallpaper/gl/EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 403
    invoke-direct {p0}, Lcom/asus/livewallpaper/gl/EglHelper;->getEglErrorInner()I

    move-result v0

    .line 405
    .local v0, error:I
    packed-switch v0, :pswitch_data_0

    .line 417
    :pswitch_0
    const-string v1, "eglSwapBuffers"

    invoke-direct {p0, v1, v0}, Lcom/asus/livewallpaper/gl/EglHelper;->throwEglException(Ljava/lang/String;I)V

    move v1, v4

    .line 421
    .end local v0           #error:I
    :goto_0
    return v1

    .restart local v0       #error:I
    :pswitch_1
    move v1, v4

    .line 407
    goto :goto_0

    .line 412
    :pswitch_2
    const-string v1, "EglHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eglSwapBuffers returned EGL_BAD_NATIVE_WINDOW. tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    .end local v0           #error:I
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 405
    nop

    :pswitch_data_0
    .packed-switch 0x300b
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
