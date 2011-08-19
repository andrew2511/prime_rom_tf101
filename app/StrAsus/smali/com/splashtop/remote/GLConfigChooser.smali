.class public Lcom/splashtop/remote/GLConfigChooser;
.super Ljava/lang/Object;
.source "GLConfigChooser.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# static fields
.field private static final DEBUG:Z = false

.field private static EGL_OPENGL_ES2_BIT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "IRISView"

.field private static s_configAttribs2:[I


# instance fields
.field protected mAlphaSize:I

.field protected mBlueSize:I

.field protected mDepthSize:I

.field protected mGreenSize:I

.field protected mRedSize:I

.field protected mStencilSize:I

.field private mValue:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 35
    sput v3, Lcom/splashtop/remote/GLConfigChooser;->EGL_OPENGL_ES2_BIT:I

    .line 36
    const/16 v0, 0x9

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3024

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v3, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x3023

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v3, v0, v1

    const/16 v1, 0x3022

    aput v1, v0, v3

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x3040

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/splashtop/remote/GLConfigChooser;->EGL_OPENGL_ES2_BIT:I

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x3038

    aput v2, v0, v1

    sput-object v0, Lcom/splashtop/remote/GLConfigChooser;->s_configAttribs2:[I

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 1
    .parameter "r"
    .parameter "g"
    .parameter "b"
    .parameter "a"
    .parameter "depth"
    .parameter "stencil"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/splashtop/remote/GLConfigChooser;->mValue:[I

    .line 22
    iput p1, p0, Lcom/splashtop/remote/GLConfigChooser;->mRedSize:I

    .line 23
    iput p2, p0, Lcom/splashtop/remote/GLConfigChooser;->mGreenSize:I

    .line 24
    iput p3, p0, Lcom/splashtop/remote/GLConfigChooser;->mBlueSize:I

    .line 25
    iput p4, p0, Lcom/splashtop/remote/GLConfigChooser;->mAlphaSize:I

    .line 26
    iput p5, p0, Lcom/splashtop/remote/GLConfigChooser;->mDepthSize:I

    .line 27
    iput p6, p0, Lcom/splashtop/remote/GLConfigChooser;->mStencilSize:I

    .line 28
    return-void
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 2
    .parameter "egl"
    .parameter "display"
    .parameter "config"
    .parameter "attribute"
    .parameter "defaultValue"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/splashtop/remote/GLConfigChooser;->mValue:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/splashtop/remote/GLConfigChooser;->mValue:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 132
    :goto_0
    return v0

    :cond_0
    move v0, p5

    goto :goto_0
.end method

.method private printConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 11
    .parameter "egl"
    .parameter "display"
    .parameter "config"

    .prologue
    .line 147
    const/16 v6, 0x21

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    .line 182
    .local v1, attributes:[I
    const/16 v6, 0x21

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "EGL_BUFFER_SIZE"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "EGL_ALPHA_SIZE"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "EGL_BLUE_SIZE"

    aput-object v7, v4, v6

    const/4 v6, 0x3

    const-string v7, "EGL_GREEN_SIZE"

    aput-object v7, v4, v6

    const/4 v6, 0x4

    const-string v7, "EGL_RED_SIZE"

    aput-object v7, v4, v6

    const/4 v6, 0x5

    const-string v7, "EGL_DEPTH_SIZE"

    aput-object v7, v4, v6

    const/4 v6, 0x6

    const-string v7, "EGL_STENCIL_SIZE"

    aput-object v7, v4, v6

    const/4 v6, 0x7

    const-string v7, "EGL_CONFIG_CAVEAT"

    aput-object v7, v4, v6

    const/16 v6, 0x8

    const-string v7, "EGL_CONFIG_ID"

    aput-object v7, v4, v6

    const/16 v6, 0x9

    const-string v7, "EGL_LEVEL"

    aput-object v7, v4, v6

    const/16 v6, 0xa

    const-string v7, "EGL_MAX_PBUFFER_HEIGHT"

    aput-object v7, v4, v6

    const/16 v6, 0xb

    const-string v7, "EGL_MAX_PBUFFER_PIXELS"

    aput-object v7, v4, v6

    const/16 v6, 0xc

    const-string v7, "EGL_MAX_PBUFFER_WIDTH"

    aput-object v7, v4, v6

    const/16 v6, 0xd

    const-string v7, "EGL_NATIVE_RENDERABLE"

    aput-object v7, v4, v6

    const/16 v6, 0xe

    const-string v7, "EGL_NATIVE_VISUAL_ID"

    aput-object v7, v4, v6

    const/16 v6, 0xf

    const-string v7, "EGL_NATIVE_VISUAL_TYPE"

    aput-object v7, v4, v6

    const/16 v6, 0x10

    const-string v7, "EGL_PRESERVED_RESOURCES"

    aput-object v7, v4, v6

    const/16 v6, 0x11

    const-string v7, "EGL_SAMPLES"

    aput-object v7, v4, v6

    const/16 v6, 0x12

    const-string v7, "EGL_SAMPLE_BUFFERS"

    aput-object v7, v4, v6

    const/16 v6, 0x13

    const-string v7, "EGL_SURFACE_TYPE"

    aput-object v7, v4, v6

    const/16 v6, 0x14

    const-string v7, "EGL_TRANSPARENT_TYPE"

    aput-object v7, v4, v6

    const/16 v6, 0x15

    const-string v7, "EGL_TRANSPARENT_RED_VALUE"

    aput-object v7, v4, v6

    const/16 v6, 0x16

    const-string v7, "EGL_TRANSPARENT_GREEN_VALUE"

    aput-object v7, v4, v6

    const/16 v6, 0x17

    const-string v7, "EGL_TRANSPARENT_BLUE_VALUE"

    aput-object v7, v4, v6

    const/16 v6, 0x18

    const-string v7, "EGL_BIND_TO_TEXTURE_RGB"

    aput-object v7, v4, v6

    const/16 v6, 0x19

    const-string v7, "EGL_BIND_TO_TEXTURE_RGBA"

    aput-object v7, v4, v6

    const/16 v6, 0x1a

    const-string v7, "EGL_MIN_SWAP_INTERVAL"

    aput-object v7, v4, v6

    const/16 v6, 0x1b

    const-string v7, "EGL_MAX_SWAP_INTERVAL"

    aput-object v7, v4, v6

    const/16 v6, 0x1c

    const-string v7, "EGL_LUMINANCE_SIZE"

    aput-object v7, v4, v6

    const/16 v6, 0x1d

    const-string v7, "EGL_ALPHA_MASK_SIZE"

    aput-object v7, v4, v6

    const/16 v6, 0x1e

    const-string v7, "EGL_COLOR_BUFFER_TYPE"

    aput-object v7, v4, v6

    const/16 v6, 0x1f

    const-string v7, "EGL_RENDERABLE_TYPE"

    aput-object v7, v4, v6

    const/16 v6, 0x20

    const-string v7, "EGL_CONFORMANT"

    aput-object v7, v4, v6

    .line 217
    .local v4, names:[Ljava/lang/String;
    const/4 v6, 0x1

    new-array v5, v6, [I

    .line 218
    .local v5, value:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v1

    if-ge v2, v6, :cond_2

    .line 219
    aget v0, v1, v2

    .line 220
    .local v0, attribute:I
    aget-object v3, v4, v2

    .line 221
    .local v3, name:Ljava/lang/String;
    invoke-interface {p1, p2, p3, v0, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 222
    const-string v6, "IRISView"

    const-string v7, "  %s: %d\n"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aget v10, v5, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 225
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v6

    const/16 v7, 0x3000

    if-eq v6, v7, :cond_0

    goto :goto_1

    .line 228
    .end local v0           #attribute:I
    .end local v3           #name:Ljava/lang/String;
    :cond_2
    return-void

    .line 147
    :array_0
    .array-data 0x4
        0x20t 0x30t 0x0t 0x0t
        0x21t 0x30t 0x0t 0x0t
        0x22t 0x30t 0x0t 0x0t
        0x23t 0x30t 0x0t 0x0t
        0x24t 0x30t 0x0t 0x0t
        0x25t 0x30t 0x0t 0x0t
        0x26t 0x30t 0x0t 0x0t
        0x27t 0x30t 0x0t 0x0t
        0x28t 0x30t 0x0t 0x0t
        0x29t 0x30t 0x0t 0x0t
        0x2at 0x30t 0x0t 0x0t
        0x2bt 0x30t 0x0t 0x0t
        0x2ct 0x30t 0x0t 0x0t
        0x2dt 0x30t 0x0t 0x0t
        0x2et 0x30t 0x0t 0x0t
        0x2ft 0x30t 0x0t 0x0t
        0x30t 0x30t 0x0t 0x0t
        0x31t 0x30t 0x0t 0x0t
        0x32t 0x30t 0x0t 0x0t
        0x33t 0x30t 0x0t 0x0t
        0x34t 0x30t 0x0t 0x0t
        0x37t 0x30t 0x0t 0x0t
        0x36t 0x30t 0x0t 0x0t
        0x35t 0x30t 0x0t 0x0t
        0x39t 0x30t 0x0t 0x0t
        0x3at 0x30t 0x0t 0x0t
        0x3bt 0x30t 0x0t 0x0t
        0x3ct 0x30t 0x0t 0x0t
        0x3dt 0x30t 0x0t 0x0t
        0x3et 0x30t 0x0t 0x0t
        0x3ft 0x30t 0x0t 0x0t
        0x40t 0x30t 0x0t 0x0t
        0x42t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method private printConfigs(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 8
    .parameter "egl"
    .parameter "display"
    .parameter "configs"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 137
    array-length v1, p3

    .line 138
    .local v1, numConfigs:I
    const-string v2, "IRISView"

    const-string v3, "%d configurations"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 140
    const-string v2, "IRISView"

    const-string v3, "Configuration %d:\n"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    aget-object v2, p3, v0

    invoke-direct {p0, p1, p2, v2}, Lcom/splashtop/remote/GLConfigChooser;->printConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_0
    return-void
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 6
    .parameter "egl"
    .parameter "display"

    .prologue
    const/4 v4, 0x0

    .line 61
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 62
    .local v5, num_config:[I
    sget-object v2, Lcom/splashtop/remote/GLConfigChooser;->s_configAttribs2:[I

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 64
    aget v4, v5, v4

    .line 66
    .local v4, numConfigs:I
    if-gtz v4, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 73
    .local v3, configs:[Ljavax/microedition/khronos/egl/EGLConfig;
    sget-object v2, Lcom/splashtop/remote/GLConfigChooser;->s_configAttribs2:[I

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 80
    invoke-virtual {p0, p1, p2, v3}, Lcom/splashtop/remote/GLConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    return-object v0
.end method

.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 15
    .parameter "egl"
    .parameter "display"
    .parameter "configs"

    .prologue
    .line 94
    move-object/from16 v7, p3

    .local v7, arr$:[Ljavax/microedition/khronos/egl/EGLConfig;
    array-length v12, v7

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_0
    if-ge v11, v12, :cond_2

    aget-object v3, v7, v11

    .line 95
    .local v3, config:Ljavax/microedition/khronos/egl/EGLConfig;
    const/16 v4, 0x3025

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/splashtop/remote/GLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    .line 97
    .local v9, d:I
    const/16 v4, 0x3026

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/splashtop/remote/GLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v14

    .line 101
    .local v14, s:I
    iget v0, p0, Lcom/splashtop/remote/GLConfigChooser;->mDepthSize:I

    if-lt v9, v0, :cond_0

    iget v0, p0, Lcom/splashtop/remote/GLConfigChooser;->mStencilSize:I

    if-ge v14, v0, :cond_1

    .line 94
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 106
    :cond_1
    const/16 v4, 0x3024

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/splashtop/remote/GLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v13

    .line 108
    .local v13, r:I
    const/16 v4, 0x3023

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/splashtop/remote/GLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v10

    .line 110
    .local v10, g:I
    const/16 v4, 0x3022

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/splashtop/remote/GLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v8

    .line 112
    .local v8, b:I
    const/16 v4, 0x3021

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/splashtop/remote/GLConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v6

    .line 115
    .local v6, a:I
    iget v0, p0, Lcom/splashtop/remote/GLConfigChooser;->mRedSize:I

    if-ne v13, v0, :cond_0

    iget v0, p0, Lcom/splashtop/remote/GLConfigChooser;->mGreenSize:I

    if-ne v10, v0, :cond_0

    iget v0, p0, Lcom/splashtop/remote/GLConfigChooser;->mBlueSize:I

    if-ne v8, v0, :cond_0

    iget v0, p0, Lcom/splashtop/remote/GLConfigChooser;->mAlphaSize:I

    if-ne v6, v0, :cond_0

    move-object v0, v3

    .line 123
    .end local v3           #config:Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v6           #a:I
    .end local v8           #b:I
    .end local v9           #d:I
    .end local v10           #g:I
    .end local v13           #r:I
    .end local v14           #s:I
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
