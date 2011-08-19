.class Landroid/view/HardwareRenderer$GlRenderer$ComponentSizeChooser;
.super Landroid/view/HardwareRenderer$GlRenderer$EglConfigChooser;
.source "HardwareRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/HardwareRenderer$GlRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ComponentSizeChooser"
.end annotation


# instance fields
.field private final mAlphaSize:I

.field private final mBlueSize:I

.field private final mDepthSize:I

.field private final mDirtyRegions:Z

.field private final mGreenSize:I

.field private final mRedSize:I

.field private final mStencilSize:I

.field private mValue:[I


# direct methods
.method constructor <init>(IIIIIIIZ)V
    .registers 14
    .parameter "glVersion"
    .parameter "redSize"
    .parameter "greenSize"
    .parameter "blueSize"
    .parameter "alphaSize"
    .parameter "depthSize"
    .parameter "stencilSize"
    .parameter "dirtyRegions"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 742
    const/16 v0, 0xf

    new-array v0, v0, [I

    const/16 v1, 0x3024

    aput v1, v0, v3

    aput p2, v0, v4

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

    const/16 v2, 0x3033

    aput v2, v0, v1

    const/16 v1, 0xd

    if-eqz p8, :cond_64

    const/16 v2, 0x400

    :goto_44
    or-int/lit8 v2, v2, 0x4

    aput v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x3038

    aput v2, v0, v1

    invoke-direct {p0, p1, v0}, Landroid/view/HardwareRenderer$GlRenderer$EglConfigChooser;-><init>(I[I)V

    .line 752
    new-array v0, v4, [I

    iput-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer$ComponentSizeChooser;->mValue:[I

    .line 753
    iput p2, p0, Landroid/view/HardwareRenderer$GlRenderer$ComponentSizeChooser;->mRedSize:I

    .line 754
    iput p3, p0, Landroid/view/HardwareRenderer$GlRenderer$ComponentSizeChooser;->mGreenSize:I

    .line 755
    iput p4, p0, Landroid/view/HardwareRenderer$GlRenderer$ComponentSizeChooser;->mBlueSize:I

    .line 756
    iput p5, p0, Landroid/view/HardwareRenderer$GlRenderer$ComponentSizeChooser;->mAlphaSize:I

    .line 757
    iput p6, p0, Landroid/view/HardwareRenderer$GlRenderer$ComponentSizeChooser;->mDepthSize:I

    .line 758
    iput p7, p0, Landroid/view/HardwareRenderer$GlRenderer$ComponentSizeChooser;->mStencilSize:I

    .line 759
    iput-boolean p8, p0, Landroid/view/HardwareRenderer$GlRenderer$ComponentSizeChooser;->mDirtyRegions:Z

    .line 760
    return-void

    :cond_64
    move v2, v3

    .line 742
    goto :goto_44
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .registers 8
    .parameter "egl"
    .parameter "display"
    .parameter "config"
    .parameter "attribute"
    .parameter "defaultValue"

    .prologue
    .line 791
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer$ComponentSizeChooser;->mValue:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 792
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer$ComponentSizeChooser;->mValue:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 795
    :goto_d
    return v0

    :cond_e
    move v0, p5

    goto :goto_d
.end method


# virtual methods
.method chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .registers 23
    .parameter "egl"
    .parameter "display"
    .parameter "configs"

    .prologue
    .line 764
    move-object/from16 v9, p3

    .local v9, arr$:[Ljavax/microedition/khronos/egl/EGLConfig;
    array-length v15, v9

    .local v15, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_4
    if-ge v14, v15, :cond_b0

    aget-object v5, v9, v14

    .line 765
    .local v5, config:Ljavax/microedition/khronos/egl/EGLConfig;
    const/16 v6, 0x3025

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Landroid/view/HardwareRenderer$GlRenderer$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v12

    .line 766
    .local v12, d:I
    const/16 v6, 0x3026

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Landroid/view/HardwareRenderer$GlRenderer$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v17

    .line 767
    .local v17, s:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/HardwareRenderer$GlRenderer$ComponentSizeChooser;->mDepthSize:I

    move v2, v0

    if-lt v12, v2, :cond_ac

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/HardwareRenderer$GlRenderer$ComponentSizeChooser;->mStencilSize:I

    move v2, v0

    move/from16 v0, v17

    move v1, v2

    if-lt v0, v1, :cond_ac

    .line 768
    const/16 v6, 0x3024

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Landroid/view/HardwareRenderer$GlRenderer$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v16

    .line 769
    .local v16, r:I
    const/16 v6, 0x3023

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Landroid/view/HardwareRenderer$GlRenderer$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v13

    .line 770
    .local v13, g:I
    const/16 v6, 0x3022

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Landroid/view/HardwareRenderer$GlRenderer$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v10

    .line 771
    .local v10, b:I
    const/16 v6, 0x3021

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Landroid/view/HardwareRenderer$GlRenderer$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v8

    .line 773
    .local v8, a:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/HardwareRenderer$GlRenderer$ComponentSizeChooser;->mDirtyRegions:Z

    move v2, v0

    if-eqz v2, :cond_aa

    .line 774
    const/16 v6, 0x3033

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Landroid/view/HardwareRenderer$GlRenderer$ComponentSizeChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v18

    .line 776
    .local v18, surfaceType:I
    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x400

    move v2, v0

    if-eqz v2, :cond_a7

    const/4 v2, 0x1

    move v11, v2

    .line 780
    .end local v18           #surfaceType:I
    .local v11, backBuffer:Z
    :goto_84
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/HardwareRenderer$GlRenderer$ComponentSizeChooser;->mRedSize:I

    move v2, v0

    move/from16 v0, v16

    move v1, v2

    if-lt v0, v1, :cond_ac

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/HardwareRenderer$GlRenderer$ComponentSizeChooser;->mGreenSize:I

    move v2, v0

    if-lt v13, v2, :cond_ac

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/HardwareRenderer$GlRenderer$ComponentSizeChooser;->mBlueSize:I

    move v2, v0

    if-lt v10, v2, :cond_ac

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/HardwareRenderer$GlRenderer$ComponentSizeChooser;->mAlphaSize:I

    move v2, v0

    if-lt v8, v2, :cond_ac

    if-eqz v11, :cond_ac

    move-object v2, v5

    .line 786
    .end local v5           #config:Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v8           #a:I
    .end local v10           #b:I
    .end local v11           #backBuffer:Z
    .end local v12           #d:I
    .end local v13           #g:I
    .end local v16           #r:I
    .end local v17           #s:I
    :goto_a6
    return-object v2

    .line 776
    .restart local v5       #config:Ljavax/microedition/khronos/egl/EGLConfig;
    .restart local v8       #a:I
    .restart local v10       #b:I
    .restart local v12       #d:I
    .restart local v13       #g:I
    .restart local v16       #r:I
    .restart local v17       #s:I
    .restart local v18       #surfaceType:I
    :cond_a7
    const/4 v2, 0x0

    move v11, v2

    goto :goto_84

    .line 778
    .end local v18           #surfaceType:I
    :cond_aa
    const/4 v11, 0x1

    .restart local v11       #backBuffer:Z
    goto :goto_84

    .line 764
    .end local v8           #a:I
    .end local v10           #b:I
    .end local v11           #backBuffer:Z
    .end local v13           #g:I
    .end local v16           #r:I
    :cond_ac
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_4

    .line 786
    .end local v5           #config:Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v12           #d:I
    .end local v17           #s:I
    :cond_b0
    const/4 v2, 0x0

    goto :goto_a6
.end method
