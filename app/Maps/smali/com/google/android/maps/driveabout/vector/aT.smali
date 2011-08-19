.class Lcom/google/android/maps/driveabout/vector/aT;
.super Ljava/lang/Object;


# instance fields
.field a:Ljavax/microedition/khronos/egl/EGL10;

.field b:Ljavax/microedition/khronos/egl/EGLDisplay;

.field c:Ljavax/microedition/khronos/egl/EGLSurface;

.field d:Ljavax/microedition/khronos/egl/EGLConfig;

.field e:Ljavax/microedition/khronos/egl/EGLContext;

.field final synthetic f:Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/aT;->f:Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/vector/aT;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Throwning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public a(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "egl not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglDisplay not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mEglConfig not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aT;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->f:Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->d(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Lcom/google/android/maps/driveabout/vector/aR;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aT;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aT;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/aR;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->f:Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->d(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Lcom/google/android/maps/driveabout/vector/aR;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aT;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aT;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/google/android/maps/driveabout/vector/aR;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_7

    :cond_4
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x300b

    if-ne v0, v1, :cond_6

    const-string v0, "EglHelper"

    const-string v1, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    :cond_5
    :goto_0
    return-object v0

    :cond_6
    const-string v1, "createWindowSurface"

    invoke-direct {p0, v1, v0}, Lcom/google/android/maps/driveabout/vector/aT;->a(Ljava/lang/String;I)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aT;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aT;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aT;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/aT;->e:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "eglMakeCurrent"

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/aT;->a(Ljava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->e:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aT;->f:Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->e(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Lcom/google/android/maps/driveabout/vector/H;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aT;->f:Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->e(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Lcom/google/android/maps/driveabout/vector/H;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/maps/driveabout/vector/H;->a(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    :cond_9
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aT;->f:Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aT;->f:Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_a

    or-int/lit8 v1, v1, 0x1

    :cond_a
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aT;->f:Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_b

    new-instance v2, Lcom/google/android/maps/driveabout/vector/aq;

    invoke-direct {v2}, Lcom/google/android/maps/driveabout/vector/aq;-><init>()V

    :goto_1
    invoke-static {v0, v1, v2}, Landroid/opengl/GLDebugHelper;->wrap(Ljavax/microedition/khronos/opengles/GL;ILjava/io/Writer;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    goto :goto_0

    :cond_b
    move-object v2, v5

    goto :goto_1
.end method

.method public a()V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglGetDisplay failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aT;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglInitialize failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->f:Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->b(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Lcom/google/android/maps/driveabout/vector/ar;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aT;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/ar;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->f:Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Lcom/google/android/maps/driveabout/vector/at;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aT;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aT;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/at;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->e:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->e:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->e:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v1, :cond_3

    :cond_2
    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/aT;->e:Ljavax/microedition/khronos/egl/EGLContext;

    const-string v0, "createContext"

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/aT;->a(Ljava/lang/String;)V

    :cond_3
    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/aT;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    return-void
.end method

.method public b()Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aT;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aT;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v1, "eglSwapBuffers"

    invoke-direct {p0, v1, v0}, Lcom/google/android/maps/driveabout/vector/aT;->a(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_2
    const-string v0, "EglHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglSwapBuffers returned EGL_BAD_NATIVE_WINDOW. tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x300b
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public c()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aT;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->f:Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->d(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Lcom/google/android/maps/driveabout/vector/aR;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aT;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aT;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/aR;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->c:Ljavax/microedition/khronos/egl/EGLSurface;

    :cond_0
    return-void
.end method

.method public d()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->e:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->f:Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->c(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Lcom/google/android/maps/driveabout/vector/at;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aT;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aT;->e:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/at;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/aT;->e:Ljavax/microedition/khronos/egl/EGLContext;

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aT;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/aT;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    :cond_1
    return-void
.end method
