.class abstract Landroid/view/HardwareRenderer$GlRenderer$EglConfigChooser;
.super Ljava/lang/Object;
.source "HardwareRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/HardwareRenderer$GlRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "EglConfigChooser"
.end annotation


# instance fields
.field final mConfigSpec:[I

.field private final mGlVersion:I


# direct methods
.method constructor <init>(I[I)V
    .registers 4
    .parameter "glVersion"
    .parameter "configSpec"

    .prologue
    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 676
    iput p1, p0, Landroid/view/HardwareRenderer$GlRenderer$EglConfigChooser;->mGlVersion:I

    .line 677
    invoke-direct {p0, p2}, Landroid/view/HardwareRenderer$GlRenderer$EglConfigChooser;->filterConfigSpec([I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer$EglConfigChooser;->mConfigSpec:[I

    .line 678
    return-void
.end method

.method private filterConfigSpec([I)[I
    .registers 8
    .parameter "configSpec"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 709
    iget v2, p0, Landroid/view/HardwareRenderer$GlRenderer$EglConfigChooser;->mGlVersion:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_9

    move-object v2, p1

    .line 721
    :goto_8
    return-object v2

    .line 715
    :cond_9
    array-length v0, p1

    .line 716
    .local v0, len:I
    add-int/lit8 v2, v0, 0x2

    new-array v1, v2, [I

    .line 717
    .local v1, newConfigSpec:[I
    sub-int v2, v0, v5

    invoke-static {p1, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 718
    sub-int v2, v0, v5

    const/16 v3, 0x3040

    aput v3, v1, v2

    .line 719
    const/4 v2, 0x4

    aput v2, v1, v0

    .line 720
    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x3038

    aput v3, v1, v2

    move-object v2, v1

    .line 721
    goto :goto_8
.end method


# virtual methods
.method chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .registers 10
    .parameter "egl"
    .parameter "display"

    .prologue
    const/4 v4, 0x0

    .line 681
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 682
    .local v5, index:[I
    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer$EglConfigChooser;->mConfigSpec:[I

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_30

    .line 683
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglChooseConfig failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/view/HardwareRenderer$GlRenderer;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 687
    :cond_30
    aget v4, v5, v4

    .line 688
    .local v4, numConfigs:I
    if-gtz v4, :cond_3c

    .line 689
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 692
    :cond_3c
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 693
    .local v3, configs:[Ljavax/microedition/khronos/egl/EGLConfig;
    iget-object v2, p0, Landroid/view/HardwareRenderer$GlRenderer$EglConfigChooser;->mConfigSpec:[I

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_69

    .line 694
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglChooseConfig failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/view/HardwareRenderer$GlRenderer;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 698
    :cond_69
    invoke-virtual {p0, p1, p2, v3}, Landroid/view/HardwareRenderer$GlRenderer$EglConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v6

    .line 699
    .local v6, config:Ljavax/microedition/khronos/egl/EGLConfig;
    if-nez v6, :cond_77

    .line 700
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No config chosen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 703
    :cond_77
    return-object v6
.end method

.method abstract chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
.end method
