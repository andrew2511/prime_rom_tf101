.class final Lcom/ecareme/pixwe/media/GridQuad;
.super Ljava/lang/Object;
.source "GridQuad.java"


# static fields
.field private static final INDEX_COUNT:I = 0x4

.field private static final ORIENTATION_COUNT:I = 0x168


# instance fields
.field private mAnimHeight:F

.field private mAnimU:F

.field private mAnimV:F

.field private mAnimWidth:F

.field private mBaseTexCoordBuffer:Ljava/nio/FloatBuffer;

.field private mBaseTextureCoordBufferIndex:I

.field private mCoordsIn:[F

.field private mCoordsOut:[F

.field private mDefaultAspectRatio:F

.field private mDynamicVBO:Z

.field private mH:I

.field private mHeight:F

.field private mIndexBuffer:Ljava/nio/CharBuffer;

.field private mIndexBufferIndex:I

.field private mMatrix:Lcom/ecareme/pixwe/media/MatrixStack;

.field private final mOrientedQuad:Z

.field private mOverlayTexCoordBuffer:Ljava/nio/FloatBuffer;

.field private mOverlayTextureCoordBufferIndex:I

.field private mQuadChanged:Z

.field private mU:F

.field private mV:F

.field private mVertBufferIndex:I

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

.field private mW:I

.field private mWidth:F


# direct methods
.method public constructor <init>(Z)V
    .locals 12
    .parameter "generateOrientedQuads"

    .prologue
    const/4 v11, 0x4

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-array v9, v11, [F

    iput-object v9, p0, Lcom/ecareme/pixwe/media/GridQuad;->mCoordsIn:[F

    .line 61
    new-array v9, v11, [F

    iput-object v9, p0, Lcom/ecareme/pixwe/media/GridQuad;->mCoordsOut:[F

    .line 95
    iput-boolean p1, p0, Lcom/ecareme/pixwe/media/GridQuad;->mOrientedQuad:Z

    .line 96
    iget-boolean v9, p0, Lcom/ecareme/pixwe/media/GridQuad;->mOrientedQuad:Z

    if-eqz v9, :cond_0

    .line 97
    new-instance v9, Lcom/ecareme/pixwe/media/MatrixStack;

    invoke-direct {v9}, Lcom/ecareme/pixwe/media/MatrixStack;-><init>()V

    iput-object v9, p0, Lcom/ecareme/pixwe/media/GridQuad;->mMatrix:Lcom/ecareme/pixwe/media/MatrixStack;

    .line 98
    iget-object v9, p0, Lcom/ecareme/pixwe/media/GridQuad;->mMatrix:Lcom/ecareme/pixwe/media/MatrixStack;

    invoke-virtual {v9}, Lcom/ecareme/pixwe/media/MatrixStack;->glLoadIdentity()V

    .line 100
    :cond_0
    const/4 v7, 0x2

    .line 101
    .local v7, vertsAcross:I
    const/4 v8, 0x2

    .line 102
    .local v8, vertsDown:I
    iput v7, p0, Lcom/ecareme/pixwe/media/GridQuad;->mW:I

    .line 103
    iput v8, p0, Lcom/ecareme/pixwe/media/GridQuad;->mH:I

    .line 104
    mul-int v6, v7, v8

    .line 105
    .local v6, size:I
    const/4 v1, 0x4

    .line 106
    .local v1, FLOAT_SIZE:I
    const/4 v0, 0x2

    .line 107
    .local v0, CHAR_SIZE:I
    if-nez p1, :cond_1

    const/4 v9, 0x1

    move v5, v9

    .line 108
    .local v5, orientationCount:I
    :goto_0
    mul-int/lit8 v9, v11, 0x4

    mul-int/lit8 v9, v9, 0x3

    mul-int/lit8 v9, v5, 0x30

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 109
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v9

    .line 108
    iput-object v9, p0, Lcom/ecareme/pixwe/media/GridQuad;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 110
    mul-int/lit8 v9, v11, 0x4

    mul-int/lit8 v9, v9, 0x2

    mul-int/lit8 v9, v5, 0x20

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 111
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v9

    .line 110
    iput-object v9, p0, Lcom/ecareme/pixwe/media/GridQuad;->mOverlayTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 112
    mul-int/lit8 v9, v11, 0x4

    mul-int/lit8 v9, v9, 0x2

    mul-int/lit8 v9, v5, 0x20

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 113
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v9

    .line 112
    iput-object v9, p0, Lcom/ecareme/pixwe/media/GridQuad;->mBaseTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 115
    const/4 v4, 0x4

    .line 116
    .local v4, indexCount:I
    mul-int/lit8 v9, v4, 0x2

    mul-int/lit8 v9, v5, 0x8

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 117
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v9

    .line 116
    iput-object v9, p0, Lcom/ecareme/pixwe/media/GridQuad;->mIndexBuffer:Ljava/nio/CharBuffer;

    .line 124
    iget-object v2, p0, Lcom/ecareme/pixwe/media/GridQuad;->mIndexBuffer:Ljava/nio/CharBuffer;

    .line 125
    .local v2, buffer:Ljava/nio/CharBuffer;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    mul-int/lit8 v9, v5, 0x4

    if-lt v3, v9, :cond_2

    .line 128
    const/4 v9, 0x0

    iput v9, p0, Lcom/ecareme/pixwe/media/GridQuad;->mVertBufferIndex:I

    .line 129
    return-void

    .line 107
    .end local v2           #buffer:Ljava/nio/CharBuffer;
    .end local v3           #i:I
    .end local v4           #indexCount:I
    .end local v5           #orientationCount:I
    :cond_1
    const/16 v9, 0x168

    move v5, v9

    goto :goto_0

    .line 126
    .restart local v2       #buffer:Ljava/nio/CharBuffer;
    .restart local v3       #i:I
    .restart local v4       #indexCount:I
    .restart local v5       #orientationCount:I
    :cond_2
    int-to-char v9, v3

    invoke-virtual {v2, v3, v9}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 125
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static createGridQuad(FFFFFFZ)Lcom/ecareme/pixwe/media/GridQuad;
    .locals 23
    .parameter "width"
    .parameter "height"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "uExtents"
    .parameter "vExtents"
    .parameter "generateOrientedQuads"

    .prologue
    .line 66
    new-instance v2, Lcom/ecareme/pixwe/media/GridQuad;

    move-object v0, v2

    move/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/GridQuad;-><init>(Z)V

    .line 67
    .local v2, grid:Lcom/ecareme/pixwe/media/GridQuad;
    move/from16 v0, p0

    move-object v1, v2

    iput v0, v1, Lcom/ecareme/pixwe/media/GridQuad;->mWidth:F

    .line 68
    move/from16 v0, p1

    move-object v1, v2

    iput v0, v1, Lcom/ecareme/pixwe/media/GridQuad;->mHeight:F

    .line 69
    move/from16 v0, p0

    move-object v1, v2

    iput v0, v1, Lcom/ecareme/pixwe/media/GridQuad;->mAnimWidth:F

    .line 70
    move/from16 v0, p1

    move-object v1, v2

    iput v0, v1, Lcom/ecareme/pixwe/media/GridQuad;->mAnimHeight:F

    .line 71
    div-float v3, p0, p1

    iput v3, v2, Lcom/ecareme/pixwe/media/GridQuad;->mDefaultAspectRatio:F

    .line 72
    const/high16 v3, 0x3f00

    mul-float v22, p0, v3

    .line 73
    .local v22, widthBy2:F
    const/high16 p0, 0x3f00

    mul-float p0, p0, p1

    .line 74
    .local p0, heightBy2:F
    move/from16 v9, p5

    .line 75
    .local v9, v:F
    move/from16 v8, p4

    .line 76
    .local v8, u:F
    if-nez p6, :cond_1

    .line 77
    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 p1, v0

    add-float v5, p1, p2

    move/from16 v0, p0

    neg-float v0, v0

    move/from16 p1, v0

    add-float v6, p1, p3

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/ecareme/pixwe/media/GridQuad;->set(IIFFFFF)V

    .line 78
    .end local p1
    const/4 v11, 0x1

    const/4 v12, 0x0

    add-float v13, v22, p2

    move/from16 v0, p0

    neg-float v0, v0

    move/from16 p1, v0

    add-float v14, p1, p3

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v10, v2

    move/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Lcom/ecareme/pixwe/media/GridQuad;->set(IIFFFFF)V

    .line 79
    const/4 v11, 0x0

    const/4 v12, 0x1

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 p1, v0

    add-float v13, p1, p2

    add-float v14, p0, p3

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object v10, v2

    move/from16 v16, v8

    invoke-virtual/range {v10 .. v17}, Lcom/ecareme/pixwe/media/GridQuad;->set(IIFFFFF)V

    .line 80
    const/4 v11, 0x1

    const/4 v12, 0x1

    add-float v13, v22, p2

    add-float v14, p0, p3

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v2

    invoke-virtual/range {v10 .. v17}, Lcom/ecareme/pixwe/media/GridQuad;->set(IIFFFFF)V

    .line 89
    :cond_0
    move/from16 v0, p4

    move-object v1, v2

    iput v0, v1, Lcom/ecareme/pixwe/media/GridQuad;->mU:F

    .line 90
    move/from16 v0, p4

    move-object v1, v2

    iput v0, v1, Lcom/ecareme/pixwe/media/GridQuad;->mV:F

    .line 91
    return-object v2

    .line 82
    .restart local p1
    :cond_1
    const/4 v11, 0x0

    .end local p1
    .local v11, i:I
    :goto_0
    const/16 p1, 0x168

    move v0, v11

    move/from16 v1, p1

    if-ge v0, v1, :cond_0

    .line 83
    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 p1, v0

    add-float v5, p1, p2

    move/from16 v0, p0

    neg-float v0, v0

    move/from16 p1, v0

    add-float v6, p1, p3

    const/4 v7, 0x0

    const/4 v10, 0x1

    invoke-direct/range {v2 .. v11}, Lcom/ecareme/pixwe/media/GridQuad;->set(IIFFFFFZI)V

    .line 84
    const/4 v13, 0x1

    const/4 v14, 0x0

    add-float v15, v22, p2

    move/from16 v0, p0

    neg-float v0, v0

    move/from16 p1, v0

    add-float v16, p1, p3

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x1

    move-object v12, v2

    move/from16 v19, v9

    move/from16 v21, v11

    invoke-direct/range {v12 .. v21}, Lcom/ecareme/pixwe/media/GridQuad;->set(IIFFFFFZI)V

    .line 85
    const/4 v13, 0x0

    const/4 v14, 0x1

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 p1, v0

    add-float v15, p1, p2

    add-float v16, p0, p3

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object v12, v2

    move/from16 v18, v8

    move/from16 v21, v11

    invoke-direct/range {v12 .. v21}, Lcom/ecareme/pixwe/media/GridQuad;->set(IIFFFFFZI)V

    .line 86
    const/4 v13, 0x1

    const/4 v14, 0x1

    add-float v15, v22, p2

    add-float v16, p0, p3

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object v12, v2

    move/from16 v21, v11

    invoke-direct/range {v12 .. v21}, Lcom/ecareme/pixwe/media/GridQuad;->set(IIFFFFFZI)V

    .line 82
    add-int/lit8 v11, v11, 0x1

    goto :goto_0
.end method

.method public static final draw(Ljavax/microedition/khronos/opengles/GL11;F)V
    .locals 5
    .parameter "gl11"
    .parameter "orientationDegrees"

    .prologue
    .line 294
    invoke-static {p1}, Lcom/ecareme/pixwe/media/Shared;->normalizePositive(F)F

    move-result v1

    float-to-int v0, v1

    .line 295
    .local v0, orientation:I
    const/4 v1, 0x5

    const/4 v2, 0x4

    const/16 v3, 0x1403

    mul-int/lit8 v4, v0, 0x4

    invoke-interface {p0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIII)V

    .line 296
    return-void
.end method

.method private set(IIFFFFFZI)V
    .locals 17
    .parameter "i"
    .parameter "j"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "u"
    .parameter "v"
    .parameter "modifyOverlay"
    .parameter "orientationId"

    .prologue
    .line 215
    if-ltz p1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridQuad;->mW:I

    move v11, v0

    move/from16 v0, p1

    move v1, v11

    if-lt v0, v1, :cond_1

    .line 216
    :cond_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "i"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 218
    :cond_1
    if-ltz p2, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridQuad;->mH:I

    move v11, v0

    move/from16 v0, p2

    move v1, v11

    if-lt v0, v1, :cond_3

    .line 219
    :cond_2
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "j"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 221
    :cond_3
    mul-int/lit8 v11, p9, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridQuad;->mW:I

    move v12, v0

    mul-int v12, v12, p2

    add-int/2addr v11, v12

    add-int v4, v11, p1

    .line 222
    .local v4, index:I
    mul-int/lit8 v7, v4, 0x3

    .line 223
    .local v7, posIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridQuad;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object v11, v0

    move-object v0, v11

    move v1, v7

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridQuad;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object v11, v0

    add-int/lit8 v12, v7, 0x1

    move-object v0, v11

    move v1, v12

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridQuad;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object v11, v0

    add-int/lit8 v12, v7, 0x2

    move-object v0, v11

    move v1, v12

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 226
    mul-int/lit8 v3, v4, 0x2

    .line 228
    .local v3, baseTexIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridQuad;->mMatrix:Lcom/ecareme/pixwe/media/MatrixStack;

    move-object v6, v0

    .line 229
    .local v6, matrix:Lcom/ecareme/pixwe/media/MatrixStack;
    if-eqz v6, :cond_4

    .line 230
    mul-int/lit8 p9, p9, 0x2

    .line 231
    invoke-virtual {v6}, Lcom/ecareme/pixwe/media/MatrixStack;->glLoadIdentity()V

    .line 232
    const/high16 v11, 0x3f00

    const/high16 v12, 0x3f00

    const/4 v13, 0x0

    invoke-virtual {v6, v11, v12, v13}, Lcom/ecareme/pixwe/media/MatrixStack;->glTranslatef(FFF)V

    .line 233
    move/from16 v0, p9

    int-to-double v0, v0

    move-wide v11, v0

    invoke-static {v11, v12}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    double-to-float v5, v11

    .line 234
    .local v5, itheta:F
    float-to-double v11, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v9, v11

    .line 235
    .local v9, sini:F
    const/high16 v11, 0x3f80

    mul-float v12, v9, v9

    const v13, 0x3eaaaaab

    mul-float/2addr v12, v13

    add-float v8, v11, v12

    .line 236
    .local v8, scale:F
    const/high16 v11, 0x3f80

    div-float v8, v11, v8

    .line 237
    move/from16 v0, p9

    neg-int v0, v0

    move v11, v0

    int-to-float v11, v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x3f80

    invoke-virtual {v6, v11, v12, v13, v14}, Lcom/ecareme/pixwe/media/MatrixStack;->glRotatef(FFFF)V

    .line 238
    const/high16 v11, 0x3f80

    invoke-virtual {v6, v8, v8, v11}, Lcom/ecareme/pixwe/media/MatrixStack;->glScalef(FFF)V

    .line 239
    const/high16 v11, -0x4100

    const/high16 v12, 0x3e00

    mul-float/2addr v12, v9

    div-float/2addr v12, v8

    add-float/2addr v11, v12

    const/high16 v12, -0x4100

    .line 240
    const/high16 v13, 0x3f00

    mul-float/2addr v13, v5

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    const-wide/high16 v15, 0x3fd0

    mul-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    double-to-float v13, v13

    add-float/2addr v12, v13

    const/4 v13, 0x0

    .line 239
    invoke-virtual {v6, v11, v12, v13}, Lcom/ecareme/pixwe/media/MatrixStack;->glTranslatef(FFF)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridQuad;->mCoordsIn:[F

    move-object v11, v0

    const/4 v12, 0x0

    aput p6, v11, v12

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridQuad;->mCoordsIn:[F

    move-object v11, v0

    const/4 v12, 0x1

    aput p7, v11, v12

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridQuad;->mCoordsIn:[F

    move-object v11, v0

    const/4 v12, 0x2

    const/4 v13, 0x0

    aput v13, v11, v12

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridQuad;->mCoordsIn:[F

    move-object v11, v0

    const/4 v12, 0x3

    const/high16 v13, 0x3f80

    aput v13, v11, v12

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridQuad;->mCoordsIn:[F

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridQuad;->mCoordsOut:[F

    move-object v12, v0

    invoke-virtual {v6, v11, v12}, Lcom/ecareme/pixwe/media/MatrixStack;->apply([F[F)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridQuad;->mCoordsOut:[F

    move-object v11, v0

    const/4 v12, 0x0

    aget v11, v11, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridQuad;->mCoordsOut:[F

    move-object v12, v0

    const/4 v13, 0x3

    aget v12, v12, v13

    div-float p6, v11, v12

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridQuad;->mCoordsOut:[F

    move-object v11, v0

    const/4 v12, 0x1

    aget v11, v11, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridQuad;->mCoordsOut:[F

    move-object v12, v0

    const/4 v13, 0x3

    aget v12, v12, v13

    div-float p7, v11, v12

    .line 252
    .end local v5           #itheta:F
    .end local v8           #scale:F
    .end local v9           #sini:F
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridQuad;->mBaseTexCoordBuffer:Ljava/nio/FloatBuffer;

    move-object v11, v0

    move-object v0, v11

    move v1, v3

    move/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridQuad;->mBaseTexCoordBuffer:Ljava/nio/FloatBuffer;

    move-object v11, v0

    add-int/lit8 v12, v3, 0x1

    move-object v0, v11

    move v1, v12

    move/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 254
    if-eqz p8, :cond_5

    .line 255
    mul-int/lit8 v10, v4, 0x2

    .line 256
    .local v10, texIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridQuad;->mOverlayTexCoordBuffer:Ljava/nio/FloatBuffer;

    move-object v11, v0

    move-object v0, v11

    move v1, v10

    move/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridQuad;->mOverlayTexCoordBuffer:Ljava/nio/FloatBuffer;

    move-object v11, v0

    add-int/lit8 v12, v10, 0x1

    move-object v0, v11

    move v1, v12

    move/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 259
    .end local v10           #texIndex:I
    :cond_5
    return-void
.end method


# virtual methods
.method public bindArrays(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 10
    .parameter "gl"

    .prologue
    const/4 v9, 0x2

    const v8, 0x88e8

    const/16 v7, 0x1406

    const v6, 0x8892

    const/4 v5, 0x0

    .line 262
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    move-object v1, v0

    .line 264
    .local v1, gl11:Ljavax/microedition/khronos/opengles/GL11;
    iget v4, p0, Lcom/ecareme/pixwe/media/GridQuad;->mVertBufferIndex:I

    invoke-interface {v1, v6, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 265
    const/4 v4, 0x3

    invoke-interface {v1, v4, v7, v5, v5}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 267
    iget v4, p0, Lcom/ecareme/pixwe/media/GridQuad;->mOverlayTextureCoordBufferIndex:I

    invoke-interface {v1, v6, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 268
    iget-boolean v4, p0, Lcom/ecareme/pixwe/media/GridQuad;->mDynamicVBO:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/ecareme/pixwe/media/GridQuad;->mQuadChanged:Z

    if-eqz v4, :cond_0

    .line 269
    iget-object v4, p0, Lcom/ecareme/pixwe/media/GridQuad;->mOverlayTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v4

    mul-int/lit8 v2, v4, 0x4

    .line 270
    .local v2, texCoordSize:I
    iget-object v4, p0, Lcom/ecareme/pixwe/media/GridQuad;->mOverlayTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 271
    iget-object v4, p0, Lcom/ecareme/pixwe/media/GridQuad;->mOverlayTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v1, v6, v2, v4, v8}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 273
    .end local v2           #texCoordSize:I
    :cond_0
    invoke-interface {v1, v9, v7, v5, v5}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 274
    const v4, 0x84c1

    invoke-interface {v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glClientActiveTexture(I)V

    .line 275
    iget-boolean v4, p0, Lcom/ecareme/pixwe/media/GridQuad;->mDynamicVBO:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/ecareme/pixwe/media/GridQuad;->mQuadChanged:Z

    if-eqz v4, :cond_1

    .line 276
    iget-object v4, p0, Lcom/ecareme/pixwe/media/GridQuad;->mBaseTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v4

    mul-int/lit8 v2, v4, 0x4

    .line 277
    .restart local v2       #texCoordSize:I
    iget-object v4, p0, Lcom/ecareme/pixwe/media/GridQuad;->mBaseTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 278
    iget-object v4, p0, Lcom/ecareme/pixwe/media/GridQuad;->mBaseTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v1, v6, v2, v4, v8}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 280
    .end local v2           #texCoordSize:I
    :cond_1
    invoke-interface {v1, v9, v7, v5, v5}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 281
    const v4, 0x84c0

    invoke-interface {v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glClientActiveTexture(I)V

    .line 282
    iget-boolean v4, p0, Lcom/ecareme/pixwe/media/GridQuad;->mDynamicVBO:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/ecareme/pixwe/media/GridQuad;->mQuadChanged:Z

    if-eqz v4, :cond_2

    .line 283
    iput-boolean v5, p0, Lcom/ecareme/pixwe/media/GridQuad;->mQuadChanged:Z

    .line 284
    iget v4, p0, Lcom/ecareme/pixwe/media/GridQuad;->mVertBufferIndex:I

    invoke-interface {v1, v6, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 285
    iget-object v4, p0, Lcom/ecareme/pixwe/media/GridQuad;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v4

    mul-int/lit8 v3, v4, 0x4

    .line 286
    .local v3, vertexSize:I
    iget-object v4, p0, Lcom/ecareme/pixwe/media/GridQuad;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 287
    iget-object v4, p0, Lcom/ecareme/pixwe/media/GridQuad;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v1, v6, v3, v4, v8}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 289
    .end local v3           #vertexSize:I
    :cond_2
    const v4, 0x8893

    iget v5, p0, Lcom/ecareme/pixwe/media/GridQuad;->mIndexBufferIndex:I

    invoke-interface {v1, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 290
    return-void
.end method

.method public commit()V
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/ecareme/pixwe/media/GridQuad;->mWidth:F

    iput v0, p0, Lcom/ecareme/pixwe/media/GridQuad;->mAnimWidth:F

    .line 156
    iget v0, p0, Lcom/ecareme/pixwe/media/GridQuad;->mHeight:F

    iput v0, p0, Lcom/ecareme/pixwe/media/GridQuad;->mAnimHeight:F

    .line 157
    iget v0, p0, Lcom/ecareme/pixwe/media/GridQuad;->mU:F

    iput v0, p0, Lcom/ecareme/pixwe/media/GridQuad;->mAnimU:F

    .line 158
    iget v0, p0, Lcom/ecareme/pixwe/media/GridQuad;->mV:F

    iput v0, p0, Lcom/ecareme/pixwe/media/GridQuad;->mAnimV:F

    .line 159
    return-void
.end method

.method public forgetHardwareBuffers()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 314
    iput v0, p0, Lcom/ecareme/pixwe/media/GridQuad;->mVertBufferIndex:I

    .line 315
    iput v0, p0, Lcom/ecareme/pixwe/media/GridQuad;->mIndexBufferIndex:I

    .line 316
    iput v0, p0, Lcom/ecareme/pixwe/media/GridQuad;->mOverlayTextureCoordBufferIndex:I

    .line 317
    return-void
.end method

.method public freeHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .parameter "gl"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 323
    iget v3, p0, Lcom/ecareme/pixwe/media/GridQuad;->mVertBufferIndex:I

    if-eqz v3, :cond_1

    .line 324
    instance-of v3, p1, Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v3, :cond_0

    .line 325
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    move-object v2, v0

    .line 326
    .local v2, gl11:Ljavax/microedition/khronos/opengles/GL11;
    new-array v1, v5, [I

    .line 327
    .local v1, buffer:[I
    iget v3, p0, Lcom/ecareme/pixwe/media/GridQuad;->mVertBufferIndex:I

    aput v3, v1, v4

    .line 328
    invoke-interface {v2, v5, v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    .line 330
    iget v3, p0, Lcom/ecareme/pixwe/media/GridQuad;->mOverlayTextureCoordBufferIndex:I

    aput v3, v1, v4

    .line 331
    invoke-interface {v2, v5, v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    .line 333
    iget v3, p0, Lcom/ecareme/pixwe/media/GridQuad;->mIndexBufferIndex:I

    aput v3, v1, v4

    .line 334
    invoke-interface {v2, v5, v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    .line 337
    .end local v1           #buffer:[I
    .end local v2           #gl11:Ljavax/microedition/khronos/opengles/GL11;
    :cond_0
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/GridQuad;->forgetHardwareBuffers()V

    .line 339
    :cond_1
    return-void
.end method

.method public generateHardwareBuffers(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 13
    .parameter "gl"

    .prologue
    const v12, 0x88e4

    const v11, 0x8893

    const/4 v10, 0x1

    const v9, 0x8892

    const/4 v8, 0x0

    .line 352
    iget v7, p0, Lcom/ecareme/pixwe/media/GridQuad;->mVertBufferIndex:I

    if-nez v7, :cond_0

    .line 353
    instance-of v7, p1, Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v7, :cond_0

    .line 354
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    move-object v3, v0

    .line 355
    .local v3, gl11:Ljavax/microedition/khronos/opengles/GL11;
    new-array v1, v10, [I

    .line 358
    .local v1, buffer:[I
    invoke-interface {v3, v10, v1, v8}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 359
    aget v7, v1, v8

    iput v7, p0, Lcom/ecareme/pixwe/media/GridQuad;->mVertBufferIndex:I

    .line 360
    iget v7, p0, Lcom/ecareme/pixwe/media/GridQuad;->mVertBufferIndex:I

    invoke-interface {v3, v9, v7}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 361
    iget-object v7, p0, Lcom/ecareme/pixwe/media/GridQuad;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v7}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v7

    mul-int/lit8 v6, v7, 0x4

    .line 362
    .local v6, vertexSize:I
    iget-boolean v7, p0, Lcom/ecareme/pixwe/media/GridQuad;->mDynamicVBO:Z

    if-eqz v7, :cond_1

    const v7, 0x88e8

    move v2, v7

    .line 363
    .local v2, bufferType:I
    :goto_0
    iget-object v7, p0, Lcom/ecareme/pixwe/media/GridQuad;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 364
    iget-object v7, p0, Lcom/ecareme/pixwe/media/GridQuad;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v3, v9, v6, v7, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 367
    invoke-interface {v3, v10, v1, v8}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 368
    aget v7, v1, v8

    iput v7, p0, Lcom/ecareme/pixwe/media/GridQuad;->mOverlayTextureCoordBufferIndex:I

    .line 369
    iget v7, p0, Lcom/ecareme/pixwe/media/GridQuad;->mOverlayTextureCoordBufferIndex:I

    invoke-interface {v3, v9, v7}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 370
    iget-object v7, p0, Lcom/ecareme/pixwe/media/GridQuad;->mOverlayTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v7}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v7

    mul-int/lit8 v5, v7, 0x4

    .line 371
    .local v5, texCoordSize:I
    iget-object v7, p0, Lcom/ecareme/pixwe/media/GridQuad;->mOverlayTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 372
    iget-object v7, p0, Lcom/ecareme/pixwe/media/GridQuad;->mOverlayTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v3, v9, v5, v7, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 374
    invoke-interface {v3, v10, v1, v8}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 375
    aget v7, v1, v8

    iput v7, p0, Lcom/ecareme/pixwe/media/GridQuad;->mBaseTextureCoordBufferIndex:I

    .line 376
    iget v7, p0, Lcom/ecareme/pixwe/media/GridQuad;->mBaseTextureCoordBufferIndex:I

    invoke-interface {v3, v9, v7}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 377
    iget-object v7, p0, Lcom/ecareme/pixwe/media/GridQuad;->mBaseTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 378
    iget-object v7, p0, Lcom/ecareme/pixwe/media/GridQuad;->mBaseTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v3, v9, v5, v7, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 381
    invoke-interface {v3, v9, v8}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 384
    invoke-interface {v3, v10, v1, v8}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 385
    aget v7, v1, v8

    iput v7, p0, Lcom/ecareme/pixwe/media/GridQuad;->mIndexBufferIndex:I

    .line 386
    iget v7, p0, Lcom/ecareme/pixwe/media/GridQuad;->mIndexBufferIndex:I

    invoke-interface {v3, v11, v7}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 388
    iget-object v7, p0, Lcom/ecareme/pixwe/media/GridQuad;->mIndexBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v7}, Ljava/nio/CharBuffer;->capacity()I

    move-result v7

    mul-int/lit8 v4, v7, 0x2

    .line 389
    .local v4, indexSize:I
    iget-object v7, p0, Lcom/ecareme/pixwe/media/GridQuad;->mIndexBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v7, v8}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 390
    iget-object v7, p0, Lcom/ecareme/pixwe/media/GridQuad;->mIndexBuffer:Ljava/nio/CharBuffer;

    invoke-interface {v3, v11, v4, v7, v12}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 393
    invoke-interface {v3, v11, v8}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 396
    .end local v1           #buffer:[I
    .end local v2           #bufferType:I
    .end local v3           #gl11:Ljavax/microedition/khronos/opengles/GL11;
    .end local v4           #indexSize:I
    .end local v5           #texCoordSize:I
    .end local v6           #vertexSize:I
    :cond_0
    return-void

    .restart local v1       #buffer:[I
    .restart local v3       #gl11:Ljavax/microedition/khronos/opengles/GL11;
    .restart local v6       #vertexSize:I
    :cond_1
    move v2, v12

    .line 362
    goto :goto_0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/ecareme/pixwe/media/GridQuad;->mHeight:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/ecareme/pixwe/media/GridQuad;->mWidth:F

    return v0
.end method

.method public recomputeQuad()V
    .locals 24

    .prologue
    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridQuad;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridQuad;->mBaseTexCoordBuffer:Ljava/nio/FloatBuffer;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 164
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridQuad;->mAnimWidth:F

    move v2, v0

    const/high16 v3, 0x3f00

    mul-float v21, v2, v3

    .line 165
    .local v21, widthBy2:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridQuad;->mAnimHeight:F

    move v2, v0

    const/high16 v3, 0x3f00

    mul-float v20, v2, v3

    .line 166
    .local v20, heightBy2:F
    const/16 v22, 0x0

    .line 167
    .local v22, xOffset:F
    const/16 v23, 0x0

    .line 168
    .local v23, yOffset:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridQuad;->mU:F

    move v8, v0

    .line 169
    .local v8, u:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridQuad;->mV:F

    move v9, v0

    .line 170
    .local v9, v:F
    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v21

    neg-float v0, v0

    move v2, v0

    add-float v5, v2, v22

    move/from16 v0, v20

    neg-float v0, v0

    move v2, v0

    add-float v6, v2, v23

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v11}, Lcom/ecareme/pixwe/media/GridQuad;->set(IIFFFFFZI)V

    .line 171
    const/4 v11, 0x1

    const/4 v12, 0x0

    add-float v13, v21, v22

    move/from16 v0, v20

    neg-float v0, v0

    move v2, v0

    add-float v14, v2, v23

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v10, p0

    move/from16 v17, v9

    invoke-direct/range {v10 .. v19}, Lcom/ecareme/pixwe/media/GridQuad;->set(IIFFFFFZI)V

    .line 172
    const/4 v11, 0x0

    const/4 v12, 0x1

    move/from16 v0, v21

    neg-float v0, v0

    move v2, v0

    add-float v13, v2, v22

    add-float v14, v20, v23

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v10, p0

    move/from16 v16, v8

    invoke-direct/range {v10 .. v19}, Lcom/ecareme/pixwe/media/GridQuad;->set(IIFFFFFZI)V

    .line 173
    const/4 v11, 0x1

    const/4 v12, 0x1

    add-float v13, v21, v22

    add-float v14, v20, v23

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v19}, Lcom/ecareme/pixwe/media/GridQuad;->set(IIFFFFFZI)V

    .line 174
    const/4 v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ecareme/pixwe/media/GridQuad;->mQuadChanged:Z

    .line 175
    return-void
.end method

.method public resizeQuad(FFFFF)V
    .locals 7
    .parameter "viewAspect"
    .parameter "u"
    .parameter "v"
    .parameter "imageWidth"
    .parameter "imageHeight"

    .prologue
    .line 181
    iput p2, p0, Lcom/ecareme/pixwe/media/GridQuad;->mU:F

    .line 182
    iput p3, p0, Lcom/ecareme/pixwe/media/GridQuad;->mV:F

    .line 183
    div-float v1, p4, p5

    .line 184
    .local v1, imageAspect:F
    iget v5, p0, Lcom/ecareme/pixwe/media/GridQuad;->mDefaultAspectRatio:F

    .line 185
    .local v5, width:F
    const/high16 v0, 0x3f80

    .line 186
    .local v0, height:F
    const/high16 v6, 0x3f80

    cmpg-float v6, p1, v6

    if-gez v6, :cond_1

    .line 187
    iget v6, p0, Lcom/ecareme/pixwe/media/GridQuad;->mDefaultAspectRatio:F

    div-float/2addr v6, v1

    mul-float/2addr v0, v6

    .line 188
    div-float v2, v5, p1

    .line 189
    .local v2, maxHeight:F
    cmpl-float v6, v0, v2

    if-lez v6, :cond_0

    .line 191
    div-float v4, v0, v2

    .line 192
    .local v4, ratio:F
    div-float/2addr v0, v4

    .line 193
    div-float/2addr v5, v4

    .line 204
    .end local v2           #maxHeight:F
    .end local v4           #ratio:F
    :cond_0
    :goto_0
    iput v5, p0, Lcom/ecareme/pixwe/media/GridQuad;->mWidth:F

    .line 205
    iput v0, p0, Lcom/ecareme/pixwe/media/GridQuad;->mHeight:F

    .line 206
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/GridQuad;->commit()V

    .line 207
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/GridQuad;->recomputeQuad()V

    .line 208
    return-void

    .line 196
    :cond_1
    iget v6, p0, Lcom/ecareme/pixwe/media/GridQuad;->mDefaultAspectRatio:F

    div-float v6, v1, v6

    mul-float/2addr v5, v6

    .line 197
    mul-float v3, v0, p1

    .line 198
    .local v3, maxWidth:F
    cmpl-float v6, v5, v3

    if-lez v6, :cond_0

    .line 199
    div-float v4, v5, v3

    .line 200
    .restart local v4       #ratio:F
    div-float/2addr v5, v4

    .line 201
    div-float/2addr v0, v4

    goto :goto_0
.end method

.method public set(IIFFFFF)V
    .locals 10
    .parameter "i"
    .parameter "j"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "u"
    .parameter "v"

    .prologue
    .line 211
    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lcom/ecareme/pixwe/media/GridQuad;->set(IIFFFFFZI)V

    .line 212
    return-void
.end method

.method public setDynamic(Z)V
    .locals 2
    .parameter "dynamic"

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/ecareme/pixwe/media/GridQuad;->mDynamicVBO:Z

    .line 133
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/GridQuad;->mOrientedQuad:Z

    if-eqz v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Dynamic Quads can\'t have orientations"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    return-void
.end method

.method public unbindArrays(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter "gl"

    .prologue
    const/4 v3, 0x0

    .line 299
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    move-object v1, v0

    .line 300
    .local v1, gl11:Ljavax/microedition/khronos/opengles/GL11;
    const v2, 0x8892

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 301
    const v2, 0x8893

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 302
    return-void
.end method

.method public update(F)V
    .locals 2
    .parameter "timeElapsed"

    .prologue
    .line 147
    iget v0, p0, Lcom/ecareme/pixwe/media/GridQuad;->mAnimWidth:F

    iget v1, p0, Lcom/ecareme/pixwe/media/GridQuad;->mWidth:F

    invoke-static {v0, v1, p1}, Lcom/ecareme/pixwe/media/FloatUtils;->animate(FFF)F

    move-result v0

    iput v0, p0, Lcom/ecareme/pixwe/media/GridQuad;->mAnimWidth:F

    .line 148
    iget v0, p0, Lcom/ecareme/pixwe/media/GridQuad;->mAnimHeight:F

    iget v1, p0, Lcom/ecareme/pixwe/media/GridQuad;->mHeight:F

    invoke-static {v0, v1, p1}, Lcom/ecareme/pixwe/media/FloatUtils;->animate(FFF)F

    move-result v0

    iput v0, p0, Lcom/ecareme/pixwe/media/GridQuad;->mAnimHeight:F

    .line 149
    iget v0, p0, Lcom/ecareme/pixwe/media/GridQuad;->mAnimU:F

    iget v1, p0, Lcom/ecareme/pixwe/media/GridQuad;->mU:F

    invoke-static {v0, v1, p1}, Lcom/ecareme/pixwe/media/FloatUtils;->animate(FFF)F

    move-result v0

    iput v0, p0, Lcom/ecareme/pixwe/media/GridQuad;->mAnimU:F

    .line 150
    iget v0, p0, Lcom/ecareme/pixwe/media/GridQuad;->mAnimV:F

    iget v1, p0, Lcom/ecareme/pixwe/media/GridQuad;->mV:F

    invoke-static {v0, v1, p1}, Lcom/ecareme/pixwe/media/FloatUtils;->animate(FFF)F

    move-result v0

    iput v0, p0, Lcom/ecareme/pixwe/media/GridQuad;->mAnimV:F

    .line 151
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/GridQuad;->recomputeQuad()V

    .line 152
    return-void
.end method

.method public usingHardwareBuffers()Z
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/ecareme/pixwe/media/GridQuad;->mVertBufferIndex:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
