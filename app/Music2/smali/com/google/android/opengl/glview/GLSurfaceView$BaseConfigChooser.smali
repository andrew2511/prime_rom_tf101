.class abstract Lcom/google/android/opengl/glview/GLSurfaceView$BaseConfigChooser;
.super Ljava/lang/Object;
.source "GLSurfaceView.java"

# interfaces
.implements Lcom/google/android/opengl/glview/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/glview/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseConfigChooser"
.end annotation


# instance fields
.field protected mConfigSpec:[I

.field final synthetic this$0:Lcom/google/android/opengl/glview/GLSurfaceView;


# direct methods
.method public constructor <init>(Lcom/google/android/opengl/glview/GLSurfaceView;[I)V
    .locals 1
    .parameter
    .parameter "configSpec"

    .prologue
    .line 799
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$BaseConfigChooser;->this$0:Lcom/google/android/opengl/glview/GLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 800
    invoke-direct {p0, p2}, Lcom/google/android/opengl/glview/GLSurfaceView$BaseConfigChooser;->filterConfigSpec([I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView$BaseConfigChooser;->mConfigSpec:[I

    .line 801
    return-void
.end method

.method private filterConfigSpec([I)[I
    .locals 6
    .parameter "configSpec"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 835
    iget-object v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$BaseConfigChooser;->this$0:Lcom/google/android/opengl/glview/GLSurfaceView;

    invoke-static {v2}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$200(Lcom/google/android/opengl/glview/GLSurfaceView;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move-object v2, p1

    .line 847
    :goto_0
    return-object v2

    .line 841
    :cond_0
    array-length v0, p1

    .line 842
    .local v0, len:I
    add-int/lit8 v2, v0, 0x2

    new-array v1, v2, [I

    .line 843
    .local v1, newConfigSpec:[I
    sub-int v2, v0, v5

    invoke-static {p1, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 844
    sub-int v2, v0, v5

    const/16 v3, 0x3040

    aput v3, v1, v2

    .line 845
    const/4 v2, 0x4

    aput v2, v1, v0

    .line 846
    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x3038

    aput v3, v1, v2

    move-object v2, v1

    .line 847
    goto :goto_0
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 7
    .parameter "egl"
    .parameter "display"

    .prologue
    const/4 v4, 0x0

    .line 804
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 805
    .local v5, num_config:[I
    iget-object v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$BaseConfigChooser;->mConfigSpec:[I

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 807
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 810
    :cond_0
    aget v4, v5, v4

    .line 812
    .local v4, numConfigs:I
    if-gtz v4, :cond_1

    .line 813
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 817
    :cond_1
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 818
    .local v3, configs:[Ljavax/microedition/khronos/egl/EGLConfig;
    iget-object v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$BaseConfigChooser;->mConfigSpec:[I

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 820
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig#2 failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 822
    :cond_2
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/android/opengl/glview/GLSurfaceView$BaseConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v6

    .line 823
    .local v6, config:Ljavax/microedition/khronos/egl/EGLConfig;
    if-nez v6, :cond_3

    .line 824
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No config chosen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 826
    :cond_3
    return-object v6
.end method

.method abstract chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
.end method
