.class Lcom/android/gallery3d/ui/NinePatchInstance;
.super Ljava/lang/Object;
.source "NinePatchTexture.java"


# instance fields
.field private mBufferNames:[I

.field private mIdxCount:I

.field private mIndexBuffer:Ljava/nio/ByteBuffer;

.field private mUvBuffer:Ljava/nio/FloatBuffer;

.field private mXyBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/NinePatchTexture;II)V
    .locals 10
    .parameter "tex"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x4

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/NinePatchTexture;->getNinePatchChunk()Lcom/android/gallery3d/ui/NinePatchChunk;

    move-result-object v8

    .line 185
    .local v8, chunk:Lcom/android/gallery3d/ui/NinePatchChunk;
    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v7, "invalid dimension"

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_1
    iget-object v0, v8, Lcom/android/gallery3d/ui/NinePatchChunk;->mDivX:[I

    array-length v0, v0

    if-ne v0, v9, :cond_2

    iget-object v0, v8, Lcom/android/gallery3d/ui/NinePatchChunk;->mDivY:[I

    array-length v0, v0

    if-eq v0, v9, :cond_3

    .line 193
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v7, "unsupported nine patch"

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_3
    new-array v1, v7, [I

    .line 197
    .local v1, divX:[I
    new-array v2, v7, [I

    .line 198
    .local v2, divY:[I
    new-array v3, v7, [F

    .line 199
    .local v3, divU:[F
    new-array v4, v7, [F

    .line 201
    .local v4, divV:[F
    iget-object v0, v8, Lcom/android/gallery3d/ui/NinePatchChunk;->mDivX:[I

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/NinePatchTexture;->getWidth()I

    move-result v7

    invoke-static {v1, v3, v0, v7, p2}, Lcom/android/gallery3d/ui/NinePatchInstance;->stretch([I[F[III)I

    move-result v5

    .line 202
    .local v5, nx:I
    iget-object v0, v8, Lcom/android/gallery3d/ui/NinePatchChunk;->mDivY:[I

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/NinePatchTexture;->getHeight()I

    move-result v7

    invoke-static {v2, v4, v0, v7, p3}, Lcom/android/gallery3d/ui/NinePatchInstance;->stretch([I[F[III)I

    move-result v6

    .line 204
    .local v6, ny:I
    iget-object v7, v8, Lcom/android/gallery3d/ui/NinePatchChunk;->mColor:[I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/gallery3d/ui/NinePatchInstance;->prepareVertexData([I[I[F[FII[I)V

    .line 205
    return-void
.end method

.method private static allocateDirectNativeOrderBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2
    .parameter "size"

    .prologue
    .line 369
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private prepareBuffers(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x0

    const/4 v5, 0x0

    const v4, 0x88e4

    const v3, 0x8892

    .line 373
    new-array v1, v6, [I

    iput-object v1, p0, Lcom/android/gallery3d/ui/NinePatchInstance;->mBufferNames:[I

    .line 374
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getGLInstance()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v0

    .line 375
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    iget-object v1, p0, Lcom/android/gallery3d/ui/NinePatchInstance;->mBufferNames:[I

    invoke-interface {v0, v6, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 377
    iget-object v1, p0, Lcom/android/gallery3d/ui/NinePatchInstance;->mBufferNames:[I

    aget v1, v1, v2

    invoke-interface {v0, v3, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 378
    iget-object v1, p0, Lcom/android/gallery3d/ui/NinePatchInstance;->mXyBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/android/gallery3d/ui/NinePatchInstance;->mXyBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v0, v3, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 382
    iget-object v1, p0, Lcom/android/gallery3d/ui/NinePatchInstance;->mBufferNames:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-interface {v0, v3, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 383
    iget-object v1, p0, Lcom/android/gallery3d/ui/NinePatchInstance;->mUvBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/android/gallery3d/ui/NinePatchInstance;->mUvBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {v0, v3, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 387
    const v1, 0x8893

    iget-object v2, p0, Lcom/android/gallery3d/ui/NinePatchInstance;->mBufferNames:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 388
    const v1, 0x8893

    iget-object v2, p0, Lcom/android/gallery3d/ui/NinePatchInstance;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/NinePatchInstance;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 393
    iput-object v5, p0, Lcom/android/gallery3d/ui/NinePatchInstance;->mXyBuffer:Ljava/nio/FloatBuffer;

    .line 394
    iput-object v5, p0, Lcom/android/gallery3d/ui/NinePatchInstance;->mUvBuffer:Ljava/nio/FloatBuffer;

    .line 395
    iput-object v5, p0, Lcom/android/gallery3d/ui/NinePatchInstance;->mIndexBuffer:Ljava/nio/ByteBuffer;

    .line 396
    return-void
.end method

.method private prepareVertexData([I[I[F[FII[I)V
    .locals 27
    .parameter "x"
    .parameter "y"
    .parameter "u"
    .parameter "v"
    .parameter "nx"
    .parameter "ny"
    .parameter "color"

    .prologue
    .line 307
    const/4 v15, 0x0

    .line 308
    .local v15, pntCount:I
    const/16 v24, 0x20

    move/from16 v0, v24

    new-array v0, v0, [F

    move-object/from16 v22, v0

    .line 309
    .local v22, xy:[F
    const/16 v24, 0x20

    move/from16 v0, v24

    new-array v0, v0, [F

    move-object/from16 v20, v0

    .line 310
    .local v20, uv:[F
    const/4 v13, 0x0

    .local v13, j:I
    :goto_0
    move v0, v13

    move/from16 v1, p6

    if-ge v0, v1, :cond_1

    .line 311
    const/4 v7, 0x0

    .local v7, i:I
    move/from16 v16, v15

    .end local v15           #pntCount:I
    .local v16, pntCount:I
    :goto_1
    move v0, v7

    move/from16 v1, p5

    if-ge v0, v1, :cond_0

    .line 312
    add-int/lit8 v15, v16, 0x1

    .end local v16           #pntCount:I
    .restart local v15       #pntCount:I
    shl-int/lit8 v21, v16, 0x1

    .line 313
    .local v21, xIndex:I
    add-int/lit8 v23, v21, 0x1

    .line 314
    .local v23, yIndex:I
    aget v24, p1, v7

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    aput v24, v22, v21

    .line 315
    aget v24, p2, v13

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    aput v24, v22, v23

    .line 316
    aget v24, p3, v7

    aput v24, v20, v21

    .line 317
    aget v24, p4, v13

    aput v24, v20, v23

    .line 311
    add-int/lit8 v7, v7, 0x1

    move/from16 v16, v15

    .end local v15           #pntCount:I
    .restart local v16       #pntCount:I
    goto :goto_1

    .line 310
    .end local v21           #xIndex:I
    .end local v23           #yIndex:I
    :cond_0
    add-int/lit8 v13, v13, 0x1

    move/from16 v15, v16

    .end local v16           #pntCount:I
    .restart local v15       #pntCount:I
    goto :goto_0

    .line 321
    .end local v7           #i:I
    :cond_1
    const/4 v8, 0x1

    .line 322
    .local v8, idxCount:I
    const/4 v12, 0x0

    .line 323
    .local v12, isForward:Z
    const/16 v24, 0x18

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object v11, v0

    .line 324
    .local v11, index:[B
    const/16 v17, 0x0

    .local v17, row:I
    :goto_2
    const/16 v24, 0x1

    sub-int v24, p6, v24

    move/from16 v0, v17

    move/from16 v1, v24

    if-ge v0, v1, :cond_7

    .line 325
    add-int/lit8 v8, v8, -0x1

    .line 326
    if-nez v12, :cond_4

    const/16 v24, 0x1

    move/from16 v12, v24

    .line 329
    :goto_3
    if-eqz v12, :cond_5

    .line 330
    const/16 v19, 0x0

    .line 331
    .local v19, start:I
    move/from16 v6, p5

    .line 332
    .local v6, end:I
    const/4 v10, 0x1

    .line 339
    .local v10, inc:I
    :goto_4
    move/from16 v4, v19

    .local v4, col:I
    :goto_5
    if-eq v4, v6, :cond_6

    .line 340
    mul-int v24, v17, p5

    add-int v14, v24, v4

    .line 341
    .local v14, k:I
    move v0, v4

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    .line 342
    const/16 v24, 0x1

    sub-int v24, p5, v24

    mul-int v24, v24, v17

    add-int v5, v24, v4

    .line 343
    .local v5, colorIdx:I
    if-eqz v12, :cond_2

    add-int/lit8 v5, v5, -0x1

    .line 344
    :cond_2
    aget v24, p7, v5

    if-nez v24, :cond_3

    .line 345
    const/16 v24, 0x1

    sub-int v24, v8, v24

    aget-byte v24, v11, v24

    aput-byte v24, v11, v8

    .line 346
    add-int/lit8 v8, v8, 0x1

    .line 347
    add-int/lit8 v9, v8, 0x1

    .end local v8           #idxCount:I
    .local v9, idxCount:I
    move v0, v14

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v11, v8

    move v8, v9

    .line 351
    .end local v5           #colorIdx:I
    .end local v9           #idxCount:I
    .restart local v8       #idxCount:I
    :cond_3
    add-int/lit8 v9, v8, 0x1

    .end local v8           #idxCount:I
    .restart local v9       #idxCount:I
    move v0, v14

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v11, v8

    .line 352
    add-int/lit8 v8, v9, 0x1

    .end local v9           #idxCount:I
    .restart local v8       #idxCount:I
    add-int v24, v14, p5

    move/from16 v0, v24

    int-to-byte v0, v0

    move/from16 v24, v0

    aput-byte v24, v11, v9

    .line 339
    add-int/2addr v4, v10

    goto :goto_5

    .line 326
    .end local v4           #col:I
    .end local v6           #end:I
    .end local v10           #inc:I
    .end local v14           #k:I
    .end local v19           #start:I
    :cond_4
    const/16 v24, 0x0

    move/from16 v12, v24

    goto :goto_3

    .line 334
    :cond_5
    const/16 v24, 0x1

    sub-int v19, p5, v24

    .line 335
    .restart local v19       #start:I
    const/4 v6, -0x1

    .line 336
    .restart local v6       #end:I
    const/4 v10, -0x1

    .restart local v10       #inc:I
    goto :goto_4

    .line 324
    .restart local v4       #col:I
    :cond_6
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 356
    .end local v4           #col:I
    .end local v6           #end:I
    .end local v10           #inc:I
    .end local v19           #start:I
    :cond_7
    move v0, v8

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/ui/NinePatchInstance;->mIdxCount:I

    .line 358
    mul-int/lit8 v24, v15, 0x2

    mul-int/lit8 v18, v24, 0x4

    .line 359
    .local v18, size:I
    invoke-static/range {v18 .. v18}, Lcom/android/gallery3d/ui/NinePatchInstance;->allocateDirectNativeOrderBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/ui/NinePatchInstance;->mXyBuffer:Ljava/nio/FloatBuffer;

    .line 360
    invoke-static/range {v18 .. v18}, Lcom/android/gallery3d/ui/NinePatchInstance;->allocateDirectNativeOrderBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/ui/NinePatchInstance;->mUvBuffer:Ljava/nio/FloatBuffer;

    .line 361
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/ui/NinePatchInstance;->mIdxCount:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/gallery3d/ui/NinePatchInstance;->allocateDirectNativeOrderBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/ui/NinePatchInstance;->mIndexBuffer:Ljava/nio/ByteBuffer;

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/NinePatchInstance;->mXyBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    mul-int/lit8 v26, v15, 0x2

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/NinePatchInstance;->mUvBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    mul-int/lit8 v26, v15, 0x2

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/ui/NinePatchInstance;->mIndexBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object v1, v11

    move/from16 v2, v25

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 366
    return-void
.end method

.method private static stretch([I[F[III)I
    .locals 10
    .parameter "x"
    .parameter "u"
    .parameter "div"
    .parameter "source"
    .parameter "target"

    .prologue
    .line 241
    invoke-static {p3}, Lcom/android/gallery3d/util/Utils;->nextPowerOf2(I)I

    move-result v6

    .line 242
    .local v6, textureSize:I
    int-to-float v0, p3

    int-to-float v1, v6

    div-float v5, v0, v1

    .line 244
    .local v5, textureBound:F
    const/4 v2, 0x0

    .line 245
    .local v2, stretch:I
    const/4 v0, 0x0

    .local v0, i:I
    array-length v1, p2

    .local v1, n:I
    move v4, v2

    .end local v2           #stretch:I
    .local v4, stretch:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 246
    add-int/lit8 v2, v0, 0x1

    aget v2, p2, v2

    aget v3, p2, v0

    sub-int/2addr v2, v3

    add-int/2addr v2, v4

    .line 245
    .end local v4           #stretch:I
    .restart local v2       #stretch:I
    add-int/lit8 v0, v0, 0x2

    move v4, v2

    .end local v2           #stretch:I
    .restart local v4       #stretch:I
    goto :goto_0

    .line 249
    :cond_0
    sub-int p3, p4, p3

    add-int/2addr p3, v4

    int-to-float v3, p3

    .line 251
    .local v3, remaining:F
    const/4 v1, 0x0

    .line 252
    .local v1, lastX:I
    const/4 v0, 0x0

    .line 254
    .local v0, lastU:I
    const/4 p3, 0x0

    const/4 v2, 0x0

    aput v2, p0, p3

    .line 255
    .end local p3
    const/4 p3, 0x0

    const/4 v2, 0x0

    aput v2, p1, p3

    .line 256
    const/4 p3, 0x0

    .local p3, i:I
    array-length v2, p2

    .local v2, n:I
    :goto_1
    if-ge p3, v2, :cond_1

    .line 258
    add-int/lit8 v7, p3, 0x1

    aget v8, p2, p3

    sub-int v0, v8, v0

    add-int/2addr v0, v1

    aput v0, p0, v7

    .line 259
    .end local v0           #lastU:I
    add-int/lit8 v0, p3, 0x1

    aget v1, p2, p3

    .end local v1           #lastX:I
    int-to-float v1, v1

    int-to-float v7, v6

    div-float/2addr v1, v7

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    aput v1, p1, v0

    .line 262
    add-int/lit8 v0, p3, 0x1

    aget v0, p2, v0

    aget v1, p2, p3

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 263
    .local v0, partU:F
    mul-float v1, v3, v0

    int-to-float v7, v4

    div-float/2addr v1, v7

    const/high16 v7, 0x3f00

    add-float/2addr v1, v7

    float-to-int v1, v1

    .line 264
    .local v1, partX:I
    int-to-float v7, v1

    sub-float/2addr v3, v7

    .line 265
    int-to-float v4, v4

    sub-float v0, v4, v0

    float-to-int v4, v0

    .line 267
    add-int/lit8 v0, p3, 0x1

    aget v0, p0, v0

    .end local v0           #partU:F
    add-int/2addr v1, v0

    .line 268
    .local v1, lastX:I
    add-int/lit8 v0, p3, 0x1

    aget v0, p2, v0

    .line 269
    .local v0, lastU:I
    add-int/lit8 v7, p3, 0x2

    aput v1, p0, v7

    .line 270
    add-int/lit8 v7, p3, 0x2

    int-to-float v8, v0

    int-to-float v9, v6

    div-float/2addr v8, v9

    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    move-result v8

    aput v8, p1, v7

    .line 256
    add-int/lit8 p3, p3, 0x2

    goto :goto_1

    .line 273
    :cond_1
    array-length p3, p2

    .end local p3           #i:I
    add-int/lit8 p3, p3, 0x1

    aput p4, p0, p3

    .line 274
    array-length p3, p2

    add-int/lit8 p3, p3, 0x1

    aput v5, p1, p3

    .line 277
    const/4 p4, 0x0

    .line 278
    .local p4, last:I
    const/4 p3, 0x1

    .restart local p3       #i:I
    array-length p2, p2

    .end local p2
    add-int/lit8 v0, p2, 0x2

    .end local v2           #n:I
    .local v0, n:I
    move p2, p3

    .end local p3           #i:I
    .local p2, i:I
    move p3, p4

    .end local v1           #lastX:I
    .end local p4           #last:I
    .local p3, last:I
    :goto_2
    if-ge p2, v0, :cond_3

    .line 279
    aget p4, p0, p3

    aget v1, p0, p2

    if-ne p4, v1, :cond_2

    .line 278
    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 280
    :cond_2
    add-int/lit8 p3, p3, 0x1

    aget p4, p0, p2

    aput p4, p0, p3

    .line 281
    aget p4, p1, p2

    aput p4, p1, p3

    goto :goto_3

    .line 283
    :cond_3
    add-int/lit8 p0, p3, 0x1

    .end local p0
    return p0
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/NinePatchTexture;II)V
    .locals 8
    .parameter "canvas"
    .parameter "tex"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/gallery3d/ui/NinePatchInstance;->mBufferNames:[I

    if-nez v0, :cond_0

    .line 400
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/NinePatchInstance;->prepareBuffers(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/NinePatchInstance;->mBufferNames:[I

    const/4 v1, 0x0

    aget v4, v0, v1

    iget-object v0, p0, Lcom/android/gallery3d/ui/NinePatchInstance;->mBufferNames:[I

    const/4 v1, 0x1

    aget v5, v0, v1

    iget-object v0, p0, Lcom/android/gallery3d/ui/NinePatchInstance;->mBufferNames:[I

    const/4 v1, 0x2

    aget v6, v0, v1

    iget v7, p0, Lcom/android/gallery3d/ui/NinePatchInstance;->mIdxCount:I

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    invoke-interface/range {v0 .. v7}, Lcom/android/gallery3d/ui/GLCanvas;->drawMesh(Lcom/android/gallery3d/ui/BasicTexture;IIIIII)V

    .line 404
    return-void
.end method

.method public recycle(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/gallery3d/ui/NinePatchInstance;->mBufferNames:[I

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/android/gallery3d/ui/NinePatchInstance;->mBufferNames:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->deleteBuffer(I)V

    .line 409
    iget-object v0, p0, Lcom/android/gallery3d/ui/NinePatchInstance;->mBufferNames:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->deleteBuffer(I)V

    .line 410
    iget-object v0, p0, Lcom/android/gallery3d/ui/NinePatchInstance;->mBufferNames:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->deleteBuffer(I)V

    .line 411
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/NinePatchInstance;->mBufferNames:[I

    .line 413
    :cond_0
    return-void
.end method
