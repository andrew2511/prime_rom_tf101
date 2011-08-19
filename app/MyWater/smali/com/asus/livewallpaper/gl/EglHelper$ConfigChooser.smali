.class Lcom/asus/livewallpaper/gl/EglHelper$ConfigChooser;
.super Lcom/asus/livewallpaper/gl/EglHelper$BaseConfigChooser;
.source "EglHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/livewallpaper/gl/EglHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigChooser"
.end annotation


# instance fields
.field protected mAlphaSize:I

.field protected mBlueSize:I

.field protected mDepthSize:I

.field protected mGreenSize:I

.field protected mRedSize:I

.field protected mStencilSize:I

.field private mValue:[I

.field final synthetic this$0:Lcom/asus/livewallpaper/gl/EglHelper;


# direct methods
.method public constructor <init>(Lcom/asus/livewallpaper/gl/EglHelper;IIIIII)V
    .locals 4
    .parameter
    .parameter "redSize"
    .parameter "greenSize"
    .parameter "blueSize"
    .parameter "alphaSize"
    .parameter "depthSize"
    .parameter "stencilSize"

    .prologue
    const/4 v3, 0x1

    .line 79
    iput-object p1, p0, Lcom/asus/livewallpaper/gl/EglHelper$ConfigChooser;->this$0:Lcom/asus/livewallpaper/gl/EglHelper;

    .line 80
    const/16 v0, 0xd

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3024

    aput v2, v0, v1

    aput p2, v0, v3

    const/4 v1, 0x2

    const/16 v2, 0x3023

    aput v2, v0, v1

    const/4 v1, 0x3

    aput p3, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x3022

    aput v2, v0, v1

    const/4 v1, 0x5

    aput p4, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x3021

    aput v2, v0, v1

    const/4 v1, 0x7

    aput p5, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x3025

    aput v2, v0, v1

    const/16 v1, 0x9

    aput p6, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x3026

    aput v2, v0, v1

    const/16 v1, 0xb

    aput p7, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x3038

    aput v2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/asus/livewallpaper/gl/EglHelper$BaseConfigChooser;-><init>(Lcom/asus/livewallpaper/gl/EglHelper;[I)V

    .line 89
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/asus/livewallpaper/gl/EglHelper$ConfigChooser;->mValue:[I

    .line 90
    iput p2, p0, Lcom/asus/livewallpaper/gl/EglHelper$ConfigChooser;->mRedSize:I

    .line 91
    iput p3, p0, Lcom/asus/livewallpaper/gl/EglHelper$ConfigChooser;->mGreenSize:I

    .line 92
    iput p4, p0, Lcom/asus/livewallpaper/gl/EglHelper$ConfigChooser;->mBlueSize:I

    .line 93
    iput p5, p0, Lcom/asus/livewallpaper/gl/EglHelper$ConfigChooser;->mAlphaSize:I

    .line 94
    iput p6, p0, Lcom/asus/livewallpaper/gl/EglHelper$ConfigChooser;->mDepthSize:I

    .line 95
    iput p7, p0, Lcom/asus/livewallpaper/gl/EglHelper$ConfigChooser;->mStencilSize:I

    .line 96
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
    .line 135
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/EglHelper$ConfigChooser;->mValue:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/EglHelper$ConfigChooser;->mValue:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 138
    :goto_0
    return v0

    :cond_0
    move v0, p5

    goto :goto_0
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 20
    .parameter "egl"
    .parameter "display"
    .parameter "configs"

    .prologue
    .line 102
    const/4 v11, 0x0

    .line 103
    .local v11, closestConfig:Ljavax/microedition/khronos/egl/EGLConfig;
    const/16 v12, 0x3e8

    .line 104
    .local v12, closestDistance:I
    move-object/from16 v9, p3

    .local v9, arr$:[Ljavax/microedition/khronos/egl/EGLConfig;
    move-object v0, v9

    array-length v0, v0

    move/from16 v17, v0

    .local v17, len$:I
    const/16 v16, 0x0

    .local v16, i$:I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    aget-object v5, v9, v16

    .line 105
    .local v5, config:Ljavax/microedition/khronos/egl/EGLConfig;
    const/16 v6, 0x3025

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/asus/livewallpaper/gl/EglHelper$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v13

    .line 107
    .local v13, d:I
    const/16 v6, 0x3026

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/asus/livewallpaper/gl/EglHelper$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v19

    .line 109
    .local v19, s:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/livewallpaper/gl/EglHelper$ConfigChooser;->mDepthSize:I

    move v2, v0

    if-lt v13, v2, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/livewallpaper/gl/EglHelper$ConfigChooser;->mStencilSize:I

    move v2, v0

    move/from16 v0, v19

    move v1, v2

    if-lt v0, v1, :cond_0

    .line 110
    const/16 v6, 0x3024

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/asus/livewallpaper/gl/EglHelper$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v18

    .line 112
    .local v18, r:I
    const/16 v6, 0x3023

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/asus/livewallpaper/gl/EglHelper$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v15

    .line 114
    .local v15, g:I
    const/16 v6, 0x3022

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/asus/livewallpaper/gl/EglHelper$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v10

    .line 116
    .local v10, b:I
    const/16 v6, 0x3021

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/asus/livewallpaper/gl/EglHelper$ConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v8

    .line 118
    .local v8, a:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/livewallpaper/gl/EglHelper$ConfigChooser;->mRedSize:I

    move v2, v0

    sub-int v2, v18, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/livewallpaper/gl/EglHelper$ConfigChooser;->mGreenSize:I

    move v3, v0

    sub-int v3, v15, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/livewallpaper/gl/EglHelper$ConfigChooser;->mBlueSize:I

    move v3, v0

    sub-int v3, v10, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/livewallpaper/gl/EglHelper$ConfigChooser;->mAlphaSize:I

    move v3, v0

    sub-int v3, v8, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int v14, v2, v3

    .line 122
    .local v14, distance:I
    if-ge v14, v12, :cond_0

    .line 123
    move v12, v14

    .line 124
    move-object v11, v5

    .line 104
    .end local v8           #a:I
    .end local v10           #b:I
    .end local v14           #distance:I
    .end local v15           #g:I
    .end local v18           #r:I
    :cond_0
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 128
    .end local v5           #config:Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v13           #d:I
    .end local v19           #s:I
    :cond_1
    return-object v11
.end method
