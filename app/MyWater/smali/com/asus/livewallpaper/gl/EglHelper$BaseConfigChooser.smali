.class abstract Lcom/asus/livewallpaper/gl/EglHelper$BaseConfigChooser;
.super Ljava/lang/Object;
.source "EglHelper.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/livewallpaper/gl/EglHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseConfigChooser"
.end annotation


# instance fields
.field protected mConfigSpec:[I

.field final synthetic this$0:Lcom/asus/livewallpaper/gl/EglHelper;


# direct methods
.method public constructor <init>(Lcom/asus/livewallpaper/gl/EglHelper;[I)V
    .locals 1
    .parameter
    .parameter "configSpec"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/asus/livewallpaper/gl/EglHelper$BaseConfigChooser;->this$0:Lcom/asus/livewallpaper/gl/EglHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-direct {p0, p2}, Lcom/asus/livewallpaper/gl/EglHelper$BaseConfigChooser;->filterConfigSpec([I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/asus/livewallpaper/gl/EglHelper$BaseConfigChooser;->mConfigSpec:[I

    .line 30
    return-void
.end method

.method private filterConfigSpec([I)[I
    .locals 0
    .parameter "configSpec"

    .prologue
    .line 54
    return-object p1
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 6
    .parameter "egl"
    .parameter "display"

    .prologue
    const/4 v4, 0x0

    .line 34
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 35
    .local v5, num_config:[I
    iget-object v2, p0, Lcom/asus/livewallpaper/gl/EglHelper$BaseConfigChooser;->mConfigSpec:[I

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 37
    aget v4, v5, v4

    .line 39
    .local v4, numConfigs:I
    if-gtz v4, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 43
    .local v3, configs:[Ljavax/microedition/khronos/egl/EGLConfig;
    iget-object v2, p0, Lcom/asus/livewallpaper/gl/EglHelper$BaseConfigChooser;->mConfigSpec:[I

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 45
    invoke-virtual {p0, p1, p2, v3}, Lcom/asus/livewallpaper/gl/EglHelper$BaseConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    return-object v0
.end method

.method abstract chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
.end method
