.class public Lcom/google/android/opengl/carousel/PixelFormatConfigChooser;
.super Ljava/lang/Object;
.source "PixelFormatConfigChooser.java"

# interfaces
.implements Lcom/google/android/opengl/glview/GLSurfaceView$EGLConfigChooser;


# instance fields
.field private mDepthSize:I

.field private mPixelFormat:I

.field private mStencilSize:I

.field private mValue:[I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .parameter "format"
    .parameter "depthSize"
    .parameter "stencilSize"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/opengl/carousel/PixelFormatConfigChooser;->mValue:[I

    .line 22
    iput p1, p0, Lcom/google/android/opengl/carousel/PixelFormatConfigChooser;->mPixelFormat:I

    .line 23
    iput p2, p0, Lcom/google/android/opengl/carousel/PixelFormatConfigChooser;->mDepthSize:I

    .line 24
    iput p3, p0, Lcom/google/android/opengl/carousel/PixelFormatConfigChooser;->mStencilSize:I

    .line 25
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
    .line 145
    iget-object v0, p0, Lcom/google/android/opengl/carousel/PixelFormatConfigChooser;->mValue:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/google/android/opengl/carousel/PixelFormatConfigChooser;->mValue:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 148
    :goto_0
    return v0

    :cond_0
    move v0, p5

    goto :goto_0
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 28
    .parameter "egl"
    .parameter "display"

    .prologue
    .line 36
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/carousel/PixelFormatConfigChooser;->mPixelFormat:I

    move v2, v0

    packed-switch v2, :pswitch_data_0

    .line 40
    :pswitch_0
    const/16 v25, 0x8

    .line 41
    .local v25, redSize:I
    const/16 v21, 0x8

    .line 42
    .local v21, greenSize:I
    const/16 v18, 0x8

    .line 43
    .local v18, blueSize:I
    const/16 v15, 0x8

    .line 85
    .local v15, alphaSize:I
    :goto_0
    const/16 v2, 0xb

    new-array v4, v2, [I

    const/4 v2, 0x0

    const/16 v3, 0x3024

    aput v3, v4, v2

    const/4 v2, 0x1

    aput v25, v4, v2

    const/4 v2, 0x2

    const/16 v3, 0x3023

    aput v3, v4, v2

    const/4 v2, 0x3

    aput v21, v4, v2

    const/4 v2, 0x4

    const/16 v3, 0x3022

    aput v3, v4, v2

    const/4 v2, 0x5

    aput v18, v4, v2

    const/4 v2, 0x6

    const/16 v3, 0x3025

    aput v3, v4, v2

    const/4 v2, 0x7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/carousel/PixelFormatConfigChooser;->mDepthSize:I

    move v3, v0

    aput v3, v4, v2

    const/16 v2, 0x8

    const/16 v3, 0x3026

    aput v3, v4, v2

    const/16 v2, 0x9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/carousel/PixelFormatConfigChooser;->mStencilSize:I

    move v3, v0

    aput v3, v4, v2

    const/16 v2, 0xa

    const/16 v3, 0x3038

    aput v3, v4, v2

    .line 91
    .local v4, configSpec:[I
    const/4 v2, 0x1

    new-array v7, v2, [I

    .line 92
    .local v7, num_config:[I
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-interface/range {v2 .. v7}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "eglChooseConfig failed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 46
    .end local v4           #configSpec:[I
    .end local v7           #num_config:[I
    .end local v15           #alphaSize:I
    .end local v18           #blueSize:I
    .end local v21           #greenSize:I
    .end local v25           #redSize:I
    :pswitch_1
    const/16 v25, 0x8

    .line 47
    .restart local v25       #redSize:I
    const/16 v21, 0x8

    .line 48
    .restart local v21       #greenSize:I
    const/16 v18, 0x8

    .line 49
    .restart local v18       #blueSize:I
    const/16 v15, 0x8

    .line 50
    .restart local v15       #alphaSize:I
    goto :goto_0

    .line 53
    .end local v15           #alphaSize:I
    .end local v18           #blueSize:I
    .end local v21           #greenSize:I
    .end local v25           #redSize:I
    :pswitch_2
    const/16 v25, 0x8

    .line 54
    .restart local v25       #redSize:I
    const/16 v21, 0x8

    .line 55
    .restart local v21       #greenSize:I
    const/16 v18, 0x8

    .line 56
    .restart local v18       #blueSize:I
    const/4 v15, 0x0

    .line 57
    .restart local v15       #alphaSize:I
    goto :goto_0

    .line 60
    .end local v15           #alphaSize:I
    .end local v18           #blueSize:I
    .end local v21           #greenSize:I
    .end local v25           #redSize:I
    :pswitch_3
    const/16 v25, 0x5

    .line 61
    .restart local v25       #redSize:I
    const/16 v21, 0x6

    .line 62
    .restart local v21       #greenSize:I
    const/16 v18, 0x5

    .line 63
    .restart local v18       #blueSize:I
    const/4 v15, 0x0

    .line 64
    .restart local v15       #alphaSize:I
    goto :goto_0

    .line 66
    .end local v15           #alphaSize:I
    .end local v18           #blueSize:I
    .end local v21           #greenSize:I
    .end local v25           #redSize:I
    :pswitch_4
    const/16 v25, 0x5

    .line 67
    .restart local v25       #redSize:I
    const/16 v21, 0x5

    .line 68
    .restart local v21       #greenSize:I
    const/16 v18, 0x5

    .line 69
    .restart local v18       #blueSize:I
    const/4 v15, 0x1

    .line 70
    .restart local v15       #alphaSize:I
    goto :goto_0

    .line 72
    .end local v15           #alphaSize:I
    .end local v18           #blueSize:I
    .end local v21           #greenSize:I
    .end local v25           #redSize:I
    :pswitch_5
    const/16 v25, 0x4

    .line 73
    .restart local v25       #redSize:I
    const/16 v21, 0x4

    .line 74
    .restart local v21       #greenSize:I
    const/16 v18, 0x4

    .line 75
    .restart local v18       #blueSize:I
    const/4 v15, 0x4

    .line 76
    .restart local v15       #alphaSize:I
    goto :goto_0

    .line 78
    .end local v15           #alphaSize:I
    .end local v18           #blueSize:I
    .end local v21           #greenSize:I
    .end local v25           #redSize:I
    :pswitch_6
    const/16 v25, 0x3

    .line 79
    .restart local v25       #redSize:I
    const/16 v21, 0x3

    .line 80
    .restart local v21       #greenSize:I
    const/16 v18, 0x2

    .line 81
    .restart local v18       #blueSize:I
    const/4 v15, 0x0

    .restart local v15       #alphaSize:I
    goto/16 :goto_0

    .line 96
    .restart local v4       #configSpec:[I
    .restart local v7       #num_config:[I
    :cond_0
    const/4 v2, 0x0

    aget v6, v7, v2

    .line 98
    .local v6, numConfigs:I
    if-gtz v6, :cond_1

    .line 99
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No configs match configSpec"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 103
    :cond_1
    new-array v5, v6, [Ljavax/microedition/khronos/egl/EGLConfig;

    .local v5, configs:[Ljavax/microedition/khronos/egl/EGLConfig;
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 104
    invoke-interface/range {v2 .. v7}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 106
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "eglChooseConfig#2 failed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 108
    :cond_2
    move-object/from16 v16, v5

    .local v16, arr$:[Ljavax/microedition/khronos/egl/EGLConfig;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    .local v23, len$:I
    const/16 v22, 0x0

    .local v22, i$:I
    :goto_1
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_a

    aget-object v11, v16, v22

    .line 109
    .local v11, config:Ljavax/microedition/khronos/egl/EGLConfig;
    const/16 v12, 0x3025

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-direct/range {v8 .. v13}, Lcom/google/android/opengl/carousel/PixelFormatConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v19

    .line 111
    .local v19, d:I
    const/16 v12, 0x3026

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-direct/range {v8 .. v13}, Lcom/google/android/opengl/carousel/PixelFormatConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v26

    .line 113
    .local v26, s:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/carousel/PixelFormatConfigChooser;->mDepthSize:I

    move v2, v0

    move/from16 v0, v19

    move v1, v2

    if-lt v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/carousel/PixelFormatConfigChooser;->mStencilSize:I

    move v2, v0

    move/from16 v0, v26

    move v1, v2

    if-lt v0, v1, :cond_7

    .line 114
    const/16 v12, 0x3021

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-direct/range {v8 .. v13}, Lcom/google/android/opengl/carousel/PixelFormatConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v14

    .line 116
    .local v14, a:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/carousel/PixelFormatConfigChooser;->mPixelFormat:I

    move v2, v0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    if-eqz v14, :cond_6

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/carousel/PixelFormatConfigChooser;->mPixelFormat:I

    move v2, v0

    const/4 v3, -0x2

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    if-ge v14, v2, :cond_6

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/carousel/PixelFormatConfigChooser;->mPixelFormat:I

    move v2, v0

    const/4 v3, -0x3

    if-ne v2, v3, :cond_5

    const/4 v2, 0x4

    if-ge v14, v2, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/carousel/PixelFormatConfigChooser;->mPixelFormat:I

    move v2, v0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    if-ne v14, v15, :cond_8

    :cond_6
    const/4 v2, 0x1

    move/from16 v27, v2

    .line 122
    .local v27, validAlpha:Z
    :goto_2
    if-nez v27, :cond_9

    .line 108
    .end local v14           #a:I
    .end local v27           #validAlpha:Z
    :cond_7
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 116
    .restart local v14       #a:I
    :cond_8
    const/4 v2, 0x0

    move/from16 v27, v2

    goto :goto_2

    .line 125
    .restart local v27       #validAlpha:Z
    :cond_9
    const/16 v12, 0x3024

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-direct/range {v8 .. v13}, Lcom/google/android/opengl/carousel/PixelFormatConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v24

    .line 127
    .local v24, r:I
    const/16 v12, 0x3023

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-direct/range {v8 .. v13}, Lcom/google/android/opengl/carousel/PixelFormatConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v20

    .line 129
    .local v20, g:I
    const/16 v12, 0x3022

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-direct/range {v8 .. v13}, Lcom/google/android/opengl/carousel/PixelFormatConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v17

    .line 131
    .local v17, b:I
    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 133
    return-object v11

    .line 138
    .end local v11           #config:Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v14           #a:I
    .end local v17           #b:I
    .end local v19           #d:I
    .end local v20           #g:I
    .end local v24           #r:I
    .end local v26           #s:I
    .end local v27           #validAlpha:Z
    :cond_a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No config chosen"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 36
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public setFormat(I)V
    .locals 0
    .parameter "format"

    .prologue
    .line 28
    iput p1, p0, Lcom/google/android/opengl/carousel/PixelFormatConfigChooser;->mPixelFormat:I

    .line 29
    return-void
.end method
