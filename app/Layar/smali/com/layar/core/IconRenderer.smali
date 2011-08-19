.class public Lcom/layar/core/IconRenderer;
.super Ljava/lang/Object;
.source "IconRenderer.java"


# static fields
.field private static final SCALE_50M:F = 16.0f

.field private static final SCALE_RANGE:F = 12.5f

.field private static final TAG:Ljava/lang/String; = "layar.IconRenderer"

.field private static final THROBBER_SPEED:I = 0x7d0


# instance fields
.field private final mTextureBuffer:Ljava/nio/IntBuffer;

.field private final mVertexBuffer:Ljava/nio/IntBuffer;


# direct methods
.method public constructor <init>()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x6

    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/high16 v0, 0x1

    .line 28
    .local v0, i:I
    const/16 v5, 0xc

    new-array v4, v5, [I

    .line 29
    neg-int v5, v0

    div-int/lit8 v5, v5, 0x2

    aput v5, v4, v7

    .line 30
    div-int/lit8 v5, v0, 0x2

    aput v5, v4, v8

    .line 31
    neg-int v5, v0

    div-int/lit8 v5, v5, 0x2

    aput v5, v4, v9

    aput v0, v4, v10

    const/16 v5, 0x9

    .line 32
    div-int/lit8 v6, v0, 0x2

    aput v6, v4, v5

    const/16 v5, 0xb

    aput v0, v4, v5

    .line 35
    .local v4, vertices:[I
    new-array v2, v10, [I

    const/4 v5, 0x1

    .line 36
    aput v0, v2, v5

    const/4 v5, 0x2

    .line 37
    aput v0, v2, v5

    aput v0, v2, v8

    .line 39
    aput v0, v2, v9

    .line 42
    .local v2, texCoords:[I
    array-length v5, v4

    mul-int/lit8 v5, v5, 0x4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 43
    .local v3, vbb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 44
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v5

    iput-object v5, p0, Lcom/layar/core/IconRenderer;->mVertexBuffer:Ljava/nio/IntBuffer;

    .line 45
    iget-object v5, p0, Lcom/layar/core/IconRenderer;->mVertexBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 46
    iget-object v5, p0, Lcom/layar/core/IconRenderer;->mVertexBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v5, v7}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 48
    array-length v5, v2

    mul-int/lit8 v5, v5, 0x4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 49
    .local v1, tbb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 50
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v5

    iput-object v5, p0, Lcom/layar/core/IconRenderer;->mTextureBuffer:Ljava/nio/IntBuffer;

    .line 51
    iget-object v5, p0, Lcom/layar/core/IconRenderer;->mTextureBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v5, v2}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 52
    iget-object v5, p0, Lcom/layar/core/IconRenderer;->mTextureBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v5, v7}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 53
    return-void
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;Lcom/layar/core/POIRenderer;FF)F
    .locals 11
    .parameter "gl"
    .parameter "renderer"
    .parameter "range"
    .parameter "scaleFactor"

    .prologue
    const/4 v10, 0x0

    const/high16 v7, 0x4248

    const/high16 v6, 0x4180

    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    .line 56
    const/high16 v3, 0x4148

    div-float v2, p3, v3

    .line 59
    .local v2, scaleAtRange:F
    iget-object v3, p2, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    iget v3, v3, Lcom/layar/data/BasePOI;->geodistance:I

    int-to-float v3, v3

    cmpg-float v3, v3, v7

    if-gtz v3, :cond_3

    .line 60
    iget-object v3, p2, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    iget v3, v3, Lcom/layar/data/BasePOI;->geodistance:I

    int-to-float v3, v3

    div-float/2addr v3, v7

    mul-float v1, v3, v6

    .line 64
    .local v1, scale:F
    :goto_0
    cmpl-float v3, p4, v9

    if-eqz v3, :cond_0

    .line 65
    const/high16 v3, 0x41a0

    div-float v1, p4, v3

    .line 67
    :cond_0
    iget-object v3, p2, Lcom/layar/core/POIRenderer;->transformationState:Lcom/layar/core/animation/TransformationState;

    invoke-virtual {v3, v1, v1, v1}, Lcom/layar/core/animation/TransformationState;->scale(FFF)V

    .line 68
    iget-object v3, p2, Lcom/layar/core/POIRenderer;->transformationState:Lcom/layar/core/animation/TransformationState;

    iget-object v4, p2, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    iget v4, v4, Lcom/layar/data/BasePOI;->bearing:F

    neg-float v4, v4

    invoke-virtual {v3, v4, v8, v8, v9}, Lcom/layar/core/animation/TransformationState;->rotate(FFFF)V

    .line 70
    const/16 v3, 0xde1

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 72
    const/16 v3, 0xb44

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 73
    const/16 v3, 0x1d01

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 75
    sget-boolean v3, Lcom/layar/util/MyConfig;->OPENGL_LIGHTING:Z

    if-eqz v3, :cond_1

    const/16 v3, 0xb50

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 76
    :cond_1
    const/4 v3, 0x3

    const/16 v4, 0x140c

    iget-object v5, p0, Lcom/layar/core/IconRenderer;->mVertexBuffer:Ljava/nio/IntBuffer;

    invoke-interface {p1, v3, v4, v10, v5}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 77
    const/4 v3, 0x2

    const/16 v4, 0x140c

    iget-object v5, p0, Lcom/layar/core/IconRenderer;->mTextureBuffer:Ljava/nio/IntBuffer;

    invoke-interface {p1, v3, v4, v10, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 79
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 80
    invoke-interface {p1, v9, v9, v9, v9}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 82
    iget-object v3, p2, Lcom/layar/core/POIRenderer;->transformationState:Lcom/layar/core/animation/TransformationState;

    invoke-virtual {v3, p1}, Lcom/layar/core/animation/TransformationState;->apply(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 84
    iget-boolean v3, p2, Lcom/layar/core/POIRenderer;->showThrobber:Z

    if-eqz v3, :cond_2

    .line 85
    const/high16 v3, 0x43b4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x7d0

    rem-long/2addr v4, v6

    long-to-float v4, v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x44fa

    div-float v0, v3, v4

    .line 86
    .local v0, angle:F
    const/high16 v3, 0x3f00

    invoke-interface {p1, v8, v8, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 87
    invoke-interface {p1, v0, v8, v9, v8}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 88
    const/high16 v3, -0x4100

    invoke-interface {p1, v8, v8, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 91
    .end local v0           #angle:F
    :cond_2
    const/4 v3, 0x5

    const/4 v4, 0x4

    invoke-interface {p1, v3, v10, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 92
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 94
    return v1

    .line 62
    .end local v1           #scale:F
    :cond_3
    sub-float v3, v2, v6

    iget-object v4, p2, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    iget v4, v4, Lcom/layar/data/BasePOI;->geodistance:I

    const/16 v5, 0x32

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v3, v4

    sub-float v4, p3, v7

    div-float/2addr v3, v4

    add-float v1, v6, v3

    .restart local v1       #scale:F
    goto/16 :goto_0
.end method

.method public intersect([F[FLcom/layar/core/POIRenderer;)F
    .locals 21
    .parameter "near"
    .parameter "far"
    .parameter "renderer"

    .prologue
    .line 98
    const/16 v12, 0x10

    new-array v9, v12, [F

    .line 99
    .local v9, matrix:[F
    invoke-static {v9}, Lcom/layar/util/MathUtil;->matrixIdentity([F)V

    .line 101
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/layar/core/POIRenderer;->transformationState:Lcom/layar/core/animation/TransformationState;

    move-object v12, v0

    invoke-virtual {v12, v9}, Lcom/layar/core/animation/TransformationState;->apply([F)V

    .line 103
    const/4 v12, 0x4

    const/4 v13, 0x4

    filled-new-array {v12, v13}, [I

    move-result-object v12

    sget-object v13, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[F

    .line 104
    .local v10, points:[[F
    const/4 v12, 0x0

    aget-object v12, v10, v12

    const/4 v13, 0x0

    const/4 v14, 0x2

    aget-object v14, v10, v14

    const/4 v15, 0x0

    const/high16 v16, -0x4100

    aput v16, v14, v15

    aput v16, v12, v13

    .line 105
    const/4 v12, 0x1

    aget-object v12, v10, v12

    const/4 v13, 0x0

    const/4 v14, 0x3

    aget-object v14, v10, v14

    const/4 v15, 0x0

    const/high16 v16, 0x3f00

    aput v16, v14, v15

    aput v16, v12, v13

    .line 106
    const/4 v12, 0x0

    aget-object v12, v10, v12

    const/4 v13, 0x1

    const/4 v14, 0x1

    aget-object v14, v10, v14

    const/4 v15, 0x1

    const/16 v16, 0x2

    aget-object v16, v10, v16

    const/16 v17, 0x1

    const/16 v18, 0x3

    aget-object v18, v10, v18

    const/16 v19, 0x1

    const/16 v20, 0x0

    aput v20, v18, v19

    aput v20, v16, v17

    aput v20, v14, v15

    aput v20, v12, v13

    .line 107
    const/4 v12, 0x0

    aget-object v12, v10, v12

    const/4 v13, 0x2

    const/4 v14, 0x1

    aget-object v14, v10, v14

    const/4 v15, 0x2

    const/16 v16, 0x0

    aput v16, v14, v15

    aput v16, v12, v13

    .line 108
    const/4 v12, 0x2

    aget-object v12, v10, v12

    const/4 v13, 0x2

    const/4 v14, 0x3

    aget-object v14, v10, v14

    const/4 v15, 0x2

    const/high16 v16, 0x3f80

    aput v16, v14, v15

    aput v16, v12, v13

    .line 109
    const/4 v12, 0x0

    aget-object v12, v10, v12

    const/4 v13, 0x3

    const/4 v14, 0x1

    aget-object v14, v10, v14

    const/4 v15, 0x3

    const/16 v16, 0x2

    aget-object v16, v10, v16

    const/16 v17, 0x3

    const/16 v18, 0x3

    aget-object v18, v10, v18

    const/16 v19, 0x3

    const/high16 v20, 0x3f80

    aput v20, v18, v19

    aput v20, v16, v17

    aput v20, v14, v15

    aput v20, v12, v13

    .line 111
    const/4 v12, 0x3

    new-array v5, v12, [F

    .line 112
    .local v5, boxMin:[F
    const/4 v12, 0x3

    new-array v4, v12, [F

    .line 113
    .local v4, boxMax:[F
    const/16 v12, 0x8

    const/4 v13, 0x4

    filled-new-array {v12, v13}, [I

    move-result-object v12

    sget-object v13, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[F

    .line 115
    .local v11, pointsW:[[F
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    const/4 v12, 0x4

    if-lt v7, v12, :cond_0

    .line 124
    new-instance v3, Lcom/layar/util/OrientedBoundingBox;

    invoke-direct {v3, v5, v4}, Lcom/layar/util/OrientedBoundingBox;-><init>([F[F)V

    .line 126
    .local v3, box:Lcom/layar/util/OrientedBoundingBox;
    const/4 v12, 0x3

    new-array v6, v12, [F

    .line 127
    .local v6, dir:[F
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object v2, v6

    invoke-static {v0, v1, v2}, Lcom/layar/util/MathUtil;->vectorSubstract([F[F[F)V

    .line 128
    invoke-static {v6}, Lcom/layar/util/MathUtil;->vectorNormalize([F)V

    .line 130
    move-object v0, v3

    move-object/from16 v1, p1

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/layar/util/OrientedBoundingBox;->nearestRayIntersection([F[F)F

    move-result v12

    return v12

    .line 116
    .end local v3           #box:Lcom/layar/util/OrientedBoundingBox;
    .end local v6           #dir:[F
    :cond_0
    aget-object v12, v10, v7

    aget-object v13, v11, v7

    invoke-static {v9, v12, v13}, Lcom/layar/util/MathUtil;->matrixVectorMultiply([F[F[F)V

    .line 118
    const/4 v8, 0x0

    .local v8, j:I
    :goto_1
    const/4 v12, 0x3

    if-lt v8, v12, :cond_1

    .line 115
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 119
    :cond_1
    if-eqz v7, :cond_2

    aget-object v12, v11, v7

    aget v12, v12, v8

    aget v13, v5, v8

    cmpg-float v12, v12, v13

    if-gez v12, :cond_3

    :cond_2
    aget-object v12, v11, v7

    aget v12, v12, v8

    aput v12, v5, v8

    .line 120
    :cond_3
    if-eqz v7, :cond_4

    aget-object v12, v11, v7

    aget v12, v12, v8

    aget v13, v4, v8

    cmpl-float v12, v12, v13

    if-lez v12, :cond_5

    :cond_4
    aget-object v12, v11, v7

    aget v12, v12, v8

    aput v12, v4, v8

    .line 118
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method
