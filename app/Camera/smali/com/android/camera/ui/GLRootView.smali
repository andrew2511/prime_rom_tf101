.class public Lcom/android/camera/ui/GLRootView;
.super Landroid/opengl/GLSurfaceView;
.source "GLRootView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static mTexture2DEnabled:Z

.field private static sPixelDensity:F


# instance fields
.field private final ENABLE_FPS_TEST:Z

.field private mAnimationTime:J

.field private final mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private mContentView:Lcom/android/camera/ui/GLView;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mEglConfigChooser:Lcom/android/camera/ui/CameraEGLConfigChooser;

.field private mFlags:I

.field private mFrameCount:I

.field private mFrameCountingStart:J

.field private final mFreeTransform:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/view/animation/Transformation;",
            ">;"
        }
    .end annotation
.end field

.field private mGL:Ljavax/microedition/khronos/opengles/GL11;

.field private final mIndexBuffer:[B

.field private mIndexPointer:Ljava/nio/ByteBuffer;

.field private mLastAlpha:F

.field private final mMatrixValues:[F

.field private mNinePatchU:[F

.field private mNinePatchV:[F

.field private mNinePatchX:[I

.field private mNinePatchY:[I

.field private final mTransformStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/view/animation/Transformation;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransformation:Landroid/view/animation/Transformation;

.field private final mUvBuffer:[F

.field private mUvPointer:Ljava/nio/ByteBuffer;

.field private final mXyBuffer:[F

.field private mXyPointer:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/high16 v0, -0x4080

    sput v0, Lcom/android/camera/ui/GLRootView;->sPixelDensity:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/GLRootView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v3, 0x20

    const/4 v0, 0x0

    const/4 v2, 0x4

    .line 115
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    iput-boolean v0, p0, Lcom/android/camera/ui/GLRootView;->ENABLE_FPS_TEST:Z

    .line 59
    iput v0, p0, Lcom/android/camera/ui/GLRootView;->mFrameCount:I

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/ui/GLRootView;->mFrameCountingStart:J

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/GLRootView;->mFreeTransform:Ljava/util/Stack;

    .line 84
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/GLRootView;->mTransformation:Landroid/view/animation/Transformation;

    .line 85
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/GLRootView;->mTransformStack:Ljava/util/Stack;

    .line 88
    iget-object v0, p0, Lcom/android/camera/ui/GLRootView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/GLRootView;->mLastAlpha:F

    .line 90
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/ui/GLRootView;->mMatrixValues:[F

    .line 92
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/android/camera/ui/GLRootView;->mUvBuffer:[F

    .line 93
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/android/camera/ui/GLRootView;->mXyBuffer:[F

    .line 94
    const/16 v0, 0x16

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/camera/ui/GLRootView;->mIndexBuffer:[B

    .line 96
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/camera/ui/GLRootView;->mNinePatchX:[I

    .line 97
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/camera/ui/GLRootView;->mNinePatchY:[I

    .line 98
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/camera/ui/GLRootView;->mNinePatchU:[F

    .line 99
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/camera/ui/GLRootView;->mNinePatchV:[F

    .line 105
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/GLRootView;->mFlags:I

    .line 108
    new-instance v0, Lcom/android/camera/ui/CameraEGLConfigChooser;

    invoke-direct {v0}, Lcom/android/camera/ui/CameraEGLConfigChooser;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/GLRootView;->mEglConfigChooser:Lcom/android/camera/ui/CameraEGLConfigChooser;

    .line 116
    invoke-direct {p0}, Lcom/android/camera/ui/GLRootView;->initialize()V

    .line 117
    return-void
.end method

.method private static allocateDirectNativeOrderBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2
    .parameter "size"

    .prologue
    .line 180
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized dpToPixel(Landroid/content/Context;F)F
    .locals 4
    .parameter "context"
    .parameter "dp"

    .prologue
    .line 132
    const-class v1, Lcom/android/camera/ui/GLRootView;

    monitor-enter v1

    :try_start_0
    sget v2, Lcom/android/camera/ui/GLRootView;->sPixelDensity:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 133
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 134
    .local v0, metrics:Landroid/util/DisplayMetrics;
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 136
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lcom/android/camera/ui/GLRootView;->sPixelDensity:F

    .line 138
    .end local v0           #metrics:Landroid/util/DisplayMetrics;
    :cond_0
    sget v2, Lcom/android/camera/ui/GLRootView;->sPixelDensity:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-float/2addr v2, p1

    monitor-exit v1

    return v2

    .line 132
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public static dpToPixel(Landroid/content/Context;I)I
    .locals 2
    .parameter "context"
    .parameter "dp"

    .prologue
    .line 142
    int-to-float v0, p1

    invoke-static {p0, v0}, Lcom/android/camera/ui/GLRootView;->dpToPixel(Landroid/content/Context;F)F

    move-result v0

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private drawMesh([I[I[F[FII)V
    .locals 22
    .parameter "x"
    .parameter "y"
    .parameter "u"
    .parameter "v"
    .parameter "nx"
    .parameter "ny"

    .prologue
    .line 484
    const/4 v11, 0x0

    .line 485
    .local v11, pntCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLRootView;->mXyBuffer:[F

    move-object/from16 v16, v0

    .line 486
    .local v16, xy:[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLRootView;->mUvBuffer:[F

    move-object v14, v0

    .line 487
    .local v14, uv:[F
    const/4 v10, 0x0

    .local v10, j:I
    :goto_0
    move v0, v10

    move/from16 v1, p6

    if-ge v0, v1, :cond_1

    .line 488
    const/4 v6, 0x0

    .local v6, i:I
    move v12, v11

    .end local v11           #pntCount:I
    .local v12, pntCount:I
    :goto_1
    move v0, v6

    move/from16 v1, p5

    if-ge v0, v1, :cond_0

    .line 489
    add-int/lit8 v11, v12, 0x1

    .end local v12           #pntCount:I
    .restart local v11       #pntCount:I
    shl-int/lit8 v15, v12, 0x1

    .line 490
    .local v15, xIndex:I
    add-int/lit8 v17, v15, 0x1

    .line 491
    .local v17, yIndex:I
    aget v18, p1, v6

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v15

    .line 492
    aget v18, p2, v10

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    .line 493
    aget v18, p3, v6

    aput v18, v14, v15

    .line 494
    aget v18, p4, v10

    aput v18, v14, v17

    .line 488
    add-int/lit8 v6, v6, 0x1

    move v12, v11

    .end local v11           #pntCount:I
    .restart local v12       #pntCount:I
    goto :goto_1

    .line 487
    .end local v15           #xIndex:I
    .end local v17           #yIndex:I
    :cond_0
    add-int/lit8 v10, v10, 0x1

    move v11, v12

    .end local v12           #pntCount:I
    .restart local v11       #pntCount:I
    goto :goto_0

    .line 497
    .end local v6           #i:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLRootView;->mUvPointer:Ljava/nio/ByteBuffer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v18

    const/16 v19, 0x0

    shl-int/lit8 v20, v11, 0x1

    move-object/from16 v0, v18

    move-object v1, v14

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLRootView;->mXyPointer:Ljava/nio/ByteBuffer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v18

    const/16 v19, 0x0

    shl-int/lit8 v20, v11, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 500
    const/4 v7, 0x1

    .line 501
    .local v7, idxCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLRootView;->mIndexBuffer:[B

    move-object v9, v0

    .line 502
    .local v9, index:[B
    const/4 v6, 0x0

    .restart local v6       #i:I
    const/16 v18, 0x1

    sub-int v18, p6, v18

    mul-int v5, p5, v18

    .line 504
    .local v5, bound:I
    :goto_2
    add-int/lit8 v7, v7, -0x1

    .line 505
    const/4 v10, 0x0

    move v8, v7

    .end local v7           #idxCount:I
    .local v8, idxCount:I
    :goto_3
    move v0, v10

    move/from16 v1, p5

    if-ge v0, v1, :cond_2

    .line 506
    add-int/lit8 v7, v8, 0x1

    .end local v8           #idxCount:I
    .restart local v7       #idxCount:I
    move v0, v6

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v9, v8

    .line 507
    add-int/lit8 v8, v7, 0x1

    .end local v7           #idxCount:I
    .restart local v8       #idxCount:I
    add-int v18, v6, p5

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v9, v7

    .line 505
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 509
    :cond_2
    if-lt v6, v5, :cond_3

    move v7, v8

    .line 520
    .end local v8           #idxCount:I
    .restart local v7       #idxCount:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLRootView;->mIndexPointer:Ljava/nio/ByteBuffer;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object v1, v9

    move/from16 v2, v19

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    move-object/from16 v18, v0

    const/16 v19, 0x5

    const/16 v20, 0x1401

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLRootView;->mIndexPointer:Ljava/nio/ByteBuffer;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move v2, v7

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 524
    return-void

    .line 512
    .end local v7           #idxCount:I
    .restart local v8       #idxCount:I
    :cond_3
    add-int v18, v6, v6

    add-int v18, v18, p5

    const/16 v19, 0x1

    sub-int v13, v18, v19

    .line 513
    .local v13, sum:I
    add-int/lit8 v7, v8, -0x1

    .line 514
    .end local v8           #idxCount:I
    .restart local v7       #idxCount:I
    const/4 v10, 0x0

    move v8, v7

    .end local v7           #idxCount:I
    .restart local v8       #idxCount:I
    :goto_5
    move v0, v10

    move/from16 v1, p5

    if-ge v0, v1, :cond_4

    .line 515
    add-int/lit8 v7, v8, 0x1

    .end local v8           #idxCount:I
    .restart local v7       #idxCount:I
    sub-int v18, v13, v6

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v9, v8

    .line 516
    add-int/lit8 v8, v7, 0x1

    .end local v7           #idxCount:I
    .restart local v8       #idxCount:I
    sub-int v18, v13, v6

    add-int v18, v18, p5

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v9, v7

    .line 514
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 518
    :cond_4
    if-lt v6, v5, :cond_5

    move v7, v8

    .end local v8           #idxCount:I
    .restart local v7       #idxCount:I
    goto :goto_4

    .end local v7           #idxCount:I
    .restart local v8       #idxCount:I
    :cond_5
    move v7, v8

    .line 519
    .end local v8           #idxCount:I
    .restart local v7       #idxCount:I
    goto/16 :goto_2
.end method

.method private drawRect(IIII[F)V
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "matrix"

    .prologue
    const/4 v7, 0x0

    .line 341
    iget-object v6, p0, Lcom/android/camera/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 342
    .local v6, gl:Ljavax/microedition/khronos/opengles/GL11;
    invoke-interface {v6}, Ljavax/microedition/khronos/opengles/GL11;->glPushMatrix()V

    .line 343
    invoke-static {p5}, Lcom/android/camera/ui/GLRootView;->toGLMatrix([F)[F

    move-result-object v0

    invoke-interface {v6, v0, v7}, Ljavax/microedition/khronos/opengles/GL11;->glMultMatrixf([FI)V

    .line 344
    int-to-float v0, p1

    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    iget-object v4, p0, Lcom/android/camera/ui/GLRootView;->mXyBuffer:[F

    iget-object v5, p0, Lcom/android/camera/ui/GLRootView;->mXyPointer:Ljava/nio/ByteBuffer;

    invoke-static/range {v0 .. v5}, Lcom/android/camera/ui/GLRootView;->putRectangle(FFFF[FLjava/nio/ByteBuffer;)V

    .line 345
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-interface {v6, v0, v7, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    .line 346
    invoke-interface {v6}, Ljavax/microedition/khronos/opengles/GL11;->glPopMatrix()V

    .line 347
    return-void
.end method

.method private initialize()V
    .locals 3

    .prologue
    .line 184
    iget v1, p0, Lcom/android/camera/ui/GLRootView;->mFlags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/camera/ui/GLRootView;->mFlags:I

    .line 185
    iget-object v1, p0, Lcom/android/camera/ui/GLRootView;->mEglConfigChooser:Lcom/android/camera/ui/CameraEGLConfigChooser;

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/GLRootView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 186
    invoke-virtual {p0}, Lcom/android/camera/ui/GLRootView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v2, -0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 187
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/GLRootView;->setZOrderOnTop(Z)V

    .line 189
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/GLRootView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 191
    const/16 v0, 0x80

    .line 192
    .local v0, size:I
    invoke-static {v0}, Lcom/android/camera/ui/GLRootView;->allocateDirectNativeOrderBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/GLRootView;->mXyPointer:Ljava/nio/ByteBuffer;

    .line 193
    invoke-static {v0}, Lcom/android/camera/ui/GLRootView;->allocateDirectNativeOrderBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/GLRootView;->mUvPointer:Ljava/nio/ByteBuffer;

    .line 194
    const/16 v1, 0x16

    invoke-static {v1}, Lcom/android/camera/ui/GLRootView;->allocateDirectNativeOrderBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/GLRootView;->mIndexPointer:Ljava/nio/ByteBuffer;

    .line 195
    return-void
.end method

.method private static isMatrixRotatedOrFlipped([F)Z
    .locals 4
    .parameter "matrix"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 629
    aget v0, p0, v3

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x3

    aget v0, p0, v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    aget v0, p0, v2

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x4

    aget v0, p0, v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    move v0, v3

    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private declared-synchronized layoutContentPane()V
    .locals 5

    .prologue
    .line 226
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/android/camera/ui/GLRootView;->mFlags:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/android/camera/ui/GLRootView;->mFlags:I

    .line 227
    invoke-virtual {p0}, Lcom/android/camera/ui/GLRootView;->getWidth()I

    move-result v1

    .line 228
    .local v1, width:I
    invoke-virtual {p0}, Lcom/android/camera/ui/GLRootView;->getHeight()I

    move-result v0

    .line 229
    .local v0, height:I
    const-string v2, "GLRootView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "layout content pane "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v2, p0, Lcom/android/camera/ui/GLRootView;->mContentView:Lcom/android/camera/ui/GLView;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 231
    iget-object v2, p0, Lcom/android/camera/ui/GLRootView;->mContentView:Lcom/android/camera/ui/GLView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/android/camera/ui/GLView;->layout(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :cond_0
    monitor-exit p0

    return-void

    .line 226
    .end local v0           #height:I
    .end local v1           #width:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private mapPoints(Landroid/graphics/Matrix;IIII)[F
    .locals 6
    .parameter "matrix"
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    const/4 v2, 0x0

    .line 527
    iget-object v1, p0, Lcom/android/camera/ui/GLRootView;->mXyBuffer:[F

    .line 528
    .local v1, point:[F
    int-to-float v0, p2

    aput v0, v1, v2

    const/4 v0, 0x1

    int-to-float v3, p3

    aput v3, v1, v0

    const/4 v0, 0x2

    int-to-float v3, p4

    aput v3, v1, v0

    const/4 v0, 0x3

    int-to-float v3, p5

    aput v3, v1, v0

    .line 529
    const/4 v5, 0x4

    move-object v0, p1

    move-object v3, v1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->mapPoints([FI[FII)V

    .line 530
    return-object v1
.end method

.method private static putRectangle(FFFF[FLjava/nio/ByteBuffer;)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "buffer"
    .parameter "pointer"

    .prologue
    const/4 v2, 0x0

    .line 328
    aput p0, p4, v2

    .line 329
    const/4 v0, 0x1

    aput p1, p4, v0

    .line 330
    const/4 v0, 0x2

    add-float v1, p0, p2

    aput v1, p4, v0

    .line 331
    const/4 v0, 0x3

    aput p1, p4, v0

    .line 332
    const/4 v0, 0x4

    aput p0, p4, v0

    .line 333
    const/4 v0, 0x5

    add-float v1, p1, p3

    aput v1, p4, v0

    .line 334
    const/4 v0, 0x6

    add-float v1, p0, p2

    aput v1, p4, v0

    .line 335
    const/4 v0, 0x7

    add-float v1, p1, p3

    aput v1, p4, v0

    .line 336
    invoke-virtual {p5}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, p4, v2, v1}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 337
    return-void
.end method

.method private setAlphaValue(F)V
    .locals 4
    .parameter "alpha"

    .prologue
    const/16 v3, 0x2300

    const/16 v2, 0x2200

    .line 306
    iget v1, p0, Lcom/android/camera/ui/GLRootView;->mLastAlpha:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    .line 318
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 309
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    iput p1, p0, Lcom/android/camera/ui/GLRootView;->mLastAlpha:F

    .line 310
    const v1, 0x3f733333

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    .line 311
    const v1, 0x45f00800

    invoke-interface {v0, v3, v2, v1}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    goto :goto_0

    .line 314
    :cond_1
    const/high16 v1, 0x4604

    invoke-interface {v0, v3, v2, v1}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 316
    invoke-interface {v0, p1, p1, p1, p1}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    goto :goto_0
.end method

.method private stretch([I[F[III)I
    .locals 15
    .parameter "x"
    .parameter "u"
    .parameter "div"
    .parameter "source"
    .parameter "target"

    .prologue
    .line 418
    invoke-static/range {p4 .. p4}, Lcom/android/camera/Util;->nextPowerOf2(I)I

    move-result v11

    .line 419
    .local v11, textureSize:I
    move/from16 v0, p4

    int-to-float v0, v0

    move v12, v0

    const/high16 v13, 0x3f00

    sub-float/2addr v12, v13

    int-to-float v13, v11

    div-float v10, v12, v13

    .line 421
    .local v10, textureBound:F
    const/4 v9, 0x0

    .line 422
    .local v9, stretch:I
    const/4 v1, 0x0

    .local v1, i:I
    move-object/from16 v0, p3

    array-length v0, v0

    move v5, v0

    .local v5, n:I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 423
    add-int/lit8 v12, v1, 0x1

    aget v12, p3, v12

    aget v13, p3, v1

    sub-int/2addr v12, v13

    add-int/2addr v9, v12

    .line 422
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 426
    :cond_0
    sub-int v12, p5, p4

    add-int/2addr v12, v9

    int-to-float v8, v12

    .line 428
    .local v8, remaining:F
    const/4 v4, 0x0

    .line 429
    .local v4, lastX:I
    const/4 v3, 0x0

    .line 431
    .local v3, lastU:I
    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, p1, v12

    .line 432
    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, p2, v12

    .line 433
    const/4 v1, 0x0

    move-object/from16 v0, p3

    array-length v0, v0

    move v5, v0

    :goto_1
    if-ge v1, v5, :cond_1

    .line 435
    add-int/lit8 v12, v1, 0x1

    aget v13, p3, v1

    sub-int/2addr v13, v3

    add-int/2addr v13, v4

    aput v13, p1, v12

    .line 436
    add-int/lit8 v12, v1, 0x1

    aget v13, p3, v1

    int-to-float v13, v13

    int-to-float v14, v11

    div-float/2addr v13, v14

    invoke-static {v13, v10}, Ljava/lang/Math;->min(FF)F

    move-result v13

    aput v13, p2, v12

    .line 439
    add-int/lit8 v12, v1, 0x1

    aget v12, p3, v12

    aget v13, p3, v1

    sub-int/2addr v12, v13

    int-to-float v6, v12

    .line 440
    .local v6, partU:F
    mul-float v12, v8, v6

    int-to-float v13, v9

    div-float/2addr v12, v13

    const/high16 v13, 0x3f00

    add-float/2addr v12, v13

    float-to-int v7, v12

    .line 441
    .local v7, partX:I
    int-to-float v12, v7

    sub-float/2addr v8, v12

    .line 442
    int-to-float v12, v9

    sub-float/2addr v12, v6

    float-to-int v9, v12

    .line 444
    add-int/lit8 v12, v1, 0x1

    aget v12, p1, v12

    add-int v4, v12, v7

    .line 445
    add-int/lit8 v12, v1, 0x1

    aget v3, p3, v12

    .line 446
    add-int/lit8 v12, v1, 0x2

    aput v4, p1, v12

    .line 447
    add-int/lit8 v12, v1, 0x2

    int-to-float v13, v3

    int-to-float v14, v11

    div-float/2addr v13, v14

    invoke-static {v13, v10}, Ljava/lang/Math;->min(FF)F

    move-result v13

    aput v13, p2, v12

    .line 433
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 450
    .end local v6           #partU:F
    .end local v7           #partX:I
    :cond_1
    move-object/from16 v0, p3

    array-length v0, v0

    move v12, v0

    add-int/lit8 v12, v12, 0x1

    aput p5, p1, v12

    .line 451
    move-object/from16 v0, p3

    array-length v0, v0

    move v12, v0

    add-int/lit8 v12, v12, 0x1

    aput v10, p2, v12

    .line 454
    const/4 v2, 0x0

    .line 455
    .local v2, last:I
    const/4 v1, 0x1

    move-object/from16 v0, p3

    array-length v0, v0

    move v12, v0

    add-int/lit8 v5, v12, 0x2

    :goto_2
    if-ge v1, v5, :cond_3

    .line 456
    aget v12, p1, v2

    aget v13, p1, v1

    if-ne v12, v13, :cond_2

    .line 455
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 457
    :cond_2
    add-int/lit8 v2, v2, 0x1

    aget v12, p1, v1

    aput v12, p1, v2

    .line 458
    aget v12, p2, v1

    aput v12, p2, v2

    goto :goto_3

    .line 460
    :cond_3
    add-int/lit8 v12, v2, 0x1

    return v12
.end method

.method private static toGLMatrix([F)[F
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 561
    const/16 v0, 0xf

    const/16 v1, 0x8

    aget v1, p0, v1

    aput v1, p0, v0

    const/16 v0, 0xd

    aget v1, p0, v6

    aput v1, p0, v0

    aget v0, p0, v5

    aput v0, p0, v6

    aget v0, p0, v2

    aput v0, p0, v5

    .line 562
    const/16 v0, 0xc

    aget v1, p0, v4

    aput v1, p0, v0

    aget v0, p0, v3

    aput v0, p0, v2

    const/4 v0, 0x6

    aget v0, p0, v0

    aput v0, p0, v3

    .line 563
    const/4 v0, 0x6

    const/16 v1, 0x8

    const/16 v2, 0x9

    const/4 v3, 0x0

    aput v3, p0, v2

    aput v3, p0, v1

    aput v3, p0, v0

    aput v3, p0, v4

    .line 564
    const/16 v0, 0xa

    const/high16 v1, 0x3f80

    aput v1, p0, v0

    .line 565
    return-object p0
.end method


# virtual methods
.method public clearClip()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 557
    iget-object v0, p0, Lcom/android/camera/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p0}, Lcom/android/camera/ui/GLRootView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/camera/ui/GLRootView;->getHeight()I

    move-result v2

    invoke-interface {v0, v3, v3, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glScissor(IIII)V

    .line 558
    return-void
.end method

.method public clipRect(IIII)V
    .locals 11
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 534
    iget-object v0, p0, Lcom/android/camera/ui/GLRootView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    add-int v3, p2, p4

    add-int v4, p1, p3

    move-object v0, p0

    move v2, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/GLRootView;->mapPoints(Landroid/graphics/Matrix;IIII)[F

    move-result-object v6

    .line 539
    .local v6, point:[F
    aget v0, v6, v7

    aget v1, v6, v9

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 540
    aget v0, v6, v9

    float-to-int p1, v0

    .line 541
    aget v0, v6, v7

    float-to-int v0, v0

    sub-int p3, v0, p1

    .line 546
    :goto_0
    aget v0, v6, v8

    aget v1, v6, v10

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 547
    aget v0, v6, v10

    float-to-int p2, v0

    .line 548
    aget v0, v6, v8

    float-to-int v0, v0

    sub-int p4, v0, p2

    .line 553
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glScissor(IIII)V

    .line 554
    return-void

    .line 543
    :cond_0
    aget v0, v6, v7

    float-to-int p1, v0

    .line 544
    aget v0, v6, v9

    float-to-int v0, v0

    sub-int p3, v0, p1

    goto :goto_0

    .line 550
    :cond_1
    aget v0, v6, v8

    float-to-int p2, v0

    .line 551
    aget v0, v6, v10

    float-to-int v0, v0

    sub-int p4, v0, p2

    goto :goto_1
.end method

.method public copyTexture2D(Lcom/android/camera/ui/RawTexture;IIII)V
    .locals 17
    .parameter "texture"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/ui/GLOutOfMemoryException;
        }
    .end annotation

    .prologue
    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLRootView;->mTransformation:Landroid/view/animation/Transformation;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    .line 685
    .local v4, matrix:Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLRootView;->mMatrixValues:[F

    move-object v3, v0

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLRootView;->mMatrixValues:[F

    move-object v3, v0

    invoke-static {v3}, Lcom/android/camera/ui/GLRootView;->isMatrixRotatedOrFlipped([F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 688
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "cannot support rotated matrix"

    .end local v4           #matrix:Landroid/graphics/Matrix;
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 690
    .restart local v4       #matrix:Landroid/graphics/Matrix;
    :cond_0
    add-int v6, p3, p5

    add-int v7, p2, p4

    move-object/from16 v3, p0

    move/from16 v5, p2

    move/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/ui/GLRootView;->mapPoints(Landroid/graphics/Matrix;IIII)[F

    move-result-object v16

    .line 691
    .local v16, points:[F
    const/4 v3, 0x0

    aget v3, v16, v3

    move v0, v3

    float-to-int v0, v0

    move/from16 p2, v0

    .line 692
    const/4 v3, 0x1

    aget v3, v16, v3

    move v0, v3

    float-to-int v0, v0

    move/from16 p3, v0

    .line 693
    const/4 v3, 0x2

    aget v3, v16, v3

    float-to-int v3, v3

    sub-int p4, v3, p2

    .line 694
    const/4 v3, 0x3

    aget v3, v16, v3

    float-to-int v3, v3

    sub-int p5, v3, p3

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    move-object v5, v0

    .line 697
    .local v5, gl:Ljavax/microedition/khronos/opengles/GL11;
    invoke-static/range {p4 .. p4}, Lcom/android/camera/Util;->nextPowerOf2(I)I

    move-result v11

    .line 698
    .local v11, newWidth:I
    invoke-static/range {p5 .. p5}, Lcom/android/camera/Util;->nextPowerOf2(I)I

    move-result v12

    .line 699
    .local v12, newHeight:I
    const/4 v15, 0x0

    .line 701
    .local v15, glError:I
    const/16 v3, 0xde1

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/ui/RawTexture;->getId()I

    move-result v4

    .end local v4           #matrix:Landroid/graphics/Matrix;
    invoke-interface {v5, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 703
    const/4 v3, 0x4

    new-array v14, v3, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v14, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v14, v3

    const/4 v3, 0x2

    aput p4, v14, v3

    const/4 v3, 0x3

    aput p5, v14, v3

    .line 704
    .local v14, cropRect:[I
    const/16 v3, 0xde1

    const v4, 0x8b9d

    const/4 v6, 0x0

    invoke-interface {v5, v3, v4, v14, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(II[II)V

    .line 706
    const/16 v3, 0xde1

    const/16 v4, 0x2802

    const v6, 0x812f

    invoke-interface {v5, v3, v4, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 708
    const/16 v3, 0xde1

    const/16 v4, 0x2803

    const v6, 0x812f

    invoke-interface {v5, v3, v4, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 710
    const/16 v3, 0xde1

    const/16 v4, 0x2801

    const v6, 0x46180400

    invoke-interface {v5, v3, v4, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 712
    const/16 v3, 0xde1

    const/16 v4, 0x2800

    const v6, 0x46180400

    invoke-interface {v5, v3, v4, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 714
    const/16 v6, 0xde1

    const/4 v7, 0x0

    const/16 v8, 0x1908

    const/4 v13, 0x0

    move/from16 v9, p2

    move/from16 v10, p3

    invoke-interface/range {v5 .. v13}, Ljavax/microedition/khronos/opengles/GL11;->glCopyTexImage2D(IIIIIIII)V

    .line 716
    invoke-interface {v5}, Ljavax/microedition/khronos/opengles/GL11;->glGetError()I

    move-result v15

    .line 718
    const/16 v3, 0x505

    if-ne v15, v3, :cond_1

    .line 719
    new-instance v3, Lcom/android/camera/ui/GLOutOfMemoryException;

    invoke-direct {v3}, Lcom/android/camera/ui/GLOutOfMemoryException;-><init>()V

    throw v3

    .line 722
    :cond_1
    if-eqz v15, :cond_2

    .line 723
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Texture copy fail, glError "

    .end local v5           #gl:Ljavax/microedition/khronos/opengles/GL11;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 727
    .restart local v5       #gl:Ljavax/microedition/khronos/opengles/GL11;
    :cond_2
    move-object/from16 v0, p1

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/RawTexture;->setSize(II)V

    .line 728
    move-object/from16 v0, p1

    move v1, v11

    move v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/RawTexture;->setTextureSize(II)V

    .line 729
    return-void
.end method

.method public currentAnimationTimeMillis()J
    .locals 2

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/android/camera/ui/GLRootView;->mAnimationTime:J

    return-wide v0
.end method

.method public declared-synchronized dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 667
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ui/GLRootView;->mContentView:Lcom/android/camera/ui/GLView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/GLRootView;->mContentView:Lcom/android/camera/ui/GLView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public drawColor(IIIII)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "color"

    .prologue
    .line 569
    iget-object v2, p0, Lcom/android/camera/ui/GLRootView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v0

    .line 570
    .local v0, alpha:F
    iget-object v1, p0, Lcom/android/camera/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 571
    .local v1, gl:Ljavax/microedition/khronos/opengles/GL11;
    sget-boolean v2, Lcom/android/camera/ui/GLRootView;->mTexture2DEnabled:Z

    if-eqz v2, :cond_0

    .line 574
    const/high16 v2, -0x4080

    iput v2, p0, Lcom/android/camera/ui/GLRootView;->mLastAlpha:F

    .line 575
    const/16 v2, 0xde1

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 576
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/camera/ui/GLRootView;->mTexture2DEnabled:Z

    .line 578
    :cond_0
    const/high16 v2, 0x4380

    div-float/2addr v0, v2

    .line 579
    invoke-static {p5}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {p5}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {p5}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    invoke-static {p5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    .line 581
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/camera/ui/GLRootView;->drawRect(IIII)V

    .line 582
    return-void
.end method

.method public drawNinePatch(Lcom/android/camera/ui/NinePatchTexture;IIII)V
    .locals 20
    .parameter "tex"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 352
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/ui/NinePatchTexture;->getNinePatchChunk()Lcom/android/camera/ui/NinePatchChunk;

    move-result-object v14

    .line 357
    .local v14, chunk:Lcom/android/camera/ui/NinePatchChunk;
    iget-object v4, v14, Lcom/android/camera/ui/NinePatchChunk;->mDivX:[I

    array-length v4, v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    iget-object v4, v14, Lcom/android/camera/ui/NinePatchChunk;->mDivY:[I

    array-length v4, v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    .line 358
    :cond_0
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "unsupported nine patch"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 360
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    move-object v4, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/NinePatchTexture;->bind(Lcom/android/camera/ui/GLRootView;Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 361
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot bind"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 363
    :cond_2
    if-lez p4, :cond_3

    if-gtz p5, :cond_4

    .line 382
    :cond_3
    :goto_0
    return-void

    .line 365
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLRootView;->mNinePatchX:[I

    move-object v5, v0

    .line 366
    .local v5, divX:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLRootView;->mNinePatchY:[I

    move-object/from16 v16, v0

    .line 367
    .local v16, divY:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLRootView;->mNinePatchU:[F

    move-object v6, v0

    .line 368
    .local v6, divU:[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLRootView;->mNinePatchV:[F

    move-object v15, v0

    .line 370
    .local v15, divV:[F
    iget-object v7, v14, Lcom/android/camera/ui/NinePatchChunk;->mDivX:[I

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/ui/NinePatchTexture;->getWidth()I

    move-result v8

    move-object/from16 v4, p0

    move/from16 v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/ui/GLRootView;->stretch([I[F[III)I

    move-result v19

    .line 371
    .local v19, nx:I
    iget-object v10, v14, Lcom/android/camera/ui/NinePatchChunk;->mDivY:[I

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/ui/NinePatchTexture;->getHeight()I

    move-result v11

    move-object/from16 v7, p0

    move-object/from16 v8, v16

    move-object v9, v15

    move/from16 v12, p5

    invoke-direct/range {v7 .. v12}, Lcom/android/camera/ui/GLRootView;->stretch([I[F[III)I

    move-result v13

    .line 373
    .local v13, ny:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLRootView;->mTransformation:Landroid/view/animation/Transformation;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v4

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/android/camera/ui/GLRootView;->setAlphaValue(F)V

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLRootView;->mTransformation:Landroid/view/animation/Transformation;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v18

    .line 375
    .local v18, matrix:Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLRootView;->mMatrixValues:[F

    move-object v4, v0

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    move-object/from16 v17, v0

    .line 377
    .local v17, gl:Ljavax/microedition/khronos/opengles/GL11;
    invoke-interface/range {v17 .. v17}, Ljavax/microedition/khronos/opengles/GL11;->glPushMatrix()V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ui/GLRootView;->mMatrixValues:[F

    move-object v4, v0

    invoke-static {v4}, Lcom/android/camera/ui/GLRootView;->toGLMatrix([F)[F

    move-result-object v4

    const/4 v7, 0x0

    move-object/from16 v0, v17

    move-object v1, v4

    move v2, v7

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glMultMatrixf([FI)V

    .line 379
    move/from16 v0, p2

    int-to-float v0, v0

    move v4, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move v7, v0

    const/4 v8, 0x0

    move-object/from16 v0, v17

    move v1, v4

    move v2, v7

    move v3, v8

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTranslatef(FFF)V

    move-object/from16 v7, p0

    move-object v8, v5

    move-object/from16 v9, v16

    move-object v10, v6

    move-object v11, v15

    move/from16 v12, v19

    .line 380
    invoke-direct/range {v7 .. v13}, Lcom/android/camera/ui/GLRootView;->drawMesh([I[I[F[FII)V

    .line 381
    invoke-interface/range {v17 .. v17}, Ljavax/microedition/khronos/opengles/GL11;->glPopMatrix()V

    goto/16 :goto_0
.end method

.method public drawRect(IIII)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 321
    iget-object v5, p0, Lcom/android/camera/ui/GLRootView;->mMatrixValues:[F

    .line 322
    .local v5, matrix:[F
    iget-object v0, p0, Lcom/android/camera/ui/GLRootView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/graphics/Matrix;->getValues([F)V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 323
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/GLRootView;->drawRect(IIII[F)V

    .line 324
    return-void
.end method

.method public drawTexture(Lcom/android/camera/ui/BasicTexture;IIII)V
    .locals 7
    .parameter "texture"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/camera/ui/GLRootView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/ui/GLRootView;->drawTexture(Lcom/android/camera/ui/BasicTexture;IIIIF)V

    .line 587
    return-void
.end method

.method public drawTexture(Lcom/android/camera/ui/BasicTexture;IIIIF)V
    .locals 9
    .parameter "texture"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "alpha"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v4, 0x3f00

    const/4 v0, 0x0

    .line 592
    sget-boolean v2, Lcom/android/camera/ui/GLRootView;->mTexture2DEnabled:Z

    if-nez v2, :cond_0

    .line 593
    iget-object v2, p0, Lcom/android/camera/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v3, 0xde1

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 594
    sput-boolean v7, Lcom/android/camera/ui/GLRootView;->mTexture2DEnabled:Z

    .line 597
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p1, p0, v2}, Lcom/android/camera/ui/BasicTexture;->bind(Lcom/android/camera/ui/GLRootView;Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 598
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot bind"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 600
    :cond_1
    if-lez p4, :cond_2

    if-gtz p5, :cond_3

    .line 626
    :cond_2
    :goto_0
    return-void

    .line 602
    :cond_3
    iget-object v2, p0, Lcom/android/camera/ui/GLRootView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 603
    .local v1, matrix:Landroid/graphics/Matrix;
    iget-object v2, p0, Lcom/android/camera/ui/GLRootView;->mMatrixValues:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 607
    iget-object v2, p0, Lcom/android/camera/ui/GLRootView;->mMatrixValues:[F

    invoke-static {v2}, Lcom/android/camera/ui/GLRootView;->isMatrixRotatedOrFlipped([F)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 608
    iget v2, p1, Lcom/android/camera/ui/BasicTexture;->mWidth:I

    int-to-float v2, v2

    sub-float/2addr v2, v4

    iget v3, p1, Lcom/android/camera/ui/BasicTexture;->mTextureWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p1, Lcom/android/camera/ui/BasicTexture;->mHeight:I

    int-to-float v3, v3

    sub-float/2addr v3, v4

    iget v4, p1, Lcom/android/camera/ui/BasicTexture;->mTextureHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/ui/GLRootView;->mUvBuffer:[F

    iget-object v5, p0, Lcom/android/camera/ui/GLRootView;->mUvPointer:Ljava/nio/ByteBuffer;

    move v1, v0

    invoke-static/range {v0 .. v5}, Lcom/android/camera/ui/GLRootView;->putRectangle(FFFF[FLjava/nio/ByteBuffer;)V

    .line 612
    .end local v1           #matrix:Landroid/graphics/Matrix;
    invoke-direct {p0, p6}, Lcom/android/camera/ui/GLRootView;->setAlphaValue(F)V

    .line 613
    iget-object v5, p0, Lcom/android/camera/ui/GLRootView;->mMatrixValues:[F

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/GLRootView;->drawRect(IIII[F)V

    goto :goto_0

    .line 616
    .restart local v1       #matrix:Landroid/graphics/Matrix;
    :cond_4
    add-int v3, p3, p5

    add-int v4, p2, p4

    move-object v0, p0

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/GLRootView;->mapPoints(Landroid/graphics/Matrix;IIII)[F

    move-result-object v8

    .line 617
    .local v8, points:[F
    aget v0, v8, v6

    float-to-int p2, v0

    .line 618
    aget v0, v8, v7

    float-to-int p3, v0

    .line 619
    const/4 v0, 0x2

    aget v0, v8, v0

    float-to-int v0, v0

    sub-int p4, v0, p2

    .line 620
    const/4 v0, 0x3

    aget v0, v8, v0

    float-to-int v0, v0

    sub-int p5, v0, p3

    .line 621
    if-lez p4, :cond_2

    if-lez p5, :cond_2

    .line 622
    invoke-direct {p0, p6}, Lcom/android/camera/ui/GLRootView;->setAlphaValue(F)V

    .line 623
    iget-object v2, p0, Lcom/android/camera/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    check-cast v2, Ljavax/microedition/khronos/opengles/GL11Ext;

    move v3, p2

    move v4, p3

    move v5, v6

    move v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexiOES(IIIII)V

    goto :goto_0
.end method

.method public freeTransformation(Landroid/view/animation/Transformation;)V
    .locals 1
    .parameter "freeTransformation"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/camera/ui/GLRootView;->mFreeTransform:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    return-void
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 2

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/camera/ui/GLRootView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    .line 674
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/GLRootView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 675
    invoke-virtual {p0}, Lcom/android/camera/ui/GLRootView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/GLRootView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/GLRootView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public getEGLConfigChooser()Lcom/android/camera/ui/CameraEGLConfigChooser;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/camera/ui/GLRootView;->mEglConfigChooser:Lcom/android/camera/ui/CameraEGLConfigChooser;

    return-object v0
.end method

.method public getTransformation()Landroid/view/animation/Transformation;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/camera/ui/GLRootView;->mTransformation:Landroid/view/animation/Transformation;

    return-object v0
.end method

.method handleLowMemory()V
    .locals 0

    .prologue
    .line 212
    return-void
.end method

.method public obtainTransformation()Landroid/view/animation/Transformation;
    .locals 2

    .prologue
    .line 146
    iget-object v1, p0, Lcom/android/camera/ui/GLRootView;->mFreeTransform:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/android/camera/ui/GLRootView;->mFreeTransform:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Transformation;

    .line 148
    .local v0, t:Landroid/view/animation/Transformation;
    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    move-object v1, v0

    .line 151
    .end local v0           #t:Landroid/view/animation/Transformation;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    goto :goto_0
.end method

.method public declared-synchronized onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .parameter "gl"

    .prologue
    .line 647
    monitor-enter p0

    :try_start_0
    iget v4, p0, Lcom/android/camera/ui/GLRootView;->mFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ui/GLRootView;->layoutContentPane()V

    .line 648
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/GLRootView;->clearClip()V

    .line 649
    const/16 v4, 0x4400

    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 650
    const/16 v4, 0xbe2

    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 651
    const/4 v4, 0x1

    const/16 v5, 0x303

    invoke-interface {p1, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 653
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/ui/GLRootView;->mAnimationTime:J

    .line 654
    iget-object v4, p0, Lcom/android/camera/ui/GLRootView;->mContentView:Lcom/android/camera/ui/GLView;

    if-eqz v4, :cond_1

    .line 655
    iget-object v4, p0, Lcom/android/camera/ui/GLRootView;->mContentView:Lcom/android/camera/ui/GLView;

    check-cast p1, Ljavax/microedition/khronos/opengles/GL11;

    .end local p1
    invoke-virtual {v4, p0, p1}, Lcom/android/camera/ui/GLView;->render(Lcom/android/camera/ui/GLRootView;Ljavax/microedition/khronos/opengles/GL11;)V

    .line 657
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 658
    .local v2, now:J
    iget-object v4, p0, Lcom/android/camera/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    .line 659
    .local v0, animation:Landroid/view/animation/Animation;
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartTime(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 647
    .end local v0           #animation:Landroid/view/animation/Animation;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #now:J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 661
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #now:J
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/camera/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 662
    monitor-exit p0

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 238
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/GLRootView;->requestLayoutContentPane()V

    .line 239
    :cond_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 8
    .parameter "gl1"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 289
    const-string v3, "GLRootView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSurfaceChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", gl10: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    move-object v1, v0

    .line 292
    .local v1, gl:Ljavax/microedition/khronos/opengles/GL11;
    iput-object v1, p0, Lcom/android/camera/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 293
    invoke-interface {v1, v7, v7, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glViewport(IIII)V

    .line 295
    const/16 v3, 0x1701

    invoke-interface {v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 296
    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL11;->glLoadIdentity()V

    .line 298
    int-to-float v3, p2

    int-to-float v4, p3

    invoke-static {v1, v6, v3, v6, v4}, Landroid/opengl/GLU;->gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 299
    iget-object v3, p0, Lcom/android/camera/ui/GLRootView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 300
    .local v2, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 301
    invoke-virtual {p0}, Lcom/android/camera/ui/GLRootView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v6, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 302
    const/high16 v3, 0x3f80

    const/high16 v4, -0x4080

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 303
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 9
    .parameter "gl1"
    .parameter "config"

    .prologue
    const/16 v8, 0x1406

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 246
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    move-object v1, v0

    .line 247
    .local v1, gl:Ljavax/microedition/khronos/opengles/GL11;
    iget-object v2, p0, Lcom/android/camera/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v2, :cond_0

    .line 249
    const-string v2, "GLRootView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GLObject has changed from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_0
    iput-object v1, p0, Lcom/android/camera/ui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 254
    invoke-virtual {p0, v6}, Lcom/android/camera/ui/GLRootView;->setRenderMode(I)V

    .line 260
    const/16 v2, 0xb50

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 263
    const/16 v2, 0xbe2

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 264
    const/16 v2, 0xc11

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 265
    const/16 v2, 0xb90

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 266
    const v2, 0x8074

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 267
    const v2, 0x8078

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 268
    const/16 v2, 0xde1

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 269
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/camera/ui/GLRootView;->mTexture2DEnabled:Z

    .line 271
    const/16 v2, 0x2300

    const/16 v3, 0x2200

    const v4, 0x45f00800

    invoke-interface {v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 275
    invoke-interface {v1, v5, v5, v5, v5}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V

    .line 276
    invoke-interface {v1, v6}, Ljavax/microedition/khronos/opengles/GL11;->glClearStencil(I)V

    .line 278
    iget-object v2, p0, Lcom/android/camera/ui/GLRootView;->mXyPointer:Ljava/nio/ByteBuffer;

    invoke-interface {v1, v7, v8, v6, v2}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 279
    iget-object v2, p0, Lcom/android/camera/ui/GLRootView;->mUvPointer:Ljava/nio/ByteBuffer;

    invoke-interface {v1, v7, v8, v6, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 281
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .parameter "changedView"
    .parameter "v"

    .prologue
    .line 733
    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 734
    iget-object v0, p0, Lcom/android/camera/ui/GLRootView;->mContentView:Lcom/android/camera/ui/GLView;

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/android/camera/ui/GLRootView;->mContentView:Lcom/android/camera/ui/GLView;

    if-nez p2, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GLView;->onVisibilityChanged(I)V

    .line 738
    :cond_0
    return-void

    .line 735
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public popTransform()V
    .locals 2

    .prologue
    .line 170
    iget-object v1, p0, Lcom/android/camera/ui/GLRootView;->mTransformStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Transformation;

    .line 171
    .local v0, trans:Landroid/view/animation/Transformation;
    iget-object v1, p0, Lcom/android/camera/ui/GLRootView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, v0}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 172
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/GLRootView;->freeTransformation(Landroid/view/animation/Transformation;)V

    .line 173
    return-void
.end method

.method public pushTransform()Landroid/view/animation/Transformation;
    .locals 2

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/camera/ui/GLRootView;->obtainTransformation()Landroid/view/animation/Transformation;

    move-result-object v0

    .line 164
    .local v0, trans:Landroid/view/animation/Transformation;
    iget-object v1, p0, Lcom/android/camera/ui/GLRootView;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, v1}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 165
    iget-object v1, p0, Lcom/android/camera/ui/GLRootView;->mTransformStack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v1, p0, Lcom/android/camera/ui/GLRootView;->mTransformation:Landroid/view/animation/Transformation;

    return-object v1
.end method

.method registerLaunchedAnimation(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/ui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    return-void
.end method

.method public declared-synchronized requestLayoutContentPane()V
    .locals 1

    .prologue
    .line 215
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ui/GLRootView;->mContentView:Lcom/android/camera/ui/GLView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/GLRootView;->mFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 223
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 219
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/android/camera/ui/GLRootView;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 221
    iget v0, p0, Lcom/android/camera/ui/GLRootView;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/GLRootView;->mFlags:I

    .line 222
    invoke-virtual {p0}, Lcom/android/camera/ui/GLRootView;->requestRender()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setContentPane(Lcom/android/camera/ui/GLView;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/camera/ui/GLRootView;->mContentView:Lcom/android/camera/ui/GLView;

    .line 199
    invoke-virtual {p1, p0}, Lcom/android/camera/ui/GLView;->onAttachToRoot(Lcom/android/camera/ui/GLRootView;)V

    .line 202
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/GLView;->onAddToParent(Lcom/android/camera/ui/GLView;)V

    .line 203
    invoke-virtual {p0}, Lcom/android/camera/ui/GLRootView;->requestLayoutContentPane()V

    .line 204
    return-void
.end method
