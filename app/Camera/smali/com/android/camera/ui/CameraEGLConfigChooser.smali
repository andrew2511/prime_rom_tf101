.class Lcom/android/camera/ui/CameraEGLConfigChooser;
.super Ljava/lang/Object;
.source "CameraEGLConfigChooser.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# instance fields
.field private final mConfigSpec:[I

.field private mStencilBits:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/camera/ui/CameraEGLConfigChooser;->mConfigSpec:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x24t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x23t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x22t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x21t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method private chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 8
    .parameter "egl"
    .parameter "display"
    .parameter "configs"

    .prologue
    const/16 v7, 0x3026

    const/4 v6, 0x0

    .line 69
    const/4 v3, 0x0

    .line 70
    .local v3, result:Ljavax/microedition/khronos/egl/EGLConfig;
    const v1, 0x7fffffff

    .line 71
    .local v1, minStencil:I
    const/4 v5, 0x1

    new-array v4, v5, [I

    .line 76
    .local v4, value:[I
    const/4 v0, 0x0

    .local v0, i:I
    array-length v2, p3

    .local v2, n:I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 77
    aget-object v5, p3, v0

    invoke-interface {p1, p2, v5, v7, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 79
    aget v5, v4, v6

    if-nez v5, :cond_1

    .line 76
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_1
    aget v5, v4, v6

    if-ge v5, v1, :cond_0

    .line 81
    aget v1, v4, v6

    .line 82
    aget-object v3, p3, v0

    goto :goto_1

    .line 85
    :cond_2
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "eglGetConfigAttrib error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 89
    :cond_3
    if-nez v3, :cond_4

    aget-object v3, p3, v6

    .line 90
    :cond_4
    invoke-interface {p1, p2, v3, v7, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 92
    aget v5, v4, v6

    iput v5, p0, Lcom/android/camera/ui/CameraEGLConfigChooser;->mStencilBits:I

    .line 93
    return-object v3
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 6
    .parameter "egl"
    .parameter "display"

    .prologue
    const/4 v4, 0x0

    .line 48
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 49
    .local v5, numConfig:[I
    iget-object v2, p0, Lcom/android/camera/ui/CameraEGLConfigChooser;->mConfigSpec:[I

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglChooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    aget v0, v5, v4

    if-gtz v0, :cond_1

    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    aget v0, v5, v4

    new-array v3, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 58
    .local v3, configs:[Ljavax/microedition/khronos/egl/EGLConfig;
    iget-object v2, p0, Lcom/android/camera/ui/CameraEGLConfigChooser;->mConfigSpec:[I

    array-length v4, v3

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 60
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 63
    :cond_2
    invoke-direct {p0, p1, p2, v3}, Lcom/android/camera/ui/CameraEGLConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    return-object v0
.end method

.method public getStencilBits()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/android/camera/ui/CameraEGLConfigChooser;->mStencilBits:I

    return v0
.end method
